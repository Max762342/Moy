"""
Sychos Hub — Oracle Server v3.0
Zentraler Server: Login & Register (50 Start-Credits), Credit-System (2-4 dynamisch),
KI-Chat, Chat-Verwaltung (inkl. Umbenennen), Admin-API (Online-User, Credits vergeben).
Serviert zudem das Frontend:  /        -> Sychos Hub   /admin/  -> Admin-Panel
Nur Python-Stdlib. Start:  python oracle_server.py
"""
import os, sys, json, time, uuid, threading, mimetypes
import sqlite3, urllib.request
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, unquote

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
HOST = os.environ.get("ORACLE_HOST", "0.0.0.0")
PORT = int(os.environ.get("ORACLE_PORT", "7777"))
API_KEY = os.environ.get("ORACLE_API_KEY", "sychos-oracle-2024")
ADMIN_KEY = os.environ.get("ORACLE_ADMIN_KEY", "sychos-admin-2024")
DB_PATH = os.environ.get("ORACLE_DB", os.path.join(ROOT, "server", "sychos.db"))
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY", "")

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
    url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=" + api_key
    req = urllib.request.Request(url, data=payload,
        headers={"Content-Type": "application/json"}, method="POST")
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            data = json.loads(resp.read())
            text = data["candidates"][0]["content"]["parts"][0]["text"]
            tokens = data.get("usageMetadata", {}).get("totalTokenCount", 0)
            return {"ok": True, "text": text, "tokens": tokens}
    except Exception as e:
        return {"ok": False, "error": str(e)}

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
        if not os.path.isfile(full):
            self._json(404, {"ok": False, "error": "Nicht gefunden"}); return
        ctype = mimetypes.guess_type(full)[0] or "application/octet-stream"
        with open(full, "rb") as f:
            data = f.read()
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
    server = HTTPServer((HOST, PORT), Handler)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n  Server gestoppt.")
        server.server_close()

if __name__ == "__main__":
    main()
