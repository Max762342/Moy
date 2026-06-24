LJ
j
5  = =4 G ?  =-  -   <K  À	args	func
delay 	func 
delay 	args €€À™²  
 6   9  B -   ) )ÿÿM€-  89! =9)     X
€96 9
B A 6 9 -  	 BOìK  À
remove
table	args
unpack	func
delayframetime
render[   -   
   X  €6   9  9  B -    X €+  X€+  L  ÀGetForegroundWindowCffi    -   L  À6   6  99  +  D CreateDirectoryACffiÑ 
   6  99  B
  X€+  L 6  9' 6  99 '	 B A
  X€+  L   +   D CreateInterfaceGetProcAddress'void*(__cdecl*)(const char*, int*)	castGetModuleHandleACffi: -   9    G  AK   Àadd_delayed_taskV  
6  99  B	  X€+ X€+ L GetFileAttributesACffi€€þÿÿ¿F  
6  99  B	  X€+ X€+ L DeleteFileACffi H  6  99   B	  X€+ X€+ L MoveFileACffi ¾  6  9' B6  9'    B)   ) M€  6 9
  
 B< Oø  )  <9 ,   ,	 )
 D  ShellExecuteW	byte
stringwchar_t[?]newshell32	loadffiÜ 
 54    '   &6 9' B6 99   B6 9'  )	ÿÿB X€5 L U€6 9	: 9
B
 X  € X €6 
 9  	 
 B 6  9  9  	 
 B 	   X é6 99 BL FindCloseFindNextFileA
insert
table ...cFileName
string  	None
HANDLE	castFindFirstFileACWIN32_FIND_DATAA[1]newffi *. ÿ    '6   9  ' B 4   4  3 = 3 = 4  6  9 9+  '	 B3
 =
3
 =3 =3 =3 =3 =3 =3 =3 =3 =2  €L  find_files open_folder move_file delete_file file_exists execute_after create_interface create_directory get_cs2_hwnd is_cs2_foregroundCounter-Strike 2FindWindowAC process_delayed_tasks add_delayed_taskü
        void* GetModuleHandleA(const char* lpModuleName);
        void* GetProcAddress(void* hModule, const char* lpProcName);
        int CreateDirectoryA(const char* lpPathName, void* lpSecurityAttributes);
        void* FindWindowA(const char* lpClassName, const char* lpWindowName);
        void* GetForegroundWindow(void);
        short GetKeyState(int nVirtKey);
        unsigned short GetAsyncKeyState(int vKey);
        int GetCursorPos(void* lpPoint);
        int ScreenToClient(void* hWnd, void* lpPoint);
        
        typedef uint32_t DWORD;
        typedef int BOOL;
        typedef void* HANDLE;
        typedef void* HWND;
        
        typedef struct {
            DWORD dwLowDateTime;
            DWORD dwHighDateTime;
        } FILETIME;
        
        typedef struct {
            DWORD dwFileAttributes;
            FILETIME ftCreationTime;
            FILETIME ftLastAccessTime;
            FILETIME ftLastWriteTime;
            DWORD nFileSizeHigh;
            DWORD nFileSizeLow;
            DWORD dwReserved0;
            DWORD dwReserved1;
            char cFileName[260];
            char cAlternateFileName[14];
        } WIN32_FIND_DATAA;
        
        int DeleteFileA(const char* lpFileName);
        int MoveFileA(const char* lpExistingFileName, const char* lpNewFileName);
        HANDLE FindFirstFileA(const char* lpFileName, WIN32_FIND_DATAA* lpFindFileData);
        BOOL FindNextFileA(HANDLE hFindFile, WIN32_FIND_DATAA* lpFindFileData);
        BOOL FindClose(HANDLE hFindFile);
        intptr_t ShellExecuteW(void* hwnd, const wchar_t* lpOperation, const wchar_t* lpFile, 
                            const wchar_t* lpParameters, const wchar_t* lpDirectory, int nShowCmd);
        DWORD GetFileAttributesA(const char* lpFileName);
    	cdefffi‹    C-   6 6 ' - 9B'  B=  -   6 6 ' - 9B' B= -   6 6 ' - 9B'  B=  -   9      X€-   6	 9
'
 -  9 B= -   9     X€-   6	 9
' -  9B= -   9      X€-   6	 9
'
 -  9 B= K     void*(*)(void*, uint64_t)(void(*)(void*, uint64_t*, uint64_t)void(*)(void*, uint64_t*)	castffifind_by_indexfind_by_index_addrget_next_iteratorget_next_iterator_addrget_first_iteratortier0.dllfind_pattern
assertget_first_iterator_addr"  6   3 B K  ÀÀ 
pcallÑ 	8-  9   X€-  9  X€-  9  X€+  L 6 9' )  B-  9 -  B:   X€U€-  9- : B
  X€6 9-  B6 9 9B  X€L -  9-  :  BXâ+  L ÀÀÀ
szName
string	castuint64_t[1]newffifind_by_indexget_next_iteratorget_first_iterator€€þÿÿ¿÷  	
?-   9      X €-   9     X €-   9     X €K  6  9  ' )  B -  9 -   B:    X$€U#€-  9- :  B
  X€6 9-  B6  99	- B X	€6  99	6  9
- B A=	-  9-   :  BXÙK  ÀÀÀÀ	bnot
nFlags	bandbit	castuint64_t[1]newffifind_by_indexget_next_iteratorget_first_iterator€€þÿÿ¿ q  :    X€K  :  9 -  9 X€K  
  X€:  9=K  :  99L  À i1
value	bool
nTypeæ 
 C:    X€K  4  -  9 >-  9>-  9>-  9>-  9>-  9>+ 6  BX €:	  9	 		 X	€+ X€E R ø  X€K  - :  9 8  X€K  
  X€6   B 	 X€6
   B X€)  :  9
<K  :  9
8L  ÀÀ
value
tonumber
string	type
nType
ipairs
uint64
int64
uint32
int32
uint16
int16ð   -:    X€K  :  9 -  9 X €:  9 -  9 X€K  - :  9 8  X€K  
  X€6  B  X€6  B X€)  :  9<K  :  98L  ÀÀ
value
tonumber
string	typefloat64float32
nType¿  #:    X€K  :  9 -  9 X€K  - :  9 8  X€K  
  X	€:  96 9'   B<K  6 9:  98D  ÀÀconst char*	castffi
value
string
nTypep  -  8  X€-  8L 6  4 - 9  B> - B-  <L 
ÀÀ	Àfind_cvarsetmetatableš " 66   9  ' B -   9  B 4  6 9) ) B' 9  '   B5	 6  9
'
 B3 
 = 3  = 3  = 9 B 5  5 5	 5
 3
 =

3
 =

3
 =

3
 =

=
	4
  4
  6 
 5! 3  =B2  €L
  À __index  setmetatable__index __index 
string 
float int 	bool 
float 
string int 	bool  
  i1i16u16i32u32i64u64 fl db sz 
string	
qanglevector4
vector3vector2

color
float64float32 
uint64
int64
uint32
int32
uint16
int16	bool invalidÿÿÿÿmax unlock_hidden_cvars find_cvar initialize
CConVar*
typeof find_by_indexå48 89 5C 24 ? 48 89 74 24 ? 57 48 83 EC ? 48 8B DA 48 8D B9 ? ? ? ? 48 8B F1 FF 15 ? ? ? ? 8B D0 39 47 ? 75 ? 66 FF 47 ? EB ? 8B 07 90 85 C0 75 ? B9 ? ? ? ? F0 0F B1 0F 75 ? 66 C7 47 ? ? ? 89 57 ? EB ? 48 8B CF E8 ? ? ? ? BAget_next_iterator¹40 53 55 56 41 56 41 57 48 83 EC ? 49 8B D8 48 8D B1 ? ? ? ? 4C 8B F2 48 8B E9 FF 15 ? ? ? ? 8B D0 39 46 ? 75 ? 66 FF 46 ? EB ? 8B 06 90 85 C0 75 ? B9 ? ? ? ? F0 0F B1 0E 75 ? 66 C7 46 ? ? ? 89 56 ? EB ? 48 8B CE E8 ? ? ? ? 41 BF ? ? ? ? 48 89 7C 24 ? 4C 89 6C 24 ? 66 41 3B DF 74 ? 41 BD ? ? ? ? 66 44 85 6Dget_first_iteratorC48 89 74 24 ? 48 89 7C 24 ? 41 56 48 83 EC ? 48 8B F2 48 8D B9tier0.dllcreate_interfaceVEngineCvar007
lshiftbitlibrary.core.utilsù        typedef union {
            bool i1;
            int16_t i16;
            uint16_t u16;
            int32_t i32;
            uint32_t u32;
            int64_t i64;
            uint64_t u64;
            float fl;
            double db;
            const char* sz;
            void* clr;
            void* vec2;
            void* vec3;
            void* vec4;
            void* ang;
        } CVValue_t;

        typedef struct {
            const char* szName;
            CVValue_t* m_pDefaultValue;
            char pad_0010[0x10];
            const char* szDescription;
            uint32_t nType;
            uint32_t nRegistered;
            uint32_t nFlags;
            char pad_0034[0x24];
            CVValue_t value;
        } CConVar;
    	cdefffi‰    X€+  L   -  9 '  B)  ) M€  6 9
  
 B< Oø)  <L  À	byte
stringwchar_t[?]new‡ 
     X€+  L 4  6    BH€6  9  	 
 '
  &

B FRö6 9 ' D  

concat : 
insert
table
pairsž 	 )  6  ' G  A) M €6   G   A
  X
€-  9'  )  B X€- 9  BO îK   ÀÀWinHttpCloseHandleHINTERNET	cast#
selectÀ 	0-  9 ' )  B-  9 ' -  9'  B A-  9' B> - 9- - B- 9    +  	 
 +
  B   X€: +  J X	€)ÿÿ' 6  - 9B A &J K   ÀÀ	À
ÀÀÀGetLastError
tostring(WinHttpQueryHeaders failed. Error: WinHttpQueryHeadersbor
DWORD
sizeof
DWORD[1]new ó ))  -  9 '  B4  U€-  9 ' )   B- 9    	 
 B	  X€X€: 	  X€X
€6 9  -  9
 :
 B AXâ6 9  D  ÀÀ
concat
string
insert
tableWinHttpReadData
DWORD[1]uint8_t[?]new © 
 
 /4    9  ' B  X€'   '     9B X€+ X€+ =  9 ' B  X €= 6 	 	 B = X €= +   =   X €  )    X €  X €'  = 
L 	path
tonumber	port	host^(.-):(%d+)$
lower
https/	http,^([hH][tT][tT][pP][sS]?)://([^/]+)(.*)$
matchÈ
 $ï9   X€' 9  X€+ 9  X €  X€-    X €- 9 9  X	€' 9	  	 X
€'	 
   X
€-
  
 X€)
  - 9	- 	 B- , )  B
  X
 €-
 9

'
 )  B

 X

€
 5 '
 6 -  9B A &=D
 -
 9

 -  B
 )  B


  X €- 9
'
 )  B
 X€-  B 5 ' 6 -  9B A &=D - 9
 -   B-  B, 
 B
  X €- 9
'
 )  B X€- 
  B 5 ' 6 -  9B A &=D +  )     X€-	   B-  B  +   )   X€- 9'  B - 9   B- 9      )  B	 X€-  
  B 5 ' 6 -  9B A &=D - 9 +  B	 X€-  
  B 5 ' 6 -  9B A &=D -
  B-
  B-  
  B  X
€'  '   & 5! =BX€ 5" =#=BK  ÀÀ ÀÀ
ÀÀ ÀÀ
ÀÀÀÀ
status 	body 
status  	body 
statusÿÿÿÿ 

Status Query Error: $WinHttpReceiveResponse failed:  	body 
status WinHttpReceiveResponse WinHttpSendRequest failed:  	body 
status WinHttpSendRequest	copychar[?]new WinHttpOpenRequest failed:  	body 
status WinHttpOpenRequestWinHttpConnect failed:  	body 
status WinHttpConnectGetLastError
tostringWinHttpOpen failed:  	body 
status HINTERNET	castWinHttpOpenLuaHTTP/1.0user_agent	bodyheaders	port
https/	path ¹ 
 K
  X €6   B  X€ 4  6 9  X€' B    X€4  +    9' B  X€-    B9 9  X €9=9	  X €9	=	9
  X €9
=
X€   X€ 5 
 D   X€  
 X€9  X€' =X€  X€   X€' =-     	 
 BK  ÀÀ
DELETE	bodyPUT	POST 	body!Invalid or missing host/URL.
status 	port
https	path	host://
matchGET
upper
string
function	type1 	  -  9 '      D ÀGETrequest2 	  -  9 '      D À	POSTrequest1 	  -  9 '      D ÀPUTrequest4 	  -  9 '      D À
DELETErequestÞ
  '6   ' B 6  ' B9 ' B9 ' B9  4  )P )»*   )  )	 *
 3
 3	 3
 3
 3 3
 3 3 =3 =3 =3 =3 =2  €L  
delete put 	post get request       CWinHttp	loadé        typedef void* HINTERNET;
        typedef unsigned long DWORD;
        typedef int BOOL;

        HINTERNET WinHttpOpen(const wchar_t* userAgent, DWORD accessType, const wchar_t* proxyName, const wchar_t* proxyBypass, DWORD flags);
        HINTERNET WinHttpConnect(HINTERNET session, const wchar_t* serverName, unsigned short serverPort, DWORD reserved);
        HINTERNET WinHttpOpenRequest(HINTERNET connect, const wchar_t* verb, const wchar_t* objectName, const wchar_t* version, const wchar_t* referrer, const wchar_t** acceptTypes, DWORD flags);
        BOOL WinHttpSendRequest(HINTERNET request, const wchar_t* headers, DWORD headersLength, void* optional, DWORD optionalLength, DWORD totalLength, DWORD context);
        BOOL WinHttpReceiveResponse(HINTERNET request, void* reserved);
        BOOL WinHttpQueryHeaders(HINTERNET request, DWORD infoLevel, const wchar_t* name, void* buffer, DWORD* bufferLength, DWORD* index);
        BOOL WinHttpReadData(HINTERNET request, void* buffer, DWORD bytesToRead, DWORD* bytesRead);
        BOOL WinHttpCloseHandle(HINTERNET handle);
        DWORD GetLastError();
    	cdefbitffirequire€€€€€€€V  
   X€+  L -  9 '   B: 
  X€+  L 8L  Àvoid***	cast€  -  9    B
  X€+  L - 9'  B  G C À À#void*(__thiscall*)(void*, ...)	castget_v_methodX   
6   ' B 4  3 =3 =2  €L  call_v_method get_v_methodffirequire  6   9  9  -  B 	   X  €6  -  9B - #  L  6   9  9  B   L  ÀÀGetTickCount64
QuadPart
tonumberQueryPerformanceCounterCffiÐ6   6   9  9  B    L  GetTickCount64CffiÐŒ  
6   9  ' B 6   9  ' B 6  9' B6  99  B	  X €6  9 B3	 2  €L 2 €3
 2  €L   
QuadPart
tonumberQueryPerformanceFrequencyCLARGE_INTEGERnewÈ        typedef struct {
            long long QuadPart;
        } LARGE_INTEGER;
        int QueryPerformanceCounter(LARGE_INTEGER* lpPerformanceCount);
        int QueryPerformanceFrequency(LARGE_INTEGER* lpFrequency);
        uint64_t GetTickCount64(void);
        uint32_t timeGetDevCaps(void* ptc, uint32_t cbtc);
    	cdefffi{   6     B6 9'  B-   X€+  L 6 9'  D Àuintptr_t
void*	castffifind_pattern¥      X€K    X€)    X€)  6  9'   B 6  9'   B:  6  9'  B  L int32_t
sizeof
int32_t*
uint8_t*	castffi‘  9    X€9   X€+ L 6 999 B  X€+ =  + L + L 
handleSuspendThreadCffi
is_validis_suspendedþÿÿÿ  9    X€9   X€+ L 6 999 B  X€+ =  + L + L 
handleResumeThreadCffi
is_validis_suspendedþÿÿÿl   9    X€K    9 B+ =  6 999 BK  
handleCloseHandleCffi
Resume
is_valid 6  99) )    B-   X€-  X€+ 2 €6 5 = =5 5 3   = 	3 
 = 
3  = 
=2  €D L ÀÀ__index __index 
Close 
Resume Suspend 
Resume 
Close Suspend  
handle id is_suspended
is_valid id 
handle setmetatableOpenThreadCffi›  
j4   .   6   9  9  ) )  B -   X€+ L 6  9' B: 6  9'  B=6  99   B	  X €6  99	  B+ L 6  99
B6  99
B6  99    B)   X,€U+€: 9)  Xñ: 9
 Xí: 9 Xé- : 9B  X€6 -   BH€	 9
	B
FRû4  .  6  99	   B+ L 6 9-    BXË6  99	  B+ L 	€À
À
insert
table
Close
pairsth32ThreadIDth32OwnerProcessIDThread32NextGetCurrentProcessIdGetCurrentThreadIdCloseHandleThread32Firststruct Thread32Entry
sizeof
dwSizestruct Thread32Entry[1]newCreateToolhelp32SnapshotCffi ]   -   B    X €+  L  6   - B H€  9BFRû+  L  
À	€Suspend
pairsP   
6   -  B H€  9B  9BFRøK  	€
Close
Resume
pairs¨  6   -  - G  A    X€-  9B6 '  9  B A - G  C  L ÀÀÀ
format-[hooks]: unexception runtime error -> %s
print
Remove
pcallÎ	  9    X€+  L   9 B6 9 G A  X
€+ =  6 '   9 B A +  L   9  BL 
Attach
format![hooks]: runtime error -> %s
printtarget_addr
pcall
Detach
is_valid‰ 	 ,9    X€9   X€+ L + =  6 999 6 9-  B)@ 9  B6 99 - 6 9-   B A6 999 6 9-  B9  : 9  B+ L ÀÀ	copyold_protect
sizeoftarget_addrVirtualProtectCffi
is_validis_attached“ 
 ,9    X€9   X€+ L + =  6 999 6 9-  B)@ 9  B6 99 9	 6 9-   B A6 999 6 9-  B9  : 9  B+ L Àbackup_data	copyold_protect
sizeoftarget_addrVirtualProtectCffi
is_validis_attachedW  9    X€+ L -  B  9 B- B+ =  K     
Detach
is_validš*6  6   B X€+ X€+ ' B6  6    B X€6    B X€6    B X €6    B X€+ X€+ '  B-  B  X €- B6 '	 B+ 2 N€6
 9
' B6
 9
    B6
 9
'  5 B5 ==6 
 9 
 '	 B = 6 
 9  9  B = 6 
 9  	 
 6

 9


 B
 A 6 
 9 
 '	 
 B 6
 9
'
 6

 9



 3 B
 A>  6  	 5
 3
 =
 
5
" 3! =#
3$ =%
3& ='
=

B = 	 9 #B 6 ( 9 ) -	 
 B -  B 2  €L L À
ÀÀ
insert
table
Remove 
Detach 
Attach 
Attach 
Remove 
Detach  
__call 
__call __index  setmetatable__index uintptr_tuintptr_t*
sizeof	copyprocess_handleGetCurrentProcessCold_protectuint32_t[1]target_addrbackup_data backup_data 
is_validprocess_handle old_protect target_addr is_attached  ÿ%            	castuint8_t[14]newffi(create_hook: failed suspend threads
print)create_hook: invalid target function
number
userdata
cdata)create_hook: invalid detour function
function	type
assert>   
6   -  B H€  9BFRûK  À
Remove
pairs? 
  
-      B  X€+  L -    	 D ÀÀ    -   L  Àº
   06   ' B 6  ' B3 B6 9' )  B6 9' ) ÿÿB3  3 +   6 9	'

 B4  4	  3

 3
 3
 3
 3 6 ' 3 B5 ===3 ===
3 =2  €L get_hook_list resume_threadssuspend_threadsfind_and_resolve resolve_relative_addrpattern_to_address
create  suspend_threads resolve_relative_addr pattern_to_address get_hook_list 
create find_and_resolve resume_threads  
unloadregister_callback     ª        typedef struct Thread32Entry {
            uint32_t dwSize;
            uint32_t cntUsage;
            uint32_t th32ThreadID;
            uint32_t th32OwnerProcessID;
            long tpBasePri;
            long tpDeltaPri;
            uint32_t dwFlags;
        } Thread32Entry;

        int CloseHandle(void*);
        void* GetCurrentProcess();
        uint32_t ResumeThread(void*);
        uint32_t GetCurrentThreadId();
        uint32_t SuspendThread(void*);
        uint32_t GetCurrentProcessId();
        void* OpenThread(uint32_t, int, uint32_t);
        int Thread32Next(void*, struct Thread32Entry*);
        int Thread32First(void*, struct Thread32Entry*);
        void* CreateToolhelp32Snapshot(uint32_t, uint32_t);
        int VirtualProtect(void*, uint64_t, uint32_t, uint32_t*);
    	cdef  
void*	castffi library.core.utilslibrary.engine.vmtrequire’  	6   9  ' -  9B 6  9'   6  9'   B:  B: L À	int*
void**ParticleManager_Patternuintptr_t	castffiŽ  
   X€)  L 6  9' B-  - 9B   )  )  )	  )
  )
  B	: L À ÀGetParticleManagerunsigned int[1]newffi‡ 
  
  X€+  L 6  9' 999 B-  - 9B  )    )	  BK  À ÀGetParticleManagerzyx
VectornewffiK       X€  X€K  -    B  X€K  -   BK  ÀÀÕ   ,4   5 6  6 ' '  B' B=6  6 ' '   B' B=	6  6 ' ' 
 B'
 B=6
 9' 9	B6
 9' 9B3 = 3 3 3 = 2  €L   CreateParticle   GetParticleManager<bool(__fastcall*)(void*, unsigned int, int, void*, int)^int*(__fastcall*)(void*, unsigned int*, const char*, int, int64_t, int64_t, int64_t, int)	castffi SetParticleSettings_Pattern SetParticleSettings OtdatedZ48 89 5C 24 ? 48 89 74 24 ? 57 48 83 EC ? F3 0F 10 1D ? ? ? ? 41 8B F8 8B DA 4C 8D 05!CreateParticleEffect_Pattern!CreateParticleEffect Otdated-4C 8B DC 53 48 81 EC ? ? ? ? F2 0F 10 05ParticleManager_Pattern  SetParticleSettings_Pattern !CreateParticleEffect_Pattern ParticleManager_Pattern ParticleManager OtdatedJ48 8B 0D ? ? ? ? 41 B8 ? ? ? ? F3 0F 11 74 24 ? 48 C7 44 24 ? ? ? ? ?client.dllfind_pattern
assertY   -  8   X€- 8   X€- -  8 B< - 8 L -   D  ÀÀÀÖ   =6   B ' &  6  B 9' ' B ' &4  >   ' &>  '  &>  ' &> '	 &>>6
   BX€-
  9


	 B
 
 X
€-
  9

	 B
6

 ' 
	 &
6
 )x )x )x ) B
 A
ERéK  Àcolor_t![Shadow] Created directory: color_printcreate_directoryfile_exists
ipairs\csgo\particles\\Trashtalk\Sounds\Assets \csgo\particles\Shadow.lua\\bin\win64$	gsub\nix\scripts\Shadow V2get_game_directoryS   6  9  ' B  X€6  9 B+ L + L 
closer	open io« 
,9  	  X€6 9-  9' B  X € 99 B 9 B6 '	 -  9&6
 ) x )x )	x )
 B AX€6 '
 -  9&6
 ) )   )  )	 B AK  À"[Shadow] Failed to download: color_t[Shadow] Downloaded: color_print
close	body
write wb	path	open io
statusæ 
9õ4  5  6 B' &=> 5 6 B' &=> 5 6 B'  &=> 5 6 B'	 &=> 5
 6 B'
 &=> 5 6 B'
 &=> 5 6 B' &=>  5 6 B' &=> 5 6 B' &=>	 5 6 B' &=>
 5 6 B' &=>
 5 6 B' &=> 5 6 B' &=>
 5 6 B' &=> 5 6 B' &=> 5  6 B 9!'" '# B'$ &=> 5% 6 B 9!'" '# B'& &=> 5' 6 B 9!'" '# B'( &=> 5) 6 B 9!'" '# B'* &=> 5+ 6 B 9!'" '# B', &=> 5- 6 B 9!'" '# B'. &=> 5/ 6 B 9!'" '# B'0 &=> 51 6 B 9!'" '# B'2 &=> 4  63   BX€	  X €6 4 9 5 	 
 B X 
€-   9	B    X €6 4 9 5 	 
 B ERì 	 X€2 
€63  BX€-  9 6 9	73
8 B 2 €ERøK  K  
ÀÀ urlget
insert
table
ipairs/csgo/bin/snow_s1.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=1SXdax_LD79OJp6q5SkIy-AW5CxKr1c7B!/csgo/bin/tombstone_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=1kr8znwRO8OiAvhFdmt9Hty-hwjWk21_M/csgo/bin/coins_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=1uCDn5lE2QW9UxtB8_hPbLQt2U4m_pP0V!/csgo/bin/coins_hit_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=184ZL5Ckh7kvI2i9oivY9HD2Lhd1kWKau%/csgo/bin/lightning_hit_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=1TMDhxYwgK3bV2gBc4D1Sk01IMVrWtdEW"/csgo/bin/flower_hit_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=17P-AykKcwSpF1OabyCA5-sSgzbMWmnlx!/csgo/bin/lightning_s.vpcf_c 	path urlUhttps://drive.google.com/uc?export=download&id=1QsdtboBjeCzvgdSHprF53kmGkBj4vKyq/csgo/bin/flowers_s.vpcf_c\bin\win64$	gsub 	path urlUhttps://drive.google.com/uc?export=download&id=16zZZGnBkU0HBIRJaLFJtlZ1nJz6nI8uj+/nix/scripts/Shadow V2/Assets/Save.png 	path urlUhttps://drive.google.com/uc?export=download&id=1KsP8xbxRu2r3-Ae18dirLOtv4Wxfb2r2//nix/scripts/Shadow V2/Assets/Keybinds.png 	path urlUhttps://drive.google.com/uc?export=download&id=1qUwTNcYThxL005A1jFiiLptCF8XFnC3x+/nix/scripts/Shadow V2/Assets/Bomb.png 	path urlUhttps://drive.google.com/uc?export=download&id=1Uqwwogl3yX7NWKaqVg1QM1E9VQlSED_O+/nix/scripts/Shadow V2/Assets/User.png 	path urlUhttps://drive.google.com/uc?export=download&id=1_niwJv6aKnlOE3WOVC47Lq9_92wd4NHc//nix/scripts/Shadow V2/Assets/Settings.png 	path urlUhttps://drive.google.com/uc?export=download&id=1tKM2UJE-vxEXzcb0HRoQWufxylGTsCT0+/nix/scripts/Shadow V2/Assets/Misc.png 	path urlUhttps://drive.google.com/uc?export=download&id=1fMIR2iwklVPCs-2VS6S2FD-txrEUpqVT./nix/scripts/Shadow V2/Assets/Visuals.png 	path urlUhttps://drive.google.com/uc?export=download&id=1D7gfTVScu5sbzMGulWoo2MlnGlPTNbbe,/nix/scripts/Shadow V2/Assets/Legit.png 	path urlUhttps://drive.google.com/uc?export=download&id=1prgPCdtPm8XxP1TSX8Htp4s0DWnrTa9J//nix/scripts/Shadow V2/Assets/Anti-Aim.png 	path urlUhttps://drive.google.com/uc?export=download&id=1t_8rFNOnHluG2my6UqXY4IuLUdVWHUBf+/nix/scripts/Shadow V2/Assets/Rage.png 	path urlUhttps://drive.google.com/uc?export=download&id=1ZJh5OhOiP0sR9bp2bryZq6Jc7Xu5Rbm_-/nix/scripts/Shadow V2/Assets/luaIco.png 	path urlUhttps://drive.google.com/uc?export=download&id=1xhpDJNV-gMljuGtXKyrtbF3YneCfUeFA//nix/scripts/Shadow V2/Assets/verdanab.ttf 	path urlUhttps://drive.google.com/uc?export=download&id=1rNUTbU7AARPeIkbGhpcbpqFIolGETI4O./nix/scripts/Shadow V2/Assets/verdana.ttf 	path urlUhttps://drive.google.com/uc?export=download&id=1eJr-gW-phuGJaVfIuJzggC3D2Z2I6yfI5/nix/scripts/Shadow V2/Assets/poppins-medium.ttf 	path urlUhttps://drive.google.com/uc?export=download&id=1eD25gJ46f_9cuRH7UVgrkX3MmqvzeY5m	path'/nix/scripts/Shadow V2/default.cfgget_game_directory 	path urlUhttps://drive.google.com/uc?export=download&id=10ACsT1DTo1NrJv5Z2SU8xZRnhv44QiCm Þ   
!6   B X€ X€  X€+ L 6 9B  X€+ L 6 96  99	 B*  B	 X€+ X€+ L GetAsyncKeyStateCffi	bandbitis_game_window_focused
utilss	none
string	type€€ —   9    X
€6 96 B' &) ) B=  K  //nix/scripts/Shadow V2/Assets/verdanab.ttfget_game_directorysetup_font
renderverdana   6   9  6	 
  B	6
   
B
6
 *
  *  *  9B
) B K  acolor_t
vec2_trect_filled
render½øðáž¼¸ý÷ 	  
6  99 5 =6  9  B =  BK  startTime
clock os	text 
width 
height 
currentY targetY targetX xOffsetœÿÿÿ
alpha appearDurationš³æÌ	™³æþdisplayDurationstartTime 	text 
stateappearing
messages
insert
table·  _)  6  9 BXW€9 !9	  	 X	€9	 #		)
 
	 X
€)	 '
 =
 )
  =
  X
&€
 	

=
  =	 X	!€9	  	 X	
€9		 	 		 X	€'	
 =	 )	 =	 )	  =	  X	€9	  	
 X	€9		 	 	!			 	
 	=
 9

 

 "
	


=
  )
 
	 X
€'
 =
 6	
 9		9
 9 )
 B	 	 X
€9
 
 X
€9
	

=
 9
	

=

 = 9
  


X

€9
 
 X
€)
 =
 )
È =

 = 9
  


ER§K  targetYxy
heightverdana	textcalc_text_size
render
removing
width
fadingdisplayDuration
alphaxOffset
activeappearDurationappearing
statestartTime
messages
ipairs¸þÿÿ(
‰  6  9-  6	 
 B	6
  
B
6
 )
 ) ) 9B
 AK  À
alphacolor_t
vec2_ttexture
render6€€Ú‚  	b6  9B  9  B6 9 BXQ€9   X N€9  99	 !	    =  9 	  9 9	
9


  9
    	 
 6
 * * * 9B6
 ) ) ) 9B A

  9
   	 
 6
 * * * 9B6
 ) ) ) 9B A

  9
     B
6
 
  
 B
6 999 
 6
 ) ) ) 9B) BER­  9 BK  cleanup_messagesverdana	text
render
vec2_trender_texture
alphacolor_tcreate_window
height
widthxOffsettargetY
currentY
removing
state
messages
ipairs calculate_message_positions
clock osçÌ™³³æÌþ
³äÈ‘™²äýµæÌ™™³æþ<µæÌ™™³¦ÿP€€ø€p 	  9   ) )ÿÿM
€9  89  X€6 99    BOõK  
remove
table
removing
state
messages=      9  B  9 BK  draw_messagessetup_fonts.   -     9   B K   Àmessage_on_paintP  	  9  B6 ' 3 B2  €K   
paintregister_callbacksetup_fonts    ! "  L ¤  8
 -   9      X€K  -   -  9 = 6  9  B 6 9-  9-  9B9  9 !9 9!-  9)
  X
€-  -  9
-   9 	 * *	 B=	X€-  9
-  9 X	€-  -  9
-   9 	 )  *	 B=	-  9
-  9
 X
€-  -  9
-   9  * *	 B=X€-  9
-  9
 X€-  9
-  9 X	€-  -  9
-   9  )  *	 B=-  9
-  9 X
€-  -  9
-   9  * *	 B=X€-  9
-  9 X	€-  -  9
-   9  )  *	  B=-  9
-  9 X+€-  -  9 =-  9-  9 X€-  )  =-  -  9 =-  9  X
€-  -  9
-   9  * *	 B=X€-  -  9
-   9  ) *	  B=X	€-  ) =-  )  =-  + =-  9
-  9 XD€-  ) =-  9:-  9
-   9  :  9  ) *		 B=-  9:9  6 9-  9:9-	  9		B9 !=-  9:=-  9:+ =-  9:9*
  X-‚-  9:+ =-  -  9=
-  -  9=-  -  9= X‚-  9
-  9 X€-  9-  9!-  9! X‚-  -  9"=
-  9:=#X‚-  9
-  9" X&€-  9:-  9
-   9  :  9  -  9:9#-	  9	$			B=6% 9&-  9:9-   9  :  9 # ! B)  XÜ-  -  9'=
X×-  9
-  9' Xm€+ ) -  9 )  MW€-	  9		8		9		 	 X	I€-	  9		8		-
  9

8

9
(

 
=
(	-	  9		8		9	(	-
  9

8

9
)

	 X	6€-	  9		8		-
  9


-  989)
 * B
=
	-	  9		8		6
 9

-  9 9*)  B-
  9

B
9
 
 

=
	-	  9		8		=	-	  9		8		+
 =
	-	  9		8		9		*

 
	 X	 €-	  9		8		+
 =
	-	  =	-	  9		8		9		 	 X	€+ O©  Xq-  9-  9 !)l  Xi-  -  9
=
Xd-  9
-  9
 X€-  -  9
-   9  )  *	 B=) -  9 ) M€-  98 -	  9	
	-
  9

8
 
9

)  *
 B	=	Oò-  9:9*
  X:6 9'+ -   9  B6 9' , -  9B6 9'- -	  9		B9     9 !  9 9			!	-	  9	.	:		= #	-	  9	.	:		9
 

 

=
/	-	  9	.	:		-
  9
.
:

9
/
=
	-	  9	.	:		=	-	  9	.	:		9
  

 =
#	-	  9	.	:		9
  

=
/	-	  9	.	:		-
  9
.
:

9
/
=
	-	  9	.	:		=	-	  9	.	:		)
  =
	-	  9	.	:		)
  =
	-	  9	.	:		+
 =
	-	  9	.	:		+
 =
	-	  -
  9

=

	-	  -
  9

=
0	-	  )
  =
	XÏ€-  9
-  9 X-€-  9.:-  9
-   9 . :  9  ) *	 B=-  9.:-  9
-   9 . :  9  ) *	 B=-  9.:9*
  X¨€-  9.:9*
  X¡€-  -  91=
Xœ€-  9
-  91 XM€-  9.:-  9
-   9 . :  9  -  9.:9#*	 B=-  9.:-  9
-   9 . :  9  -  9.:9#*	 B=6% 9&-  9.:9-   9 . :  9 # ! B)   X€+ X€+ 6% 9&-   9 . :  9  -  9.:9#!  B)   X€+ X€+   XP€  XN€-  -   9 2 = 
XI€-  9
-  92 X€-  9-  90!-  93 X:€-  -  9=
X5€-  9
-  9 X/€-  9.:-  9
-   9 . :  9  )  *	 B=-  9.:-  9
-   9 . :  9  )  *	 B=-  9.:9*
  X€-  + = -  + =4- + =5-  96' 7 BK  +À$ÀÀ%[Shadow] Lua loaded successfullyadd_message
isOpenhas_shownv2_visible_durationSTATE_V2_VISIBLESTATE_V2_MOVINGv2_show_timestart_xv2_letters V22Vsub
delayframe_delay STATE_SHOWING_OTHER_LETTERSabs	mathletter_move_speed
target_xSTATE_MOVING_FIRST_LETTERFIRST_LETTER_DELAY_TIMEanimation_start_timefirst_letter_delay_startfully_visiblevisible
pos_y	char
pos_x
alphaletterscurrent_letter_indexSTATE_STARTblink_alphais_blinkingblink_intervalblink_timerSTATE_FIRST_LETTER_DELAYv2_glow_intensitySTATE_V2_SHOWglow_intensitySTATE_FADE_OUTSTATE_V2_FADE_OUTcurrent_state	lerpdark_alphayx	font	textcalc_text_sizescreen_size
renderframe_countanimation_finishedÍ™³ææÌ™ÿµæÌ™™³æýµæÌ™™³¦ýµæÌ™™³¦ÿñú¨¸Ñðúü÷ÑðúáõÑýçÌ™³³æÌþ÷ÑðúáõÑüÍ™³ææÌ¹ÿ÷Ñðúáõ‘üdý  —-   9      X€K  6  9  B -  9*   X€6 96 )  )  B  6 )   )  )	  -
  9

B A-  9 -  9 XÐ€-  9 -  9	 XÊ€) -  9
 ) MÄ€-  9
89
*   X¼€6 -   9 
 8  9  -  9
89
B-  9
89
	 X 	€-   9   -  9  X €-   9  " -   9  *    X Ž€-   9  "  -  9)	 )
ÿÿM†€-  9#
6
 ) ) ) " B
6 9-  9
89-  96 
 
 B 
 B6 9-  9
89-  96 
 
 B 
 B6 9-  9
89-  96 
 
 B 
 B6 9-  9
89-  96 
 
 B 
 B) 
 X<€6 9-  9
89-  96 
 )  B 
 B6 9-  9
89-  96 
 )  B 
 B6 9-  9
89-  96 )  
 B 
 B6 9-  9
89-  96 )  
 B 
 BOz6  9  -	  9	
	8		9		-
  9


 6 ) ) )  B A O<-  9 -  9	 Xž€) -  9 ) M˜€-  989
*     X€9  X €6 99	
B-   9  *    X w€9 
-  9"  -  9)	 )
ÿÿMn€-  9#
6
 ) ) ) " B
6 99-  96 
 
 B 
 B6 99-  96 
 
 B 
 B6 99-  96 
 
 B 
 B6 99-  96 
 
 B 
 B) 
 X0€6 99-  96 
 )  B 
 B6 99-  96 
 )  B 
 B6 99-  96 )  
 B 
 B6 99-  96 )  
 B 
 BO’6  9  9	-
  9


 6 ) ) ) 9
B A OhK  +Àv2_glow_intensityvisiblev2_letters	font	char	textglow_radiusglow_intensityblink_alphaSTATE_FIRST_LETTER_DELAY
pos_y
pos_x
alphalettersSTATE_V2_SHOWSTATE_STARTcurrent_statecolor_t
vec2_trect_filleddark_alphascreen_size
renderanimation_finished÷Ñðúáõ‘üçÌ™³³æŒþ]   
-   9      X €-   9  B -   9  B K  +Àdraw_lua_animupdate_lua_animhas_shown2  	-  9 8 
 X€+ X€+ L *À	tabsU  -  9 8   X€+ L -  9 8 8
 X€+ X€+ L *ÀsubtabsC    '   '    & -  8
 X€+ X€+ L .À_;    '   '    & -  -  8 <K  .À_T  6  9# B# !*   X€) X€)   "L 
floor	math€€€ÿD   6   9  B -  !  -    X €+  X€+  L  À À
clock os)  6  9B3 2  €L  
clock os2  -   9   9  B    L  1ÀGetTickCountCÐ§   -   9   ' B - 9  B- 9- 9B  B6 :  9:  9 D 1À3Àyx
vec2_tGetForegroundWindowScreenToClientGetCursorPos
POINT[1]new    ! "  L 8 
  	6  9 6  9  	 B C minmax	mathä    -   9   B 
   X€- 9  X€+ L - 9' B-  9   B- 99B:  X€+ X€+ L 3À1ÀGetCurrentProcessIdCGetWindowThreadProcessIdunsigned long[1]new	NULLGetForegroundWindowÔ   6    B X€  X€   X€+ L 6 9B  X€+ L -  9- 9  B*  B	 X€+ X€+ L 2À3ÀGetAsyncKeyState	bandis_game_window_focused
utilss	none
string	type€€ W 
 )  )   X€ X€ -  9 9   )  	 )
  BK  1Àkeybd_eventC¡ 
  /6  9) ' B9' 9&6 9   X€6 4  = 6 9 8  X€6 9 < 6 9	6
 9
B")  B6 9 6 9
6 9 8	  
 B<6 9 8L 	lerp
utilssframe_time
rendermin	mathanim_cache _Gcurrentline:short_src Slgetinfo
debug³   !6   9  B 9 -  9 X€9 -  9-  9  X
€9 -  9 X€9 -  9-  9  X€+ X€+ L $À
heighty
widthxget_mouse_pos
utilss«  D, 6  9  B   !  ""	 		"		
 "



"

 	 X
€
 
   
 X
'€	 X
€
	    
 X
€	 X
€
  
  
 X
€	 X
€
 	   
 X
€	 X
€

    
 X
 €	 X
€
  	  
 
  
 J
 
floor	math 
þŠ   
 F-   9      XA€6  9  ) B    X€-   + =  -   9     X
€-   9     X€-   9  ' = X €-   9  ' =  K  )  )ÿ ) M "€- 9 X€- 9	 X€6 9 B  X€-  + = -  9  X
€-  9  X€-  9=X€-  9= K  O ÞK  $À5ÀRBUTTONLBUTTON
value	none
bind_keyactiveBindWindowactiveKeybindis_key_pressed
utilsswaitingForKey¥ 
     X€   X€K  '   &-  9 +  - 96 6	 B AK  =À<ÀSND_ASYNCSND_FILENAMEborPlaySoundA"nix/scripts/Shadow V2/Sounds/	none	None;   	-  9 9  )  )  )  BK  ;Àkeybd_eventC;   	-  9 9  )  ) )  BK  ;Àkeybd_eventC‘        X€'  L 5 8   X€8 L 6 9  B 9' B  X€L 6 9'    D 
0x%02X
format %w
match	char
string/   M1 M2  M3 M4 M5 BACKSPACETAB   
ENTER  
SHIFT	CTRLALT 	CAPS      ESC    
SPACE    	LEFT UP
RIGHT	DOWN    INSDEL	noneS   
   X€6  ) ) )   D 6  9 9 9 9  "  D abgrcolor_t²    "9  #  ) 	 )
 M€"
#9
 " 
!

6 96 ! !B6      B6 999 
 B )  BOåK  bgrcolor_t
vec2_t	rect
rendera¨   !6  9  	 
 
 B)   ) M€9

 #

	
 
"


6
 9
99
 B
"	 6
  9

   
  B
OëK  bgrcolor_ta	line
render8 
  	6  9 6  9  	 B C minmax	mathº     6   -  B X€9  X€9  X€9  X€9  X €9  X€+ =+ =ERëK  GÀis_opencolor_pickeris_color_openhas_color_picker
checkbox	type
ipairsò  	 -   9      X€-   9     X€-   9  9   X
€9 9 9B9 9 9B-  9 )  =K  $À
targetbindWindowAnimationstop_waitingkeybindclose_dropdown
dropdownbind_elementsactiveBindSettingactiveBindWindowò   -   B -  +  =  -  +  = -  + = -  + = -  +  = -  9     X€-  B 6  +  =  K  HÀ$ÀIÀactiveSettingsWindowelementSettingsactiveBindWindowactiveKeybindwaitingForKey
isTypingactiveInputBoxactiveDropdown±  Õ6   -  B X’€9 X€9  XŒ€9  X‰€9  X†€6  9 BX€€9
	
  X
}€6
 9
	
9	B
9

'
 
 ' 6
 9	B&

- 8
  X
€+ 9
 
 X
-€9
		
  X
€X
c€9
		
 X
€ 
 X
^€  X
\€9


 =
X
X€9
		
 X
€ 
 X
€+
 =
X
P€  X
N€ 
 X
L€+
 =
X
I€9
		
 X
F€ 
 X
€+
 =
X
A€  X
?€ 
 X
=€+
 =
X
:€9
 
 X
7€9
		
  X
€X
3€9
		
 X
€ 
 X
.€  X
,€9
9	
 X
€9
	 
 X€9
=
X
"€9
=
	9
	 
 X€9
=
X
€9
		
 X
€ 
 X
€  X
€9
=
	 
 X
€9
	 
 X€9
=
X
	€  X
 € 
 X
€9
	 
 X€9
=
-
 <


ER~ERl6  6 9B Hµ€+  6  B  X€9
  X €9
X
€6  B  X€ X€6
  B   X€9  X š€6  9BX	”€9


 X
€9

 
 X
Ž€9

 
 X‹€9

 
 Xˆ€6
  9

B
X‚€9  X€6 9	9B ' 9

'
  ' 6
 9B&- 8  X€+ 9
  X-€9	  X€Xc€9	 X€  X^€  X\€9
 =
XX€9	 X€  X€+ =
XP€  XN€  XL€+ =
XI€9	 XF€  X€+ =
XA€  X?€  X=€+ =
X:€9
  X7€9	  X€X3€9	 X€  X.€  X,€9
9 X€9  X€9
=
X"€9
=9  X€9
=
X€9	 X€  X€  X€9
=  X€9  X€9
=
X	€  X €  X€9  X€9
=
- <ER|E	R	jFRIK  GÀ9À_customSettings
string
table
elementselementSettings
pairs
minValueoriginal_valueslider_value
value
tostring
_key_
_bind_	nameis_key_pressed
utilss	nonekey
binds
has_bind
slider
checkbox	type
ipairs²    "9  #  ) 	 )
 M€"
#9
 " 
!

6 96 ! !B6      B6 999 
 B )  BOåK  bgrcolor_t
vec2_t	rect
rendera   =  = L  yx¢
 5
  = 
=
=
=
=
=
= 
= 
=	
=	

=


3
 =
6 9-  
 B2  €L
 GÀ
insert
table 
setPosrectangle	font
callback	textincrement
maxValue
minValue
valuevisible	name	type 

minValue 
maxValue 
value 	type rectangle 
callback increment 	name 	text visible 	font 8  
-  '      ,	
  +   BL MÀ
button÷ 

 5  = = X€' = X€' == 6 9	-  	 BL GÀ
insert
tablerectangleplaceholderEnter text...
valuevisible	name visible is_editing
value 	typetext_inputrectangle placeholder display_mode
normal	name ä J5  = = X€6 )  ) )	 )
 B=6 )   )  B==   X0€99	9 
6
 9
 
   B6	
 9	
	
  
  B	!
	)
  )  
 X€ X€! #

 X
€ X€! #

X€  X€!#


 
)  
 X€

=
6 )  )  B=6 9-    BL GÀ
insert
table
last_poshueminmax	mathbgrrectanglepos
vec2_t
valuecolor_tvisible	name 	
alpha hue 
value 	typecolor_pickeris_openrectangle pos 	name visible é  7-  '  	  
 
 ,  B  X €+  =   X €6  )	 )
 )
 ) B = +  = )   = 6   )	  )
  B = +   = )   = 	4   = 
)   = 
+  = '  = 
)  = +  = +   = +  = +  = +  = L MÀdropdown_hoveredbind_hoveredbind_waiting_for_keybind_window_posbind_mode_dropdown_openbind_type	none
bind_key
has_bindbind_count
bindspicker_alphalast_selected_color_pos
vec2_tpicker_poshueis_color_opencolor_tcolor_valuehas_color_picker
checkboxƒ 
 ' y6
  9

8
 
 
 X
€6
  9

5 4
  =
< 
5
 =
=
= 
=
=	
=

  X€) =

6 =
4  =

  X€
 X€4  =
6  B X€4  )
 9
 ) M
 € X€+ X€+ <O
ù=
X
€  X€
 X€4  =
 X€) =
  X€5 
  X
€  X
€
	  X
€ 	 X
€+
 X€+
 =

 X
€'
 =

	 X
€'
 =
=
 X€  X€+ =
' =
) =
+ =
+  =
+ = 
+ =!
+ ="
  X€=#
=$
+ =%
6 9&6  98 9
 BL
 
insertvalue_hoveredoriginal_valuebind_slider_valuedropdown_hoveredbind_hoveredbind_waiting_for_keybind_window_posbind_mode_dropdown_openbind_type	none
bind_key
has_bind
checkbox
suffix
prefixenabled enabled show_when_zero
suffix 
prefix 
format
slider
dropdown
table
values
combobox
binds
callbackincrement
maxValue
minValue
valuevisible	name	type 

minValue 
maxValue 
value 	type 
callback increment 	name 
binds 
has_bindvisible bind_count customSettings enabledcustomSettings 
elementselementSettingsþ 	 :-	  '
    
     ,  B	5
 
  X
€  X
€
   X
€   X
€+
 X€+
 =


 X
€'
 =


  X
€'
 =

=
	4
  =
 	)
  =
	+
 =
		'

 =

	)
 =
	=
	=	+
 =
	+
  =
	+
 =
	+
 =
	+
 =
	+
 =
	L	 MÀvalue_hovereddropdown_hoveredbind_hoveredbind_waiting_for_keybind_window_posbind_mode_dropdown_openoriginal_valuebind_slider_valuebind_type	none
bind_key
has_bindbind_count
binds
suffix
prefixenabled enabled show_when_zero
suffix 
prefix 
format
slider2  	-  '    ,
   +
    D
 MÀ	textQ  -  '     	 
 X
€)
 )
  ,
  B=L MÀ
values
dropdown  4    X€4  )   ) M€8
	 
 X
€+
 <
	Oú-  '  	  
 
 ) 
 ,  B=L MÀ
values
combobox«  b   X€)   -    )   ) B  -   X€) )   ) B -   X€) )   ) B   X€) , 6   9  	  B   ! 	"		"


"


"



"

   	  X€ 

 	 
  X'€	  X€
 
 	 
  X€	  X€	 
 
 
  X€	  X€	 
  
  X€	  X€
 
	  
  X €	  X€ 
	 
 
  6     D FÀcolor_t
floor	math 
á  26  9     B6  9     B!)  )    )	  	 X	€  X	€!	#		 	X	
€ X	€!	 #			X	€ X	€!	 #			 )	  	 X	€	 X	€)   X	€# 	 
  
 J	 minmax	math |  -   9   - ' B   	  X€:   X€5  X€6 9  BL  À^À	sort
table  	None	Nonecfgfind_files¤ a   X€+  L -  8   XV€9    X€9   X€9 - 999B-  5  6  9	9
9
9	B = 
=
==
  =     = 5  6 )
 )
  )  )
 B= 6 )
  )
  ) )
 B= 5 = 5 = = 5  = < -  8 9-  9	9		9		9
9

9

9
9

9

999B = 9-  9	9		9		9
9

9

9
9

9

999B = -  8 L [À]À\À
alphasaturationhuerainbow_state saturation
speedbrightness
alphapulse_statesecondary_data 
pos_x´saturation
value
pos_y 
alphahue´‘ÛßŸ•ÿprimary_data 
pos_x´saturation
value
pos_y 
alphahue secondary_colorprimary_color secondary_data primary_data active_colorPrimary
speedsecondary_color primary_color standart_pos_ystandart_pos_xstandart_valuestandart_saturationstandart_huestandart_coloracolor_t 	pulse_state rainbow_state standart_pos_y standart_pos_x standart_value standart_saturation standart_hue standart_color current_mode
Standartbgr
valuecolor_value
checkbox	typeè„ 		 &-    B  X €9 - 9 999 999  9  9  9 99B=9 - 9 999 999  9  9  9 99B= K  _À\Àsecondary_datasecondary_color
alpha
valuesaturationhueprimary_dataprimary_colorpulse_stateö ‹6  9B-    B9  X€9L Xy€9  X'€6 9 99	"B 99
99
6 9
9	
9

!	
	"		 	9	9
9
!


"

 	
	9
9
9!

"

 


9
99
!
" 

D XO€9  XL€99	"6 9  B6 9  B6 9 B 99"    99"    99"   9 9  " 9 9  " 9 9  " 6  6	 9		)
  6 9)  B A	6
 9

)  6
 9

)  B
 A
6
 9

)
  6 9)  B A
99D  6 ) ) )  ) D _À
alphaminmaxbrightnesssaturationrainbow_stateRainbowabgrcolor_tsecondary_colorprimary_color
speedpulse_statesin	math
Pulsestandart_color
Standartcurrent_mode
clock os€€€ÿ° 
 9-    B9   X€K  -   B) 9   X
€99  X€999  X€999 X€9  	 X€9
9 9
   X
€9
   X€6 99 9	 B= X
€9
   X €6 99 9	 B= K  _ÀaÀ
valuecolor_pickerbgrcolor_tcolor_valuehas_color_picker
checkbox	typerainbow_stateRainbowsecondary_data
alphaprimary_dataPrimaryactive_colorpulse_state
Pulse
Standartcurrent_mode¯     6   -  B X€9 X€9  X€9  X€4  =)  =9)    X€+ X€+ =ERéK  GÀ
has_bindbind_count
binds
slider
checkbox	type
ipairså  
 >6   -  B X€9 X€9  X€9  X€4  =)  =9)    X€+ X€+ =ERé6   6 9	B H€6  9 
BX€9
	
 X
€9
	 
 X
€9
	 
 X
€4
  =
	)
  =
	9
	)
   

 X
€+
 X
€+
 =
	ERéFRãK  GÀcustomSettings
elementselementSettings
pairs
has_bindbind_count
binds
slider
checkbox	type
ipairsÜ  %9  -  9 X€5 9   X€9   X€+  =9   X€9   X€+  = 6 9	9
 )  B9   =  + =
 + L + L eÀ
has_bind
binds
insert
tableoriginal_valueslider_value
value
slider	type  show_in_listoriginal_value slider_value 	typewaiting_for_keydropdown_openkey	nonemax_bindsbind_countÃ !9    X€9  8  X€9  89  X€1   6 99   B9  = 9 )    X€+ X€+ = + L + L f€
has_bindbind_count
remove
tabledropdown_open
bindsÊ  76   9  B -  99! -  9= ) -  99-  9-  99-  99-   9  9  ! "" =*   X€-  99*   X€-  99	 X
€-  9)  =-  + =-  +  = K  $ÀactiveBindSettingactiveBindWindow
target
progresslast_timebindWindowAnimation
clock os÷Ñðúáõ‘ü ‘    6      X€6   9  6  98  6  6 B=6  ) =6 ' =K  config_nameget_config_files_list
value
valuesconfig_select¥   4   7   6  6 B X€6  5 =-   '	 +
 5
 5  '
 B = 	<6
 9
-  9  9 
 6  89	BERéK  UÀ(ÀGeneral	Misc
insert
table	modeHit-Sounds    Body HurtHead HurtLethal HurtDamage Received	Mode	name 	mode 	name sounds_files
ipairshitsound_modes›     6   9     X
€6  6 98    X€  X€6   BK  play_custom_hitsound	none	Nonehitsound_settingssounds_files
valuecustom_hitsoundù  
 e6   B 7  4   -  99 ) )ÿÿM€-  9989  X€9   X€6 9	  	 BOð6
   BX €6 9
-  99	 BER÷4  -  99 ) )ÿÿM€-  9989    X €9    X €6  9 	 	 
 B Oð6
  BX €6  9 
 -	  9		9		
 B ER÷4  7
 6 B6 B6 9	-  996 B6 9	-  996 B6 6 =K   
valueshitsound_settingsrefresh_hitsoundplay_hitsoundhitsounds_buttonshitsounds_dropdownhitsound_modes
button
remove
ipairs
insert
table
combobox	typeHit-SoundsrectangleGeneral	Miscsounds_filesfind_sound_files–   -   '  + 3 ' B 7  -   ' + 3 ' B 7  6  6 2  €J  NÀ(Àrefresh_hitsound Refreshplay_hitsoundHit-Sounds Play Hit-Soundn   	6   B ' &  -  9  ' D Àwavfind_files#\nix\scripts\Shadow V2\Sounds\get_game_directoryq   	6   B ' &  -  9  ' D Àtxtfind_files&\nix\scripts\Shadow V2\Trashtalk\get_game_directoryg     6   B 7  6  6 = K  
valuescustom_trashtalk_selecttrashtalk_filesfind_trashtalk_filesS   	-     9   B -     9  B K  jÀrefresh_settings_listcreate_settingsn   6      X
€6   9  6  98     X€-     9  B K  jÀload_settings
value
valuesconfig_select+   -     9   B K  jÀsave_settingsS   	-     9   B -     9  B K  jÀrefresh_settings_listdelete_settingsS   	-     9   B -     9  B K  jÀrefresh_settings_listrename_settings3   -     9   B K  jÀrefresh_settings_list+   -   9   - B K  À^Àopen_folder®  	Sº6   9  	   X €6  7  X O€6   9  	  X €6  7  X H€6   9  	  X €6  7  X A€6   9  	  X €6  7  X :€6   9  	  X €6   7  X 3€6   9  	  X €6  7  X ,€6   9  	  X €6 	 7  X %€6   9  	   X €6 
 7  X €6   9  	  X €6 
 7  X €6   9  	 	 X €6  7  X €6   9  	 
 X €6 
 7  X 	€6   9  	 
 X €6  7  X €6  7  6  9  6 9   X€-  9  X€6 + =X	€  X €-  9  X€6 + =-  = -  =6 9  X€6 9  X€6 + =X€6 + =6 9  X€6 9  X€6 + =X€6 + =6 9  X€6 9  X€6 + =X€6 + =6 9  X€6 9  X€6 + =X€6 + =6 9  X€6 + =6 + =6  + =6! 6" BX
€6  9    X €9 #+ = X €9 #+ = ERóX€6 + =6 + =6  + =6! 6" BX€9 #+ = ERû6$ 9  X€6% + =X€6% + =6& 9  X €6' + =6( + =X€6' + =6( + =6) 9  X€6* + =X€6* + =6+ 9  X€6, + =X€6, + =6- 9  X€6. + =X€6. + =6/ 9  X€60 + =X€60 + =61 9  X €62 + =63 + =X€62 + =63 + =64 9  X4€65 + =66 9:  X€67 + =X€67 + =66 9:  X€68 + =X€68 + =66 9:  X€69 + =X€69 + =66 9:  X€6: + =X€6: + =X€65 + =67 + =68 + =69 + =6: + =6; 9  X6€6< + =6= + =6> + =6? + =6@ + =6A + =6A 9  X€6B + =6C + =6D + =6E + =6F + =X1€6B + =6C + =6D + =6E + =6F + =X!€6< + =6= + =6> + =6? + =6@ + =6A + =6B + =6C + =6D + =6E + =6F + =6G 9  X*€6H + =6I + =6J + =6K + =6L + =6 + =6 9  X
€6M + =6N + =6O + =X%€6M + =6N + =6O + =X€6H + =6I + =6J + =6K + =6L + =6 + =6M + =6N + =6O + =6 9  X
€6P + =6Q + =6R + =X	€6P + =6Q + =6R + =K  kÀtriggerbot_shot_delaytriggerbot_kill_delaytriggerbot_reaction_timeaimbot_autofire_kill_delayaimbot_autofire_shot_delay"aimbot_autofire_reaction_timeaimbot_smoothaimbot_fovaimbot_reaction_timeaimbot_bonesaimbot_priority
aimbot5custom_scope_override_second_scope_left_distance6custom_scope_override_second_scope_right_distance7custom_scope_override_second_scope_bottom_distance4custom_scope_override_second_scope_top_distance6custom_scope_override_second_scope_lines_distance9custom_scope_override_second_scope_separate_distance4custom_scope_override_second_scope_aspect_ratio7custom_scope_override_second_scope_animation_speed;custom_scope_override_second_scope_lines_gradient_size2custom_scope_override_second_scope_lines_size2custom_scope_override_second_scope_selections'custom_scope_override_second_scopecustom_scope_left_distance custom_scope_right_distance!custom_scope_bottom_distancecustom_scope_top_distancecustom_scope_selections custom_scope_lines_distance#custom_scope_separate_distancefunc_indicators_glowfunc_indicators_selectfunc_indicatorskeybinds_list_glowkeybinds_listlogs_glow	logsbomb_timer_glowbomb_timerwatermark_glowwatermarkrefresh_custom_trashtalkcustom_trashtalk_selectcustom_trashtalktrashtalk_languagetrashtalk	modehitsound_modes
ipairsrefresh_hitsoundplay_hitsoundhitsound_settingscustom_hitsoundaa_left_valueaa_leftaa_right_value
aa_rightaa_back_valueaa_backvisibleaa_forward_valueaa_forwardmanual_aa_override
autofireaimbot_autofiretriggerbottheme_standarttheme_yellowtheme_pinktheme_cherrytheme_limetheme_arctictheme_sunsettheme_cyberpunktheme_foresttheme_midnighttheme_bloodtheme_purplecurrent_themetheme_white
value
theme
   &6   6 9B= 6   6 9-  9B= 6   6  9  X€- 9  =  6   6 9-  9	B= 6   6  9  X€- 9
 =
 K  AÀBÀright_mouseright_clickRBUTTONright_down
clickLBUTTONis_key_pressed	downget_mouse_pos
utilsspos
mouse• ^9    X€K    ) 6 99 X€6 99    X
€6 99 X€6 99    X€+ X €+ 6  9  -	  6
   
 B
6
   
 B
6 9	B 6  9 
    X+€6 
    X (€  X &€6  9 
    X €6  +  =
 X €6  = 
 6  6  

 B= 6  9  8      X €6  9  5 4	  =	<  6  )  = 6  ) = 6  6 9B= K  À
clock osanimationLastTimeanimationTargetanimationProgresscustomSettings enabledcustomSettings 
elementssettingsWindowPosactiveSettingsWindowelementSettingshasActiveElement
clicksettings_texturecurrent_theme
vec2_ttexture
renderyxpos
mousehasSettingsGear(2Ì  E6   9  B -  9  X
€6 9  X€- 6 9 =X€- )  =6  9- 9	6  9
B") B- 6 9
- 9
- 9  B=
- 9
)   X€6  96 9 9  ! 9  9 !  B6 9  9 B6 )  )	  )
  -
 9


B)   BK  $ÀmÀcolor_tyx
vec2_trect_filled	lerp
utilsscurrent_alphaframe_timeanim_speedmin	mathdark_background_alphatarget_alpha
valuedark_background
isOpenscreen_size
renderÈÓ!  7
¸-   9      X €-   9     X €-   9     X €K  6  9  B -  95 -   X€4  . 6 9 ) B  XU€- :  X€-  9 )   X	€-  -  9 9	)  )þÿB=- + >- 5
 = 
>X@€- :  X<€- :9 
 X€9
! 9 X2€' == 
-  9 )   X)€-  -  9  9	) )	þÿB=X€9  X€9
! 9 X€= 
-  9 )   X€-  -  9  9	) )	þÿB=X€- + >- +  >)0 )Z ) MÉ€6  9   	 B    XE€-  8     X A€6  9  	 B 6 9 )
 B)	0 	 X	€)	9 	 X	€  X	€5	 -
  -
  9

8	&

=

X	 €-	  -
  9


  &


=
	X	€)	A 	 X	€)	Z 	 X	€  X		€-	  -
  9


  9
 B
&


=
	X	€-	  -
  9


  9
 B
&


=
	-	 +
 <
	-	 5
 = 

= 
<
	X q€-  8     Xm€-  8  9  
 X4€9
 ! 9	 	 Xc€' = = 
 6 9 )
 B+	  )
0 
 X
€)
9 
 X
€  X
€5
 8	
X
€)
A 
 X
€)
Z 
 X
€  X
€9
 
 9

B
	
 X
€9
 
 9

B
	
 X
€9	 -
  -
  9

	 &

=

X4€9   X1€9
 ! 9	 	 X,€= 
 6 9 )
 B+	  )
0 
 X
€)
9 
 X
€  X
€5
 8	
X
€)
A 
 X
€)
Z 
 X
€  X
€9
 
 9

B
	
 X
€9
 
 9

B
	
 X
€9	 -
  -
  9

	 &

=

6  9   	 B    X €-  + < -  +  < O76  BH`6 9 
 B  X	o€- 8  Xk€6 9 )
 B	  	  X
€  X
€'	 X
€'	 X
O€	 X
€  X
€'	 X
€'	 X
G€	 X
€  X
€'	 X
€'	 X
?€	 X
€  X
€'	  X
€'	! X
7€	 X
€  X
€'	" X
€'	# X
/€	 X
€  X
€'	$ X
€'	% X
'€	 X
€  X
€'	& X
€'	' X
€	  X
€  X
€'	( X
€'	) X
€	 X
€  X
€'	* X
€'	+ X
€		 X
€  X
€'	, X
€'	- X
 €	
 X
€  X
€'	. X
€'	/ -
  -
  9

	 &

=

-
 +
 <

-
 5
0 = 

=	
<

Xß€- 8  X	Û€- 89	 	
 X	k€9	
!		 9

	 X	Ñ€'	 =	= 
6	 9	 	)
 B	9
	  X
€ 	 X
€'
 X
€'
 X
O€	 X
€ 	 X
€'
 X
€'
 X
G€	 X
€ 	 X
€'
 X
€'
 X
?€	 X
€ 	 X
€'
  X
€'
! X
7€	 X
€ 	 X
€'
" X
€'
# X
/€	 X
€ 	 X
€'
$ X
€'
% X
'€	 X
€ 	 X
€'
& X
€'
' X
€	  X
€ 	 X
€'
( X
€'
) X
€	 X
€ 	 X
€'
* X
€'
+ X
€		 X
€ 	 X
€'
, X
€'
- X
 €	
 X
€ 	 X
€'
. X
€'
/ -
  -  9
 &
=
X	k€9	 	 X	h€9	
!		 9

	 X	c€= 
6	 9	 	)
 B	9
	  X
€ 	 X
€'
 X
€'
 X
O€	 X
€ 	 X
€'
 X
€'
 X
G€	 X
€ 	 X
€'
 X
€'
 X
?€	 X
€ 	 X
€'
  X
€'
! X
7€	 X
€ 	 X
€'
" X
€'
# X
/€	 X
€ 	 X
€'
$ X
€'
% X
'€	 X
€ 	 X
€'
& X
€'
' X
€	  X
€ 	 X
€'
( X
€'
) X
€	 X
€ 	 X
€'
* X
€'
+ X
€		 X
€ 	 X
€'
, X
€'
- X
 €	
 X
€ 	 X
€'
. X
€'
/ -
  -  9
 &
=
6 9 
 B  X€- +	 <	- +	  <	FRž~6 9 )  B  X:€- :   X€-  -  9'1 &=- + > - 52 = 
> X.€- :   X*€- : 9 
 X€9
! 9 X €' == 
-  -  9'1 &=X€9  X€9
! 9 X€= 
-  -  9'1 &=X€- + > - +  > 6 9 )
 B  X€- :
  X€-  9=3+ =4'6 =5-  +  =-  + =- + >
X	€6 9 )
 B  X€- + >
6 9 ) B  X€- :  X€+ =4'6 =5-  +  =-  + =- + >X	€6 9 ) B  X€- + >K  $Àn€9À
normaldisplay_modeis_editing
value 
stage
firstlast_time repeat_delayš³æÌ	™³¦ýfirst_delayš³æÌ	™³æþ  
stage
first	char last_time repeat_delayš³æÌ	™³¦ýfirst_delayš³æÌ	™³æþ,<=+-_\|]}[{`~'";:/?.>
pairs 
 €€²‚( €€ª‚% €€¢‚! €€¬‚^ €€ ‚) €€¤‚@ €€¨‚$ €€°‚* €€¦‚# €€®‚& 
 €€²‚( €€ª‚% €€¢‚! €€¬‚^ €€ ‚) €€¤‚@ €€¨‚$ €€°‚* €€¦‚# €€®‚& 
stage
first	char last_time repeat_delayš³æÌ	™³¦ýfirst_delayš³æÌ	™³æþ
lower
upper 
 €€²‚( €€ª‚% €€¢‚! €€¬‚^ €€ ‚) €€¤‚@ €€¨‚$ €€°‚* €€¦‚# €€®‚&	char
stringrepeat_delay
repeatfirst_delay
first
stagelast_time 
stage
firstlast_time repeat_delayš³æÌ	™³¦ýfirst_delayš³æÌ	™³æþsubinputBufferis_key_pressed
utilss  €€ï‚/ €Àžƒ- €€¯ƒ' €€žƒ, €€®ƒ\ €ÀŸƒ/ €€ë‚+ €€Ÿƒ. €À®ƒ] €€ê‚* €€î‚. €À­ƒ[ €€ ƒ` €Àƒ= €€í‚- €€ƒ;
clock os
isTypingactiveInputBox
isOpenüþô¼€¶º¸úöø—   6  99!  X€6  99   X€6  99! X	€6  99  X€6  9X€+ X€+ L 
clickyxpos
mouse…   6  99!  X€6  99   X€6  99! X€6  99  X€+ X€+ L yxpos
mouseÎK sH%ó'   6 9  -  B6 99- 9 X€6 99- 9  X€6 99- 9 X
€6 99- 9- 9   X€+ X€+ 6   X€5	 6
 9
B=7 6 9
*  X-€6 6 ) )  ) 6	 9	
	B=6 6 * *  * 6	 9	
	B=6 6 * *  * 6	 9	
	B=6 6 * *  * 6	 9	
	B=6 6 * *  * 6	 9	
	B=6   X€5 6
 9
B=7 - 9- 9- 9) )  -	 9				 
 
 


-
 9


 
   	-
 9



  
 - 9   - 9
   - 96 96 - 96 9 - 9B6 - 9- 9 - 9- 9  B- 6 9- 9B) B6 9
*  X€6 9- 6 
B6 B6 9B6 9  X€- - 96 9 - 9- 96 9!- 9 6 9)
 ) B3 3  6 9) - 9      
          6 99-  9    6! 9!!!  !   X€6 99-  9    6! 9!!!  !     X
€6 99 X€6 99    X€ !	"# BX €+ X €+ 6  9  9  -! 9!!!!6" 9"!" !"!!  X €6  9  9  -! 9!!!!6" 9"!" !"!!! ! X 
€6  9  9    X €6  9  9   ! ! X €  "
#
$ B X!€+  X!€+  6! 9!!9!!-" 9""""6# 9#!# "#""! X!€6! 9!!9!!-" 9""""6# 9#!# "#"""!" X!
€6! 9!!9!!! X!€6! 9!!9!! "!" X!€! #
$% B!X"€+! X"€+! 6" 9""9""-# 9####6$ 9$!$ #$##" X"€6" 9""9""-# 9####6$ 9$!$ #$###"# X"
€6" 9""9""" X"€6" 9""9"" #"# X"€" $%& B"X#€+" X#€+" 6# 9##9##-$ 9$$$$6% 9%!% $%$$# X#€6# 9##9##-$ 9$$$$6% 9%!% $%$$$#$ X#
€6# 9##9### X#€6# 9##9## $#$ X#€# %&' B#X$€+# X$€+# 6$ 9$$9$$-% 9%%%%6& 9&!& %&%%$ X$€6$ 9$$9$$-% 9%%%%6& 9&!& %&%%%$% X$
€6$ 9$$9$$$ X$€6$ 9$$9$$ %$% X$€$ &'( B$X%€+$ X%€+$ +%  -& '(" B& & X'€6& *( *) ** )+ B&%& X&&€6& 9&&)'2 '& X&€-& 9&#& &" X&€6& 9&$&%& X'€  X&€6& 9&%&%& X'€6& 9%%&X&€-& 9&#& &" X&€6& 9&$&%& X'€  X&€6& 9&&&%& X'€6& 9%%&+&  -' ')' B' ' X(€6' *) ** *+ ), B'&' X'&€6' 9'')(2 (' X'€-' 9'#' '' X'€6' 9'$'&' X(€   X'€6' 9'%'&' X(€6' 9&%'X'€-' 9'#' '' X'€6' 9'$'&' X(€   X'€6' 9'&'&' X(€6' 9&%'+'  -( '*( B( ( X)€6( ** *+ *, )- B('( X(&€6( 9(())2 )( X(€-( 9(#( (( X(€6( 9($('( X)€ ! X(€6( 9(%('( X)€6( 9'%(X(€-( 9(#( (( X(€6( 9($('( X)€ ! X(€6( 9(&('( X)€6( 9'%(+(  -) '+) B) ) X*€6) *+ *, *- ). B)() X)&€6) 9)))*2 *) X)€-) 9)#) )) X)€6) 9)$)() X*€ " X)€6) 9)%)() X*€6) 9(%)X)€-) 9)#) )) X)€6) 9)$)() X*€ " X)€6) 9)&)() X*€6) 9(%)+)  -* ',* B* * X+€6* *, *- *. )/ B*)* X*&€6* 9**)+2 +* X*€-* 9*#* ** X*€6* 9*$*)* X+€ # X*€6* 9*%*)* X+€6* 9)%*X*€-* 9*#* ** X*€6* 9*$*)* X+€ # X*€6* 9*&*)* X+€6* 9)%*+*  -+ '-+ B+ + X,€6+ *- *. */ )0 B+*+ X+&€6+ 9++),2 ,+ X+€-+ 9+#+ ++ X+€6+ 9+$+*+ X,€ $ X+€6+ 9+%+*+ X,€6+ 9*%+X+€-+ 9+#+ ++ X+€6+ 9+$+*+ X,€ $ X+€6+ 9+&+*+ X,€6+ 9*%+ +	++, 6- 9---/ 60 2+3, B061 3+4,B12% B- -
--.
 6/ 9//-1  62 4-5. B263 5-6.B34& B/ /
//0 61 911-3 64 6/ 70B465 7/80B56' B1 1112 63 933-5	 66 8192 B667 91:2B78( B3 3334 65 955-7
 68 :3;4 B869 ;3<4B9:) B5 5556 67 977-9
 6: <5=6 B:6; =5>6B;<* B767 97,7 7 X8±€67-  7 X7®€7 9+:,; B7 7 X8€-7 '9" B7 7 X7€-7 '8" =8#7-7 97"7 7 X8€-7 -8 98"8:88=8.7-7
 B767/ +8  =8077 9-:.; B7 7 X8€-7 '9' B7 7 X7€-7 '8' =8#7-7 97'7 7 X8€-7 -8 98'8:88=8.7-7
 B767/ +8  =8077 9/:0; B7 7 X8€-7 '9( B7 7 X7€-7 '8( =8#7-7 97(7 7 X8€-7 -8 98(8:88=8.7-7
 B767/ +8  =8077 91:2; B7 7 X8€-7 '9) B7 7 X7€-7 '8) =8#7-7 97)7 7 X8€-7 -8 98)8:88=8.7-7
 B767/ +8  =8077 93:4; B7 7 X8€-7 '9* B7 7 X7€-7 '8* =8#7-7 97*7 7 X8€-7 -8 98*8:88=8.7-7
 B767/ +8  =8077 95:6; B7 7 X8€-7 '9+ B7 7 X7€-7 '8+ =8#7-7 97+7 7 X8€-7 -8 98+8:88=8.7-7
 B767/ +8  =80767 97179  -:  6; -= 9==6> 9>2> =>=-> 9>>-? 9? ?9@!?@??
? >?>B;;;-< 6> 9>3>-? 9??B< A7-7 97768 988 787)8A 69 99999979 X9€69 999999 :879: X9€69 999999-: 9:::9 X9
€69 999999-: 9::-; 9; ; :;:9: X9€+9 X:€+9 6: 9::9::-; 9;;;: X:€6: 9::9::-; 9;;; ;:; X:€6: 9::9::-; 9;;;: X:
€6: 9::9::-; 9;;-< 9< < ;<;:; X:€+: X;€+:  9 X;€6; 9;4; ; X;€6; +< =<4;X;	€ : X; €6; 9;4; ; X<€6; +< =<4;6; 9;4; ; X<
€6; )<  =<5;6; *< =<6;6; )<  =<7;6; )<< =<8;X;€6; )<s =<5;6; )<Â=<6;6; )< =<7;6; )<È =<8;6;
 9;
;B;6< 9<<!<<;6= =;=)= 6> 6? 9??6@ 9@5@6A 9AA!@A@"@<@"@=@ ?@?=?>6> 6? 9?2?6@ 9@6@6A 9A2A!@A@"@<@"@=@ ?@?=?2>6> 6? 9?
?6@ 9@7@6A 9A
A!@A@"@<@"@=@ ?@?=?
>6> 6? 9?!?6@ 9@8@6A 9A!A!@A@"@<@"@=@ ?@?=?!>6>9 9>:>6@ 9@!@6A 9A8A!@A@B>*? >? X>€6> 6? 9?8?=?!>-> 9>>>>)? 6@; -B B@XC²€+E  E XF¯€)Fª -G 9GGGG6H 9H!H GHG6H 9HH9HHGH XH€6H 9HH9HH IFGHI XH
€6H 9HH9HH>H XH€6H 9HH9HH I?>HI XH€+H XI€+H 6I 9II9II-J 9JJJI XI€6I 9II9II-J 9JJJJIJ XI
€6I 9II9II>I XI€6I 9II9II J?>IJ XI€+I XJ€+I 
JH XJ€JI -K 9K#KKD XK€+K XL€+K +L  D" XM€L XM€ D' XM€L  XM€ D( XM€L! XM
€ D) XM€L" XM € D* XM€L# XM€ D+ XM€L$ +M  -N PD BN N XO€6N 9M<NXN€ K XN€6N 9N3NMN XO€ L XN€6N 9N&NMN XO€6N 9M%N6N 9NNPD -Q BN6O 9O1OQD -R 6S UG V
? VV>9WNW
W!VWVBS-T VM -W 9WWBT AO6O 9O,O O XP€ J XO€6O-  O XO€-O QD BO O XO€-O =D#O-O 8ODO O XP€-O -P 8PDP:PP=P.O-O
 BO-O BO6O/ +P  =P0O O?>>OECRCL6@
 9@
@B@6A 9AA!AA@6B =@B)B 6C 6D 9DD6E 9E5E6F 9FF!EFE"EAE"EBE DED=DC6C 6D 9D2D6E 9E6E6F 9F2F!EFE"EAE"EBE DED=D2C6C 6D 9D
D6E 9E7E6F 9F
F!EFE"EAE"EBE DED=D
C6C9 9C:C6E 9EE6F 9F5F!EFEBC*D CD XC€6C 6D 9D5D=DC6C9 9C:C6E 9E2E6F 9F6F!EFEBC*D CD XC€6C 6D 9D6D=D2C6C9 9C:C6E 9E
E6F 9F7F!EFEBC*D CD XC€6C 6D 9D7D=D
C-C 9CC-D 9D D CDCCC)D2 )Eª -F 9FFFF6G 9G!G FGF6G 9GG)H2  HG XG€+G XH€+G HG 
IH XI€6I 9II9IIFI XI€6I 9II9II JEFIJ XI
€6I 9II9IICI XI€6I 9II9II JDCIJ XI€+I XJ€+I -J 9JJJJ)K )L 6M 9MM)N OJ-P 9PPPP QMPQQRO 6S 9S,S S XT€6S 9SS9SSTQTS XS€6S 9SS9SSTQST XS€6S 9SS9SSRS XS	€6S 9SS9SSTRST XS€6S- SS XT€+S XT€+S 6T 9TT-V 6W YQZR BW6X ZQ[ RBX6Y 9Y%YBT6T= BT6U 9UUWT -X BU6V 9V,V V XW*€6V 9VV9VVW
E WWFW!W9XUX
X!WXWWV XV€6V 9VV9VVW
E WWFW!W9XUX
X WXWVW XV€6V 9VV9VVW"CWV XV
€6V 9VV9VVW"C9XU WXWVW XV€6V- VV XW€+V XW€+V 6W 9W1WYT -Z 6[ ]
E ]]F]!]9^U^
^!]^]^"CB[-\ 6^ 9^3^-_ 9__B\ AW'W> 6X 9X,X X XY%€6X 9XX9XXY
E YYFYYYYYX XX€6X 9XX9XXY
E YYFYYYYXY XX€6X 9XX9XXYCYX XX
€6X 9XX9XXYCYYXY XX€6X- XX XY€+X XY€+X 6Y 9Y1Y[W -\ 6] _
E __F_#___`CB]-^ 6` 9`?`-a 9aaB^ AY6Y 9YY6[ -] 9]]]]-^ 9^^B[6\ -^ 9^^-_ 9__ ^_^-_ 9__-` 9` ` _`_B\-] 6_ 9_@_-` 9``B])^ BY-Y 9Y#Y Y XZ¸€-Y -Z 9Z#Z8YZY Y XZ²€-Y 9YYYY)Z )[ )\  6]; -_ -` 9`#`8_`_B]X`	€6b 9bbda -e Bb9cb cc\cc \[cE`R`õ!\[\-] 9]]]$]^] 6_; -a -b 9b#b8abaB_XbŒ€6d 9ddfc -g Bd9edee6f 9ff9ff^f Xf€6f 9ff9ff ge^fg Xf
€6f 9ff9ffYf Xf€6f 9ff9ff gZYfg Xf€+f Xg€+f -g 9g.ggc Xg€+g Xh€+g  g Xh€6h 9hAh h Xi€ f Xh€6h 9hBh h Xi€6h 9hCh+i  -j -l 9l#lmc Bj j Xk€6j 9i<jXj€ g Xj€6j 9j3jij Xk€ f Xj€6j 9j3jij Xk€6j 9i3j6j 9jj6l n^ oY Bl6m  oe^ pZYBm-n ph -q 9qqBn)o Bj6j 9j1jlc -m 6n p^q
Z qqY9rdr
r!qrqBn-o qi -r 9rrBo Aj6j 9j,j j Xk€ f Xj€6j-  j Xj€-j -l 9l#lmc Bj j Xj	€-j =c.j-j
 Bj-j Bj6j/ +k  =k0j je^ ^[jEbRbr-Y 9Y#Y Y XZ^€-Y 9Y.Y Y XZZ€-Y -Z 9Z#Z8YZY Y XZ €-Y -Z 9Z#Z8YZY-Z 9Z.Z8YZY Y XZK€6Z; \Y BZX]E€-_ 9__9`^ _`_-` 9``9a^ `a`6a 9aa6c e_ f` Bc6d 9f^ ff_9g ^ gg`Bd-e 6g 9gDg-h 9hhBe)f Ba6a 9aEa6c e_ f` Bc6d 9f^ ff_9g ^ gg`Bd-e 6g 9gFg-h 9hhBe)f )g Ba6a 9aa9cG^-d Ba6b 9b1b9dG^-e 6f h_i`Bf-g 6i 9i3i-j 9jjBg AbE]R]¹K  À$ÀC€ÀDÀ,ÀÀÀÀÀÀÀ'ÀIÀ&À
ÀJÀÀÀÀ-À)À	namecontainer_border	rectcontainer_bgsubtab_inactivesubtab_hoversubtab_activebackgroundtext_secondaryExpires: Neverget_user_nametext_disabled
ipairsabs	mathtarget_tabOffsettarget_textureAlphatarget_textX
target_x
isOpentext_primary
textX	textactiveSettingsWindowelementSettingscurrentSubtabhasActiveElement
click
Settings	MiscVisuals
Legit
Anti-Aimtab_hovertab_inactivetab_activecurrentTab	RagetabOffset  color_value
valuemenu_glowtexture
alphaleft_panelcurrent_theme
widthleftpanelx
vec2_trect_filled last_time target_tabOffsetstabOffsetstabAnimationstheme_whitecolor_t
luaIcotheme_standarttextureAlphalast_time
clock os 	last_time target_tabOffsetstabOffsetstarget_textureAlphatextureAlphatarget_textXÂ
textXÂleftpanelxs
target_xsleftPanel
heightyxpos
mousecalc_text_size
renderShadow.luaèÍ™³ææÌÙþ³äÈ‘™²¤þ
Žð€€‚D€€•‚2FB€€°€PhÔçÌ™³³æÌþ<(œ€ðÇƒ€€€ÿÞµæÌ™™³¦ýxÒ€€Ÿ‚pœ÷  
 :6   -  B X€9  X€9  X€9  X€9  X€9  X€+ L ERí6   9     X€6   9 	 6  98     X€6   9 	 6  98  9 
    X€6    BX€9  X€9  X €+ L ERö+  L  GÀcustomSettings
elementsactiveSettingsWindowelementSettingsis_opencolor_pickeris_color_openhas_color_picker
checkbox	type
ipairsÙ]  IZ¹+  6  -  BX±Š9  X€9  X €9  X €9  X¥Š9  X ¢Š+  -  B9  99		9

6

 )
´ )´ B
) )
 5 8   X€)9

  9  X€9  X€99  X€5 9
- 9
!=
9- 9!==6
 - 9
99
 - 999 B 9  X€=X€=5 9
=
9==6 99
9
 X€6 99
9
9  X€6 999 X€6 9999  X€+ X€+ 6 9  X€  X€+ =5 6 99
9
!=
6 999!==9  X%€6 9  X!€6
 6 99
99
!6 9999!B9  X€=X€=5 9
- 9
!=
9- 9!== 6 9  X€+ =9  X€)  =6 99) 6  9!BB=) )
 ) 6  9"6
 9
9B6
 9
 9 B6# 9$ B6  9%6
 9
9B6
 9
 9 B6# 9& ) B9 ) !	9
 ) -  
"!-  #	6  -  BX!/#
! $"#$# ###
# " X$€+$ X%€+$ 6% 9%%9%
%#% X%€6% 9%%9%
% &#%& X%
€6% 9%%9%%% X%€6% 9%%9%% &%& X%€+% X&€+%  $ X&€6&# 9&'& & X'€ % X&€6&# 9&(& & X'€6&# 9&)&6'  9'"'6)
 +# , B)6*
  ,# -B*-+ -& 9.B+), B'6'  9'%'6)
 +# , B)6*
  ,# -B*-+ 6-# 9-*-9.B+), )- B'6'  9'+')" -* B' $ X(€6(# 9(,( ( X)€ % X(€6(# 9(,( ( X)€6(# 9(-(6)  9).)+" -, 6-
 / //#90
'00!/0/0 0091'11!010B--. 0( 91B. A)6) 9)) ) X*°€ % X)®€)   )/ X*€9* * X*€9*0 * X+€9*16+2 9-3*9.4*9/5*906*B+=+
-+ 9-3*9.4*9/5*B+=+7=,8=-9.,=.:.
-..=.;X*S€ )< X*C€9*9*=*9+=9+>+=+>*9*9*=*9+=9+?+=+?*9*9*=*9+=9+1+=+1*9*9*=*9+=9++=+*9*9*=*9+=9+@+=+@*9*9*=*9+=9+A+=+A*9*9*B*9+B9+>+=+>*9*9*B*9+B9+?+=+?*9*9*B*9+B9+1+=+1*9*9*B*9+B9++=+*9*9*B*9+B9+@+=+@*9*9*B*9+B9+A+=+A*9*9+C=+C*9*9+D=+D*X*€ )E X*€9*	9+C	=+C*9*	9+F	=+F*9*	9+?	=+?*9*	9+	=+* " ="  "/ X*€9*
9+ + X+€6+2 9-3*9.4*9/5*906*B+=+0X+,€6+2 9-3*9.4*9/5*906*B+=+1X*$€ "< X*€-*  , B*9*D *G X*€9*= * X+€9*B9+ + X+€-+ 9->*9.?*9/1*90*B+=+0X+
€-+ 9->*9.?*9/1*90*B+=+1X*€ "E X*€-*	 , B*E!R!Ï~ E X³  !
)  9!
 !!!!6" 9""9"
"!" X"€6" 9""9"
" #!##"# X"
€6" 9""9""" X"€6" 9""9"" # "# X"€+" X#€+"  " X#€6## 9#(# # X$€6## 9#)#6$  9$"$6&
 (! ) B&6'
  )!)) * B'-( *# 9+B()) B$6$  9$%$6&
 (! ) B&6'
  )!)) * B'-( 6*# 9***9+B()) )* B$'$H 6%  9%+%'$ -( B%6&  9&.&($ -) 6*
 , ,,!9-
%--!,-,,,-  --9.%..!-.-B*-+ 6-# 9-,-9.B+ A& &!&&6' 9''9'
'&' X'€6' 9''9'
' (&(('( X'
€6' 9''9''' X'€6' 9''9'' ( '( X'€+' X(€+'  ' X(€6(# 9((( ( X)€6(# 9()(6)  9)")6+
 -& . B+6,
  .&.. / B,-- /( 90B-). B)6)  9)%)6+
 -& . B+6,
  .&.. / B,-- 6/# 9/*/90B-). )/ B)')I 6*  9*+*,) -- B*6+  9+.+-) -. 6/
 1 11&92
*22!121112  2293*33!232B/-0 62# 92,293B0 A+6+ 9++ + X,Ý€ " X+:€  / X+€9+ + X+€6+2 9-09-3-9.09.4.9/09/5/9009060B+ + X,
€6+2 9-19-3-9.19.4.9/19/5/9019060B+.
+ X+¾€  < X+¼€9+D +G X+€6+2 9-J9-3-9.J9.4.9/J9/5/90J9060B+.
+ X+­€6+2 9-K9-3-9.K9.4.9/K9/5/90K9060B+.
+ X+¡€ ' X+Ÿ€  / X+6€9+ + X+€6+2 --
 9-3--.
 9.4.-/
 9/5/-0
 9060B+=+0X+
€6+2 --
 9-3--.
 9.4.-/
 9/5/-0
 9060B+=+1-+ --
 9-3--.
 9.4.-/
 9/5/B+6.2 -0
 9030-1
 9141-2
 9252-3
 9363B.=.
=+7=,8=-9.,=.:.
-..=.;X+g€  < X+e€-+ --
 9-3--.
 9.4.-/
 9/5/B+9.D .G X.,€9.==+>.9.==,?.9.==-1.9.=-/
 9/6/=/.9.=/,=/@.9.=/
-//=/A.-.  0 B.9.9.=.=+>.9.9.=.=,?.9.9.=.=-1.9.9.=.-/
 9/6/=/.9.9.=./,=/@.9.9.=./
-//=/A.X.+€9.B=+>.9.B=,?.9.B=-1.9.B-/
 9/6/=/.9.B/,=/@.9.B/
-//=/A.-.  0 B.9.9.B.=+>.9.9.B.=,?.9.9.B.=-1.9.9.B.-/
 9/6/=/.9.9.B./,=/@.9.9.B./
-//=/A.-.	 0 B. E X„ 6
 9!
9"

 !"! !!" B9 
      6!  9!"!6#
 9%
& B#6$
 9&
9'

 &'&9'
 ''B$-% 6'# 9'L'9(B%)& B!6!  9!%!6#
 9%
& B#6$
 9&
9'

 &'&9'
 ''B$-% 6'# 9'*'9(B%)& )' B!)!  )"  )#  )$   / X%€9%7!% X&€)!  9%8"% X&€)" 9%9#% X&€)# 9$6
X%€  < X%€9%D %G X%€9%= % X&€9%B9&>%!& X'€)!  9&?%"& X'€)" 9&1%#& X'€)# 9&%$& X'€)$ )%  9&

)' M%"€))  9*
)+ M)€9-

#--(9.
#..,.
.-/ 1! 2- 3. 94B/60  90"062
 94
 4(4 5,B263
 95
 5(55 5 6,6 6B34/ )5 B0O)ãO%Þ6%  9%"%' 6(
 9*
 **9+9,
 +,+B(-) 6+# 9+L+9,B))* B%6%  9%%%' 6(
 9*
 **9+9,
 +,+B(-) 6+# 9+*+9,B))* )+ B%)%  9&
)' M%€9)
#))(-* ,) )- ). 9/B*6+  9+"+6-
 9/
90 0(0B-6.
 90
 0091 1(111B./* )0 B+O%æ6%  9%"%6'
 9)
*  B'6(
 9*
9+

 *+* +
 B(-) 6+# 9+L+9,B))* B%6%  9%%%6'
 9)
*  B'6(
 9*
9+

 *+* +
 B(-) 6+# 9+*+9,B))* )+ B%+%    / X&€%
 X&	€  < X& €9&D &G X&€9&J%& X'€9%K)&  9'

)( M&€9*

#**)6+2 9-3%9.4%9/5%0* B+6,  9,",6.
 90
 0)01  B.6/
 91
 1)111 2
 B/0+ )1  B,O&ç6& 9&& & X'89& & X&56& 9&&9&
&9'
'& X&€€6& 9&&9&
&9'
9(

 '('&' X&x€6& 9&&9&&& X&s€6& 9&&9&&9'
 ''&' X&l€6& 9&&9&
&9'
!&'&6' 9''9''!''-(
 9*

#**&)+  ), B(-)
 9+
#++'+
+),  )- B)  / X*$€=(8=)9=&:=';-* ,! -( .) /$ B*9+ + X+€6+2 9-3*9.4*9/5*0$ B+=+0X+ €6+2 9-3*9.4*9/5*0$ B+=+16+2 9-3*9.4*9/5*0$ B+=+
X*ß€  < X*Ý€9*D *G X*€9*= * X+€9*B=(?*=)1*=&@*='A*9+D +G X+
€9+9+=+=(?+9+9+=+=)1+9+9+=+=&@+9+9+=+='A+X+€9+9+B+=(?+9+9+B+=)1+9+9+B+=&@+9+9+B+='A+-+  - B+-+	 - B+X&¯€6& 9&&9&
&9'
'& X&^€6& 9&&9&
&9'
 ''&' X&W€6& 9&&9&&9''& X&Q€6& 9&&9&&9'9(
 '('&' X&I€6& 9&&9&&9'!&'&-'
 9)
#))&)*  )+ B'  / X(!€='7-( *' +" ,# -$ B(9) ) X)€6)2 9+3(9,4(9-5(.$ B)=)0X) €6)2 9+3(9,4(9-5(.$ B)=)16)2 9+3(9,4(9-5(.$ B)=)
X(f€  < X(d€9(D (G X(€9(= ( X)€9(B='>(9)D )G X)€9)9)=)='>)X)€9)9)B)='>)-)  + B)-)	 + B)X&K€6& 9&&9&
&9'
'& X&E€6& 9&&9&
&9'
9(

 '('&' X&=€6& 9&&9&& & X&8€6& 9&&9&& '
 &' X&2€-&
 6( 9((9(
(9)
!()(9)

#()())  )* B&  / X'
€9'
=&6'9' ' X'€9'0=&6'X'€9'1=&6'X'€  < X'€9'D 'G X'€9'= ' X(€9'B=&'9(D (G X(€9(9(=(=&(X(€9(9(B(=&(-(  * B(-(	 * B(,&'   / X(	€9(:&( X)€)&  9(;'( X)€)'  X(€  < X(€9(D (G X(
€9(=9(@(&( X)€)&´ 9(=9(A('( X)€)'  X(
€9(B9(@(&( X)€)&´ 9(B9(A('( X)€)'   & X(*€ ' X((€6(
 9*
-+
 -& ).  9/

B+ *+*-+
 -' ).  9/
B+ ++B(6)  9)M)+( ), )-  6.2 )0 )1 )2 93B. A)6)  9)N)+( ), )-  6.2 )0  )1  )2  93B.*/ B)6(
 9*
+ *+*9+9,
",,! +,+B(6)  9)O)4+ 6,
 9.
(.	.9/(B,>,+6,
 9.
(.	.9/(B,>,+6,
 9.
(9/(//B, ?, 6,2 ). )/ )0 91B, A)+)    / X*€9)6
X*
€  < X*	€9*D *G X*€9*=9**)* X+€9*B9)*9*
9+

"++) *+*+)+
+6,2 .+ /+ 0+ 91B,6-  9-"-6/
 1*2 B/60
 2* 3
 33B01, )2 B-6-  9-%-6/
 1*2 B/60
 2* 3
 33B0612 )3  )4  )5  96B1)2 )3 B-  < X-¬ƒ -
  --9.

!....)/  90
91D1G X1€+1 X2€+1 62 92292
202 X2€62 92292
2 3.023 X2
€62 922922-2 X2€62 922922 3/-23 X2€+2 X3€+2  1 X3€63# 93'3 3 X4€ 2 X3€63# 93(3 3 X4€63# 93)364  94"466
 80 9- B667
  9.0 :/-B7-8 :3 9;B8)9 B464  94%466
 80 9- B667
  9.0 :/-B7-8 6:# 9:*:9;B8)9 ): B464  94.4'6G -7 68
 :. ::06;  9;+;'=G -> B;9;
;;;!:;:;/ ;;-6<  9<+<'>G -? B<9<<<<!;<;B8-9 6;# 9;,;9<B9 A4 4.0 4495D5P X5€+5 X6€+5 66 96696
646 X6€66 96696
6 7.467 X6
€66 966966-6 X6€66 966966 7/-67 X6€+6 X7€+6  5 X7€67# 97'7 7 X8€ 6 X7€67# 97(7 7 X8€67# 97)768  98"86:
 <4 =- B:6;
  =.4 >/-B;-< >7 9?B<)= B868  98%86:
 <4 =- B:6;
  =.4 >/-B;-< 6># 9>*>9?B<)= )> B868  98.8':P -; 6<
 >. >>46?  9?+?'AP -B B?9?
???!>?>?/ ??-6@  9@+@'BP -C B@9@@@@!?@?B<-= 6?# 9?,?9@B= A868 988 8 X9€ 2 X8€98D8G X8	€'8G =8D98'9G =9D8-8	 : B8X8
€ 6 X8
€98D8P X8€'8P =8D98'9P =9D8-8	 : B8 8/- 8869  99.9';Q -< 6=
 9?
@8 B=-> 6@# 9@,@9AB> A999
999:

::); 6<  9<"<6>
 @9 A	8B>6?
  A:9B	8 B;BB?-@ 6B# 9BRB9CB@)A B<9<C<<<<"=<:)>  >= X>€6>  9>">6@
 B9 C	8B@6A
  C=9D	8 D;DBA-B 6D# 9DSD9EBB)C B>6> 9>> > X?+€6> 9>>9>
>?9?> X>%€6> 9>>9>
> ?:9??>? X>€6> 9>>9>>8> X>€6> 9>>9>> ?;8??>? X>€->
 6@ 9@@9@
@!@9@#@:@)A  )B B>?>??=?C9?9@C=@C?-?	 A B?6>T 9>U>'@V 9ACB>6?  9?+?A> -B B?6@  9@.@B> -C 6D
  F:9F FG8 BD-E 6G# 9G,G9HBE A@X‚  6   9 . '"Q -# 6$
 9&
'B$-% 6'# 9','9(B% A 9 
  9!

!!)" #	##6$  9$"$6&
 ( )# B&6'
  )! )) *"#B'-( 6*# 9*R*9+B()) B$9$C	$$$$"%$!)&  &% X&€6&  9&"&6(
 * +# B(6)
  +% ++ ,"#B)-* 6,# 9,S,9-B*)+ B&6& 9&& & X'/€6& 9&&9&
&' '''& X&(€6& 9&&9&
& '! ''''&' X& €6& 9&&9&&'	#'& X&€6& 9&&9&& '"#'	'&' X&€-&
 6( 9((9(
() !()(#(!())  )* B&'&''='C	9'	9(C	=(C'-'	 ) B'6&T 9&U&'(V 9)C	B&6'  9'+')& -* B'6(  9(.(*& -+ 6,
  .! . ...../B,-- 6/# 9/,/90B- A((6)  9).)'+W -, 6-
 9/
0(B--. 60# 90,091B. A))  *! +	(++6,  9,",6.
 0)1+ B.6/
  1*)11 2"+B/-0 62# 92R293B0)1 B,9,F	"-,*).  .- X.€6.  9.".60
 2)3+ B061
  3-)33 4"+B1-2 64# 94S495B2)3 B.6. 9.. . X/,€6. 9..9.
./)///. X.%€6. 9..9.
. /*)////./ X.€6. 9..9../	+/. X.€6. 9..9.. /"+/	/./ X.€-.
 60 90090
01)!010#0*0)1  )2 B.=.F	9/	=.F/-/	 1 B/6.T 9.U.'0V 91F	B.6/  9/+/1. -2 B/60  90.02. -3 64
  6*)6 6667(B4-5 67# 97,798B5 A00(61  91.1'3X -4 65
 97
80B5-6 68# 98,899B6 A11  2! 3	03364  94"466
 8193 B667
  92199 :"3B7-8 6:# 9:R:9;B8)9 B494?	"542)6  65 X6€66  96"668
 :1;3 B869
  ;51;; <"3B9-: 6<# 9<S<9=B:); B666 966 6 X7,€66 96696
6717776 X6%€66 96696
6 721777767 X6€66 9669667	376 X6€66 966966 7"37	767 X6€-6
 68 98898
891!898#828)9  ): B6=6?	97	=6?7-7	 9 B766T 96U6'8V 99?	B667  97+796 -: B768  98.8:6 -; 6<
  >21> >>>?0B<-= 6?# 9?,?9@B= A88069  99.9';Y -< 6=
 9?
@8B=-> 6@# 9@,@9AB> A99 :! ;	8;;6<  9<"<6>
 @9 A; B>6?
  A:9 B";B?-@ 6B# 9BRB9CB@)A B<9<	"=<:)>  >= X>€6>  9>">6@
 B9 C; B@6A
  C=9 D";BA-B 6D# 9DSD9EBB)C B>6> 9>> > X?)€6> 9>>9>
>?9?> X>#€6> 9>>9>
> ?:9??>? X>€6> 9>>9>>?	;?> X>€6> 9>>9>> ?";?	?>? X>€->
 6@ 9@@9@
@!@9@#@:@)A  )B B>=>	9?	=>?-?	 A B?6>T 9>U>'@V 9A	B>6?  9?+?A> -B B?6@  9@.@B> -C 6D
  F:9F FG8BD-E 6G# 9G,G9HBE A@=  ==		=

X€ERMuK  GÀ_À$ÀVÀC€À]À`À\ÀbÀZ€FÀ
AlphaSaturationBrightness	%.1f
format
stringslider_fillslider_bg
SpeedSecondaryfilled_polygon
circlecircle_filleddropdown_open_bgsecondary_colorprimary_color
Paste	CopyPrimarybrightnessRainbowactive_color
speedsecondary_data
pos_y
pos_xsaturationhueprimary_data
Pulsestandart_pos_ystandart_pos_xstandart_valuestandart_saturationstandart_hueabgrcolor_t
valuecolor_value
Standart	texttext_secondarytext_primarycalc_text_sizecontainer_borderbutton_bgbutton_hoverbutton_activewindow_border	rectwindow_bgcurrent_themerect_filledframe_time
render	lerp
utilss
alpha x y 	down x y drag_offset
dragging
click
height
mouse
width x 
height
width y y x y relative_pospospicker_posx 
Standart˜Rainbow„
Pulseè
vec2_tstandart_colorrainbow_statepulse_statecurrent_modeis_opencolor_pickeris_color_openhas_color_picker
checkbox	type
ipairs($0
€€¤è€€¬F"6P€€€ÿ €€À™ÝžŠ®”Ü¾ÿdµæÌ™™³æýµæÌ™™³Î€2x<€ 
 )  6    BX
€6 9
  
 B6	 9		
 9B		 ERó L xmax	mathcalc_text_size
render
ipairs(4   6  9#  B"L 
floor	math€€€ÿ² 	 	)  X €6  6 9  B C  X€6 96 96 9 B A  A 6 9'   '  &   D K  f %.
format
string
log10abs
floor	math
tostring€€€ÿž  	 69    X/€9  9  X+€-   9 B9  9  X€9  9 X€9  9 &9  9  X€9  9 X€9  9 9'  B  X€ 9  9&X€ ' 9  9&L -   9 D À ^[%%%$#@!]+$
match
suffix
prefixincrementenabled
formatÇ¤ h¹&û#3   -  9  X€-  9  X€-  9  X€-  9  X
€-  9  X €-  9  X€-  99 5	 -  9 =-  9
=
- =
6 9
=6 9=- =6 9
=6 9=-  9  X€-  9  X€-  9  X€-  9  X€-  9  X€-  9+ = 4  -  9  XJˆ-  9  XFˆ- -  98  X €- -  98-  98  X7ˆ6   BX1ˆ-
  9

9
	 


-
  9


9
	 

6 96 
 
 B6 9	 
9	 
B- 6 9-  9B) B6 96 
 
 B6 9	 
9	 
B- 6 9-  9B) ) B6 9 9!	- B6
 9
"
9!	- 6 

B- 6 9
-  9B A
-
 -  98

-  98

 
 X€4
  
6 
 BXÛ‡9#9!	 X×‡9$
 XÔ‡9% & X‚9'
  X€5) 9(  X€) X€)  =*9(  X€) X€)  =+6, 9-B=.=') 6, 9-B9'9.!9'6, 9-B=.9'9(  X€) X€)  =+9'9'9*9'9+9'9*!"" =*9'- 9'9*)  ) B=*6 9"9!- 6 
B- 6 9
-  9B A9	 
) )  ! 9'9*"6 9/60 9 16! 9!2!9!1!9"1!!"!9"'9"*""!"!  ! 9!36" 9"2"9"3"9#3!"#"9#'9#*#""#" !"!9"46# 9#2#9#4#9$4!#$#9$'9$*$"#$# "#")# B 6 96  " # B 6!  # $B!-" $ -%  9%%B"# B6 96   "#B 6!  # ##$ $$B!-" 6$0 )&ÿ )'ÿ )(ÿ ))ÿ B$-%  9%%B"#B65 96  X€  X€65 979 X€65 979  X€65 979
 X	€65 979
  X€9( =(98  XÕ€9	 
)  6! 9!9!6# % %%& && B#$$$)%  -& 6(0 **	 *+	 *,	 )- B(-)  9))B& A!6! 9!9!6# % %%& && B#$$
$)%  -& 6(0 **
 *+
 *,
 )- B(-)  9))B& A!6! 9!9!6# % %%& && B#$)%  -& 9(:-)  9))B& A!6! 9!;!6# % %%& && B#$)%  -& 6( 9(
(-)  9))B&*' B!6!5 9!6! ! X"~€  X!|€6!5 9!7!9!!! X!w€6!5 9!7!9!! "!" X!q€6!5 9!7!9!
! ! X!l€6!5 9!7!9!
! " !" X!f€9!<!! =!<6! 9#	 ##
##$ B!=!=9!< ! X"D€6! )#– )$– B!9":9"1"9#:9#3#9$:9$4$6%> 9%?%'" (# )$ B%6&> 9&@&(" )# *$ B&!'&%+(  =(A)(  ))  )' X)€%" X)€!)$##)')(
)X)
€%# X)€!)"$#)')()X)€%$ X)€!)#"#)')( )(
(	% X)€))  X*€#)%'*% =(B6+ 9-=9--9.!"..) -.-9.=9.
./
*90
!"/0/ ./.B+=+C6! -#  B!X$€% X&
€9&%%&D X&€9&%% && X& €9&8% & X'€+& =&E%+& =&<%E$R$ï98  X	€6F   9!	 !!
!!")# BX€6F   9!	 !!
!!")# B65 9G  XJ€  XH€65 979
 XB€65 9799	 
 X;€65 979
 X5€65 979
 X/€-  9  X €-  9 X€- BX$€-  + =-  =-  9H)  =*-  9H) =+-  9H6, 9-B=.+ =I+ = 5K 9	 
-   9  ! =-  9
!=
=JXÇ…9% D Xë€6 9"9!- 6 
B- 6 9
-  9B A9	 
) 6 996   B)  - 60 * 	 *!	 *"	 )# B-  9B A6 996   B
)  - 60 * 
 *!
 *"
 )# B-  9B A6 996   B)  - 9(-  9B A6 9;6   B)  - 6 9
-  9B* B65 96  Xƒ€  X€65 979 X|€65 979  Xv€65 979
 Xq€65 979
  Xk€9E =E6 9	 
 B=79E  XI€6 )– )– B9(919(939(946> 9?   B6> 9@    B!)  )   X€ X€!#
X
€ X€!#X€ X€!# 
)   X€
	 X€)  X €#  ! X!€)!  =!B6! 9#79##9$"$$ #$#9$79$
$%
 9&
"%&% $%$B!=!L6 -  BX€ X
€9%D X€9% & X €98  X€+ =E+ =<ERïXÙ„9% M X‚€9	) 
65 979 X€65 979  X
€65 979
 X€65 979
  X€+ X€+ 
 X€65 9N  X€ 6 9O6 9
  X€6 9PX€  X€  X€6 9Q6 96   ! B6  ! "B-  " -#  9##B )! B6 96   ! B6  ! "B-  6" 9""-#  9##B )! )" B6 9 9!- B6 9"9!-  6! # ##9$$$!#$#$ $$9%
%%!$%$B!-" $ -%  9%%B" A65 96  X	€  X €  X€9R  X€9RBXT„9% S X76 9"9!- 6 
B- 6 9
-  9B A9	 
)Œ ) 65 979 X€65 979  X
€65 979
 X€65 979
  X€+ X€+ 65 96  X €  X€9TX€+ X€+   X€-  9U=(+ =T-  9 X€-  +  =-  + =6 9Q6 96    B6    !B- ! -"  9""B)  B6 96    B6    !B- 6! 9!! ! X"€6!0 *# *$ *% )& B!-"  9""B)  )! B'V 6 9
9T  Xf€-  9 Xb€-  9U6> 9W6 , 9 - B   B	 X€'X X€'Y    & 6  9   " -# B 9  !!  X!C€! " 6# 9# #'%Z &! '" &%'%-& B#9##$$# X#
€#! )$ $# X# €U#€%! 9#[!)& B#!# X#é6# 9# #'%Z &! '" &%'%-& B#9##$$# X#	€#! )$  $# X#€%! 9#[!)& B#!# 6# 9# #'%Z &! '" &%'%-& B#9##$#$ X#€'#Z $! %" &%#X#5€'#Z $" &$#X!1€! " &"!X-€9( V X€9\6 9X&€6 9 9(-  B9 X€9(6 9 ! '"Z &!"!-" B9   X€ )     X€U €! 9[)" )#þÿB Xé ' Z & X€9(6 9" -  6! #$B!6" 9"
"B65 96  X€  X€  X€9T  X€+ =T-  =-  9(=U-  + =X€9T  X €Xƒ9% ] X¸3^ 3_ 9`
  X€+ =`6 9"9!- 6 
 B- 6 9
-  9B A
9	) 6 96   B6    B- 6  9 a -!  9!!B) B9(9b!9c9b!#")   X€6 96   ! B6  ! "B-  6" 9"d"-#  9##B )! B  ) 6 996! # $ B!" )# -$ 6& 9&d&-'  9''B$ A6 9;6! # $ B!" )# -$ 6& 9&a&-'  9''B$)% B  3!e 9"(+#  -$  9$$$ X$€-$  9#U$X$€$! & 9'(B$#$ 6$ 9$"$&# -' 6( * +  B(-) 6+ 9+
+-,  9,,B) A$6$ 9$ $&# -' B$6%5 9%6% % X&,€  X%*€6%5 9%7%9%%% X%%€6%5 9%7%9%%9&$ &&%& X%€6%5 9%7%9%
% % X%€6%5 9%7%9%
%9&
$ && %& X%€-%  9%%% X%7€-%  =%-%  6&g 9((B&=&f%-%  '&V =&U%-%  +& =&%X%)€6%5 9%6% % X&%€-%  9%%% X%!€6%h -'  9'U'B% % X&€& (% 9)iB&%& -& (% 9)b9*cB&=&(X&	€-&  9&U& &V X&€6&h -(  9(f(B&=&(-&  +'  ='&-&  +' ='&+% 6& (
 B&X)€9+%* +] X+€9+`* + X,€+% X&€E)R)ö6&5 9&N& & X'Z€  X&X€-&  9&& & X&T€6&5 9&7&9&&''& X&#€6&5 9&7&9&& '''&' X&€6&5 9&7&9&
&''& X&€6&5 9&7&9&
& '''&' X&€ % X&
€6& (
 B&X)€9+%* +] X+€++ =+`*E)R)ù+& =&`9&` & X'*€-& 6(5 9(7(9((!((#(())  )* B&9'c9(b!'('9(i#'('6(> 9(W("*'&**B(9)b9*i"**( )*)-* ,) 9-b9.cB*=*(** &* X*€9*b=*(** *& X*€9*c=*(X&€+& =&`6&5 9&G& & X'W€  X&U€6&5 9&7&9&&'
'& X&O€6&5 9&7&9&&9'	 ''
&' X&H€6&5 9&7&9&
&''& X&B€6&5 9&7&9&
&'&' X&<€-&  9&& & X' €-&  9&&& X&€-& B&X&1€-&  +' ='&-&  =&-&  9&H&)'  ='*&-&  9&H&)' ='+&-&  9&H&6', 9'-'B'='.&+& =&I+& =& 5&j 9'	 ''
''-(  9((!'('='&-'  9'
'!''='
&=&J9&% &] X&
€9&k & X&€9&(=&k9&l & X&€9&(=&l2_9% m X‹€6 9"9!- 6 
B- 6 9
-  9B A  9n- B6> 9?)P  B9	 
!6 96   B6  B- 6 9o-  9B) B9n9(8  X€'p 6 9  - B6 9" - 6  !9"
""!!"!B- 6! 9!
!-"  9""B A5q ==
=<65 96  X+€6r   X(€65 979 X#€65 979  X€65 979
 X€65 979
 X€-  9 X€-  +  =X
€  X€-  =-  + =-  +  =s6F  9	 
) BXÑ€9% t XÎ€6 9"9!- 6 
B- 6 9
-  9B A  9n- B6> 9?)P  B9	 
!6 96   B6  B- 6 9o-  9B) B)  4  +  6 9(BX€  X 
€
6 u 9 v " 9#n8##B   X € ERò'V 	 X€'w X/€	
 X€9n86 9  -  B9 X#€'x X!€'V 6   BX!
€)# #! X#€# '$y &$## &" 9$[")' )( B$&$#E!R!ñ6 9   -! B9 X€ X€ ' z & 6 9  -  B6 9"  -! 6" $%9&
&&!%&%B"-# 6% 9%
%-&  9&&B# A5{ ==
=<6r   X,€65 96  X(€65 979 X#€65 979  X€65 979
 X€65 979
 X€-  9 X€-  +  =X
€  X€-  =-  + =-  +  =s6F   9!	 !!
!!")# B9	 
 X€X€ER#xERÍw-  9  X?-  9, 8	 	 X
€9	9
	X
€9

 X
€-
  9

-
  9

 



9

 
 X
€-
  9





9
%
m X
€9
% 
t X
 
  9n-
 B
6
> 9
?
)
P 
 B
 
  	 X
 €9
	9	  X
€)P ! !
9
n

 
5
| =
=

= 
=
6 96   B6    B- 6 9}-  9B) B+ 6
 9nB
X€
 + 9% m X €9( X€+ X€+ X€9% t X€9(865 979 X$€65 979   X€65 979
 X€65 979
 X€6 96 B6   B- 6 9~-  9B) B  X€6 96 B6   B- 6 9~-  9B) B6 9  - B6 9" - 6 9
!B- 6 9
-  9B A65 96  X$€65 979 X€65 979   X€65 979
 X€65 979
 X€+ 9% m X€=(X€9% t X€9(9(8 <ERn6
5 9
6
 
 XX€  X
V€,
  	 X	€9
	9
	9	 X€  ) X€9
 X€-  9-  9 
9
 X€-  9
  ) 65 979
 X€65 979 
 X
€65 979
 X€65 979
  X€+ X€+ 65 979  X€65 979    X
€65 979
  X€65 979
   X€+ X€+   X€  X€-  +  =)¾ -  9-  9 !-  9
5  = =
 65 9799	 	 X€65 9799	 9
  	
		 X€65 979
9	
 	 X€65 979
9	
 9
  	
		 X€+ X	€+ 
	 X	€6	5 9	6	 	 X
€6
 9
€
 
 X
€  X
€6
 9

 
 X
€6
 9
‚
6
 9
 9
 B
6 9 9  9
 9  B6
 9


  - 
 -  9B) B
6
 9


  - 6 9-  9B) ) B
'
ƒ 6 9 
 - B6 9 9  9!9
 9  9
!B-  9
-  9  6 9„-	 6   B6  B6 9
B6 9"
 -  - 6 9
-  9B A 	 X€-
  9…B+ +  -
 B  X€5† 4  =‡4  =ˆ4  =‰7Š -  9  X€-  9  X€2  €K  -  9  X€-  9  X€-  9H9**  XR‡- B-  9-  9H9**  X€-  9  X€2  €K  9% ] X€)@X€))2 9% ] X€)‡ X€)s 9‹" 9‹	 X€9J  X€5Œ =J-  99J9 -  9
9J9
 6 9B-   )!
 9"!""""B -   )!
 9"
!""""B 6> 9Ž-   9 H 9 *  
 )! B
  
  ! "
""#  $""% "& !'%!(&)' #)#)( $)$5) =#)=$
)=%)6*5 9*7*9**9+)+* X*€6*5 9*7*9**9+)9,) +,+*+ X*€6*5 9*7*9*
*9+
)+* X*€6*5 9*7*9*
*9+
)9,) +,+*+ X*€+* X+€+* 6+5 9+6+ + X,€ * X+€9+ + X+€-+
  + X+€++ =+5+’ 6,5 9,7,9,,!,#,=,+6,5 9,7,9,
,!,$,=,
+=+‘9+ + X,*€6+5 9+N+ + X,&€6+5 9+7+9++9,‘9,,!#,+6+5 9+7+9+
+9,‘9,
,!$,+-+ -# ).
 9/!/%///B+#+ -+ -$ ).
 9/
!/&///B+$+ 5+“ -,  9,,!,,#=,+-,  9,
,!,,$=,
+=+J6+5 9+N+ + X+€++ =+6+ 9++6- /# 0$ B-6.  0%# 1&$B.-/ 61 91”12 B/0  B+6+ 9++6- /# 0$ B-6.  0%# 1&$B.-/ 61 91•12 B/0  )1 B++ 6, 9,",9.!-/ 60 2  22#3  33$B0-1 63 93
34 B1 A, ,%#- !,-,-  --$.  6/5 9/7/9//,/ X/€6/5 9/7/9// 0.,/0 X/
€6/5 9/7/9/
/-/ X/€6/5 9/7/9/
/ 0.-/0 X/€+/ X0€+/ 60 90"0'2– -3 64 6, 7- B4 / X5 €-5 67 97—78 B5 5 X6€-5 67 97
78 B5B0*0  0 X0€605 9060 0 X1
€-0
  0 X0
€-0  +1 =1˜0 / X0€1
  -0 B02  €K  *0 0 X0+„-0 22!2)3  )4 B0"001  11$92‹-3 93™323 X2v€2  22#31 4 !44%5 665 967696626 X6€665 9676966 74267 X6
€665 967696
636 X6€665 967696
6 75367 X6€+6 X7€+6  6 X7€67 97Q7 7 X8€67 97O768 9886: <2 =3 B:6;  =42 >53B;-< >7 ?0 B<= B868 9886: <2 =3 B:6;  =42 >53B;-< 6> 9>>?0 B<= )> B8'8š 69 99 9;8 -< B96: 9:":<8 -= 6> @4 @@29A9AA!@A@A5 AA39B
9BB!ABAB>-? 6A 9A
AB0 B? A:*:  : X:€6:5 9:6: : X;€ 6 X:€-:
  : X:€-: < B::  1:192› 2 X3¤ƒ92‹)3  32 X2 ƒ62 94›B2X5šƒ71 68 98"8':œ ;5 &:;:-; 6< >  >>#?7 B<-= 6? 9?
?@0 B= A8 8%#9 !8989 !997:" ;  6<5 9<7<9<<8< X<€6<5 9<7<9<< =:8<= X<
€6<5 9<7<9<
<9< X<€6<5 9<7<9<
< =;9<= X<€+< X=€+<  < X=€6= 9=Q= = X>€6= 9=O=6> 9>>6@ B8 C9 B@6A  C:8 D;9BA-B D= E0 BBC B>'> 6? 9? ?A> -B B?6@ 9@"@B> -C 6D F: FF89G?GG!FGFG; GG99H
?HH!GHGBD-E 6G 9G
GH0 BE A@*@  @ X@€6@5 9@6@ @ XA
€ < X@€-@
  @ X@€-@ B C5 B@X2%ƒ@  7@79@% @] X@¶€6@ 9@"@'Bž -C 6D F  FF#G7 BD-E 6G 9G
GH0 BE A@@#  @@#A$  AA7B% C  6D 9DD6F H@ IA BF6G  IB@ JCABG-H 6J 9JŸJK0 BHI BD9D 69Eb!DED9Ec9Fb!EFE#DED"EDB)F  FE XF€6F 9FF6H J@ KA BH6I  KE@ LCABI-J 6L 9L¡LM0 BJK BF FE@GC GGA6H 9H9H6J LF MG BJK
 )L -M 6O 9O¡OP0 BM AH6Hg 9J 6BH6I 9I IKH -L BI6J 9J"JLH -M 6N  PB@Q  PQPQ  QQ7BN-O 6Q 9Q
QR0 BO AJ6J5 9JNJ J XKD€-J
  J XJA€6J5 9J7J9JJK !KK@KJ XJ:€6J5 9J7J9JJ KB@L  KLKJK XJ2€6J5 9J7J9J
JK !KKAKJ XJ+€6J5 9J7J9J
J KCAL  KLKJK XJ#€-J 6L5 9L7L9LL!L@L#LBL)M  )N BJ6K¢ 9K£K9Mb9NcOJ BK9Lc9Mb!LML9Mi#LML6M> 9MWM"OLJOOBM9Nb9Oi"OOM NON-O QN 9Rb9ScBO=O 6J  7J76@ 9@"@'B¤ -C 6D F  FF#G7 BD-E 6G 9G
GH0 BE A@@#  @@#A !AA7B% C 6D5 9D7D9DD@D XD€6D5 9D7D9DD EB@DE XD
€6D5 9D7D9D
DAD XD€6D5 9D7D9D
D ECADE XD€+D XE€+D 9E¥6 E XF€6E 9E¦E E XF€ D XE€6E 9E§E E XF€6E 9E¨E6F 9FF6H J@ KA BH6I  KB@ LCABI-J LE M0 BJK BF6F 9FF6H J@ KA BH6I  KB@ LCABI-J 6L 9LLM0 BJK )L BF9F¥6 F XG€'F© XG€9Fª6 F« XF€'Fw XG€-F 9Hª6BF6G 9G GIF -J BG6H 9H"HJF -K 6L NB NN@9OGOO!NONOC OOA9P
GPP!OPOBL-M 6O 9O
OP0 BM AHH  HH76I 9I"I'K¬ -L 6M O  OO#PH BM-N 6P 9P
PQ0 BN AII#  II#J !JJHK% L 6M5 9M7M9MMIM XM€6M5 9M7M9MM NKIMN XM
€6M5 9M7M9M
MJM XM€6M5 9M7M9M
M NLJMN XM€+M XN€+M 6N 9NN6P RI SJ BP6Q  SKI TLJBQ-R  M XT€6T 9T­T T XU€6T 9T®TU0 BRS BN6N 9NN6P RI SJ BP6Q  SKI TLJBQ-R 6T 9TTU0 BRS )T BN9N% N] XN€-N  9N¯N N XO€-N  9N°N9O%68OON O XP€'Op 6P 9P PRO -S BP6Q 9Q"QSO -T 6U WK WWI9XPXX!WXWXL XXJ9Y
PYY!XYXBU-V 6X 9X
XY0 BV AQ9Q±6 Q XRŠ€QI  RLJS
 !RSRSK TN TT"T TU   TUT6U 9UU6W YQ ZR BW6X  ZSQ [TRBX-Y 6[ 9[”[\ 0BYZ BU6U 9UU6W YQ ZR BW6X  ZSQ [TRBX-Y 6[ 9[•[\0 BYZ )[ BU6U WN BUXXW€Z  ZZR[
X[["[ [ Z[Z6[5 9[7[9[[Q[ X[€6[5 9[7[9[[ \SQ[\ X[€6[5 9[7[9[
[Z[ X[ €6[5 9[7[9[
[\  \\Z[\ X[€+[ X\€+[  [ X\€6\ 9\\6^ `  ``QaZ B^6_  aSQb !abab  bbZB_-` 6b 9b­bc0B`a B\6\ 9\"\^Y -_ 6` bS bbQ6c 9c ceY -f Bc9cccc!bcbc  ccZ6d 9d dfY -g Bd9d
ddd!cdcB`-a 6c 9c
cd0 Ba A\EXRX§Q  QQH6R 9R"R'T² -U 6V X  XX#YQ BV-W 6Y 9Y
YZ0 BW AR R%#S !RSRSQ T U  VUW  !WWU9X'6 X XX€5X´ 9Y³6 Y XZ€)Y XZ€)Y  =Y*X9Y³6 Y XZ€)Y XZ€)Y  =Y+X6Y, 9Y-YBY=Y.X=X'6XX'€6X, 9X-XBX9Y'69Y.Y!XYX9Y'66Z, 9Z-ZBZ=Z.Y9Y'69Z³6 Z X[€)Z X[€)Z  =Z+Y9Y'69Z'69Z*Z9['69[+[9\'69\*\![\["[X[[ [ Z[Z=Z*Y9Y'6-Z 9\'69\*\)]  )^ BZ=Z*YX !YWTZ  !YZY9Z'69Z*Z"YZY XYX6Y 9Y/Y6Z0 9\1Y6] 9]2]9]1]9^1Y!]^]9^'69^*^"]^] \]\9]3Y6^ 9^2^9^3^9_3Y!^_^9_'69_*_"^_^ ]^]9^4Y6_ 9_2_9_4_9`4Y!_`_9`'69`*`"_`_ ^_^_0 BZYZ 6Z 9ZZ6\ ^R _S B\6]  _TR `USB]^Y _V BZ6Z 9ZZ6\  ^XR_  __SB\6]  _XR _W_`  ``S `W`B]6^0 )` )a )b c0 B^_WBZ6Z5 9Z7Z9ZZRZ XZ€6Z5 9Z7Z9ZZ [TRZ[ XZ
€6Z5 9Z7Z9Z
ZSZ XZ€6Z5 9Z7Z9Z
Z [USZ[ XZ€+Z X[€+Z *[  [ X[€6[5 9[6[ [ X\€ Z X[€-[
  [ X[€9[³6[[ =[³6"[  1[1E5R5d|*0  0 X0¡605 9060 0 X1)0  91› 1 X2
€91‹)2  21 X1	€91‹-2 92™212 X1€1 01 X2€)0  +1 92› 2 X3€92‹)3  32 X2
€62 94›B2X5€97±6 7 X8€+1 X2€E5R5ù 1 X2v€62 94›B2X5n€97±6 7 X8k€7  77$8
5"88"8 8 787 70798% 8] X8€)8F X9€)8( "8 8 8879#  99#: !::8;% < =9  ><:?
 !>?>?; 9@% @] X@€-@  9@¯@ @ XA€-@  9@°@)A B@ )C MA$€E  EE>F
DFF"F F EFE6F5 9F7F9FF=F XF€6F5 9F7F9FF G?=FG XF€6F5 9F7F9F
FEF XF
€6F5 9F7F9F
FG  GGEFG XF€=D%6+F =F±61
  2  €K  OAÜ6A5 9A7A9AA A= XA€6A5 9A7A9AA B?= BA XA€6A5 9A7A9A
A A> XA
€6A5 9A7A9A
AB@ BB"B BC   BCB BB>BA XA€+A =A±61
  2  €K  E5R52  €K  92› 2 X3þ€92‹)3  32 X2ú€62 94›B2X5ô€7  77$8
5"88"8 8 787 7078#  88#99% 9] X9€)9- X:€)9 "9 9 997:% ; 6<5 9<7<9<<8< X<€6<5 9<7<9<< =:8<= X<
€6<5 9<7<9<
<9< X<€6<5 9<7<9<
< =;9<= X<€+< X=€+< =#  ==#9>% >] X>€)>F X?€)>( "> > >>7?% @ 6A5 9A7A9AA=A XA€6A5 9A7A9AA B?=AB XA
€6A5 9A7A9A
A>A XA€6A5 9A7A9A
A B@>AB XA€+A XB€+A  B%#C !BCB9C% C] XC€)Cx XD€)CZ "C C CC7D E  6F5 9F7F9FFBF XF€6F5 9F7F9FF GDBFG XF
€6F5 9F7F9F
FCF XF€6F5 9F7F9F
F GECFG XF€+F XG€+F 9G% G] XGN€G#  GG#H$  HH7I% J  6K5 9K7K9KKL !LLGLK XK€6K5 9K7K9KK LIGM  LMLKL XK€6K5 9K7K9K
KL !LLHLK XK€6K5 9K7K9K
K LJHM  LMLKL XK€+K XL€+K  K XL%€-L 6N5 9N7N9NN!NGN#NIN)O  )P BL6M¢ 9M£M9Ob9PcQL BM9Nc9Ob!NON9Oi#NON6O> 9OWO"QNLQQBO9Pb9Qi"QQO PQP-Q SP 9Tb9UcBQ=Q 62  €K   < XG€1
  6G 9I›BGXJ€+L =L¥K+L =L±KEJRJú9G¥6GG =G¥6XG€ A XG€6G 9I›BGXJ€+L =L¥KK6 XL€+L =L±KEJRJø9G±6GG =G±69G±6 G XH€G6 XG€+G  .
G XG€ F XG €E5R5
90› 0 X10€60 92›B0X3*€95¥4 5 X6'€65¢ 95µ5)7 B5 5 X6€+5 =5¥4'5« =5ª4X5€)5 )6ÿ )7 M5€-9 99¶989 X9€-9 99·989 X9€-9 99¸989 X9€X9
€69¢ 99µ9;8 B9 9 X:€+9 =9¥4=8ª4X5€O5èE3R3ÔK  $À
ÀÀ)ÀC€(ÀFÀGÀIÀÀjÀpÀiÀf€eÀgÀhÀ@ÀAÀMBUTTONRBUTTONLBUTTONis_key_pressed last_time 
target 
progress show_in_listShow in listdropdown_openbindTypesbindTypesSliderbind_dropdown_bgbind_dropdown_hover	Mode	nonekeyPress any key...bind_key_bgbind_key_hoverbind_key_waitingwaiting_for_keyKey	lerp
utilssbind_slider_fillslider_valuebind_slider_bg
Value
Delete
Bind 
binds
Add Bindmax_bindsbind_window_click_handledwindow_close_hover Ã—bind_window_borderbind_window_bg x y  x y bind_window_drag_offsetisBindWindowDragging x 
height
width y powscreen_size xúy–bind_countcolor_picker_statespulse_buttonscopy_paste_buttonsmode_buttons pulse_buttons copy_paste_buttons mode_buttons save_settingstexture	Savesubtab_inactivesubtab_hoversubtab_active x 
height
width:y dropdown_hoverdropdown_open_bg x 
height 
width y  x 
width y  selected , 1 selected	None
insert
table
comboboxactiveKeybindisClickBlockedByDropdown x 
width y 
Selectdropdown_bg
values
dropdownoriginal_valuebind_slider_value x y increment
tonumber
tostringoriginalInputValue slider_fill
maxValue
minValueslider_bgslider_active  
sliderplaceholdersub... |
floorinputBufferis_editingtext_input
callbackbutton_hoverbutton_activebutton_bg	down
button
last_pos x y bind_window_offset
has_bindbindWindowAnimationright_clickadd_settings_gearis_opencolor_pickerlast_selected_color_poshuerelative_posminmax	mathpicker_posis_color_open
circlecolor_valuecircle_filledhas_color_pickerpos
click
mousebgcheckbox_activercolor_tcheckbox_bglast_time
clock os
target
progress last_time 
target 
progress 
valueanimation
checkbox	typevisiblerectangle	text	namecalc_text_sizecontainer_border	rect
alphacontainer_bg
height
width
vec2_trect_filled
render
ipairscurrentSubtabcurrentTabsubtabInactiveColorsubtabActiveColorsubtabFontinactiveColortext_secondaryactiveColortext_primarycurrent_theme	fonty 
widthŒ
height#lineAnimationSpeedš³æÌ	™³¦þglowSpread €€àÿglowIntensitylineOffsetþÿÿÿlineHeightlineThicknesssubtabToNextTabSpacingsubtabToTabSpacingôÿÿÿsubtabDuration €€ÀþsubtabDelayš³æÌ	™³æüsubtabInactiveColor 	font subtabFont subtabIndentinactiveColor activeColor spacingñÿÿÿsubtabActiveColor subtabSpacingúÿÿÿsubtabHeighty x xbind_mode_dropdown_openactiveBindSettingactiveBindWindow
isTypingactiveInputBoxactiveDropdownwaitingForKey ‚
<PxçÌ™³³æŒþµæÌ™™³¦þ€€€ÿ 28(F¬çÌ™³³æÌþ÷Ñðúáõ‘üÝžŠ®”Ü¾ÿ$È€ €ƒ€€â€ˆŽ„µæÌ™™³¦ÿØÿÿÿÍ™³ææÌ¹ÿÍ™³ææÌ™ÿd €€ø€è4   6  9#  B"L 
floor	math€€€ÿ² 	 	)  X €6  6 9  B C  X€6 96 96 9 B A  A 6 9'   '  &   D K  f %.
format
string
log10abs
floor	math
tostring€€€ÿž  	 69    X/€9  9  X+€-   9 B9  9  X€9  9 X€9  9 &9  9  X€9  9 X€9  9 9'  B  X€ 9  9&X€ ' 9  9&L -   9 D À ^[%%%$#@!]+$
match
suffix
prefixincrementenabled
formatËC 3 j¬6   B 6  9     X €6  9     X €2 ‡6  9     X€6 98   X€4  6 96 9  X€6  )ú )( B6 9  X€ 6 9  X
€6 )  =6 )  =	6 6
 9B=
6
 9B6 9
!6  =
    X €6  ) =	 X €6  )  =	 )  6 6	 9		6
 9
	
6
 9

!


"

"
 
 	
	=	6 9*	  	 X€   X€6 +	  =	6 +	  =		6 +	  =	
6 =2 Ç†)     X	€9	
 	 X
€6	 9

B	X€9
 X€9
  X€X€9
  X€X €9
 X€9
  X€ERê	6
 6
  9
6 9)( 	 6 9B A
=

6
 9

9

9


 X
€6
 9

9

9
9 



 X
€6
 9

9

9


 X
€6
 9

9

9
9 



 X
€+
 X
€+
 6
 9

6 9  -  6 9
 B) B6 9  -  6 9 
 B) ) B   X€9!   X
€'" '
# &
  X
€'$ 6
 9
%
 - 6  99B-  6 9&
 B A
6
  99 9 B
6 9%'' - 
 -  6 9&
 B A6 9*  Xi€   Xg€6 9(  X€6 999
 X€6 999
	 X€6 999
 X
€6 999
	 X€6 +  =5) 9=9=9=*6 9(  X;€6 999 X5€6 9999*  X-€6 999 X'€6 9999+  X€6 999
 X €6 999
	 X€6 + =,6 5. 6 999!=6 999!==-6 9,  X€6 9/  X€6 6  6 996 9-9!6 996 9-9!B=6 9/  X€6 + =,6 9,  X€- 90  X€9- 9!9- 9!6 6  - 9 - 9 B=61 
  X€+ X€+  6 9*
  Xf„   Xd„- 6 9

)  ) B99
  XW„6 9
BXQ„9
 XN„
 X€61  X€+ X€+ 9  X€92  X€54 93  X€) X€)  =593  X€) X€)  =66
 9B=7=29  X6
 9B9297!926
 9B=79293  X€) X€)  =692929592969295!"	 =592- 9295)  ) B=56 9%9!- 6  9  B-  6  9 & ! B A99  ) ) 
!9 29 5 " 
6  9 8 6!9 9#: 6$ 9$;$9$:$9%: !$%$9%29%5%"$%$ #$#9$< 6% 9%;%9%<%9&< !%&%9&29&5&"%&% $%$9%= 6& 9&;&9&=&9'= !&'&9'29'5'"&'& %&%)& B! ! 6! 9!!6#  % & B#6$   & 'B$-%  '  ( B%& B!6! 9!!6#   %&
B#6$   & &&'
 ''B$-%  6'9 ))ÿ )*ÿ )+ÿ ),ÿ B'( B%&
B!  X!#€6! 9!(! ! X"€ 
 X!€6! 9!,! ! X!€6! 9!!9!!! X!€6! 9!!9!! "!" X!€6! 9!!9!!! X!	€6! 9!!9!! "!" X!€9!3!! =!3)! 6" 9""9""9##" X"€6" 9""9""9#9$ #$#"# X"
€6" 9""9""" X"€6" 9""9"" #!"# X"€+" X#€+"   X#<€6# 9#># # X$8€ 
 X#6€6# 9#,# # X#2€ " X#0€-# 9#?# # X$ €-# 9#@## X#€-# B#X#%€-# +$ =$?#-# =@#-# 9#A#)$  =$5#-# 9#A#)$ =$6#-# 9#A#6$
 9$$B$=$7#+# =#B+# =#C5#E 9$9% $%$$$-% 9%%!$%$=$#-$ 9$$!$$=$#=#DXƒ9  XÊ3F 3G 9H
  X€+ =H6 9%9!- 6  9   ! B-  6! 9!&!" B A99) 6 96   " # B 6!   # $B!-"  6$ 9$I$% B")# B939J!9K9 J! #")     X €6  9  6"  $ % B"6#   % &B#-$  6& 9&L&' B$)% B   !
 !!)" 6# 9#M#6%  '  (! B%&" )' -(  6* 9*L*+ B( A#6# 9#N#6%  '  (! B%&" )' -(  6* 9*I*+ B()) B# ###$3%O 9&3+'  -( 9(P(( X(€-( 9'Q(X(€(% * 9+3B('( 6( 9(%(*' -+ 6,  .# /$ B,--  6/ 9/&/0 B- A(6( 9(R(*' -+ B(  X)2€6) 9)() ) X*.€6) 9),) ) X)*€6) 9))9))#) X)%€6) 9))9))9*( **#)* X)€6) 9))9))$) X)€6) 9))9))9*( **$)* X)€-) 9)P)) X)7€-) =P)-) 6*T 9,3B*=*S)-) '*U =*Q)-) +* =*V)X))€6) 9)() ) X*%€-) 9)P)) X)!€6)W -+ 9+Q+B) ) X*€* ,) 9-XB*)* -* ,) 9-J9.KB*=*3X*	€-* 9*Q* *U X*€6*W -, 9,S,B*=*3-* ++  =+P*-* ++ =+V*+)   X*€9*
 * X+€6* 9,
B*X-€9/. / X/€9/H. / X0€+) X*€E-R-ö  X*`€6* 9*/* * X+\€6* 9*,* * X*X€-* 9*P* * X*T€6* 9**9**++* X*#€6* 9**9** +++*+ X*€6* 9**9**++* X*€6* 9**9** +++*+ X*€ ) X*
€6* 9,
B*X-€9/. / X/€+/ =/H.E-R-ù+* =*H9*H * X+*€-* 6, 9,,9,,!,,#,,)-  ). B*9+K9,J!+,+9,X#+,+6,Y 9,Z,".+*..B,9-J9.X".., -.--. 0- 91J92KB.=.3*.  *. X.€9.J=.3*. .* X.€9.K=.3X*€+* =*H  X*b€6* 9*>* * X+^€ 
 X*\€6* 9*,* * X*X€6* 9**9**9++++* X*Q€6* 9**9**9+9, +,+*+ X*I€6* 9**9**++* X*C€6* 9**9**+*+ X*=€-* 9*?* * X+ €-* 9*@** X*€-* B*X*2€-* ++ =+?*-* =@*-* 9*A*)+  =+5*-* 9*A*)+ =+6*-* 9*A*6+
 9++B+=+7*+* =*B+* =*C5*[ 9+9, +,+++-, 9,,!+,+=+*-+ 9++!++=+*=*D9* * X*
€9*\ * X*€9*3=*\9*] * X*€9*3=*]2J9  X­€6 9%9!- 6  9 B-  6 9&  B A)  9^  X€6 9^BX	€6 9R  -! B9 X€ ERõ6Y 9_)P B99 ! 6 96    ! B6   !"B-   6" 9"`"# B )! B)  +  6 9 3BX!€ " X#€  X#€! E!R!ø'U 	 X€'a X€	 X€9^8X€ ' b & 6 9R! -" B6  9 % " -# 6$  &'9((
(!'('B$-%  6' 9'&'( B% A 6 c    X €4   7 c 6 c 5!d =!"="!=*!9"^="^!<!   X ,€6  9 (    X!(€ 
 X &€6  9 ,    X "€6  9  9    X €6  9  9   ! ! X 
€6  9  9    X €6  9  9  ! ! X €+  X!€+     X! €6!1 ! X!€+!  7!1 X!€71 Xš€9  X—€6 9%9!- 6  9 B-  6 9&  B A)  9^  X€6 9^BX	€6 9R  -! B9 X€ ERõ6Y 9_)P B99 ! 6 96    ! B6   !"B-   6" 9"`"# B )! B9^938  X€'e 6 9R -  B6 9%  -! 6"  $%9&&
&!%&%B"-#  6% 9%&%& B# A6c   X€4  7c 6c 5f = = =*9 ^= ^<  X,€6 9(  X(€ 
 X&€6 9,  X"€6 99 X€6 99  X
€6 99 X€6 99 X€+ X€+   X €61  X€+  71 X€71 ER­{61   X€2  €K  61 6c 8  X€+  71 2  €K  9^ ), X€ 6 96  99B6  99* 9 B-  6 9g) B) B6 96  99B6  99* 9 B-  6 9h) B) ) B+ 6 9^BXŠ€9 + 9  X €93 X€+ X€+ X€9  X€9386 999 X€6 9999*  X
€6 99 X€6 99 X€+ X€+   X€6 96  9!!
!"
B6   9"9#* "#""
"#B -!  6# 9#i#)$ B!)" BX€  X€6 96  9!!
!"
B6   9"9#* "#""
"#B -!  6# 9#i#)$ B!)" B6 9R -  B6 9%  -! 6"  9$$$%9&&
&!%&%B"-#  6% 9%&%)& B# A6 9(  X€  X€+ 9  X€=3X€9  X€93938 <ERt6 9(  XD€  XB€999*) 6 99 X€6 99  X
€6 99 X€6 99  X€+ X€+ 6 999  X€6 9999*   X€6 999  X	€6 999   X€+ X€+   X€  X€+  71 K  K  K  C€
ÀÀ$ÀFÀÀIÀdropdown_hovercontainer_borderdropdown_open_bg 
width 
values 	type
dropdowny x 
Select 
width 
values 	type
comboboxy x gear_dropdown_positions selected	Nonedropdown_bgmax
valuesoriginal_valuebind_slider_value x y 
floor	mathincrement
tonumber
isTyping
tostringoriginalInputValuecalc_text_sizeinputBufferactiveInputBox 
circlecircle_filledslider_fill
maxValue
minValueslider_bgslider_active   x y bind_window_offsetbind_mode_dropdown_open
has_bindbindWindowAnimationactiveBindSettingactiveBindWindowright_clickbgcheckbox_activercolor_tcheckbox_bglast_time
target
progress last_time 
target 
progress 
valueanimationgear_active_dropdownisDragging	down x y settingsDragOffsetisSettingsDragging
height
width x 
height#
width y 
click Ã—text_primary	text
Settings SettingsElement	namegear_window_border	rectgear_window_bgcurrent_themerect_filled
renderypos
mouse	lerp
utilssx
dropdown
combobox
slider
checkbox	typevisible
ipairscustomSettings
clock osanimationLastTimeanimationTargetsettingsWindowSize
vec2_tsettingsWindowBaseSizesettingsWindowPos
elementsanimationProgressactiveSettingsWindowelementSettingsrender_menu_elements÷Ñðúáõ‘ü8TZ2Í™³ææÌ¹ÿçÌ™³³æÌþÍ™³ææÌ™ÿP(n
€€€ÿÝžŠ®”Ü¾ÿ$ š	  	 $¿)   + 6  -  BX€9    X €9    X€9    X€9    X €9    X€+ X€ERí- + = 6 9	B  X€- 9
  X€- + =
X€- + =
- 9
  X€- B- B6 9
' B6 9
' BK  X€6 9
' B6 9
' B- ) =- B- - 9=- - 9=+ 6 99- 9 X€6 99- 9- 9  X€6 99- 9 X€6 99- 9  X€+ X€+ 6 9  X€  X€- + =- 5 6 99-  9  ! =6 99-  9  ! ==- 9  X€6 9  X€- 6 99- 99!=- 6 99- 99!=6 9  X€- + =- 6 9=- 6 9!= 6" B6# BK  GÀ$À+ÀIÀJÀ:ÀBÀrender_other_menurender_menuright_downright_mouse	down x y dragOffsetisDragging
clickyxpos
mousetargetHeight
heighttargetWidth
width
alphaunbind mouse2unbind mouse1bind mouse2 +attack2bind mouse1 +attackexecute_client_cmd
engine
isOpenanimation_finishedis_menu_opened uibind_window_click_handledis_opencolor_pickeris_color_openhas_color_picker
checkbox	type
ipairsxl   	6   9  B .   6   9  B .  K  q€r€ get_local_player_controllerget_local_player_pawnentitylist-  9  .  9 . K  s€t€
origin
anglesÏ  	
o-      X €K  -   9      X€K  9 9 6 999"99 "  B- 9  -  B	  X€+ X€+  . -   X€ X€+ X€+ . . - 9   -  B	  X€+ X€+ .   X€)    X€+ X€+ . 	  X€-  X€+ X€+ .	 X€1 1	 -   X€/
 X€-   X€/
	 -   X€/

 X€-   X €-   X€/

 X
€/
 X
€-   X€/

 X€-	   X€/
 X€/
 K  r€<À|Àv€w€u€x€}Ày€z€{€unknown
stand	walk
crouchcrouch_walk
air_duckair
landed	bandyx	sqrt	mathm_vecAbsVelocity
m_fFlagsm_hPlayerPawn y   6   9  )W B .   6   9  )A B .  6   9  )S B .  6   9  )D B .  K  ~€€€€€is_key_pressed
utilss;    
-      X €-     X€-     X€-  L  ~€€€€€€   
8-      X €)   L  -   9   )    X €)   L  6  9  ' ' ' B    X€)  L - 9'  -  8 B  X€: 	  X€)  L 6 9' ' '	 B  X€)  L - 9'
 :  B:   X€)  L q€;À
float*m_flDuckAmountCCSPlayer_MovementServicesuintptr_t*	castm_pMovementServicesC_BasePlayerPawnclient.dllget_netvar_offset
enginem_iHealth Í   
 1-      X €)   L  -   9      X€)    X€)  L -  9  X€)  L -  99  X€)  L 6 9' ' '  B  X€)  L - 9'	 8B:   X€)  . - L q€%€;À
int32_t*	castm_zoomLevelC_CSWeaponBaseGunclient.dllget_netvar_offset
enginem_hActiveWeaponm_pWeaponServicesm_iHealthˆ    6   9     X
€6  B    X€6  + = X €6  + = K  ragebot_auto_strafer	menuwasd_pressed
valueadaptive_autostrafeö    
6   9     X€6  9     X€6  9  6 9B 6  96 9	) B)< 6  9
* B K  color_valueragebot_fovcreate_animation
utilssscreen_size
circle
renderragebot_aimbot	menu
valuedraw_rage_fovµæÌ™™³¦€€€ÿ¾   <6   9     X
€6  9     X  €-   9    9  ) B X ,€6  9     X
€6   9     X  €-   9    9  ) B X €6  9     X
€6   9     X €-   9    9  ) B X €6  9     X 
€6   9     X €-   9    9  )  B K  Àintsv_showimpactsclient_bullet_impacts
valueserver_bullet_impacts¹   06   9     X€6  9     X €-   9    9  6 9B X 
€-   9    9  )ÿÿB X €-   9    9  * B 6   9     X€-   9    9  6 9B X €-   9    9  ) B K  Àragdolls_gravityragdoll_gravity_scale
floatragdoll_friction_scaleragdolls_friction
value
ragdolls çÌ™³³æŒÿ   6   9     X €-   9    9  + B X €-   9    9  + B K  À	bool)sv_grenade_trajectory_prac_pipreview
valuegrenade_camera©   6   9     X€-   9    9  6 9B X €-   9    9  )  B K  Àgrenade_trails_time
float)sv_grenade_trajectory_prac_trailtime
valuegrenade_trailsŽ   6   9     X €-   9    9  + B X €-   9    9  + B K  À	boolr_csgo_postprocess_enable
valuedisable_post_processingu   6   9     X €-   9    9  ) B X €-   9    9  )  B K  Àintmat_fullbright
valuefullbrightw   6   9     X €-   9    9  + B X €-   9    9  + B K  À	boolr_drawskybox
valueremove_skybox   6   9     X €-   9    9  + B X €-   9    9  + B K  À	boolr_drawcsplayers
valueremove_player_modelsu   6   9     X €-   9    9  + B X €-   9    9  + B K  À	boolr_drawworld
valueremove_world´   -      X €K  6   9     X
€-   9     X €-  9    9  + B X €-  9    9  + B K  q€À	boolr_drawviewmodelm_bIsScoped
valueremove_viewmodel_in_scopeö   F6   9     X#€-   9    9  + B -   9    9  6 9B -   9     9  6 9B -   9 	   9  6
 9B -   9 
   9  6 9B X €-   9    9  + B -   9 	   9 
 )  B -   9 
   9  )´ B -   9     9  )Ð B -   9    9  )œÿB K  Àintdof_far_crispr_dof_override_far_crispdof_near_crispr_dof_override_near_crispdof_far_blurryr_dof_override_far_blurrydof_near_blurry
floatr_dof_override_near_blurry	boolr_dof_override
valuedof_overridez   6   9     X €-   9    9  + B X €-   9    9  + B K  À	boolsv_autobunnyhopping
valuebunny_hopÍ  6   9     X €6   9  	  X €-      X €-     X €K  6  9  ' B X €6  9  ' B K  q€r€ cl_draw_only_deathnotices 0 cl_draw_only_deathnotices 1execute_client_cmd
engine
valuehud‚   6   9     X €K  -   9  B    X€K  - 99  + BK  À;ÀFlashWindowCget_cs2_hwnd
valueflash_taskbar›  
	 #6   9     X €K  6  9  6 9'  -  8 - 8&6 - BH€6 98  X	€ 	  &	FRö6  9 BK  ƒÀ„À…Àexecute_client_cmd
engineauto_buy_selector_other
pairs auto_buy_selector_secondaryauto_buy_selector_main
valueauto_buy_enableë   +   X€+ L   9  B    9 ' B  X€  9 ' B  X€  9 ' B  X€  9 ' B  X
€  9 ' B  X€  9 '  BL incendiary
decoymolotovgrenade
smoke
flash	find
lower   
 96   9     X €K  -      X €K  -   9     X€)    X€K  -  9  X€K  9  X€K  6  B  X€K  6  B  X
€6    X €6 9	7
 6 + =	X€  X€6    X€6 6
 =	7  K  q€prev_thirdperson_statemisc_thirdperson	menuwas_holding_utilityis_utility
tostringm_hActiveWeaponm_pWeaponServicesm_iHealth
valuefirstperson_on_utilitiesÄ   
G6   9     X €K  -      X €K  -   9     X€K  9   X€K  9  X€K  96 9	  X€)c  X€6  9'	 B1 X"€	 X €-   X€6  9'
 B1 X€6 9	 X€)c  X€6  9'
 B1 X
€	 X€-   X€6  9'	 B1 K    €switchhandsleftswitchhandsrightexecute_client_cmd
engineknife_hand
m_nPricem_pWeaponDatam_hActiveWeaponm_pWeaponServices
valueknife_in_other_hands 6  +  + 3  7 6 B2  €K  q€switchknife î  	%6   9     X €K  -      X €K  -  9  -  9) B 	   X €+  X€+  7  -   9     X€6     X €6  9  '  B 6  9  ' B K  q€<À
-jump
+jumpexecute_client_cmd
engineon_ground
m_fFlags	band
valueedge_jump ¯  r6   9     X €6  9     X €6  9  ' B 6  + = 6  9      X €6  9  ' B 6  + =  K  -      X €K  6 	 9 
 6 9
B 6	 9
6 9B6 9'
 B6 + =6 B   X€6 9  X€6 9' B6 + =X€   X€6 9  X€6 9' B6 9' B6 + =6 + = 6 9  X€*   X
€6 9   X €6 9' B6 + = 6 9   X €-   X€6 9' BK  q€v€
+jump
-duck
+duckspace_pressedget_duck_amountunbind space
ctrl_keyspace_keyis_key_pressed
utilss
-jumpjump_pressedbind space +jumpexecute_client_cmd
enginespace_unbindair_duck_settings
value
air_duckµæÌ™™³æþå     6   9  B    X€9 )   X€)  L 9   X€)  L 9  X€)  L   9 B9! X€)  L zget_abs_originm_flHeightAtJumpStartm_pMovementServicesm_iHealthget_local_player_pawnentitylist¸   w6   9     X€K  6  9     X €-   9  	   X 
€6  9     X€6  9   ' B +  7  K  6 	 9 
 ) B    X€K  6 
 9  B    X€K  9
 
 X
€6 9 ) B X€+ X€+ 6 B  X€)  X€6 9  X €6 9 ' B6 + =K    X€6 9  X
€6 9  X €6 9 ' B6 + =)7  X
€6 9  X	€  X €6 9 ' B6 + =6 9  X
€)7  X €6 9 ' B6 + =6 =K  q€
+duckwas_on_groundget_jump_height	band
bit32
m_fFlagsget_local_player_pawnentitylistis_key_pressed
utilss
-duckexecute_client_cmd
engineis_duckinglong_jump_settingsm_MoveTypelong_jump
value
air_duck¬
   õ6   9     X €-   9     X €6  9  ' B -   + = K  6  9   B    X€K  9   X€9	 )   X€K  - 9
 ) B  X€+ X€+ 9
   X€K  - 99
)¢ B  X€-  + =- 99
)¢ B	  X €-  9  X€-  + =- 99
)  B	  X€  X€6 9' B-  9  X€6 9' B-  + =-  + =  X6€- 99
)  B  X/€-  9  X+€9)  X€9-  9 X €-  9  X€-  + =-  9  X€9)  X€9)(  X
€-  9  X €6 9' B-  + =-  9=X€-  9=-  + =  9 B  X€K  6 9 99			B6 * )	 +
 B6  9  6	 B	6
 99
9B

  B   X
€-  9  X	 €6 9'
 B-  +	 =	  X€9   X	€-  9  X	€6 99
9
 9

!


B9						 X €6 9'
 B-  +	 =	-  9  X	€  X €-  +	 =	6 9'
 B-  +	 =	K  †À‡À;À
unduckedabs	mathhit_point
ray_ttrace_shapetrace_filter_tyx
vec3_tget_abs_origin
+ducklast_velocity_zzpeak_detectedjump_activated
-jumpbindtogglerGetAsyncKeyStateCm_vecAbsVelocity	bandm_iHealth
m_fFlagsget_local_player_pawnentitylist
-duckexecute_client_cmd
enginehigh_jump_off
valuehigh_jump  €ˆ€’€È(ô  06  9  X€K    9 ' B-   X#€+  6 9	  X€6 X€6 9	 X€6 X
€6 9	 X€6  X€6 9	 X€6 6	 9
)  B6
 9'
 8&BK  q€	say execute_client_cmd
engine
random	mathtrashtalk_chinesetrashtalk_germantrashtalk_englishtrashtalk_russiantrashtalk_language
attacker
get_pawn
valuetrashtalkú   /6   9     X €K  6  6 9	  X€6  X€6 9	 X€6  X€6 9	 X€6  X
€6 9	 X€6   X€6 9	 X€6  6	 9
)   B6
 9'
 8 &BK  	say execute_client_cmd
engine
random	mathpredator_spammersharkhack_spammeraimware_old_spammeraimwareV6_spammershadowlua_spammerspammer_modeshadowv2_spammer
valuespammer
ƒ  66  B' &   &6 9 ' B  X	€-   9'   &  B4  L  9 '  B  9	B4   9
'	
 BX	€
	 )
  

 X

€	 9
	'

 B
 
 X
€6
 9

 
	 B
E	R	ïL À
insert
table
^%s*%-%-
match
[^
]+
gmatch
close *a	read#[Shadow] Failed to open file: add_messager	open io&\nix\scripts\Shadow V2\Trashtalk\get_game_directory‘  
36  9  X€K  6 9	  X€K    9 ' B-   X!€6 6 98  X€-  B. -  	 X€-  9'  BK  6 9	) -  B6
 9
' - 8&BK  q€‰€ŠÀÀ	say execute_client_cmd
engine
random	math0[Shadow] No phrases loaded or file is emptyadd_messagetrashtalk_files
attacker
get_pawncustom_trashtalk_select
valuecustom_trashtalk Ù    6   9     X
€6  9  ' 6 96  9) B&B 1  X 
€-      X  €6  9  ' - &B 1  K  ‹€ŒÀgamma_valuecreate_animation
utilssr_fullscreen_gamma execute_client_cmd
engine
value
gamma©   
 =-      X €K  6   9     X€-   9     X€6  + = 6  6 9= 6  6 9=  6  6
 9=	 6  6 9=
 1 X €6   9     X €-   9     X €-  
  X €6  - = 6  - = 6  - =  6  - =	 6  - =
 1 K  q€€À À!À"À#À#override_viewmodel_in_zoom_fovmisc_viewmodel_editor_fov!override_viewmodel_in_zoom_zmisc_viewmodel_editor_z!override_viewmodel_in_zoom_ymisc_viewmodel_editor_y!override_viewmodel_in_zoom_xmisc_viewmodel_editor_xmisc_viewmodel_editor	menum_bIsScoped
valueoverride_viewmodel_in_zoom´   -  8 - 9 '  B6 99> - 9 '  B6 99>- 9 '  B6 99>K     bgrcolor_valuecustom_smoke_color
float*	cast†  6   9     X €2 €6  9  ' 3 B K  K  ŽÀ;À C_SmokeGrenadeProjectileget_entitiesentitylist
valuecustom_smoke_colorá  C-      X €K  -   9      X€K  9   X€K  6 9=6 9 =) = 6	 9=6
 9=
6 9
=6 9
=6 9=-  996 9=6 9 =) = 6	 9=6
 9=
6 9
=6 9
=6 9=K  q€fogm_skybox3dfog_exponent
exponentcolorSecondarycolor_valuecolorPrimaryfog_endendfog_start
startHDRColorScalefog_max_densitymaxdensity
valuecustom_fog
enablem_CurrentFogm_pCameraServicesÈç   "6   9     X €K  -      X €K  -     X €-     X€-  9     X€-  9  )    X €+  X€+     X€6 9' BK  r€q€spec_mode 3execute_client_cmd
enginem_iHealth
value"force_thirdperson_in_spectate¸   @+  6  9  X€+  X€6  9  X€+     X€-    X€-   X€- 9 96 96 9)  B AX€   X€-    X€-   X€- 9 9)– B6  9  X	€6  9  X€6 9	'
 BX€6 9	'
 BK  r€q€Àcam_collision 1cam_collision 0execute_client_cmd
enginethirdperson_collisionthirdperson_distancecreate_animation
utilss
floatcam_idealdist
valueperspective_options       X€+ X€+ L V       X€  X€  X
€  X€  X€  X€  X€+ X€+ L 
#     )    X€+ X€+ L ’  t6  9  X€K    9 ' B  9 ' B  9 ' B  9  '  B-   XD€6	 6 
 BX>€6

 8

9
	9



 X8€
 X6€:
  X
€:
  X
€:
  X
-€+ :

 
 X€6
  B
 
 X €6
  B
 
 X
€+ X
€:

 
 X€6
  B
 
 X €6
  B
 
 X
€+ X
	€:

 
 X€6
  B
 
 X€+   X
€6
 
 B
ERÀ-  X€6	 6 
 BX€6

 8

9
	9



 X€
 X€:
  X
€6 
 BERðK  q€r€play_custom_hitsoundis_headis_lethalis_body	none	None	modesounds_fileshitsound_modes
ipairs
useridget_controller
attacker
get_pawn
health
hitgroupget_int
valuecustom_hitsound.  6  9-    BK  À
insert
table.  6  9-    BK  À
insert
table.  6  9-    BK  À
insert
table.  6  9-    BK  À
insert
tableì ˆ-    X€2 ƒ€-  6  98  X€- 9'  B:   X€)  4  6 9' 3   B)  ) M€8   X	€-	  	 X	€6	  9		8		 	 X
€-
 9

' 
	 B
:
 

 X

€6
 8

 
 X€- 9'	 
 B>  Oâ4  6 9' 
 3
 B)  )  M€8	 	 X

€6
 8

	 
 X
€-
 9

'
	 
 B
>  
Oò4  6 9'
 3	 B)   ) M€8
	 
 X

€6
 8


 
 X€- 9'	 
 B>  Oò4  6  9  '	 3
 B )   )	 M €8

 
 X
€6 8
  X
€-
 9

'	  B
>  
O ò+  7  2  €K  K  q€;Àreveal_radar_offhostage_spotted C_Hostageplanted_c4_spotted C_PlantedC4c4_spotted 	C_C4
uint8_t*spotted C_CSPlayerPawnget_entitiesentitylist	int*	castm_iTeamNumreveal_radar_offsets{    6   9     X 	€6     X€6  )  B +  7  K  6  ) B K  RevealRadarreveal_radar_off
valuereveal_radar‚  
z6   9     X €K  6  9  B 
   X€K  9 -  
  X€K  -  96 9 
  X€6 9  X€6 6 6 9	6 9=	=6 = 6 9
'
 B 6 9
  X
€)   X
€)
  X€6 '
 =X€6 ' =6 9 
 X€)
 X€)	 9 6  9    X €6  = 	  X €6  6 9= X  €	 X €6  6 9	=	 6  9    X €6  9 	   X €6  9     X €6  9  '	 B 6  + = 6  )  = 6  )  =	 6  +  = 6  +  =  6  )  = K  r€disconnectexecute_client_cmd
enginehas_disconnectedlast_roundsm_iRoundEndWinnerTeam2x25x5game_modeCCSPlayerControllerget_entities
t_winsct_winsplayer_teamauto_disconnect_settingsm_iTeamNumm_totalRoundsPlayedget_game_rulesentitylist
valueauto_disconnectË	  §6  9  X€K  -    X€-   X€K    9 ' B  9 ' B  X€  X€K   -   X€K  -   X€K   9B-   9B X€K   9B  X€K  )  6  9) Mo€6 9:  X	€- 9	'

 
 B6 9:  X	€- 9	'

 
 B6 9:  X	€- 9	'
 
 B6 9:  X	€- 9	'

 
 B6 9:  X	€- 9	'
 
 B6 9:  X	€- 9	'
 
 B6 9:   X	€- 9	'
 
 B6 9:  X	€- 9	'
 
 B6 9:	  X	€- 9	'
 
 B6 9:
  X	€- 9	'
 
 B6 9:
  X	€- 9	'
 
 BO‘K  q€r€Àbin/tombstone_s.vpcfbin/coins_s.vpcfbin/lightning_s.vpcfbin/flowers_s.vpcf7particles/explosions_fx/explosion_basic_water.vpcf5particles/explosions_fx/explosion_flashbang.vpcf+particles/blood_impact/blood_pool.vpcf4particles/critters/chicken/chicken_roasted.vpcf5particles/explosions_fx/explosion_hegrenade.vpcf:particles/explosions_fx/explosion_hegrenade_snow.vpcf2particles/explosions_fx/explosion_c4_500.vpcfCreateParticlekill_effects_selectkill_effects_countget_abs_originget_entity_handle
userid
attacker
get_pawn
valuekill_effectsÅ	 
 ¥6  9  X€K  -    X€-   X€K    9 ' B  9 ' B  9 ' B)   X€K    X€  X€K   -   X€K  -   X€K   9 B-    9 B X€K   9B  X€K  )  6	 9)  Me€6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:		 	 X
€-	 9	
	'

  B	6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:	 	 	 X
€-	 9	
	'
  B	6	
 9		:		 	 X
€-	 9	
	'
  B	6	
 9		:			 	 X
€-	 9	
	'
  B	6	
 9		:	
	 	 X
€-	 9	
	'
  B	O›K  q€r€Àbin/coins_hit_s.vpcfbin/lightning_hit_s.vpcfbin/flower_hit_s.vpcf7particles/explosions_fx/explosion_basic_water.vpcf5particles/explosions_fx/explosion_flashbang.vpcf+particles/blood_impact/blood_pool.vpcf4particles/critters/chicken/chicken_roasted.vpcf5particles/explosions_fx/explosion_hegrenade.vpcf:particles/explosions_fx/explosion_hegrenade_snow.vpcf2particles/explosions_fx/explosion_c4_500.vpcfCreateParticlehit_effects_selecthit_effects_countget_abs_originget_entity_handle
healthget_int
userid
attacker
get_pawn
valuehit_effectsú  	
=-      X €-     X €K  6   9     X €K  6  9     X €K  6  9  B - !  -   X €K  6  9  B .  -     9  B    X€K  6 6  9)Ôþ),B6  9)Ôþ) ,B6  9) È )B A  - 9	'
  BK  q€r€€‘ÀÀbin/snow_s1.vpcfCreateParticle
random	math
vec3_tget_abs_origin
clock osworld_effects_select
valueworld_effects‰ :   X€	   X€+  L 6  9' ' ' B6  9' ' '  B)€ )  -  9 ' :	  B-   9   '		  
B :   	   X€+  L -  9 '
	  
  

B: 	  X	€+	  L	 -	  9	 	'

 " B	:	 	6

 9	9

	9	D
 ;Àzyx
vec3_tstruct Vector*uintptr_t*uintptr_t	castm_modelStateCSkeletonInstancem_pGameSceneNodeC_BaseEntityclient.dllget_netvar_offset
engine ” 
     X€+  L 4  6  6 9BH
€6  	  
 B < 8    X €+   L  FRôL on_shot_get_bone_pos
bonesskeleton_config
pairsÕ 	
/   X€	   X€K  -    X€9  -  9  X€K  6   B  X€K  6 - BX	€9    X €6  9  B = = K  ERõ6 9	- 5
 = 6 9B== BK  q€’À 
entity start_time 
alphapositions 
insert
tablepositions
clock osstart_time
entity
ipairs#on_shot_get_skeleton_positionsm_iTeamNum ’   *   X€  X€K  6  9  B6  9 B  X€  X€K  6 6  9  9  6 996	 9		9	 	6
 9

9

"

B6  9	 	 
 6

 9


BK  thicknessskeleton_config	lineabgrcolor_valueon_shot_skeletoncolor_tworld_to_screen
renderŒ 
  p   X€K  4 4 9  >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9  >> 4 9 >9 >>4 9 >9	 >>	4 9	 >9
 >>
4 9 >9
 >>
4 9
 >9 >>4 9 >9
 >>
4 9 >9 >>4 9 >9 >>4 9 >9 >>6  BX€6 :
 :
  BERùK  on_shot_draw_bone_line
ipairsright_ankleright_kneeright_hipleft_ankleleft_knee
left_hipright_wristright_elbowright_shoulderleft_wristleft_elbowleft_shoulder
pelvis
waist
chest	neck	headž  6  9  X€K    9 ' B  9 ' B-   X€6  BK  q€on_shot_add_skeleton
attacker
userid
get_pawn
valueon_shot_skeletonž  6  9  X€K    9 ' B  9 ' B-   X€6  BK  q€on_shot_add_skeleton
attacker
userid
get_pawn
valueon_shot_skeletonÉ  -6   9     X €K  6  9  B -   ) )ÿÿM€-  89! 6  9    X €6   9  -	  
 B X €6  9  #  6
 9

  6
 9


 
B =	6
 9
9
	BOáK  ’Àpositionson_shot_draw_skeletonfade_speedpow	math
alpha
remove
table
durationskeleton_configstart_time
clock os
valueon_shot_skeleton‰ :   X€	   X€+  L 6  9' ' ' B6  9' ' '  B)€ )  -  9 ' :	  B-   9   '		  
B :   	   X€+  L -  9 '
	  
  

B: 	  X	€+	  L	 -	  9	 	'

 " B	:	 	6

 9	9

	9	D
 ;Àzyx
vec3_tstruct Vector*uintptr_t*uintptr_t	castm_modelStateCSkeletonInstancem_pGameSceneNodeC_BaseEntityclient.dllget_netvar_offset
engine ­ 
     X€  X€K  6  9  B6  9 B  X€  X€K  6  9   6 9)	 BK  color_valuehostages_skeleton	lineworld_to_screen
renderŽ 
 Y   X€K  4  6  -  9BH	€6  	  
 B < 8    X €K  FRõ6 99B6 99B6 99 B6 9 9B6 99	B6 9	9
B6 9
9
B6 9
9B6 9	9
B6 9
9B6 99B6 99B6 99B6 99B6 99B6 99B6 99BK  “À
rhand
relbowrshoulder
lhand
lelbowlshoulder
rfoot
rknee	rhip
lfoot
lknee	lhip
pelvis
spine1
spine2
spine3	neck	headdraw_boneget_hostage_bone_pos
bones
pairs>     X€   X€6    BK  draw_hostage_skeleton r   6   9     X €2 €6  9  ' 3 B K  K   C_Hostageget_entitiesentitylist
valuehostages_skeleton‰ :   X€	   X€+  L 6  9' ' ' B6  9' ' '  B)€ )  -  9 ' :	  B-   9   '		  
B :   	   X€+  L -  9 '
	  
  

B: 	  X	€+	  L	 -	  9	 	'

 " B	:	 	6

 9	9

	9	D
 ;Àzyx
vec3_tstruct Vector*uintptr_t*uintptr_t	castm_modelStateCSkeletonInstancem_pGameSceneNodeC_BaseEntityclient.dllget_netvar_offset
engine Ú
 %,
è6  9  X€K    9 ' B  9 ' B  X€  X€-   X€K  6 9B6  !*   X€K  7  )  6 6 	 9 
 BH€FRý6
 96 	 9 
 #  B6 6	 9
BH	²€6
 
 
 B
 
 X€X
«€-  9
 B6

 9

) 6	 9#B
)  ) M›€6 6
 9B6
 9B6
 9BB6 9
9 9
9 9
9 B6
 9B6
 9"6
 96
 9BB6
 9 B6
 9 B"6
 9 B6
 9 B"6
 9 B6
 9B6 6	 9"6
 9B "6	 9"6
 9B "6	 9""B6	 96
 9B6	 96	 9!" 6	 9"
"
5 = =!6" ! " # *$  B=#6	 9$6 
 9  B      " =%=&=
6
 9B6 
 9  " ='6
 9B	=(6) 9*6!	 9!+!" BOeF	R	LK  q€t€particles
insert
tablerotation_speed
rotationbase_size
max_lifemax_lifetimeglow_colorcolor_t
velocity
position 	
velocity rotation_speed 
rotation base_size 
max_life 	life glow_color 
position distance_factor distance_factorbase_size_maxbase_size_minspread_speedcossin	acos pizyx
random
vec3_tmax_distancemindist_toget_bone_positionmax_particles
floor	math
bonessoul_particles_settings
pairslast_kill_time
clock os
userid
attacker
get_pawn
valuesoul_particlesñú¨¸Ñðúü€€€ÿçÌ™³³æŒÿÍ™³ææÌ™ÿµæÌ™™³¦ÿçÌ™³³æÌþçÌ™³³æÌÿ·   k6   9     X €K  6  9  B 6 9 ) )ÿÿM\€6 989  =99    X €6 9	6 9	 BXJ€9
9 
9 
 6 9"    = 
99  #  9 
9
99	
9		"	 	"		 	= 9 
9
99	
9		"	 	"		 	= 9 
9
9
9	
9	
	"	 	"		 	=
 9 9"    = 9 9 #  ) 6	 9			  X	€6	 9		!		 6
 9



#	
		9							9
"
	=

9

 
 


"


=
O¤K  base_sizecurrent_sizeaglow_colordistance_factorfade_startrotation_speed
rotationyx
positiongravityz
velocity
remove
table
max_life	lifeparticlessoul_particles_settingsframe_time
render
valuesoul_particlesçÌ™³³æÌþµæÌ™™³æþçÌ™³³æŒÿÍ™³ææÌ™ÿÕ   X6   9     X €K  6  6 9B XK€6 99  B  X€XD€9  X €9	)  6 9
)	 M "€
 
9
"

 

99
6
 9



#


"
6
 9

 
 ) 6 6  996  996  99 B A
O Þ6   9  9 
 *   X €9 
*   X €6  9  	 
)
 6 ) ) ) 6  99
B A ER³K  bgrcolor_valuecolor_tcircle_filledaglow_colordistance_factorglow_intensitybase_sizecurrent_size
positionworld_to_screen
renderparticlessoul_particles_settings
ipairs
valuesoul_particlesµæÌ™™³¦ÿ€€€ÿçÌ™³³æŒþµæÌ™™³¦þn    
6   9     X €K  6  B 6  B K  draw_soul_particlesupdate_soul_particles
valuesoul_particles‰  	 1   X€+ L   9  B    9 ' B  X"€  9 ' B  X€  9 ' B  X€  9 ' B  X€  9 ' B  X
€  9 '  B  X€  9 ' BL 
knifeincendiary
decoymolotovgrenade
smoke
flash	find
lower¥      X€+ L   9  B    9 ' B  X€  9 ' B  X
€  9 ' B  X€  9 ' BL 
g3sg1awp
scar20
ssg08	find
lowerv   -  9 '   9 B A- 9 )ÿB6  D ;À‡À
tonumber	bandget_entity_handleuintptr_t	cast¦  	+   X€9  )   X€+ L 5 6  BX€6 9
  
  B  X	€6	 *
  ) +
 B	6
 9

6  B
  	 B
9

* 
 X
€+
 L
 ERä+ L 
fraction
ray_ttrace_shapetrace_filter_tget_hitbox_pos
engine
ipairs     m_iHealth€ˆ€’›³æÌÌ™³ÿã 
5   X€9  )   X€+ L 5 6  BX$€6 9
  
  B  X	€6	 *
  ) +
 B	6
 9

6  B
  	 B
9

* 
 X
€9
	
 
 X €-  9

 * B	 X€+ L ERÚ+ L ‡À	band
contents
fraction
ray_ttrace_shapetrace_filter_tget_hitbox_pos
engine
ipairs     m_iHealth€ˆ€’›³æÌÌ™³ÿ€€€  Û  "-    X€K    9  B X€K     X €-   X€9 )   X€K  9 - 9 X€K  6   - B  X€1  K   €   is_players_visiblem_iTeamNumm_iHealthC_CSPlayerPawnget_class_namev  -      X €-   9   )    X €+  2  €+  6 93 B2  €L  L  q€t€ get_entitiesentitylistm_iHealth8     X€)  L 6  9  D 
floor	math€€€ÿ´ 
 0-  9 ' -  9 '  :  B- 9 B: -  9 ' -  9 ' 	 B-  9  - 9     B: -  9 ' -   9   '	 
 B - 9 "   B: 6 9 	9
9	
D ;À”Àzyx
vec3_tbone_spacingstruct Vector*pBoneMatrixmodelStatepGameSceneNodeuintptr_tuintptr_t*	cast…   	L-      X €+  L  -   9      X€9   X€9   X€+ L 6 99 ) %9 ) % B  X€+ L -  9  X€+ L - 9 - 9 B	  X€+ X€+   X€+ L -  9  X €-   X€  X€+ L -  9  X €)P  X€  X€+ L + L q€‡À”Àx€m_bIsScopedFL_ONGROUND	band
m_fFlags	sqrt	mathyxm_vecAbsVelocity ™   ®   X€-    X€K  9  	  X€9   X€K  6 9:  X€9 -  9 X€K  6 9:  X€-  9)   X€K  6 9:  X€-  9- 9  ) B  X€+ X€+   X€K  6 9:  X
€6 - B  X€-  9	  X€K  6
   - B6 9:  X€  X€K  6
 - BXU€6  	  
 B 6
 9
  B  X	K€9	-
 9

9

!	
	9
-
 9

9

!


6
 9

)
 %

	) %
 

B
6 9
 X
4€6
 9

	
 X
€9
 



#

 - 9 X$€- =- =- =
- 9 =- = -   9 B=- =X
€-
 9



 X

€-
 =

-
 =
-
 = 
-
   9 B=
-
 =
ER©K     ÀÀÀ  Àvisibleget_index
index
entity
health
distancepos
scorem_iHealthaimbot_priorityaimbot_fov	sqrt	mathyscreen_centerxworld_to_screen
renderaimbot_get_bone_pos
ipairsplayers_visiblem_bIsScopedis_snipers	band
m_fFlagsm_flFlashDurationm_iTeamNum
valueaimbot_checksm_bGunGameImmunitym_lifeState ÈÍ™³ææÌ™ÿçÌ™³³æÌþƒ 
_-      X €,  2 S€-     X €,  2 O€5   6 9= 4  6 9:  X€6 9  )  B6 9:  X€6 9  ) B6 9:  X€6 9  ) B 	  X€, 2 (€-  9-  9	  X€, 2 !€9
  X€,  2 €6
   B  X€2 €6  B  X €, 2 €6
 9' 3	 B9 9  9 9	 9
 2  €J J  J  J J J K  J q€r€‡À”Àvisible
index
entitypos C_CSPlayerPawnget_entitiesentitylistis_not_legit_weapon
tostringm_hActiveWeaponm_pWeaponServicesm_vecEyePosition
insert
table
valueaimbot_bones
distance	huge	math 
score 
distance visible
healthd
indexÿÿÿÿ ÷  !7¿6   9     X €K  -      X €K  -   9     X€K  9   X€K  6  B  X€K  6 B6 B-	  9	 	6
 9
	
B
-
  9


6
 99

) %9
) % B-
 9



 X

€-
 9

 
 X €6
 9

' B
-
 + =
  X
Ä  X
Â6
 9


 
 
 X
€+
 X€+
  
 X¸€- 9 X
€- =
- + =- + =- =- 9  X
€- 9!
6 9 X€- + =- + =- 9	 X€- =
- + =- + =) -   X€+ X€+ =   X€- 9  X	€- + =- + =- )  =   X€- 9  X€- 9  X€- 9	 X€- =
- + =- + =- 9  X
€- 9!
6 9 X€- + =- + =- 9  X`€9
- 99
!9- 99! X€6
 9) %) % B)   XI€##6  9#""- - 9! =!- - 9" ="6
 9#- 9!B6
 9#- 9"B- - 9!!=!- - 9"!="	 X€ X€- 9$9%)   )  )   BX€- )  =- + =- + =- )  =- + =- + =- + =6& 9  X'€   X%€6 9 X€6'  B  X€6( B)   X€- 9)  X€6 9'* B6 9'+ B- + =)X €- 9)  X€- + =)6, 9  X8€   X6€  X4€6 9 X2€6- 9.)W + B6- 9.)A + B6- 9.)S + B6- 9.)D + B- + =/)F  X€6- 9.)W + B6- 9.)A + B6- 9.)S + B6- 9.)D + BX€- + =/60 9  Xq€
  X€- 9  X
€- 9  X €6 9  X€+ X€+   XE€- 91
 X€- 9  X €6 9' B- + =K  - 9263 9 
 X€- 9  X €6 9' B- + =K  6, 9  X€  X€- 9  X €6 9' B- + =K  - 9  X€  X€6 9'4 B- + =- =
2X
€- 9  X €6 9' B- + =95 XS€- 66 9 
=1- 66 9 
=XH€- 9  XD€6 9' B- + =X
<€-
 )  =!
-
 )  ="
-
 + =)
-
 + =/
-
 )ÿÿ=
-
 )  =
-
 + =
-
 + =
-
 )  =
-
 + =
-
 + =
-
 + =
-
 9

 
 X €6
 9

' B
-
 + =
6
& 9

 
 X	€6
'  B
 
 X€6
 9

'+ B
K  q€”À;Àaimbot_autofire_kill_delaym_lifeState+attackaimbot_autofire_shot_delaylast_shot_timetarget_dead_timeaimbot_autofirewas_movingsimulate_key
utilssaimbot_autostop
-attack2
+attack2autoscopedget_zoom_levelis_snipersaimbot_autoscopemouse_eventC
floorremainder_yremainder_xaimbot_smoothscreen_center"aimbot_autofire_reaction_timeautofire_reaction_startautofire_can_shootautofire_in_reactionaim_locked_on_targetaimbot_reaction_timeaim_can_workaim_in_reactionaim_reaction_startlast_target_indexaimbot_fov-attackexecute_client_cmd
enginewas_shootingkill_delay_lastyx	sqrt	mathm_vecAbsVelocity
clock osm_vecEyePositionweapon_is_at_max_accuracyget_target_enemy
tostringm_hActiveWeaponm_pWeaponServices
value
aimbot 
–  "6   9     X €K  6  9  6 9) B    6 9  X
€6 9 -  9  )< 6 9	)  B- 9
  X€K  6
 BK  ”À$Àaimbot_update
isOpencolor_valuescreen_center
circle
renderaimbot_visualize_fovaimbot_fovcreate_animation
utilss
value
aimbotŠ c  9  B-  9 X€K  6 9:  X€9 -  9 X€K  6 9:  X€-  9)   X€K  6 9:  X€-  9- 9  ) B  X€+ X€+   X€K  6 9:  X
€6 - B  X€-  9	  X€K  6
 9
B6 6
   X€K  6
 9
B6 6   X€K  6 9' B6 9' B6
 9
B7 -  97 K     Àlast_target_index-attack+attackexecute_client_cmd
engineshot_delaylast_shot_timereaction_timelast_target_time
clock osm_bIsScopedis_snipers	band
m_fFlagsm_flFlashDurationm_iTeamNum
valuetriggerbot_checksm_iIDEntIndexget_index Ñ   Y6   9     X €2 L€6  9  7  6  9  7  6  9  7   -      X €2 @€-   9  7 	 -   9 
    X€2 9€9
   X€2 6€6  B  X€2 1€6
  B  X€2 ,€6 9B6  X€6 9' B2 "€6 9B6  X€6 9' B2 €-  9)   X€6 9' 3 BX€6 9B7 2  €K  K  K  K  K  K  K  K  K  q€‡Àlast_target_time C_CSPlayerPawnget_entitiesentitylistm_iIDEntIndexkill_delay_last-attackexecute_client_cmd
enginetarget_dead_time
clock osis_not_legit_weapon
tostringm_hActiveWeaponm_pWeaponServiceslocal_teamm_iTeamNumkill_delaytriggerbot_kill_delayshot_delaytriggerbot_shot_delayreaction_timetriggerbot_reaction_time
valuetriggerbot«  -      X €K  6   9     X €K  6  9  B    X€K  )    9 B ) M\€   9  B  XU€9  X R€-   XO€99 -   9  9     XH€6 9	 )	  B6  9 	 	 )
 B 6 9	
 )
 B  X	€   X	€  X	€K  -	  
	 9	
	B	9

	

=

	6
 9

-  
	  B
6
 9

-
  	   B
6 9-  	  B 
 X
€)
  
 X
€ 
 X
€)
  

 X
€  X

€)
  
 X
€-
 	
 X
 €6

 + =
6
 9

B
.
 O¤6 9B- !*  X€6
 + =0 K  q€•€
clock osragebot_anti_aim	menutrace_bulletzget_abs_originget_hitbox_pos
enginem_iTeamNumm_hControllerget	sizeget_entitiesentitylist
value
e_peek€ €€Àþÿ 	+   X€6  9  X€+ L -  9' -  9'    B6  9 B: -  9' -  9'    B6  9  B: 	  X€)    X€+ X€+ L ;ÀnLifeState
uint8_t*nHealthuintptr_t	int*	cast
null_ptrtrails_settings .    6  9# B"! L 
floor	math¡   %6  9  X€K  5 = 6 9=6 9 B  X€)  =6	 9
6 9
 B6 9
 6 9 X€6	 9
6 9
) BL 
removemax_points
points
insert
tabletime_created
clock os
lifetimetrails_settingspos time_created 
lifetime pos 
value
trailsì  ‰6   9     X €K  6  6 9 = -      X €6  -  : B    X €K  -     9  B 6 9  X€  9  6 96 9 89B6 9	 X
€6
 6 96 9
B	 X€6   B6 9 ) )ÿÿM€6 989
)   X €6 96  9   BX	€6 986 989
 =
Oè6 9 )  X.€) 6 9  ) M'€6 986 9  8 9 
6 9
#     9
6	 9	
	#	 6	 9		9
B	6
 9

9B
 	 X

€ 
 X
	€6
 9


	 
 6  96 9B
OÙK  q€	sizecolor_value	lineworld_to_screen
render
remove
table
lifetimenew_point
intervalmodmin_distanceposdist_to
pointsget_abs_origin
is_alivecurrent_timetrails_settings
value
trails Ç   $ ³-      X €K  6   9     X €K  6  9  B    -  ) )ÿÿM
€- 89! )¸
 X€6 9-   BOó-  
  X€-  9 	 X‹€-  9
  X€- 9	-  9) B X€+ X€+   X€-   X€6 9
- 5 6
 -  
 9B9
-	  
	 9		B	9		-
  
 9

B
9

B== B. 6 - BXW€9 !    6	 9		)
  B	
 



)
 ) )
 * 6 6  996  996  99	 B6 6  996  996  99 B9#
6 9  X€) 
 ) M€"#
 
9"!6 999 B6 99   
6
 )!  )"  )#  B AOæ6 99
  
 6
 )  )  )  B AER§X€1 K  q€–À‡À—€circle_3d
renderjump_circle_glowabgrcolor_valuecolor_tmax	math
ipairs
position 
position 	time zyxget_abs_origin
vec3_t
insert	band
m_fFlagsm_lifeState
remove
table	time
clock os
valuejump_circleÐ ð.€€„µæÌ™™³æý‰ :   X€	   X€+  L 6  9' ' ' B6  9' ' '  B)€ )  -  9 ' :	  B-   9   '		  
B :   	   X€+  L -  9 '
	  
  

B: 	  X	€+	  L	 -	  9	 	'

 " B	:	 	6

 9	9

	9	D
 ;Àzyx
vec3_tstruct Vector*uintptr_t*uintptr_t	castm_modelStateCSkeletonInstancem_pGameSceneNodeC_BaseEntityclient.dllget_netvar_offset
engine ©     X€+  L 4  )  6  6 9BH€6 
  
  B  X	€< FRö)  X€+  L L get_bone_pos
bones backtrack_skeleton_settings
pairs„ 
     X€  X€  X€ L 6  9 99  ! " 9 9 9 !  "    9  99	 !	"   D zyx
vec3_t}     X€L     X€L 4  6   BH 
€8	   	 X
 €6
 	 
  B
<
 X
€< F R óL lerp_vector
pairs° 
     X€  X€K  6  9  B6  9 B  X
€  X€6  9   6 9)	 BK  color_valuelocal_backtrack_skeleton	lineworld_to_screen
render€ 
  o   X€K  4 4 9  >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9 >>4 9 >9  >> 4 9 >9 >>4 9 >9	 >>	4 9	 >9
 >>
4 9 >9
 >>
4 9
 >9 >>4 9 >9
 >>
4 9 >9 >>4 9 >9 >>4 9 >9 >>6  BX€6  :	:
B ERúK  draw_bone_line
ipairsright_ankleright_kneeright_hipleft_ankleleft_knee
left_hipright_wristright_elbowright_shoulderleft_wristleft_elbowleft_shoulder
pelvis
waist
chest	neck	headš  t-      X €K  6   9     X €K  6  9  B    X €K  6  9  B 6 9 ! *   X1€6 -  B  X*€6	 9
6 9
5 = 
=B6 9
 )   X€6 9
:9
! *  X€U €6	 96 9
) BXê6 9
 )
  X€6	 96 9
) B6 =  6 9
 )   X$€6 9
:6 9=6 9  X€6 6 9=6 9  X€6 9  X
€6 6 6 96 96  9  B=6 6 9BK  q€draw_skeletoninterpolation_speedinterpolate_skeletonscurrent_display_positionstarget_positions
removepositions	time 	time positions backtrack_data
insert
tableget_skeleton_positionslast_update backtrack_skeleton_settings
clock oscamera_in_thirdperson
engine
valuelocal_backtrack_skeletonµæÌ™™³¦ýµæÌ™™³¦þØ   6   9     X €K  6  9  B    X €K  -      X €K  -   9     X€K  + = 6  9 = K  q€color_valuem_glowColorOverridem_bGlowing
m_Glowcamera_in_thirdperson
engine
valuelocal_player_glow›  
 "6   9     X €K  6  9  B    X €K  -      X €K  -   9     X€K  9   X€K  9  X€K  + = 6  9	=K  q€color_valuem_glowColorOverridem_bGlowing
m_Glowm_hActiveWeaponm_pWeaponServicescamera_in_thirdperson
engine
valueactive_weapon_glowé 	-  9 9   X€-    X€9   X€K  - 6 9B  . - - )  ) B+  = 6  9   = K      color_valueteam_glowm_glowColorOverridem_bGlowingframe_time
render
m_Glowm_iTeamNum€€€ÿ‰  6   9     X €2 
€-      X €2  €6  9  ' 3 B K  K  K  q€7€8À C_CSPlayerPawnget_entitiesentitylist
valueteam_glow©   
 (-      X €K  -   9      X€)    X€K  -  9  X€K  -  99  X€K  6 9' ' '  B  X€K  - 9'	 8B: . K  q€˜€;À
int32_t*	castm_zoomLevelC_CSWeaponBaseGunclient.dllget_netvar_offset
enginem_hActiveWeaponm_pWeaponServicesm_iHealthH      X€+ L   9  B    9 ' D 
knife	find
lowerõ 
`6  9  X€K  -    X€K  -  9  X€K  9  X€K  6  B  X€K  *  -  9  X€*  - 6  9=X.€-  9  X*€6   B  X%€- 	 X€* 6	 9- -  9 
 6  9-	 9	
	!	"   = X€- 	 X€* 6
 9- -  9  6  9-	 9		!	"   = - - 9
-  9  - 9
!  "    =
- 9
= K  q€™À˜€fovcurrent_fovdef_zoom_fov2#override_fov_second_zoom_valuedef_zoom_fov1override_fov_zoom_value
is_knifeoverride_fov_valuetarget_fovm_bIsScoped
tostringm_hActiveWeaponm_pWeaponServices
valueoverride_fovµæÌ™™³æý€€€ÿÈË 	
 /6  9  X€K  -    X€K  -   X€K  +  6 B  X€6 9X€6 9  X€6 9X€)Z ) - - !6 9 6  9 	 B "  ) B" . - =
 K  q€r€š€fovframe_time
rendermin	mathoverride_fov_valueoverride_fovoverride_fov_on_move_valuewasd_pressed
valueoverride_fov_on_move    ! "  L ê  	*	   X€'  L X$€	  X€' L X€	  X€' L X€  X€	  X€' L X€	  X€' L X€  X€	   X€' L X €	  X€' L X€'  L K  UnknownStomach	Legs	Neck	ArmsGeneric
Chest	Head 
¶ w6  9 6  9  ) B9 )   )	 )
 6
 9

 
 X €-
  6
  9

B
 
 X€-
  6
	 9

B
6 9  X
 €-  6  9
 B  X
€-  6	 9
 B6
  9


6   B6    B
 ) B
6
  9


6   B6    B ) B
6
 9

 
 X €-
  6  9 B
 
 X€-
  6	 9 B
6  9- 6   B6  	  
B
 B6  9 6 96    B
 ) BK  C€À	texttexturetext_primary	rect
vec2_trect_filledhitlogs_outlinetheme_standarthitlogs_bgcurrent_theme
valuecolor_synchronizationxVerdanalogs_settingscalc_text_size
render(€€àÿ›³æÌÌ™³ÿ€€è€,l    6   9  ) B    X€6  + = X €6  + = K  
LBMStatelogs_settingsis_key_pressed
utilss± S6  9  X€K  6 9  X€K    9 ' B-   X€K    9 ' B  X€K  - 9 - 9' 	 6
 9
8B: B  9 ' 
 B   9 ' B  9 '	 B6 
 9  	 B 6  9'
 
   
  B-	 9		'
 - 6
 9

8
B	:	 	6
 9

6
 95
 =
 	=
6 9B=
B
K  q€;Àr€start_time
clock osnTickBase
szText flAlpha nTickBase 
szText start_time 
statefade_in
insert
tablem_nTickBase	int*0Hit %s in the %s for %d Damage (%d HP left)
formatGetHitgroupName
hitgroupdmg_health
healthget_intm_sSanitizedPlayerNamelogs_settings
char**	cast
string
useridget_controller
attacker
get_pawnhitlogs
value	logs€û 	'6  9  X€K  6 9  X€K  6 9'   B-  9'  - 6 9	8B: 6
 9
6 95 =
  = = 6  9  B = BK  ;Àr€start_time
clock os
reasonnTickBase
szText flAlpha nTickBase 
szText start_time 
reason 
statefade_in
insert
tablem_nTickBaselogs_settings	int*	castMissed Due to %s
format
string
misslogs
value	logs€…  
 %  9  ' B  9  ' B  X€  X€K  6 9B  X€K  -   X€6 + =-   X€6 6 9	B= 6 + =
K  q€
selfHurt
clock os
lasttime	hurtlogs_settingsget_local_player_pawnentitylist
userid
attacker
get_pawn«    9  ' B-   X€6 + =6 + =6 )  =6 )  =6 )  = K  q€
_timestarterprevBullets
selfHurt	hurtlogs_settings
userid
get_pawnÓ	  ï6   9     X €K  -      X €K  6  9  6 9B6 9 !B *    X  €6  9     X€6  + = -   9 	    X €-   9 	 9 
    X €K  -   9 	 9 
 9 
 -  9	9
96 9
	 X €6 = 6 -  9	9
=-  9	9
6 9 X
€6 )  =
6 -  9	9
=6 = 6 + =6 9  X€6 = 6 9  X’€6 9	 X€6 6 9B=6 9 X…€6 9B6 9!*  X|€6 = 6 9  X€6 )  =K  6 9  X	€6 + =6 = 6 )  =Xb€6 9  X€6 9  X€*  X€*  X
€6 9' B6 = 6 + =6 )  =XG€6 9  X€6 9  X€6 9' B6 = 6 + =6 + =6 )  =X/€6 9  X€6 9  X€*  X
€6 9' B6 = 6 + =6 )  =X€6 9  X€6 9  X€*  X€6 9' B6 = 6 + =6 )  =6 )  =6 6 9
=
K  q€Unknown
Spread
AimpunchPrediction Erroradd_misslog
LBMState
_time	hurtprevWeaponprevBulletsstarterm_fAccuracyPenalty
m_iClip1m_hActiveWeaponm_pWeaponServices
selfHurt
lasttimelogs_settings
clock osabs	math
value	logs‡×ÇÂ
…—þ Óðú¨õÑðýµæÌ™™³æü÷Ñðúáõ‘ü?   
9  99 9  X€+ X€+ L start_time	data³ ,
Ê6   9     X  €6  4  = 6  4  = 2 <6  9  B -    X €6 4  =6 4  =2 04  - 9   X8€6 9  X€6 9  X €6 5	 6
 9
B==6
 9 5 6 9=BX€6 +  =6 9  X€6 9  X€6 5 6
 9
B ==6
 9 5 6 9=BX:€6 +  =X6€6 9  X€6 6 9BX€9    X €)   = 9    X €)   = 6 
 9  	 5
 =
B ERî6 9  X€6 6 9BX€9    X €)   = 9    X €)   = 6 
 9  	 5
 =
B ERî 	 X€2 º€6
 9 3 B) * )   ) ) ÿÿM€8	9		=	 
 
Oú ) ) ÿÿM¡€8	9		-
 9
 
 
 X
^€9
	 
 X
€6
 9

9	)
 6 9BB
=
	9
	*
 

 X
M€'
  =
	6

 9


B
=
!	X
F€9
	 
  X

€6

 9


B
9
!	!


)
 

 X
;€'
" =
	X
8€9
	 
" X
5€6
 9

9	)
  6 9BB
=
	9
	*
 

 X
'€6
 9



 )
 )ÿÿM

€6 98
	 X €6
 9#6 9
 BX
€O
ó6
 9



 )
 )ÿÿM

€6 98
	 X €6
 9#6 9
 BX
>€O
óX	<€-
 9
 
 
 X
€9
	=
	X

€6
 9

9	9
	6 9BB
=
	6
 9
$
9%	6
 9
&
) B
9
'

 
) 9
' !





	
9( 9	 
6 9)
  9%	9	B6* 9  X
€- 	
 
  - 6* 9+9	B) ) BO_K  K  K  K  r€$ÀLÀC€color_valuelogs_glowcreate_log_windowyxVerdana
szTextcalc_text_size
remove
fade_outdisplay_startdisplayframe_time	LerpflAlphafade_in
state 	sort 	data 	type	Miss 	data 	typeHit
target_ycurrent_y
ipairs 	data 	type	Miss flAlphacurrent_y 
szTextMissed Due to Spread
target_y start_time 
statedisplaydemo_miss	data 	data 	typeHit
insert
tablestart_time
clock os flAlphacurrent_y 
szText6Hit Player in the Head for 100 Damage (0 HP left)
target_y start_time 
statedisplay
demo_hit
isOpenscreen_size
render
misslogshitlogslogs_settings
value	logs€€€ÿ €€àÿÍ™³ææÌ¹ÿµæÌ™™³¦ýF€€ø€ô—  
 6   9  6 96 96 96 9  X€6 9.  X€- .  6  -  =6	 9  X€K  6
 96
 96 96 
 9    X€6 9  X€6
 +	 =	6 +	 =	6
 +	 =	6  = X5€  X€6 9  X€6
 +	 =	6 +	 =	6
 +	 =	6  =X#€  X€6 9  X€6
 +	 =	6
 +	 =	6
 +	 =	6  =X€   X€6 9  X
€6
 +	 =	6
 +	 =	6 +	 =	6  =6 =6 =6 =6 = 6
 9  X	€6  = X€6
 9  X	€6  =X
€6 9  X	€6  =X€6
 9  X	€6  =K  œ€›À	left
right	backforwardlast_statesaa_left
aa_rightaa_backaa_forwardmanual_aa_override%ragebot_anti_aim_base_yaw_offset	menuaa_yaw_value
aa_yawaa_left_valueaa_right_valueaa_back_value
valueaa_forward_value   
 )6   9     X €6  9     X €-      X €6  - = 1  K  6  9     X€6  9      X€6  9     X€6  9 	    X€6  )  = X €6  ) = 1  K  ž€À
right	left	backforwardlast_statesragebot_anti_aim_pitch	menuzero_pitch_with_manuals
valuemanual_aa_overrideÞ  
 26   9     X €6  9     X€6  9     X€6  9     X€6  9     X€6   9     X€-      X €6  - =	 1  K  6 
 9 
 ) )d B 6 9  X €6  ) =	 X €6  )  =	 1  K  Ÿ€Àpitch_jitter_chance
random	mathragebot_anti_aim_pitch	menuzero_pitch_with_manuals
right	left	backforwardlast_states
valuepitch_jitter´  	-  9   ' 6 6 '  ' B' B A .   -   	   X €+  L  -  9   '  -  B .  +  L  ¢€;À£€'void*(__fastcall*)(uintptr_t, int)update_exposure_ptra48 89 5C 24 ?? 57 48 83 EC ?? 8B FA 48 8B D9 E8 ?? ?? ?? ?? 84 C0 0F 84 ?? ?? ?? ?? 40 F6 C7client.dllfind_pattern
assertuintptr_t	cast µ 		 !-    X€K  -  9   X€K  9  X€K  + =)  =)  == = -   X€- - 9 '  : B)  BK  q€£€;Àuintptr_t	castm_flMinExposurem_flMaxExposurem_flExposureFadeSpeedDownm_flExposureFadeSpeedUpm_bExposureControl"m_hActivePostProcessingVolumem_pCameraServices    1  K  ¡€å  #6   9  6 9) B    6 9  X€)   6 9	 X€6 )  B-    X €-   X	€6 9 X€.  6   B1  K  ¡€ €set_exposure
exposure
valueexposure_valuecreate_animation
utilss÷Ñðúáõ‘ü ·  '6   9     X €K  5   6 9)  6 9B9B= -  9 =	 6 9) ) B=
 6 9)ÿÿ) B =
 6 9
-  9  BK  ¤Àsnowflakes_menu
insert
table	sway
speedysnowflake_size_menu x 
speed 	sway y xscreen_size
render
random	math
valuesnow_in_menuµæÌ™™³æýÉ  
 B6   9     X €K  6  9  B -  -  9  =-  9 -  9 X
€-  9-  9  X€6 B-  )  =-  9 ) )ÿÿM€-  989	9 
  =	9
9   -   9 
   =
9	6  9  B 9 	   X€6 9-  9	 BOäK  ¤À
remove
tablescreen_sizewind_menu	swayx
speedycreate_snowflake_menuspawn_delay_menumax_snowflakes_menusnowflakes_menuaccumulated_time_menuframe_time
render
valuesnow_in_menu   $6   9     X €K  6  -  9B X€6 96  9	 9
B -  9	6	  9	
	6

 6  9
96
  9

9


6  9
9)  B
 AERçK  ¤Àbgrcolor_tcolor_valuesnowflake_size_menuyx
vec2_tcircle_fade
rendersnowflakes_menu
ipairs
valuesnow_in_menuƒ   
6   9     X€-   9  
  X €6  B 6  B K  $Àupdate_snowflakes_menudraw_snowflakes_menu
isOpen
valuesnow_in_menuK   9  9   X
€9  9  X€9 9  X€+ X€+ L yx… v  )  X€2 p€6  9  3 B4  6   BX(€  )   X €U €     8   89	9
 !	
	9
9
 !


"	
	9
9
 !


9
9 !

"


!	
	)
  	
 X	 €6	  9		
 B	X	ßX €X Ý6   9   	 
 B ERÖ4    ) )ÿÿM*€8   )	 	 X€U€  8	 8		9
	9
!


9
 9!

"


9
	9!

9 9
!
"

!


)
  

 X
 €6
  9

 B
X
ßX€XÝ6  9 
 
  BOÖ)   ) M€6   9   	 8
B Oú2  €L L  
insert
removeyx
ipairs 	sort
tableØ      X€K  -  9 ' - 98 B: )   X€K  -  9 ' - 98 B-  9 ' - 98 B4  )   )  M>€8	 	 X
:€	8		

 
8




8

6  9	 B*
 
 X+€)@ )
  M
%€6  9	 B6  9
 B 	6  9
 B 
6 9
6   
 B A   X
€6 9 5 9=9==BO
ÛOÂ )  X€K  6   B4  6  	 B X
€6 9 6 9
9
B AE
R
ö6  9  	 6
 6 996
 9

9

6 99* B
 A 6  9  	 6
 9

)
 B K     poly_linebgrcolor_valuemolotov_radiuscolor_tconcave_polygon
vec2_t
ipairsconvex_hull
angley x 
angle y x
insert
table
vec3_tworld_to_screen
rendersincosradabs	mathfirePositions
float*bFireIsBurning
bool*fireCount
int32_t*	castµæÌ™™³æýÐ €€€ÿw  
6   9     X €2  €6  9  ' + 3 B K  K  ;À¥À C_Infernoget_entitiesentitylist
valuemolotov_radius÷ U   X€K  -  9 8   X€K  - 9'  B:   X€K  +  -  98   X€  X€- 9'   B6 : :	:
B X€-  98   X
€  X
€- 9' 	 B6  :	 :
:
B     X€K  6  9  )ª 6		 9	
	)
 B6  9
  )ª 6	 6
	 9


9


6	 9
96
	 9

9

* B	 AK     bgrcolor_tcircle_filled_3dcolor_valuesmoke_radiuscircle_3d
rendersmokeOrigin
vec3_t
float*smokeDetonationPos
bool*	castbDidSmokeEffect €€€ÿ„  
6   9     X €2  €6  9  ' + 3 B K  K  ¦À;À C_SmokeGrenadeProjectileget_entitiesentitylist
valuesmoke_radiusS   
   X€6  ) ) )   D 6  9 9 9 9  "  D abgrcolor_tø 
*6  9B  X€K  9#)   )	 M €"

#

9"

!
6
 -  999-  999 -  999 B
6	 9
   
  
 BO ãK  §À	line
renderbgr
color
configcolor_tacamera_in_thirdperson
engineÆ  "©6  9B  X€K  
   X€
  X€K  -  96 6 99 6 996  9  9 	 *  B=-  96 9=
6
 9)Äÿ6
 9
) < 9B A6  99 B6
 9 B-   9  9  "      4  6	
 9				-
  9

9

#	
	)
 -
  9

9

) M
€
"	6
 9 B-  99"6
 9 B-  99""  " 6 9  BO
ä4
  )
  )
 M
€6 98B  X€6 9
  BO
ô)
 
 )
 M
€8

 $8
  X€  X€6   -  99-  99-  99-  99 B O
æ)
 
 )
 M
€8

 $8
  X
€  X
€6 9!  -  99
-  99 BO
ëK  §À	linethicknessglow_intensityglow_radiusdraw_glow_lineworld_to_screen
render
insert
tablesin
radiuscos
segments piheight_offsetangle_vectors	rollyawangle_t
pitchminmax	math
colorbgrcolor_value	halocolor_tglow_color
configcamera_in_thirdperson
engineµæÌ™™³æý£ 	-  9   X€K  )  ) ) M€6 9    B
  X€9  X€-  = X€OòK  §À
head_0bone_nameget_hitbox
enginehead_hitbox_indexþÿÿÿi   
-   9   6 96 9) B= K  §À
valuehalo_radiuscreate_animation
utilss
radius
configÉ  
,6   9     X €K  6  9  B    X €K  6  B -   
   X €K  6  -  B -  9  	   X €K  6  9   -  - 9B 
   X€K  -  9
  X€K  6	    BK  q€§Àdraw_3d_halom_angEyeAnglesget_hitbox_poshead_hitbox_indexfind_head_hitboxhalo_update_configcamera_in_thirdperson
engine
value	haloþÿÿÿˆ   M-   9   9  )A B 	   X €+  X€+  -  9 9)D B	  X€+ X€+ -  9 9)S B	  X€+ X€+ -  9 9)W B	  X€+ X€+   X€6 6 9=X
€  X€6 6 9 =X€6 )  =  X€6 6 9=X
€   X€6 6 9 =X€6 )  =K  ;À
angleroll_target
angle2pitch_targetbodycam_settingsGetAsyncKeyStateC Ø   	?6   9  6  9!  6 9  B*   X€6  6  9=X€6  6  96  9)    X€) X€)ÿÿ" =6  96  9 !6 9 B*   X€6  6  9= X€6  6  9 6  9)   X€) X€)ÿÿ" = K  
speed	rollroll_target
speed2abs	math
pitchpitch_targetbodycam_settingsµæÌ™™³æýÐ   
 6  9  X€K  6 9 =6 B6 B6 96 6 9 6 99	6 9
B = K  	rollyaw	base
pitchangle_tupdate_anglesupdate_keys
anglesbodycam_settings
valuebodycam_mode    ! "  L Ä  ™6  9    B6  9    B!)    X €K  )     X €    X !€6  6	 9		9		6
 9

9
 
6
 9

9

6 99	6
 "
B 9	 )	  	 X€6
 96

  
 B
6

 
 B
  BK  6  6	 9		9		6
 9

9
 
6
 9

9

6 99	6
 "
B )  6	  9		
B	)
 M€#
6
 9 9  9 9	 "B
9	
)   X
€6
 96
  
 B6
  
B
 BOæ  X€  6	
 9		6

  


 B
6
 !B
 B	!	)
 M€!
#6
 9 9  9 9	 "B
9	
)   X
€6
 96
  
 B6
  
B
 BOåK  
vec2_trect_filled
render
alphaabgrcolor_valuecustom_scopecolor_tmaxmin	mathÄ  ™6  9    B6  9    B!)    X €K  )     X €    X !€6  6	 9		9		6
 9

9
 
6
 9

9

6 99	6
 "
B 9	 )	  	 X€6
 96

  
 B
6

 
 B
  BK  6  6	 9		9		6
 9

9
 
6
 9

9

6 99	6
 "
B )  6	  9		
B	)
 M€#
6
 9 9  9 9	 "B
9	
)   X
€6
 96
   
B6
  
B
 BOæ  X€  6	
 9		6

 
  B
6
 !B
 B	!	)
 M€!
#6
 9 9  9 9	 "B
9	
)   X
€6
 96
   
B6
  
B
 BOåK  
vec2_trect_filled
render
alphaabgrcolor_valuecustom_scopecolor_tmaxmin	mathû %Oë6   9     X €2 b‚6  9  B    X €2 ]‚-      X €-     X €2 W‚6  9  B -  9 )  -    X€-  9  X€-  99	  X€6 9
'
 '  '
 B  X	€- 9'  8B:  X€)  6 9  X€  X€+ X€+ 6   X]€5 6 9B=5 6 9=6 9=6 9  X €)  =6 9=6 9= 6! 9="6# 9=$6% 9=&='5( 6 9=6 9=6 9  X €)  =6 9=6 9= 6! 9="6# 9=$6% 9=&=)5+ 6* 9=6, 9=6- 9  X €)  =6. 9=6/ 9= 60 9="61 9=$62 9=&=37 6 9)6 9=6 9)6 9=6 9)6 9  X€)  =64 9  X€6 9)6 9=6 9)6 9= 6 9)6! 9="6 9)6# 9=$6 9))  =&X€6% 96 9)=6 9)= 6 9)="6 9)=$6 9)=&6 936* 9=6 936, 9=6 936- 9  X€)  =65 9  X€6 936. 9=6 936/ 9= 6 9360 9="6 9361 9=$6 93)  =&X€62 96 93=6 93= 6 93="6 93=$6 93=&  X€6 93  X€6 9)  X€66 9  X€67 96 9B6  9  ! 6  6 9B= 6 8 	 B H
€69 9:6 9'8
!
B*
 
 X€6 9'6
 9
'
8

6 9'8
!
"" 

<
X€6 9'<

F
R
ã6 ; 6= 9>6
; 9
<
6
= 9
?
6
= 9
@
) ) B
 A
  A=< 6 A    X €)   7 A 6 A   X€) X	€)  6	A !	""   7 A 6 A *   X €2 ë€9 B    9C  9	C 		6
 9
'
-
 9
D
9
B
9B 
 X
!€-
 9
D
9
C
9C 
 X
€-
 9
A
6A 
 X
€-
 9
E

	 X
€-
 9
'
9

9

 X
€-
 9
'
9

9

 X
€-
 9
'
9

9

 X
€-
 9
D
9B =B
-
 9
D
9C =C
-
 6A =A
-
 =	E
-
 9
'
9
=
-
 9
'
9
=
-
 9
'
9
=
-
 9
F
= B
-
 9
F
=C
9

"
	
6A "

9
)
  
 X€9
   X
€)  "

"
9
"	"9
"	"
 
 9
"	9
"	6G   X€5H 7G 
 6G 6G 9'6G 9'!"" ='9
"	6A "9 
"	6A "9"
"	6A ""9$
"	6A ""  X€6I   X€6J   X€9  X€5K 3L 3M :  X€ 6 9 9 N !"B 6!9 9!N!!#!##B!6"9 9"N"$  B"# B:  X€ 6 9 9 N  "B 6!9 9!N! # ##B!6"9 9"N"$  B"# B:  X€ 6 9 9 N  " B 6!9 9!N! #  ##B!6"9 9"N"$ B"# B:  X€ 6 9 9 N !" B 6!9 9!N!!# !#
#B!6"9 9"N"$ B"# BK  K  K  K  K  q€r€;ÀªÀ
floor    custom_scope_selections2custom_scope_override_second_scope_selections current line_anim
center	mult
screenyx
alpha
lshift	bnot	band
bit32misc_removals	menuabs	math
pairs!custom_scope_animation_speed7custom_scope_override_second_scope_animation_speed9custom_scope_override_second_scope_separate_distance#custom_scope_separate_distance
override6custom_scope_override_second_scope_lines_distance5custom_scope_override_second_scope_left_distance6custom_scope_override_second_scope_right_distance7custom_scope_override_second_scope_bottom_distance4custom_scope_override_second_scope_top_distance4custom_scope_override_second_scope_aspect_ratio;custom_scope_override_second_scope_lines_gradient_size 
right 
bottom gap point_length top 
aspect line_length 	left 2custom_scope_override_second_scope_lines_size
normal 
right 
bottom gap point_length top 
aspect line_length 	left currentgap custom_scope_lines_distance	leftcustom_scope_left_distance
right custom_scope_right_distance
bottom!custom_scope_bottom_distancetopcustom_scope_top_distance
aspectcustom_scope_aspect_ratiopoint_length%custom_scope_lines_gradient_sizeline_length 
right 
bottom gap point_length top 
aspect line_length 	left custom_scope_lines_sizelast_time line_current 
override current 
normal last_time 
clock osscope_anim'custom_scope_override_second_scope
int32_t*	castm_zoomLevelC_CSWeaponBaseGunclient.dllget_netvar_offsetm_hActiveWeaponm_pWeaponServicesm_bIsScopedscreen_size
rendermaps/<empty>.vpkget_level_name
engine
valuecustom_scope÷Ñðúáõ‘üðÈÅ 	      B6  9B  X€9  X
€6 9  X	€  X €-  9'   B)  >L ;Àunsigned char*	cast
valuecustom_scopem_bIsScopedget_local_player_pawnentitylistÑ 
	!  9  B-  9' -  9' :	  B-  9    B: 6 99   9  9    99	 	B  X€9 =L ;À¬Àzyx
vec3_tvecViewOffsetuintptr_tVector*	castget_abs_origin(  >   X€-    X€9  )   X€-  99  X€9 	  X€K  6 96 99  B6 - 9 BH€6  9 	 	  
 B 
   X €6
 9

  B
  X	 €6	 9		-
  6
 -  + B
  B	 	 X
€	 X
€-
 +
 =

X€FRàK     can_shootget_eye_postrace_bulletworld_to_screen
renderget_hitbox_pos
engine
bones
pairs
value duck_assist_default_min_dmgmin	mathm_iTeamNumm_iHealth ó  P-   + =  6  9     X 
€-     X €-     X €-  9  )    X €-   9     X €6  9  '  B -   + = 2 1€6  9 	 '
 3
 B -  9     X €2  €K  -  9  9 
    X€2  €K  -  9   X€-  9  X€)   X€6 9'  B-  + =X
€-  9  X €6 9' B-  + =K  K  ¬Àq€r€
+duckm_flDuckSpeedm_pMovementServices C_CSPlayerPawnget_entitiesentitylist
-duckexecute_client_cmd
engineis_duckingm_iHealth
valueduck_peek_assistcan_shoot@   
6  9 9!9 9!9 9 ! D zyx
vec3_tO   6  99 9 "9 9 " 9 9 " D zyx	sqrt	math2   6  6     B C  vec_subvec_lengthé 
  6  9  X€K    9 B-  9' :  B-  9' 6 9  B: 6 9	9 	  9 
9
   9
9	
 	D ;Àzyx
vec3_tvecViewOffsetai_peek_settingsVector*uintptr_t	castget_abs_origin
valueai_peek¶ 
 +6  9  X€K  -  9' :  B-  9' 6 9 B: -  9' 6  9      6 9   B: -  9' 	 6 9
" B: 6
 99	
9
D ;Àzyx
vec3_tbone_spacingVector*pBoneMatrixmodelStatepGameSceneNodeai_peek_settingsuintptr_t*uintptr_t	cast
valueai_peekí 	 
:   X
€-    X
€9    X €9 	  X€9 )   X€K  -   X€9 -  X€K  6 96 9 9 B6   )  B9	=	6
 -  -   B6
 -  -   B  X€ X€1   X€ X€1 K    À ÀÀÀ€€trace_bulletzai_peek_get_bone_pos
valueai_peek_mindmgmin	mathm_iTeamNumm_iHealthm_lifeStatem_bDormant Ô 
W6   9     X €+  )  2 N€6  6 9= 6  6 9= -      X €+  )  2 A€6   -  B 6 - B6 9"! 6 9"  + + -   9 	 6
 9

 9B6	
 9		'
 3 B	  X	€  X	€+	 )
ÿÿ2  €J	   X	€  X	€+	 )
 2  €J	   X	€  X	€+	 6
 9

B
*
  

 X
€)
ÿÿX
€)
 2  €J	 +	 )
  2  €J	 J  J  q€s€
random	math C_CSPlayerPawnget_entitiesentitylist
get_boolmp_teammates_are_enemies
cvarsm_iTeamNumangle_vectorsget_eye_positionai_peek_limit_meterspeek_limit_metersai_peek_offsetpeek_offsetai_peek_settings
valueai_peek€€€ÿ¤   6  9  X€)  L *  * 6 9# !" 6 9BL 
floor	mathpeek_limit_metersai_peek_settings
valueai_peekù§¯ÍÄÁú€€€ÿó    $6   9     X €+  L  -      X €+  L  -   9     X €K  -   9  9     X€+ L 9 6 9 X€6 =+ L 6 =+ L q€last_ammo_countai_peek_settings
m_iClip1m_hActiveWeaponm_pWeaponServices
valueai_peek³   6  9  X€K  6 9  X€K  -    X€K    9 ' B-   X€6 + =K  q€enemy_hit
attacker
get_pawnis_peekingai_peek_settings
valueai_peekü  $q6   9     X €K  6  9     X€K  6  B    X€K  -    X€K  -   9B6 -  B6  - B	  X€6 9"!  X €6 9" 6 	 	 
 B 6
 9

  6
 9



B   6	 6
  B
=

	-	  9		 	 X	€K  -	  9		9		 	 X
€6
 9
	=

6
 +
 =

6
 =
6
 6
 9
99B
=

6
 +
 =

6
 6
 9

B
=

6
 )
  =

6
 +
 =

6
 +
 =

	  X
€6
  9
!
'" B
X
€6
  9
!
'# B
K  q€s€
+right
+leftexecute_client_cmd
engineenemy_hitjump_performedreturn_start_time
clock ospeek_start_timeis_returningzyx
vec3_tstart_pos
peek_dir
m_iClip1last_ammo_countm_hActiveWeaponm_pWeaponServicescalculate_peek_timecalculated_peek_timepeek_limit_metersmin	mathget_distancepeek_offsetangle_vectorsget_eye_positionget_abs_originshould_peekis_peekingai_peek_settings
valueai_peekþÿÿÿÙ×××ÞÞŽ‚Íª°Ôõ„èüï   F6   9     X €K  6  9     X €6  9     X€K  6  9  	   X 	€6  9   ' B 6  9   '	 B X €6  9   '
 B 6  9   '
 B 6  9     X€6  9 
    X€6  9     X €6  9   ' B 6  9   ' B 6  + = 6  + =
 6  + = 6  6 9B= K  
clock osreturn_start_time
-jump
+jumpjump_performedenemy_hitai_peek_jump_on_return
+left
-right
+right
-leftexecute_client_cmd
engine
peek_diris_returningis_peekingai_peek_settings
valueai_peekþÿÿÿ™    6   9  ' B 6   9  ' B 6  + = 6  + = 6  +  =  6  )  = 6  )  =	 6  + =
 6  + =
 K  enemy_hitjump_performedreturn_start_timecalculated_peek_timestart_posis_returningis_peekingai_peek_settings
-right
-leftexecute_client_cmd
engineá
  &‰6   9     X 
€6  9     X€6  9     X€6  B K  -      X 
€6  9     X€6  9     X€6  B K  6   9  6 9  X€  6 = 6  96 9	B6  96 9
B6  96 9
B6  96  9  B X€ X€ X€   X '€6  9     X€6  9     X€6 
 9  '	 B 6 
 9  '	 B 6  + = 6  + = 6  +  = 6  )  = 6  + = 6  + = 6  + = K  X €6  + =   X 
€6  9     X €6  9     X €6  B K     X €6  9     X 
€6  9     X  €6  9     X €6  B K  6  9     XL€6  9     XH€-   	  9  B 6 
  6
 9

B)	 	 X	€6	 B	K  6	 9		B	6
 9

!	
	)
 
	 X
€6
 B
K  6
 6 9
  B
6
 
 B
)  
 X!€6 - B9
#
=
9 
#
= 
9
9
"9 
9 
" 6 9!	  X €*  X
€6 BK  X€*  X€6 BK  K  6  9     X)€6  9     X %€6  9  B 6 9"! 6	# B	 	 X
€6	 B	K  6	 9	$		 X	€6	 B	K  -	  
	 9		B	6
 	 6
 9

B
6
 9
%




 X€6 BK  K  q€s€peek_limit_meterscalculated_peek_timecheck_shot_firedpeek_start_time
peek_diryxangle_vectorsvec_lengthvec_sub
clock osget_distanceget_abs_originstart_peekstart_returnmovement_blockedenemy_hitjump_performedreturn_start_timestart_pos
-right
-leftexecute_client_cmd
engine	VK_D	VK_S	VK_A	VK_Wis_key_pressed
utilsswas_holding
stop_allis_returningis_peekingai_peek_settings
valueai_peekþÿÿÿ€€€ÿ
€€€ÿÙ×××ÞÞŽ‚‡    6   9     X 
€6  9     X€6  9     X€6  B K  K  
stop_allis_returningis_peekingai_peek_settings
valueai_peekX   -      X €+   L  -   9      X€-   9  L  q€m_vecVelocitym_vecAbsVelocityœ  
  9-      X €6   )  )  )  D  6  B    X€6  )  )  )  D 6 9- B  X€  X€6  )  )  )   D 99 "99 " 99 " 99 "99 " 99 " 6     9	 D q€s€zyxangle_vectors	mathget_velocity
vec3_tr  -      X €+  L  -   9      X€+ L - 9  ) B  X€+ X€+ L q€‡À	band
m_fFlagsã     &-      X €+  L  -   9      X€+ L 9   X€+ L 6  B 9B 9' B
  X€ 9' B
  X€+ X€+ L q€
scout
ssg08	find
lower
tostringm_hActiveWeaponm_pWeaponServicesŸ   -      X €+  L  6   B    X€+ L 6 99 B- 99  X€+ X€+ L q€­Àvertical_threshold
settingszabs	mathget_velocityî  T-      X €+  L  -     9   B    X€+ L 6 9 9 9  B  -  9  X€+ L 6 9 B  X€+ L )   9B) M*€	 9 	
 B    X#€-    X €9
 9	   X
€)
  
 X
€ 	 X
€	 X
€6

 9

  )
  B
 
 X
€6

 9


-
    
 B
 
 X€6 9
 X€+ L OÖ+ L q€
valueautostop_in_air_mindmgtrace_bulletget_hitbox_pos
enginem_iHealthget	sizeget_entitiesentitylistm_iTeamNumzyx
vec3_tget_abs_origin€ô    M-   9   - 99)  )  )  B -   9   - 99)  - 9)  B -   9   - 99)  )  )  B -   9   - 99)  - 9)  B -   9   - 99)  )  )  B -   9   - 99)  - 9)  B -   9   - 99)  )  )  B -   9   - 99)  - 9)  B K  3À­À	VK_D	VK_S	VK_AKEYEVENTF_KEYUP	VK_W	keyskeybd_eventÅ  
&é6   9     X €K  -      X €-   9  )    X €K  6  B    X R€-  9  9     X€6  9   ' B -  9  + = -  9 	 )  = -  9  9 
    X€6  9   '
 B -  9  + =
 -  9 	 )  = -  9  9 
    X€6  9   ' B -  9  + =
 -  9 	 )  =
 -  9  9     X€6  9   ' B -  9  + = -  9 	 )  = 6  9     X €6  + = -  + = -  + = K  6  B    6 B6 B
  X€ X€   XR€- 99  X€6 9 ' B- 9+ =- 9	)  =- 99
  X€6 9 '
 B- 9+ =
- 9	)  =- 99
  X€6 9 ' B- 9+ =
- 9	)  =
- 99  X€6 9 ' B- 9+ =- 9	)  =6 9  X€6 + =- + =- + =K  - + =6 + =- 9  X€- + =6 B6 B- 996 9B  X €*  9   X €-  9  9 
    X €-  9  + =
 6  9   '	  B -  9 	 )  = -  9  9     Xl€-  9  + = 6  9   '	 B X c€9    X €-  9  9     X €-  9  + = 6  9   '	! B -  9 	 )  = -  9  9 
    XI€-  9  + =
 6  9   '	
 B X @€-  9  9 
    X€-  9 	 - 9	9 = -  9  9 " - 9	9  X €-  9  + =
 6  9   '	
 B -  9 	 )  = -  9  9     X€-  9 	 - 9	9 = -  9  9 " - 9	9  X €-  9  + = 6  9   '	 B -  9 	 )  = 9 #  X €-  9  9 
    X €-  9  + =
 6  9   '	$ B -  9 	 )  = -  9  9     Xl€-  9  + = 6  9   '	 B X c€9 #   X €-  9  9     X €-  9  + = 6  9   '	% B -  9 	 )  =
 -  9  9 
    XI€-  9  + =
 6  9   '	 B X @€-  9  9 
    X€-  9 	 - 9	9 = -  9  9 " - 9	9  X €-  9  + =
 6  9   '	 B -  9 	 )  = -  9  9     X€-  9 	 - 9	9
 =
 -  9  9 " - 9	9
  X €-  9  + = 6  9   '	 B -  9 	 )  =
 K  q€­À
+right
+leftyhold_time
+forward
+backxframe_time
rendervelocity_threshold
settingsget_relative_velocityblock_wasdis_hoveringis_aiming_at_enemyis_on_groundstop_activeauto_strafer_was_enabledragebot_auto_strafer	menuadaptive_autostrafe
-right
right
-left	left
backward
-back	back
timers
-forwardexecute_client_cmd
engineforwardkeys_statehas_ssg08m_iHealth
valueautostop_in_airù§¯ÍÄÁü¨ 
`-    X€-  9 )   X€K  6 9  X€K  6 9) B  X€K  - 9-  9- 9 ) )   B A	  X€+ X€+   X€K  6 B)   X€ X€)  	  X€6 9) B  X€0  K  - !)   X€* X€) 6	 9
6	 9

 B6	 9	
	B			"		B-  )   X€ X€    .  9  6 )
  )
  - B   =  K  q€‡À®€
vec3_t
originframe_time
renderabsmin	mathget_duck_amount
lshift
m_fFlags	bandis_key_pressed
utilss
valueremove_visual_duck_assistm_iHealth €€àÿ$Ö Í6  9  X€4  L 4  4  6 -  BXS€9  X€9   XM€9   X	J€6 9
 BX
D€9
 
 X
A€9
	 
 X>€+
 9   X€9	  X€9
 X(€9	 X€6
 9
9 B
 X€9	 X€6
 9
9 B
 X€9   X€9	  X€9 9 X€+
 X€+
 X€9	 X€6
 9
9 B
  
 X
€9
 5 9
 =
9 === 9 =<E
R
ºER«6 6 9BHY€6 9
 BX
S€9

 X
€9
 
 X
M€9
 
 XJ€6
 9B
XD€9  XA€9	  X>€+ 9  X€9	  X€9X(€9	 X€6
 9
9 B X€9	 X€6
 9
9 B X€9  X€9	  X€99 X€+ X€+ X€9	 X€6
 9
9 B   X
€9
5 9
=
9===9=<ERºE
R
«FR¥6  BH€6 9
 
  BFRùL GÀ
insert
table setting 
value 	type bind_data 	name customSettings
elementselementSettings
pairssettingbind_data setting 
value 	type bind_data 	name 	nameslider_valueis_key_pressed
utilssshow_in_list	nonekey
binds
slider
checkbox	type
ipairs
valuekeybinds_listß  
b9 9  9  X6€' 6 9 B&6  9  9	 B9
!  6  9
  9
	 B9
 X	€ X	€	  )
 
	 X	€U	€
  9	
 ) )
þÿB	 	 6	  9		
  ' &

9	 B	9
	X	ê	  '
 
 &	
	L	 X	*€	  
 &	
	L	 X%€6  9 9 	 B9
 X€  X€ )    X€U€ 9
)	 )
þÿB 6  9 '	 &	9		 B9
Xê '  & L X€L K  ...subx	fontcalc_text_size
render
value
tostring - 
slider	type
width	name÷  m6  9  X€K  9   X€K  6 9B6 9-  9B5 9  = 9	 =	9
 =
9 9  X€9 9 9
  X
€9	9	 X€9	9	9
  X€+ X€+   X€  X
€9   X
€+ = 9 9  !=
 9	9	 != 9   X%€  X#€9 9
 !=  9	9 !=	 6 9B6 9)  6	 9		9
  9 9
 !
B	 A=  6 9)  6	 9		9
	 9	9

 !
B	 A=	   X€+ = K  AÀminmax	mathscreen_size
renderdrag_offset_ydrag_offset_xis_dragging
height
widthy x 
height
width y xLBUTTONis_key_pressedget_mouse_pos
utilssvisible
valuekeybinds_list¼ $-ê6  9  X€K  9   X€K    9 B) ) 6 9  X€6 9  X€6  96 9  X€6 9  X€6  96 9  X €6 9	  X €6  9	6  9     X€6  9     X€6   9   )	   	 X€+ X	€+   X	€)	 X
€)	    X
€-
  9


 
 X
€K  9

  
 X
€5
 6

 9

B
=

=

 6

 9

B
9

 9

!


9
 =
 )
  
 X€ "   X
€)  9

 =
)
 9
 9
 99
 99
 9!"
"
 =9
 9
 99
 9!	"
"
 =9
 6 9)  6 99
 96 9 )  B A A=9
 6 9)  6 9) 9
 9B A=9
 9 = 6 9  X€- 9 9 9 9
 9 6 9) ) B9
 9*  X;€6 9999 B6! 9"6# 9 9  B6# 9 9  9  9
 9 B ) B6 9999 B6! 9$6# 9 9  B6# 9 9  9  9
 9 B ) ) B6! 9"6# 9 9 B6# 9 9  9  B ) B6! 9$6# 9 9 B6# 9 9  9  B ) ) B9 9  ) ) 6! 9%- 6#  B6#   B  B'& 6! 9' 9( B6! 9) 9( 6# 9 9 9! 	9 9!  B B9  
 )   X$€9
 9*
  X€6*  BX€  9+  B6 9999  9!
 9!!" ! B6! 9) 9, 6 # 9" "
"# B ! B ERåK  $ÀLÀÀ	fontget_bind_display_text
ipairs	textheader_fontcalc_text_size
Keybindstexture	rect
vec2_trect_filled
renderabgrcolor_tcolor_value
widthyxkeybinds_list_glow
heightminmax	mathtext_alphacurrent_heighttarget_heightlast_time
clock os text_alpha current_height target_height last_time expand_animation
isOpenkeybinds_linekeybinds_bgtheme_standarttext_primarycurrent_themecolor_synchronizationget_active_bindsvisible
valuekeybinds_list€€àÿ€€€ÿçÌ™³³æÌÿÍ™³ææÌ™ÿ0÷Ñðúáõ‘üâ  	 6   9     X €K  6  9  -  9B 6 9)K B   X
€  X€6   X€6 6 9  = 7  7 K  AÀlast_insert_statevisiblekeybind_listlast_k_state
INSERTis_key_pressed
utilss
valuekeybinds_listÙ  ”6  9  X€K   )  )x 	 6
 9

 	
			6
 9

 
 X
€6
 9

 
 X
€6
  9

6
 9

 
 X€6
 9

 
 X€6
  9

6 9  X
€6 9	  X
€6  9	6
 9

 
 X€6
 9

 
 X€6
  9

6 9  X€6 9  X€6  96
 96
 	 B6
  	 B
 * B 	6 9 6 9)¦ÿ X€6
 9' 6 96
  B
 ) B6
 96
  B6
    B * B6
 96
  B6
   B
 B 6 9 ) ) 6
 9-  6
  B6
   B BK  Àtextureicon_offset	lineverdanaShadow.lua	texttext_offset
vec2_trect_filled
renderwatermark_linewatermark_bgtext_primarytheme_standartleft_panelcurrent_themecolor_synchronizationleft_panel_offsetwatermark_settings
valuewatermark
€€€8Ú   6   9     X €K  6  9  B 6 6 9 =6 9! )  X	€6 6 9= 6 )  =6 = K  current_fpslast_time_for_fpsframe_count_for_fpswatermark_settings
clock os
valuewatermarkâ  *è6   9     X €K  -      X €K  6  9  B 6 9- 9B6 = 5 6	 9
 '
 6  B & B6	 9
 '
 -   9  & B6 9)c  X	€6	 9
 ' 6  9  & BX	€6	 9
 ' 6  9  ' &B6	 9
 '
 6  9  '	 B ' &B6	 9 B6 9 6  9  ) B9) 9  6 9   X €9  6 9  X 
€9  6 9  X  €9  6 9   X €+  X€+  6 = 6 9  X	€)ˆÿX	€)çÿ6	 6
 9

6
 9

!

6 9"

6 9B"

 


=
	6	 9		 	 X
€)	¡ÿX
€)	  6
 6
 9

6 9!	6
 9

"
6
 9

B
"
 

=

6
 9

 
 X
€)
°ÿX
€)
P 6
 6 9 6
 9
 
!
6 9"

6 9B"

 
= 
6
 9

 
 X€)
ˆÿX€)
çÿ6 6
 9
!
6 9!!
6 9""6 9B" 

=
!6 9  X
€)x X
€) 6
 6 9#6 9#!6 9""6 9B" =#
6
$ 9
%
6 9!B
* 
 X
€6
 =
6
$ 9
%
6 9!	B
* 
 X
€6
 =	
6
$ 9
%
6 9 !
B
* 
 X
€6
 =
 
6
$ 9
%
6 9!!
B
* 
 X
€6
 =
!
6
$ 9
%
6 9#!B
* 
 X
€6
 =#
9
 6 9 
 X
€9
 6 9 
 X

€9
 6 9
 X
 €9
 6 9 
 X
€+
 X€+
   X€6 9&  X€ 
 X€6 + ='6 9 6 9!=(6 9 6 9!=)6 9'  X€6 9   X€6 9 6 9(!=6 9 6 9)!=6 9   X€6 + ='6 =&K  r€AÀdrag_offset_ydrag_offset_xis_draggingprev_mouse_stateabs	mathglow_widthglow_animation_speedglow_offsettext_offseticon_offsetframe_timeanimation_speedleft_panel_offsetis_hoveredyxverdanacalc_text_size
render
concat
%H:%M:%S	date os 
 | fps: current_fpsm_iPing | ping: get_user_name | 
insert
table  Shadow.luamouse_downwatermark_settingsLBUTTONis_key_pressedget_mouse_pos
utilss
valuewatermark<µæÌ™™³æýÌ   $”6   9     X €K  6  B -      X €K  6  9  B 6 B4  6 9   B6 9  ' -   9 	 & B6
 9
)c  X	€6 9  ' 6 
 9 
 & BX	€6 9  ' 6 
 9 
 '
 &B6 9  ' 6  9  '	 B '
 &B6 9 B6 9 6 
 9  ) B9) 6  B 6  9     X€  6
 9     6	
 9				6

 9

 	
			-
 	6
 9



 6 9) )
 B
6  9     X€6  9     X€6  9  6  6

 9



6

 9

 
 6 9!  B 6 9"
 6

 9

6# 6
 96
 9  B
  ) BK  r€LÀ
vec2_t	textcontainer_bgcreate_windowtheme_standarttext_primarycurrent_themecolor_synchronizationcolor_valueyglow_offsetglow_widthwatermark_glowupdate_watermark_positionxverdanacalc_text_size
concat
%H:%M:%S	date os |  
 | fps: current_fpswatermark_settingsm_iPing | ping: 
insert
tableget_user_namescreen_size
renderfps
valuewatermark
$¼ !:«   X€K  6  + =9 9 9 9 9 9  6   9     6  9	 )	 )
 6

 9


B
6
 9-  9
B6
  =
9

6  96  9!
 X
€9

6  96  9 6  9 
 X
€9
	
6  9	6  9!
 X

€9
	
6  9	6  9 6  9 
 X
€+
 X€+
   X€6  9  X€ 
 X€- 9
 X€6  + =6  9
6  9!=6  9	
6  9	!=6  9  X1€6  9  X-€6  9
6  9!=6  9	
6  9!=	6 9B6  6 9)  6 96  996  9!B A=6  6 9)  6 96  9	9	6  9!B A=	6  9  X€6  + =6  =6  96  + =6 9  X€6 9  X€6  96 9  X€6 9!  X€6  9!6 9  X€6 9"  X€6  9"6 9#6$ 6  96  9!6  9	6  9!B6$ 6  96  9 6  9 6  9	6  9 6  9 B ) B6 9%6$ 6  96  9!6  9	6  9!B6$ 6  96  9 6  9 6  9	6  9 6  9 B ) B6& 9  X€- 6  96  9!6  9	6  9!6  96  9 6  96  9 6& 9') ) B6  9(  X€  X€6  - =)6  + =( 	 X€) X€)
 6  96 9*6$  6  9	 B6$  6  9	6  9  B ) B6 9  X€6 9"  X€6  9"6 9+- 6$   B6$  	  
B B  X2€6 9  X€6 9"  X€6  9"6 9)  - 6  9)!!B)
  X€6, ) )  )  ) B  X€ 6 9-6. 9/'0  B6  916$ 6  9 6  9	B B  X"€  X €6 9  X€6 9"  X€6  9"'2 	 X€'3 X€'4 &6 9- 6  916$ 6  9	6  9	
B B  X]€  X[€  XY€6  95  X€6  96  X€6  - =76  + =5- 6  97!6 9)  !B6 9  X€6 9"  X€6  9"6 9  X€6 98  X€6  986 9-6. 9/'9  B6  916$ 6  9 6   9 	  
 B B6  9	6 9*6$ 6  9 B6$ 6  96   9    6   9      B6 9!) BX€6  + =56  =6K       À Defuse time: %.1fwatermark_linedefuse_start_timelast_defuse_statedefuse_activeBA
Site: 	fontBomb time: %.1f
format
string	textcolor_ttexture	linebomb_start_timebomb_activecolor_valuebomb_timer_glow	rect
vec2_trect_filledtext_primarybomb_linetheme_standartbomb_bgcurrent_theme
valuecolor_synchronizationminmax	mathscreen_size
renderdrag_offset_ydrag_offset_xis_dragging
isOpenprev_mouse_staterect_heightrect_widthpaddingmouse_downLBUTTONis_key_pressedget_mouse_pos
utilssyxm_bBombDefusedm_pBombDefuserm_flTimerLengthm_flDefuseLengthm_bBeingDefusedm_nBombSitefound_bombbomb_indicator
Pdn( &"Zü )´6   9     X €2 .6  9  B -  9  X 6 9  X6 9  6 9 ) ) 6	 9
B6	 9
- 9B6  =
 9  6 9 6	 9		!	  X €9  6 9 6	 9		 	6	 9		 	  X €9 6 96	 9		!	  X 
€9 6 96	 9		 	6	 9		 	  X €+  X€+    X€6 9  X€   X€-  9
 X€6 +	 =	6 9	 6
 9
 
!	
	=	6 9	6
 9

!	
	=	6 9  X	1€6 9
  X	-€6 9	 6
 9

!	
	=	 6 9	6
 9

!	
	=	6 9B6	 6
 9

)  6
 9

6 9 9 6 9!B
 A
=
 	6	 6
 9

)  6
 9

6 996 9!B
 A
=
	6 9
  X€6 +	 =	6 =6 9  X	€6 9  X	€6 96	 9		 	 X
€6	 9		 	 X
€6	 9		6
 9

 
 X
€6
 9

 
 X
€6
 9

6
 9
 
6
! 6 9 6 9!6 96 9!B
6! 6 9 6 9 6 9 6 96 9 6 9 B ) B
6
 9
"
6
! 6 9 6 9!6 96 9!B
6! 6 9 6 9 6 9 6 96 9 6 9 B	 ) B
6
# 9

 
 X€-
 6
 9
 
6 9!



6 96 9!6 96 9 6 96 9 6# 9$) ) B
6% 9&'' 3( B2  €K  K  $ÀAÀLÀÀ C_PlantedC4get_entitiesentitylistcolor_valuebomb_timer_glow	rect
vec2_trect_filledtext_primarybomb_linetheme_standartbomb_bgcurrent_themecolor_synchronizationminmax	mathscreen_size
renderdrag_offset_ydrag_offset_xis_draggingprev_mouse_staterect_heightrect_widthpaddingmouse_downLBUTTONis_key_pressedget_mouse_pos
utilssyxfound_bombbomb_indicator
isOpen
clock os
valuebomb_timer
P² 
  X6  98  X€6  95 <6  98+   X€6 9:X!€  X€6 9:X€   X€6 9:X€ 9' 	 B  X€6 9:X
€ 
 X€6 9:X€ 
 X€6 9:   X€  X€+ =6 9) 9 
6 9B6	  9		"	   B=
X€+ =6 9)  9 
6 9B6	  9		"	!  B=
K  maxanimation_speedframe_time
rendermin	math
alpha
active
AimbotTriggerbotAA:	findAI PeekDuck Peek
valuefunc_indicators_select
Rage Bot 
alpha 
active
target_y current_y 
statesindicatorsV  -  9  8  X€)ç-  9 8  X€)ç  X€+ X€+ L À	text¢ D
ø6   6 9B H”€+   X
€6 9:  X €6 9   X €+ Xq€  X
€6 9:  X €6	 9  X €+ Xd€ 
 X
€6 9:  X €6
 9  X €+ XW€  X
€6 9:  X €6
 9  X €6 9  X -€  X
€6 9:  X €6
 9  X €6 9  X €  X
€6 9:  X €6
 9  X €6 9  X €  X€6 9:  X 
€6
 9  X €6 9  X €+ X€  X
€6 9:  X €6 9  X €+ X€  X
€6 9:  X €6 9  X €+   X€9)     X€+ =6 9)  9	6
 9

B
6
 9

"


!	
	B=FRj4   4  6  6 9BH€9 )    X €	 9  '
! B    X€6 " 9 # 	  5
$ =%
=&
B X  €6 " 9 # 	 5
' =%
=&
B FRå5( 6" 9)  3* B4  6+  BX €6	" 9	#	
  B	E R ù6+   BX €6	" 9	#	
  B	E R ù 	  X€2  €K  6 9,B 6 9-"9.!6 + 	 B X
€
6
 9
-
"
 9
&
=/
90
	  X€=0
X€90
90
!6 9B"6 91" =0
E
R
æ6 + 	 B X
i€9%
9
&
9
90
6 92 6 93B6 9465 9  X€66 97  X€68 9765 9  X€66 99  X€68 996: 9  X€6: 9;  X€6< 6: 9;9=6: 9;9>6: 9;9?6: 9;9@"B-  9A9.  ) ) B6 9B6C 	B6C 9A 9. 	B6< 9=9>9?
B) B6 9% 6 936C   B6< 9=9>9? B AE
R
•2  €K  LÀ
vec2_trect_filledxabgrcolor_tcolor_valuefunc_indicators_glowbackgroundtheme_standarttext_primarycurrent_themecolor_synchronization
x_offset	fontcalc_text_sizeposition_speedcurrent_y
target_yyspacingscreen_size
ipairs 	sort 
AA: BackAA: ForwardAA: Right
AA: Left 	text 
state 
state	text 	text 
state 
insert
tableAA:	findanimation_speedframe_time
rendermax	math
active
alpha
aimbot
AimbottriggerbotTriggerbot
aa_rightAA: Rightaa_left
AA: Leftaa_back
AA: Backaa_forwardmanual_aa_overrideAA: Forwardai_peekAI Peekduck_peek_assistDuck Peekragebot_aimbot	menu
valuefunc_indicators_select
Rage Bot
statesindicators
pairs €€€ÿ(Í™³ææÌ™ÿ¡    b6   9     X]€6  9  :     X€6  6 9' B 6  9  :     X€6  6  9' B 6  9  :     X€6  6	 9'
 B 6  9  :     X$€6  6
 9  X€6 9'
 B 6  6
 9  X€6 9' B 6  6
 9  X€6 9' B 6  6
 9  X€6 9' B 6  9  :     X€6  6 9' B 6  9  :     X€6  6 9' B 6  B K  draw_indicators
Aimbot
aimbotTriggerbottriggerbotAA: Right
aa_right
AA: Leftaa_left
AA: Backaa_backAA: Forwardaa_forwardmanual_aa_overrideAI Peekai_peekDuck Peekduck_peek_assist
Rage Botragebot_aimbot	menuindicatorfunc_indicators_select
valuefunc_indicatorsÉ  b6   9     X €K  -      X €-     X €K  -  9  - 9- 9! )  )   X
€6 9)   6 9 )
 #
B A )   X=€6 9	B),)  9
 	 !	9	
		)
 *
 
 X
€


6
 9

6

  	 B
6
    	B6 * * * 
 B A
"
)  
 X€6 96
  	 B6
  
  	B6 6  996  996  99
 B AK  r€q€bgrcolor_valuecolor_t
vec2_trect_filledyxscreen_size
renderminmax	mathm_flFlashDurationm_flFlashBangTimem_flSimulationTime
valueflash_indicatorÈµæÌ™™³¦þ³äÈ‘™²äýÊ 	 
 56  B' &+    X€ X€ 9'  ' B 9'  ' B  X€'  '  &X€6   X€6 9	  X€) 6   X€6 9
  X€6 9
8  X€6 9
8  &L 
values
valueconfig_select	.cfgnew_config
%.cfg$[<>:"/\|?*]	gsub\nix\scripts\Shadow V2\get_game_directoryŒ 	 -6  96  98  X€-   9' BK  6  96  98  9 B- 9  B  X€-   9'   '	 &B  9
 BX€-   9'
 BK  ÀÀ%[Shadow] Failed to delete configrefresh_settings_list deleted successfully[Shadow] Config delete_fileget_settings_path)[Shadow] Cannot delete 'None' configadd_message	None
value
valuesconfig_select» 
 X6  96  98  X€-   9' BK  6   X€6 9  X€   X€-   9' BK  6  96  98  9	  B 9
' 
 '  B   X€'  '
 &-   & -  9  	 B    X€-   	  9  '
 B K  -  9  	 
 B    X€6  '  = -   	  9  '
 B 	  9  B X €-   	  9  '
 B K  À^ÀÀ%[Shadow] Failed to rename configrefresh_settings_list[Shadow] Config renamedmove_file4[Shadow] A config with this name already existsfile_exists	.cfgnew_config[<>:"/\|?*]	gsubget_settings_path,[Shadow] Please enter a new config nameconfig_name)[Shadow] Cannot rename 'None' configadd_message	None
value
valuesconfig_select«,  ~ù 6    X€6  9  X€  X€-   9' BK  -  9 B6 9  ' B  X	€ 9	B-   9' 
 BK  6 9  ' 
 B  X
€-   9'	 6

  B
&	
	BK  6 - BX	9

 
 X
€9

 
 X€9

 
 X
‡-
 
 B
 
 X‚ 99
' 6
 9
  X€' B' &B 99
' 6
 9
9B' &B 99
' 6
 9
9B' &B 99
' 6
 9
9B' &B 99
' 6
 9
9 B' &B 99
'! 6
 9"
  X€)  B' &B 99
'# 6
 9$
  X€) B' &B 99
'% 6
 9&
  X€) B' &B 99
'' 6
 9(
  X€)  B' &B 99
') 6
 9*
  X€)  B' &B 99
'+ 6
 9,
9-  X€) B' &B 99
'. 6
 9,
9/  X€'0 B' &B 99
'1 6
 9,
9293  X€)  B' &B 99
'4 6
 9,
9295  X€) B' &B 99
'6 6
 9,
929  X€) B' &B 99
'7 6
 9,
9298  X€) B' &B 99
'9 6
 9,
929:  X€)´ B' &B 99
'; 6
 9,
929<  X€)  B' &B 99
'= 6
 9,
9>93  X€*  B' &B 99
'? 6
 9,
9>95  X€) B' &B 99
'@ 6
 9,
9>9  X€) B' &B 99
'A 6
 9,
9>98  X€) B' &B 99
'B 6
 9,
9>9:  X€)´ B' &B 99
'C 6
 9,
9>9<  X€)  B' &B 99
'D 6
 9E
9-  X€) B' &B 99
'F 6
 9E
9G  X€) B' &B 99
'H 6
 9E
95  X€) B' &B 99
'I 6
 9E
98  X€) B' &BE	R	n~6 - BX	ð€9

 
J X

€
 9
9
'K 6
 9
B' &B
X
“€9

 
 X
=€
 9
9
'K 6
 9
B' &B
9

 
 Xƒ€9
L
 
 X€€
 9
9
'M 6
 9L
9B' &B

 9
9
'N 6
 9L
9B' &B

 9
9
'O 6
 9L
9B' &B

 9
9
'P 6
 9L
9 B' &B
X
S€9

 
Q X

€
 9
9
'K 6
 9
B' &B
X
E€9

 
R X
€6
 9

B
X€ 99
'S  'K 6
  B' &BERòX
/€9

 
 X
,€
 9
9
'T 6
 9
9B' &B

 9
9
'U 6
 9
9B' &B

 9
9
'V 6
 9
9B' &B

 9
9
'W 6
 9
9 B' &B
9


 X
€9

 
J X
I€9
X
 
 XF€
 9
9
'Y 6
 9Z
B' &B
6
 9
X
B
X6€ 99
'[  '\ 6
 9]B' &B 99
'[  '^ 6
 9B' &B 99
'[  '_ 6
 9`B' &B9
 J X€ 99
'[  'a 6
 9b  X€9
B' &BERÈE	R	6c 6d 9eBH	·€9
f
 
 X´€9
	 
 X±€6
 9
f
B
X«€9  X¨€9	'g 9 9h'i 'S B'S  &9  X
€ 9 'K 6
 9B' &BX@€9 J X
€ 9 'K 6
 9B' &BX2€9  X/€9L  X,€ 9 'T 6
 9L9B' &B 9 'U 6
 9L9B' &B 9 'V 6
 9L9B' &B 9 'W 6
 9L9 B' &B9 X€9 J XI€9X  XF€ 9 'Y 6
 9ZB' &B6 9XBX6€ 9 '[  '\ 6
 9]B' &B 9 '[  '^ 6
 9B' &B 9 '[  '_ 6
 9`B' &B9 J X€ 9 '[  'a 6
 9b  X €9B' &BERÈERSF	R	G 9'	j 6

 6k 9lB
'
 &	
	B 9'	m 6

 6k 9nB
'
 &	
	B 9'	o 6

 6p 9lB
'
 &	
	B 9'	q 6

 6p 9nB
'
 &	
	B 9'	r 6

 6s 9lB
'
 &	
	B 9'	t 6

 6s 9nB
'
 &	
	B6u   X #€6 6v BX	€6
u 8
	
 
 X€9w
  X
€) 9
w
9



 ) M€ 9'x 
 'y  'K 6
 9w
98B' &BOðE	R	á 9	B6 6z 9{BX	€
 '| &



 X
€6
z =	
X€E	R	ö-   9'	} BK  ÀjÀGÀ_À*[Shadow] Config created successfully!	.cfg
valuesconfig_select
_mode_hitsound_	modesounds_fileshitsound_modeskeybinds_y=keybind_listkeybinds_x=bomb_timer_y=bomb_indicatorbomb_timer_x=ywatermark_y=xwatermark_settingswatermark_x= 	gsub
_gear_customSettings
elementselementSettings
pairsslider_value_slider_value=show_in_list
_show=
_type=key
_key=
_bind_bind_count_bind_count=
binds_a=_b=_g=_r=_
combobox
dropdown_color_a=_color_b=_color_g=_color_r=color_value=
slider_rainbow_alpha=_rainbow_saturation=brightness_rainbow_brightness=rainbow_state_rainbow_speed=_pulse_secondary_pos_y=_pulse_secondary_pos_x=_pulse_secondary_alpha=_pulse_secondary_value=!_pulse_secondary_saturation=secondary_data_pulse_secondary_hue=
pos_y_pulse_primary_pos_y=
pos_x_pulse_primary_pos_x=
alpha_pulse_primary_alpha=_pulse_primary_value=saturation_pulse_primary_saturation=hueprimary_data_pulse_primary_hue=Primaryactive_color_active_pulse_color=
speedpulse_state_pulse_speed=standart_pos_y_standart_pos_y=standart_pos_x_standart_pos_x=standart_value_standart_value=standart_saturation_standart_saturation=standart_hue_standart_hue=a_standart_color_a=b_standart_color_b=g_standart_color_g=standart_color_standart_color_r=

Standartcurrent_mode_current_color_mode=	name
writecolor_pickerhas_color_picker
checkbox	type
ipairs
tostring'[Shadow] Failed to create config: w2[Shadow] Config with this name already exists
closer	open ioget_settings_path([Shadow] Please enter a config nameadd_message
valueconfig_name»è¢¶ ßŸ•ÿò+ {û 6  96  98  X€-   9' BK  -  9B6  9 '	 B  X
€-   9' 
 6
 
 B&  BK  6 - BX 9	
 	 X	€9	 	 X
€9	
 	 X	‡-	 
 B	 	 X
‚ 9
9
' 6
 9	  X€' B' &

B
 9
9
' 6
 9	9B' &

B
 9
9
' 6
 9	9B' &

B
 9
9
' 6
 9	9B' &

B
 9
9
' 6
 9	9B' &

B
 9
9
'  6
 9!	  X€)  B' &

B
 9
9
'" 6
 9#	  X€) B' &

B
 9
9
'$ 6
 9%	  X€) B' &

B
 9
9
'& 6
 9'	  X€)  B' &

B
 9
9
'( 6
 9)	  X€)  B' &

B
 9
9
'* 6
 9+	9,  X€) B' &

B
 9
9
'- 6
 9+	9.  X€'/ B' &

B
 9
9
'0 6
 9+	9192  X€)  B' &

B
 9
9
'3 6
 9+	9194  X€) B' &

B
 9
9
'5 6
 9+	919  X€) B' &

B
 9
9
'6 6
 9+	9197  X€) B' &

B
 9
9
'8 6
 9+	9199  X€)´ B' &

B
 9
9
': 6
 9+	919;  X€)  B' &

B
 9
9
'< 6
 9+	9=92  X€*  B' &

B
 9
9
'> 6
 9+	9=94  X€) B' &

B
 9
9
'? 6
 9+	9=9  X€) B' &

B
 9
9
'@ 6
 9+	9=97  X€) B' &

B
 9
9
'A 6
 9+	9=99  X€)´ B' &

B
 9
9
'B 6
 9+	9=9;  X€)  B' &

B
 9
9
'C 6
 9D	9,  X€) B' &

B
 9
9
'E 6
 9D	9F  X€) B' &

B
 9
9
'G 6
 9D	94  X€) B' &

B
 9
9
'H 6
 9D	97  X€) B' &

B
E R n~6 - BX ð€9	
 	I X	
€
 9	9'
J 6
 9B' &B	X	“€9	
 	 X	=€
 9	9'
J 6
 9B' &B	9	 	 X
ƒ€9	K 	 X
€€
 9	9'
L 6
 9K9B' &B	
 9	9'
M 6
 9K9B' &B	
 9	9'
N 6
 9K9B' &B	
 9	9'
O 6
 9K9B' &B	X	S€9	
 	P X	
€
 9	9'
J 6
 9B' &B	X	E€9	
 	Q X	€6	 9
B	X€ 99'R  'J 6
 
 B' &BERòX	/€9	
 	 X	,€
 9	9'
S 6
 99B' &B	
 9	9'
T 6
 99B' &B	
 9	9'
U 6
 99B' &B	
 9	9'
V 6
 99B' &B	9	
	 X	€9	
 	I X	I€9	W 	 X
F€
 9	9'
X 6
 9YB' &B	6	 9
WB	X6€ 99'Z  '[ 6
 9\
B' &B 99'Z  '] 6
 9

B' &B 99'Z  '^ 6
 9_
B' &B9
 I X€ 99'Z  '` 6
 9a
  X€9B' &BERÈE R 6b 6c 9dBH Û€9	e 	 X
Ø€9	  	 X
Õ€6	 9
eB	XÏ€9
  XÌ€9 'f 9
 9g'h 'R B'R  &9

  X
€ 9 'J 6
 9
B' &BXd€9

 I X
€ 9 'J 6
 9
B' &BXV€9

 P X
€ 9 'J 6
 9
B' &BXH€9

 Q X€6 9
BX€ 9 'R  'J 6
  B' &BERòX2€9

  X/€9K
  X,€ 9 'S 6
 9K
9B' &B 9 'T 6
 9K
9B' &B 9 'U 6
 9K
9B' &B 9 'V 6
 9K
9B' &B9

 X€9

 I XI€9W
  XF€ 9 'X 6
 9Y
B' &B6 9W
BX6€ 9 'Z  '[ 6
 9\B' &B 9 'Z  '] 6
 9
B' &B 9 'Z  '^ 6
 9_B' &B9

 I X€ 9 'Z  '` 6
 9a  X€9
B' &BERÈER/F R # 9' i 6
 6
j 9
k
B'	 & 	 B 9' l 6
 6
j 9
m
B'	 & 	 B 9' n 6
 6
o 9
k
B'	 & 	 B 9' p 6
 6
o 9
m
B'	 & 	 B 9' q 6
 6
r 9
k
B'	 & 	 B 9' s 6
 6
r 9
m
B'	 & 	 B6t   X#€6 6u BX €6	t 8	 	 	 X
€9
v	 
 X
€)
 9
v	9



 ) M
€ 9'w  'x 
 'J 6
 9v	98
B' &BO
ðE R á 9yB-   9' z BK  ÀjÀGÀ_À'[Shadow] Config saved successfully
close
_mode_hitsound_	modesounds_fileshitsound_modeskeybinds_y=keybind_listkeybinds_x=bomb_timer_y=bomb_indicatorbomb_timer_x=ywatermark_y=xwatermark_settingswatermark_x= 	gsub
_gear_customSettings
elementselementSettings
pairsslider_value_slider_value=show_in_list
_show=
_type=key
_key=
_bind_bind_count_bind_count=
binds_a=_b=_g=_r=_
combobox
dropdown_color_a=_color_b=_color_g=_color_r=color_value=
slider_rainbow_alpha=_rainbow_saturation=brightness_rainbow_brightness=rainbow_state_rainbow_speed=_pulse_secondary_pos_y=_pulse_secondary_pos_x=_pulse_secondary_alpha=_pulse_secondary_value=!_pulse_secondary_saturation=secondary_data_pulse_secondary_hue=
pos_y_pulse_primary_pos_y=
pos_x_pulse_primary_pos_x=
alpha_pulse_primary_alpha=_pulse_primary_value=saturation_pulse_primary_saturation=hueprimary_data_pulse_primary_hue=Primaryactive_color_active_pulse_color=
speedpulse_state_pulse_speed=standart_pos_y_standart_pos_y=standart_pos_x_standart_pos_x=standart_value_standart_value=standart_saturation_standart_saturation=standart_hue_standart_hue=a_standart_color_a=b_standart_color_b=g_standart_color_g=rstandart_color_standart_color_r=

Standartcurrent_mode_current_color_mode=	name
writecolor_pickerhas_color_picker
checkbox	type
ipairs
tostring%[Shadow] Failed to save config: w	open ioget_settings_path'[Shadow] Cannot save 'None' configadd_message	None
value
valuesconfig_select»è¢¶ ßŸ•ÿ¨6 † 
6  96  98  X€-   9' BK  6  96  98-  9B6  9 '	 B  X€-    9'
 BK  4   9
BX		€	 9
	'

 B
 
 X€ 
 X€<

E	R	õ 9B6 - BX	€9


 X
€9

 
 X
€4
  =

)
  =

+
 =

E	R	ò6 - BX	Ú9

 
 X
€9

 
 X€9

 
 X
Ñ-
 
 B
 
 XÌ9
'
 &
8  X
€9
'
 &
8=
9
'
 &
8  X
,€9
6
 9
' &8B
 
 X€)
 =
	9
6
 9
' &8B
 
 X€)
 =
9
6
 9
'! &8B
 
 X€)
 =
 9
6
 9
'# &8B
 
 X€)
 =
"9
'
$ &
8  X
€6 9
'$ &8B  X
€)  =%
9
'
& &
8  X
€6 9
'& &8B  X
€) ='
9
'
( &
8  X
€6 9
'( &8B  X
€) =)
9
'
* &
8  X
€6 9
'* &8B  X
€)  =+
9
'
, &
8  X
€6 9
', &8B  X
€)  =-
9
'
. &
8  X

€9/
6
 9
'. &8B
 
 X€)
 =
09
'
1 &
8  X
€9/
9

'1 &

8

=
29
'
3 &
8  X
€9/
946
 9
'3 &8B
 
 X€)
  =
59
'
6 &
8  X
€9/
946
 9
'6 &8B
 
 X€)
 =
79
'
8 &
8  X
€9/
946
 9
'8 &8B
 
 X€)
 =
9
'
9 &
8  X
€9/
946
 9
'9 &8B
 
 X€)
 =
:9
'
; &
8  X
€9/
946
 9
'; &8B
 
 X€)
´ =
<9
'
= &
8  X
€9/
946
 9
'= &8B
 
 X€)
  =
>9
'
? &
8  X
€9/
9@6
 9
'? &8B
 
 X€*
  =
59
'
A &
8  X
€9/
9@6
 9
'A &8B
 
 X€)
 =
79
'
B &
8  X
€9/
9@6
 9
'B &8B
 
 X€)
 =
9
'
C &
8  X
€9/
9@6
 9
'C &8B
 
 X€)
 =
:9
'
D &
8  X
€9/
9@6
 9
'D &8B
 
 X€)
´ =
<9
'
E &
8  X
€9/
9@6
 9
'E &8B
 
 X€)
  =
>- 
 B9
'
F &
8  X

€9G
6
 9
'F &8B
 
 X€)
 =
09
'
H &
8  X

€9G
6
 9
'H &8B
 
 X€)
 =
I9
'
J &
8  X

€9G
6
 9
'J &8B
 
 X€)
 =
79
'
K &
8  X

€9G
6
 9
'K &8B
 
 X€)
 =
:- 
 BE	R	$~6 - BX	j9

 
 Xg9

 
 X

€9

8

 
 X	€6
 9

8

B
 
 X€9

=

X
î€9

 
 X
T€9

8

 
 XP€9

8


L X
€+
 X€+
 =

9

 
 XÜ€9

'M &

8

 
 X
€9
N
6 9
'M &8B  X
€) =	
9

'O &

8

 
 X
€9
N
6 9
'O &8B  X
€) =
9

'P &

8

 
 X
€9
N
6 9
'P &8B  X
€) = 
9

'Q &

8

 
 X£€9
N
6 9
'Q &8B  X
€) ="
X
—€9

 
R X
)€9

8

 
 X%€6
 9

8

B
 
 X	€) 
 X€9
 
 X€=

X€9
8S X€9
8T X€9
8U X€9
8 V Xq€6 9
8B=
X
k€9

 
W X
€)
 9
 )
 M
€9
'X  &8  X€9
8L X€+ X€+ <O
ðX
R€9

 
 X
E€9

'Y &

8

 
 X
€9

6 9
'Y &8B  X
€) =	
9

'Z &

8

 
 X
€9

6 9
'Z &8B  X
€) =
9

'[ &

8

 
 X
€9

6 9
'[ &8B  X
€) = 
9

'\ &

8

 
 X€9

6 9
'\ &8B  X
€) ="
X

€9

 
] X
 €9

8

 
 X€9

8

=

9


 X
€9

 
 X
c€6
 9

'^ &

8

B
 
 X€)
  )  
 XW€4  =
)  =
) 

 ) MG€9
'_  '` &89
'_  'a &89
'_  'b &89
'_  'c &8  X,€5e  d X€'d X€6  B  X€'d =f6  B  X€) =L X€+ X€+ =g9
  X€  X€6  B=h9
=i6j 9k9
 B9
=
O¹9
)
   
 X€+ X
€+ =
E	R	”~6l 6m 9nBH	9
o
 
 X9
	 
 X6
 9
o
B
X	9  X9	'p 9 9q'r 'X B'X  &8  X&€9  X€8L X€+ X€+ =X€9  X€6 8B  X€9=X€9 R X
€6 8B  X€)  X€9  X€=9 W X€) 9 ) M€ 'X  &8  X€98L X€+ X€+ <Oð9  XN€9N  X €6s ) ) ) ) B=N 'Y &8  X
€9N6  'Y &8B  X€) =	 'Z &8  X
€9N6  'Z &8B  X€) = '[ &8  X
€9N6  '[ &8B  X€) =  '\ &8  X
€9N6  '\ &8B  X€) ="9 X€9  Xc€6  '^ &8B  X€)  )   XW€4  =)  =)  ) MG€ '_  '` &8 '_  'a &8 '_  'b &8 '_  'c &8  X,€5t  d X€'d X€6  B  X€'d =f6  B  X€) =L X€+ X€+ =g9  X€  X€6  B=h9=i6j 9k9 B9=O¹9)    X€+ X€+ =ERõ~F	R	é~9u  X €6v 6  9	uB = w9x  X €6v 6  9	xB = y9z  X €6{ 6  9	zB = w9|  X €6{ 6  9	|B = y9}  X €6~ 6  9	}B = w9  X €6~ 6  9	B = y6€   X %€6 6 BX	€6
€ 8
	
 
 X€9‚
  X
€) 9
‚
9



 ) M€'ƒ 
 '„  &8  X	€9‚
98L X€+ X€+ <OîE	R	ß) 6  6	  9		B X
€
 X€
 X €E
R
ú6   = -   	  9  '
… B K  ÀjÀGÀ_À`ÀbÀ)[Shadow] Config loaded successfully!
_mode_hitsound_	modesounds_fileshitsound_modeskeybinds_ykeybind_listkeybinds_xbomb_timer_ybomb_indicatorbomb_timer_xywatermark_yxwatermark_settingswatermark_x show_in_list dropdown_openwaiting_for_key	type key color_t 	gsub
_gear_customSettings
elementselementSettings
pairs
insert
tableoriginal_valueslider_valueshow_in_listkey show_in_list dropdown_openwaiting_for_key	type key 	none_slider_value
_show
_type	_key
_bind__bind_counttext_input _a _b _g _r_
combobox4321
dropdown
_color_a
_color_b
_color_gcolor_value
_color_r	true_rainbow_alpha_rainbow_saturationbrightness_rainbow_brightnessrainbow_state_rainbow_speed_pulse_secondary_pos_y_pulse_secondary_pos_x_pulse_secondary_alpha_pulse_secondary_value _pulse_secondary_saturationsecondary_data_pulse_secondary_hue
pos_y_pulse_primary_pos_y
pos_x_pulse_primary_pos_x
alpha_pulse_primary_alpha_pulse_primary_valuesaturation_pulse_primary_saturationhueprimary_data_pulse_primary_hueactive_color_active_pulse_color
speedpulse_state_pulse_speedstandart_pos_y_standart_pos_ystandart_pos_x_standart_pos_xstandart_value_standart_valuestandart_saturation_standart_saturationstandart_hue_standart_hue_standart_color_aa_standart_color_bb_standart_color_gg
tonumberstandart_color_standart_color_rcurrent_mode_current_color_mode	namecolor_pickerhas_color_picker
has_bindbind_count
binds
slider
checkbox	type
ipairs
close([^=]+)=([^=]+)
match
lines-[Shadow] No config found, using defaultsr	open ioget_settings_path'[Shadow] Cannot load 'None' configadd_message	None
value
valuesconfig_select»è¢¶ ßŸ•ÿ÷   
 6   B 6  B 6  B 6  9  ' B 6  9  ' B 6  9  '  B 6  9  ' B 6  9  '	 B 6  9  '
 B K  
-attack2-attack
-right
-left
-jump
-duckexecute_client_cmd
engine
auto_buyexposure_on_override_viewflashTaskbarî    6  9B  X€6  9B  X€K  6   B6 B6   B6   BK  on_move_override_fovoverrideFOVexposure_on_override_viewremove_visual_duckget_local_player_pawn get_local_player_controllerentitylistÅ   6    B6   B6   B6 9  B6 9  BK  add_hitlogon_player_hurt_receivedlogs_settingscustom_hitsound_on_hurton_shot_skeleton_hurtai_peek_on_player_hurtÅ   6    B6   B6   B6   B6 9  BK  on_player_deathlogs_settingstrashtalk_on_deathcustom_trashtalk_on_deathon_shot_skeleton_deathsoul_particles_on_death×
  		7 ž-   B 6   B -  B 6  B 6  B 6  B -  B 6  B 6  9  B    X €6  9   B    X €K  6  B 6 	 B 6 
 B 6 
 B 6  B 6 
 B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6  B 6   B 6 ! B -  B 6 " B 6 # B 6 $ B 6 % B 6 &   9 ' B 6 &   9 ( B 6 ) 9 ' B 6 ) 9 * B 6 + 9 , - 9-B    X€-  9 -    X €6 + 9 . - 9/+ B 6 + 9 . - 9/+ B -  6+ 9,- 9-B=- 6 0 - B X€91 2 X€93  X€91 4 X	€-    B956 X€-  BERìK  ‚ÀlÀKÀˆÀAÀBÀGÀ_ÀbÀ
Standartcurrent_modecolor_pickerhas_color_picker
checkbox	type
ipairs
INSERTsimulate_key
DELETEis_key_pressed
utilssdraw_logslogs_settings	draw
updatekeybind_list
EPeekchat_spammerPitchJitterZeroPitchWithManuals
LongJumpauto_stop_in_airapply_glow_to_team apply_glow_to_active_weaponapply_glow_to_local_player
get_zoomflash_timedisconnectdraw_molotov_radiusdraw_smoke_radiushalo_updateAirDuck
EdgeJumphidehud
scope
AiPeekTriggerbotrender_trailsrender_jump_circlesmanual_aaautostrafefog_modulationhandle_keyboard_inputbomb_updatedraw_watermarkthirdpersonget_local_player_pawn get_local_player_controllerentitylistupdate_mouserenderGuimenu_snowdarkBackgroundis_wasd_pressedº
  	(œ6   )  B 6  )  B 6  -  = 6  - = 6  - = 6  - = 6  - =  6  - = 6  - =	 -   9 
   9 
 )  B -   9    9 
 )  B -   9 
   9  + B -   9    9  )– B -   9    9  + B -   9    9  + B -   9    9  ) B -   9    9  + B -   9    9 
 )  B -   9    9  *  B -   9    9  )´ B -   9    9  + B -   9    9  + B 6  9  ' B 6  9  ' B 6  9  ' B 6  9  ' B 6  9  '  B 6  9  '! B 6  9  '" B 6  9  '# B 6  9  '$ B 6  9  '% B 6  9  '& B 6  9  '' - &B K  Àœ€À À!À"À#ÀÀŒÀr_fullscreen_gamma  cl_draw_only_deathnotices 0bind mouse2 +attack2bind mouse1 +attackbind space +jumpcam_collision 1
-attack2-attack
-right
-left
-jump
-duckexecute_client_cmd
engine)sv_grenade_trajectory_prac_pipreviewr_csgo_postprocess_enabler_dof_override_far_crispragdoll_friction_scaler_dof_override_near_crispsv_autobunnyhoppingragdoll_gravity_scaler_drawviewmodelr_dof_override
floatcam_idealdist	boolr_drawskyboxmat_fullbrightintsv_showimpactsmisc_viewmodel_editor_fovmisc_viewmodel_editor_zmisc_viewmodel_editor_ymisc_viewmodel_editor_xmisc_viewmodel_editor%ragebot_anti_aim_base_yaw_offsetragebot_anti_aim_pitch	menuset_exposureRevealRadarçÌ™³³æŒÿ¯‹ ¸ í
CÛO6   9  ' B 4   3 = 3 = 3 =  3
 =	 3 =
 3 =
 6 4  6 3 =6 ' B6 '  B6 '  B6 '	 B6  '	
 B 6 '

 B3	 
	 B
5
 7
 5
 7
 5
 7
 5
 7
 5
 7
 5
 7
 5
 7
  5
! 7
" 5
# 7
$ 5
% 7
& 3
' 3
( 
 B6) 9*6+ B', &) B6
) 9
*
6+ B', &) B
6) 9*6+ B', &) B6) 9*6+ B', &)# B6) 9*6+ B', &) B6) 9-6+ B'. &B6) 9-6+ B'/ &B6) 9-6+ B'0 &B6) 9-6+ B'1 &B6) 9-6+ B'2 &B6) 9-6+ B'3 &B6) 9-6+ B'4 &B6) 9-6+ B'5 &B6) 9-6+ B'3 &B6) 9-6+ B'6 &B6) 9-6+ B'7 &B6) 9-'8 B6) 9-'9 B5: 6  = 6  9'!; B=<4  ==3> =?3@ =A3B =C3D =E3F =G3H =I3J =K3L =M3N =O3P =Q! 9QB6R 9S6 R 9 T 6!R 9!U!6"R 9"V"6#R 9#W#5$X 5%Y =%Z$6%[ =%[$6%\ 9%]%B%=%^$5%_ =%`$5%a =%b$5%c =%d$5%e 6&\ 9&]&B&=&f%=%g$5%h 6&\ 9&]&B&=&f%=%i$)%  5&j 6'k ))  )*  B'='l&6'k )))*¯B'='m&5'n ='o&4'  ='p&6'\ 9']'B'='q&7&r +&  7&s 4&  7&t 5&u 5'w 5(v =(x'5(y =(z'5({ =(|'5(} =(~'5( =(€'5( =(‚'5(… 5)ƒ 4*  =*„)=)x(5)† 4*  =*„)=)z(5)‡ 4*  =*ˆ)4*  =*‰)=)|(5)Š 4*  =*„)4*  =*‹)4*  =*Œ)4*  =*)=)~(5)Ž 4*  =*„)4*  =*)=)€(5) 4*  =*‘)4*  =*‚)4*  =*’)=)‚(5)– 5*• 4+ 5,“ >,+5,” >,+=+„*=*x)5*™ 4+ 5,— >,+5,˜ >,+=+„*=*z)5*œ 4+ 5,š >,+5,› >,+=+ˆ*4+ 5, >,+5,ž >,+=+‰*=*|)5*¡ 4+ 5,Ÿ >,+5,  >,+=+„*4+ 5,¢ >,+5,£ >,+5,¤ >,+5,¥ >,+=+‹*4+ 5,¦ >,+5,§ >,+5,¨ >,+=+Œ*4+ 5,© >,+5,ª >,+5,« >,+=+*=*~)5*± 4+ 5,¬ >,+5,­ >,+5,® >,+5,¯ >,+5,° >,+=+„*=*€)5*³ 4+ 5,² >,+=+‘*4+ 5,´ >,+5,µ >,+5,¶ >,+=+‚*=*‚)5*¸ 5+· =+¹*5+» 5,º =,x+5,¼ =,z+5,½ =,|+5,¾ =,~+5,¿ =,€+5,À =,‚+=+Á*4+  6,) 9,*,6.+ B.'/Ã &./.)/– B,=,Â+),  =,Ä++, =,Å++, =,Æ+),  =,Ç+4,  =,È+',Ê =,É+),  =,Ë+*,  =,Ì+), =,Í+), =,Î+), =,Ï+), =,Ð+), =,Ñ+), =,Ò+), =,Ó+), =,Ô+),  =,Õ+), =,Ö+),	 =,×+9,Ï+=,Ø+*, =,Ù+),  =,Ú+),  =,Û+),  =,Ü+),  =,Ý+),‡ =,Þ++, =,ß+), =,à+4, 5-â >-,5-ã >-,=,á+), =,ä+),´ =,å+),  =,æ+), 9-É+-- ). M,€90È+51è 92É+42 92ç25/ 6/ B2=2é12/22=2ê1<1/0O,ò3,ì =,ë+3,î =,í+3,ð =,ï+6,ñ '.ò 3/ó B,),
 =,ô$3,õ 3-ö ).
 =.ô$4.  3/÷ 30ø 61 '3  B162 '4ù B2931'5ú B3931'5û B393ü1'5ý B394ü1'6þ B455ÿ 56 5738'9<89738'9<89738'9 <89738'9	<89738
=8ë738
'9<89738
'9<89738'9<89738'9<89738'9<897773777)7  3849  3:6; '=  B;6< '>ù B<9=ü;'?B=9>;'@B>*> 7>)> 7>3>7>3> 3?!3@"5A#5B$3C%3D&3E'3F(4G  3H)3I*3J+3K,3L-3M.3N/3O03P13Q23R37R43R53S63T73U85V9'W:5X<6Y;)[ )\  )]  )^ BY'Z=<YZX6Y;)[  )\  )] )^ BY'Z><YZX5Y?'Z@<YZX5YA'ZB<YZX5YC6Z;)\ )] )^ )_ BZ4[  3\D3]E6^+ B^'_F&^_^3_G7_H3_I3`Ja` Ba3aK3bL3cM3dNed Beec Be5eO4f  'gP<fge+f  3gQ3hR3iS5jZ6kT>kj6kU>kj6kV>kj6kW>kj6kX>kj3kY'l[<klj6k\>kj4k  7k]3k^7k_3k`7ka3kb7kc3kd7kekQ 'mf+n +o +p +q  'rgBk 7kh6kh'li+m <mlk6k46mh'nj'ok+p )qK )r  )s– )t ,uv Bk
7kl6k46mh'nj'om+p *q *r )s *t +u  'vnBk
7ko6k46mh'nj'op+p )qd )r )sd )t +u  'vqBk
7kr6k46mh'ns'ot+p +q Bk7kukQ 'mv+n +o +p +q  'rgBk 7kw6kw'li+m <mlk6k46mw'nj'op+p )qd )r )sd )t +u  'vqBk
7kx6k46mw'ns'oy+p +q Bk7kz6k{'l|8klk9mx(9m„m6nwBk6k{'l|8klk9mx(9m„m6nhBkkQ 'm}+n +o +p +q  'r Bk 7k~6k~'li+m <mlk6k46m~'nj'op+p )qd )r )sd )t +u  'vqBk
7kkQ 'm€+n +o +p +q  'r Bk 7k6k{'l|8klk9mx(9m„m6n~Bk6k{'l|8klk9mx(9m„m6nBkkQ 'm‚+n +o +p +q  'r„ Bk 7kƒ6kƒ'li+m <mlk6k46mƒ'ns'o„+p +q Bk7k…6k46mƒ'ns'o†+p +q Bk7k‡6k46mƒ'ns'oˆ+p +q Bk7k‰6k46mƒ'ns'oŠ+p +q Bk7k‹6k46mƒ'nj'oŒ+p )q  )rLÿ)s´ )t ,uv Bk
7k6k46mƒ'nj'oŽ+p )q´ )rLÿ)s´ )t ,uv Bk
7k6k46mƒ'nj'o+p )qZ )rLÿ)s´ )t ,uv Bk
7k‘6k46mƒ'nj'o’+p )q¦ÿ)rLÿ)s´ )t ,uv Bk
7k“kQ 'm”+n +o +p +q  'r„ Bk 7k•6k•'li+m <mlk6k46m•'nj'o–+p )q´ )rLÿ)s´ )t ,uv Bk
7k—6k{'l|8klk9mz(9m„m6nƒBk6k{'l|8klk9mz(9m„m6n•BkkQ 'm˜+n +o +p +q  'r Bk 7k™kQ 'mš+n +o +p +q  'r Bk 7k›6k›'li+m <mlk6k46m›'nj'oœ+p )q2 )r )sd )t ,uv Bk
7k6k{'l|8klk9mz(9m„m6n™Bk6k{'l|8klk9mz(9m„m6n›BkkQ 'mˆ +n +o +p +q  'r„ Bk 7kžkT 'mŸ+n 5o )p 'q„ Bk7k¡kU 'm¢+n 5o£5p¤'q„ Bk7k¥kR 'm¦+n *o )p  )q *r ,st 'u„ Bk
7k§kR 'm¨+n )o
 )p )q2 )r ,st 'u„ Bk
7k©kR 'mª+n )o *p )q
 *r ,st 'u„ Bk
7k«kQ 'm¬+n +o +p +q  'r„ Bk 7k­kR 'm¦+n *o )p  )q *r ,st 'u„ Bk
7k®kR 'm¯+n *o )p  )q *r ,st 'u„ Bk
7k°kR 'm±+n *o )p  )q *r ,st 'u„ Bk
7k²6k{'l|8klk9m|(9mˆm6nžBk6k{'l|8klk9m|(9mˆm6n¡Bk6k{'l|8klk9m|(9mˆm6n¥Bk6k{'l|8klk9m|(9mˆm6n§Bk6k{'l|8klk9m|(9mˆm6n©Bk6k{'l|8klk9m|(9mˆm6n«Bk6k{'l|8klk9m|(9mˆm6n­Bk6k{'l|8klk9m|(9mˆm6n®Bk6k{'l|8klk9m|(9mˆm6n°Bk6k{'l|8klk9m|(9mˆm6n²BkkU 'm³+n 5o´5pµ'q Bk7k¶kQ 'm·+n +o +p 6q;)s )t )u )v Bq'r Bk 7k¸kQ 'm¹+n +o +p +q  'r Bk 7kºkQ 'm»+n +o +p +q  'r Bk 7k¼6k{'l|8klk9m|(9mˆm6n¶Bk6k{'l|8klk9m|(9mˆm6n¸Bk6k{'l|8klk9m|(9mˆm6nºBk6k{'l|8klk9m|(9mˆm6n¼BkkQ 'm‰ +n +o +p +q  'r„ Bk 7k½kR 'm¦+n *o )p  )q *r ,st 'u„ Bk
7k¾kR 'm±+n *o )p  )q *r ,st 'u„ Bk
7k¿kR 'm¯+n *o )p  )q *r ,st 'u„ Bk
7kÀ6k{'l|8klk9m|(9m‰m6n½Bk6k{'l|8klk9m|(9m‰m6n¾Bk6k{'l|8klk9m|(9m‰m6n¿Bk6k{'l|8klk9m|(9m‰m6nÀBkkU 'mÁ+n 5oÂ5pÃ'q Bk7kÄ6k{'l|8klk9m|(9m‰m6nÄBkkQ 'mÅ+n +o +p +q  'r„ Bk 7kÆ6kÆ'li+m <mlk6k46mÆ'nj'o¨+p )qd )r )sÈ )t ,uv Bk
7kÇ6k46mÆ'nj'oÈ+p )qd )r  )sd )t +u  'vÉBk
7kÊ6k46mÆ'nj'oË+p )qd )r  )sd )t +u  'vÉBk
7kÌkQ 'mÍ+n +o +p +q  'r„ Bk 7kÎ6kÎ'li+m <mlk6k46mÎ'nj'oÏ+p )q´ )r )sÈ )t ,uv Bk
7kÐ6k46mÎ'ns'oÑ+p +q Bk7kÒ6k46mÎ'ns'oÓ+p +q Bk7kÔ6k46mÎ'ns'oÕ+p +q Bk7kÖkQ 'm×+n +o +p +q  'r„ Bk 7kØkQ 'mÙ+n +o +p +q  'r„ Bk 7kÚ6k46mÚ'nj'o–+p )qs )r )sÈ )t ,uv Bk
7kÛ6k{'l|8klk9m~(9m„m6nÆBk6k{'l|8klk9m~(9m„m6nÎBk6k{'l|8klk9m~(9m„m6nØBk6k{'l|8klk9m~(9m„m6nÚBkkQ 'mÜ+n +o +p +q  'rÝBk 7kÞkQ 'mß+n +o +p +q  'rÝBk 7kà6k{'l|8klk9m~(9m„m6nÞBk6k{'l|8klk9m~(9m„m6nàBkkQ 'má+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kâ6kâ'li+m <mlk6k46mâ'nj'oã+p )q )r )s
 *t  ,uv Bk
7käkQ 'må+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kækQ 'mç+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kèkQ 'mé+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kê6kê'li+m <mlk6k46mê'ns'oë+p +q Bk7kì6k{'l|8klk9m~(9m‹m6nâBk6k{'l|8klk9m~(9m‹m6næBk6k{'l|8klk9m~(9m‹m6nèBk6k{'l|8klk9m~(9m‹m6nêBkkQ 'mí+n +o +p 6q;)s )t )u )v Bq'rëBk 7kîkQ 'mï+n +o +p 6q;)s )t )u )v Bq'rëBk 7kð6k{'l|8klk9m~(9m‹m6nîBk6k{'l|8klk9m~(9m‹m6nðBkkQ 'mñ+n +o +p 6q;)s )t )u )v Bq'ròBk 7kó6kó'li+m <mlk6k46mó'nô'oõ+p 5qö,rv 5w÷Bk7kø6k46mó'nj'où+p )qÈ )r2 )sè)t ,uv Bk
7kú6k46mó'nj'oû+p )q
 )r  )s– )t ,uv Bk
7kü6k46mó'nj'oý+p )q )r )s2 )t ,uv Bk
7kþ6k46mó'nj'oÿ+p )q  )r  )sd )t ,uv Bk
7k 6k46mó'ns'o+p +q Bk7k6k46mó'nj'o+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o +p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o	+p )q )r  )sÈ )t ,uv Bk
7k
6k46mó'nj'o
+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'ns'o
+p +q Bk7k6k46mó'nô'o+p 5q,rv 5wBk7k6k46mó'nj'où+p )qÈ )r2 )sè)t ,uv Bk
7k6k46mó'nj'oû+p )q
 )r  )s– )t ,uv Bk
7k6k46mó'nj'oý+p )q )r )s2 )t ,uv Bk
7k6k46mó'nj'oÿ+p )q  )r  )sd )t ,uv Bk
7k6k46mó'ns'o+p +q Bk7k6k46mó'nj'o+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o +p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o	+p )q )r  )sÈ )t ,uv Bk
7k6k46mó'nj'o
+p )q )r  )sÈ )t ,uv Bk
7kkT 'm+n 5o)p 'qòBk7kkQ 'm +n +o +p 6q;)s )t )u )v Bq'ròBk 7k!kQ 'm"+n +o +p +q  'ròBk 7k#6k{'l|8klk9m~(9m‹m6nóBk6k{'l|8klk9m~(9m‹m6nBk6k{'l|8klk9m~(9m‹m6n!Bk6k{'l|8klk9m~(9m‹m6n#BkkQ 'm$+n +o +p +q  'r Bk 7k%kQ 'm&+n +o +p +q  'r Bk 7k'6k''li+m <mlk6k46m''nj'o(+p *q )rìÿ)s *t ,uv Bk
7k)6k46m''nj'o*+p *q	 )rìÿ)s *t ,uv Bk
7k+6k46m''nj'o,+p )qúÿ)rìÿ)s *t ,uv Bk
7k-6k46m''nj'o¨+p *q
 )r  )s´ *t
 ,uv Bk
7k.6k{'l|8klk9m~(9m‹m6n%Bk6k{'l|8klk9m~(9m‹m6n'BkkQ 'm/+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7k06k0'li+m <mlk6k46m0'nj'o1+p )qÈ )r )s¬
)t +u  'vnBk
7k26k46m0'nj'o3+p )q¬
)r )sˆ)t +u  'vnBk
7k46k46m0'nj'o5+p )qd )r  )sd )t +u  'vÉBk
7k66k46m0'nj'o7+p )q
 )r )sd )t +u  'vÉBk
7k8kQ 'm9+n +o +p +q  'r„ Bk 7k:6k:'li+m <mlk6k46m:'nj'o;+p )qœÿ)rœÿ)sÐ )t +u  'vnBk
7k<6k46m:'nj'o=+p )qÐ )r  )sÐ )t +u  'vnBk
7k>6k46m:'nj'o?+p )q  )rþ)sô)t ,uv Bk
7k@6k46m:'nj'oA+p )q´ )r  )sè)t ,uv Bk
7kBkQ 'mC+n +o +p +q  'r„ Bk 7kDkQ 'mE+n +o +p +q  'r„ Bk 7kFkQ 'mG+n +o +p +q  'r„ Bk 7kH6k{'l|8klk9m~(9mŒm6n0Bk6k{'l|8klk9m~(9mŒm6n:Bk6k{'l|8klk9m~(9mŒm6nDBk6k{'l|8klk9m~(9mŒm6nFBk6k{'l|8klk9m~(9mŒm6nHBkkQ 'mI+n +o +p +q  'rJBk 7kK6kK'li+m <mlk6k46mK'nj'o–+p )q  )r  )s,)t ,uv Bk
7kLkQ 'mM+n +o +p +q  'rJBk 7kN6kN'li+m <mlk6k46mN'nj'o–+p )q *r )s *t ,uv Bk
7kOkQ 'mP+n +o +p +q  'rJBk 7kQkQ 'mR+n +o +p +q  'rJBk 7kS6k{'l|8klk9m~(9mŒm6nKBk6k{'l|8klk9m~(9mŒm6nNBk6k{'l|8klk9m~(9mŒm6nQBk6k{'l|8klk9m~(9mŒm6nSBkkQ 'mT+n +o +p 6q;)s )t )u )v Bq'r Bk 7kUkQ 'mV+n +o +p 6q;)s )t )u )v Bq'r Bk 7kWkQ 'mX+n +o +p 6q;)s )t )u )v Bq'r Bk 7kYkQ 'mZ+n +o +p +q  'r Bk 7k[6k['li+m <mlk6k46m['n\'o]+p )q ,rv 5w^Bk7k_kQ 'm`+n +o +p +q  'r Bk 7kakQ 'mb+n +o +p +q  'r Bk 7kc6kc'li+m <mlk6k46mc'nj'od+p )q )r  )s )t ,uv Bk
7ke6k{'l|8klk9m~(9mŒm6nUBk6k{'l|8klk9m~(9mŒm6nWBk6k{'l|8klk9m~(9mŒm6nYBk6k{'l|8klk9m~(9mŒm6n[Bk6k{'l|8klk9m~(9mŒm6naBk6k{'l|8klk9m~(9mŒm6ncBkkQ 'mf+n +o +p 6q;)s )t )u *v  Bq'r„ Bk 7kgkQ 'mh+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kikQ 'mj+n +o +p 6q;)s )t )u )v Bq'r„ Bk 7kkkQ 'ml+n +o +p +q  'r„ Bk 7km6km'li+m <mlk6k46mm'nj'on+p )q )r )s )t ,uv Bk
7ko6k46mm'nô'o]+p 5qp,rv 5wqBk7krkQ 'ms+n +o +p +q  'r„ Bk 7kt6kt'li+m <mlk6k46mt'nj'on+p )q )r )s )t ,uv Bk
7ku6k46mt'nô'o]+p 5qv,rv 5wwBk7kx6k{'l|8klk9m~(9mm6ngBk6k{'l|8klk9m~(9mm6niBk6k{'l|8klk9m~(9mm6nkBk6k{'l|8klk9m~(9mm6nmBk6k{'l|8klk9m~(9mm6ntBkkQ 'my+n +o +p 6q;)s )t )u )v Bq'rëBk 7kz6k{'l|8klk9m~(9mm6nzBkkQ 'm{+n +o +p +q  'rÝBk 7k|6k{'l|8klk9m~(9mm6n|BkkQ 'm}+n +o +p +q  'r„ Bk 7k~6k~'li+m <mlk6k46m~'n\'o+p )q ,rv 5w€Bk7k6k46m~'n\'o‚+p )q ,rv 5wƒBk7k„6k46m~'nô'oÝ+p 5q…,rv 5w†Bk7k‡kQ 'mˆ+n +o +p +q  'r„ Bk 7k‰6k‰'li+m <mlk6k46m‰'n\'oŠ+p )q ,rv 5w‹Bk7kŒkQ 'm+n +o +p +q  'r„ Bk 7kŽ6k{'l|8klk9m€(9m„m6n~Bk6k{'l|8klk9m€(9m„m6n‰Bk6k{'l|8klk9m€(9m„m6nŽBkkQ 'm+n +o +p +q  'rÝBk 7k6k'li+m <mlk6k46m'nj'o‘+p )q )röÿ)s
 *t ,uv Bk
7k’6k46m'nj'o“+p *q )r  )s
 *t ,uv Bk
7k”6k{'l|8klk9m€(9m„m6nBk6kcBk7k•kQ 'm–+n +o +p +q  'r–Bk 7k—kT 'm‚ +n 6o•)p 'q–Bk7k˜6k{'l|8klk9m€(9m„m6n—Bk6k{'l|8klk9m€(9m„m6n˜Bk6k_Bk6kaBk6k{'l|8klk9m€(9m„m6n™Bk6k{'l|8klk9m€(9m„m6nšBkkQ 'm›+n +o +p +q  'r›Bk 7kœ6kœ'li+m <mlk6k46mœ'n\'o+p )q ,rv 5wžBk7kŸkQ 'm +n +o +p +q  'r›Bk 7k¡6k¡'li+m <mlk6k46m¡'n\'o¢+p )q ,rv 5w£Bk7k¤6keBk7k¥kQ 'm¦+n +o +p +q  'r›Bk 7k§kT 'm¨+n 6o¥)p 'q›Bk7k©kN 'mª+n 3o«'p›Bk7k¬6k{'l|8klk9m€(9m„m6nœBk6k{'l|8klk9m€(9m„m6n¡Bk6k{'l|8klk9m€(9m„m6n§Bk6k{'l|8klk9m€(9m„m6n©Bk6k{'l|8klk9m€(9m„m6n¬BkkQ 'm­+n +o +p +q  'r Bk 7k®kQ 'm¯+n +o +p +q  'r Bk 7k°kQ 'm±+n +o +p +q  'r Bk 7k²kQ 'm³+n +o +p +q  'r Bk 7k´kQ 'mµ+n +o +p +q  'r Bk 7k¶kQ 'm·+n +o +p +q  'r Bk 7k¸6k{'l|8klk9m€(9m„m6n®Bk6k{'l|8klk9m€(9m„m6n°Bk6k{'l|8klk9m€(9m„m6n²Bk6k{'l|8klk9m€(9m„m6n´Bk6k{'l|8klk9m€(9m„m6n¶Bk6k{'l|8klk9m€(9m„m6n¸BkkT 'm‘ +n 6oHBo)p 'q‘ Bk7k¹kO 'mº+n 'o»'p¼'q‘ Bk7k½kN 'm¾+n 3o¿'p‘ Bk7kÀkN 'mÁ+n 3oÂ'p‘ Bk7kÃkN 'mÄ+n 3oÅ'p‘ Bk7kÆkN 'mÇ+n 3oÈ'p‘ Bk7kÉkN 'mÊ+n 3oË'p‘ Bk7kÌkN 'mª+n 3oÍ'p‘ Bk7kÎkN 'mÏ+n 3oÐ'p‘ Bk7kÑ9k‚(4l  =l‘k6k{'l|8klk9m‚(9m‘m6n¹Bk6k{'l|8klk9m‚(9m‘m6n½Bk6k{'l|8klk9m‚(9m‘m6nÀBk6k{'l|8klk9m‚(9m‘m6nÃBk6k{'l|8klk9m‚(9m‘m6nÆBk6k{'l|8klk9m‚(9m‘m6nÉBk6k{'l|8klk9m‚(9m‘m6nÌBk6k{'l|8klk9m‚(9m‘m6nÎBk6k{'l|8klk9m‚(9m‘m6nÑBkmj 'n[8knjBkkQ 'mÒ+n +o +p 6q;)s )t )u *v
 Bq'r„ Bk 7kÓkQ 'mÔ+n +o +p 6q;)s )t )u *v Bq'r„ Bk 7kÕkQ 'mÖ+n +o +p +q  'r„ Bk 7k×6k×'li+m <mlk6k46m×'nj'oØ+p )q# )r  )sd )t +u  'vÉBk
7kÙ6k{'l|8klk9m‚(9m‚m6nÓBk6k{'l|8klk9m‚(9m‚m6nÕBk6k{'l|8klk9m‚(9m‚m6n×Bk5kÚ7kÛkT 'mÜ+n 6oÛ)p 'q’ Bk7kÝ6k{'l|8klk9m‚(9m‚m6nÝBkkQ 'mÞ+n +o +p +q  'rßBk 7kàkQ 'má+n +o +p +q  'rßBk 7kâkQ 'mã+n +o +p 6q;)s )t )u *v Bq'rßBk 7käkQ 'må+n +o +p +q  'rßBk 7kækQ 'mç+n +o +p 6q;)s )t )u *v Bq'rßBk 7kèkQ 'mé+n +o +p +q  'rßBk 7kê6kê'li+m <mlk6k46mê'ns'oë+p +q Bk7kì6k46mê'ns'oí+p +q Bk7kîkQ 'mï+n +o +p 6q;)s )t )u *v Bq'rßBk 7kðkQ 'mñ+n +o +p +q  'rßBk 7kòkQ 'mó+n +o +p 6q;)s )t )u *v Bq'rßBk 7kôkQ 'mõ+n +o +p 6q;)s )t  )u  )v Bq'rßBk 7kökQ 'm÷+n +o +p +q  'rßBk 7køkQ 'mù+n +o +p 6q;)s )t )u *v Bq'rßBk 7kúkU 'm÷+n 5oû5pü'qßBk7ký6k{'l|8klk9m‚(9m‚m6nàBk6k{'l|8klk9m‚(9m‚m6nâBk6k{'l|8klk9m‚(9m‚m6näBk6k{'l|8klk9m‚(9m‚m6næBk6k{'l|8klk9m‚(9m‚m6nèBk6k{'l|8klk9m‚(9m‚m6nêBk6k{'l|8klk9m‚(9m‚m6nðBk6k{'l|8klk9m‚(9m‚m6nòBk6k{'l|8klk9m‚(9m‚m6nôBk6k{'l|8klk9m‚(9m‚m6nöBk6k{'l|8klk9m‚(9m‚m6nøBk6k{'l|8klk9m‚(9m‚m6núBk6k{'l|8klk9m‚(9m‚m6nýBk5kþ6l;*n *o *p )q Bl'mÿ<lmk6l;*n *o *p *q  Bl'm <lmk6l;*n *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n
 *o
 *p
 )q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p *q Bl'm	<lmk6l;*n *o *p *q Bl'm
<lmk6l;)n )o )p )q Bl'm
<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm
<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n
 *o
 *p
 )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n
 *o
 *p
 )q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk>k6l;*n *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p *q  Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o *p *q Bl'm!<lmk6l;*n *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o *p *q Bl'm$<lmk6l;*n *o *p *q Bl'm%<lmk6l;*n *o *p *q Bl'm&<lmk6l;*n *o *p *q Bl'm'<lmk6l;*n *o *p )q Bl'm(<lmk6l;)n )o )p )q Bl'm)<lmk6l;*n *o *p *q Bl'm*<lmk6l;*n *o *p *q Bl'm+<lmk6l;*n *o *p *q Bl'm,<lmk6l;*n *o *p )q Bl'm-<lmk6l;*n *o *p *q Bl'm.<lmk6l;*n *o *p *q Bl'm/<lmk6l;*n *o *p )q Bl'm0<lmk7k15k26l;*n *o *p )q Bl'mÿ<lmk6l;*n *o *p *q  Bl'm <lmk6l;)n  *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n  *o  *p  )q Bl'm<lmk6l;*n! *o! *p! *q Bl'm<lmk6l;*n" *o" *p" *q Bl'm<lmk6l;*n" *o" *p" *q Bl'm <lmk6l;*n# *o# *p# )q Bl'm<lmk6l;*n" *o" *p" *q Bl'm	<lmk6l;*n! *o! *p! *q Bl'm
<lmk6l;)n  )o  )p  )q Bl'm
<lmk6l;*n  *o  *p  )q Bl'm<lmk6l;*n *o *p )q Bl'm
<lmk6l;)n  *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;)n  *o *p )q Bl'm<lmk6l;*n! *o! *p! )q Bl'm<lmk6l;*n$ *o$ *p$ )q Bl'm<lmk6l;*n% *o% *p% )q Bl'm<lmk6l;*n" *o" *p" )q Bl'm<lmk6l;*n! *o! *p! )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk>k6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n& *o& *p& )q Bl'm<lmk6l;*n' *o' *p' )q Bl'm<lmk6l;*n( *o( *p( *q  Bl'm<lmk6l;*n  *o  *p  )q Bl'm<lmk6l;*n$ *o$ *p$ )q Bl'm<lmk6l;*n" *o" *p" *q Bl'm <lmk6l;*n! *o! *p! *q Bl'm!<lmk6l;*n *o *p )q Bl'm"<lmk6l;*n *o *p )q Bl'm#<lmk6l;*n" *o" *p" *q Bl'm$<lmk6l;*n! *o! *p! )q Bl'm%<lmk6l;*n" *o" *p" *q Bl'm&<lmk6l;*n! *o! *p! *q Bl'm'<lmk6l;*n *o *p *q Bl'm(<lmk6l;)n  *o *p )q Bl'm)<lmk6l;*n *o *p *q Bl'm*<lmk6l;*n *o *p *q Bl'm+<lmk6l;*n *o *p *q Bl'm,<lmk6l;*n *o *p )q Bl'm-<lmk6l;*n *o *p *q Bl'm.<lmk6l;*n" *o" *p" *q Bl'm/<lmk6l;*n! *o! *p! )q Bl'm0<lmk7k35k46l;*n *o *p )q Bl'mÿ<lmk6l;*n *o *p) *q  Bl'm <lmk6l;*n( *o' *p! )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o* *p+ *q Bl'm<lmk6l;*n *o *p) *q Bl'm<lmk6l;*n *o *p) *q Bl'm <lmk6l;*n& *o *p, )q Bl'm<lmk6l;*n *o *p) *q Bl'm	<lmk6l;*n *o* *p+ *q Bl'm
<lmk6l;*n- *o *p. )q Bl'm
<lmk6l;*n *o *p& )q Bl'm<lmk6l;*n' *o& *p )q Bl'm
<lmk6l;*n( *o' *p! )q Bl'm<lmk6l;*n' *o& *p )q Bl'm<lmk6l;*n( *o' *p! )q Bl'm<lmk6l;*n- *o *p. )q Bl'm<lmk6l;*n *o* *p+ )q Bl'm<lmk6l;*n& *o *p, )q Bl'm<lmk6l;*n *o *p) )q Bl'm<lmk6l;*n *o* *p+ )q Bl'm<lmk6l;*n- *o *p. )q Bl'm<lmk6l;*n' *o& *p/ *q Bl'm<lmk6l;*n& *o *p0 )q Bl'm<lmk>k6l;*n  *o1 *p! )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n- *o *p. *q  Bl'm<lmk6l;*n *o* *p+ )q Bl'm<lmk6l;*n& *o *p )q Bl'm<lmk6l;*n *o *p) *q Bl'm <lmk6l;*n *o* *p+ *q Bl'm!<lmk6l;*n& *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o *p) *q Bl'm$<lmk6l;*n *o* *p+ )q Bl'm%<lmk6l;*n *o *p) *q Bl'm&<lmk6l;*n *o* *p+ *q Bl'm'<lmk6l;*n' *o& *p *q Bl'm(<lmk6l;*n( *o' *p! )q Bl'm)<lmk6l;*n- *o *p. *q Bl'm*<lmk6l;*n *o* *p+ *q Bl'm+<lmk6l;*n- *o *p. *q Bl'm,<lmk6l;*n- *o *p. )q Bl'm-<lmk6l;*n *o* *p+ *q Bl'm.<lmk6l;*n *o *p) *q Bl'm/<lmk6l;*n *o* *p+ )q Bl'm0<lmk7k55k66l;*n *o2 *p2 )q Bl'mÿ<lmk6l;*n *o3 *p3 *q  Bl'm <lmk6l;*n  *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o
 *p
 )q Bl'm<lmk6l;*n& *o4 *p4 *q Bl'm<lmk6l;*n *o3 *p3 *q Bl'm<lmk6l;*n *o3 *p3 *q Bl'm <lmk6l;*n- *o4 *p4 )q Bl'm<lmk6l;*n *o3 *p3 *q Bl'm	<lmk6l;*n& *o4 *p4 *q Bl'm
<lmk6l;*n  *o *p )q Bl'm
<lmk6l;*n *o5 *p5 )q Bl'm<lmk6l;*n- *o *p )q Bl'm
<lmk6l;*n  *o *p )q Bl'm<lmk6l;*n- *o *p )q Bl'm<lmk6l;*n  *o *p )q Bl'm<lmk6l;*n *o4 *p4 )q Bl'm<lmk6l;*n& *o6 *p6 )q Bl'm<lmk6l;*n *o5 *p5 )q Bl'm<lmk6l;*n *o3 *p3 )q Bl'm<lmk6l;*n- *o *p )q Bl'm<lmk6l;*n *o5 *p5 )q Bl'm<lmk6l;*n& *o6 *p6 *q Bl'm<lmk6l;*n *o3 *p3 )q Bl'm<lmk6l;*n *o *p )q Bl'm7<lmk6l;*n *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o4 *p4 *q  Bl'm<lmk6l;*n& *o6 *p6 )q Bl'm<lmk6l;*n *o2 *p2 )q Bl'm<lmk6l;*n *o3 *p3 *q Bl'm <lmk6l;*n- *o *p *q Bl'm!<lmk6l;*n *o5 *p5 )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o3 *p3 *q Bl'm$<lmk6l;*n- *o *p )q Bl'm%<lmk6l;*n *o3 *p3 *q Bl'm&<lmk6l;*n- *o *p *q Bl'm'<lmk6l;*n- *o *p )q Bl'm(<lmk6l;*n  *o *p )q Bl'm)<lmk6l;*n *o5 *p5 *q Bl'm*<lmk6l;*n& *o6 *p6 *q Bl'm+<lmk6l;*n *o5 *p5 *q Bl'm,<lmk6l;*n *o5 *p5 )q Bl'm-<lmk6l;*n& *o6 *p6 *q Bl'm.<lmk6l;*n *o3 *p3 *q Bl'm/<lmk6l;*n- *o *p )q Bl'm0<lmk7k85k96l;*n3 *o5 *p6 )q Bl'mÿ<lmk6l;*n4 *o6 *p *q  Bl'm <lmk6l;)n  *o( )p )q Bl'm<lmk6l;*n! *o! *p! )q Bl'm<lmk6l;*n( *o( *p( )q Bl'm<lmk6l;*n' *o' *p' )q Bl'm<lmk6l;*n *o *p* *q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o* *p) )q Bl'm<lmk6l;*n *o *p *q Bl'm	<lmk6l;*n *o *p* *q Bl'm
<lmk6l;)n  *o( )p )q Bl'm
<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o* *p) )q Bl'm
<lmk6l;)n  *o( )p )q Bl'm<lmk6l;*n *o* *p) )q Bl'm<lmk6l;)n  *o( )p )q Bl'm<lmk6l;*n *o *p* )q Bl'm<lmk6l;*n *o* *p) )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o* *p) )q Bl'm<lmk6l;*n *o *p* )q Bl'm<lmk6l;*n& *o) *p0 *q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm7<lmk6l;*n  *o  *p  )q Bl'm<lmk6l;)n  *o( )p )q Bl'm<lmk6l;)n  *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p* *q  Bl'm<lmk6l;*n *o* *p) )q Bl'm<lmk6l;*n4 *o *p )q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o* *p) *q Bl'm!<lmk6l;*n *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o *p *q Bl'm$<lmk6l;*n *o* *p) )q Bl'm%<lmk6l;*n *o *p *q Bl'm&<lmk6l;*n *o* *p) *q Bl'm'<lmk6l;*n *o* *p) *q Bl'm(<lmk6l;)n  *o( )p )q Bl'm)<lmk6l;*n *o *p* *q Bl'm*<lmk6l;*n *o* *p) *q Bl'm+<lmk6l;*n *o *p* *q Bl'm,<lmk6l;*n *o *p* )q Bl'm-<lmk6l;*n *o* *p) *q Bl'm.<lmk6l;*n *o *p *q Bl'm/<lmk6l;*n *o* *p) )q Bl'm0<lmk7k:5k;6l;*n4 *o *p4 )q Bl'mÿ<lmk6l;*n *o *p *q  Bl'm <lmk6l;*n' *o *p7 )q Bl'm<lmk6l;*n! *o! *p! )q Bl'm<lmk6l;*n( *o8 *p( )q Bl'm<lmk6l;*n' *o9 *p' )q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o& *p )q Bl'm<lmk6l;*n *o *p *q Bl'm	<lmk6l;*n *o *p *q Bl'm
<lmk6l;*n' *o *p7 )q Bl'm
<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o& *p )q Bl'm
<lmk6l;*n' *o *p7 )q Bl'm<lmk6l;*n *o& *p )q Bl'm<lmk6l;*n' *o *p7 )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o& *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n *o& *p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n& *o- *p& *q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n  *o *p  )q Bl'm7<lmk6l;*n8 *o  *p8 )q Bl'm<lmk6l;*n' *o *p7 )q Bl'm<lmk6l;*n *o  *p/ )q Bl'm<lmk6l;*n *o7 *p )q Bl'm<lmk6l;*n *o *p *q  Bl'm<lmk6l;*n *o& *p )q Bl'm<lmk6l;*n4 *o *p4 )q Bl'm<lmk6l;*n *o *p *q Bl'm <lmk6l;*n *o& *p *q Bl'm!<lmk6l;*n *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o *p *q Bl'm$<lmk6l;*n *o& *p )q Bl'm%<lmk6l;*n *o *p *q Bl'm&<lmk6l;*n *o& *p *q Bl'm'<lmk6l;*n *o& *p *q Bl'm(<lmk6l;*n' *o *p7 )q Bl'm)<lmk6l;*n *o *p *q Bl'm*<lmk6l;*n *o& *p *q Bl'm+<lmk6l;*n *o *p *q Bl'm,<lmk6l;*n *o *p )q Bl'm-<lmk6l;*n *o& *p *q Bl'm.<lmk6l;*n *o *p *q Bl'm/<lmk6l;*n *o& *p )q Bl'm0<lmk7k<5k=6l;*n2 *o2 *p6 )q Bl'mÿ<lmk6l;*n *o *p *q Bl'm <lmk6l;*n  *o )p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n1 *o )p *q Bl'm<lmk6l;*n6 *o6 *p: *q Bl'm<lmk6l;*n6 *o6 *p: *q Bl'm <lmk6l;*n *o& *p )q Bl'm<lmk6l;*n6 *o6 *p: *q Bl'm	<lmk6l;*n1 *o )p *q Bl'm
<lmk6l;)n  *o )p )q Bl'm
<lmk6l;*n *o *p* )q Bl'm<lmk6l;*n- *o- *p )q Bl'm
<lmk6l;*n  *o )p )q Bl'm<lmk6l;*n- *o- *p )q Bl'm<lmk6l;)n  *o )p )q Bl'm<lmk6l;*n *o *p' )q Bl'm<lmk6l;*n *o *p1 )q Bl'm<lmk6l;*n *o& *p )q Bl'm<lmk6l;*n6 *o6 *p: )q Bl'm<lmk6l;*n' *o *p *q Bl'm<lmk6l;*n *o *p' )q Bl'm<lmk6l;*n *o *p1 *q Bl'm<lmk6l;*n; *o; *p< )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;*n  *o1 )p )q Bl'm<lmk6l;*n *o )p )q Bl'm<lmk6l;*n( *o& )p )q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;*n' *o *p8 *q Bl'm<lmk6l;*n *o- *p *q Bl'm<lmk6l;*n *o *p- )q Bl'm<lmk6l;*n5 *o5 *p; *q= Bl'm <lmk6l;*n7 *o& )p *q Bl'm!<lmk6l;*n *o *p0 )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n6 *o6 *p: *q Bl'm$<lmk6l;*n *o& *p *q Bl'm%<lmk6l;*n6 *o6 *p: *q Bl'm&<lmk6l;*n *o& *p *q Bl'm'<lmk6l;*n- *o- *p )q Bl'm(<lmk6l;)n  *o )p )q Bl'm)<lmk6l;*n *o *p' *q Bl'm*<lmk6l;*n *o *p1 *q Bl'm+<lmk6l;*n *o *p' *q Bl'm,<lmk6l;*n *o *p' )q Bl'm-<lmk6l;*n *o *p1 *q Bl'm.<lmk6l;*n6 *o6 *p: *q Bl'm/<lmk6l;*n *o& *p )q Bl'm0<lmk7k>5k?6l;*n *o *p )q Bl'mÿ<lmk6l;*n& *o *p *q Bl'm <lmk6l;)n *o7 *p' )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n  *o *p )q Bl'm<lmk6l;)n *o1 *p *q Bl'm<lmk6l;*n* *o *p *q Bl'm<lmk6l;*n* *o *p *q Bl'm <lmk6l;)n *o8 *p )q Bl'm<lmk6l;*n* *o *p *q Bl'm	<lmk6l;)n *o1 *p *q Bl'm
<lmk6l;)n *o  *p7 )q Bl'm
<lmk6l;*n) *o *p* )q Bl'm<lmk6l;*n *o- *p )q Bl'm
<lmk6l;)n *o1 *p )q Bl'm<lmk6l;*n *o- *p )q Bl'm<lmk6l;)n *o *p7 )q Bl'm<lmk6l;*n' *o* *p) )q Bl'm<lmk6l;*n7 *o *p. )q Bl'm<lmk6l;*n *o *p' )q Bl'm<lmk6l;*n* *o *p )q Bl'm<lmk6l;*n *o *p *q Bl'm<lmk6l;*n' *o* *p) )q Bl'm<lmk6l;*n7 *o *p. *q Bl'm<lmk6l;*n) *o *p* )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;)n *o  *p( )q Bl'm<lmk6l;)n *o( *p )q Bl'm<lmk6l;)n *o7 *p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n  *o' *p- *q Bl'm<lmk6l;*n *o *p' *q Bl'm<lmk6l;*n- *o *p* )q Bl'm<lmk6l;*n *o *p *q= Bl'm <lmk6l;)n *o1 *p *q Bl'm!<lmk6l;*n& *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n* *o *p *q Bl'm$<lmk6l;)n *o1 *p *q Bl'm%<lmk6l;*n* *o *p *q Bl'm&<lmk6l;)n *o1 *p *q Bl'm'<lmk6l;*n *o- *p )q Bl'm(<lmk6l;)n *o *p7 )q Bl'm)<lmk6l;*n' *o* *p) *q Bl'm*<lmk6l;*n7 *o *p. *q Bl'm+<lmk6l;*n' *o* *p) *q Bl'm,<lmk6l;*n' *o* *p) )q Bl'm-<lmk6l;*n7 *o *p. *q Bl'm.<lmk6l;*n* *o *p *q Bl'm/<lmk6l;)n *o1 *p )q Bl'm0<lmk7k@5kA6l;*n *o *p* )q Bl'mÿ<lmk6l;*n *o* *p0 *q Bl'm <lmk6l;*n *o )p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n *o )p )q Bl'm<lmk6l;*n *o  *p )q Bl'm<lmk6l;*n *o  )p *q Bl'm<lmk6l;*n *o* *p0 *q Bl'm<lmk6l;*n *o* *p0 *q Bl'm <lmk6l;*n' *o8 *p )q Bl'm<lmk6l;*n *o* *p0 *q Bl'm	<lmk6l;*n *o  )p *q Bl'm
<lmk6l;*n( *o! )p )q Bl'm
<lmk6l;*n *o- *p. )q Bl'm<lmk6l;*n- *o9 *p )q Bl'm
<lmk6l;*n *o )p )q Bl'm<lmk6l;*n- *o9 *p )q Bl'm<lmk6l;*n( *o! )p )q Bl'm<lmk6l;*n& *o, *p/ )q Bl'm<lmk6l;*n *o *p( )q Bl'm<lmk6l;*n9 *o( *p! )q Bl'm<lmk6l;*n *o* *p0 )q Bl'm<lmk6l;*n *o( *p *q Bl'm<lmk6l;*n& *o, *p/ )q Bl'm<lmk6l;*n *o *p( *q Bl'm<lmk6l;*n *o- *p. )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;*n  *o! )p )q Bl'm<lmk6l;*n( *o! )p )q Bl'm<lmk6l;*n7 *o )p )q Bl'm<lmk6l;*n *o )p )q Bl'm<lmk6l;*n- *o7 *p *q Bl'm<lmk6l;*n' *o1 *p! *q Bl'm<lmk6l;*n *o- *p9 )q Bl'm<lmk6l;*n *o: *p) *q= Bl'm <lmk6l;*n' *o  )p *q Bl'm!<lmk6l;*n *o& *p, )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o* *p0 *q Bl'm$<lmk6l;*n' *o8 *p *q Bl'm%<lmk6l;*n *o* *p0 *q Bl'm&<lmk6l;*n' *o8 *p *q Bl'm'<lmk6l;*n- *o9 *p )q Bl'm(<lmk6l;*n( *o! )p )q Bl'm)<lmk6l;*n& *o, *p/ *q Bl'm*<lmk6l;*n *o *p( *q Bl'm+<lmk6l;*n& *o, *p/ *q Bl'm,<lmk6l;*n& *o, *p/ )q Bl'm-<lmk6l;*n *o *p( *q Bl'm.<lmk6l;*n *o* *p0 *q Bl'm/<lmk6l;*n' *o8 *p )q Bl'm0<lmk7kB5kC6l;*n4 *o *p4 )q Bl'mÿ<lmk6l;*n *o* *p *q Bl'm <lmk6l;*n )o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;*n )o *p )q Bl'm<lmk6l;*n *o  *p )q Bl'm<lmk6l;*n )o *p *q Bl'm<lmk6l;*n *o* *p *q Bl'm<lmk6l;*n *o* *p *q Bl'm <lmk6l;*n' *o! *p' )q Bl'm<lmk6l;*n *o* *p *q Bl'm	<lmk6l;*n )o *p *q Bl'm
<lmk6l;*n( )o *p( )q Bl'm
<lmk6l;*n *o0 *p )q Bl'm<lmk6l;*n& *o *p& )q Bl'm
<lmk6l;*n )o *p )q Bl'm<lmk6l;*n& *o *p& )q Bl'm<lmk6l;*n( )o *p( )q Bl'm<lmk6l;*n *o' *p )q Bl'm<lmk6l;*n- *o7 *p- )q Bl'm<lmk6l;*n' *o *p' )q Bl'm<lmk6l;*n *o* *p )q Bl'm<lmk6l;*n- *o  *p- *q Bl'm<lmk6l;*n *o' *p )q Bl'm<lmk6l;*n- *o7 *p- *q Bl'm<lmk6l;*n *o0 *p )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;*n( )o *p( )q Bl'm<lmk6l;*n( )o *p( )q Bl'm<lmk6l;*n7 *o *p7 )q Bl'm<lmk6l;*n )o *p )q Bl'm<lmk6l;*n& *o( *p& *q Bl'm<lmk6l;*n *o  *p *q Bl'm<lmk6l;*n *o- *p )q Bl'm<lmk6l;*n *o *p *q= Bl'm <lmk6l;*n' *o! *p' *q Bl'm!<lmk6l;*n *o) *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n *o* *p *q Bl'm$<lmk6l;*n' *o *p' *q Bl'm%<lmk6l;*n *o* *p *q Bl'm&<lmk6l;*n' *o *p' *q Bl'm'<lmk6l;*n& *o *p& )q Bl'm(<lmk6l;*n( )o *p( )q Bl'm)<lmk6l;*n *o' *p *q Bl'm*<lmk6l;*n- *o7 *p- *q Bl'm+<lmk6l;*n *o' *p *q Bl'm,<lmk6l;*n *o' *p )q Bl'm-<lmk6l;*n- *o7 *p- *q Bl'm.<lmk6l;*n *o* *p *q Bl'm/<lmk6l;*n' *o *p' )q Bl'm0<lmk7kD5kE6l;*n *o3 *p4 )q Bl'mÿ<lmk6l;*n* *o4 *p *q Bl'm <lmk6l;*n! *o- *p' )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n  *o
 *p
 )q Bl'm<lmk6l;*n! *o- *p' *q Bl'm<lmk6l;*n* *o *p *q Bl'm<lmk6l;*n* *o *p *q Bl'm <lmk6l;*n *o& *p )q Bl'm<lmk6l;*n* *o *p *q Bl'm	<lmk6l;*n! *o- *p' *q Bl'm
<lmk6l;)n *o *p )q Bl'm
<lmk6l;*n) *o *p )q Bl'm<lmk6l;*n *o *p* )q Bl'm
<lmk6l;*n! *o- *p' )q Bl'm<lmk6l;*n *o *p* )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n' *o *p )q Bl'm<lmk6l;*n7 *o *p& )q Bl'm<lmk6l;*n  *o& *p )q Bl'm<lmk6l;*n* *o *p )q Bl'm<lmk6l;*n8 *o *p- *q Bl'm<lmk6l;*n' *o *p )q Bl'm<lmk6l;*n7 *o *p& *q Bl'm<lmk6l;*n) *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;)n *o  *p( )q Bl'm<lmk6l;)n *o *p7 )q Bl'm<lmk6l;*n *o *p9 )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n1 *o *p) *q Bl'm<lmk6l;*n# *o* *p0 *q Bl'm<lmk6l;*n- *o *p )q Bl'm<lmk6l;*n *o4 *p *q= Bl'm <lmk6l;*n *o& *p *q Bl'm!<lmk6l;*n* *o *p )q Bl'm"<lmk6l;)n )o )p )q Bl'm#<lmk6l;*n* *o *p *q Bl'm$<lmk6l;*n *o& *p *q Bl'm%<lmk6l;*n* *o *p *q Bl'm&<lmk6l;*n *o& *p *q Bl'm'<lmk6l;*n *o *p* )q Bl'm(<lmk6l;)n *o *p )q Bl'm)<lmk6l;*n' *o *p *q Bl'm*<lmk6l;*n7 *o *p& *q Bl'm+<lmk6l;*n' *o *p *q Bl'm,<lmk6l;*n' *o *p )q Bl'm-<lmk6l;*n7 *o *p& *q Bl'm.<lmk6l;*n* *o *p *q Bl'm/<lmk6l;*n *o& *p )q Bl'm0<lmk7kF5kG6l;*n *o4 *p )q Bl'mÿ<lmk6l;*n* *o *p* *q Bl'm <lmk6l;)n *o( *p )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n  *o
 *p )q Bl'm<lmk6l;)n *o( *p *q Bl'm<lmk6l;*n* *o *p* *q Bl'm<lmk6l;*n* *o *p* *q Bl'm <lmk6l;*n *o *p( )q Bl'm<lmk6l;*n* *o *p* *q Bl'm	<lmk6l;)n *o( *p *q  Bl'm
<lmk6l;)n *o *p )q Bl'm
<lmk6l;*n) *o *p) )q Bl'm<lmk6l;*n *o& *p' )q Bl'm
<lmk6l;)n *o( *p )q Bl'm<lmk6l;*n *o& *p' )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n' *o *p0 )q Bl'm<lmk6l;*n7 *o- *p )q Bl'm<lmk6l;)n *o( *p )q Bl'm<lmk6l;*n* *o *p* )q Bl'm<lmk6l;*n *o *p( *q Bl'm<lmk6l;*n' *o *p0 )q Bl'm<lmk6l;*n7 *o- *p *q Bl'm<lmk6l;*n) *o *p) )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;)n *o  *p )q Bl'm<lmk6l;)n *o( *p )q Bl'm<lmk6l;)n *o *p( )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n( *o *p7 *q  Bl'm<lmk6l;*n  *o9 *p1 )q Bl'm<lmk6l;*n- *o *p& )q Bl'm<lmk6l;*n *o *p *q= Bl'm <lmk6l;)n *o( *p *q Bl'm!<lmk6l;*n* *o *p* )q Bl'm"<lmk6l;)n *o  *p  )q Bl'm#<lmk6l;*n* *o *p* *q Bl'm$<lmk6l;*n *o *p( *q Bl'm%<lmk6l;*n* *o *p* *q Bl'm&<lmk6l;*n *o *p( *q Bl'm'<lmk6l;*n *o& *p' )q Bl'm(<lmk6l;)n *o *p )q Bl'm)<lmk6l;*n' *o *p0 *q Bl'm*<lmk6l;*n7 *o- *p *q Bl'm+<lmk6l;*n' *o *p0 *q Bl'm,<lmk6l;*n' *o *p0 )q Bl'm-<lmk6l;*n7 *o- *p *q Bl'm.<lmk6l;*n* *o *p* *q Bl'm/<lmk6l;*n *o *p( )q Bl'm0<lmk7kH5kI6l;*n *o4 *p3 )q Bl'mÿ<lmk6l;*n *o *p4 *q Bl'm <lmk6l;)n *o( *p& )q Bl'm<lmk6l;)n )o )p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n  *o *p
 )q Bl'm<lmk6l;)n *o( *p& *q Bl'm<lmk6l;*n *o *p4 *q Bl'm<lmk6l;*n *o *p4 *q Bl'm <lmk6l;*n  *o *p )q Bl'm<lmk6l;*n *o *p4 *q Bl'm	<lmk6l;)n *o( *p& *q  Bl'm
<lmk6l;)n *o *p )q Bl'm
<lmk6l;*n* *o *p )q Bl'm<lmk6l;*n' *o- *p )q Bl'm
<lmk6l;)n *o( *p& )q Bl'm<lmk6l;*n' *o- *p )q Bl'm<lmk6l;)n *o *p )q Bl'm<lmk6l;*n- *o* *p )q Bl'm<lmk6l;*n *o, *p& )q Bl'm<lmk6l;)n *o( *p& )q Bl'm<lmk6l;*n *o> *p4 )q Bl'm<lmk6l;*n  *o *p *q Bl'm<lmk6l;*n- *o* *p )q Bl'm<lmk6l;*n *o, *p& *q Bl'm<lmk6l;*n *o *p )q Bl'm<lmk6l;)n )o )p )q Bl'm7<lmk6l;)n *o  *p )q Bl'm<lmk6l;)n *o( *p& )q Bl'm<lmk6l;)n *o  *p' )q Bl'm<lmk6l;)n *o *p  )q Bl'm<lmk6l;*n7 *o' *p *q  Bl'm<lmk6l;*n1 *o *p& )q Bl'm<lmk6l;*n* *o *p4 )q Bl'm<lmk6l;*n *o6 *p5 *q= Bl'm <lmk6l;)n *o( *p& *q Bl'm!<lmk6l;*n *o *p4 )q Bl'm"<lmk6l;)n *o  *p  )q Bl'm#<lmk6l;*n *o *p4 *q Bl'm$<lmk6l;*n  *o *p *q Bl'm%<lmk6l;*n *o *p4 *q Bl'm&<lmk6l;*n  *o *p *q Bl'm'<lmk6l;*n' *o- *p )q Bl'm(<lmk6l;)n *o *p )q Bl'm)<lmk6l;*n- *o* *p *q Bl'm*<lmk6l;*n *o, *p& *q Bl'm+<lmk6l;*n- *o* *p *q Bl'm,<lmk6l;*n- *o* *p )q Bl'm-<lmk6l;*n *o, *p& *q Bl'm.<lmk6l;*n *o *p4 *q Bl'm/<lmk6l;*n  *o *p )q Bl'm0<lmk7kJ6k17kK5kL3lM4m 6nN>nm6nO>nm6nP>nm6nQ>nm6nR>nm7mS3mT7mU3mV7mW5mX3nY7nZ4n  3o[7o\3o]7o^3o_3p`3qa7qb3qc7qd3qe7qf6qg'rh8qrqBq6rg'si8rsrBr6sj)u  )v  )w  Bs6tk)v  )w  )x  Bt6uñ 'wò 3xlBu6uñ 'wm3xnBu+u +v +w +x +y +z '{o'|p8||<)~ )  B|'}p8}}<) )€ B}+~ + +€ + 3‚q3ƒr7ƒs3ƒt7ƒu3ƒv7ƒw3ƒx7ƒy3ƒz7ƒ{6ƒñ '…ò 3†|Bƒ6ƒñ '…ò 3†}Bƒ6ƒñ '…ò 3†~Bƒ6ƒñ '…ò 3†Bƒ6ƒñ '…ò 3†€Bƒ6ƒñ '…ò 3†Bƒ6ƒñ '…ò 3†‚Bƒ6ƒñ '…ò 3†ƒBƒ6ƒñ '…ò 3†„Bƒ6ƒñ '…ò 3†…Bƒ6ƒñ '…ò 3††Bƒ6ƒñ '…ò 3†‡Bƒ6ƒñ '…ò 3†ˆBƒ3ƒ‰7ƒŠ3ƒ‹7ƒŒ5ƒ5„Ž5…3†7†‘3†’7†“6†ñ 'ˆò 3‰”B†6†ñ 'ˆò 3‰•B†3†–7†—5†˜7†™3†š7†›5†œ7†3†ž7†Ÿ3† 7†¡5†¢6‡ '‰ù B‡3ˆ£6‰¤'Š¥8‰Š‰6‹\ 'Œ¦8‹Œ‹B‹ A‰ 3‰§7‰¨3‰©7‰ª4‰  3Š«3‹¬7‹­+‹ 6Œ®'¯8ŒŒŽŒ '°8ŒŒBŒ6ñ 'ò 3±B+ 6Žñ 'ò 3‘²BŽ6Ž³'´8ŽŽ'µ'‘¶'’·BŽ6ñ '‘ò 3’¸B3¹7º6ñ '‘ò 3’»B3¼7½3¾7¿3À7Á3Â7Ã)  3Ä7Å5È6‘³'’´8‘’‘'“µ'”Æ'•ÇB‘'’Ç<‘’6‘³'’´8‘’‘'“µ'”É'•ÊB‘'’Ê<‘’6‘³'’´8‘’‘'“µ'”Ë'•ÌB‘'’Ì<‘’6‘³'’´8‘’‘'“µ'”Í'•ÇB‘'’Î<‘’6‘³'’´8‘’‘'“µ'”Ï'•ÇB‘'’Ð<‘’6‘³'’´8‘’‘'“µ'”Ñ'•ÇB‘'’Ò<‘’7Ó6Ó'‘Ç8‘6‘Ó'’Ê8‘’‘ ‘7Ô6Ó'‘Î8‘6‘Ó'’Ê8‘’‘ ‘7Õ6Ó'‘Ð8‘6‘Ó'’Ê8‘’‘ ‘7Ö6Ó'‘Ò8‘6‘Ó'’Ê8‘’‘ ‘7×+ 7Ø3Ù7Ú6ñ '’ò 3“ÛB5Ü7Ý3Þ7ß6ñ '’à3“áB6ñ '’â3“ãB)  )‘ 6’ñ '”ò 3•äB’5’å5“æ'”ç<“”’7’è4’  3“é7“ê3“ë7“ì3“í7“î3“ï7“ð3“ñ7“ò3“ó7“ô3“õ7“ö6“ñ '•ò 3–÷B“5“ù5”ø'•ç<”•“3”ú7”û3”ü7”ý3”þ7”ÿ6”ñ '–ò 3— B”5”4•  '–<•–”5•'–ç<•–”7”3”7”)”  7” 3”7”	3”
7”
3”7”
6”ñ '–ò 3—B”3”7”3”7”6”'•3–<–•”3”7”3”7”3”7”9”;'–B”5”6•) '–8•–•B•'–<•–”6•>•”6•³'–´8•–•'—µ'˜Ë'™ B•'–!<•–”6•³'–´8•–•'—µ'˜"'™#B•'–$<•–”'•6–k '˜8˜˜”'™%8˜™˜˜?˜'™8™™”'š&8™š™™?™B–<–•”3•'7•3•(7•)3•*7•+3•,7•-3•.7•/6•ñ '—ò 3˜0B•)•  7•1)•  7•2)•  7•3)•  7•4)•ÿÿ7•5)•  7•63•77•‰ )•  7•8)•  7•9)•  3–:7–;5–<4—  '˜=<—˜–'—>8——;'™?)š  B—'˜@<—˜–6—³'˜´8—˜—'™µ'šË'›AB—'˜B<—˜–6—³'˜´8—˜—'™µ'šË'›CB—'˜D<—˜–7–E3–F7–G3–H7–I3–J7–K3–L7–M4–  +— 3˜N7˜O5˜P4™  'šQ<™š˜5™R'šç<™š˜7˜S3˜T7˜U3˜V7˜W3˜X7˜Y3˜Z7˜[3˜\7˜]3˜^7˜_6˜ñ 'šò 3›`B˜3˜a7˜b3˜c7˜d3˜e7˜f)˜  3™g7™h3™i7™j5™k3šl7šm)šZ 3›n7›o5›q6œ) 9œ*œ6ž+ Bž'Ÿp&žŸž)Ÿ )  Bœ'r<œ›4œ  'ì<œ›4œ  'î<œ›6œ³'´8œœ'žµ'Ÿs' tBœ't<œ›6œ³'´8œœ'žµ'Ÿu' vBœ'v<œ›7›w6›w'œx3y<œ›6›w'œz3{<œ›6›w'œ|3}<œ›6›w'œ~3<œ›6›w'œ€3<œ›6›w'œ‚3ƒ<œ›6›w'œ„3…<œ›6›w'œ†3‡<œ›6›w'œˆ3‰<œ›6›w'œŠ3‹<œ›6›R 'œŒ8›œ›+œ  57Ž376R 'ž‘8ž+ž 3Ÿ’7Ÿ“+Ÿ 3 ”7 •* @ +¡ )¢  +£  3¤–7¤Q 3¤—7¤˜3¤™7¤š3¤›7¤œ5¤4¥  '¦ž<¥¦¤3¥Ÿ7¥ 3¥¡7¥¢3¥£7¥¤3¥¥7¥¦5¥©6¦³'§´8¦§¦'¨µ'©§'ª¨B¦'§ª<¦§¥6¦³'§´8¦§¦'¨µ'©§'ª«B¦'§¬<¦§¥6¦³'§´8¦§¦'¨µ'©§'ª­B¦'§®<¦§¥3¦¯7¦°3¦±7¦²5¦´6§³'¨´8§¨§'©µ'ª¶'«³B§'¨µ<§¨¦6§³'¨´8§¨§'©µ'ª¶'«¶B§'¨·<§¨¦6§³'¨´8§¨§'©µ'ª¶'«¸B§'¨¹<§¨¦3§º7§»5§¾5¨¼>P¨6©½>©¨'©¿<¨©§3CÀ3¨Á7¨Â3¨Ã7¨Ä3¨Å7¨Æ3¨Ç7¨È3¨É7¨Ê5¨Ë6©j)«  )¬  )­  B©'ªÌ<©ª¨6©j)«  )¬  )­  B©'ªÍ<©ª¨7¨Î3¨Ï7¨Ð3¨Ñ7¨Ò6¨ñ 'ªm3«ÓB¨3¨Ô7¨ë 5¨Õ7¨Ö4¨ 6©×>©¨6©Ø>©¨6©Ù>©¨>P¨5©Ú6ª\ 9ª]ªBª=ªf©5ªÛ'«Ü<ª«©5ªÝ'«Þ<ª«©5ªà5«ß'¬á<«¬ª5«â'¬ã<«¬ª4«  '¬Ü<«¬ª3«ä7«å'«æ8«« '­µ'®ç)¯ )°  B«'¬è8¬¬ ®« 3¯é'°êB¬5¬í6­³'®´8­®­'¯µ'°ë'±ìB­'®î<­®¬5­ï'®ç<­®¬3­ð7­ñ6­ñ '¯ò 3°òB­5­ó6®³'¯´8®¯®'°µ'±ë'²ìB®'¯î<®¯­6®³'¯´8®¯®'°µ'±Ë'² B®'¯!<®¯­6®³'¯´8®¯®'°µ'±"'²#B®'¯$<®¯­7­ô3­õ7­ö3­÷7­ø3­ù7­ú3­û7­ü3­ý7­þ6­³'®ÿ8­®­7­ÿ6­¤'® 8­®­7­ 3­7­3­7­3­7­3­ 7­3­	7­
3­
7­3­
7­3­7­6­ñ '¯ò 3°B­5­5®'¯<®¯­5®'¯<®¯­5®'¯<®¯­5®'¯<®¯­3®7®3®7®3®7® 3®!7®"3®#7®$3®%7®&3®'7®(3®)7®*)®  3¯+7¯,5¯-6°) 9°*°6²+ B²'³, &²³²)³ B°=°Â¯6°) 9°*°6²+ B²'³, &²³²)³ B°'±.<°±¯7¯/6¯/'°03±1<±°¯6¯/'°23±3<±°¯6¯/'°ˆ3±4<±°¯6¯/'°53±6<±°¯+¯ 7¯7+¯ 7¯86¯ñ '±ò 3²9B¯5¯:6°) 9°*°6²+ B²'³, &²³²)³ )´  B°'±;<°±¯6°\ 9°]°B°'±<<°±¯6°) '±8°±°B°'±%8°±°°A°'±%<°±¯7¯=3¯>7¯C 3¯?7¯@3¯A7¯B3¯C7¯D5¯F6°³'±´8°±°'²µ'³Ï'´EB°'±E<°±¯6°³'±´8°±°'²µ'³Ï'´GB°'±G<°±¯6°³'±´8°±°'²µ'³Ï'´HB°'±H<°±¯6°³'±´8°±°'²µ'³Ï'´IB°'±I<°±¯6°³'±´8°±°'²µ'³Ï'´JB°'±J<°±¯6°³'±´8°±°'²µ'³Ï'´KB°'±K<°±¯6°) 9°*°6²+ B²'³, &²³²)³ B°=°Â¯7¯L3¯M7¯N5¯O4°  '±P<°±¯=Â¯7¯Q3¯R7¯S3¯T7¯U6¯ñ '±ò 3²VB¯3¯W7¯X'¯\3°Y<°¯j'¯V3°Z<°¯j'¯X3°[<°¯j'¯W3°\<°¯j'¯T3°]<°¯j'¯U3°^<°¯j6¯ñ '±_3²`B¯6¯ñ '±m3²aB¯6¯ñ '±â3²bB¯6¯ñ '±à3²cB¯6¯ñ '±ò 3²dB¯6¯ñ '±e3²fB¯6¯g'±h6²;)´ *µ *¶B )· B² A¯6¯g'±i6²jB²'³k&±³±6²;)´ *µ *¶B )· B² A¯6¯g'±l6²;)´ *µ *¶B )· B² A¯2  €K  A[Shadow] Come to the discord: https://discord.gg/QNnCTgAAFE!!get_user_name&[Shadow] We are Glad to See You, $[Shadow] Welcome to Shadow.lua!color_print 
unload     round_start      flash_time  draw_indicators indicator indicators
states animation_speedposition_speed
spacing
x_offset
states 	font bomb_update bomb_indicatorm_bBombDefusedm_pBombDefuserm_flTimerLengthm_flDefuseLengthm_bBeingDefused 
bomb_y
prev_mouse_statemouse_downdrag_offset_y drag_offset_x is_draggingpadding rect_height<rect_widthx	font 
bomb_xšfound_bomblast_defuse_statedefuse_activebomb_activedefuse_start_time bomb_start_time m_bBombDefused m_pBombDefuser m_flTimerLength m_flDefuseLength m_bBeingDefused m_nBombSite yx¬m_nBombSitedraw_watermark update_watermark_position fps  watermark_settingslast_time_for_fpsverdana left_panel_offsetçÿÿÿprev_mouse_stateinitializedlast_time_for_fps current_fps frame_count_for_fps is_hovereddrag_offset_y drag_offset_x is_draggingglow_width glow_animation_speedanimation_speedmouse_downverdana yx glow_offsetçÿÿÿtext_offsetœÿÿÿicon_offset  last_k_statelast_insert_state 	draw  get_bind_display_text get_active_bindskeybind_listheader_font 

width‚
height y–header_font drag_offset_y drag_offset_x is_draggingvisiblex
	font remove_visual_duck auto_stop_in_air block_wasd is_aiming_at_enemy is_hovering has_ssg08 is_on_ground get_relative_velocity get_velocity 
timers 
right forward 
backward 	left keys_state 
right	backforward	left
settings vertical_threshold hold_timevelocity_thresholdñÑÇµñ“÷	keys 	VK_SS	VK_AA	VK_WW	VK_DD  	keys stop_activeKEYEVENTF_KEYUP
timers keys_state 
settings auto_strafer_was_enabled 
AiPeek 
stop_all start_return start_peek ai_peek_on_player_hurt check_shot_fired calculate_peek_time should_peek angle_vectorstrace_bulletai_peek_get_bone_pos get_eye_position get_distance vec_length vec_sub ai_peek_settings pBoneMatrix€bone_spacing enemy_hitvecViewOffset jump_performedmovement_blockedKEYEVENTF_KEYUP	VK_DD	VK_SS	VK_AA	VK_WWreturn_start_time peek_limit_meters peek_offset was_holdinglast_ammo_count calculated_peek_time peek_start_time is_returning
peek_dir is_peekingmodelState pGameSceneNode  get_eye_pos    vecViewOffset can_shootis_ducking
bones vecViewOffset m_vecViewOffsetC_BaseModelEntity$void(__fastcall*)(void*, void*) 
create(E8 ?? ?? ?? ?? 80 7C 24 ?? ?? 74 25find_and_resolve
scope 
center x y 
screen 
screen 
center 	multcurrent 
alpha  x y 
target 	gap_distanceleft_distanceright_distancebottom_distancetop_distanceaspect_ratio point_lengthanimation_speedline_lengthÞcurrent 	gap_distanceleft_distanceright_distancebottom_distancetop_distanceaspect_ratio point_lengthanimation_speedline_lengthÞ 
target current 
speedlast_time 
progress point_lengthgap_distanceline_length
alphabet n k a i w r s t v g d x f l u q p m b e j z y o h c   update_angles update_keys bodycam_settings
angles	base 

pitch 
angle
speedû¨¸½áõ‘ý
angles 
active roll_target pitch_target 	base 
speed2š³æÌ	™³æü
angle2	roll halo_update halo_update_config find_head_hitbox draw_3d_halo draw_glow_line  
config 
config head_hitbox_indexÿÿÿÿglow_color thicknessheight_offset
segments@glow_radius
glow_intensity
radius €€Ø€draw_smoke_radius bDidSmokeEffectm_bDidSmokeEffectsmokeOriginm_vecOriginsmokeDetonationPos smokeDetonationPos bDidSmokeEffect smokeOrigin m_vSmokeDetonationPosdraw_molotov_radius convex_hull fireCountm_fireCountbFireIsBurningm_bFireIsBurningfirePositions firePositions bFireIsBurning fireCount m_firePositionsC_Infernomenu_snow draw_snowflakes_menu update_snowflakes_menu create_snowflake_menu snowflakes_menu spawn_delay_menuš³æÌ	™³æýwind_menuš³æÌ	™³¦ýsnowflake_size_menumax_snowflakes_menu¬snowflakes_menu accumulated_time_menu exposure_on_override_view exposure_on_round_start set_exposure  PitchJitter ZeroPitchWithManuals ragebot_anti_aim_pitchmanual_aa last_states 
right	backforward	left%ragebot_anti_aim_base_yaw_offset draw_logs 
update on_player_death on_player_hurt_received add_misslog add_hitlog 
checkLMB create_log_window GetHitgroupName 	Lerplogs_settingsm_nTickBaseCBasePlayerControllerm_sSanitizedPlayerNameCCSPlayerControllerVerdana 

misslogs 	hurt
LBMState
_time prevWeapon starter prevBullets 
lasttime 
selfHurthitlogs m_nTickBase m_sSanitizedPlayerName Verdana //nix/scripts/Shadow V2/Assets/verdanab.ttfon_move_override_fov overrideFOV  def_zoom_fov2def_zoom_fov1(target_fovZcurrent_fovZ
is_knife 
get_zoom apply_glow_to_team  apply_glow_to_active_weapon apply_glow_to_local_player  draw_skeleton draw_bone_line interpolate_skeletons lerp_vector get_skeleton_positions get_bone_pos  backtrack_skeleton_settings right_ankleright_kneeright_hipleft_ankleleft_knee
left_hipright_wristright_elbowright_shoulder
left_wrist
left_elbow
left_shoulder	
pelvis
waist
chest	neck	head backtrack_data backtrack_data interpolation_speedš³æÌ	™³æý
bones last_update render_jump_circles render_trails new_point mod 
is_alive trails_settingsnLifeStatem_lifeStatenHealthm_iHealth
null_ptr
void*	cast
points 
current_time nLifeState 	sizenHealth min_distancemax_points
interval
lifetimed
null_ptr 
points 
EPeek kill_delay_lastlast_target_time target_dead_timelast_target_indexlast_shot_timekill_delayshot_delayreaction_time aimbot_update get_target_enemy weapon_is_at_max_accuracy aimbot_get_bone_pos  yxmodelStatem_modelStateCSkeletonInstancepGameSceneNodem_pGameSceneNodescreen_centerscreen_size screen_size modelState was_movingwas_shootingFL_ONGROUNDlastTakeoffSpeed aim_locked_on_targetautofire_can_shootautofire_in_reactionautofire_reaction_start aim_can_workaim_in_reactionaim_reaction_start last_target_time last_target_indexÿÿÿÿtarget_dead_time kill_delay_last last_shot_time bone_spacing pBoneMatrix€autoscopedremainder_y remainder_x pGameSceneNode {    void __stdcall mouse_event(unsigned int dwFlags, int dx, int dy, unsigned int dwData, unsigned long dwExtraInfo);
players_visible is_visible_no_smoke is_players_visible  get_indexbase_entity_tis_snipers is_not_legit_weapon  draw_soul_particles update_soul_particles soul_particles_on_death last_kill_timeget_bone_position soul_particles_settings right_ankleright_kneeright_hipleft_ankleleft_knee
left_hipright_wristright_elbowright_shoulder
left_wrist
left_elbow
left_shoulder	
pelvis
waist
chest	neck	head particles base_size_min €€àÿfade_start €€Àþmax_lifetime €€€gravityš³æÌ	™³æýglow_intensitymax_particlesÈparticles spread_speed
bones distance_factormax_distanceÄbase_size_max €€€ draw_hostage_skeleton draw_bone get_hostage_bone_pos  
bones  	head	neck
pelvis 
rhand
lhand
relbow	
lelbowrshoulder lshoulder
rfoot
lfoot
rknee
lknee	rhip
	lhip

spine1
spine2
spine3 on_shot_skeleton_death on_shot_skeleton_hurt on_shot_draw_skeleton on_shot_draw_bone_line on_shot_add_skeleton #on_shot_get_skeleton_positions on_shot_get_bone_pos skeleton_config
bones right_ankleright_kneeright_hipleft_ankleleft_knee
left_hipright_wristright_elbowright_shoulder
left_wrist
left_elbow
left_shoulder	
pelvis
waist
chest	neck	head  thickness €€àÿ
duration
bones fade_speed €€€ÿ  player_hurt player_deathdisconnect auto_disconnect_settings ct_wins last_rounds has_disconnected
t_wins  RevealRadar reveal_radar_offhostage_spottedplanted_c4_spottedc4_spottedspottedreveal_radar_offsets hostages_entitySpottedStateC_Hostage"planted_c4_entitySpottedStateC_PlantedC4c4_entitySpottedState	C_C4m_iTeamNumC_BaseEntitym_bSpottedEntitySpottedState_t  hostages_entitySpottedState m_bSpotted "planted_c4_entitySpottedState m_entitySpottedState c4_entitySpottedState m_iTeamNum m_entitySpottedStateC_CSPlayerPawncustom_hitsound_on_hurt is_lethal is_body is_head thirdperson  fog_modulation  m_vSmokeColorC_SmokeGrenadeProjectileclient.dllget_netvar_offset
engine  get_floatr_fullscreen_gamma
cvarscustom_trashtalk_on_death  chat_spammer trashtalk_on_death 	timerandomseed	math   last_velocity_z bindtogglertoggler
unduckedhigh_jump_offjump_activatedpeak_detected
LongJump get_jump_height long_jump_settings was_on_groundis_duckingAirDuck air_duck_settings space_unbindjump_pressedspace_pressed
ctrl_keyspace_key 
EdgeJump   is_utility 
auto_buy 	  buy vest; buy vesthelm; buy hegrenade; buy smokegrenade; "buy molotov; buy incgrenade; buy flashbang; buy defuser; buy taser;   buy revolver; buy deagle;   buy ssg08; buy scar20; buy g3sg1; buy awp; flashTaskbar hidehud              autostrafe get_zoom_level get_duck_amount wasd_pressed is_wasd_pressed  
lshiftunknown override_view 
vec3_tangle_t get_local_player_controllerget_local_player_pawnentitylistrenderGui render_other_menu render_menu_elements   render_menu handle_keyboard_input darkBackground  anim_speedtarget_alpha current_alpha add_settings_gear update_mouse 
mouseright_clickright_down
click	downpos  triggerbot
autofirecurrent_themetheme_yellow 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_pink 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_cherry 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_lime 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_arctic 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_sunset 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_cyberpunk 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_forest 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_midnight 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_blood
luaIco 3keybinds_bg button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line 
luaIco bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_purple 2button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line keybinds_bg bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_white 2button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line keybinds_bg bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background theme_standartgear_window_bordergear_window_bgbind_dropdown_hoverbind_dropdown_bgbind_key_waitingbind_key_hoverbind_key_bgbind_slider_fillbind_slider_bgbind_window_borderbind_window_bgplayer_info_borderplayer_info_bgwindow_close_hoverwindow_header_bgwindow_borderwindow_bgsubtab_inactivesubtab_hoversubtab_activetab_inactivetab_hovertab_activesettings_texturedropdown_open_bgdropdown_hoverdropdown_bgcontainer_bordercontainer_bgbutton_activebutton_hoverbutton_bgslider_fillslider_bgcheckbox_activecheckbox_bgwatermark_bgwatermark_linekeybinds_linekeybinds_bgbomb_linebomb_bghitlogs_bghitlogs_outlinetext_disabledtext_secondarytext_primary
accentleft_panelbackground 2button_hover gear_window_border gear_window_bg bind_dropdown_hover bind_dropdown_bg bind_key_waiting bind_key_hover bind_key_bg bind_slider_fill bind_slider_bg bind_window_border bind_window_bg player_info_border player_info_bg window_close_hover window_header_bg window_border window_bg subtab_inactive subtab_hover subtab_active tab_inactive tab_hover tab_active dropdown_open_bg dropdown_hover dropdown_bg container_border container_bg button_active settings_texture button_bg slider_fill slider_bg checkbox_active checkbox_bg watermark_bg watermark_line keybinds_line keybinds_bg bomb_line bomb_bg hitlogs_bg hitlogs_outline text_disabled text_secondary text_primary 
accent left_panel background func_indicators_select      
Rage BotDuck Peek AssistAi PeekManual AATriggerbot
Aimbotfunc_indicators_glowIndicators Glowfunc_indicatorsIndicatorsflash_indicatorFlash Indicatorkeybinds_list_glowKeybinds List Glowkeybinds_listKeybinds Listlogs_glowLogs Glow
misslogsMissLogs(Beta)hitlogsHitLogs	logs	Logsbomb_timer_glowBomb Timer Glowbomb_timerBomb Timerwatermark_glowWatermark GlowwatermarkWatermarkcolor_synchronizationInterface$Color Synchronization with Menu
theme
Theme
themes  
Standart
White
Purple
Blood
Midnight
ForestCyberpunk
Sunset
Arctic	Lime
Cherry	Pink
Yellowdark_background_alpha
Alphadark_backgroundDark Backgroundsnow_in_menuSnow In Menumenu_glowMenu Glowconfig_open_folder Open Folderconfig_refresh config_rename 
Renameconfig_delete 
Deleteconfig_save 	Saveconfig_load 	Loadconfig_create 
Createconfig_nameEnter config name...Config Nameconfig_selecthigh_jumpHigh Jumplong_jumpLong Jumpbunny_hopBhop(sv_autobunnyhopping)adaptive_autostrafeAdaptive Autostrafe
air_duck
Air Duckedge_jumpEdge Jumprefresh_custom_trashtalk Refreshcustom_trashtalk_selectTrashtalk Selectcustom_trashtalkCustom Trashtalktrashtalk_filesspammer_mode   Shadow V2
ShadowAimWare V6AimWareSharkHackPredator System	ModespammerSpammertrashtalk_language  RussianEnglish
GermanChinese
LanguagetrashtalkTrashtalkrefresh_hitsoundplay_hitsoundhitsound_settingscustom_hitsoundHit-Soundssounds_filesragdolls_frictionFriction Scaleragdolls_gravityGravity Scale
ragdolls
Ragdollsauto_disconnectAuto Disconnectknife_hand  In Left
In Right	Handknife_in_other_handsKnife in Other Handsauto_buy_selector_other  
VestHelmGrenade
SmokeMolotovFlashbangDefuser
Taser   auto_buy_selector_secondary  	None
Revolver
DeagleSecondaryauto_buy_selector_main  	None
SSG08	AutoAWP	Mainauto_buy_enable
Auto Buyflash_taskbarFlash Taskbarteam_glowTeam Glowhit_effects_select
  C4 ExplosionExplosionExplosion HE GrenadeRoasted ChickenBlood PoolFlashbang ExplosionExplosion WaterFlowersLightning
Coins
  hit_effects_counthit_effectsHit Effectskill_effects_select  C4 ExplosionExplosionExplosion HE GrenadeRoasted ChickenBlood PoolFlashbang ExplosionExplosion WaterFlowersLightning
CoinsTombstone	  kill_effects_count
Countkill_effectsKill Effectshostages_skeletonHostages Skeletonon_shot_skeletonOn Shot Skeletonsoul_particlesSoul Particlesgrenade_trails_time	Timegrenade_trailsGrenade Trailsgrenade_cameraGrenade Cameraworld_effects_select  	None	Snow
Effect
dropdownworld_effectsWorld Effectssmoke_radiusSmoke Radiusmolotov_radiusMolotov Radiuscustom_smoke_colorSmoke ColorfullbrightFullbrightdisable_post_processingDisable Post-Processinggamma_value
gamma
Gammaexposure_value
exposure
Screen
Exposureremove_worldRemove Worldremove_player_modelsRemove Player Modelsremove_skyboxRemove Skyboxdof_far_crispFar Crispdof_near_crispNear Crispdof_far_blurryFar Blurrydof_near_blurryNear Blurrydof_overrideDoF Overridefog_exponentFog Exponentfog_max_densityFog Max Densityfog_endFog Endfog_startFog Startcustom_fogFog Modulation#override_viewmodel_in_zoom_fov!override_viewmodel_in_zoom_zZ!override_viewmodel_in_zoom_yY!override_viewmodel_in_zoom_xXoverride_viewmodel_in_zoomOverride Viewmodel in Zoomremove_viewmodel_in_scopeRemove Viewmodel in Scopereveal_radarReveal Radardraw_rage_fovDraw Rage FOVhud  	NoneRemove HUDHud5custom_scope_override_second_scope_left_distance6custom_scope_override_second_scope_right_distance7custom_scope_override_second_scope_bottom_distance4custom_scope_override_second_scope_top_distance6custom_scope_override_second_scope_lines_distance9custom_scope_override_second_scope_separate_distance4custom_scope_override_second_scope_aspect_ratio7custom_scope_override_second_scope_animation_speed;custom_scope_override_second_scope_lines_gradient_size2custom_scope_override_second_scope_lines_size2custom_scope_override_second_scope_selections  Top
Bottom
Right	Left  Selections Second Scope'custom_scope_override_second_scopeOverride Second Scopecustom_scope_left_distanceLeft Distance custom_scope_right_distanceRight Distance!custom_scope_bottom_distanceBottom Distancecustom_scope_top_distanceTop Distance custom_scope_lines_distanceLines Distance#custom_scope_separate_distanceSeparate Distancecustom_scope_aspect_ratioAspect Ratio!custom_scope_animation_speedAnimation Speed%custom_scope_lines_gradient_sizeLines Gradient Sizecustom_scope_lines_sizeLines Sizecustom_scope_selections  Top
Bottom
Right	Left  Selections
comboboxcustom_scopeOverlayCustom Scopeactive_weapon_glowActive Weapon Glowlocal_player_glowLocal Player Glowjump_circle_glow	Glowjump_circleJump Circlelocal_backtrack_skeletonBacktrack Skeleton
trails
Trailshalo_radiusHalo Radius	halo	Haloserver_bullet_impactsBullet Impacts(Server)client_bullet_impacts
OtherBullet Impacts(Client)override_fov_on_move_valueoverride_fov_on_moveOverride Fov on Movebodycam_modeBodycam Modefirstperson_on_utilitiesFirstperson on Utilities"force_thirdperson_in_spectate"Force Thirdperson in Spectatethirdperson_collisionCollisionthirdperson_distance
Distanceperspective_optionsPerspective Options#override_fov_second_zoom_valueZoom(x2) %override_fov_zoom_value%Zoom(x1) %override_fov_valueoverride_fovOverride FOVtriggerbot_checks    	Team
Flash
In Air
ScopeChecks triggerbot_shot_delaytriggerbot_kill_delaytriggerbot_reaction_timetriggerbotaimbot_autostop
AutoStopaimbot_autoscopeAutoScopeaimbot_visualize_fovVisualize FOVaimbot_checks    	Team
Flash
In Air
ScopeVisible
Checksaimbot_autofire_kill_delayKill Delayaimbot_autofire_shot_delayShot Delay"aimbot_autofire_reaction_timeaimbot_autofire
AutoFireaimbot_smooth
Smoothaimbot_fovFOVaimbot_reaction_timeReaction Timeaimbot_bones    	Head	Neck	Body
Bonesaimbot_priority  
Distance
Damage
Priority
aimbotpitch_jitter_chance
Chancepitch_jitterPitch Jitterzero_pitch_with_manualsZero Pitch With Manualsaa_yaw_value
Value
aa_yawAnti-Aim Yawaa_right_valueRight Valueaa_left_valueLeft Valueaa_back_valueBack Valueaa_forward_valueForward Value
aa_right
Rightaa_left	Leftaa_back	Backaa_forwardForwardmanual_aa_overrideManual AA Override
e_peekE-Peek(Beta)autostop_in_air_mindmgautostop_in_airAutoStop in Air
insert
tableremove_visual_duck_assistRemove Visual Duck Assist duck_assist_default_min_dmgduck_peek_assistDuck Peek Assistai_peek_jump_on_returnJump on Return
checkboxai_peek_mindmg hpMin-Damageai_peek_limit_metersmPeek Limitai_peek_offsetPeek Offset
sliderhasSettingsGearai_peekPeek AssistsAi Peek(Beta)find_trashtalk_files find_sound_files hitsounds_buttons hitsounds_dropdown hitsound_modesget_settings_pathrefresh_settings_list refresh_settings_list  rename_settingscreate_settingsdelete_settingsload_settingssave_settings   activeBinds max_bindsactiveBinds       get_config_files_list \nix\scripts\Shadow V2\   saturation
speedbrightness
alphasecondary_data 
pos_x´saturation
value
pos_y 
alphahue´‘ÛßŸ•ÿprimary_data 
pos_x´saturation
value
pos_y 
alphahue secondary_colorprimary_color secondary_data primary_data active_colorPrimary
speedsecondary_color primary_color color_t
Standart  
Standart
PulseRainbow    add_setting_to_gear_window                
delete
mouse
insertright_mouse 
DELETE.
PRIOR!	DOWN(RBUTTONLBUTTON
INSERT- UP&	NEXT"   play_custom_hitsound SND_ASYNCSND_FILENAMEŽ    typedef unsigned long DWORD;
    typedef unsigned short WORD;

    int PlaySoundA(const char* pszSound, void* hmod, DWORD fdwSound);

winmm  cursor_in_menu 
utilsscreate_animation simulate_key is_key_pressed is_game_window_focused 
clamp  get_mouse_pos get_current_time 
timer 
round 
create_animation 
timer is_game_window_focused 	lerp 
round 
clamp get_mouse_pos simulate_key get_current_time is_key_pressed   
delete
insert
mouse  
DELETE.
PRIOR!	DOWN( UP&LBUTTON
INSERT-	NEXT"
kernel32
user32	loadÍ    typedef struct {
        long x;
        long y;
    } POINT;
    int GetCursorPos(POINT* lpPoint);
    int ScreenToClient(void* hWnd, POINT* lpPoint);
    short GetAsyncKeyState(int vKey);
    void* GetForegroundWindow();
    unsigned long GetTickCount();
    static const int VK_INSERT = 0x2D;
    static const int VK_DELETE = 0x2E;
    static const int VK_LBUTTON = 0x01;
    static const int VK_UP = 0x26;
    static const int VK_DOWN = 0x28;
    static const int VK_PRIOR = 0x21;
    static const int VK_NEXT = 0x22;
    unsigned short GetKeyState(int nVirtKey);

    unsigned long GetWindowThreadProcessId(void* hWnd, unsigned long* lpdwProcessId);
    unsigned long GetCurrentProcessId();

    void keybd_event(uint8_t bVk, uint8_t bScan, uint32_t dwFlags, uintptr_t dwExtraInfo);
    bool FlashWindow(void* hWnd, bool bInvert);
M    short GetAsyncKeyState(int vKey);
    unsigned long GetTickCount();
bit    lerp_speed 
paintregister_callback draw_lua_anim update_lua_anim 	lerp
delay	char 	
alpha fully_visible	char frame_delay 
delay visible
target_x 
pos_y 
pos_x subv2_glow_intensityv2_visible_durationv2_target_alpha  
target_x 
alpha visiblestart_x 	char2
pos_y 
pos_x   
target_x 
alpha visiblestart_x 	charV
pos_y 
pos_x v2_lettersblink_alphais_blinkingblink_intervalblink_timerv2_show_timeanimation_start_timefirst_letter_delay_startFIRST_LETTER_DELAY_TIMEcurrent_stateSTATE_V2_FADE_OUTSTATE_V2_VISIBLESTATE_V2_MOVINGSTATE_V2_SHOWSTATE_FADE_OUT STATE_SHOWING_OTHER_LETTERSSTATE_MOVING_FIRST_LETTERSTATE_FIRST_LETTER_DELAYSTATE_STARTglow_radiusglow_intensityletter_move_speedcurrent_letter_indexShadow.lua	textlettersdark_alphahas_shownanimation_finishedframe_count./nix/scripts/Shadow V2/Assets/verdana.ttf	fontsubtabs Configs
Themes
Settings General 
World
ExtraGeneralLocal Player Triggerbot
Aimbot General Visuals 
Legit 	Rage 
Anti-Aim 
Settings 	Misc  General	tabs subtabs 	tabs  Visuals
Legit	Rage
Anti-Aim
Settings	Misc 
width €à´ƒ
heightšy<x €ðîƒ	nameInterface 
width €à´ƒ
heightsyõxÈ	name
Themes 
width €à´ƒ
height¯y<xÈ	nameGeneral Configs 
Settings  
width €÷ƒ
heightèy<xÈ	nameConfigs General  
width €à´ƒ
height¹yŽx €ðîƒ	nameTrashtalk 
width €à´ƒ
heightÈy<x €ðîƒ	nameHit-Sounds 
width €à´ƒ
heightnyšxÈ	name
Other 
width €à´ƒ
heightÍyÃxÈ	name
Movement 
width €à´ƒ
height}y<xÈ	nameGeneral 
width €à´ƒ
heightdyªx €ðîƒ	name
Other 
width €à´ƒ
heightdy<x €ðîƒ	name	Glow 
width €à´ƒ
heightúy<xÈ	nameGeneral 
width €à´ƒ
heightáy<x €ðîƒ	name
Extra 
width €à´ƒ
heightÈyÿxÈ	name
Screen 
width €à´ƒ
height¹y<xÈ	nameGeneral 
width €à´ƒ
height–yÀx €ðîƒ	name
Extra 
width €à´ƒ
heightúy<x €ðîƒ	nameOverlay 
width €à´ƒ
heightdy§xÈ	name	Glow 
width €à´ƒ
heightáy<xÈ	nameGeneral 
World 
Extra General Local Player  
width €à´ƒ
heightÈy<x €ðîƒ	name
Other 
width €à´ƒ
heightúy<xÈ	nameGeneral 
width €à´ƒ
heightdy<x €ðîƒ	name
Extra 
width €à´ƒ
heightÈy<xÈ	nameGeneral Triggerbot 
Aimbot  
width €à´ƒ
heightúy<x €ðîƒ	name
Extra 
width €à´ƒ
heightÞy<xÈ	nameGeneral General  
width €à´ƒ
height}y<x €ðîƒ	name
Extra 
width €à´ƒ
height–y<xÈ	nameGeneral Visuals 
Legit 	Rage 
Anti-Aim 
Settings 	Misc  General  
width €à´ƒ
height}y<x €ðîƒ	name
Extra 
width €à´ƒ
height–y<xÈ	namePeek Assists
ThemesConfigs Configs 
Themes 
Settings 
Movement General 
Movement 
Extra
WorldLocal Player 
World 
Extra General Local Player Triggerbot
Aimbot Triggerbot 
Aimbot  General  Visuals 
Legit 	Rage 
Anti-Aim 
Settings 	Misc General General 
Settings  Configs
Settings	Misc  GeneralVisuals  GeneralLocal Player
World
Extra
Legit  
AimbotTriggerbot
Anti-Aim  General	Rage Visuals 
Legit 	Rage 
Anti-Aim 
Settings 	Misc   General   	Rage
Anti-Aim
LegitVisuals	Misc
Settingsgear_dropdown_positionsgear_active_dropdownelementSettingsanimationLastTime
elementssettingsDragOffset x y settingsWindowSizesettingsWindowPos
vec2_t animationLastTime animationTarget animationProgress 
elements settingsDragOffset isSettingsDraggingsettingsWindowSize settingsWindowPos gearBindWindowAnimation last_time 
target 
progress bindWindowAnimationlast_time last_time 
target 
progress bindWindowDragOffset x y bindTypesSlider  	None
ToggleHold OnbindTypes  	None
ToggleHold On
Hold Off
lastTime
clock ostabAnimationsdragOffset x y  
widthŠ
heightÂbindWindowDragOffset isBindWindowDraggingactiveBindSetting activeBindWindow
alphabindTypesSlider y•bind_window_click_handledbindTypes 
lastTime tabAnimations originalInputValue
isTypinginputBufferbind_window_z_indexè gearBindWindowAnimation targetHeightØtargetWidth¼activeGearBindSetting currentSubtabConfigscurrentTab
SettingswaitingForKeydragOffset isDragging
isOpenxbindWindowAnimation misc_viewmodel_editor_fovmisc_viewmodel_editor_zmisc_viewmodel_editor_ymisc_viewmodel_editor_xmisc_viewmodel_editor	menu	init message_on_paint cleanup_messages draw_messages render_texture  calculate_message_positions add_message create_window setup_fonts is_key_held 
messages
ffi_cdef3        short GetAsyncKeyState(int vKey);
     
create_window setup_fonts ffi render_texture draw_messages cleanup_messages 	init is_key_held 
messages message_on_paint add_message 
ffi_cdef  calculate_message_positions +nix/scripts/Shadow V2/Assets/Legit.png*nix/scripts/Shadow V2/Assets/Save.png//nix/scripts/Shadow V2/Assets/Keybinds.png+/nix/scripts/Shadow V2/Assets/Bomb.png+/nix/scripts/Shadow V2/Assets/User.png//nix/scripts/Shadow V2/Assets/Settings.png+/nix/scripts/Shadow V2/Assets/Misc.png./nix/scripts/Shadow V2/Assets/Visuals.png,/nix/scripts/Shadow V2/Assets/Legit.png//nix/scripts/Shadow V2/Assets/Anti-Aim.png+/nix/scripts/Shadow V2/Assets/Rage.png-/nix/scripts/Shadow V2/Assets/luaIco.pngsetup_texture5/nix/scripts/Shadow V2/Assets/poppins-medium.ttfget_game_directorysetup_font
render  predator_spammer  7PREDATOR.SYSTEM || BEST & SAFE CHEAT ON THE MARKETshadowv2_spammer  Get Good, Get Shadow.lua^"Get Good: https://nixware.cc/workshop/734/ | Get Discord: https://discord.gg/QNnCTgAAFE"!You just sucked a Shadow.lua."Free Lua: https://discord.gg/QNnCTgAAFE"shadowlua_spammer   #Download Shadow.lua right now!Get Good, Get Shadow.lua#Download Shadow.lua right now!!You just sucked a Shadow.luaGet Good, Get Shadow.lua!You just sucked a Shadow.luaaimwareV6_spammer  #AIMWARE V6 | Premium CS2 Cheataimware_old_spammer  (www.AIMWARE.net | Premium CS2 Cheatsharkhack_spammer   (Download SharkHack cheat right now!(Download SharkHack cheat right now!&You just sucked a SharkHack cheat&You just sucked a SharkHack cheat,I'm fucking you with SharkHack cheat xD,I'm fucking you with SharkHack cheat xDtrashtalk_chinese+  ä½ çŽ©å¾—åƒæ ¹é¦™è•‰ ä¼‘æ¯ä¸€ä¸‹...æ°¸è¿œä¼‘æ¯ è¿žæœºå™¨äººéƒ½åœ¨ç¬‘è¯ä½ Get Good, Get Shadow.luaB"åˆ«å—è‹¦äº†ï¼Œå¿«æ¥ä¸‹è½½ï¼šhttps://discord.gg/QNnCTgAAFE",ä»–ä»¬ä»˜é’±è®©ä½ çŽ©å¾—è¿™ä¹ˆçƒ‚å—ï¼Ÿ#æˆ‘ä¸ºä½ çš„é˜Ÿå‹æ„Ÿåˆ°éš¾è¿‡æé’±æ¢åŒæ–°æ‰‹å§ez botsB"Get Good, Get Shadow.lua - https://nixware.cc/workshop/734/"ä½ çš„ç”µè„‘éƒ½çœ‹å“­äº† éšä¾¿ç‚¹ä¸€ä¸‹éƒ½æ¯”ä½ å¼º)æ¸¸æˆä¸èƒŒé”…ï¼Œæ˜¯ä½ çŽ©å¾—å¤ªèœ,ä½ çœŸæœ‰å¤©èµ‹...å½“ä¸ªè¾“å®¶çš„å¤©èµ‹0"å…è´¹Luaï¼šhttps://discord.gg/QNnCTgAAFE"1Get Good, Get Shadow.lua&æŠ•é™å§ï¼Œè¿™æ‰æ˜¯ä½ çš„å¤©å‘½,ä½ çš„æŠ€æœ¯åœ¨æ¸¸æˆå¼€å§‹å‰å°±æ­»äº† EZå¤ªç®€å•äº†
bot_kick6"æŠ€æœ¯é“¾æŽ¥ï¼šhttps://nixware.cc/workshop/734/"å°±è¿™ï¼Ÿä½ é—­ç€çœ¼çŽ©å‘¢ï¼Ÿ#æˆ‘å®¶çš„çŒ«éƒ½æ¯”ä½ çŽ©å¾—å¥½
easy winå¤ªèœäº†æˆ‘æ€Žä¹ˆè¿™ä¹ˆå¼ºä½ æ²¡æœºä¼šçš„ä½ æ˜¾ç¤ºå™¨å¼€äº†å—ï¼Ÿè’™ç€çœ¼çŽ©æ¸¸æˆï¼Ÿ&æ˜¯å¡äº†è¿˜æ˜¯ä½ å°±è¿™æ°´å¹³ï¼Ÿ5æˆ‘åœ¨ç­‰ä¸€ä¸ªçœŸæ­£çš„å¯¹æ‰‹...å¯æƒœæ²¡ç­‰åˆ°Get Good, Get Shadow.lua^"Get Good: https://nixware.cc/workshop/734/ | Get Discord: https://discord.gg/QNnCTgAAFE",ä½ ç¡®å®šä½ çš„æ˜¾ç¤ºå™¨æ˜¯å¼€çš„å—ï¼Ÿ)ä¹Ÿè®¸ä½ åº”è¯¥è¯•è¯•æ­¥è¡Œæ¨¡æ‹Ÿå™¨8ä¸‹æ¬¡å¥½è¿...å¼€çŽ©ç¬‘çš„ï¼Œè¿æ°”ä¹Ÿæ•‘ä¸äº†ä½  ez#æˆ‘è¦æ˜¯ä½ æ—©å°±åˆ æ¸¸æˆäº†1trashtalk_german+  Du spielst wie eine Banane"Mach eine Pause... fÃ¼r immer!Sogar Bots lachen Ã¼ber dichGet Good, Get Shadow.luaM"HÃ¶r auf zu leiden, komm und lad runter: https://discord.gg/QNnCTgAAFE"5Zahlen sie dir dafÃ¼r, dass du so schlecht bist?Mir tut dein Team leidSpende fÃ¼r neue HÃ¤ndeez botsB"Get Good, Get Shadow.lua - https://nixware.cc/workshop/734/")Dein PC weint wegen deines Gameplays-Sogar ein zufÃ¤lliger Klick wÃ¤re besser5Das Spiel kann nichts dafÃ¼r, dass du so spielst0Du hast ein Talent... ein Verlierer zu sein5"Kostenloses Lua: https://discord.gg/QNnCTgAAFE"1Get Good, Get Shadow.lua$Gib auf, das ist deine BerufungBDeine FÃ¤higkeiten starben, bevor das Spiel Ã¼berhaupt begann EZZu einfach
bot_kick3"Skill-Link: https://nixware.cc/workshop/734/"War das alles?Spielst du blind?Meine Katze spielt besser
easy winZu schlechtIch bin so gutDu hast keine ChanceIst dein Monitor an?&Spielst du mit verbundenen Augen?2Liegt es an Lags oder ist das dein Spielstil?WIch habe auf einen echten Gegner gewartet... schade, dass ich keinen gefunden habeGet Good, Get Shadow.lua^"Get Good: https://nixware.cc/workshop/734/ | Get Discord: https://discord.gg/QNnCTgAAFE"9Bist du sicher, dass dein Monitor eingeschaltet ist?DVielleicht solltest du es mit einem Walking-Simulator versuchenSViel GlÃ¼ck beim nÃ¤chsten Mal... nur ein Scherz, GlÃ¼ck wird dir nicht helfen ez>An deiner Stelle hÃ¤tte ich das Spiel schon deinstalliert1trashtalk_english+  You play like a bananaTake a break... foreverEven bots laugh at youGet Good, Get Shadow.luaG"Stop suffering, come and download: https://discord.gg/QNnCTgAAFE"$Do they pay you to be this bad?I feel sorry for your teamDonate for new handsez botsB"Get Good, Get Shadow.lua - https://nixware.cc/workshop/734/"/Your PC is crying because of your gameplay(Even a random click would be better1It's not the game's fault you play like this+You have a talent... for being a loser."Free Lua: https://discord.gg/QNnCTgAAFE"1Get Good, Get Shadow.luaGive up, it's your calling2Your skills died before the game even started EZ
Too easy
bot_kick3"Skill link: https://nixware.cc/workshop/734/"That's it?Are you playing blind?My cat plays better
easy winToo badI'm so goodYou have no chanceIs your monitor on?Playing blindfolded?!Is it lag or your playstyle?CI was waiting for a real opponent... too bad I didn't find oneGet Good, Get Shadow.lua^"Get Good: https://nixware.cc/workshop/734/ | Get Discord: https://discord.gg/QNnCTgAAFE"%Are you sure your monitor is on?-Maybe you should try a walking simulator=Good luck next time... just kidding, luck won't help you ez9If I were you, I'd have already uninstalled the game1trashtalk_russian+  %Ð˜Ð³Ñ€Ð°ÐµÑˆÑŒ ÐºÐ°Ðº Ð±Ð°Ð½Ð°Ð½0Ð’Ð¾Ð·ÑŒÐ¼Ð¸ Ð¿Ð°ÑƒÐ·Ñƒ... Ð½Ð°Ð²ÑÐµÐ³Ð´Ð°7Ð”Ð°Ð¶Ðµ Ð±Ð¾Ñ‚Ñ‹ ÑÐ¼ÐµÑŽÑ‚ÑÑ Ð½Ð°Ð´ Ñ‚Ð¾Ð±Ð¾Ð¹Get Good, Get Shadow.lua_"Ð¥Ð²Ð°Ñ‚Ð¸Ñ‚ ÑÑ‚Ñ€Ð°Ð´Ð°Ñ‚ÑŒ, Ð·Ð°Ð¹Ð´Ð¸ Ð¸ ÑÐºÐ°Ñ‡Ð°Ð¹: https://discord.gg/QNnCTgAAFE"BÐ¢ÐµÐ±Ðµ Ð¿Ð»Ð°Ñ‚ÑÑ‚ Ð·Ð° Ñ‚Ð¾, Ñ‡Ñ‚Ð¾ Ñ‚Ñ‹ Ñ‚Ð°Ðº Ð¿Ð»Ð¾Ñ…?,ÐœÐ½Ðµ Ð¶Ð°Ð»ÑŒ Ñ‚Ð²Ð¾ÑŽ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñƒ.Ð—Ð°Ð´Ð¾Ð½Ð°Ñ‚ÑŒ Ð½Ð° Ð½Ð¾Ð²Ñ‹Ðµ Ñ€ÑƒÐºÐ¸ez botsB"Get Good, Get Shadow.lua - https://nixware.cc/workshop/734/"8Ð¢Ð²Ð¾Ð¹ ÐŸÐš Ð¿Ð»Ð°Ñ‡ÐµÑ‚ Ð¾Ñ‚ Ñ‚Ð²Ð¾ÐµÐ¹ Ð¸Ð³Ñ€Ñ‹@Ð”Ð°Ð¶Ðµ ÑÐ»ÑƒÑ‡Ð°Ð¹Ð½Ñ‹Ð¹ ÐºÐ»Ð¸Ðº Ð±Ñ‹Ð» Ð±Ñ‹ Ð»ÑƒÑ‡ÑˆÐµFÐ˜Ð³Ñ€Ð° Ð½Ðµ Ð²Ð¸Ð½Ð¾Ð²Ð°Ñ‚Ð°, Ñ‡Ñ‚Ð¾ Ñ‚Ñ‹ Ñ‚Ð°Ðº Ð¸Ð³Ñ€Ð°ÐµÑˆÑŒ8Ð£ Ñ‚ÐµÐ±Ñ Ñ‚Ð°Ð»Ð°Ð½Ñ‚... Ð±Ñ‹Ñ‚ÑŒ Ð»ÑƒÐ·ÐµÑ€Ð¾Ð¼3"Ð¤Ñ€Ð¸ Ð›ÑƒÐ°: https://discord.gg/QNnCTgAAFE"1Get Good, Get Shadow.lua9Ð¡Ð´Ð°Ð²Ð°Ð¹ÑÑ, ÑÑ‚Ð¾ Ñ‚Ð²Ð¾Ñ‘ Ð¿Ñ€Ð¸Ð·Ð²Ð°Ð½Ð¸ÐµIÐ¢Ð²Ð¾Ð¸ ÑÐºÐ¸Ð»Ð»Ñ‹ ÑƒÐ¼ÐµÑ€Ð»Ð¸ ÐµÑ‰Ñ‘ Ð´Ð¾ Ð½Ð°Ñ‡Ð°Ð»Ð° Ð¸Ð³Ñ€Ñ‹ EZÐ¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð»ÐµÐ³ÐºÐ¾
bot_kickE"Ð¡ÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐºÐ¸Ð»Ð»: https://nixware.cc/workshop/734/"Ð­Ñ‚Ð¾ Ð²ÑÑ‘?#Ð˜Ð³Ñ€Ð°ÐµÑˆÑŒ Ð²ÑÐ»ÐµÐ¿ÑƒÑŽ?*ÐœÐ¾Ð¹ ÐºÐ¾Ñ‚ Ð¸Ð³Ñ€Ð°ÐµÑ‚ Ð»ÑƒÑ‡ÑˆÐµ
easy winÐ¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¿Ð»Ð¾Ñ…Ð¾ÐšÐ°Ðº Ð¶Ðµ Ñ Ñ…Ð¾Ñ€Ð¾Ñˆ$Ð£ Ñ‚ÐµÐ±Ñ Ð½ÐµÑ‚ ÑˆÐ°Ð½ÑÐ¾Ð²,Ð¢Ð²Ð¾Ð¹ Ð¼Ð¾Ð½Ð¸Ñ‚Ð¾Ñ€ Ð²ÐºÐ»ÑŽÑ‡Ñ‘Ð½?=Ð˜Ð³Ñ€Ð°ÐµÑˆÑŒ Ñ Ð·Ð°Ð²ÑÐ·Ð°Ð½Ð½Ñ‹Ð¼Ð¸ Ð³Ð»Ð°Ð·Ð°Ð¼Ð¸?3Ð£ Ñ‚ÐµÐ±Ñ Ð»Ð°Ð³Ð¸ Ð¸Ð»Ð¸ ÑÑ‚Ð¾ ÑÑ‚Ð¸Ð»ÑŒ?bÐ¯ Ð¶Ð´Ð°Ð» Ð½Ð°ÑÑ‚Ð¾ÑÑ‰ÐµÐ³Ð¾ ÑÐ¾Ð¿ÐµÑ€Ð½Ð¸ÐºÐ°... Ð¶Ð°Ð»ÑŒ, Ñ‡Ñ‚Ð¾ Ð½Ðµ Ð´Ð¾Ð¶Ð´Ð°Ð»ÑÑGet Good, Get Shadow.lua^"Get Good: https://nixware.cc/workshop/734/ | Get Discord: https://discord.gg/QNnCTgAAFE"FÐ¢Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½, Ñ‡Ñ‚Ð¾ Ñ‚Ð²Ð¾Ð¹ Ð¼Ð¾Ð½Ð¸Ñ‚Ð¾Ñ€ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½?aÐ’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ñ‚ÐµÐ±Ðµ ÑÑ‚Ð¾Ð¸Ñ‚ Ð¿Ð¾Ð¿Ñ€Ð¾Ð±Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ¸Ð¼ÑƒÐ»ÑÑ‚Ð¾Ñ€ Ñ…Ð¾Ð´ÑŒÐ±Ñ‹cÐ£Ð´Ð°Ñ‡Ð¸ Ð² ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ Ñ€Ð°Ð·... ÑˆÑƒÑ‚ÐºÐ°, ÑƒÐ´Ð°Ñ‡Ð° Ñ‚ÐµÐ±Ðµ Ð½Ðµ Ð¿Ð¾Ð¼Ð¾Ð¶ÐµÑ‚ ezDÐÐ° Ñ‚Ð²Ð¾Ñ‘Ð¼ Ð¼ÐµÑÑ‚Ðµ Ñ Ð±Ñ‹ ÑƒÐ¶Ðµ ÑƒÐ´Ð°Ð»Ð¸Ð» Ð¸Ð³Ñ€Ñƒ1   _Grequire #library.engine.particle_system library.system.hooks library.engine.vmt library.system.http library.engine.cvar library.core.utilsF    typedef struct Vector {
        float x, y, z;
    } Vector;
	cdefffi÷ÑðúáõÑý›³æÌÌ™óþ€€€€àÿµæÌ™™³æý€€€ÿ›³æÌÌ™“€›³æÌÌ™û€Í™³ææÌÈ‚çÌ™³³æÌþçÌ™³³æŒÿñú¨¸ÑðúüÍ™³ææÌ™ÿ©Ð Á”¨Ðý½øðáž¼øý¥ÆŒ™‘£Æþ¡Á‚…
Ð ÿ»óæÍÜ¹³ÿ©Ð Á”¨þµæÌ™™³¦ÿ³äÈ‘™²äýµæÌ™™³¦þµæÌ™™³æþ€€Àþ¥ÆŒ™‘£†þ›³æÌÌ™³ÿçÌ™³³æ¬ÿ½øðáž¼¸ÿ³äÈ‘™²äþ³äÈ‘™²¤ÿ¯Ú´é–­šÿ¹îÜ¹›·®ÿ¿ýúõ
ß¾½ÿ«ÕªÕ
Õª•ÿµéÒ¥
Ú´©ÿ±ß¾ý×¯Ÿÿ³äÈ‘™²¤þ©Ð Á”¨Ðþ§Ë–­Ò¥‹ÿ¹îÜ¹›·®þ¯Ú´é–­šþ±ß¾ý×¯ßþ§Ë–­Ò¥Ëþ½øðáž¼¸þ«ÕªÕ
ÕªÕþ¹îÜ¹›·îþ¡Á‚…
Ð Áþ¥ÆŒ™‘£†ÿ¡À€ €ý©Ð Á”¨ý½øðáž¼¸ý±àÀ˜° ý¥È¡’¤Èý½øðáž¼øþ©Ð Á”¨ÿ¯Ú´é–­Úþ§Ì˜±“¦Œþ¹ðàÁœ¸ðý±àÀ˜° þÍ™³ææÌ¹ÿ­Ø°á–¬Øý›³æÌÌ™“ÿþ€€ ÿ 
