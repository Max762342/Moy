"""
Sychos Hub — Oracle Server v3.0
Zentraler Server: Login & Register (50 Start-Credits), Credit-System (2-4 dynamisch),
KI-Chat, Chat-Verwaltung (inkl. Umbenennen), Admin-API (Online-User, Credits vergeben).
Serviert zudem das Frontend:  /        -> Sychos Hub   /admin/  -> Admin-Panel
Nur Python-Stdlib. Start:  python oracle_server.py
"""
import os, sys, json, time, uuid, threading, mimetypes, zlib, base64
import sqlite3, urllib.request
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, unquote

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
HOST = os.environ.get("ORACLE_HOST", "0.0.0.0")
PORT = int(os.environ.get("ORACLE_PORT", "7777"))
API_KEY = os.environ.get("ORACLE_API_KEY", "sychos-oracle-2024")
ADMIN_KEY = os.environ.get("ORACLE_ADMIN_KEY", "sychos-admin-2024")
DB_PATH = os.environ.get("ORACLE_DB", os.path.join(os.path.dirname(os.path.abspath(__file__)), "sychos.db"))
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY", "")
# Modell-Chain: erste verfügbare wird genutzt (Google kündigt alte Modelle ab)
GEMINI_MODELS = [m.strip() for m in os.environ.get(
    "GEMINI_MODEL", "gemini-3.6-flash,gemini-2.5-flash").split(",") if m.strip()]

START_CREDITS = 50.0
ONLINE_WINDOW = 300          # User gilt 5 Min. nach letzter Aktion als "angemeldet"
MIN_SEND_COST = 2

MODELS = {
    "gemini-pro":   {"name": "Gemini Pro", "base_cost": 2, "provider": "gemini"},
    "sychos-demo":  {"name": "Sychos Demo (Offline)", "base_cost": 1, "provider": "demo"},
}

STRENGTHS = {
    "low":    {"name": "Low",    "max_tokens": 512,  "temp": 0.3},
    "medium": {"name": "Medium", "max_tokens": 2048, "temp": 0.7},
    "high":   {"name": "High",   "max_tokens": 4096, "temp": 1.0},
    "extra":  {"name": "Extra",  "max_tokens": 8192, "temp": 1.3},
}

# Dynamische Auslastungs-Tracker (2-4 Credits je nach Last)
request_times = []
LOAD_LOCK = threading.Lock()

def get_dynamic_cost(base_cost=2):
    with LOAD_LOCK:
        now = time.time()
        recent = [t for t in request_times if now - t < 60]
        request_times.clear()
        request_times.extend(recent)
        load = len(recent)
        request_times.append(now)
    if load < 5:
        return base_cost
    elif load < 15:
        return base_cost + 1
    else:
        return min(base_cost + 2, 4)

START_TIME = time.time()
# ═══════════════════════════════════════════════════════════
#  DATABASE
# ═══════════════════════════════════════════════════════════
def get_db():
    conn = sqlite3.connect(DB_PATH, check_same_thread=False)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA journal_mode=WAL")
    return conn

def hash_pw(pw):
    import hashlib
    return hashlib.sha256(pw.encode()).hexdigest()

def init_db():
    db = get_db()
    db.executescript("""
        CREATE TABLE IF NOT EXISTS users (
            uid TEXT PRIMARY KEY,
            email TEXT UNIQUE NOT NULL,
            password_hash TEXT NOT NULL,
            display_name TEXT DEFAULT '',
            credits REAL DEFAULT 50.0,
            is_banned INTEGER DEFAULT 0,
            is_admin INTEGER DEFAULT 0,
            created_at REAL DEFAULT 0,
            last_login REAL DEFAULT 0,
            last_seen REAL DEFAULT 0
        );
        CREATE TABLE IF NOT EXISTS chats (
            id TEXT PRIMARY KEY,
            uid TEXT NOT NULL,
            title TEXT DEFAULT 'Neuer Chat',
            model TEXT DEFAULT 'gemini-pro',
            created_at REAL DEFAULT 0,
            FOREIGN KEY (uid) REFERENCES users(uid)
        );
        CREATE TABLE IF NOT EXISTS messages (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            chat_id TEXT NOT NULL,
            role TEXT NOT NULL,
            content TEXT NOT NULL,
            model TEXT DEFAULT '',
            tokens INTEGER DEFAULT 0,
            cost REAL DEFAULT 0,
            created_at REAL DEFAULT 0,
            FOREIGN KEY (chat_id) REFERENCES chats(id)
        );
    """)
    # Admin-Account anlegen (falls nicht vorhanden)
    row = db.execute("SELECT uid FROM users WHERE is_admin=1").fetchone()
    if not row:
        uid = str(uuid.uuid4())
        db.execute("INSERT INTO users (uid,email,password_hash,display_name,credits,is_admin,created_at) VALUES (?,?,?,?,?,?,?)",
                   (uid, "admin@sychos.net", hash_pw("admin"), "Admin", 99999, 1, time.time()))
        db.commit()
    # Migration fuer alte v2-Datenbanken (fehlende Spalten ergaenzen)
    for col in ("last_login REAL DEFAULT 0", "last_seen REAL DEFAULT 0"):
        try:
            db.execute("ALTER TABLE users ADD COLUMN " + col)
            db.commit()
        except Exception:
            pass
    db.close()

def touch_user(uid):
    """Markiert einen User als aktiv (online)."""
    db = get_db()
    db.execute("UPDATE users SET last_seen=? WHERE uid=?", (time.time(), uid))
    db.commit(); db.close()

# ═══════════════════════════════════════════════════════════
#  KI-PROVIDER
# ═══════════════════════════════════════════════════════════
def call_gemini(messages, api_key, strength="medium"):
    if not api_key:
        return demo_reply(messages, strength)
    s = STRENGTHS.get(strength, STRENGTHS["medium"])
    contents = []
    for m in messages:
        role = "user" if m["role"] == "user" else "model"
        contents.append({"role": role, "parts": [{"text": m["content"]}]})
    payload = json.dumps({
        "contents": contents,
        "generationConfig": {"maxOutputTokens": s["max_tokens"], "temperature": s["temp"]},
    }).encode()
    last_err = "Kein Gemini-Modell verfügbar"
    for model in GEMINI_MODELS:
        url = ("https://generativelanguage.googleapis.com/v1beta/models/"
               + model + ":generateContent?key=" + api_key)
        req = urllib.request.Request(url, data=payload,
            headers={"Content-Type": "application/json"}, method="POST")
        try:
            with urllib.request.urlopen(req, timeout=30) as resp:
                data = json.loads(resp.read())
                text = data["candidates"][0]["content"]["parts"][0]["text"]
                tokens = data.get("usageMetadata", {}).get("totalTokenCount", 0)
                return {"ok": True, "text": text, "tokens": tokens}
        except Exception as e:
            last_err = str(e)
            continue
    return {"ok": False, "error": last_err}

def demo_reply(messages, strength="medium"):
    """Offline-Demo-Antwort, falls kein GEMINI_API_KEY gesetzt ist."""
    last = messages[-1]["content"] if messages else ""
    if len(last) > 160:
        last = last[:160] + "…"
    s = STRENGTHS.get(strength, STRENGTHS["medium"])
    return {"ok": True, "tokens": 0, "text": (
        "**Sychos Demo-Antwort**  \n\n"
        f"Du hast geschrieben: *\"{last}\"*  \n\n"
        f"Stärke: **{s['name']}** — ich bin im Offline-Demo-Modus. "
        "Setze die Umgebungsvariable `GEMINI_API_KEY`, um echte KI-Antworten zu erhalten."
    )}
# ═══════════════════════════════════════════════════════════
#  EINGEBETTETES FRONTEND (Single-File-Modus)
# ═══════════════════════════════════════════════════════════
WEB_ASSETS = {
    "index.html": ("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", "text/html; charset=utf-8"),
    "css/style.css": ("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", "text/css; charset=utf-8"),
    "js/app.js": ("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", "application/javascript; charset=utf-8"),
    "admin/index.html": ("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" "f9P8H6TF8II=", "text/html; charset=utf-8"),
    "favicon.svg": ("eNp1Uk1vgzAMvU/af7DSy3ZICCEEOsEOu+y0H8FC+NAYQSEt9N/PoaXSJk0iefbzs7GtFPO5hfV7GOeSdN5PL1G0LAtbEmZdGwnOeYQKAufeLG92LQkHDkriR14fHwCK2jTzZqE99KOp3Lur6t6MHvq6JJi6xphF4HKFVZQkRm+DWyKmzt5OYJtmNn6TBZ9qO1hXkkMe" "57rJSfSPPP4j5+pT1fIuL6LffV37ju6NF85oD0tf+64kOBd0pm87f7UdjhwrAk0/DKH0J6/j6la6mCrfAQ75ISUIrmnCUjyC5kxSyXIaJ+gqqiDG+8gkZBjIGPqCHZFMQELKBCgM5YjhiBBmKUYEy/CWGOPIZBSLIHekcrsFy4HTFNmEKozif8m+Hri1O9rRhN04+2VK" "cnLD06F93gl6mzi9E2FNuppK4uxprPchde/0YEDjIiRq9QUxLAZhX8teOWQU4b0g/gAsK5qT", "image/svg+xml"),
}

def get_embedded(rel):
    """Eingebettete Frontend-Datei (gzip+base64), falls keine auf Disk liegt."""
    if not WEB_ASSETS:
        return None
    key = rel.replace("\\", "/").lstrip("/")
    if key in ("", "index.html"):
        key = "index.html"
    item = WEB_ASSETS.get(key)
    if item is None:
        return None
    return zlib.decompress(base64.b64decode(item[0])), item[1]


# ═══════════════════════════════════════════════════════════
#  HTTP HANDLER
# ═══════════════════════════════════════════════════════════
class Handler(BaseHTTPRequestHandler):
    def log_message(self, fmt, *args):
        ts = time.strftime("%H:%M:%S")
        sys.stderr.write(f"  [{ts}] {fmt % args}\n")

    def _cors(self):
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type, Authorization, X-Requested-With, Accept")

    def _json(self, code, data):
        body = json.dumps(data, ensure_ascii=False).encode()
        self.send_response(code)
        self.send_header("Content-Type", "application/json")
        self._cors()
        self.end_headers()
        self.wfile.write(body)

    def _read_body(self):
        ln = int(self.headers.get("Content-Length", 0))
        return json.loads(self.rfile.read(ln)) if ln else {}

    def _get_user(self):
        auth = self.headers.get("Authorization", "")
        if not auth.startswith("Bearer "):
            return None
        uid = auth[7:]
        db = get_db()
        row = db.execute("SELECT * FROM users WHERE uid=?", (uid,)).fetchone()
        db.close()
        return dict(row) if row else None

    def _check_admin(self):
        """Admin-Key (für API) ODER angemeldeter Admin-User (uid-Token)."""
        auth = self.headers.get("Authorization", "")
        if not auth.startswith("Bearer "):
            return False
        tok = auth[7:]
        if tok == ADMIN_KEY:
            return True
        db = get_db()
        row = db.execute("SELECT is_admin FROM users WHERE uid=?", (tok,)).fetchone()
        db.close()
        return bool(row and row["is_admin"])

    def _serve_static(self, path):
        """Liefert Frontend-Dateien aus dem Projekt-Root aus."""
        if path in ("/", "/index.html"):
            path = "/index.html"
        elif path in ("/admin", "/admin/"):
            path = "/admin/index.html"
        rel = unquote(path).lstrip("/")
        full = os.path.normpath(os.path.join(ROOT, rel))
        if not full.startswith(os.path.normpath(ROOT)):
            self._json(403, {"ok": False, "error": "Zugriff verweigert"}); return
        if os.path.isfile(full):
            ctype = mimetypes.guess_type(full)[0] or "application/octet-stream"
            with open(full, "rb") as f:
                data = f.read()
        else:
            emb = get_embedded(rel)
            if emb is None:
                self._json(404, {"ok": False, "error": "Nicht gefunden"}); return
            data, ctype = emb
        self.send_response(200)
        self.send_header("Content-Type", ctype)
        self._cors()
        self.end_headers()
        self.wfile.write(data)

    def do_OPTIONS(self):
        self.send_response(204)
        self._cors()
        self.end_headers()

    # ── GET ───────────────────────────────────────────────
    def do_GET(self):
        path = urlparse(self.path).path

        if path == "/status":
            self._json(200, {"ok": True, "server": "Sychos Oracle", "version": "3.0.0",
                "uptime": int(time.time() - START_TIME), "load": len(request_times)}); return

        if path == "/models":
            self._json(200, {"ok": True, "models": [
                {"id": k, "name": v["name"], "base_cost": v["base_cost"],
                 "current_cost": get_dynamic_cost(v["base_cost"])}
                for k, v in MODELS.items()]}); return

        if path == "/me":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            if user["is_banned"]:
                self._json(403, {"ok": False, "error": "Account gesperrt"}); return
            touch_user(user["uid"])
            self._json(200, {"ok": True, "uid": user["uid"], "email": user["email"],
                "display_name": user["display_name"], "credits": user["credits"],
                "is_admin": user["is_admin"]}); return

        if path == "/chats":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            db = get_db()
            rows = db.execute("SELECT id,title,model,created_at FROM chats WHERE uid=? ORDER BY created_at DESC",
                              (user["uid"],)).fetchall()
            db.close()
            self._json(200, {"ok": True, "chats": [dict(r) for r in rows]}); return

        if path.startswith("/messages/"):
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            cid = path.split("/")[2]
            db = get_db()
            rows = db.execute("SELECT role,content,model,cost,created_at FROM messages WHERE chat_id=? ORDER BY created_at",
                              (cid,)).fetchall()
            db.close()
            self._json(200, {"ok": True, "messages": [dict(r) for r in rows]}); return

        if path == "/admin/users":
            if not self._check_admin():
                self._json(403, {"ok": False, "error": "Kein Admin"}); return
            db = get_db()
            rows = db.execute("SELECT uid,email,display_name,credits,is_banned,is_admin,created_at,last_seen FROM users").fetchall()
            db.close()
            now = time.time()
            users = []
            for r in rows:
                u = dict(r)
                u["online"] = (now - u.get("last_seen", 0)) < ONLINE_WINDOW
                users.append(u)
            self._json(200, {"ok": True, "users": users}); return

        # Sonst: statische Dateien (Frontend / Admin-Panel)
        self._serve_static(path)
    # ── POST ──────────────────────────────────────────────
    def do_POST(self):
        path = urlparse(self.path).path
        body = self._read_body()

        # Register (50 Start-Credits)
        if path == "/register":
            email = body.get("email", "").strip().lower()
            pw = body.get("password", "")
            name = body.get("display_name", email.split("@")[0])
            if not email or not pw:
                self._json(400, {"ok": False, "error": "Email und Passwort benötigt"}); return
            db = get_db()
            if db.execute("SELECT uid FROM users WHERE email=?", (email,)).fetchone():
                db.close()
                self._json(409, {"ok": False, "error": "Email bereits registriert"}); return
            uid = str(uuid.uuid4())
            db.execute("INSERT INTO users (uid,email,password_hash,display_name,credits,created_at) VALUES (?,?,?,?,?,?)",
                       (uid, email, hash_pw(pw), name, START_CREDITS, time.time()))
            db.commit(); db.close()
            self._json(200, {"ok": True, "uid": uid, "display_name": name, "credits": START_CREDITS}); return

        # Login
        if path == "/login":
            email = body.get("email", "").strip().lower()
            pw = body.get("password", "")
            db = get_db()
            row = db.execute("SELECT * FROM users WHERE email=? AND password_hash=?",
                             (email, hash_pw(pw))).fetchone()
            if not row:
                db.close()
                self._json(401, {"ok": False, "error": "Falsche Anmeldedaten"}); return
            user = dict(row)
            if user["is_banned"]:
                db.close()
                self._json(403, {"ok": False, "error": "Account gesperrt"}); return
            now = time.time()
            db.execute("UPDATE users SET last_login=?, last_seen=? WHERE uid=?", (now, now, user["uid"]))
            db.commit(); db.close()
            self._json(200, {"ok": True, "uid": user["uid"], "email": user["email"],
                "display_name": user["display_name"], "credits": user["credits"],
                "is_admin": user["is_admin"]}); return

        # Neuer Chat
        if path == "/chat/new":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            cid = str(uuid.uuid4())
            title = body.get("title", "Neuer Chat")
            model = body.get("model", "gemini-pro")
            db = get_db()
            db.execute("INSERT INTO chats (id,uid,title,model,created_at) VALUES (?,?,?,?,?)",
                       (cid, user["uid"], title, model, time.time()))
            db.commit(); db.close()
            self._json(200, {"ok": True, "chat_id": cid, "title": title, "model": model}); return
        # Chat umbenennen
        if path == "/chat/rename":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            cid = body.get("chat_id", "")
            title = (body.get("title", "") or "").strip() or "Neuer Chat"
            db = get_db()
            cur = db.execute("UPDATE chats SET title=? WHERE id=? AND uid=?", (title, cid, user["uid"]))
            db.commit(); db.close()
            if cur.rowcount == 0:
                self._json(404, {"ok": False, "error": "Chat nicht gefunden"}); return
            self._json(200, {"ok": True, "chat_id": cid, "title": title}); return

        # Chat löschen
        if path == "/chat/delete":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            cid = body.get("chat_id", "")
            db = get_db()
            db.execute("DELETE FROM messages WHERE chat_id=?", (cid,))
            db.execute("DELETE FROM chats WHERE id=? AND uid=?", (cid, user["uid"]))
            db.commit(); db.close()
            self._json(200, {"ok": True}); return

        # AI-Chat senden
        if path == "/chat/send":
            user = self._get_user()
            if not user:
                self._json(401, {"ok": False, "error": "Nicht angemeldet"}); return
            if user["is_banned"]:
                self._json(403, {"ok": False, "error": "Account gesperrt"}); return
            if user["credits"] < MIN_SEND_COST:
                self._json(402, {"ok": False, "error": "Nicht genug Credits (min. %d)" % MIN_SEND_COST}); return
            cid = body.get("chat_id", "")
            msg = body.get("message", "").strip()
            model = body.get("model", "gemini-pro")
            strength = body.get("strength", "medium")
            if not msg:
                self._json(400, {"ok": False, "error": "Leere Nachricht"}); return
            db = get_db()
            db.execute("INSERT INTO messages (chat_id,role,content,model,created_at) VALUES (?,?,?,?,?)",
                       (cid, "user", msg, model, time.time()))
            rows = db.execute("SELECT role,content FROM messages WHERE chat_id=? ORDER BY created_at", (cid,)).fetchall()
            history = [{"role": r["role"], "content": r["content"]} for r in rows]
            db.commit(); db.close()
            if MODELS.get(model, {}).get("provider") == "demo" or not GEMINI_API_KEY:
                result = demo_reply(history, strength)
            else:
                result = call_gemini(history, GEMINI_API_KEY, strength)
            if not result["ok"]:
                self._json(500, {"ok": False, "error": result["error"]}); return
            base = MODELS.get(model, {}).get("base_cost", 2)
            cost = get_dynamic_cost(base)
            db = get_db()
            db.execute("INSERT INTO messages (chat_id,role,content,model,tokens,cost,created_at) VALUES (?,?,?,?,?,?,?)",
                       (cid, "assistant", result["text"], model, result.get("tokens", 0), cost, time.time()))
            db.execute("UPDATE users SET credits = MAX(0, credits - ?), last_seen=? WHERE uid=?",
                       (cost, time.time(), user["uid"]))
            db.commit(); db.close()
            self._json(200, {"ok": True, "text": result["text"], "tokens": result.get("tokens", 0),
                "cost": cost, "remaining_credits": max(0, user["credits"] - cost)}); return
        # ── Admin ─────────────────────────────────────────
        if path == "/admin/credits":
            if not self._check_admin():
                self._json(403, {"ok": False, "error": "Kein Admin"}); return
            uid = body.get("uid", "")
            amount = float(body.get("amount", 0))
            db = get_db()
            cur = db.execute("UPDATE users SET credits = MAX(0, credits + ?) WHERE uid=?", (amount, uid))
            db.commit(); db.close()
            if cur.rowcount == 0:
                self._json(404, {"ok": False, "error": "User nicht gefunden"}); return
            self._json(200, {"ok": True, "uid": uid, "amount": amount}); return

        if path == "/admin/ban":
            if not self._check_admin():
                self._json(403, {"ok": False, "error": "Kein Admin"}); return
            uid = body.get("uid", "")
            ban = 1 if body.get("ban", True) else 0
            db = get_db()
            db.execute("UPDATE users SET is_banned=? WHERE uid=?", (ban, uid))
            db.commit(); db.close()
            self._json(200, {"ok": True, "banned": bool(ban)}); return

        self._json(404, {"ok": False, "error": "Nicht gefunden"})


# ═══════════════════════════════════════════════════════════
#  MAIN
# ═══════════════════════════════════════════════════════════
def main():
    init_db()
    try:
        sys.stdout.reconfigure(encoding="utf-8", errors="replace")
        sys.stderr.reconfigure(encoding="utf-8", errors="replace")
    except Exception:
        pass
    print("\n  ========================================")
    print("     S Y C H O S   O R A C L E  v3.0     ")
    print("  ========================================")
    print(f"  Hub   : http://localhost:{PORT}")
    print(f"  Admin : http://localhost:{PORT}/admin/")
    print(f"  Admin-Key : {ADMIN_KEY}")
    print(f"  DB    : {DB_PATH}")
    print("  ----------------------------------------")
    print("  Admin-Login: admin@sychos.net / admin")
    print("  ========================================\n")
    print("  -> Ctrl+C zum Beenden\n")
    # Always-On: Server startet sich bei Fehlern selbst neu
    while True:
        server = HTTPServer((HOST, PORT), Handler)
        try:
            server.serve_forever()
        except KeyboardInterrupt:
            print("\n  Server gestoppt.")
            server.server_close()
            break
        except Exception as e:
            print("  Fehler -> Neustart in 5s:", e)
            time.sleep(5)

def install_autostart():
    """Always-On: Windows = Autostart-Link, Linux = systemd (mit sudo)."""
    script = os.path.abspath(__file__)
    if os.name == "nt":
        import subprocess
        py = os.path.join(os.path.dirname(sys.executable), "pythonw.exe")
        if not os.path.isfile(py):
            py = sys.executable
        startup = os.path.join(os.environ.get("APPDATA", ""),
            "Microsoft", "Windows", "Start Menu", "Programs", "Startup")
        lnk = os.path.join(startup, "SychosHub.lnk")
        ps = ("$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%s');"
              "$s.TargetPath='%s';$s.Arguments='\"%s\"';$s.WindowStyle=7;$s.Save()"
              % (lnk.replace("'", "''"), py, script))
        subprocess.run(["powershell", "-NoProfile", "-Command", ps], check=True)
        print("  [OK] Autostart installiert (startet bei jedem Windows-Login):")
        print("       " + lnk)
    else:
        if os.geteuid() != 0:
            print("  Linux: Bitte mit sudo starten fuer systemd-Autostart:")
            print("         sudo python3 oracle_server.py --install")
            return
        unit = ("[Unit]\nDescription=Sychos Hub (Always-On)\nAfter=network.target\n\n"
                "[Service]\nType=simple\nExecStart=%s %s\nRestart=always\nRestartSec=5\n"
                "Environment=ORACLE_HOST=0.0.0.0\nEnvironment=ORACLE_PORT=%d\n\n"
                "[Install]\nWantedBy=multi-user.target\n"
                % (sys.executable, script, PORT))
        with open("/etc/systemd/system/sychos-hub.service", "w") as f:
            f.write(unit)
        os.system("systemctl daemon-reload")
        os.system("systemctl enable sychos-hub >/dev/null 2>&1")
        os.system("systemctl restart sychos-hub")
        print("  [OK] systemd-Service installiert (Always-On): sychos-hub")

def uninstall_autostart():
    if os.name == "nt":
        startup = os.path.join(os.environ.get("APPDATA", ""),
            "Microsoft", "Windows", "Start Menu", "Programs", "Startup")
        lnk = os.path.join(startup, "SychosHub.lnk")
        if os.path.isfile(lnk):
            os.remove(lnk)
        print("  [OK] Autostart entfernt.")
    else:
        os.system("systemctl disable --now sychos-hub >/dev/null 2>&1")
        if os.path.isfile("/etc/systemd/system/sychos-hub.service"):
            os.remove("/etc/systemd/system/sychos-hub.service")
        print("  [OK] systemd-Service entfernt.")

if __name__ == "__main__":
    if "--install" in sys.argv:
        install_autostart()
    elif "--uninstall" in sys.argv:
        uninstall_autostart()
        sys.exit(0)
    main()
