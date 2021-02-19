typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int32 len; int32 size; } FBSTRING;
typedef int8 boolean;
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 12 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 8 );
typedef int32 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
struct $9FBCIOFILE {
	FBSTRING SRCFILE;
	FBSTRING* OBJFILE;
	int32 IS_CUSTOM_OBJFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCIOFILE ) == 20 );
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 8 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int32 NODES;
	int32 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 12 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
struct $10FBC_EXTOPT {
	uint8 GAS[128];
	uint8 LD[128];
	uint8 GCC[128];
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_EXTOPT ) == 384 );
typedef int32 $7FB_LANG;
struct $10FBC_OBJINF {
	$7FB_LANG LANG;
	int32 MT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_OBJINF ) == 8 );
struct $6FBCCTX {
	int32 OPTID;
	struct $9FBCIOFILE* LASTMODULE;
	FBSTRING OBJFILE;
	int32 BACKEND;
	int32 CPUTYPE;
	int32 CPUTYPE_IS_NATIVE;
	int32 ASMSYNTAX;
	int32 EMITASMONLY;
	int32 KEEPASM;
	int32 EMITFINALASMONLY;
	int32 KEEPFINALASM;
	int32 KEEPOBJ;
	int32 VERBOSE;
	int32 SHOWVERSION;
	int32 SHOWHELP;
	int32 PRINT;
	struct $5TLIST MODULES;
	struct $5TLIST RCS;
	struct $9FBCIOFILE XPM;
	struct $5TLIST TEMPS;
	struct $5TLIST OBJLIST;
	struct $5TLIST LIBFILES;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	struct $7TSTRSET FINALLIBS;
	struct $7TSTRSET FINALLIBPATHS;
	uint8 OUTNAME[261];
	uint8 MAINNAME[261];
	int32 MAINSET;
	uint8 MAPFILE[261];
	uint8 SUBSYSTEM[129];
	struct $10FBC_EXTOPT EXTOPT;
	uint8 TARGET[129];
	uint8 TARGETPREFIX[129];
	uint8 XBE_TITLE[129];
	int32 NODEFLIBS;
	int32 STATICLINK;
	int32 STRIPSYMBOLS;
	uint8 PREFIX[261];
	uint8 BINPATH[261];
	uint8 INCPATH[261];
	uint8 LIBPATH[261];
	struct $10FBC_OBJINF OBJINF;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBCCTX ) == 3184 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IcE {
	uint8* DATA;
	uint8* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 36 );
typedef int32 $6TMP$23;
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileOpenPipe( FBSTRING*, uint32, uint32, uint32, int32, int32, uint8* );
int32 fb_FileClose( int32 );
int32 fb_FilePut( int32, int32, void*, uint32 );
int32 fb_FileLineInput( int32, void*, int32, int32 );
int32 fb_FileInput( int32 );
int32 fb_InputString( void*, int32, int32 );
int32 rename( uint8*, uint8* );
int32 fb_FileFree( void );
int32 fb_FileEof( int32 );
int32 fb_FileKill( FBSTRING* );
void fb_PrintVoid( int32, int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
void fb_Init( int32, uint8**, int32 );
void fb_InitSignals( void );
void fb_End( int32 );
FBSTRING* fb_ExePath( void );
int32 fb_Shell( FBSTRING* );
int32 fb_Exec( FBSTRING*, FBSTRING* );
FBSTRING* fb_GetEnviron( FBSTRING* );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void STRLISTAPPEND( struct $5TLIST*, FBSTRING* );
void STRLISTINIT( struct $5TLIST*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int32 );
void STRSETCOPY( struct $7TSTRSET*, struct $7TSTRSET* );
void STRSETINIT( struct $7TSTRSET*, int32 );
int32 ERRGETCOUNT( void );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void FBINIT( int32, int32 );
void FBEND( void );
void FBCOMPILE( uint8*, uint8*, FBSTRING*, int32 );
int32 FBSHOULDRESTART( void );
void FBGLOBALINIT( void );
void FBADDINCLUDEPATH( FBSTRING* );
void FBADDPREDEFINE( FBSTRING* );
void FBADDPREINCLUDE( FBSTRING* );
void FBSETOPTION( int32, int32 );
int32 FBGETOPTION( int32 );
void FBSETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
void FBGETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
FBSTRING* FBGETTARGETID( void );
FBSTRING* FBGETHOSTID( void );
int32 FBIDENTIFYOS( FBSTRING* );
int32 FBCPUTYPEFROMCPUFAMILYID( FBSTRING* );
uint8* FBGETGCCARCH( void );
uint8* FBGETFBCARCH( void );
int32 FBGETBITS( void );
int32 FBGETHOSTBITS( void );
int32 FBGETCPUFAMILY( void );
int32 FBIDENTIFYFBCARCH( FBSTRING* );
int32 FBTARGETSUPPORTSELF( void );
int32 FBISCROSSCOMP( void );
typedef int32 $10FB_BACKEND;
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
$7FB_LANG FBGETLANGID( uint8* );
int32 HFILEEXISTS( uint8* );
FBSTRING* HSTRIPEXT( FBSTRING* );
FBSTRING* HSTRIPPATH( uint8* );
FBSTRING* HSTRIPFILENAME( uint8* );
FBSTRING* HGETFILEEXT( uint8* );
void HREPLACESLASH( uint8*, int32 );
FBSTRING* PATHSTRIPDIV( FBSTRING* );
FBSTRING* STRUNQUOTE( FBSTRING* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void OBJINFOREADOBJ( FBSTRING* );
void OBJINFOREADLIBFILE( FBSTRING* );
void OBJINFOREADLIB( FBSTRING*, struct $5TLIST* );
int32 OBJINFOREADNEXT( FBSTRING* );
uint8* OBJINFOGETFILENAME( void );
void OBJINFOREADEND( void );
int64 fb_FileLen( uint8* );
static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* );
static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE*, struct $9FBCIOFILE* );
static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* );
static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* );
static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX*, struct $6FBCCTX* );
static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* );
static void FBCFINDBIN( int32, FBSTRING*, int32* );
static void FBCINIT( void );
static void HSETOUTNAME( void );
static void FBCEND( int32 );
static void FBCADDTEMP( FBSTRING* );
static FBSTRING* FBCADDOBJ( FBSTRING* );
static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* );
static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* );
static FBSTRING* FBCFINDLIBFILE( uint8* );
static void FBCADDDEFLIBPATH( FBSTRING* );
static void FBCADDLIBPATHFOR( uint8* );
static int32 FBCRUNBIN( uint8*, int32, FBSTRING* );
static int32 CLEARDEFLIST( FBSTRING* );
static int32 HGENERATEEMPTYDEFFILE( FBSTRING* );
static int32 MAKEIMPLIB( FBSTRING*, FBSTRING* );
static FBSTRING* HFINDLIB( uint8* );
static int32 FBCLINKERISGOLD( void );
static int32 FBCISUSINGGOLDLINKER( void );
static int32 HLINKFILES( void );
static void HREADOBJINFO( void );
static void HCOLLECTOBJINFO( void );
static void HFATALINVALIDOPTION( FBSTRING* );
static void HCHECKWAITINGOBJFILE( void );
static void HSETIOFILE( struct $9FBCIOFILE*, FBSTRING*, int32 );
static void HADDBAS( FBSTRING* );
static void HPARSEGNUTRIPLET( FBSTRING*, int32, int32*, int32* );
static void HPARSETARGETARG( FBSTRING*, int32*, int32*, int32* );
static void HANDLEOPT( int32, FBSTRING* );
static int32 PARSEOPTION( uint8* );
static void PARSEARGSFROMFILE( FBSTRING* );
static void HANDLEARG( FBSTRING* );
static int32 HTARGETNEEDSPIC( void );
static void HPARSEARGS( int32, uint8** );
static void FBCDETERMINEPREFIX( void );
static void FBCSETUPCOMPILERPATHS( void );
static void FBCPRINTTARGETINFO( void );
static void FBCDETERMINEMAINNAME( void );
static FBSTRING* HGETASMNAME( struct $9FBCIOFILE*, int32 );
static void HCOMPILEBAS( struct $9FBCIOFILE*, int32, int32 );
static void HCOMPILEMODULES( void );
static int32 HPARSEXPM( FBSTRING*, FBSTRING* );
static int32 HCOMPILEXPM( void );
static int32 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* );
static void HCOMPILESTAGE2MODULES( void );
static int32 HASSEMBLEMODULE( struct $9FBCIOFILE* );
static void HASSEMBLEMODULES( void );
static int32 HASSEMBLERC( struct $9FBCIOFILE* );
static void HASSEMBLERCS( void );
static void HASSEMBLEXPM( void );
static int32 HCOMPILEFBCTINF( void );
static int32 HARCHIVEFILES( void );
static void HSETDEFAULTLIBPATHS( void );
static void FBCADDDEFLIB( uint8* );
static FBSTRING* HGETFBLIBNAMESUFFIX( void );
static void HADDDEFAULTLIBS( void );
static void HPRINTOPTIONS( int32 );
static void HPRINTVERSION( int32 );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static uint8 TOOLNAMES$[14][16] = { "as", "ar", "ld", "gcc", "llc", "dlltool", "GoRC", "windres", "cxbe", "dxe3gen", "emcc", "emar", "emcc", "emcc" };
static struct $6FBCCTX FBC$;
struct $11FBGNUOSINFO {
	uint8* GNUID;
	int32 OS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBGNUOSINFO ) == 8 );
static struct $11FBGNUOSINFO GNUOSMAP$[11] = { { (uint8*)"linux", 2 }, { (uint8*)"mingw", 0 }, { (uint8*)"djgpp", 3 }, { (uint8*)"cygwin", 1 }, { (uint8*)"darwin", 9 }, { (uint8*)"freebsd", 5 }, { (uint8*)"dragonfly", 6 }, { (uint8*)"solaris", 7 }, { (uint8*)"netbsd", 10 }, { (uint8*)"openbsd", 8 }, { (uint8*)"xbox", 4 } };
struct $13FBGNUARCHINFO {
	uint8* GNUID;
	int32 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBGNUARCHINFO ) == 8 );
static struct $13FBGNUARCHINFO GNUARCHMAP$[13] = { { (uint8*)"i386", 0 }, { (uint8*)"i486", 1 }, { (uint8*)"i586", 2 }, { (uint8*)"i686", 3 }, { (uint8*)"x86", 1 }, { (uint8*)"x86_64", 13 }, { (uint8*)"amd64", 13 }, { (uint8*)"armv6", 14 }, { (uint8*)"armv7a", 15 }, { (uint8*)"arm", 15 }, { (uint8*)"aarch64", 16 }, { (uint8*)"powerpc", 17 }, { (uint8*)"powerpc64", 18 } };
struct $12FBOSARCHINFO {
	uint8* TARGETID;
	int32 OS;
	int32 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBOSARCHINFO ) == 12 );
static struct $12FBOSARCHINFO FBOSARCHMAP$[12] = { { (uint8*)"win32", 0, 1 }, { (uint8*)"win64", 0, 13 }, { (uint8*)"dragonfly", 6, 13 }, { (uint8*)"solaris", 7, 13 }, { (uint8*)"dos", 3, 1 }, { (uint8*)"xbox", 4, 1 }, { (uint8*)"cygwin", 1, 15 }, { (uint8*)"darwin", 9, 15 }, { (uint8*)"freebsd", 5, 15 }, { (uint8*)"linux", 2, 15 }, { (uint8*)"netbsd", 10, 15 }, { (uint8*)"openbsd", 8, 15 } };
static int32 OPTION_TAKES_ARGUMENT$[66] = { -1, -1, -1, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, -1, -1, -1, -1, 0, -1, -1, -1, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, -1, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, -1, -1, 0, -1, 0, -1, -1, -1, -1, -1, -1 };

int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
{
	FBSTRING TMP$717$0;
	int32 fb$result$0;
	__builtin_memset( &fb$result$0, 0, 4 );
	fb_Init( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0, 0 );
	fb_InitSignals(  );
	label$0:;
	FBCINIT(  );
	if( __FB_ARGC__$0 != 1 ) goto label$1210;
	{
		HPRINTOPTIONS( 0 );
		FBCEND( 1 );
	}
	label$1210:;
	label$1209:;
	HPARSEARGS( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0 );
	if( *(int32*)((uint8*)&FBC$ + 60) == 0 ) goto label$1212;
	{
		HPRINTVERSION( *(int32*)((uint8*)&FBC$ + 56) );
		FBCEND( 0 );
	}
	label$1212:;
	label$1211:;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1214;
	{
		HPRINTVERSION( 0 );
	}
	label$1214:;
	label$1213:;
	if( *(int32*)((uint8*)&FBC$ + 64) == 0 ) goto label$1216;
	{
		HPRINTOPTIONS( *(int32*)((uint8*)&FBC$ + 56) );
		FBCEND( 1 );
	}
	label$1216:;
	label$1215:;
	FBCDETERMINEPREFIX(  );
	FBCSETUPCOMPILERPATHS(  );
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1218;
	{
		FBCPRINTTARGETINFO(  );
	}
	label$1218:;
	label$1217:;
	__builtin_memset( &TMP$717$0, 0, 12 );
	fb_StrAssign( (void*)&TMP$717$0, -1, (void*)((uint8*)&FBC$ + 2654), 261, 0 );
	FBADDINCLUDEPATH( &TMP$717$0 );
	fb_StrDelete( (FBSTRING*)&TMP$717$0 );
	int32 HAVE_INPUT_FILES$0;
	void* vr$7 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	void* vr$10 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
	void* vr$14 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 252) );
	void* vr$18 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 220) );
	HAVE_INPUT_FILES$0 = ((-(vr$7 != (void*)0u) | -(vr$10 != (void*)0u)) | -(vr$14 != (void*)0u)) | -(vr$18 != (void*)0u);
	if( *(int32*)((uint8*)&FBC$ + 68) < 0 ) goto label$1220;
	{
		{
			int32 TMP$718$2;
			TMP$718$2 = *(int32*)((uint8*)&FBC$ + 68);
			if( TMP$718$2 != 0 ) goto label$1222;
			label$1223:;
			{
				FBSTRING* vr$21 = FBGETHOSTID(  );
				fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
			}
			goto label$1221;
			label$1222:;
			if( TMP$718$2 != 1 ) goto label$1224;
			label$1225:;
			{
				FBSTRING* vr$22 = FBGETTARGETID(  );
				fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
			}
			goto label$1221;
			label$1224:;
			if( TMP$718$2 != 2 ) goto label$1226;
			label$1227:;
			{
				if( HAVE_INPUT_FILES$0 == 0 ) goto label$1229;
				{
					FBCDETERMINEMAINNAME(  );
				}
				label$1229:;
				label$1228:;
				HSETOUTNAME(  );
				FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 428) );
				fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
			}
			goto label$1221;
			label$1226:;
			if( TMP$718$2 != 3 ) goto label$1230;
			label$1231:;
			{
				FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 2915) );
				fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
			}
			goto label$1221;
			label$1230:;
			if( TMP$718$2 != 4 ) goto label$1232;
			label$1233:;
			{
				FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"", 0 );
				fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
			}
			label$1232:;
			label$1221:;
		}
		FBCEND( 0 );
	}
	label$1220:;
	label$1219:;
	FBCDETERMINEMAINNAME(  );
	if( HAVE_INPUT_FILES$0 != 0 ) goto label$1235;
	{
		HPRINTOPTIONS( *(int32*)((uint8*)&FBC$ + 56) );
		FBCEND( 1 );
	}
	label$1235:;
	label$1234:;
	HCOMPILEMODULES(  );
	int32 vr$28 = HCOMPILEXPM(  );
	if( vr$28 != 0 ) goto label$1237;
	{
		FBCEND( 1 );
	}
	label$1237:;
	label$1236:;
	if( *(int32*)((uint8*)&FBC$ + 36) == 0 ) goto label$1239;
	{
		FBCEND( 0 );
	}
	label$1239:;
	label$1238:;
	int32 vr$29 = FBGETOPTION( 2 );
	int32 vr$31 = FBGETOPTION( 2 );
	if( (-(vr$29 != 0) & -(vr$31 != 3)) == 0 ) goto label$1241;
	{
		HCOMPILESTAGE2MODULES(  );
	}
	label$1241:;
	label$1240:;
	if( *(int32*)((uint8*)&FBC$ + 44) == 0 ) goto label$1243;
	{
		FBCEND( 0 );
	}
	label$1243:;
	label$1242:;
	HASSEMBLEMODULES(  );
	HASSEMBLERCS(  );
	HASSEMBLEXPM(  );
	int32 vr$34 = FBGETOPTION( 0 );
	if( vr$34 != 3 ) goto label$1245;
	{
		FBCEND( 0 );
	}
	label$1245:;
	label$1244:;
	HSETDEFAULTLIBPATHS(  );
	int32 vr$35 = FBGETOPTION( 34 );
	int32 vr$36 = FBISCROSSCOMP(  );
	if( (vr$35 & ~vr$36) == 0 ) goto label$1247;
	{
		HCOLLECTOBJINFO(  );
	}
	label$1247:;
	label$1246:;
	int32 vr$39 = FBGETOPTION( 0 );
	if( vr$39 != 1 ) goto label$1249;
	{
		int32 vr$40 = HARCHIVEFILES(  );
		if( vr$40 != 0 ) goto label$1251;
		{
			FBCEND( 1 );
		}
		label$1251:;
		label$1250:;
		FBCEND( 0 );
	}
	label$1249:;
	label$1248:;
	if( *(int32*)((uint8*)&FBC$ + 2120) != 0 ) goto label$1253;
	{
		HADDDEFAULTLIBS(  );
	}
	label$1253:;
	label$1252:;
	int32 vr$41 = HLINKFILES(  );
	if( vr$41 != 0 ) goto label$1255;
	{
		FBCEND( 1 );
	}
	label$1255:;
	label$1254:;
	FBCEND( 0 );
	label$1:;
	fb_End( 0 );
	return fb$result$0;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 12 );
	__builtin_memset( (FBSTRING**)((uint8*)THIS$1 + 12), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 16), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE* THIS$1, struct $9FBCIOFILE* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(FBSTRING**)((uint8*)THIS$1 + 12) = *(FBSTRING**)((uint8*)__FB_RHS__$1 + 12);
	*(int32*)((uint8*)THIS$1 + 16) = *(int32*)((uint8*)__FB_RHS__$1 + 16);
	label$13:;
}

static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (struct $9FBCIOFILE**)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 20), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 24), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 28), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 32), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 36), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 40), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 44), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 48), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 52), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 56), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 60), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 64), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 68), 0, 4 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 72), 0, 32 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 104), 0, 32 );
	_ZN9FBCIOFILEC1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136) );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 156), 0, 32 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 188), 0, 32 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 220), 0, 32 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 252), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 296), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 340), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 384), 0, 44 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 428), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 689), 0, 261 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 952), 0, 4 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 956), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1217), 0, 129 );
	__builtin_memset( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1346), 0, 384 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1730), 0, 129 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1859), 0, 129 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1988), 0, 129 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2120), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2124), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 2128), 0, 4 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2132), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2393), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2654), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2915), 0, 261 );
	__builtin_memset( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3176), 0, 8 );
	label$18:;
	label$19:;
}

static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX* THIS$1, struct $6FBCCTX* __FB_RHS__$1 )
{
	label$20:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(struct $9FBCIOFILE**)((uint8*)THIS$1 + 4) = *(struct $9FBCIOFILE**)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 20) = *(int32*)((uint8*)__FB_RHS__$1 + 20);
	*(int32*)((uint8*)THIS$1 + 24) = *(int32*)((uint8*)__FB_RHS__$1 + 24);
	*(int32*)((uint8*)THIS$1 + 28) = *(int32*)((uint8*)__FB_RHS__$1 + 28);
	*(int32*)((uint8*)THIS$1 + 32) = *(int32*)((uint8*)__FB_RHS__$1 + 32);
	*(int32*)((uint8*)THIS$1 + 36) = *(int32*)((uint8*)__FB_RHS__$1 + 36);
	*(int32*)((uint8*)THIS$1 + 40) = *(int32*)((uint8*)__FB_RHS__$1 + 40);
	*(int32*)((uint8*)THIS$1 + 44) = *(int32*)((uint8*)__FB_RHS__$1 + 44);
	*(int32*)((uint8*)THIS$1 + 48) = *(int32*)((uint8*)__FB_RHS__$1 + 48);
	*(int32*)((uint8*)THIS$1 + 52) = *(int32*)((uint8*)__FB_RHS__$1 + 52);
	*(int32*)((uint8*)THIS$1 + 56) = *(int32*)((uint8*)__FB_RHS__$1 + 56);
	*(int32*)((uint8*)THIS$1 + 60) = *(int32*)((uint8*)__FB_RHS__$1 + 60);
	*(int32*)((uint8*)THIS$1 + 64) = *(int32*)((uint8*)__FB_RHS__$1 + 64);
	*(int32*)((uint8*)THIS$1 + 68) = *(int32*)((uint8*)__FB_RHS__$1 + 68);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 72), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 72), 32 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 104), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 104), 32 );
	_ZN9FBCIOFILEaSERKS_( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136), (struct $9FBCIOFILE*)((uint8*)__FB_RHS__$1 + 136) );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 156), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 156), 32 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 188), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 188), 32 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 220), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 220), 32 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 252), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 252), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 296), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 296), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 340), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 340), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 384), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 384), 44 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 428), 261, (void*)((uint8*)__FB_RHS__$1 + 428), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 689), 261, (void*)((uint8*)__FB_RHS__$1 + 689), 261, 0 );
	*(int32*)((uint8*)THIS$1 + 952) = *(int32*)((uint8*)__FB_RHS__$1 + 952);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 956), 261, (void*)((uint8*)__FB_RHS__$1 + 956), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1217), 129, (void*)((uint8*)__FB_RHS__$1 + 1217), 129, 0 );
	__builtin_memcpy( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1346), (struct $10FBC_EXTOPT*)((uint8*)__FB_RHS__$1 + 1346), 384 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1730), 129, (void*)((uint8*)__FB_RHS__$1 + 1730), 129, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1859), 129, (void*)((uint8*)__FB_RHS__$1 + 1859), 129, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1988), 129, (void*)((uint8*)__FB_RHS__$1 + 1988), 129, 0 );
	*(int32*)((uint8*)THIS$1 + 2120) = *(int32*)((uint8*)__FB_RHS__$1 + 2120);
	*(int32*)((uint8*)THIS$1 + 2124) = *(int32*)((uint8*)__FB_RHS__$1 + 2124);
	*(int32*)((uint8*)THIS$1 + 2128) = *(int32*)((uint8*)__FB_RHS__$1 + 2128);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2132), 261, (void*)((uint8*)__FB_RHS__$1 + 2132), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2393), 261, (void*)((uint8*)__FB_RHS__$1 + 2393), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2654), 261, (void*)((uint8*)__FB_RHS__$1 + 2654), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2915), 261, (void*)((uint8*)__FB_RHS__$1 + 2915), 261, 0 );
	__builtin_memcpy( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3176), (struct $10FBC_OBJINF*)((uint8*)__FB_RHS__$1 + 3176), 8 );
	label$21:;
}

static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* THIS$1 )
{
	label$24:;
	label$25:;
	_ZN9FBCIOFILED1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void FBCINIT( void )
{
	label$26:;
	*(int32*)((uint8*)&FBC$ + 20) = -1;
	*(int32*)((uint8*)&FBC$ + 24) = -1;
	*(int32*)((uint8*)&FBC$ + 32) = -1;
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 72), 64, 20, -1 );
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 104), 16, 20, -1 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 156), 16 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 188), 64 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 220), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 252), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 296), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), 32 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 384), 32 );
	FBGLOBALINIT(  );
	int32 vr$9 = FBGETOPTION( 10 );
	*($7FB_LANG*)((uint8*)&FBC$ + 3176) = vr$9;
	*(int32*)((uint8*)&FBC$ + 68) = -1;
	label$27:;
}

static void HSETOUTNAME( void )
{
	label$28:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 428), 261 );
	if( vr$1 <= 0 ) goto label$31;
	{
		goto label$29;
	}
	label$31:;
	label$30:;
	int32 vr$2 = FBGETOPTION( 0 );
	if( vr$2 != 1 ) goto label$33;
	{
		FBSTRING TMP$39$2;
		FBSTRING TMP$40$2;
		FBSTRING TMP$41$2;
		FBSTRING* vr$4 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 689) );
		FBSTRING* vr$6 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 689) );
		__builtin_memset( &TMP$39$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$39$2, (void*)vr$6, -1, (void*)"lib", 4 );
		__builtin_memset( &TMP$40$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$40$2, (void*)vr$9, -1, (void*)vr$4, -1 );
		__builtin_memset( &TMP$41$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$41$2, (void*)vr$12, -1, (void*)".a", 3 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$15, -1, 0 );
		goto label$29;
	}
	label$33:;
	label$32:;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)((uint8*)&FBC$ + 689), 261, 0 );
	{
		int32 TMP$42$2;
		int32 vr$19 = FBGETOPTION( 0 );
		TMP$42$2 = vr$19;
		if( TMP$42$2 != 0 ) goto label$35;
		label$36:;
		{
			{
				int32 TMP$43$4;
				int32 vr$20 = FBGETOPTION( 3 );
				TMP$43$4 = vr$20;
				if( TMP$43$4 == 3 ) goto label$39;
				label$40:;
				if( TMP$43$4 == 1 ) goto label$39;
				label$41:;
				if( TMP$43$4 == 0 ) goto label$39;
				label$42:;
				if( TMP$43$4 != 4 ) goto label$38;
				label$39:;
				{
					FBSTRING TMP$45$5;
					__builtin_memset( &TMP$45$5, 0, 12 );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$45$5, (void*)((uint8*)&FBC$ + 428), 261, (void*)".exe", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$24, -1, 0 );
				}
				goto label$37;
				label$38:;
				if( TMP$43$4 != 11 ) goto label$43;
				label$44:;
				{
					FBSTRING TMP$47$5;
					__builtin_memset( &TMP$47$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$47$5, (void*)((uint8*)&FBC$ + 428), 261, (void*)".html", 6 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$29, -1, 0 );
				}
				label$43:;
				label$37:;
			}
		}
		goto label$34;
		label$35:;
		if( TMP$42$2 != 2 ) goto label$45;
		label$46:;
		{
			{
				int32 TMP$48$4;
				int32 vr$31 = FBGETOPTION( 3 );
				TMP$48$4 = vr$31;
				if( TMP$48$4 == 1 ) goto label$49;
				label$50:;
				if( TMP$48$4 != 0 ) goto label$48;
				label$49:;
				{
					FBSTRING TMP$50$5;
					__builtin_memset( &TMP$50$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$50$5, (void*)((uint8*)&FBC$ + 428), 261, (void*)".dll", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$35, -1, 0 );
				}
				goto label$47;
				label$48:;
				if( TMP$48$4 == 2 ) goto label$52;
				label$53:;
				if( TMP$48$4 == 9 ) goto label$52;
				label$54:;
				if( TMP$48$4 == 5 ) goto label$52;
				label$55:;
				if( TMP$48$4 == 8 ) goto label$52;
				label$56:;
				if( TMP$48$4 == 10 ) goto label$52;
				label$57:;
				if( TMP$48$4 == 6 ) goto label$52;
				label$58:;
				if( TMP$48$4 != 7 ) goto label$51;
				label$52:;
				{
					FBSTRING TMP$52$5;
					FBSTRING TMP$53$5;
					FBSTRING TMP$54$5;
					FBSTRING* vr$38 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 428) );
					FBSTRING* vr$40 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 428) );
					__builtin_memset( &TMP$52$5, 0, 12 );
					FBSTRING* vr$43 = fb_StrConcat( &TMP$52$5, (void*)vr$40, -1, (void*)"lib", 4 );
					__builtin_memset( &TMP$53$5, 0, 12 );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$53$5, (void*)vr$43, -1, (void*)vr$38, -1 );
					__builtin_memset( &TMP$54$5, 0, 12 );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$54$5, (void*)vr$46, -1, (void*)".so", 4 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$49, -1, 0 );
				}
				goto label$47;
				label$51:;
				if( TMP$48$4 != 3 ) goto label$59;
				label$60:;
				{
					FBSTRING TMP$56$5;
					__builtin_memset( &TMP$56$5, 0, 12 );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$56$5, (void*)((uint8*)&FBC$ + 428), 261, (void*)".dxe", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)vr$54, -1, 0 );
				}
				label$59:;
				label$47:;
			}
		}
		label$45:;
		label$34:;
	}
	label$29:;
}

static void FBCEND( int32 ERRNUM$1 )
{
	label$61:;
	FBSTRING* FILE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 156) );
	FILE$1 = (FBSTRING*)vr$1;
	label$63:;
	if( FILE$1 == (FBSTRING*)0u ) goto label$64;
	{
		int32 vr$2 = fb_FileKill( (FBSTRING*)FILE$1 );
		if( vr$2 == 0 ) goto label$66;
		{
		}
		label$66:;
		label$65:;
		void* vr$3 = LISTGETNEXT( (void*)FILE$1 );
		FILE$1 = (FBSTRING*)vr$3;
	}
	goto label$63;
	label$64:;
	fb_End( ERRNUM$1 );
	label$62:;
}

static void FBCADDTEMP( FBSTRING* FILE$1 )
{
	label$67:;
	STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 156), FILE$1 );
	label$68:;
}

static FBSTRING* FBCADDOBJ( FBSTRING* FILE$1 )
{
	FBSTRING* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$69:;
	FBSTRING* S$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
	S$1 = (FBSTRING*)vr$2;
	fb_StrAssign( (void*)S$1, -1, (void*)FILE$1, -1, 0 );
	fb$result$1 = S$1;
	label$70:;
	return fb$result$1;
}

static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* CMD$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$71:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpenPipe( (FBSTRING*)CMD$1, 2u, 0u, 0u, F$1, 0, (uint8*)0u );
	if( vr$2 == 0 ) goto label$74;
	{
		goto label$72;
	}
	label$74:;
	label$73:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_FileInput( F$1 );
	fb_InputString( (void*)&LN$1, -1, 0 );
	int32 vr$5 = fb_FileClose( F$1 );
	if( vr$5 == 0 ) goto label$75;
	void* vr$6 = fb_ErrorThrowAt( 260, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$6;
	label$75:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&LN$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	goto label$72;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$72:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* FILE$1 )
{
	FBSTRING TMP$58$1;
	FBSTRING TMP$59$1;
	int32 TMP$60$1;
	FBSTRING TMP$65$1;
	FBSTRING TMP$66$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$76:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 12 );
	__builtin_memset( &TMP$58$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$58$1, (void*)((uint8*)&FBC$ + 2915), 261, (void*)"/", 2 );
	__builtin_memset( &TMP$59$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$59$1, (void*)vr$5, -1, (void*)FILE$1, 0 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$8, -1, 0 );
	int32 vr$10 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
	if( vr$10 == 0 ) goto label$79;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$79:;
	label$78:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	TMP$60$1 = 0;
	FBCFINDBIN( 3, &PATH$1, &TMP$60$1 );
	{
		int32 TMP$61$2;
		int32 vr$17 = FBGETCPUFAMILY(  );
		TMP$61$2 = vr$17;
		if( TMP$61$2 != 0 ) goto label$81;
		label$82:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$80;
		label$81:;
		if( TMP$61$2 != 1 ) goto label$83;
		label$84:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		goto label$80;
		label$83:;
		if( TMP$61$2 != 4 ) goto label$85;
		label$86:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$80;
		label$85:;
		if( TMP$61$2 != 5 ) goto label$87;
		label$88:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		label$87:;
		label$80:;
	}
	__builtin_memset( &TMP$65$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$65$1, (void*)" -print-file-name=", 19, (void*)FILE$1, 0 );
	__builtin_memset( &TMP$66$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$66$1, (void*)&PATH$1, -1, (void*)vr$24, -1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$28, -1, 0 );
	FBSTRING* vr$31 = HGET1STOUTPUTLINEFROMCOMMAND( &PATH$1 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$31, -1, 0 );
	int32 vr$34 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$34 != 0 ) goto label$90;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$90:;
	label$89:;
	FBSTRING* vr$37 = HSTRIPPATH( (uint8*)*(uint8**)&FOUND$1 );
	int32 vr$39 = fb_StrCompare( (void*)&FOUND$1, -1, (void*)vr$37, -1 );
	if( vr$39 != 0 ) goto label$92;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$92:;
	label$91:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$77:;
	FBSTRING* vr$47 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$47;
}

static FBSTRING* FBCFINDLIBFILE( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$93:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 12 );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$2, -1, 0 );
	int32 vr$5 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$5 <= 0 ) goto label$96;
	{
		int32 vr$6 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
		if( vr$6 != 0 ) goto label$98;
		{
			fb_StrAssign( (void*)&FOUND$1, -1, (void*)"", 1, 0 );
		}
		label$98:;
		label$97:;
	}
	label$96:;
	label$95:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$94:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static void FBCADDDEFLIBPATH( FBSTRING* PATH$1 )
{
	label$99:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 384), PATH$1, -1 );
	label$100:;
}

static void FBCADDLIBPATHFOR( uint8* LIBNAME$1 )
{
	FBSTRING TMP$67$1;
	label$101:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	__builtin_memset( &TMP$67$1, 0, 12 );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( LIBNAME$1 );
	fb_StrAssign( (void*)&TMP$67$1, -1, (void*)vr$2, -1, 0 );
	FBSTRING* vr$4 = HSTRIPFILENAME( (uint8*)*(uint8**)&TMP$67$1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$4, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$67$1 );
	FBSTRING* vr$8 = PATHSTRIPDIV( &PATH$1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$8, -1, 0 );
	int32 vr$11 = fb_StrLen( (void*)&PATH$1, -1 );
	if( vr$11 <= 0 ) goto label$104;
	{
		FBCADDDEFLIBPATH( &PATH$1 );
	}
	label$104:;
	label$103:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$102:;
}

static void FBCFINDBIN( int32 TOOL$1, FBSTRING* PATH$1, int32* RELYING_ON_SYSTEM$1 )
{
	label$105:;
	static int32 LASTTOOL$1 = -1;
	static int32 LAST_RELYING_ON_SYSTEM$1;
	static FBSTRING LASTPATH$1;
	if( LASTTOOL$1 != TOOL$1 ) goto label$108;
	{
		fb_StrAssign( (void*)PATH$1, -1, (void*)&LASTPATH$1, -1, 0 );
		*RELYING_ON_SYSTEM$1 = LAST_RELYING_ON_SYSTEM$1;
		goto label$106;
	}
	label$108:;
	label$107:;
	*RELYING_ON_SYSTEM$1 = 0;
	FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4 & 31))) );
	FBSTRING* vr$5 = fb_StrUcase2( (FBSTRING*)vr$4, 0 );
	FBSTRING* vr$6 = fb_GetEnviron( (FBSTRING*)vr$5 );
	fb_StrAssign( (void*)PATH$1, -1, (void*)vr$6, -1, 0 );
	int32 vr$7 = fb_StrLen( (void*)PATH$1, -1 );
	if( vr$7 != 0 ) goto label$110;
	{
		FBSTRING TMP$68$2;
		FBSTRING TMP$69$2;
		__builtin_memset( &TMP$68$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$68$2, (void*)((uint8*)&FBC$ + 2393), 261, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4 & 31))), 16 );
		__builtin_memset( &TMP$69$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$69$2, (void*)vr$13, -1, (void*)"", 1 );
		fb_StrAssign( (void*)PATH$1, -1, (void*)vr$16, -1, 0 );
		int32 vr$18 = HFILEEXISTS( (uint8*)*(uint8**)PATH$1 );
		if( vr$18 != 0 ) goto label$112;
		{
			int32 vr$19 = FBGETOPTION( 3 );
			if( vr$19 == 11 ) goto label$114;
			{
				FBSTRING TMP$70$4;
				FBSTRING TMP$71$4;
				__builtin_memset( &TMP$70$4, 0, 12 );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$70$4, (void*)((uint8*)&FBC$ + 1859), 129, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4 & 31))), 16 );
				__builtin_memset( &TMP$71$4, 0, 12 );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$71$4, (void*)vr$25, -1, (void*)"", 1 );
				fb_StrAssign( (void*)PATH$1, -1, (void*)vr$28, -1, 0 );
			}
			goto label$113;
			label$114:;
			{
				fb_StrAssign( (void*)PATH$1, -1, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4 & 31))), 16, 0 );
			}
			label$113:;
			*RELYING_ON_SYSTEM$1 = -1;
		}
		label$112:;
		label$111:;
	}
	label$110:;
	label$109:;
	LASTTOOL$1 = TOOL$1;
	fb_StrAssign( (void*)&LASTPATH$1, -1, (void*)PATH$1, -1, 0 );
	LAST_RELYING_ON_SYSTEM$1 = *RELYING_ON_SYSTEM$1;
	label$106:;
}

static int32 FBCRUNBIN( uint8* ACTION$1, int32 TOOL$1, FBSTRING* LN$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$115:;
	int32 RESULT$1;
	int32 RELYING_ON_SYSTEM$1;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	FBCFINDBIN( TOOL$1, &PATH$1, &RELYING_ON_SYSTEM$1 );
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$118;
	{
		FBSTRING TMP$73$2;
		FBSTRING TMP$75$2;
		FBSTRING TMP$76$2;
		__builtin_memset( &TMP$73$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$73$2, (void*)ACTION$1, 0, (void*)": ", 3 );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		__builtin_memset( &TMP$75$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$75$2, (void*)&PATH$1, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$76$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$76$2, (void*)vr$10, -1, (void*)LN$1, -1 );
		fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	}
	label$118:;
	label$117:;
	int32 vr$15 = fb_Exec( (FBSTRING*)&PATH$1, (FBSTRING*)LN$1 );
	RESULT$1 = vr$15;
	if( RESULT$1 != 0 ) goto label$120;
	{
		fb$result$1 = -1;
	}
	goto label$119;
	label$120:;
	if( RESULT$1 >= 0 ) goto label$121;
	{
		ERRREPORTEX( 91, (uint8*)*(uint8**)&PATH$1, -1, 6, (uint8*)0u );
	}
	goto label$119;
	label$121:;
	{
		if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$123;
		{
			FBSTRING TMP$79$3;
			FBSTRING TMP$80$3;
			FBSTRING TMP$81$3;
			FBSTRING TMP$82$3;
			FBSTRING* vr$16 = fb_IntToStr( RESULT$1 );
			__builtin_memset( &TMP$79$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$79$3, (void*)ACTION$1, 0, (void*)" failed: '", 11 );
			__builtin_memset( &TMP$80$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$80$3, (void*)vr$20, -1, (void*)&PATH$1, -1 );
			__builtin_memset( &TMP$81$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$81$3, (void*)vr$23, -1, (void*)"' terminated with exit code ", 29 );
			__builtin_memset( &TMP$82$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$82$3, (void*)vr$26, -1, (void*)vr$16, -1 );
			fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
		}
		label$123:;
		label$122:;
	}
	label$119:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$116:;
	return fb$result$1;
}

static int32 CLEARDEFLIST( FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$84$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$124:;
	int32 FI$1;
	int32 vr$1 = fb_FileFree(  );
	FI$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 2u, 0u, 0u, FI$1, 0 );
	if( vr$2 == 0 ) goto label$127;
	{
		fb$result$1 = 0;
		goto label$125;
	}
	label$127:;
	label$126:;
	FBSTRING CLEANED$1;
	FBSTRING* vr$3 = HSTRIPEXT( DEFFILE$1 );
	__builtin_memset( &TMP$84$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$84$1, (void*)vr$3, -1, (void*)".clean.def", 11 );
	fb_StrInit( (void*)&CLEANED$1, -1, (void*)vr$6, -1, 0 );
	int32 FO$1;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = vr$8;
	int32 vr$10 = fb_FileOpen( (FBSTRING*)&CLEANED$1, 3u, 0u, 0u, FO$1, 0 );
	if( vr$10 == 0 ) goto label$129;
	{
		int32 vr$11 = fb_FileClose( FI$1 );
		if( vr$11 == 0 ) goto label$130;
		void* vr$12 = fb_ErrorThrowAt( 500, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
		goto *vr$12;
		label$130:;
		fb$result$1 = 0;
		fb_StrDelete( (FBSTRING*)&CLEANED$1 );
		goto label$125;
	}
	label$129:;
	label$128:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	label$131:;
	int32 vr$15 = fb_FileEof( FI$1 );
	if( vr$15 != 0 ) goto label$132;
	{
		int32 TMP$86$2;
		fb_FileLineInput( FI$1, (void*)&LN$1, -1, 0 );
		FBSTRING* vr$18 = fb_RIGHT( (FBSTRING*)&LN$1, 4 );
		int32 vr$19 = fb_StrCompare( (void*)vr$18, -1, (void*)"DATA", 5 );
		if( vr$19 != 0 ) goto label$134;
		{
			int32 vr$21 = fb_StrLen( (void*)&LN$1, -1 );
			FBSTRING* vr$24 = fb_LEFT( (FBSTRING*)&LN$1, vr$21 + -4 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$24, -1, 0 );
		}
		label$134:;
		label$133:;
		TMP$86$2 = FO$1;
		fb_PrintString( TMP$86$2, (FBSTRING*)&LN$1, 1 );
	}
	goto label$131;
	label$132:;
	int32 vr$27 = fb_FileClose( FO$1 );
	if( vr$27 == 0 ) goto label$135;
	void* vr$28 = fb_ErrorThrowAt( 515, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$28;
	label$135:;
	int32 vr$29 = fb_FileClose( FI$1 );
	if( vr$29 == 0 ) goto label$136;
	void* vr$30 = fb_ErrorThrowAt( 516, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$30;
	label$136:;
	fb_FileKill( (FBSTRING*)DEFFILE$1 );
	int32 vr$32 = rename( (uint8*)*(uint8**)&CLEANED$1, (uint8*)*(uint8**)DEFFILE$1 );
	fb$result$1 = -(vr$32 == 0);
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	goto label$125;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	label$125:;
	return fb$result$1;
}

static int32 HGENERATEEMPTYDEFFILE( FBSTRING* DEFFILE$1 )
{
	int32 TMP$87$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$137:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 3u, 0u, 0u, F$1, 0 );
	if( vr$2 == 0 ) goto label$140;
	{
		goto label$138;
	}
	label$140:;
	label$139:;
	TMP$87$1 = F$1;
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"EXPORTS", 7 );
	fb_PrintString( TMP$87$1, (FBSTRING*)vr$3, 1 );
	int32 vr$4 = fb_FileClose( F$1 );
	if( vr$4 == 0 ) goto label$141;
	void* vr$5 = fb_ErrorThrowAt( 530, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$5;
	label$141:;
	fb$result$1 = -1;
	label$138:;
	return fb$result$1;
}

static int32 MAKEIMPLIB( FBSTRING* DLLNAME$1, FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$91$1;
	FBSTRING TMP$92$1;
	FBSTRING TMP$93$1;
	FBSTRING TMP$97$1;
	FBSTRING TMP$98$1;
	FBSTRING TMP$99$1;
	FBSTRING TMP$100$1;
	FBSTRING TMP$101$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$142:;
	int32 vr$1 = CLEARDEFLIST( DEFFILE$1 );
	if( vr$1 != 0 ) goto label$145;
	{
		goto label$143;
	}
	label$145:;
	label$144:;
	int64 vr$3 = fb_FileLen( (uint8*)*(uint8**)DEFFILE$1 );
	if( vr$3 != 0ll ) goto label$147;
	{
		int32 vr$4 = HGENERATEEMPTYDEFFILE( DEFFILE$1 );
		if( vr$4 != 0 ) goto label$149;
		{
			goto label$143;
		}
		label$149:;
		label$148:;
	}
	label$147:;
	label$146:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	__builtin_memset( &TMP$91$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$91$1, (void*)"--def \x22", 8, (void*)DEFFILE$1, -1 );
	__builtin_memset( &TMP$92$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$92$1, (void*)vr$8, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$93$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$93$1, (void*)&LN$1, -1, (void*)vr$11, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$15, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" --dllname \x22", 13, 0 );
	FBSTRING* vr$19 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 428) );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$19, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$23 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 428) );
	__builtin_memset( &TMP$97$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$97$1, (void*)" --output-lib \x22", 16, (void*)vr$23, -1 );
	__builtin_memset( &TMP$98$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$98$1, (void*)vr$26, -1, (void*)"lib", 4 );
	__builtin_memset( &TMP$99$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$99$1, (void*)vr$29, -1, (void*)DLLNAME$1, -1 );
	__builtin_memset( &TMP$100$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$100$1, (void*)vr$32, -1, (void*)".dll.a\x22", 8 );
	__builtin_memset( &TMP$101$1, 0, 12 );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$101$1, (void*)&LN$1, -1, (void*)vr$35, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$39, -1, 0 );
	int32 vr$42 = FBCRUNBIN( (uint8*)"creating import library", 5, &LN$1 );
	if( vr$42 != 0 ) goto label$151;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$143;
	}
	label$151:;
	label$150:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$153;
	{
		FBCADDTEMP( DEFFILE$1 );
	}
	label$153:;
	label$152:;
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$143:;
	return fb$result$1;
}

static FBSTRING* HFINDLIB( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$154:;
	FBSTRING FOUND$1;
	FBSTRING* vr$1 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrInit( (void*)&FOUND$1, -1, (void*)vr$1, -1, 0 );
	int32 vr$4 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$4 <= 0 ) goto label$157;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)" \x22", 3, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)"\x22", 2, 0 );
	}
	goto label$156;
	label$157:;
	{
		ERRREPORTEX( 23, (uint8*)FILE$1, -1, 1, (uint8*)0u );
	}
	label$156:;
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$155:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

static int32 FBCLINKERISGOLD( void )
{
	int32 TMP$104$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$158:;
	FBSTRING LDCMD$1;
	__builtin_memset( &LDCMD$1, 0, 12 );
	TMP$104$1 = 0;
	FBCFINDBIN( 2, &LDCMD$1, &TMP$104$1 );
	fb_StrConcatAssign( (void*)&LDCMD$1, -1, (void*)" --version", 11, 0 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"GNU gold", 8 );
	FBSTRING* vr$7 = HGET1STOUTPUTLINEFROMCOMMAND( &LDCMD$1 );
	int32 vr$8 = fb_StrInstr( 1, (FBSTRING*)vr$7, (FBSTRING*)vr$5 );
	fb$result$1 = -(vr$8 > 0);
	fb_StrDelete( (FBSTRING*)&LDCMD$1 );
	goto label$159;
	fb_StrDelete( (FBSTRING*)&LDCMD$1 );
	label$159:;
	return fb$result$1;
}

static int32 FBCISUSINGGOLDLINKER( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$160:;
	int32 vr$1 = FBTARGETSUPPORTSELF(  );
	if( vr$1 == 0 ) goto label$163;
	{
		int32 vr$2 = FBCLINKERISGOLD(  );
		fb$result$1 = vr$2;
		goto label$161;
	}
	label$163:;
	label$162:;
	fb$result$1 = 0;
	goto label$161;
	label$161:;
	return fb$result$1;
}

static int32 HLINKFILES( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$164:;
	FBSTRING LDCLINE$1;
	__builtin_memset( &LDCLINE$1, 0, 12 );
	FBSTRING DLLNAME$1;
	__builtin_memset( &DLLNAME$1, 0, 12 );
	FBSTRING DEFFILE$1;
	__builtin_memset( &DEFFILE$1, 0, 12 );
	fb$result$1 = 0;
	HSETOUTNAME(  );
	{
		int32 TMP$107$2;
		int32 vr$4 = FBGETOPTION( 3 );
		TMP$107$2 = vr$4;
		if( TMP$107$2 != 0 ) goto label$167;
		label$168:;
		{
			{
				int32 TMP$108$4;
				int32 vr$5 = FBGETCPUFAMILY(  );
				TMP$108$4 = vr$5;
				if( TMP$108$4 != 0 ) goto label$170;
				label$171:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m i386pe ", 11, 0 );
				}
				goto label$169;
				label$170:;
				if( TMP$108$4 != 1 ) goto label$172;
				label$173:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m i386pep ", 12, 0 );
				}
				label$172:;
				label$169:;
			}
		}
		goto label$166;
		label$167:;
		if( TMP$107$2 != 2 ) goto label$174;
		label$175:;
		{
			{
				int32 TMP$111$4;
				int32 vr$8 = FBGETCPUFAMILY(  );
				TMP$111$4 = vr$8;
				if( TMP$111$4 != 0 ) goto label$177;
				label$178:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m elf_i386 ", 13, 0 );
				}
				goto label$176;
				label$177:;
				if( TMP$111$4 != 1 ) goto label$179;
				label$180:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m elf_x86_64 ", 15, 0 );
				}
				goto label$176;
				label$179:;
				if( TMP$111$4 != 2 ) goto label$181;
				label$182:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m armelf_linux_eabi ", 22, 0 );
				}
				label$181:;
				label$176:;
			}
		}
		label$174:;
		label$166:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-o \x22", 5, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
	{
		uint32 TMP$118$2;
		int32 vr$16 = FBGETOPTION( 3 );
		TMP$118$2 = (uint32)vr$16;
		goto label$184;
		label$185:;
		{
			int32 vr$18 = fb_StrLen( (void*)((uint8*)&FBC$ + 1217), 129 );
			if( vr$18 != 0 ) goto label$187;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1217), 129, (void*)"console", 8, 0 );
			}
			goto label$186;
			label$187:;
			{
				int32 vr$21 = fb_StrCompare( (void*)((uint8*)&FBC$ + 1217), 129, (void*)"gui", 4 );
				if( vr$21 != 0 ) goto label$189;
				{
					fb_StrAssign( (void*)((uint8*)&FBC$ + 1217), 129, (void*)"windows", 8, 0 );
				}
				label$189:;
				label$188:;
			}
			label$186:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -subsystem ", 13, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 1217), 129, 0 );
			int32 vr$26 = FBGETOPTION( 0 );
			if( vr$26 != 2 ) goto label$191;
			{
				FBSTRING TMP$123$4;
				FBSTRING TMP$124$4;
				__builtin_memset( &TMP$124$4, 0, 12 );
				__builtin_memset( &TMP$123$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$123$4, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
				FBSTRING* vr$32 = HSTRIPEXT( &TMP$123$4 );
				fb_StrAssign( (void*)&TMP$124$4, -1, (void*)vr$32, -1, 0 );
				FBSTRING* vr$34 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$124$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$34, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$124$4 );
				fb_StrDelete( (FBSTRING*)&TMP$123$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --dll --enable-stdcall-fixup", 30, 0 );
				int32 vr$39 = FBGETCPUFAMILY(  );
				if( vr$39 != 0 ) goto label$193;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e _DllMainCRTStartup@12", 26, 0 );
				}
				goto label$192;
				label$193:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e DllMainCRTStartup", 22, 0 );
				}
				label$192:;
			}
			label$191:;
			label$190:;
		}
		goto label$183;
		label$194:;
		{
			int32 vr$42 = FBGETOPTION( 0 );
			if( vr$42 != 2 ) goto label$196;
			{
				FBSTRING TMP$128$4;
				FBSTRING TMP$129$4;
				__builtin_memset( &TMP$129$4, 0, 12 );
				__builtin_memset( &TMP$128$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$128$4, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
				FBSTRING* vr$48 = HSTRIPEXT( &TMP$128$4 );
				fb_StrAssign( (void*)&TMP$129$4, -1, (void*)vr$48, -1, 0 );
				FBSTRING* vr$50 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$129$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$50, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$129$4 );
				fb_StrDelete( (FBSTRING*)&TMP$128$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -shared -h", 12, 0 );
				FBSTRING* vr$56 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 428) );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$56, -1, 0 );
				FBSTRING* vr$59 = fb_LEFT( (FBSTRING*)&DLLNAME$1, 3 );
				int32 vr$60 = fb_StrCompare( (void*)vr$59, -1, (void*)"lib", 4 );
				if( vr$60 != 0 ) goto label$198;
				{
					int32 vr$62 = fb_StrLen( (void*)&DLLNAME$1, -1 );
					FBSTRING* vr$65 = fb_RIGHT( (FBSTRING*)&DLLNAME$1, vr$62 + -3 );
					fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$65, -1, 0 );
				}
				label$198:;
				label$197:;
			}
			goto label$195;
			label$196:;
			{
				{
					uint32 TMP$131$5;
					int32 vr$67 = FBGETOPTION( 3 );
					TMP$131$5 = (uint32)vr$67;
					goto label$200;
					label$201:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /libexec/ld-elf.so.1", 38, 0 );
					}
					goto label$199;
					label$202:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /libexec/ld-elf.so.2", 38, 0 );
					}
					goto label$199;
					label$203:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/64/ld.so.1", 33, 0 );
					}
					goto label$199;
					label$204:;
					{
						{
							int32 TMP$135$7;
							int32 vr$71 = FBGETCPUFAMILY(  );
							TMP$135$7 = vr$71;
							if( TMP$135$7 != 0 ) goto label$206;
							label$207:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux.so.2", 36, 0 );
							}
							goto label$205;
							label$206:;
							if( TMP$135$7 != 1 ) goto label$208;
							label$209:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib64/ld-linux-x86-64.so.2", 45, 0 );
							}
							goto label$205;
							label$208:;
							if( TMP$135$7 != 2 ) goto label$210;
							label$211:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux-armhf.so.3", 42, 0 );
							}
							goto label$205;
							label$210:;
							if( TMP$135$7 != 3 ) goto label$212;
							label$213:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux-aarch64.so.1", 44, 0 );
							}
							label$212:;
							label$205:;
						}
					}
					goto label$199;
					label$214:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /usr/libexec/ld.elf_so", 40, 0 );
					}
					goto label$199;
					label$215:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /usr/libexec/ld.so", 36, 0 );
					}
					goto label$199;
					label$200:;
					static const void* tmp$719[9] = {
						&&label$204,
						&&label$199,
						&&label$199,
						&&label$201,
						&&label$202,
						&&label$203,
						&&label$215,
						&&label$199,
						&&label$214,
					};
					if( (TMP$131$5 - 2u) > 8u ) goto label$199;
					goto *tmp$719[TMP$131$5 - 2u];
					label$199:;
				}
			}
			label$195:;
			int32 vr$78 = FBGETOPTION( 0 );
			int32 vr$80 = FBGETOPTION( 28 );
			if( (-(vr$78 == 2) | vr$80) == 0 ) goto label$217;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --export-dynamic", 18, 0 );
			}
			label$217:;
			label$216:;
		}
		goto label$183;
		label$218:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared", 66, 0 );
		}
		goto label$183;
		label$219:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -O", 4, 0 );
			int32 vr$85 = FBGETOPTION( 8 );
			FBSTRING* vr$86 = fb_IntToStr( vr$85 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$86, -1, 0 );
			static uint8 EMSCRIPTEN_OPTIONS$3[4][32] = { "CASE_INSENSITIVE_FS=1", "TOTAL_MEMORY=67108864", "ALLOW_MEMORY_GROWTH=1", "RETAIN_COMPILER_SETTINGS=1" };
			static struct $8FBARRAY1IcE tmp$149$3 = { (uint8*)EMSCRIPTEN_OPTIONS$3, (uint8*)EMSCRIPTEN_OPTIONS$3, 128, 32, 1, 49, { { 4, 0, 3 } } };
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Wno-warn-absolute-paths", 26, 0 );
			{
				int32 I$4;
				I$4 = 0;
				label$223:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -s ", 5, 0 );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)EMSCRIPTEN_OPTIONS$3 + (I$4 << (5 & 31))), 32, 0 );
				}
				label$221:;
				I$4 = I$4 + 1;
				label$220:;
				if( I$4 <= 3 ) goto label$223;
				label$222:;
			}
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --shell-file", 14, 0 );
			FBSTRING* vr$95 = HFINDLIB( (uint8*)"fb_shell.html" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$95, -1, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --post-js", 11, 0 );
			FBSTRING* vr$98 = HFINDLIB( (uint8*)"fb_rtlib.js" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$98, -1, 0 );
			int32 vr$101 = fb_StrLen( (void*)((uint8*)&FBC$ + 1217), 129 );
			if( vr$101 != 0 ) goto label$225;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --post-js", 11, 0 );
				FBSTRING* vr$103 = HFINDLIB( (uint8*)"termlib_min.js" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$103, -1, 0 );
			}
			label$225:;
			label$224:;
		}
		goto label$183;
		label$184:;
		static const void* tmp$720[12] = {
			&&label$185,
			&&label$185,
			&&label$194,
			&&label$183,
			&&label$218,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$194,
			&&label$219,
		};
		if( TMP$118$2 > 11u ) goto label$183;
		goto *tmp$720[TMP$118$2 - 0u];
		label$183:;
	}
	int32 vr$105 = FBGETOPTION( 3 );
	if( vr$105 != 3 ) goto label$227;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -T \x22", 6, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2915), 261, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/i386go32.x\x22", 13, 0 );
	}
	goto label$226;
	label$227:;
	{
		int32 vr$110 = FBGETOPTION( 34 );
		int32 vr$111 = FBGETOPTION( 3 );
		int32 vr$114 = FBGETOPTION( 3 );
		int32 vr$117 = FBCISUSINGGOLDLINKER(  );
		if( (((vr$110 & -(vr$111 != 9)) & -(vr$114 != 11)) & ~vr$117) == 0 ) goto label$229;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22", 3, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2915), 261, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/fbextra.x\x22", 12, 0 );
		}
		label$229:;
		label$228:;
	}
	label$226:;
	{
		uint32 TMP$162$2;
		int32 vr$124 = FBGETOPTION( 3 );
		TMP$162$2 = (uint32)vr$124;
		goto label$231;
		label$232:;
		{
			int32 STACKSIZE$3;
			int32 vr$125 = FBGETOPTION( 33 );
			STACKSIZE$3 = vr$125;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --stack ", 10, 0 );
			FBSTRING* vr$127 = fb_IntToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$127, -1, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)",", 2, 0 );
			FBSTRING* vr$130 = fb_IntToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$130, -1, 0 );
			int32 vr$132 = FBGETOPTION( 0 );
			if( vr$132 != 2 ) goto label$234;
			{
				FBSTRING TMP$165$4;
				__builtin_memset( &TMP$165$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$165$4, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
				FBSTRING* vr$137 = HSTRIPEXT( &TMP$165$4 );
				fb_StrAssign( (void*)&DEFFILE$1, -1, (void*)vr$137, -1, 0 );
				fb_StrConcatAssign( (void*)&DEFFILE$1, -1, (void*)".def", 5, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$165$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --output-def \x22", 16, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)&DEFFILE$1, -1, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
			}
			label$234:;
			label$233:;
		}
		goto label$230;
		label$235:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e _WinMainCRTStartup", 23, 0 );
		}
		goto label$230;
		label$231:;
		static const void* tmp$721[5] = {
			&&label$232,
			&&label$232,
			&&label$230,
			&&label$230,
			&&label$235,
		};
		if( TMP$162$2 > 4u ) goto label$230;
		goto *tmp$721[TMP$162$2 - 0u];
		label$230:;
	}
	if( *(int32*)((uint8*)&FBC$ + 2124) == 0 ) goto label$237;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Bstatic", 10, 0 );
	}
	label$237:;
	label$236:;
	int32 vr$148 = fb_StrLen( (void*)((uint8*)&FBC$ + 956), 261 );
	if( vr$148 <= 0 ) goto label$239;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Map ", 7, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 956), 261, 0 );
	}
	label$239:;
	label$238:;
	int32 vr$152 = FBGETOPTION( 13 );
	if( vr$152 != 0 ) goto label$241;
	{
		int32 vr$153 = FBGETOPTION( 21 );
		if( vr$153 != 0 ) goto label$243;
		{
			int32 vr$154 = FBGETOPTION( 3 );
			int32 vr$156 = FBGETOPTION( 3 );
			if( (-(vr$154 != 9) & -(vr$156 != 11)) == 0 ) goto label$245;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -s", 4, 0 );
			}
			label$245:;
			label$244:;
		}
		label$243:;
		label$242:;
	}
	label$241:;
	label$240:;
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$161 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 384) );
		I$2 = (struct $11TSTRSETITEM*)vr$161;
		FBSTRING L$2;
		__builtin_memset( &L$2, 0, 12 );
		int32 vr$163 = FBGETOPTION( 3 );
		if( vr$163 == 11 ) goto label$247;
		{
			fb_StrAssign( (void*)&L$2, -1, (void*)" -L \x22", 6, 0 );
		}
		goto label$246;
		label$247:;
		{
			fb_StrAssign( (void*)&L$2, -1, (void*)" -L\x22", 5, 0 );
		}
		label$246:;
		label$248:;
		if( I$2 == (struct $11TSTRSETITEM*)0u ) goto label$249;
		{
			FBSTRING TMP$174$3;
			FBSTRING TMP$175$3;
			FBSTRING TMP$176$3;
			__builtin_memset( &TMP$174$3, 0, 12 );
			FBSTRING* vr$171 = fb_StrConcat( &TMP$174$3, (void*)&L$2, -1, (void*)I$2, -1 );
			__builtin_memset( &TMP$175$3, 0, 12 );
			FBSTRING* vr$174 = fb_StrConcat( &TMP$175$3, (void*)vr$171, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$176$3, 0, 12 );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$176$3, (void*)&LDCLINE$1, -1, (void*)vr$174, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$178, -1, 0 );
			void* vr$180 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$180;
		}
		goto label$248;
		label$249:;
		fb_StrDelete( (FBSTRING*)&L$2 );
	}
	{
		uint32 TMP$177$2;
		int32 vr$182 = FBGETOPTION( 3 );
		TMP$177$2 = (uint32)vr$182;
		goto label$251;
		label$252:;
		{
			int32 vr$183 = FBGETOPTION( 0 );
			if( vr$183 != 2 ) goto label$254;
			{
				FBSTRING* vr$184 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$184, -1, 0 );
			}
			goto label$253;
			label$254:;
			{
				FBSTRING* vr$186 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$186, -1, 0 );
				int32 vr$188 = FBGETOPTION( 21 );
				if( vr$188 == 0 ) goto label$256;
				{
					FBSTRING* vr$189 = HFINDLIB( (uint8*)"gcrt0.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$189, -1, 0 );
				}
				label$256:;
				label$255:;
			}
			label$253:;
		}
		goto label$250;
		label$257:;
		{
			int32 vr$191 = FBGETOPTION( 0 );
			if( vr$191 != 2 ) goto label$259;
			{
				FBSTRING* vr$192 = HFINDLIB( (uint8*)"dllcrt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$192, -1, 0 );
			}
			goto label$258;
			label$259:;
			{
				FBSTRING* vr$194 = HFINDLIB( (uint8*)"crt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$194, -1, 0 );
				int32 vr$196 = FBGETOPTION( 21 );
				if( vr$196 == 0 ) goto label$261;
				{
					FBSTRING* vr$197 = HFINDLIB( (uint8*)"gcrt2.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$197, -1, 0 );
				}
				label$261:;
				label$260:;
			}
			label$258:;
			FBSTRING* vr$199 = HFINDLIB( (uint8*)"crtbegin.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$199, -1, 0 );
		}
		goto label$250;
		label$262:;
		{
			int32 vr$201 = FBGETOPTION( 21 );
			if( vr$201 == 0 ) goto label$264;
			{
				FBSTRING* vr$202 = HFINDLIB( (uint8*)"gcrt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$202, -1, 0 );
			}
			goto label$263;
			label$264:;
			{
				FBSTRING* vr$204 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$204, -1, 0 );
			}
			label$263:;
		}
		goto label$250;
		label$265:;
		{
			int32 vr$206 = FBGETOPTION( 0 );
			if( vr$206 != 0 ) goto label$267;
			{
				int32 vr$207 = FBGETOPTION( 21 );
				if( vr$207 == 0 ) goto label$269;
				{
					{
						uint32 TMP$184$6;
						int32 vr$208 = FBGETOPTION( 3 );
						TMP$184$6 = (uint32)vr$208;
						goto label$271;
						label$272:;
						{
							FBSTRING* vr$209 = HFINDLIB( (uint8*)"gcrt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$209, -1, 0 );
						}
						goto label$270;
						label$273:;
						{
							FBSTRING* vr$211 = HFINDLIB( (uint8*)"gcrt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$211, -1, 0 );
						}
						goto label$270;
						label$271:;
						static const void* tmp$722[3] = {
							&&label$272,
							&&label$273,
							&&label$272,
						};
						if( (TMP$184$6 - 8u) > 2u ) goto label$273;
						goto *tmp$722[TMP$184$6 - 8u];
						label$270:;
					}
				}
				goto label$268;
				label$269:;
				{
					{
						uint32 TMP$186$6;
						int32 vr$213 = FBGETOPTION( 3 );
						TMP$186$6 = (uint32)vr$213;
						goto label$275;
						label$276:;
						{
							FBSTRING* vr$214 = HFINDLIB( (uint8*)"crt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$214, -1, 0 );
						}
						goto label$274;
						label$277:;
						{
							FBSTRING* vr$216 = HFINDLIB( (uint8*)"crt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$216, -1, 0 );
						}
						goto label$274;
						label$275:;
						static const void* tmp$723[3] = {
							&&label$276,
							&&label$277,
							&&label$276,
						};
						if( (TMP$186$6 - 8u) > 2u ) goto label$277;
						goto *tmp$723[TMP$186$6 - 8u];
						label$274:;
					}
				}
				label$268:;
			}
			label$267:;
			label$266:;
			int32 vr$218 = FBGETOPTION( 3 );
			if( vr$218 == 9 ) goto label$279;
			{
				int32 vr$219 = FBGETOPTION( 3 );
				if( vr$219 == 8 ) goto label$281;
				{
					FBSTRING* vr$220 = HFINDLIB( (uint8*)"crti.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$220, -1, 0 );
				}
				label$281:;
				label$280:;
				int32 vr$222 = FBGETOPTION( 32 );
				if( vr$222 == 0 ) goto label$283;
				{
					FBSTRING* vr$223 = HFINDLIB( (uint8*)"crtbeginS.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$223, -1, 0 );
				}
				goto label$282;
				label$283:;
				{
					FBSTRING* vr$225 = HFINDLIB( (uint8*)"crtbegin.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$225, -1, 0 );
				}
				label$282:;
			}
			label$279:;
			label$278:;
		}
		goto label$250;
		label$284:;
		{
			FBSTRING* vr$227 = HFINDLIB( (uint8*)"crt0.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$227, -1, 0 );
		}
		goto label$250;
		label$251:;
		static const void* tmp$724[11] = {
			&&label$257,
			&&label$252,
			&&label$265,
			&&label$262,
			&&label$284,
			&&label$265,
			&&label$265,
			&&label$265,
			&&label$265,
			&&label$265,
			&&label$265,
		};
		if( TMP$177$2 > 10u ) goto label$250;
		goto *tmp$724[TMP$177$2 - 0u];
		label$250:;
	}
	if( *(int32*)((uint8*)&FBC$ + 2120) != 0 ) goto label$286;
	{
		int32 vr$229 = FBGETOPTION( 3 );
		if( vr$229 == 11 ) goto label$288;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22", 3, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2915), 261, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/", 2, 0 );
			int32 vr$234 = FBGETOPTION( 32 );
			if( vr$234 == 0 ) goto label$290;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"fbrt0pic.o", 11, 0 );
			}
			goto label$289;
			label$290:;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"fbrt0.o", 8, 0 );
			}
			label$289:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
		}
		label$288:;
		label$287:;
	}
	label$286:;
	label$285:;
	{
		FBSTRING* OBJFILE$2;
		void* vr$239 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
		OBJFILE$2 = (FBSTRING*)vr$239;
		label$291:;
		if( OBJFILE$2 == (FBSTRING*)0u ) goto label$292;
		{
			FBSTRING TMP$192$3;
			FBSTRING TMP$193$3;
			FBSTRING TMP$194$3;
			__builtin_memset( &TMP$192$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$192$3, (void*)" \x22", 3, (void*)OBJFILE$2, -1 );
			__builtin_memset( &TMP$193$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$193$3, (void*)vr$242, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$194$3, 0, 12 );
			FBSTRING* vr$249 = fb_StrConcat( &TMP$194$3, (void*)&LDCLINE$1, -1, (void*)vr$245, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$249, -1, 0 );
			void* vr$251 = LISTGETNEXT( (void*)OBJFILE$2 );
			OBJFILE$2 = (FBSTRING*)vr$251;
		}
		goto label$291;
		label$292:;
	}
	int32 vr$252 = FBGETOPTION( 3 );
	if( vr$252 == 9 ) goto label$294;
	{
		int32 vr$253 = FBGETOPTION( 3 );
		if( vr$253 == 11 ) goto label$296;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22-(\x22", 6, 0 );
		}
		label$296:;
		label$295:;
	}
	label$294:;
	label$293:;
	{
		FBSTRING* LIBFILE$2;
		void* vr$256 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 220) );
		LIBFILE$2 = (FBSTRING*)vr$256;
		label$297:;
		if( LIBFILE$2 == (FBSTRING*)0u ) goto label$298;
		{
			FBSTRING TMP$196$3;
			FBSTRING TMP$197$3;
			FBSTRING TMP$198$3;
			__builtin_memset( &TMP$196$3, 0, 12 );
			FBSTRING* vr$259 = fb_StrConcat( &TMP$196$3, (void*)" \x22", 3, (void*)LIBFILE$2, -1 );
			__builtin_memset( &TMP$197$3, 0, 12 );
			FBSTRING* vr$262 = fb_StrConcat( &TMP$197$3, (void*)vr$259, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$198$3, 0, 12 );
			FBSTRING* vr$266 = fb_StrConcat( &TMP$198$3, (void*)&LDCLINE$1, -1, (void*)vr$262, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$266, -1, 0 );
			void* vr$268 = LISTGETNEXT( (void*)LIBFILE$2 );
			LIBFILE$2 = (FBSTRING*)vr$268;
		}
		goto label$297;
		label$298:;
	}
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$270 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 340) );
		I$2 = (struct $11TSTRSETITEM*)vr$270;
		int32 CHECKDLLNAME$2;
		int32 vr$271 = FBGETOPTION( 0 );
		CHECKDLLNAME$2 = -(vr$271 == 2);
		label$299:;
		if( I$2 == (struct $11TSTRSETITEM*)0u ) goto label$300;
		{
			int32 TMP$199$3;
			if( CHECKDLLNAME$2 == 0 ) goto label$301;
			int32 vr$276 = fb_StrCompare( (void*)I$2, -1, (void*)&DLLNAME$1, -1 );
			TMP$199$3 = -(vr$276 != 0);
			goto label$1262;
			label$301:;
			TMP$199$3 = -1;
			label$1262:;
			if( TMP$199$3 == 0 ) goto label$303;
			{
				FBSTRING TMP$201$4;
				FBSTRING TMP$202$4;
				__builtin_memset( &TMP$201$4, 0, 12 );
				FBSTRING* vr$282 = fb_StrConcat( &TMP$201$4, (void*)" -l", 4, (void*)I$2, -1 );
				__builtin_memset( &TMP$202$4, 0, 12 );
				FBSTRING* vr$286 = fb_StrConcat( &TMP$202$4, (void*)&LDCLINE$1, -1, (void*)vr$282, -1 );
				fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$286, -1, 0 );
			}
			label$303:;
			label$302:;
			void* vr$288 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$288;
		}
		goto label$299;
		label$300:;
	}
	int32 vr$289 = FBGETOPTION( 3 );
	if( vr$289 == 9 ) goto label$305;
	{
		int32 vr$290 = FBGETOPTION( 3 );
		if( vr$290 == 11 ) goto label$307;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22-)\x22", 6, 0 );
		}
		goto label$306;
		label$307:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -lfb", 6, 0 );
		}
		label$306:;
	}
	label$305:;
	label$304:;
	{
		uint32 TMP$205$2;
		int32 vr$293 = FBGETOPTION( 3 );
		TMP$205$2 = (uint32)vr$293;
		goto label$309;
		label$310:;
		{
			int32 vr$294 = FBGETOPTION( 32 );
			if( vr$294 == 0 ) goto label$312;
			{
				FBSTRING* vr$295 = HFINDLIB( (uint8*)"crtendS.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$295, -1, 0 );
			}
			goto label$311;
			label$312:;
			{
				FBSTRING* vr$297 = HFINDLIB( (uint8*)"crtend.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$297, -1, 0 );
			}
			label$311:;
			int32 vr$299 = FBGETOPTION( 3 );
			if( vr$299 == 8 ) goto label$314;
			{
				FBSTRING* vr$300 = HFINDLIB( (uint8*)"crtn.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$300, -1, 0 );
			}
			label$314:;
			label$313:;
		}
		goto label$308;
		label$315:;
		{
			FBSTRING* vr$302 = HFINDLIB( (uint8*)"crtend.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$302, -1, 0 );
		}
		goto label$308;
		label$309:;
		static const void* tmp$725[11] = {
			&&label$315,
			&&label$308,
			&&label$310,
			&&label$308,
			&&label$308,
			&&label$310,
			&&label$310,
			&&label$310,
			&&label$310,
			&&label$308,
			&&label$310,
		};
		if( TMP$205$2 > 10u ) goto label$308;
		goto *tmp$725[TMP$205$2 - 0u];
		label$308:;
	}
	int32 vr$304 = FBGETOPTION( 3 );
	if( vr$304 != 9 ) goto label$317;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -macosx_version_min 10.6", 26, 0 );
	}
	label$317:;
	label$316:;
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" ", 2, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 1474), 128, 0 );
	$6TMP$23 LD$1;
	LD$1 = 2;
	int32 vr$309 = FBGETOPTION( 3 );
	if( vr$309 != 11 ) goto label$319;
	{
		LD$1 = 12;
	}
	label$319:;
	label$318:;
	int32 vr$311 = FBCRUNBIN( (uint8*)"linking", LD$1, &LDCLINE$1 );
	if( vr$311 != 0 ) goto label$321;
	{
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$165;
	}
	label$321:;
	label$320:;
	{
		uint32 TMP$211$2;
		int32 vr$315 = FBGETOPTION( 3 );
		TMP$211$2 = (uint32)vr$315;
		goto label$323;
		label$324:;
		{
			int32 TMP$212$3;
			int32 F$3;
			int32 vr$316 = fb_FileFree(  );
			F$3 = vr$316;
			FBSTRING* vr$318 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 428) );
			int32 vr$319 = fb_FileOpen( (FBSTRING*)vr$318, 0u, 3u, 0u, F$3, 0 );
			if( vr$319 == 0 ) goto label$326;
			{
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$165;
			}
			label$326:;
			label$325:;
			int32 vr$323 = FBGETOPTION( 33 );
			TMP$212$3 = vr$323;
			int32 vr$325 = fb_FilePut( F$3, 533, (void*)&TMP$212$3, 4u );
			if( vr$325 == 0 ) goto label$327;
			void* vr$326 = fb_ErrorThrowAt( 1083, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
			goto *vr$326;
			label$327:;
			int32 vr$327 = fb_FileClose( F$3 );
			if( vr$327 == 0 ) goto label$328;
			void* vr$328 = fb_ErrorThrowAt( 1085, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
			goto *vr$328;
			label$328:;
		}
		goto label$322;
		label$329:;
		{
			int32 vr$329 = FBGETOPTION( 0 );
			if( vr$329 != 2 ) goto label$331;
			{
				int32 vr$332 = MAKEIMPLIB( &DLLNAME$1, &DEFFILE$1 );
				if( vr$332 != 0 ) goto label$333;
				{
					fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
					fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
					fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
					goto label$165;
				}
				label$333:;
				label$332:;
			}
			label$331:;
			label$330:;
		}
		goto label$322;
		label$334:;
		{
			FBSTRING TMP$224$3;
			int32 TMP$229$3;
			FBSTRING TMP$230$3;
			FBSTRING TMP$231$3;
			FBSTRING CXBEPATH$3;
			__builtin_memset( &CXBEPATH$3, 0, 12 );
			FBSTRING CXBECLINE$3;
			__builtin_memset( &CXBECLINE$3, 0, 12 );
			int32 RES$3;
			int32 vr$339 = fb_StrLen( (void*)((uint8*)&FBC$ + 1988), 129 );
			if( vr$339 != 0 ) goto label$336;
			{
				FBSTRING TMP$213$4;
				__builtin_memset( &TMP$213$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$213$4, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
				FBSTRING* vr$344 = HSTRIPEXT( &TMP$213$4 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1988), 129, (void*)vr$344, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$213$4 );
			}
			label$336:;
			label$335:;
			fb_StrAssign( (void*)&CXBECLINE$3, -1, (void*)"-TITLE:\x22", 9, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)((uint8*)&FBC$ + 1988), 129, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22 ", 3, 0 );
			int32 vr$351 = FBGETOPTION( 13 );
			if( vr$351 == 0 ) goto label$338;
			{
				FBSTRING TMP$219$4;
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"-DUMPINFO:\x22", 12, 0 );
				__builtin_memset( &TMP$219$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$219$4, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
				FBSTRING* vr$357 = HSTRIPEXT( &TMP$219$4 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)vr$357, -1, 0 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)".cxbe\x22", 7, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$219$4 );
			}
			label$338:;
			label$337:;
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" -OUT:\x22", 8, 0 );
			__builtin_memset( &TMP$224$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$224$3, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
			FBSTRING* vr$366 = HSTRIPEXT( &TMP$224$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)vr$366, -1, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)".xbe", 5, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22", 2, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$224$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" \x22", 3, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)((uint8*)&FBC$ + 428), 261, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22", 2, 0 );
			if( *(int32*)((uint8*)&FBC$ + 56) != 0 ) goto label$340;
			{
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" >nul", 6, 0 );
			}
			label$340:;
			label$339:;
			if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$342;
			{
				FBSTRING* vr$376 = fb_StrAllocTempDescZEx( (uint8*)"cxbe: ", 6 );
				fb_PrintString( 0, (FBSTRING*)vr$376, 2 );
				fb_PrintString( 0, (FBSTRING*)&CXBECLINE$3, 1 );
			}
			label$342:;
			label$341:;
			TMP$229$3 = 0;
			FBCFINDBIN( 8, &CXBEPATH$3, &TMP$229$3 );
			__builtin_memset( &TMP$230$3, 0, 12 );
			FBSTRING* vr$384 = fb_StrConcat( &TMP$230$3, (void*)&CXBEPATH$3, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$231$3, 0, 12 );
			FBSTRING* vr$387 = fb_StrConcat( &TMP$231$3, (void*)vr$384, -1, (void*)&CXBECLINE$3, -1 );
			int32 vr$388 = fb_Shell( (FBSTRING*)vr$387 );
			RES$3 = vr$388;
			if( RES$3 == 0 ) goto label$344;
			{
				if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$346;
				{
					FBSTRING TMP$233$5;
					FBSTRING* vr$389 = fb_IntToStr( RES$3 );
					__builtin_memset( &TMP$233$5, 0, 12 );
					FBSTRING* vr$392 = fb_StrConcat( &TMP$233$5, (void*)"cxbe failed: exit code ", 24, (void*)vr$389, -1 );
					fb_PrintString( 0, (FBSTRING*)vr$392, 1 );
				}
				label$346:;
				label$345:;
				fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
				fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$165;
			}
			label$344:;
			label$343:;
			FBSTRING* vr$399 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 428) );
			fb_FileKill( (FBSTRING*)vr$399 );
			fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
			fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
		}
		goto label$322;
		label$323:;
		static const void* tmp$726[5] = {
			&&label$329,
			&&label$329,
			&&label$322,
			&&label$324,
			&&label$334,
		};
		if( TMP$211$2 > 4u ) goto label$322;
		goto *tmp$726[TMP$211$2 - 0u];
		label$322:;
	}
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
	fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
	fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
	label$165:;
	return fb$result$1;
}

static void HREADOBJINFO( void )
{
	label$347:;
	FBSTRING DAT$1;
	__builtin_memset( &DAT$1, 0, 12 );
	int32 LANG$1;
	label$349:;
	{
		{
			uint32 TMP$234$3;
			int32 vr$2 = OBJINFOREADNEXT( &DAT$1 );
			TMP$234$3 = (uint32)vr$2;
			goto label$353;
			label$354:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), &DAT$1, 0 );
			}
			goto label$352;
			label$355:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 384), &DAT$1, 0 );
			}
			goto label$352;
			label$356:;
			{
				if( *(int32*)((uint8*)&FBC$ + 3180) != 0 ) goto label$358;
				{
					uint8* vr$7 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 20, (uint8*)vr$7, -1, 1, (uint8*)0u );
					*(int32*)((uint8*)&FBC$ + 3180) = -1;
					FBSETOPTION( 30, -1 );
				}
				label$358:;
				label$357:;
			}
			goto label$352;
			label$359:;
			{
				FBSETOPTION( 31, -1 );
			}
			goto label$352;
			label$360:;
			{
				$7FB_LANG vr$8 = FBGETLANGID( (uint8*)*(uint8**)&DAT$1 );
				LANG$1 = vr$8;
				if( LANG$1 != -1 ) goto label$362;
				{
					LANG$1 = 0;
				}
				label$362:;
				label$361:;
				if( LANG$1 == *(int32*)((uint8*)&FBC$ + 3176) ) goto label$364;
				{
					uint8* vr$9 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 21, (uint8*)vr$9, -1, 1, (uint8*)0u );
					*($7FB_LANG*)((uint8*)&FBC$ + 3176) = LANG$1;
					FBSETOPTION( 10, LANG$1 );
				}
				label$364:;
				label$363:;
			}
			goto label$352;
			label$365:;
			{
				goto label$350;
			}
			goto label$352;
			label$353:;
			static const void* tmp$727[5] = {
				&&label$354,
				&&label$355,
				&&label$356,
				&&label$359,
				&&label$360,
			};
			if( TMP$234$3 > 4u ) goto label$365;
			goto *tmp$727[TMP$234$3 - 0u];
			label$352:;
		}
	}
	label$351:;
	goto label$349;
	label$350:;
	OBJINFOREADEND(  );
	fb_StrDelete( (FBSTRING*)&DAT$1 );
	label$348:;
}

static void HCOLLECTOBJINFO( void )
{
	label$366:;
	FBSTRING* S$1;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
	S$1 = (FBSTRING*)vr$1;
	label$368:;
	if( S$1 == (FBSTRING*)0u ) goto label$369;
	{
		OBJINFOREADOBJ( S$1 );
		HREADOBJINFO(  );
		void* vr$2 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$2;
	}
	goto label$368;
	label$369:;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 340) );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$370:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$371;
	{
		if( *(int32*)((uint8*)I$1 + 12) != 0 ) goto label$373;
		{
			OBJINFOREADLIB( (FBSTRING*)I$1, (struct $5TLIST*)((uint8*)&FBC$ + 384) );
			HREADOBJINFO(  );
		}
		label$373:;
		label$372:;
		void* vr$9 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$9;
	}
	goto label$370;
	label$371:;
	void* vr$11 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 220) );
	S$1 = (FBSTRING*)vr$11;
	label$374:;
	if( S$1 == (FBSTRING*)0u ) goto label$375;
	{
		OBJINFOREADLIBFILE( S$1 );
		HREADOBJINFO(  );
		void* vr$12 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$12;
	}
	goto label$374;
	label$375:;
	label$367:;
}

static void HFATALINVALIDOPTION( FBSTRING* ARG$1 )
{
	FBSTRING TMP$235$1;
	FBSTRING TMP$236$1;
	FBSTRING TMP$237$1;
	label$376:;
	__builtin_memset( &TMP$237$1, 0, 12 );
	__builtin_memset( &TMP$235$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$235$1, (void*)"\x22", 2, (void*)ARG$1, -1 );
	__builtin_memset( &TMP$236$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$236$1, (void*)vr$3, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$237$1, -1, (void*)vr$6, -1, 0 );
	ERRREPORTEX( 81, (uint8*)*(uint8**)&TMP$237$1, -1, 1, (uint8*)0u );
	fb_StrDelete( (FBSTRING*)&TMP$237$1 );
	FBCEND( 1 );
	label$377:;
}

static void HCHECKWAITINGOBJFILE( void )
{
	label$378:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 8), -1 );
	if( vr$1 <= 0 ) goto label$381;
	{
		FBSTRING TMP$238$2;
		FBSTRING TMP$239$2;
		__builtin_memset( &TMP$239$2, 0, 12 );
		__builtin_memset( &TMP$238$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$238$2, (void*)"-o ", 4, (void*)((uint8*)&FBC$ + 8), -1 );
		fb_StrAssign( (void*)&TMP$239$2, -1, (void*)vr$6, -1, 0 );
		ERRREPORTEX( 292, (uint8*)*(uint8**)&TMP$239$2, -1, 1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&TMP$239$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)"", 1, 0 );
	}
	label$381:;
	label$380:;
	label$379:;
}

static void HSETIOFILE( struct $9FBCIOFILE* MODULE$1, FBSTRING* SRCFILE$1, int32 IS_RC$1 )
{
	label$382:;
	fb_StrAssign( (void*)MODULE$1, -1, (void*)SRCFILE$1, -1, 0 );
	int32 vr$3 = fb_StrLen( (void*)((uint8*)&FBC$ + 8), -1 );
	if( vr$3 != 0 ) goto label$385;
	{
		*(int32*)((uint8*)MODULE$1 + 16) = 0;
		if( IS_RC$1 == 0 ) goto label$387;
		{
			FBSTRING TMP$241$3;
			__builtin_memset( &TMP$241$3, 0, 12 );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$241$3, (void*)SRCFILE$1, -1, (void*)".o", 3 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)vr$7, -1, 0 );
		}
		goto label$386;
		label$387:;
		{
			FBSTRING TMP$242$3;
			FBSTRING* vr$9 = HSTRIPEXT( SRCFILE$1 );
			__builtin_memset( &TMP$242$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$242$3, (void*)vr$9, -1, (void*)".o", 3 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)vr$12, -1, 0 );
		}
		label$386:;
		*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) = MODULE$1;
	}
	goto label$384;
	label$385:;
	{
		*(int32*)((uint8*)MODULE$1 + 16) = -1;
	}
	label$384:;
	FBSTRING* vr$16 = FBCADDOBJ( (FBSTRING*)((uint8*)&FBC$ + 8) );
	*(FBSTRING**)((uint8*)MODULE$1 + 12) = vr$16;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)"", 1, 0 );
	label$383:;
}

static void HADDBAS( FBSTRING* BASFILE$1 )
{
	label$388:;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	HSETIOFILE( (struct $9FBCIOFILE*)vr$1, BASFILE$1, 0 );
	label$389:;
}

static void HPARSEGNUTRIPLET( FBSTRING* ARG$1, int32 SEPARATOR$1, int32* OS$1, int32* CPUTYPE$1 )
{
	label$390:;
	{
		int32 I$2;
		I$2 = 0;
		label$395:;
		{
			FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)GNUOSMAP$ + (I$2 << (3 & 31))) );
			int32 vr$2 = fb_StrInstr( 1, (FBSTRING*)ARG$1, (FBSTRING*)vr$1 );
			if( vr$2 <= 0 ) goto label$397;
			{
				*OS$1 = *(int32*)(((uint8*)GNUOSMAP$ + (I$2 << (3 & 31))) + 4);
				goto label$394;
			}
			label$397:;
			label$396:;
		}
		label$393:;
		I$2 = I$2 + 1;
		label$392:;
		if( I$2 <= 10 ) goto label$395;
		label$394:;
	}
	if( SEPARATOR$1 <= 0 ) goto label$399;
	{
		FBSTRING ARCH$2;
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)ARG$1, SEPARATOR$1 + -1 );
		fb_StrInit( (void*)&ARCH$2, -1, (void*)vr$7, -1, 0 );
		{
			int32 I$3;
			I$3 = 0;
			label$403:;
			{
				int32 vr$11 = fb_StrCompare( (void*)&ARCH$2, -1, *(void**)((uint8*)GNUARCHMAP$ + (I$3 << (3 & 31))), 0 );
				if( vr$11 != 0 ) goto label$405;
				{
					*CPUTYPE$1 = *(int32*)(((uint8*)GNUARCHMAP$ + (I$3 << (3 & 31))) + 4);
					goto label$402;
				}
				label$405:;
				label$404:;
			}
			label$401:;
			I$3 = I$3 + 1;
			label$400:;
			if( I$3 <= 12 ) goto label$403;
			label$402:;
		}
		fb_StrDelete( (FBSTRING*)&ARCH$2 );
	}
	label$399:;
	label$398:;
	label$391:;
}

static void HPARSETARGETARG( FBSTRING* ARG$1, int32* OS$1, int32* CPUTYPE$1, int32* IS_GNU_TRIPLET$1 )
{
	label$406:;
	*OS$1 = -1;
	*CPUTYPE$1 = -1;
	*IS_GNU_TRIPLET$1 = 0;
	FBSTRING LCASEARG$1;
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
	fb_StrInit( (void*)&LCASEARG$1, -1, (void*)vr$3, -1, 0 );
	{
		int32 I$2;
		I$2 = 0;
		label$411:;
		{
			int32 vr$7 = fb_StrCompare( (void*)&LCASEARG$1, -1, *(void**)((uint8*)FBOSARCHMAP$ + (I$2 * 12)), 0 );
			if( vr$7 != 0 ) goto label$413;
			{
				*OS$1 = *(int32*)(((uint8*)FBOSARCHMAP$ + (I$2 * 12)) + 4);
				*CPUTYPE$1 = *(int32*)(((uint8*)FBOSARCHMAP$ + (I$2 * 12)) + 8);
				fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
				goto label$407;
			}
			label$413:;
			label$412:;
		}
		label$409:;
		I$2 = I$2 + 1;
		label$408:;
		if( I$2 <= 11 ) goto label$411;
		label$410:;
	}
	int32 SEPARATOR$1;
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"-", 1 );
	int32 vr$15 = fb_StrInstr( 1, (FBSTRING*)ARG$1, (FBSTRING*)vr$14 );
	SEPARATOR$1 = vr$15;
	if( SEPARATOR$1 <= 0 ) goto label$415;
	{
		FBSTRING TMP$274$2;
		FBSTRING TMP$275$2;
		__builtin_memset( &TMP$274$2, 0, 12 );
		FBSTRING* vr$19 = fb_LEFT( (FBSTRING*)&LCASEARG$1, SEPARATOR$1 + -1 );
		fb_StrAssign( (void*)&TMP$274$2, -1, (void*)vr$19, -1, 0 );
		int32 vr$22 = FBIDENTIFYOS( &TMP$274$2 );
		*OS$1 = vr$22;
		fb_StrDelete( (FBSTRING*)&TMP$274$2 );
		__builtin_memset( &TMP$275$2, 0, 12 );
		int32 vr$27 = fb_StrLen( (void*)&LCASEARG$1, -1 );
		FBSTRING* vr$30 = fb_RIGHT( (FBSTRING*)&LCASEARG$1, vr$27 - SEPARATOR$1 );
		fb_StrAssign( (void*)&TMP$275$2, -1, (void*)vr$30, -1, 0 );
		int32 vr$33 = FBCPUTYPEFROMCPUFAMILYID( &TMP$275$2 );
		*CPUTYPE$1 = vr$33;
		fb_StrDelete( (FBSTRING*)&TMP$275$2 );
	}
	label$415:;
	label$414:;
	if( (-(*OS$1 < 0) & -(*CPUTYPE$1 < 0)) == 0 ) goto label$417;
	{
		HPARSEGNUTRIPLET( ARG$1, SEPARATOR$1, OS$1, CPUTYPE$1 );
		*IS_GNU_TRIPLET$1 = -1;
	}
	label$417:;
	label$416:;
	fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
	label$407:;
}

static void HANDLEOPT( int32 OPTID$1, FBSTRING* ARG$1 )
{
	label$418:;
	{
		uint32 TMP$278$2;
		TMP$278$2 = (uint32)OPTID$1;
		goto label$421;
		label$422:;
		{
			FBCADDOBJ( ARG$1 );
		}
		goto label$420;
		label$423:;
		{
			int32 vr$0 = fb_StrCompare( (void*)ARG$1, -1, (void*)"native", 7 );
			*(int32*)((uint8*)&FBC$ + 28) = -(vr$0 == 0);
			int32 vr$2 = FBIDENTIFYFBCARCH( ARG$1 );
			*(int32*)((uint8*)&FBC$ + 24) = vr$2;
			if( *(int32*)((uint8*)&FBC$ + 24) >= 0 ) goto label$425;
			{
				FBSTRING TMP$281$4;
				FBSTRING TMP$282$4;
				__builtin_memset( &TMP$282$4, 0, 12 );
				__builtin_memset( &TMP$281$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$281$4, (void*)"-arch ", 7, (void*)ARG$1, -1 );
				fb_StrAssign( (void*)&TMP$282$4, -1, (void*)vr$6, -1, 0 );
				HFATALINVALIDOPTION( &TMP$282$4 );
				fb_StrDelete( (FBSTRING*)&TMP$282$4 );
			}
			label$425:;
			label$424:;
		}
		goto label$420;
		label$426:;
		{
			{
				FBSTRING TMP$283$4;
				fb_StrInit( (void*)&TMP$283$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$12 = fb_StrCompare( (void*)&TMP$283$4, -1, (void*)"att", 4 );
				if( vr$12 != 0 ) goto label$428;
				label$429:;
				{
					*(int32*)((uint8*)&FBC$ + 32) = 1;
				}
				goto label$427;
				label$428:;
				int32 vr$14 = fb_StrCompare( (void*)&TMP$283$4, -1, (void*)"intel", 6 );
				if( vr$14 != 0 ) goto label$430;
				label$431:;
				{
					*(int32*)((uint8*)&FBC$ + 32) = 0;
				}
				goto label$427;
				label$430:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$432:;
				label$427:;
				fb_StrDelete( (FBSTRING*)&TMP$283$4 );
			}
		}
		goto label$420;
		label$433:;
		{
			HADDBAS( ARG$1 );
		}
		goto label$420;
		label$434:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 52) = -1;
		}
		goto label$420;
		label$435:;
		{
			*(int32*)((uint8*)&FBC$ + 52) = -1;
		}
		goto label$420;
		label$436:;
		{
			FBADDPREDEFINE( ARG$1 );
		}
		goto label$420;
		label$437:;
		{
			FBSETOPTION( 0, 2 );
		}
		goto label$420;
		label$438:;
		{
			FBSETOPTION( 15, -1 );
		}
		goto label$420;
		label$439:;
		{
			FBSETOPTION( 20, -1 );
		}
		goto label$420;
		label$440:;
		{
			FBSETOPTION( 14, -1 );
		}
		goto label$420;
		label$441:;
		{
			FBSETOPTION( 12, -1 );
		}
		goto label$420;
		label$442:;
		{
			FBSETOPTION( 13, -1 );
		}
		goto label$420;
		label$443:;
		{
			FBSETOPTION( 18, -1 );
		}
		goto label$420;
		label$444:;
		{
			FBSETOPTION( 19, -1 );
		}
		goto label$420;
		label$445:;
		{
			FBSETOPTION( 15, -1 );
			FBSETOPTION( 16, -1 );
		}
		goto label$420;
		label$446:;
		{
			FBSETOPTION( 15, -1 );
			FBSETOPTION( 16, -1 );
			FBSETOPTION( 17, -1 );
			FBSETOPTION( 18, -1 );
			FBSETOPTION( 20, -1 );
			FBSETOPTION( 19, -1 );
		}
		goto label$420;
		label$447:;
		{
			FBSETOPTION( 28, -1 );
		}
		goto label$420;
		label$448:;
		{
			int32 VALUE$3;
			$7FB_LANG vr$17 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$17;
			if( VALUE$3 != -1 ) goto label$450;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$450:;
			label$449:;
			FBSETOPTION( 10, VALUE$3 );
			FBSETOPTION( 11, -1 );
			*($7FB_LANG*)((uint8*)&FBC$ + 3176) = VALUE$3;
		}
		goto label$420;
		label$451:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$286$4;
				FBSTRING* vr$18 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$286$4, -1, (void*)vr$18, -1, 0 );
				int32 vr$21 = fb_StrCompare( (void*)&TMP$286$4, -1, (void*)"PRECISE", 8 );
				if( vr$21 != 0 ) goto label$453;
				label$454:;
				{
					VALUE$3 = 0;
				}
				goto label$452;
				label$453:;
				int32 vr$23 = fb_StrCompare( (void*)&TMP$286$4, -1, (void*)"FAST", 5 );
				if( vr$23 != 0 ) goto label$455;
				label$456:;
				{
					VALUE$3 = 1;
				}
				goto label$452;
				label$455:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$457:;
				label$452:;
				fb_StrDelete( (FBSTRING*)&TMP$286$4 );
			}
			FBSETOPTION( 6, VALUE$3 );
		}
		goto label$420;
		label$458:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$289$4;
				FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$289$4, -1, (void*)vr$25, -1, 0 );
				int32 vr$28 = fb_StrCompare( (void*)&TMP$289$4, -1, (void*)"X87", 4 );
				if( vr$28 == 0 ) goto label$461;
				label$462:;
				int32 vr$30 = fb_StrCompare( (void*)&TMP$289$4, -1, (void*)"FPU", 4 );
				if( vr$30 != 0 ) goto label$460;
				label$461:;
				{
					VALUE$3 = 0;
				}
				goto label$459;
				label$460:;
				int32 vr$32 = fb_StrCompare( (void*)&TMP$289$4, -1, (void*)"SSE", 4 );
				if( vr$32 != 0 ) goto label$463;
				label$464:;
				{
					VALUE$3 = 1;
				}
				goto label$459;
				label$463:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$465:;
				label$459:;
				fb_StrDelete( (FBSTRING*)&TMP$289$4 );
			}
			FBSETOPTION( 5, VALUE$3 );
		}
		goto label$420;
		label$466:;
		{
			FBSETOPTION( 12, -1 );
			FBSETOPTION( 13, -1 );
			FBSETOPTION( 14, -1 );
		}
		goto label$420;
		label$467:;
		{
			{
				FBSTRING TMP$293$4;
				FBSTRING* vr$34 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$293$4, -1, (void*)vr$34, -1, 0 );
				int32 vr$37 = fb_StrCompare( (void*)&TMP$293$4, -1, (void*)"gas", 4 );
				if( vr$37 != 0 ) goto label$469;
				label$470:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 0;
				}
				goto label$468;
				label$469:;
				int32 vr$39 = fb_StrCompare( (void*)&TMP$293$4, -1, (void*)"gcc", 4 );
				if( vr$39 != 0 ) goto label$471;
				label$472:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 1;
				}
				goto label$468;
				label$471:;
				int32 vr$41 = fb_StrCompare( (void*)&TMP$293$4, -1, (void*)"llvm", 5 );
				if( vr$41 != 0 ) goto label$473;
				label$474:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 2;
				}
				goto label$468;
				label$473:;
				int32 vr$43 = fb_StrCompare( (void*)&TMP$293$4, -1, (void*)"gas64", 6 );
				if( vr$43 != 0 ) goto label$475;
				label$476:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 3;
				}
				goto label$468;
				label$475:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$477:;
				label$468:;
				fb_StrDelete( (FBSTRING*)&TMP$293$4 );
			}
		}
		goto label$420;
		label$478:;
		{
			*(int32*)((uint8*)&FBC$ + 64) = -1;
		}
		goto label$420;
		label$479:;
		{
			FBSTRING TMP$297$3;
			__builtin_memset( &TMP$297$3, 0, 12 );
			FBSTRING* vr$46 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$297$3, -1, (void*)vr$46, -1, 0 );
			FBADDINCLUDEPATH( &TMP$297$3 );
			fb_StrDelete( (FBSTRING*)&TMP$297$3 );
		}
		goto label$420;
		label$480:;
		{
			FBADDPREINCLUDE( ARG$1 );
		}
		goto label$420;
		label$481:;
		{
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 252), ARG$1, 0 );
		}
		goto label$420;
		label$482:;
		{
			int32 VALUE$3;
			$7FB_LANG vr$52 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$52;
			if( VALUE$3 != -1 ) goto label$484;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$484:;
			label$483:;
			FBSETOPTION( 10, VALUE$3 );
			*($7FB_LANG*)((uint8*)&FBC$ + 3176) = VALUE$3;
		}
		goto label$420;
		label$485:;
		{
			FBSETOPTION( 0, 1 );
		}
		goto label$420;
		label$486:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 689), 261, (void*)ARG$1, -1, 0 );
			*(int32*)((uint8*)&FBC$ + 952) = -1;
		}
		goto label$420;
		label$487:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 956), 261, (void*)ARG$1, -1, 0 );
		}
		goto label$420;
		label$488:;
		{
			int32 VALUE$3;
			int32 vr$55 = fb_StrCompare( (void*)ARG$1, -1, (void*)"inf", 4 );
			if( vr$55 != 0 ) goto label$490;
			{
				VALUE$3 = 2147483647;
			}
			goto label$489;
			label$490:;
			{
				int32 vr$56 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = vr$56;
				if( VALUE$3 > 0 ) goto label$492;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$492:;
				label$491:;
			}
			label$489:;
			FBSETOPTION( 24, VALUE$3 );
		}
		goto label$420;
		label$493:;
		{
			FBSETOPTION( 30, -1 );
			*(int32*)((uint8*)&FBC$ + 3180) = -1;
		}
		goto label$420;
		label$494:;
		{
			*(int32*)((uint8*)&FBC$ + 2120) = -1;
		}
		goto label$420;
		label$495:;
		{
			FBSETOPTION( 23, 0 );
		}
		goto label$420;
		label$496:;
		{
			FBSETOPTION( 34, 0 );
		}
		goto label$420;
		label$497:;
		{
			*(int32*)((uint8*)&FBC$ + 2128) = 0;
		}
		goto label$420;
		label$498:;
		{
			HCHECKWAITINGOBJFILE(  );
			if( *(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) == (struct $9FBCIOFILE*)0u ) goto label$500;
			{
				fb_StrAssign( *(void**)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) + 12), -1, (void*)ARG$1, -1, 0 );
				*(int32*)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) + 16) = -1;
			}
			goto label$499;
			label$500:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)ARG$1, -1, 0 );
			}
			label$499:;
		}
		goto label$420;
		label$501:;
		{
			int32 VALUE$3;
			int32 vr$60 = fb_StrCompare( (void*)ARG$1, -1, (void*)"max", 4 );
			if( vr$60 != 0 ) goto label$503;
			{
				VALUE$3 = 3;
			}
			goto label$502;
			label$503:;
			{
				int32 vr$61 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = vr$61;
				if( VALUE$3 >= 0 ) goto label$505;
				{
					VALUE$3 = 0;
				}
				goto label$504;
				label$505:;
				if( VALUE$3 <= 3 ) goto label$506;
				{
					VALUE$3 = 3;
				}
				label$506:;
				label$504:;
			}
			label$502:;
			FBSETOPTION( 8, VALUE$3 );
		}
		goto label$420;
		label$507:;
		{
			FBSTRING TMP$300$3;
			__builtin_memset( &TMP$300$3, 0, 12 );
			FBSTRING* vr$63 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$300$3, -1, (void*)vr$63, -1, 0 );
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 296), &TMP$300$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$300$3 );
		}
		goto label$420;
		label$508:;
		{
			FBSETOPTION( 32, -1 );
		}
		goto label$420;
		label$509:;
		{
			FBSETOPTION( 1, -1 );
			*(int32*)((uint8*)&FBC$ + 36) = -1;
		}
		goto label$420;
		label$510:;
		{
			FBSTRING* vr$68 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2132), 261, (void*)vr$68, -1, 0 );
			HREPLACESLASH( (uint8*)((uint8*)&FBC$ + 2132), 47 );
		}
		goto label$420;
		label$511:;
		{
			{
				FBSTRING TMP$301$4;
				fb_StrInit( (void*)&TMP$301$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$73 = fb_StrCompare( (void*)&TMP$301$4, -1, (void*)"host", 5 );
				if( vr$73 != 0 ) goto label$513;
				label$514:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 0;
				}
				goto label$512;
				label$513:;
				int32 vr$75 = fb_StrCompare( (void*)&TMP$301$4, -1, (void*)"target", 7 );
				if( vr$75 != 0 ) goto label$515;
				label$516:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 1;
				}
				goto label$512;
				label$515:;
				int32 vr$77 = fb_StrCompare( (void*)&TMP$301$4, -1, (void*)"x", 2 );
				if( vr$77 != 0 ) goto label$517;
				label$518:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 2;
				}
				goto label$512;
				label$517:;
				int32 vr$79 = fb_StrCompare( (void*)&TMP$301$4, -1, (void*)"fblibdir", 9 );
				if( vr$79 != 0 ) goto label$519;
				label$520:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 3;
				}
				goto label$512;
				label$519:;
				int32 vr$81 = fb_StrCompare( (void*)&TMP$301$4, -1, (void*)"sha-1", 6 );
				if( vr$81 != 0 ) goto label$521;
				label$522:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 4;
				}
				goto label$512;
				label$521:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$523:;
				label$512:;
				fb_StrDelete( (FBSTRING*)&TMP$301$4 );
			}
		}
		goto label$420;
		label$524:;
		{
			FBSETOPTION( 21, -1 );
		}
		goto label$420;
		label$525:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 36) = -1;
			*(int32*)((uint8*)&FBC$ + 40) = -1;
		}
		goto label$420;
		label$526:;
		{
			*(int32*)((uint8*)&FBC$ + 40) = -1;
		}
		goto label$420;
		label$527:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 44) = -1;
			*(int32*)((uint8*)&FBC$ + 48) = -1;
		}
		goto label$420;
		label$528:;
		{
			*(int32*)((uint8*)&FBC$ + 48) = -1;
		}
		goto label$420;
		label$529:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1217), 129, (void*)ARG$1, -1, 0 );
			{
				FBSTRING TMP$307$4;
				fb_StrInit( (void*)&TMP$307$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$86 = fb_StrCompare( (void*)&TMP$307$4, -1, (void*)"gui", 4 );
				if( vr$86 != 0 ) goto label$531;
				label$532:;
				{
					FBSETOPTION( 36, 1 );
				}
				label$531:;
				label$530:;
				fb_StrDelete( (FBSTRING*)&TMP$307$4 );
			}
		}
		goto label$420;
		label$533:;
		{
			FBSETOPTION( 35, -1 );
		}
		goto label$420;
		label$534:;
		{
			*(int32*)((uint8*)&FBC$ + 2124) = -1;
		}
		goto label$420;
		label$535:;
		{
			*(int32*)((uint8*)&FBC$ + 2128) = -1;
		}
		goto label$420;
		label$536:;
		{
			int32 vr$88 = fb_VALINT( (FBSTRING*)ARG$1 );
			FBSETOPTION( 33, vr$88 << (10 & 31) );
		}
		goto label$420;
		label$537:;
		{
			int32 OS$3;
			__builtin_memset( &OS$3, 0, 4 );
			int32 CPUTYPE$3;
			__builtin_memset( &CPUTYPE$3, 0, 4 );
			int32 IS_GNU_TRIPLET$3;
			__builtin_memset( &IS_GNU_TRIPLET$3, 0, 4 );
			HPARSETARGETARG( ARG$1, &OS$3, &CPUTYPE$3, &IS_GNU_TRIPLET$3 );
			if( (-(OS$3 < 0) | -(CPUTYPE$3 < 0)) == 0 ) goto label$539;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$539:;
			label$538:;
			FBSETOPTION( 3, OS$3 );
			FBSETOPTION( 4, CPUTYPE$3 );
			if( ((-(OS$3 != 2) | -(CPUTYPE$3 != 15)) | IS_GNU_TRIPLET$3) == 0 ) goto label$541;
			{
				FBSTRING TMP$308$4;
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1730), 129, (void*)ARG$1, -1, 0 );
				__builtin_memset( &TMP$308$4, 0, 12 );
				FBSTRING* vr$107 = fb_StrConcat( &TMP$308$4, (void*)((uint8*)&FBC$ + 1730), 129, (void*)"-", 2 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1859), 129, (void*)vr$107, -1, 0 );
			}
			label$541:;
			label$540:;
		}
		goto label$420;
		label$542:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1988), 129, (void*)ARG$1, -1, 0 );
		}
		goto label$420;
		label$543:;
		{
			*(int32*)((uint8*)&FBC$ + 56) = -1;
		}
		goto label$420;
		label$544:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$309$4;
				FBSTRING* vr$110 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$309$4, -1, (void*)vr$110, -1, 0 );
				int32 vr$113 = fb_StrCompare( (void*)&TMP$309$4, -1, (void*)"NONE", 5 );
				if( vr$113 == 0 ) goto label$547;
				label$548:;
				int32 vr$115 = fb_StrCompare( (void*)&TMP$309$4, -1, (void*)"0", 2 );
				if( vr$115 != 0 ) goto label$546;
				label$547:;
				{
					VALUE$3 = 0;
				}
				goto label$545;
				label$546:;
				int32 vr$117 = fb_StrCompare( (void*)&TMP$309$4, -1, (void*)"1", 2 );
				if( vr$117 != 0 ) goto label$549;
				label$550:;
				{
					VALUE$3 = 1;
				}
				goto label$545;
				label$549:;
				int32 vr$119 = fb_StrCompare( (void*)&TMP$309$4, -1, (void*)"2", 2 );
				if( vr$119 != 0 ) goto label$551;
				label$552:;
				{
					VALUE$3 = 2;
				}
				goto label$545;
				label$551:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$553:;
				label$545:;
				fb_StrDelete( (FBSTRING*)&TMP$309$4 );
			}
			FBSETOPTION( 7, VALUE$3 );
		}
		goto label$420;
		label$554:;
		{
			*(int32*)((uint8*)&FBC$ + 60) = -1;
		}
		goto label$420;
		label$555:;
		{
			int32 VALUE$3;
			VALUE$3 = -1;
			{
				FBSTRING TMP$312$4;
				fb_StrInit( (void*)&TMP$312$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$123 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"all", 4 );
				if( vr$123 != 0 ) goto label$557;
				label$558:;
				{
					VALUE$3 = 0;
				}
				goto label$556;
				label$557:;
				int32 vr$125 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"none", 5 );
				if( vr$125 != 0 ) goto label$559;
				label$560:;
				{
					VALUE$3 = 4;
				}
				goto label$556;
				label$559:;
				int32 vr$127 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"param", 6 );
				if( vr$127 != 0 ) goto label$561;
				label$562:;
				{
					int32 vr$128 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$128 | 2 );
				}
				goto label$556;
				label$561:;
				int32 vr$131 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"escape", 7 );
				if( vr$131 != 0 ) goto label$563;
				label$564:;
				{
					int32 vr$132 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$132 | 1 );
				}
				goto label$556;
				label$563:;
				int32 vr$135 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"next", 5 );
				if( vr$135 != 0 ) goto label$565;
				label$566:;
				{
					int32 vr$136 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$136 | 8 );
				}
				goto label$556;
				label$565:;
				int32 vr$139 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"signedness", 11 );
				if( vr$139 != 0 ) goto label$567;
				label$568:;
				{
					int32 vr$140 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$140 | 32 );
				}
				goto label$556;
				label$567:;
				int32 vr$143 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"constness", 10 );
				if( vr$143 != 0 ) goto label$569;
				label$570:;
				{
					int32 vr$144 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$144 | 128 );
					VALUE$3 = 0;
				}
				goto label$556;
				label$569:;
				int32 vr$147 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"funcptr", 8 );
				if( vr$147 != 0 ) goto label$571;
				label$572:;
				{
					int32 vr$148 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$148 | 64 );
					VALUE$3 = 0;
				}
				goto label$556;
				label$571:;
				int32 vr$151 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"suffix", 7 );
				if( vr$151 != 0 ) goto label$573;
				label$574:;
				{
					int32 vr$152 = FBGETOPTION( 25 );
					FBSETOPTION( 25, vr$152 | 256 );
				}
				goto label$556;
				label$573:;
				int32 vr$155 = fb_StrCompare( (void*)&TMP$312$4, -1, (void*)"pedantic", 9 );
				if( vr$155 != 0 ) goto label$575;
				label$576:;
				{
					FBSETOPTION( 25, -233 );
					if( VALUE$3 <= 1 ) goto label$578;
					{
						VALUE$3 = 1;
					}
					label$578:;
					label$577:;
				}
				goto label$556;
				label$575:;
				{
					int32 vr$156 = fb_VALINT( (FBSTRING*)ARG$1 );
					VALUE$3 = vr$156;
				}
				label$579:;
				label$556:;
				fb_StrDelete( (FBSTRING*)&TMP$312$4 );
			}
			if( VALUE$3 < 0 ) goto label$581;
			{
				FBSETOPTION( 22, VALUE$3 );
			}
			label$581:;
			label$580:;
		}
		goto label$420;
		label$582:;
		{
			FBSTRING TMP$323$3;
			FBSTRING TMP$324$3;
			FBSTRING TMP$325$3;
			FBSTRING* vr$159 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$323$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$323$3, (void*)" ", 2, (void*)vr$159, -1 );
			__builtin_memset( &TMP$324$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$324$3, (void*)vr$162, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$325$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$325$3, (void*)((uint8*)&FBC$ + 1346), 128, (void*)vr$165, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1346), 128, (void*)vr$169, -1, 0 );
		}
		goto label$420;
		label$583:;
		{
			FBSTRING TMP$326$3;
			FBSTRING TMP$327$3;
			FBSTRING TMP$328$3;
			FBSTRING* vr$172 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$326$3, 0, 12 );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$326$3, (void*)" ", 2, (void*)vr$172, -1 );
			__builtin_memset( &TMP$327$3, 0, 12 );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$327$3, (void*)vr$175, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$328$3, 0, 12 );
			FBSTRING* vr$182 = fb_StrConcat( &TMP$328$3, (void*)((uint8*)&FBC$ + 1602), 128, (void*)vr$178, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1602), 128, (void*)vr$182, -1, 0 );
		}
		goto label$420;
		label$584:;
		{
			FBSTRING TMP$329$3;
			FBSTRING TMP$330$3;
			FBSTRING TMP$331$3;
			FBSTRING* vr$185 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$329$3, 0, 12 );
			FBSTRING* vr$188 = fb_StrConcat( &TMP$329$3, (void*)" ", 2, (void*)vr$185, -1 );
			__builtin_memset( &TMP$330$3, 0, 12 );
			FBSTRING* vr$191 = fb_StrConcat( &TMP$330$3, (void*)vr$188, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$331$3, 0, 12 );
			FBSTRING* vr$195 = fb_StrConcat( &TMP$331$3, (void*)((uint8*)&FBC$ + 1474), 128, (void*)vr$191, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1474), 128, (void*)vr$195, -1, 0 );
		}
		goto label$420;
		label$585:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 428), 261, (void*)ARG$1, -1, 0 );
		}
		goto label$420;
		label$586:;
		{
			{
				FBSTRING TMP$332$4;
				FBSTRING* vr$198 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$332$4, -1, (void*)vr$198, -1, 0 );
				int32 vr$201 = fb_StrCompare( (void*)&TMP$332$4, -1, (void*)"gosub-setjmp", 13 );
				if( vr$201 != 0 ) goto label$588;
				label$589:;
				{
					FBSETOPTION( 26, -1 );
				}
				goto label$587;
				label$588:;
				int32 vr$203 = fb_StrCompare( (void*)&TMP$332$4, -1, (void*)"valist-as-ptr", 14 );
				if( vr$203 != 0 ) goto label$590;
				label$591:;
				{
					FBSETOPTION( 27, -1 );
				}
				goto label$587;
				label$590:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$592:;
				label$587:;
				fb_StrDelete( (FBSTRING*)&TMP$332$4 );
			}
		}
		goto label$420;
		label$421:;
		static const void* tmp$728[66] = {
			&&label$422,
			&&label$423,
			&&label$426,
			&&label$433,
			&&label$434,
			&&label$435,
			&&label$436,
			&&label$437,
			&&label$437,
			&&label$438,
			&&label$439,
			&&label$440,
			&&label$441,
			&&label$442,
			&&label$443,
			&&label$444,
			&&label$445,
			&&label$446,
			&&label$447,
			&&label$448,
			&&label$451,
			&&label$458,
			&&label$466,
			&&label$467,
			&&label$478,
			&&label$479,
			&&label$480,
			&&label$481,
			&&label$482,
			&&label$485,
			&&label$486,
			&&label$487,
			&&label$488,
			&&label$493,
			&&label$494,
			&&label$495,
			&&label$496,
			&&label$497,
			&&label$498,
			&&label$501,
			&&label$507,
			&&label$508,
			&&label$509,
			&&label$510,
			&&label$511,
			&&label$524,
			&&label$525,
			&&label$526,
			&&label$527,
			&&label$528,
			&&label$529,
			&&label$533,
			&&label$534,
			&&label$535,
			&&label$536,
			&&label$537,
			&&label$542,
			&&label$543,
			&&label$544,
			&&label$554,
			&&label$555,
			&&label$582,
			&&label$583,
			&&label$584,
			&&label$585,
			&&label$586,
		};
		if( TMP$278$2 > 65u ) goto label$420;
		goto *tmp$728[TMP$278$2 - 0u];
		label$420:;
	}
	label$419:;
}

static int32 PARSEOPTION( uint8* OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$593:;
	{
		uint32 TMP$335$2;
		TMP$335$2 = (uint32)*(uint8*)OPT$1;
		goto label$596;
		label$597:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$599;
			{
				fb$result$1 = 0;
				goto label$594;
			}
			label$599:;
			label$598:;
			int32 vr$5 = fb_StrCompare( (void*)OPT$1, 0, (void*)"arch", 5 );
			if( vr$5 != 0 ) goto label$601;
			{
				fb$result$1 = 1;
				goto label$594;
			}
			label$601:;
			label$600:;
			int32 vr$6 = fb_StrCompare( (void*)OPT$1, 0, (void*)"asm", 4 );
			if( vr$6 != 0 ) goto label$603;
			{
				fb$result$1 = 2;
				goto label$594;
			}
			label$603:;
			label$602:;
		}
		goto label$595;
		label$604:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$606;
			{
				fb$result$1 = 3;
				goto label$594;
			}
			label$606:;
			label$605:;
		}
		goto label$595;
		label$607:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$609;
			{
				fb$result$1 = 4;
				goto label$594;
			}
			label$609:;
			label$608:;
		}
		goto label$595;
		label$610:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$612;
			{
				fb$result$1 = 5;
				goto label$594;
			}
			label$612:;
			label$611:;
		}
		goto label$595;
		label$613:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$615;
			{
				fb$result$1 = 6;
				goto label$594;
			}
			label$615:;
			label$614:;
			int32 vr$15 = fb_StrCompare( (void*)OPT$1, 0, (void*)"dll", 4 );
			if( vr$15 != 0 ) goto label$617;
			{
				fb$result$1 = 7;
				goto label$594;
			}
			label$617:;
			label$616:;
			int32 vr$16 = fb_StrCompare( (void*)OPT$1, 0, (void*)"dylib", 6 );
			if( vr$16 != 0 ) goto label$619;
			{
				fb$result$1 = 8;
				goto label$594;
			}
			label$619:;
			label$618:;
		}
		goto label$595;
		label$620:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$622;
			{
				fb$result$1 = 9;
				goto label$594;
			}
			label$622:;
			label$621:;
			int32 vr$19 = fb_StrCompare( (void*)OPT$1, 0, (void*)"ex", 3 );
			if( vr$19 != 0 ) goto label$624;
			{
				fb$result$1 = 16;
				goto label$594;
			}
			label$624:;
			label$623:;
			int32 vr$20 = fb_StrCompare( (void*)OPT$1, 0, (void*)"earray", 7 );
			if( vr$20 != 0 ) goto label$626;
			{
				fb$result$1 = 10;
				goto label$594;
			}
			label$626:;
			label$625:;
			int32 vr$21 = fb_StrCompare( (void*)OPT$1, 0, (void*)"eassert", 8 );
			if( vr$21 != 0 ) goto label$628;
			{
				fb$result$1 = 11;
				goto label$594;
			}
			label$628:;
			label$627:;
			int32 vr$22 = fb_StrCompare( (void*)OPT$1, 0, (void*)"edebug", 7 );
			if( vr$22 != 0 ) goto label$630;
			{
				fb$result$1 = 12;
				goto label$594;
			}
			label$630:;
			label$629:;
			int32 vr$23 = fb_StrCompare( (void*)OPT$1, 0, (void*)"edebuginfo", 11 );
			if( vr$23 != 0 ) goto label$632;
			{
				fb$result$1 = 13;
				goto label$594;
			}
			label$632:;
			label$631:;
			int32 vr$24 = fb_StrCompare( (void*)OPT$1, 0, (void*)"elocation", 10 );
			if( vr$24 != 0 ) goto label$634;
			{
				fb$result$1 = 14;
				goto label$594;
			}
			label$634:;
			label$633:;
			int32 vr$25 = fb_StrCompare( (void*)OPT$1, 0, (void*)"enullptr", 9 );
			if( vr$25 != 0 ) goto label$636;
			{
				fb$result$1 = 15;
				goto label$594;
			}
			label$636:;
			label$635:;
			int32 vr$26 = fb_StrCompare( (void*)OPT$1, 0, (void*)"exx", 4 );
			if( vr$26 != 0 ) goto label$638;
			{
				fb$result$1 = 17;
				goto label$594;
			}
			label$638:;
			label$637:;
			int32 vr$27 = fb_StrCompare( (void*)OPT$1, 0, (void*)"export", 7 );
			if( vr$27 != 0 ) goto label$640;
			{
				fb$result$1 = 18;
				goto label$594;
			}
			label$640:;
			label$639:;
		}
		goto label$595;
		label$641:;
		{
			int32 vr$28 = fb_StrCompare( (void*)OPT$1, 0, (void*)"forcelang", 10 );
			if( vr$28 != 0 ) goto label$643;
			{
				fb$result$1 = 19;
				goto label$594;
			}
			label$643:;
			label$642:;
			int32 vr$29 = fb_StrCompare( (void*)OPT$1, 0, (void*)"fpmode", 7 );
			if( vr$29 != 0 ) goto label$645;
			{
				fb$result$1 = 20;
				goto label$594;
			}
			label$645:;
			label$644:;
			int32 vr$30 = fb_StrCompare( (void*)OPT$1, 0, (void*)"fpu", 4 );
			if( vr$30 != 0 ) goto label$647;
			{
				fb$result$1 = 21;
				goto label$594;
			}
			label$647:;
			label$646:;
		}
		goto label$595;
		label$648:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$650;
			{
				fb$result$1 = 22;
				goto label$594;
			}
			label$650:;
			label$649:;
			int32 vr$33 = fb_StrCompare( (void*)OPT$1, 0, (void*)"gen", 4 );
			if( vr$33 != 0 ) goto label$652;
			{
				fb$result$1 = 23;
				goto label$594;
			}
			label$652:;
			label$651:;
		}
		goto label$595;
		label$653:;
		{
			int32 vr$34 = fb_StrCompare( (void*)OPT$1, 0, (void*)"help", 5 );
			if( vr$34 != 0 ) goto label$655;
			{
				fb$result$1 = 24;
				goto label$594;
			}
			label$655:;
			label$654:;
		}
		goto label$595;
		label$656:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$658;
			{
				fb$result$1 = 25;
				goto label$594;
			}
			label$658:;
			label$657:;
			int32 vr$37 = fb_StrCompare( (void*)OPT$1, 0, (void*)"include", 8 );
			if( vr$37 != 0 ) goto label$660;
			{
				fb$result$1 = 26;
				goto label$594;
			}
			label$660:;
			label$659:;
		}
		goto label$595;
		label$661:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$663;
			{
				fb$result$1 = 27;
				goto label$594;
			}
			label$663:;
			label$662:;
			int32 vr$40 = fb_StrCompare( (void*)OPT$1, 0, (void*)"lang", 5 );
			if( vr$40 != 0 ) goto label$665;
			{
				fb$result$1 = 28;
				goto label$594;
			}
			label$665:;
			label$664:;
			int32 vr$41 = fb_StrCompare( (void*)OPT$1, 0, (void*)"lib", 4 );
			if( vr$41 != 0 ) goto label$667;
			{
				fb$result$1 = 29;
				goto label$594;
			}
			label$667:;
			label$666:;
		}
		goto label$595;
		label$668:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$670;
			{
				fb$result$1 = 30;
				goto label$594;
			}
			label$670:;
			label$669:;
			int32 vr$44 = fb_StrCompare( (void*)OPT$1, 0, (void*)"map", 4 );
			if( vr$44 != 0 ) goto label$672;
			{
				fb$result$1 = 31;
				goto label$594;
			}
			label$672:;
			label$671:;
			int32 vr$45 = fb_StrCompare( (void*)OPT$1, 0, (void*)"maxerr", 7 );
			if( vr$45 != 0 ) goto label$674;
			{
				fb$result$1 = 32;
				goto label$594;
			}
			label$674:;
			label$673:;
			int32 vr$46 = fb_StrCompare( (void*)OPT$1, 0, (void*)"mt", 3 );
			if( vr$46 != 0 ) goto label$676;
			{
				fb$result$1 = 33;
				goto label$594;
			}
			label$676:;
			label$675:;
		}
		goto label$595;
		label$677:;
		{
			int32 vr$47 = fb_StrCompare( (void*)OPT$1, 0, (void*)"noerrline", 10 );
			if( vr$47 != 0 ) goto label$679;
			{
				fb$result$1 = 35;
				goto label$594;
			}
			label$679:;
			label$678:;
			int32 vr$48 = fb_StrCompare( (void*)OPT$1, 0, (void*)"nodeflibs", 10 );
			if( vr$48 != 0 ) goto label$681;
			{
				fb$result$1 = 34;
				goto label$594;
			}
			label$681:;
			label$680:;
			int32 vr$49 = fb_StrCompare( (void*)OPT$1, 0, (void*)"noobjinfo", 10 );
			if( vr$49 != 0 ) goto label$683;
			{
				fb$result$1 = 36;
				goto label$594;
			}
			label$683:;
			label$682:;
			int32 vr$50 = fb_StrCompare( (void*)OPT$1, 0, (void*)"nostrip", 8 );
			if( vr$50 != 0 ) goto label$685;
			{
				fb$result$1 = 37;
				goto label$594;
			}
			label$685:;
			label$684:;
		}
		goto label$595;
		label$686:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$688;
			{
				fb$result$1 = 38;
				goto label$594;
			}
			label$688:;
			label$687:;
		}
		goto label$595;
		label$689:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$691;
			{
				fb$result$1 = 39;
				goto label$594;
			}
			label$691:;
			label$690:;
		}
		goto label$595;
		label$692:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$694;
			{
				fb$result$1 = 40;
				goto label$594;
			}
			label$694:;
			label$693:;
			int32 vr$57 = fb_StrCompare( (void*)OPT$1, 0, (void*)"pic", 4 );
			if( vr$57 != 0 ) goto label$696;
			{
				fb$result$1 = 41;
				goto label$594;
			}
			label$696:;
			label$695:;
			int32 vr$58 = fb_StrCompare( (void*)OPT$1, 0, (void*)"pp", 3 );
			if( vr$58 != 0 ) goto label$698;
			{
				fb$result$1 = 42;
				goto label$594;
			}
			label$698:;
			label$697:;
			int32 vr$59 = fb_StrCompare( (void*)OPT$1, 0, (void*)"prefix", 7 );
			if( vr$59 != 0 ) goto label$700;
			{
				fb$result$1 = 43;
				goto label$594;
			}
			label$700:;
			label$699:;
			int32 vr$60 = fb_StrCompare( (void*)OPT$1, 0, (void*)"print", 6 );
			if( vr$60 != 0 ) goto label$702;
			{
				fb$result$1 = 44;
				goto label$594;
			}
			label$702:;
			label$701:;
			int32 vr$61 = fb_StrCompare( (void*)OPT$1, 0, (void*)"profile", 8 );
			if( vr$61 != 0 ) goto label$704;
			{
				fb$result$1 = 45;
				goto label$594;
			}
			label$704:;
			label$703:;
		}
		goto label$595;
		label$705:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$707;
			{
				fb$result$1 = 46;
				goto label$594;
			}
			label$707:;
			label$706:;
			int32 vr$64 = fb_StrCompare( (void*)OPT$1, 0, (void*)"rr", 3 );
			if( vr$64 != 0 ) goto label$709;
			{
				fb$result$1 = 48;
				goto label$594;
			}
			label$709:;
			label$708:;
		}
		goto label$595;
		label$710:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$712;
			{
				fb$result$1 = 47;
				goto label$594;
			}
			label$712:;
			label$711:;
			int32 vr$67 = fb_StrCompare( (void*)OPT$1, 0, (void*)"RR", 3 );
			if( vr$67 != 0 ) goto label$714;
			{
				fb$result$1 = 49;
				goto label$594;
			}
			label$714:;
			label$713:;
		}
		goto label$595;
		label$715:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$717;
			{
				fb$result$1 = 50;
				goto label$594;
			}
			label$717:;
			label$716:;
			int32 vr$70 = fb_StrCompare( (void*)OPT$1, 0, (void*)"showincludes", 13 );
			if( vr$70 != 0 ) goto label$719;
			{
				fb$result$1 = 51;
				goto label$594;
			}
			label$719:;
			label$718:;
			int32 vr$71 = fb_StrCompare( (void*)OPT$1, 0, (void*)"static", 7 );
			if( vr$71 != 0 ) goto label$721;
			{
				fb$result$1 = 52;
				goto label$594;
			}
			label$721:;
			label$720:;
			int32 vr$72 = fb_StrCompare( (void*)OPT$1, 0, (void*)"strip", 6 );
			if( vr$72 != 0 ) goto label$723;
			{
				fb$result$1 = 53;
				goto label$594;
			}
			label$723:;
			label$722:;
		}
		goto label$595;
		label$724:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$726;
			{
				fb$result$1 = 54;
				goto label$594;
			}
			label$726:;
			label$725:;
			int32 vr$75 = fb_StrCompare( (void*)OPT$1, 0, (void*)"target", 7 );
			if( vr$75 != 0 ) goto label$728;
			{
				fb$result$1 = 55;
				goto label$594;
			}
			label$728:;
			label$727:;
			int32 vr$76 = fb_StrCompare( (void*)OPT$1, 0, (void*)"title", 6 );
			if( vr$76 != 0 ) goto label$730;
			{
				fb$result$1 = 56;
				goto label$594;
			}
			label$730:;
			label$729:;
		}
		goto label$595;
		label$731:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$733;
			{
				fb$result$1 = 57;
				goto label$594;
			}
			label$733:;
			label$732:;
			int32 vr$79 = fb_StrCompare( (void*)OPT$1, 0, (void*)"vec", 4 );
			if( vr$79 != 0 ) goto label$735;
			{
				fb$result$1 = 58;
				goto label$594;
			}
			label$735:;
			label$734:;
			int32 vr$80 = fb_StrCompare( (void*)OPT$1, 0, (void*)"version", 8 );
			if( vr$80 != 0 ) goto label$737;
			{
				fb$result$1 = 59;
				goto label$594;
			}
			label$737:;
			label$736:;
		}
		goto label$595;
		label$738:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$740;
			{
				fb$result$1 = 60;
				goto label$594;
			}
			label$740:;
			label$739:;
		}
		goto label$595;
		label$741:;
		{
			int32 vr$83 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wa", 3 );
			if( vr$83 != 0 ) goto label$743;
			{
				fb$result$1 = 61;
				goto label$594;
			}
			label$743:;
			label$742:;
			int32 vr$84 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wl", 3 );
			if( vr$84 != 0 ) goto label$745;
			{
				fb$result$1 = 63;
				goto label$594;
			}
			label$745:;
			label$744:;
			int32 vr$85 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wc", 3 );
			if( vr$85 != 0 ) goto label$747;
			{
				fb$result$1 = 62;
				goto label$594;
			}
			label$747:;
			label$746:;
		}
		goto label$595;
		label$748:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$750;
			{
				fb$result$1 = 64;
				goto label$594;
			}
			label$750:;
			label$749:;
		}
		goto label$595;
		label$751:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$753;
			{
				fb$result$1 = 65;
				goto label$594;
			}
			label$753:;
			label$752:;
		}
		goto label$595;
		label$754:;
		{
			int32 vr$90 = fb_StrCompare( (void*)OPT$1, 0, (void*)"-version", 9 );
			if( vr$90 != 0 ) goto label$756;
			{
				fb$result$1 = 59;
				goto label$594;
			}
			label$756:;
			label$755:;
			int32 vr$91 = fb_StrCompare( (void*)OPT$1, 0, (void*)"-help", 6 );
			if( vr$91 != 0 ) goto label$758;
			{
				fb$result$1 = 24;
				goto label$594;
			}
			label$758:;
			label$757:;
		}
		goto label$595;
		label$596:;
		static const void* tmp$729[78] = {
			&&label$754,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$610,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$689,
			&&label$595,
			&&label$595,
			&&label$710,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$741,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$595,
			&&label$597,
			&&label$604,
			&&label$607,
			&&label$613,
			&&label$620,
			&&label$641,
			&&label$648,
			&&label$653,
			&&label$656,
			&&label$595,
			&&label$595,
			&&label$661,
			&&label$668,
			&&label$677,
			&&label$686,
			&&label$692,
			&&label$595,
			&&label$705,
			&&label$715,
			&&label$724,
			&&label$595,
			&&label$731,
			&&label$738,
			&&label$748,
			&&label$595,
			&&label$751,
		};
		if( (TMP$335$2 - 45u) > 77u ) goto label$595;
		goto *tmp$729[TMP$335$2 - 45u];
		label$595:;
	}
	fb$result$1 = -1;
	goto label$594;
	label$594:;
	return fb$result$1;
}

static void HANDLEARG( FBSTRING* ARG$1 )
{
	label$759:;
	if( *(int32*)&FBC$ < 0 ) goto label$762;
	{
		int32 vr$0 = fb_StrLen( (void*)ARG$1, -1 );
		if( vr$0 != 0 ) goto label$764;
		{
			HFATALINVALIDOPTION( ARG$1 );
		}
		label$764:;
		label$763:;
		HANDLEOPT( *(int32*)&FBC$, ARG$1 );
		*(int32*)&FBC$ = -1;
		goto label$760;
	}
	label$762:;
	label$761:;
	int32 vr$1 = fb_StrLen( (void*)ARG$1, -1 );
	if( vr$1 != 0 ) goto label$766;
	{
		goto label$760;
	}
	label$766:;
	label$765:;
	{
		uint8 TMP$405$2;
		TMP$405$2 = *(uint8*)*(uint8**)ARG$1;
		if( (uint32)(int32)TMP$405$2 != 45u ) goto label$768;
		label$769:;
		{
			uint8* OPT$3;
			OPT$3 = (uint8*)((uint8*)*(uint8**)ARG$1 + 1);
			if( (int32)*(uint8*)OPT$3 != 0 ) goto label$771;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$771:;
			label$770:;
			int32 OPTID$3;
			int32 vr$9 = PARSEOPTION( OPT$3 );
			OPTID$3 = vr$9;
			if( OPTID$3 >= 0 ) goto label$773;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$773:;
			label$772:;
			if( *(int32*)((uint8*)OPTION_TAKES_ARGUMENT$ + (OPTID$3 << (2 & 31))) == 0 ) goto label$775;
			{
				*(int32*)&FBC$ = OPTID$3;
			}
			goto label$774;
			label$775:;
			{
				HANDLEOPT( OPTID$3, ARG$1 );
			}
			label$774:;
		}
		goto label$767;
		label$768:;
		if( (uint32)(int32)TMP$405$2 != 64u ) goto label$776;
		label$777:;
		{
			static int32 RECLEVEL$3 = 0;
			if( RECLEVEL$3 <= 128 ) goto label$779;
			{
				ERRREPORTEX( 27, (uint8*)*(uint8**)ARG$1, -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$779:;
			label$778:;
			int32 vr$13 = fb_StrLen( (void*)ARG$1, -1 );
			FBSTRING* vr$15 = fb_RIGHT( (FBSTRING*)ARG$1, vr$13 + -1 );
			fb_StrAssign( (void*)ARG$1, -1, (void*)vr$15, -1, 0 );
			int32 vr$16 = fb_StrLen( (void*)ARG$1, -1 );
			if( vr$16 != 0 ) goto label$781;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$781:;
			label$780:;
			RECLEVEL$3 = RECLEVEL$3 + 1;
			PARSEARGSFROMFILE( ARG$1 );
			RECLEVEL$3 = RECLEVEL$3 + -1;
		}
		goto label$767;
		label$776:;
		{
			FBSTRING EXT$3;
			FBSTRING* vr$20 = HGETFILEEXT( (uint8*)*(uint8**)ARG$1 );
			fb_StrInit( (void*)&EXT$3, -1, (void*)vr$20, -1, 0 );
			{
				int32 vr$23 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"bas", 4 );
				if( vr$23 != 0 ) goto label$784;
				label$785:;
				{
					HADDBAS( ARG$1 );
				}
				goto label$783;
				label$784:;
				int32 vr$25 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"o", 2 );
				if( vr$25 != 0 ) goto label$786;
				label$787:;
				{
					FBCADDOBJ( ARG$1 );
				}
				goto label$783;
				label$786:;
				int32 vr$27 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"a", 2 );
				if( vr$27 != 0 ) goto label$788;
				label$789:;
				{
					STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 220), ARG$1 );
				}
				goto label$783;
				label$788:;
				int32 vr$30 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"rc", 3 );
				if( vr$30 == 0 ) goto label$791;
				label$792:;
				int32 vr$32 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"res", 4 );
				if( vr$32 != 0 ) goto label$790;
				label$791:;
				{
					void* vr$34 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
					HSETIOFILE( (struct $9FBCIOFILE*)vr$34, ARG$1, -1 );
				}
				goto label$783;
				label$790:;
				int32 vr$36 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"xpm", 4 );
				if( vr$36 != 0 ) goto label$793;
				label$794:;
				{
					int32 vr$38 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
					if( vr$38 <= 0 ) goto label$796;
					{
						HFATALINVALIDOPTION( ARG$1 );
					}
					label$796:;
					label$795:;
					HSETIOFILE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136), ARG$1, -1 );
				}
				goto label$783;
				label$793:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$797:;
				label$783:;
			}
			fb_StrDelete( (FBSTRING*)&EXT$3 );
		}
		label$782:;
		label$767:;
	}
	label$760:;
}

static void PARSEARGSFROMFILE( FBSTRING* FILENAME$1 )
{
	label$798:;
	int32 F$1;
	int32 vr$0 = fb_FileFree(  );
	F$1 = vr$0;
	int32 vr$1 = fb_FileOpen( (FBSTRING*)FILENAME$1, 2u, 0u, 0u, F$1, 0 );
	if( vr$1 == 0 ) goto label$801;
	{
		ERRREPORTEX( 26, (uint8*)*(uint8**)FILENAME$1, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$801:;
	label$800:;
	FBSTRING ARGS$1;
	__builtin_memset( &ARGS$1, 0, 12 );
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 12 );
	label$802:;
	int32 vr$5 = fb_FileEof( F$1 );
	if( vr$5 != 0 ) goto label$803;
	{
		fb_FileLineInput( F$1, (void*)&ARGS$1, -1, 0 );
		FBSTRING* vr$8 = fb_TRIM( (FBSTRING*)&ARGS$1 );
		fb_StrAssign( (void*)&ARGS$1, -1, (void*)vr$8, -1, 0 );
		label$804:;
		{
			int32 LENGTH$3;
			int32 vr$11 = fb_StrLen( (void*)&ARGS$1, -1 );
			LENGTH$3 = vr$11;
			if( LENGTH$3 != 0 ) goto label$808;
			{
				goto label$805;
			}
			label$808:;
			label$807:;
			int32 I$3;
			I$3 = 0;
			int32 QUOTECH$3;
			QUOTECH$3 = 0;
			label$809:;
			if( I$3 >= LENGTH$3 ) goto label$810;
			{
				int32 CH$4;
				CH$4 = (int32)*(uint8*)((uint8*)*(uint8**)&ARGS$1 + I$3);
				{
					uint32 TMP$411$5;
					TMP$411$5 = (uint32)CH$4;
					goto label$812;
					label$813:;
					{
						if( QUOTECH$3 != 0 ) goto label$815;
						{
							goto label$810;
						}
						label$815:;
						label$814:;
					}
					goto label$811;
					label$816:;
					{
						if( QUOTECH$3 != CH$4 ) goto label$818;
						{
							QUOTECH$3 = 0;
						}
						goto label$817;
						label$818:;
						if( QUOTECH$3 != 0 ) goto label$819;
						{
							QUOTECH$3 = CH$4;
						}
						label$819:;
						label$817:;
					}
					goto label$811;
					label$812:;
					static const void* tmp$730[8] = {
						&&label$813,
						&&label$811,
						&&label$816,
						&&label$811,
						&&label$811,
						&&label$811,
						&&label$811,
						&&label$816,
					};
					if( (TMP$411$5 - 32u) > 7u ) goto label$811;
					goto *tmp$730[TMP$411$5 - 32u];
					label$811:;
				}
				I$3 = I$3 + 1;
			}
			goto label$809;
			label$810:;
			if( I$3 != 0 ) goto label$821;
			{
				I$3 = 1;
			}
			goto label$820;
			label$821:;
			{
				FBSTRING* vr$16 = fb_LEFT( (FBSTRING*)&ARGS$1, I$3 );
				fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$16, -1, 0 );
				FBSTRING* vr$19 = fb_TRIM( (FBSTRING*)&ARG$1 );
				fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$19, -1, 0 );
				FBSTRING* vr$22 = STRUNQUOTE( &ARG$1 );
				fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$22, -1, 0 );
				HANDLEARG( &ARG$1 );
			}
			label$820:;
			FBSTRING* vr$27 = fb_RIGHT( (FBSTRING*)&ARGS$1, LENGTH$3 - I$3 );
			fb_StrAssign( (void*)&ARGS$1, -1, (void*)vr$27, -1, 0 );
		}
		label$806:;
		goto label$804;
		label$805:;
	}
	goto label$802;
	label$803:;
	int32 vr$29 = fb_FileClose( F$1 );
	if( vr$29 == 0 ) goto label$822;
	void* vr$30 = fb_ErrorThrowAt( 2355, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$30;
	label$822:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$799:;
}

static int32 HTARGETNEEDSPIC( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$823:;
	fb$result$1 = 0;
	int32 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0 ) goto label$826;
	{
		{
			uint32 TMP$413$3;
			int32 vr$2 = FBGETOPTION( 3 );
			TMP$413$3 = (uint32)vr$2;
			goto label$828;
			label$829:;
			{
				fb$result$1 = -1;
			}
			goto label$827;
			label$828:;
			static const void* tmp$731[9] = {
				&&label$829,
				&&label$827,
				&&label$827,
				&&label$829,
				&&label$829,
				&&label$829,
				&&label$829,
				&&label$827,
				&&label$829,
			};
			if( (TMP$413$3 - 2u) > 8u ) goto label$827;
			goto *tmp$731[TMP$413$3 - 2u];
			label$827:;
		}
	}
	label$826:;
	label$825:;
	label$824:;
	return fb$result$1;
}

static void HPARSEARGS( int32 ARGC$1, uint8** ARGV$1 )
{
	label$830:;
	*(int32*)&FBC$ = -1;
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 12 );
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$414$2;
		TMP$414$2 = ARGC$1 + -1;
		goto label$832;
		label$835:;
		{
			fb_StrAssign( (void*)&ARG$1, -1, *(void**)((uint8*)ARGV$1 + (I$2 << (2 & 31))), 0, 0 );
			HANDLEARG( &ARG$1 );
		}
		label$833:;
		I$2 = I$2 + 1;
		label$832:;
		if( I$2 <= TMP$414$2 ) goto label$835;
		label$834:;
	}
	if( *(int32*)&FBC$ < 0 ) goto label$837;
	{
		FBSTRING TMP$415$2;
		__builtin_memset( &TMP$415$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$415$2, -1, *(void**)((uint8*)((uint8*)ARGV$1 + (ARGC$1 << (2 & 31))) + -4), 0, 0 );
		HFATALINVALIDOPTION( &TMP$415$2 );
		fb_StrDelete( (FBSTRING*)&TMP$415$2 );
	}
	label$837:;
	label$836:;
	HCHECKWAITINGOBJFILE(  );
	int32 vr$13 = FBGETOPTION( 5 );
	if( vr$13 != 0 ) goto label$839;
	{
		int32 vr$14 = FBGETOPTION( 7 );
		int32 vr$16 = FBGETOPTION( 6 );
		if( (-(vr$14 >= 1) | -(vr$16 == 1)) == 0 ) goto label$841;
		{
			ERRREPORTEX( 284, (uint8*)"", -1, 1, (uint8*)0u );
			FBCEND( 1 );
		}
		label$841:;
		label$840:;
	}
	label$839:;
	label$838:;
	if( *(int32*)((uint8*)&FBC$ + 24) < 0 ) goto label$843;
	{
		FBSETOPTION( 4, *(int32*)((uint8*)&FBC$ + 24) );
	}
	label$843:;
	label$842:;
	int32 vr$19 = FBGETOPTION( 3 );
	int32 vr$21 = FBGETCPUFAMILY(  );
	if( (-(vr$19 == 3) & -(vr$21 != 0)) == 0 ) goto label$845;
	{
		uint8* vr$24 = FBGETFBCARCH(  );
		ERRREPORTEX( 82, (uint8*)vr$24, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$845:;
	label$844:;
	int32 vr$25 = FBGETCPUFAMILY(  );
	if( vr$25 != 0 ) goto label$847;
	{
		FBSETOPTION( 2, 0 );
	}
	goto label$846;
	label$847:;
	{
		FBSETOPTION( 2, 1 );
	}
	label$846:;
	if( *(int32*)((uint8*)&FBC$ + 20) < 0 ) goto label$849;
	{
		FBSETOPTION( 2, *(int32*)((uint8*)&FBC$ + 20) );
	}
	label$849:;
	label$848:;
	int32 vr$26 = FBGETOPTION( 2 );
	int32 vr$28 = FBGETCPUFAMILY(  );
	int32 vr$31 = FBGETOPTION( 2 );
	int32 vr$33 = FBGETCPUFAMILY(  );
	if( ((-(vr$26 == 0) & -(vr$28 != 0)) | (-(vr$31 == 3) & -(vr$33 != 1))) == 0 ) goto label$851;
	{
		uint8* vr$37 = FBGETFBCARCH(  );
		ERRREPORTEX( 83, (uint8*)vr$37, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$851:;
	label$850:;
	{
		uint32 TMP$416$2;
		int32 vr$38 = FBGETOPTION( 3 );
		TMP$416$2 = (uint32)vr$38;
		goto label$853;
		label$854:;
		{
		}
		goto label$852;
		label$855:;
		{
			struct $9FBCIOFILE* RC$3;
			void* vr$40 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
			RC$3 = (struct $9FBCIOFILE*)vr$40;
			if( RC$3 == (struct $9FBCIOFILE*)0u ) goto label$857;
			{
				ERRREPORTEX( 291, (uint8*)*(uint8**)RC$3, -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$857:;
			label$856:;
		}
		goto label$852;
		label$853:;
		static const void* tmp$732[5] = {
			&&label$854,
			&&label$854,
			&&label$855,
			&&label$855,
			&&label$854,
		};
		if( TMP$416$2 > 4u ) goto label$855;
		goto *tmp$732[TMP$416$2 - 0u];
		label$852:;
	}
	{
		uint32 TMP$417$2;
		int32 vr$42 = FBGETOPTION( 3 );
		TMP$417$2 = (uint32)vr$42;
		goto label$859;
		label$860:;
		{
		}
		goto label$858;
		label$861:;
		{
			int32 vr$44 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
			if( vr$44 <= 0 ) goto label$863;
			{
				ERRREPORTEX( 291, (uint8*)*(uint8**)((uint8*)&FBC$ + 136), -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$863:;
			label$862:;
		}
		goto label$858;
		label$859:;
		static const void* tmp$733[9] = {
			&&label$860,
			&&label$861,
			&&label$861,
			&&label$860,
			&&label$860,
			&&label$860,
			&&label$860,
			&&label$860,
			&&label$860,
		};
		if( (TMP$417$2 - 2u) > 8u ) goto label$861;
		goto *tmp$733[TMP$417$2 - 2u];
		label$858:;
	}
	if( *(int32*)((uint8*)&FBC$ + 32) < 0 ) goto label$865;
	{
		{
			int32 TMP$418$3;
			int32 vr$45 = FBGETCPUFAMILY(  );
			TMP$418$3 = vr$45;
			if( TMP$418$3 == 0 ) goto label$868;
			label$869:;
			if( TMP$418$3 != 1 ) goto label$867;
			label$868:;
			{
			}
			goto label$866;
			label$867:;
			{
				FBSTRING TMP$419$4;
				__builtin_memset( &TMP$419$4, 0, 12 );
				FBSTRING* vr$47 = FBGETTARGETID(  );
				fb_StrAssign( (void*)&TMP$419$4, -1, (void*)vr$47, -1, 0 );
				ERRREPORTEX( 319, (uint8*)*(uint8**)&TMP$419$4, -1, 1, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$419$4 );
			}
			label$870:;
			label$866:;
		}
		int32 vr$50 = FBGETOPTION( 2 );
		int32 vr$52 = FBGETOPTION( 2 );
		if( ((-(vr$50 == 0) | -(vr$52 == 3)) & -(*(int32*)((uint8*)&FBC$ + 32) != 0)) == 0 ) goto label$872;
		{
			ERRREPORTEX( 84, (uint8*)"", -1, 1, (uint8*)0u );
		}
		label$872:;
		label$871:;
		FBSETOPTION( 9, *(int32*)((uint8*)&FBC$ + 32) );
	}
	label$865:;
	label$864:;
	int32 vr$57 = FBGETOPTION( 0 );
	if( vr$57 != 2 ) goto label$874;
	{
		int32 vr$58 = HTARGETNEEDSPIC(  );
		if( vr$58 == 0 ) goto label$876;
		{
			FBSETOPTION( 32, -1 );
		}
		label$876:;
		label$875:;
	}
	label$874:;
	label$873:;
	int32 vr$59 = FBGETOPTION( 32 );
	if( vr$59 == 0 ) goto label$878;
	{
		int32 vr$60 = FBGETOPTION( 0 );
		if( vr$60 != 0 ) goto label$880;
		{
			ERRREPORTEX( 85, (uint8*)"", -1, 1, (uint8*)0u );
		}
		goto label$879;
		label$880:;
		int32 vr$61 = HTARGETNEEDSPIC(  );
		if( vr$61 != 0 ) goto label$881;
		{
			ERRREPORTEX( 86, (uint8*)"", -1, 1, (uint8*)0u );
		}
		label$881:;
		label$879:;
	}
	label$878:;
	label$877:;
	FBSETOPTION( 33, -1 );
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	label$831:;
}

static void FBCDETERMINEPREFIX( void )
{
	label$882:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 2132), 261 );
	if( vr$1 != 0 ) goto label$885;
	{
		FBSTRING TMP$420$2;
		FBSTRING TMP$421$2;
		FBSTRING TMP$424$2;
		__builtin_memset( &TMP$420$2, 0, 12 );
		FBSTRING* vr$3 = fb_ExePath(  );
		fb_StrAssign( (void*)&TMP$420$2, -1, (void*)vr$3, -1, 0 );
		FBSTRING* vr$6 = PATHSTRIPDIV( &TMP$420$2 );
		__builtin_memset( &TMP$421$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$421$2, (void*)vr$6, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2132), 261, (void*)vr$9, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$420$2 );
		__builtin_memset( &TMP$424$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$424$2, (void*)((uint8*)&FBC$ + 2132), 261, (void*)"../", 4 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2132), 261, (void*)vr$15, -1, 0 );
	}
	goto label$884;
	label$885:;
	{
		FBSTRING TMP$425$2;
		__builtin_memset( &TMP$425$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$425$2, (void*)((uint8*)&FBC$ + 2132), 261, (void*)"/", 2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2132), 261, (void*)vr$20, -1, 0 );
	}
	label$884:;
	label$883:;
}

static void FBCSETUPCOMPILERPATHS( void )
{
	FBSTRING TMP$428$1;
	FBSTRING TMP$429$1;
	FBSTRING TMP$430$1;
	FBSTRING TMP$431$1;
	FBSTRING TMP$432$1;
	FBSTRING TMP$433$1;
	FBSTRING TMP$434$1;
	FBSTRING TMP$435$1;
	FBSTRING TMP$436$1;
	FBSTRING TMP$437$1;
	FBSTRING TMP$438$1;
	label$886:;
	FBSTRING TARGETID$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&TARGETID$1, -1, (void*)vr$0, -1, 0 );
	FBSTRING FBNAME$1;
	__builtin_memset( &FBNAME$1, 0, 12 );
	fb_StrAssign( (void*)&FBNAME$1, -1, (void*)"freebasic", 10, 0 );
	FBSTRING LIBDIRNAME$1;
	fb_StrInit( (void*)&LIBDIRNAME$1, -1, (void*)"lib", 4, 0 );
	__builtin_memset( &TMP$428$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$428$1, (void*)((uint8*)&FBC$ + 2132), 261, (void*)"bin", 4 );
	__builtin_memset( &TMP$429$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$429$1, (void*)vr$9, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$430$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$430$1, (void*)vr$12, -1, (void*)((uint8*)&FBC$ + 1859), 129 );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2393), 261, (void*)vr$15, -1, 0 );
	__builtin_memset( &TMP$431$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$431$1, (void*)((uint8*)&FBC$ + 2132), 261, (void*)"include", 8 );
	__builtin_memset( &TMP$432$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$432$1, (void*)vr$21, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$433$1, 0, 12 );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$433$1, (void*)vr$24, -1, (void*)&FBNAME$1, -1 );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2654), 261, (void*)vr$27, -1, 0 );
	__builtin_memset( &TMP$434$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$434$1, (void*)((uint8*)&FBC$ + 2132), 261, (void*)&LIBDIRNAME$1, -1 );
	__builtin_memset( &TMP$435$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$435$1, (void*)vr$35, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$436$1, 0, 12 );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$436$1, (void*)vr$38, -1, (void*)&FBNAME$1, -1 );
	__builtin_memset( &TMP$437$1, 0, 12 );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$437$1, (void*)vr$41, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$438$1, 0, 12 );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$438$1, (void*)vr$44, -1, (void*)&TARGETID$1, -1 );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2915), 261, (void*)vr$47, -1, 0 );
	fb_StrDelete( (FBSTRING*)&LIBDIRNAME$1 );
	fb_StrDelete( (FBSTRING*)&FBNAME$1 );
	fb_StrDelete( (FBSTRING*)&TARGETID$1 );
	label$887:;
}

static void FBCPRINTTARGETINFO( void )
{
	FBSTRING TMP$440$1;
	FBSTRING TMP$441$1;
	label$888:;
	FBSTRING S$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, -1, 0 );
	uint8* vr$2 = FBGETFBCARCH(  );
	__builtin_memset( &TMP$440$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$440$1, (void*)", ", 3, (void*)vr$2, 0 );
	__builtin_memset( &TMP$441$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$441$1, (void*)&S$1, -1, (void*)vr$5, -1 );
	fb_StrAssign( (void*)&S$1, -1, (void*)vr$9, -1, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)", ", 3, 0 );
	int32 vr$12 = FBGETBITS(  );
	FBSTRING* vr$13 = fb_IntToStr( vr$12 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$13, -1, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"bit", 4, 0 );
	int32 vr$17 = fb_StrLen( (void*)((uint8*)&FBC$ + 1730), 129 );
	if( vr$17 <= 0 ) goto label$891;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)" (", 3, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)((uint8*)&FBC$ + 1730), 129, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)")", 2, 0 );
	}
	label$891:;
	label$890:;
	FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"target:", 7 );
	fb_PrintString( 0, (FBSTRING*)vr$22, 2 );
	fb_PrintString( 0, (FBSTRING*)&S$1, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"backend:", 8 );
	fb_PrintString( 0, (FBSTRING*)vr$24, 2 );
	int32 vr$25 = FBGETOPTION( 2 );
	FBSTRING* vr$26 = FBGETBACKENDNAME( vr$25 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$889:;
}

static void FBCDETERMINEMAINNAME( void )
{
	label$892:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 689), 261 );
	if( vr$1 != 0 ) goto label$895;
	{
		FBSTRING TMP$448$2;
		struct $9FBCIOFILE* M$2;
		void* vr$3 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
		M$2 = (struct $9FBCIOFILE*)vr$3;
		if( M$2 == (struct $9FBCIOFILE*)0u ) goto label$897;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 689), 261, (void*)M$2, -1, 0 );
		}
		goto label$896;
		label$897:;
		{
			FBSTRING* OBJF$3;
			void* vr$8 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
			OBJF$3 = (FBSTRING*)vr$8;
			if( OBJF$3 == (FBSTRING*)0u ) goto label$899;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 689), 261, (void*)OBJF$3, -1, 0 );
			}
			goto label$898;
			label$899:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 689), 261, (void*)"unnamed", 8, 0 );
			}
			label$898:;
		}
		label$896:;
		__builtin_memset( &TMP$448$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$448$2, -1, (void*)((uint8*)&FBC$ + 689), 261, 0 );
		FBSTRING* vr$15 = HSTRIPEXT( &TMP$448$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 689), 261, (void*)vr$15, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$448$2 );
	}
	label$895:;
	label$894:;
	label$893:;
}

static FBSTRING* HGETASMNAME( struct $9FBCIOFILE* MODULE$1, int32 STAGE$1 )
{
	FBSTRING TMP$454$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$900:;
	uint8* EXT$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING* vr$3 = HSTRIPEXT( *(FBSTRING**)((uint8*)MODULE$1 + 12) );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$5 = FBGETOPTION( 3 );
	if( vr$5 == 11 ) goto label$903;
	{
		EXT$1 = (uint8*)".asm";
	}
	goto label$902;
	label$903:;
	{
		EXT$1 = (uint8*)".o";
	}
	label$902:;
	int32 vr$6 = FBGETOPTION( 2 );
	if( vr$6 != 3 ) goto label$905;
	{
		EXT$1 = (uint8*)".a64";
	}
	label$905:;
	label$904:;
	if( STAGE$1 != 1 ) goto label$907;
	{
		{
			int32 TMP$451$3;
			int32 vr$7 = FBGETOPTION( 2 );
			TMP$451$3 = vr$7;
			if( TMP$451$3 != 1 ) goto label$909;
			label$910:;
			{
				EXT$1 = (uint8*)".c";
			}
			goto label$908;
			label$909:;
			if( TMP$451$3 != 2 ) goto label$911;
			label$912:;
			{
				EXT$1 = (uint8*)".ll";
			}
			label$911:;
			label$908:;
		}
	}
	label$907:;
	label$906:;
	__builtin_memset( &TMP$454$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$454$1, (void*)&ASMFILE$1, -1, (void*)EXT$1, 0 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$11, -1, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&ASMFILE$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$901:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static void HCOMPILEBAS( struct $9FBCIOFILE* MODULE$1, int32 IS_MAIN$1, int32 IS_FBCTINF$1 )
{
	label$913:;
	int32 PREVLANG$1;
	int32 PREVOUTTYPE$1;
	int32 RESTARTS$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING PPONLYFILE$1;
	__builtin_memset( &PPONLYFILE$1, 0, 12 );
	FBSTRING* vr$2 = HGETASMNAME( MODULE$1, 1 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$2, -1, 0 );
	int32 vr$5 = FBGETOPTION( 2 );
	if( (~(*(int32*)((uint8*)&FBC$ + 40)) & (-(vr$5 != 0) | ~(*(int32*)((uint8*)&FBC$ + 48)))) == 0 ) goto label$916;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$916:;
	label$915:;
	int32 vr$11 = FBGETOPTION( 1 );
	if( vr$11 == 0 ) goto label$918;
	{
		fb_StrAssign( (void*)&PPONLYFILE$1, -1, *(void**)((uint8*)MODULE$1 + 12), -1, 0 );
		if( *(int32*)((uint8*)MODULE$1 + 16) != 0 ) goto label$920;
		{
			FBSTRING TMP$456$3;
			FBSTRING* vr$16 = HSTRIPEXT( &PPONLYFILE$1 );
			__builtin_memset( &TMP$456$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$456$3, (void*)vr$16, -1, (void*)".pp.bas", 8 );
			fb_StrAssign( (void*)&PPONLYFILE$1, -1, (void*)vr$19, -1, 0 );
		}
		label$920:;
		label$919:;
	}
	label$918:;
	label$917:;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$922;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"compiling: ", 11 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 2 );
		fb_PrintString( 0, (FBSTRING*)MODULE$1, 0 );
		FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)" -o ", 4 );
		fb_PrintString( 0, (FBSTRING*)vr$24, 0 );
		fb_PrintString( 0, (FBSTRING*)&ASMFILE$1, 0 );
		int32 vr$26 = FBGETOPTION( 1 );
		if( vr$26 == 0 ) goto label$924;
		{
			FBSTRING TMP$460$3;
			__builtin_memset( &TMP$460$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$460$3, (void*)" -pp ", 6, (void*)&PPONLYFILE$1, -1 );
			fb_PrintString( 0, (FBSTRING*)vr$30, 0 );
		}
		label$924:;
		label$923:;
		if( IS_MAIN$1 == 0 ) goto label$926;
		{
			FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)" (main module)", 14 );
			fb_PrintString( 0, (FBSTRING*)vr$31, 0 );
		}
		goto label$925;
		label$926:;
		if( IS_FBCTINF$1 == 0 ) goto label$927;
		{
			FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)" (FB compile-time info)", 23 );
			fb_PrintString( 0, (FBSTRING*)vr$32, 0 );
		}
		label$927:;
		label$925:;
		fb_PrintVoid( 0, 1 );
	}
	label$922:;
	label$921:;
	RESTARTS$1 = 0;
	int32 vr$33 = FBGETOPTION( 10 );
	PREVLANG$1 = vr$33;
	int32 vr$34 = FBGETOPTION( 0 );
	PREVOUTTYPE$1 = vr$34;
	if( IS_FBCTINF$1 == 0 ) goto label$929;
	{
		FBSETOPTION( 0, 3 );
	}
	label$929:;
	label$928:;
	label$930:;
	{
		FBINIT( IS_MAIN$1, RESTARTS$1 );
		if( IS_FBCTINF$1 == 0 ) goto label$934;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), (struct $7TSTRSET*)((uint8*)&FBC$ + 384) );
		}
		goto label$933;
		label$934:;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 252), (struct $7TSTRSET*)((uint8*)&FBC$ + 296) );
		}
		label$933:;
		FBCOMPILE( (uint8*)*(uint8**)MODULE$1, (uint8*)*(uint8**)&ASMFILE$1, &PPONLYFILE$1, IS_MAIN$1 );
		int32 vr$41 = ERRGETCOUNT(  );
		if( vr$41 <= 0 ) goto label$936;
		{
			FBCEND( 1 );
		}
		label$936:;
		label$935:;
		int32 vr$42 = FBSHOULDRESTART(  );
		if( vr$42 != 0 ) goto label$938;
		{
			goto label$931;
		}
		label$938:;
		label$937:;
		RESTARTS$1 = RESTARTS$1 + 1;
		FBEND(  );
	}
	label$932:;
	goto label$930;
	label$931:;
	if( IS_FBCTINF$1 != 0 ) goto label$940;
	{
		FBGETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), (struct $7TSTRSET*)((uint8*)&FBC$ + 384) );
	}
	label$940:;
	label$939:;
	FBEND(  );
	FBSETOPTION( 0, PREVOUTTYPE$1 );
	FBSETOPTION( 10, PREVLANG$1 );
	fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$914:;
}

static void HCOMPILEMODULES( void )
{
	label$941:;
	int32 ISMAIN$1;
	int32 CHECKMAIN$1;
	FBSTRING MAINFILE$1;
	__builtin_memset( &MAINFILE$1, 0, 12 );
	struct $9FBCIOFILE* MODULE$1;
	ISMAIN$1 = 0;
	{
		int32 TMP$463$2;
		int32 vr$1 = FBGETOPTION( 0 );
		TMP$463$2 = vr$1;
		if( TMP$463$2 == 0 ) goto label$945;
		label$946:;
		if( TMP$463$2 != 2 ) goto label$944;
		label$945:;
		{
			CHECKMAIN$1 = -1;
		}
		goto label$943;
		label$944:;
		{
			CHECKMAIN$1 = *(int32*)((uint8*)&FBC$ + 952);
		}
		label$947:;
		label$943:;
	}
	if( CHECKMAIN$1 == 0 ) goto label$949;
	{
		FBSTRING* vr$3 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 689) );
		fb_StrAssign( (void*)&MAINFILE$1, -1, (void*)vr$3, -1, 0 );
	}
	label$949:;
	label$948:;
	void* vr$6 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$6;
	if( MODULE$1 != (struct $9FBCIOFILE*)0u ) goto label$951;
	{
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), (struct $7TSTRSET*)((uint8*)&FBC$ + 252) );
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 384), (struct $7TSTRSET*)((uint8*)&FBC$ + 296) );
		fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
		goto label$942;
	}
	label$951:;
	label$950:;
	label$952:;
	{
		if( CHECKMAIN$1 == 0 ) goto label$956;
		{
			FBSTRING TMP$464$3;
			__builtin_memset( &TMP$464$3, 0, 12 );
			FBSTRING* vr$15 = HSTRIPEXT( (FBSTRING*)MODULE$1 );
			fb_StrAssign( (void*)&TMP$464$3, -1, (void*)vr$15, -1, 0 );
			FBSTRING* vr$17 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$464$3 );
			int32 vr$19 = fb_StrCompare( (void*)&MAINFILE$1, -1, (void*)vr$17, -1 );
			ISMAIN$1 = -(vr$19 == 0);
			fb_StrDelete( (FBSTRING*)&TMP$464$3 );
		}
		label$956:;
		label$955:;
		HCOMPILEBAS( MODULE$1, ISMAIN$1, 0 );
		void* vr$22 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$22;
	}
	label$954:;
	if( MODULE$1 != (struct $9FBCIOFILE*)0u ) goto label$952;
	label$953:;
	fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
	label$942:;
}

static int32 HPARSEXPM( FBSTRING* XPMFILE$1, FBSTRING* CODE$1 )
{
	FBSTRING TMP$466$1;
	FBSTRING TMP$468$1;
	FBSTRING TMP$470$1;
	FBSTRING TMP$478$1;
	FBSTRING TMP$480$1;
	FBSTRING TMP$482$1;
	FBSTRING TMP$486$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$957:;
	__builtin_memset( &TMP$466$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$466$1, (void*)CODE$1, -1, (void*)"\x0A" "dim shared as zstring ptr ", 28 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$3, -1, 0 );
	__builtin_memset( &TMP$468$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$468$1, (void*)CODE$1, -1, (void*)"fb_program_icon_data", 21 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$6, -1, 0 );
	__builtin_memset( &TMP$470$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$470$1, (void*)CODE$1, -1, (void*)"(0 to ...) = _\x0A{ _\x0A", 20 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$9, -1, 0 );
	int32 F$1;
	int32 vr$10 = fb_FileFree(  );
	F$1 = vr$10;
	int32 vr$11 = fb_FileOpen( (FBSTRING*)XPMFILE$1, 2u, 0u, 0u, F$1, 0 );
	if( vr$11 == 0 ) goto label$960;
	{
		goto label$958;
	}
	label$960:;
	label$959:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_FileLineInput( F$1, (void*)&LN$1, -1, 0 );
	FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)&LN$1, 0 );
	int32 vr$16 = fb_StrCompare( (void*)vr$15, -1, (void*)"/* XPM */", 10 );
	if( vr$16 == 0 ) goto label$962;
	{
		int32 vr$17 = fb_FileClose( F$1 );
		if( vr$17 == 0 ) goto label$963;
		void* vr$18 = fb_ErrorThrowAt( 2886, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$963:;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$958;
	}
	label$962:;
	label$961:;
	int32 SAW_ROWS$1;
	SAW_ROWS$1 = 0;
	label$964:;
	int32 vr$20 = fb_FileEof( F$1 );
	if( vr$20 != 0 ) goto label$965;
	{
		fb_FileLineInput( F$1, (void*)&LN$1, -1, 0 );
		int32 vr$23 = fb_StrLen( (void*)&LN$1, -1 );
		FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
		int32 vr$26 = fb_StrInstr( 1, (FBSTRING*)&LN$1, (FBSTRING*)vr$24 );
		FBSTRING* vr$30 = fb_RIGHT( (FBSTRING*)&LN$1, (vr$23 - vr$26) + 1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$30, -1, 0 );
		FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
		int32 vr$34 = fb_StrInstr( 2, (FBSTRING*)&LN$1, (FBSTRING*)vr$32 );
		FBSTRING* vr$36 = fb_LEFT( (FBSTRING*)&LN$1, vr$34 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$36, -1, 0 );
		int32 vr$39 = fb_StrLen( (void*)&LN$1, -1 );
		if( vr$39 <= 0 ) goto label$967;
		{
			FBSTRING TMP$475$3;
			FBSTRING TMP$476$3;
			if( SAW_ROWS$1 == 0 ) goto label$969;
			{
				FBSTRING TMP$473$4;
				__builtin_memset( &TMP$473$4, 0, 12 );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$473$4, (void*)CODE$1, -1, (void*)", _\x0A", 5 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$42, -1, 0 );
			}
			label$969:;
			label$968:;
			__builtin_memset( &TMP$475$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$475$3, (void*)"\x09@", 3, (void*)&LN$1, -1 );
			__builtin_memset( &TMP$476$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$476$3, (void*)CODE$1, -1, (void*)vr$46, -1 );
			fb_StrAssign( (void*)CODE$1, -1, (void*)vr$49, -1, 0 );
			SAW_ROWS$1 = -1;
		}
		label$967:;
		label$966:;
	}
	goto label$964;
	label$965:;
	int32 vr$50 = fb_FileClose( F$1 );
	if( vr$50 == 0 ) goto label$970;
	void* vr$51 = fb_ErrorThrowAt( 2916, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$51;
	label$970:;
	if( SAW_ROWS$1 != 0 ) goto label$972;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$958;
	}
	label$972:;
	label$971:;
	__builtin_memset( &TMP$478$1, 0, 12 );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$478$1, (void*)CODE$1, -1, (void*)" _ \x0A", 5 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$55, -1, 0 );
	__builtin_memset( &TMP$480$1, 0, 12 );
	FBSTRING* vr$58 = fb_StrConcat( &TMP$480$1, (void*)CODE$1, -1, (void*)"}\x0A\x0A", 4 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$58, -1, 0 );
	__builtin_memset( &TMP$482$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$482$1, (void*)CODE$1, -1, (void*)"extern as zstring ptr ptr fb_program_icon alias \x22" "fb_program_icon\x22\x0A", 67 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$61, -1, 0 );
	__builtin_memset( &TMP$486$1, 0, 12 );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$486$1, (void*)CODE$1, -1, (void*)"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\x0A", 74 );
	fb_StrAssign( (void*)CODE$1, -1, (void*)vr$64, -1, 0 );
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$958:;
	return fb$result$1;
}

static int32 HCOMPILEXPM( void )
{
	int32 TMP$491$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$973:;
	FBSTRING XPMFILE$1;
	__builtin_memset( &XPMFILE$1, 0, 12 );
	FBSTRING CODE$1;
	__builtin_memset( &CODE$1, 0, 12 );
	int32 FO$1;
	int32 vr$4 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
	if( vr$4 != 0 ) goto label$976;
	{
		fb$result$1 = -1;
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$974;
	}
	label$976:;
	label$975:;
	fb_StrAssign( (void*)&XPMFILE$1, -1, (void*)((uint8*)&FBC$ + 136), -1, 0 );
	int32 vr$9 = fb_StrLen( *(void**)((uint8*)&FBC$ + 148), -1 );
	if( vr$9 <= 0 ) goto label$978;
	{
		FBSTRING* vr$10 = HSTRIPEXT( *(FBSTRING**)((uint8*)&FBC$ + 148) );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 136), -1, (void*)vr$10, -1, 0 );
	}
	label$978:;
	label$977:;
	fb_StrConcatAssign( (void*)((uint8*)&FBC$ + 136), -1, (void*)".bas", 5, 0 );
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$980;
	{
		FBSTRING TMP$489$2;
		FBSTRING TMP$490$2;
		FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"parsing xpm: ", 13 );
		fb_PrintString( 0, (FBSTRING*)vr$13, 2 );
		__builtin_memset( &TMP$489$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$489$2, (void*)&XPMFILE$1, -1, (void*)" -o ", 5 );
		__builtin_memset( &TMP$490$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$490$2, (void*)vr$18, -1, (void*)((uint8*)&FBC$ + 136), -1 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
	}
	label$980:;
	label$979:;
	int32 vr$24 = HPARSEXPM( &XPMFILE$1, &CODE$1 );
	if( vr$24 != 0 ) goto label$982;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$974;
	}
	label$982:;
	label$981:;
	int32 vr$27 = fb_FileFree(  );
	FO$1 = vr$27;
	int32 vr$29 = fb_FileOpen( (FBSTRING*)((uint8*)&FBC$ + 136), 3u, 0u, 0u, FO$1, 0 );
	if( vr$29 == 0 ) goto label$984;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$974;
	}
	label$984:;
	label$983:;
	TMP$491$1 = FO$1;
	fb_PrintString( TMP$491$1, (FBSTRING*)&CODE$1, 0 );
	int32 vr$33 = fb_FileClose( FO$1 );
	if( vr$33 == 0 ) goto label$985;
	void* vr$34 = fb_ErrorThrowAt( 2972, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$34;
	label$985:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$987;
	{
		FBCADDTEMP( (FBSTRING*)((uint8*)&FBC$ + 136) );
	}
	label$987:;
	label$986:;
	HCOMPILEBAS( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136), 0, 0 );
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&CODE$1 );
	fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
	label$974:;
	return fb$result$1;
}

static int32 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* MODULE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$988:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING* vr$3 = HGETASMNAME( MODULE$1, 2 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$6 = FBGETOPTION( 3 );
	if( (~(*(int32*)((uint8*)&FBC$ + 48)) & (-(vr$6 != 11) | ~(*(int32*)((uint8*)&FBC$ + 52)))) == 0 ) goto label$991;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$991:;
	label$990:;
	{
		int32 TMP$492$2;
		int32 vr$12 = FBGETOPTION( 2 );
		TMP$492$2 = vr$12;
		if( TMP$492$2 != 1 ) goto label$993;
		label$994:;
		{
			{
				int32 TMP$493$4;
				int32 vr$13 = FBGETCPUFAMILY(  );
				TMP$493$4 = vr$13;
				if( TMP$493$4 != 0 ) goto label$996;
				label$997:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m32 ", 6, 0 );
				}
				goto label$995;
				label$996:;
				if( TMP$493$4 != 1 ) goto label$998;
				label$999:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m64 ", 6, 0 );
				}
				goto label$995;
				label$998:;
				if( TMP$493$4 != 4 ) goto label$1000;
				label$1001:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m32 ", 6, 0 );
				}
				goto label$995;
				label$1000:;
				if( TMP$493$4 != 5 ) goto label$1002;
				label$1003:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m64 ", 6, 0 );
				}
				label$1002:;
				label$995:;
			}
			int32 vr$18 = FBGETOPTION( 3 );
			if( vr$18 == 11 ) goto label$1005;
			{
				if( *(int32*)((uint8*)&FBC$ + 28) == 0 ) goto label$1007;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mcpu=native ", 14, 0 );
				}
				goto label$1006;
				label$1007:;
				{
					FBSTRING TMP$498$5;
					FBSTRING TMP$499$5;
					FBSTRING TMP$500$5;
					uint8* vr$20 = FBGETGCCARCH(  );
					__builtin_memset( &TMP$498$5, 0, 12 );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$498$5, (void*)"-mcpu=", 7, (void*)vr$20, 0 );
					__builtin_memset( &TMP$499$5, 0, 12 );
					FBSTRING* vr$26 = fb_StrConcat( &TMP$499$5, (void*)vr$23, -1, (void*)" ", 2 );
					__builtin_memset( &TMP$500$5, 0, 12 );
					FBSTRING* vr$30 = fb_StrConcat( &TMP$500$5, (void*)&LN$1, -1, (void*)vr$26, -1 );
					fb_StrAssign( (void*)&LN$1, -1, (void*)vr$30, -1, 0 );
				}
				label$1006:;
			}
			label$1005:;
			label$1004:;
			int32 vr$32 = FBGETOPTION( 32 );
			if( vr$32 == 0 ) goto label$1009;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fPIC ", 7, 0 );
			}
			label$1009:;
			label$1008:;
			int32 vr$34 = FBGETOPTION( 3 );
			if( vr$34 == 11 ) goto label$1011;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-S -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-unused-but-set-variable ", 30, 0 );
			}
			goto label$1010;
			label$1011:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 ", 70, 0 );
			}
			label$1010:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-main ", 11, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Werror-implicit-function-declaration ", 39, 0 );
			int32 vr$41 = FBGETOPTION( 3 );
			if( vr$41 == 11 ) goto label$1013;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-O", 3, 0 );
				int32 vr$43 = FBGETOPTION( 8 );
				FBSTRING* vr$44 = fb_IntToStr( vr$43 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$44, -1, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			}
			label$1013:;
			label$1012:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-strict-aliasing ", 22, 0 );
			int32 vr$48 = FBGETOPTION( 3 );
			if( vr$48 == 11 ) goto label$1015;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-frounding-math ", 17, 0 );
			}
			label$1015:;
			label$1014:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-math-errno ", 17, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fwrapv ", 9, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables ", 68, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-format ", 13, 0 );
			int32 vr$54 = FBGETOPTION( 13 );
			if( vr$54 == 0 ) goto label$1017;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-g ", 4, 0 );
			}
			label$1017:;
			label$1016:;
			int32 vr$56 = FBGETOPTION( 5 );
			if( vr$56 != 1 ) goto label$1019;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mfpmath=sse -msse2 ", 21, 0 );
			}
			label$1019:;
			label$1018:;
			{
				int32 TMP$520$4;
				int32 vr$58 = FBGETCPUFAMILY(  );
				TMP$520$4 = vr$58;
				if( TMP$520$4 == 0 ) goto label$1022;
				label$1023:;
				if( TMP$520$4 != 1 ) goto label$1021;
				label$1022:;
				{
					int32 vr$59 = FBGETOPTION( 9 );
					if( vr$59 != 0 ) goto label$1025;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-masm=intel ", 13, 0 );
					}
					label$1025:;
					label$1024:;
				}
				label$1021:;
				label$1020:;
			}
		}
		goto label$992;
		label$993:;
		if( TMP$492$2 != 2 ) goto label$1026;
		label$1027:;
		{
			{
				int32 TMP$522$4;
				int32 vr$61 = FBGETCPUFAMILY(  );
				TMP$522$4 = vr$61;
				if( TMP$522$4 != 0 ) goto label$1029;
				label$1030:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=x86 ", 12, 0 );
				}
				goto label$1028;
				label$1029:;
				if( TMP$522$4 != 1 ) goto label$1031;
				label$1032:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=x86-64 ", 15, 0 );
				}
				goto label$1028;
				label$1031:;
				if( TMP$522$4 != 2 ) goto label$1033;
				label$1034:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=arm ", 12, 0 );
				}
				goto label$1028;
				label$1033:;
				if( TMP$522$4 != 3 ) goto label$1035;
				label$1036:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=armv8-a ", 16, 0 );
				}
				goto label$1028;
				label$1035:;
				if( TMP$522$4 != 4 ) goto label$1037;
				label$1038:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=powerpc ", 16, 0 );
				}
				goto label$1028;
				label$1037:;
				if( TMP$522$4 != 5 ) goto label$1039;
				label$1040:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=powerpc64 ", 18, 0 );
				}
				label$1039:;
				label$1028:;
			}
			int32 vr$68 = FBGETOPTION( 32 );
			if( vr$68 == 0 ) goto label$1042;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-relocation-model=pic ", 23, 0 );
			}
			label$1042:;
			label$1041:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-O", 3, 0 );
			int32 vr$71 = FBGETOPTION( 8 );
			FBSTRING* vr$72 = fb_IntToStr( vr$71 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$72, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			{
				int32 TMP$530$4;
				int32 vr$75 = FBGETCPUFAMILY(  );
				TMP$530$4 = vr$75;
				if( TMP$530$4 == 0 ) goto label$1045;
				label$1046:;
				if( TMP$530$4 != 1 ) goto label$1044;
				label$1045:;
				{
					int32 vr$76 = FBGETOPTION( 9 );
					if( vr$76 != 0 ) goto label$1048;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--x86-asm-syntax=intel ", 24, 0 );
					}
					label$1048:;
					label$1047:;
				}
				label$1044:;
				label$1043:;
			}
		}
		label$1026:;
		label$992:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$79 = HGETASMNAME( MODULE$1, 1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$79, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22 ", 3, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-o \x22", 5, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&ASMFILE$1, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&FBC$ + 1602), 128, 0 );
	{
		int32 TMP$534$2;
		int32 vr$88 = FBGETOPTION( 2 );
		TMP$534$2 = vr$88;
		if( TMP$534$2 != 1 ) goto label$1050;
		label$1051:;
		{
			$6TMP$23 GCC$3;
			GCC$3 = 3;
			int32 vr$89 = FBGETOPTION( 3 );
			if( vr$89 != 11 ) goto label$1053;
			{
				GCC$3 = 13;
			}
			label$1053:;
			label$1052:;
			int32 vr$91 = FBCRUNBIN( (uint8*)"compiling C", GCC$3, &LN$1 );
			fb$result$1 = vr$91;
		}
		goto label$1049;
		label$1050:;
		if( TMP$534$2 != 2 ) goto label$1054;
		label$1055:;
		{
			int32 vr$93 = FBCRUNBIN( (uint8*)"compiling LLVM IR", 4, &LN$1 );
			fb$result$1 = vr$93;
		}
		label$1054:;
		label$1049:;
	}
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$989:;
	return fb$result$1;
}

static void HCOMPILESTAGE2MODULES( void )
{
	label$1056:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1058:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0u ) goto label$1059;
	{
		int32 vr$2 = HCOMPILESTAGE2MODULE( MODULE$1 );
		if( vr$2 != 0 ) goto label$1061;
		{
			FBCEND( 1 );
		}
		label$1061:;
		label$1060:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1058;
	label$1059:;
	label$1057:;
}

static int32 HASSEMBLEMODULE( struct $9FBCIOFILE* MODULE$1 )
{
	FBSTRING TMP$543$1;
	FBSTRING TMP$544$1;
	FBSTRING TMP$545$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1062:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	{
		int32 TMP$537$2;
		int32 vr$2 = FBGETCPUFAMILY(  );
		TMP$537$2 = vr$2;
		if( TMP$537$2 != 0 ) goto label$1065;
		label$1066:;
		{
			int32 vr$3 = FBGETOPTION( 3 );
			if( vr$3 != 9 ) goto label$1068;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-arch i386 ", 12, 0 );
			}
			goto label$1067;
			label$1068:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--32 ", 6, 0 );
			}
			label$1067:;
		}
		goto label$1064;
		label$1065:;
		if( TMP$537$2 != 1 ) goto label$1069;
		label$1070:;
		{
			int32 vr$6 = FBGETOPTION( 3 );
			if( vr$6 != 9 ) goto label$1072;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-arch x86_64 ", 14, 0 );
			}
			goto label$1071;
			label$1072:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--64 ", 6, 0 );
			}
			label$1071:;
		}
		label$1069:;
		label$1064:;
	}
	int32 vr$9 = FBGETOPTION( 13 );
	if( vr$9 != 0 ) goto label$1074;
	{
		int32 vr$10 = FBGETOPTION( 3 );
		if( vr$10 == 9 ) goto label$1076;
		{
			int32 vr$11 = FBGETOPTION( 3 );
			if( vr$11 == 11 ) goto label$1078;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--strip-local-absolute ", 24, 0 );
			}
			label$1078:;
			label$1077:;
		}
		label$1076:;
		label$1075:;
	}
	label$1074:;
	label$1073:;
	int32 vr$13 = FBGETOPTION( 3 );
	if( vr$13 != 11 ) goto label$1080;
	{
		fb$result$1 = -1;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1063;
	}
	label$1080:;
	label$1079:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$16 = HGETASMNAME( MODULE$1, 2 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$16, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22 ", 3, 0 );
	__builtin_memset( &TMP$543$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$543$1, (void*)"-o \x22", 5, *(void**)((uint8*)MODULE$1 + 12), -1 );
	__builtin_memset( &TMP$544$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$544$1, (void*)vr$22, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$545$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$545$1, (void*)&LN$1, -1, (void*)vr$25, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$29, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&FBC$ + 1346), 128, 0 );
	$6TMP$23 GAS$1;
	GAS$1 = 0;
	int32 vr$33 = FBGETOPTION( 3 );
	if( vr$33 != 11 ) goto label$1082;
	{
		GAS$1 = 10;
	}
	label$1082:;
	label$1081:;
	int32 vr$35 = FBCRUNBIN( (uint8*)"assembling", GAS$1, &LN$1 );
	if( vr$35 != 0 ) goto label$1084;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1063;
	}
	label$1084:;
	label$1083:;
	if( *(int32*)((uint8*)&FBC$ + 52) != 0 ) goto label$1086;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)MODULE$1 + 12) );
	}
	label$1086:;
	label$1085:;
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1063:;
	return fb$result$1;
}

static void HASSEMBLEMODULES( void )
{
	label$1087:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1089:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0u ) goto label$1090;
	{
		int32 vr$2 = HASSEMBLEMODULE( MODULE$1 );
		if( vr$2 != 0 ) goto label$1092;
		{
			FBCEND( 1 );
		}
		label$1092:;
		label$1091:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1089;
	label$1090:;
	label$1088:;
}

static int32 HASSEMBLERC( struct $9FBCIOFILE* RC$1 )
{
	FBSTRING TMP$548$1;
	FBSTRING TMP$549$1;
	FBSTRING TMP$550$1;
	FBSTRING TMP$551$1;
	FBSTRING TMP$552$1;
	FBSTRING TMP$553$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1093:;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1, (void*)"--output-format=coff --include-dir=.", 37, 0 );
	__builtin_memset( &TMP$548$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$548$1, (void*)" \x22", 3, (void*)RC$1, -1 );
	__builtin_memset( &TMP$549$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$549$1, (void*)vr$6, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$550$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$550$1, (void*)&LN$1, -1, (void*)vr$9, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$13, -1, 0 );
	__builtin_memset( &TMP$551$1, 0, 12 );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$551$1, (void*)" \x22", 3, *(void**)((uint8*)RC$1 + 12), -1 );
	__builtin_memset( &TMP$552$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$552$1, (void*)vr$18, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$553$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$553$1, (void*)&LN$1, -1, (void*)vr$21, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$25, -1, 0 );
	int32 vr$28 = FBCRUNBIN( (uint8*)"compiling rc", 7, &LN$1 );
	fb$result$1 = vr$28;
	if( *(int32*)((uint8*)&FBC$ + 52) != 0 ) goto label$1096;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)RC$1 + 12) );
	}
	label$1096:;
	label$1095:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1094:;
	return fb$result$1;
}

static void HASSEMBLERCS( void )
{
	label$1097:;
	struct $9FBCIOFILE* RC$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
	RC$1 = (struct $9FBCIOFILE*)vr$1;
	label$1099:;
	if( RC$1 == (struct $9FBCIOFILE*)0u ) goto label$1100;
	{
		int32 vr$2 = HASSEMBLERC( RC$1 );
		if( vr$2 != 0 ) goto label$1102;
		{
			FBCEND( 1 );
		}
		label$1102:;
		label$1101:;
		void* vr$3 = LISTGETNEXT( (void*)RC$1 );
		RC$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1099;
	label$1100:;
	label$1098:;
}

static void HASSEMBLEXPM( void )
{
	label$1103:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
	if( vr$1 <= 0 ) goto label$1106;
	{
		int32 vr$2 = FBGETOPTION( 2 );
		if( vr$2 == 0 ) goto label$1108;
		{
			HCOMPILESTAGE2MODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136) );
		}
		label$1108:;
		label$1107:;
		int32 vr$5 = HASSEMBLEMODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136) );
		if( vr$5 != 0 ) goto label$1110;
		{
			FBCEND( 1 );
		}
		label$1110:;
		label$1109:;
	}
	label$1106:;
	label$1105:;
	label$1104:;
}

static int32 HCOMPILEFBCTINF( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1111:;
	struct $9FBCIOFILE FBCTINF$1;
	_ZN9FBCIOFILEC1Ev( &FBCTINF$1 );
	FBSTRING OBJFILE$1;
	__builtin_memset( &OBJFILE$1, 0, 12 );
	int32 FO$1;
	fb_StrAssign( (void*)&FBCTINF$1, -1, (void*)"__fb_ct.inf.bas", 16, 0 );
	fb_StrAssign( (void*)&OBJFILE$1, -1, (void*)"__fb_ct.inf", 12, 0 );
	*(FBSTRING**)((uint8*)&FBCTINF$1 + 12) = &OBJFILE$1;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1114;
	{
		FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"creating: ", 10 );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		fb_PrintString( 0, (FBSTRING*)&FBCTINF$1, 1 );
	}
	label$1114:;
	label$1113:;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = vr$8;
	int32 vr$10 = fb_FileOpen( (FBSTRING*)&FBCTINF$1, 3u, 0u, 0u, FO$1, 0 );
	if( vr$10 == 0 ) goto label$1116;
	{
		fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
		_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
		goto label$1112;
	}
	label$1116:;
	label$1115:;
	int32 vr$13 = fb_FileClose( FO$1 );
	if( vr$13 == 0 ) goto label$1117;
	void* vr$14 = fb_ErrorThrowAt( 3348, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$14;
	label$1117:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$1119;
	{
		FBCADDTEMP( (FBSTRING*)&FBCTINF$1 );
	}
	label$1119:;
	label$1118:;
	HCOMPILEBAS( &FBCTINF$1, 0, -1 );
	int32 vr$17 = FBGETOPTION( 2 );
	if( vr$17 == 0 ) goto label$1121;
	{
		HCOMPILESTAGE2MODULE( &FBCTINF$1 );
	}
	label$1121:;
	label$1120:;
	int32 vr$20 = HASSEMBLEMODULE( &FBCTINF$1 );
	fb$result$1 = vr$20;
	fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
	_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
	label$1112:;
	return fb$result$1;
}

static int32 HARCHIVEFILES( void )
{
	FBSTRING TMP$558$1;
	FBSTRING TMP$559$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1122:;
	HSETOUTNAME(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 428) );
	int32 vr$3 = fb_FileKill( (FBSTRING*)vr$2 );
	if( vr$3 == 0 ) goto label$1125;
	{
	}
	label$1125:;
	label$1124:;
	FBSTRING LN$1;
	__builtin_memset( &TMP$558$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$558$1, (void*)"-rsc \x22", 7, (void*)((uint8*)&FBC$ + 428), 261 );
	__builtin_memset( &TMP$559$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$559$1, (void*)vr$7, -1, (void*)"\x22 ", 3 );
	fb_StrInit( (void*)&LN$1, -1, (void*)vr$10, -1, 0 );
	int32 vr$12 = FBGETOPTION( 34 );
	int32 vr$13 = FBISCROSSCOMP(  );
	if( (vr$12 & ~vr$13) == 0 ) goto label$1127;
	{
		FBSTRING TMP$563$2;
		int32 vr$16 = HCOMPILEFBCTINF(  );
		if( vr$16 == 0 ) goto label$1129;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22__fb_ct.inf\x22 ", 15, 0 );
		}
		label$1129:;
		label$1128:;
		__builtin_memset( &TMP$563$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$563$2, -1, (void*)"__fb_ct.inf", 12, 0 );
		FBCADDTEMP( &TMP$563$2 );
		fb_StrDelete( (FBSTRING*)&TMP$563$2 );
	}
	label$1127:;
	label$1126:;
	FBSTRING* OBJFILE$1;
	void* vr$23 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 188) );
	OBJFILE$1 = (FBSTRING*)vr$23;
	label$1130:;
	if( OBJFILE$1 == (FBSTRING*)0u ) goto label$1131;
	{
		FBSTRING TMP$564$2;
		FBSTRING TMP$565$2;
		FBSTRING TMP$566$2;
		__builtin_memset( &TMP$564$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$564$2, (void*)"\x22", 2, (void*)OBJFILE$1, -1 );
		__builtin_memset( &TMP$565$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$565$2, (void*)vr$26, -1, (void*)"\x22 ", 3 );
		__builtin_memset( &TMP$566$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$566$2, (void*)&LN$1, -1, (void*)vr$29, -1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$33, -1, 0 );
		void* vr$35 = LISTGETNEXT( (void*)OBJFILE$1 );
		OBJFILE$1 = (FBSTRING*)vr$35;
	}
	goto label$1130;
	label$1131:;
	int32 vr$37 = FBCRUNBIN( (uint8*)"archiving", 1, &LN$1 );
	fb$result$1 = vr$37;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1123:;
	return fb$result$1;
}

static void HSETDEFAULTLIBPATHS( void )
{
	FBSTRING TMP$568$1;
	FBSTRING TMP$569$1;
	label$1132:;
	__builtin_memset( &TMP$568$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$568$1, -1, (void*)((uint8*)&FBC$ + 2915), 261, 0 );
	FBCADDDEFLIBPATH( &TMP$568$1 );
	fb_StrDelete( (FBSTRING*)&TMP$568$1 );
	__builtin_memset( &TMP$569$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$569$1, -1, (void*)".", 2, 0 );
	FBCADDDEFLIBPATH( &TMP$569$1 );
	fb_StrDelete( (FBSTRING*)&TMP$569$1 );
	int32 vr$9 = FBGETOPTION( 3 );
	if( vr$9 == 11 ) goto label$1135;
	{
		FBCADDLIBPATHFOR( (uint8*)"libgcc.a" );
	}
	label$1135:;
	label$1134:;
	{
		int32 TMP$571$2;
		int32 vr$10 = FBGETOPTION( 3 );
		TMP$571$2 = vr$10;
		if( TMP$571$2 != 3 ) goto label$1137;
		label$1138:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libm.a" );
		}
		goto label$1136;
		label$1137:;
		if( TMP$571$2 != 0 ) goto label$1139;
		label$1140:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libmingw32.a" );
		}
		label$1139:;
		label$1136:;
	}
	label$1133:;
}

static void FBCADDDEFLIB( uint8* LIBNAME$1 )
{
	FBSTRING TMP$574$1;
	label$1141:;
	__builtin_memset( &TMP$574$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$574$1, -1, (void*)LIBNAME$1, 0, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 340), &TMP$574$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$574$1 );
	label$1142:;
}

static FBSTRING* HGETFBLIBNAMESUFFIX( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$1143:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 vr$2 = FBGETOPTION( 30 );
	if( vr$2 == 0 ) goto label$1146;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"mt", 3, 0 );
	}
	label$1146:;
	label$1145:;
	int32 vr$4 = FBGETOPTION( 32 );
	if( vr$4 == 0 ) goto label$1148;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"pic", 4, 0 );
	}
	label$1148:;
	label$1147:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1144:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static void HADDDEFAULTLIBS( void )
{
	FBSTRING TMP$575$1;
	FBSTRING TMP$576$1;
	label$1149:;
	__builtin_memset( &TMP$576$1, 0, 12 );
	FBSTRING* vr$1 = HGETFBLIBNAMESUFFIX(  );
	__builtin_memset( &TMP$575$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$575$1, (void*)"fb", 3, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$576$1, -1, (void*)vr$4, -1, 0 );
	FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$576$1 );
	fb_StrDelete( (FBSTRING*)&TMP$576$1 );
	int32 vr$7 = FBGETOPTION( 31 );
	if( vr$7 == 0 ) goto label$1152;
	{
		FBSTRING TMP$578$2;
		FBSTRING TMP$579$2;
		__builtin_memset( &TMP$579$2, 0, 12 );
		FBSTRING* vr$9 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$578$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$578$2, (void*)"fbgfx", 6, (void*)vr$9, -1 );
		fb_StrAssign( (void*)&TMP$579$2, -1, (void*)vr$12, -1, 0 );
		FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$579$2 );
		fb_StrDelete( (FBSTRING*)&TMP$579$2 );
		{
			uint32 TMP$580$3;
			int32 vr$15 = FBGETOPTION( 3 );
			TMP$580$3 = (uint32)vr$15;
			goto label$1154;
			label$1155:;
			{
				FBCADDDEFLIB( (uint8*)"gdi32" );
				FBCADDDEFLIB( (uint8*)"winmm" );
			}
			goto label$1153;
			label$1156:;
			{
				FBSTRING TMP$584$4;
				__builtin_memset( &TMP$584$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$584$4, -1, (void*)"/usr/X11R6/lib", 15, 0 );
				FBCADDDEFLIBPATH( &TMP$584$4 );
				fb_StrDelete( (FBSTRING*)&TMP$584$4 );
				FBCADDDEFLIB( (uint8*)"X11" );
				FBCADDDEFLIB( (uint8*)"Xext" );
				FBCADDDEFLIB( (uint8*)"Xpm" );
				FBCADDDEFLIB( (uint8*)"Xrandr" );
				FBCADDDEFLIB( (uint8*)"Xrender" );
			}
			goto label$1153;
			label$1154:;
			static const void* tmp$734[11] = {
				&&label$1155,
				&&label$1155,
				&&label$1156,
				&&label$1153,
				&&label$1153,
				&&label$1156,
				&&label$1156,
				&&label$1156,
				&&label$1156,
				&&label$1156,
				&&label$1156,
			};
			if( TMP$580$3 > 10u ) goto label$1153;
			goto *tmp$734[TMP$580$3 - 0u];
			label$1153:;
		}
	}
	label$1152:;
	label$1151:;
	{
		uint32 TMP$590$2;
		int32 vr$20 = FBGETOPTION( 3 );
		TMP$590$2 = (uint32)vr$20;
		goto label$1158;
		label$1159:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"cygwin" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			int32 vr$21 = FBGETOPTION( 21 );
			if( vr$21 == 0 ) goto label$1161;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1161:;
			label$1160:;
		}
		goto label$1157;
		label$1162:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"System" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1157;
		label$1163:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			int32 vr$22 = FBGETOPTION( 30 );
			if( vr$22 == 0 ) goto label$1165;
			{
				FBCADDDEFLIB( (uint8*)"pthread" );
				FBCADDDEFLIB( (uint8*)"socket" );
			}
			label$1165:;
			label$1164:;
		}
		goto label$1157;
		label$1166:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1157;
		label$1167:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1157;
		label$1168:;
		{
			FBSTRING* vr$23 = FBCFINDLIBFILE( (uint8*)"libtinfo.a" );
			int32 vr$24 = fb_StrLen( (void*)vr$23, -1 );
			FBSTRING* vr$26 = FBCFINDLIBFILE( (uint8*)"libtinfo.so" );
			int32 vr$27 = fb_StrLen( (void*)vr$26, -1 );
			if( (-(vr$24 > 0) | -(vr$27 > 0)) == 0 ) goto label$1170;
			{
				FBCADDDEFLIB( (uint8*)"tinfo" );
			}
			goto label$1169;
			label$1170:;
			{
				FBCADDDEFLIB( (uint8*)"ncurses" );
			}
			label$1169:;
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"dl" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBSTRING* vr$30 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int32 vr$31 = fb_StrLen( (void*)vr$30, -1 );
			FBSTRING* vr$33 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.so" );
			int32 vr$34 = fb_StrLen( (void*)vr$33, -1 );
			if( (-(vr$31 > 0) | -(vr$34 > 0)) == 0 ) goto label$1172;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1172:;
			label$1171:;
			FBCADDDEFLIB( (uint8*)"c" );
		}
		goto label$1157;
		label$1173:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1157;
		label$1174:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1157;
		label$1175:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"msvcrt" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			FBCADDDEFLIB( (uint8*)"mingw32" );
			FBCADDDEFLIB( (uint8*)"mingwex" );
			FBCADDDEFLIB( (uint8*)"moldname" );
			FBSTRING* vr$37 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int32 vr$38 = fb_StrLen( (void*)vr$37, -1 );
			FBSTRING* vr$40 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.dll.a" );
			int32 vr$41 = fb_StrLen( (void*)vr$40, -1 );
			if( (-(vr$38 > 0) | -(vr$41 > 0)) == 0 ) goto label$1177;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1177:;
			label$1176:;
			int32 vr$44 = FBGETOPTION( 21 );
			if( vr$44 == 0 ) goto label$1179;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1179:;
			label$1178:;
		}
		goto label$1157;
		label$1180:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"fbgfx" );
			FBCADDDEFLIB( (uint8*)"openxdk" );
			FBCADDDEFLIB( (uint8*)"hal" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"usb" );
			FBCADDDEFLIB( (uint8*)"xboxkrnl" );
			FBCADDDEFLIB( (uint8*)"m" );
			int32 vr$45 = FBGETOPTION( 21 );
			if( vr$45 == 0 ) goto label$1182;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1182:;
			label$1181:;
		}
		goto label$1157;
		label$1158:;
		static const void* tmp$735[11] = {
			&&label$1175,
			&&label$1159,
			&&label$1168,
			&&label$1163,
			&&label$1180,
			&&label$1166,
			&&label$1167,
			&&label$1167,
			&&label$1174,
			&&label$1162,
			&&label$1173,
		};
		if( TMP$590$2 > 10u ) goto label$1157;
		goto *tmp$735[TMP$590$2 - 0u];
		label$1157:;
	}
	label$1150:;
}

static void HPRINTOPTIONS( int32 VERBOSE$1 )
{
	label$1183:;
	FBSTRING* vr$0 = fb_StrAllocTempDescZEx( (uint8*)"usage: fbc [options] <input files>", 34 );
	fb_PrintString( 0, (FBSTRING*)vr$0, 1 );
	FBSTRING* vr$1 = fb_StrAllocTempDescZEx( (uint8*)"input files:", 12 );
	fb_PrintString( 0, (FBSTRING*)vr$1, 1 );
	FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"  *.a = static library, *.o = object file, *.bas = source", 57 );
	fb_PrintString( 0, (FBSTRING*)vr$2, 1 );
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"  *.rc = resource script, *.res = compiled resource (win32)", 59 );
	fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"  *.xpm = icon resource (*nix/*bsd)", 35 );
	fb_PrintString( 0, (FBSTRING*)vr$4, 1 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"options:", 8 );
	fb_PrintString( 0, (FBSTRING*)vr$5, 1 );
	FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"  @<file>          Read more command line arguments from a file", 63 );
	fb_PrintString( 0, (FBSTRING*)vr$6, 1 );
	FBSTRING* vr$7 = fb_StrAllocTempDescZEx( (uint8*)"  -a <file>        Treat file as .o/.a input file", 49 );
	fb_PrintString( 0, (FBSTRING*)vr$7, 1 );
	FBSTRING* vr$8 = fb_StrAllocTempDescZEx( (uint8*)"  -arch <type>     Set target architecture (default: 486)", 57 );
	fb_PrintString( 0, (FBSTRING*)vr$8, 1 );
	FBSTRING* vr$9 = fb_StrAllocTempDescZEx( (uint8*)"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$9, 1 );
	FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)"  -b <file>        Treat file as .bas input file", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$10, 1 );
	FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (uint8*)"  -c               Compile only, do not link", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$11, 1 );
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"  -C               Preserve temporary .o files", 46 );
	fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"  -d <name>[=<val>]  Add a global #define", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"  -dll             Same as -dylib", 33 );
	fb_PrintString( 0, (FBSTRING*)vr$14, 1 );
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"  -e               Enable runtime error checking", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	if( VERBOSE$1 == 0 ) goto label$1186;
	{
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"  -earray          Enable array bounds checking", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$17, 1 );
		FBSTRING* vr$18 = fb_StrAllocTempDescZEx( (uint8*)"  -eassert         Enable assert() and assertwarn() checking", 60 );
		fb_PrintString( 0, (FBSTRING*)vr$18, 1 );
		FBSTRING* vr$19 = fb_StrAllocTempDescZEx( (uint8*)"  -edebug          Enable __FB_DEBUG__", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$19, 1 );
		FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"  -edebuginfo      Add debug info", 33 );
		fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"  -elocation       Enable error location reporting", 50 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
		FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"  -enullptr        Enable null-pointer checking", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
	}
	label$1186:;
	label$1185:;
	FBSTRING* vr$23 = fb_StrAllocTempDescZEx( (uint8*)"  -ex              -e plus RESUME support", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"  -exx             -ex plus array bounds/null-pointer checking", 62 );
	fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
	FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (uint8*)"  -export          Export symbols for dynamic linkage", 53 );
	fb_PrintString( 0, (FBSTRING*)vr$25, 1 );
	FBSTRING* vr$26 = fb_StrAllocTempDescZEx( (uint8*)"  -forcelang <name>  Override #lang statements in source code", 61 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"  -fpmode fast|precise  Select floating-point math accuracy/speed", 65 );
	fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
	FBSTRING* vr$28 = fb_StrAllocTempDescZEx( (uint8*)"  -fpu x87|sse     Set target FPU", 33 );
	fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
	FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()", 75 );
	fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
	if( VERBOSE$1 == 0 ) goto label$1188;
	{
		FBSTRING* vr$30 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas         Select GNU gas assembler backend", 51 );
		fb_PrintString( 0, (FBSTRING*)vr$30, 1 );
		FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gcc         Select GNU gcc C backend", 43 );
		fb_PrintString( 0, (FBSTRING*)vr$31, 1 );
		FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)"  -gen llvm        Select LLVM backend", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$32, 1 );
	}
	goto label$1187;
	label$1188:;
	{
		FBSTRING* vr$33 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas|gcc|llvm  Select code generation backend", 51 );
		fb_PrintString( 0, (FBSTRING*)vr$33, 1 );
	}
	label$1187:;
	FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-help         Show this help output", 40 );
	fb_PrintString( 0, (FBSTRING*)vr$34, 1 );
	FBSTRING* vr$35 = fb_StrAllocTempDescZEx( (uint8*)"  -i <path>        Add an include file search path", 50 );
	fb_PrintString( 0, (FBSTRING*)vr$35, 1 );
	FBSTRING* vr$36 = fb_StrAllocTempDescZEx( (uint8*)"  -include <file>  Pre-#include a file for each input .bas", 58 );
	fb_PrintString( 0, (FBSTRING*)vr$36, 1 );
	FBSTRING* vr$37 = fb_StrAllocTempDescZEx( (uint8*)"  -l <name>        Link in a library", 36 );
	fb_PrintString( 0, (FBSTRING*)vr$37, 1 );
	FBSTRING* vr$38 = fb_StrAllocTempDescZEx( (uint8*)"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb", 64 );
	fb_PrintString( 0, (FBSTRING*)vr$38, 1 );
	FBSTRING* vr$39 = fb_StrAllocTempDescZEx( (uint8*)"  -lib             Create a static library", 42 );
	fb_PrintString( 0, (FBSTRING*)vr$39, 1 );
	FBSTRING* vr$40 = fb_StrAllocTempDescZEx( (uint8*)"  -m <name>        Specify main module (default if not -c: first input .bas)", 76 );
	fb_PrintString( 0, (FBSTRING*)vr$40, 1 );
	FBSTRING* vr$41 = fb_StrAllocTempDescZEx( (uint8*)"  -map <file>      Save linking map to file", 43 );
	fb_PrintString( 0, (FBSTRING*)vr$41, 1 );
	FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"  -maxerr <n>      Only show <n> errors", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$42, 1 );
	FBSTRING* vr$43 = fb_StrAllocTempDescZEx( (uint8*)"  -mt              Use thread-safe FB runtime", 45 );
	fb_PrintString( 0, (FBSTRING*)vr$43, 1 );
	FBSTRING* vr$44 = fb_StrAllocTempDescZEx( (uint8*)"  -nodeflibs       Do not include the default libraries", 55 );
	fb_PrintString( 0, (FBSTRING*)vr$44, 1 );
	FBSTRING* vr$45 = fb_StrAllocTempDescZEx( (uint8*)"  -noerrline       Do not show source context in error messages", 63 );
	fb_PrintString( 0, (FBSTRING*)vr$45, 1 );
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files", 78 );
	fb_PrintString( 0, (FBSTRING*)vr$46, 1 );
	FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"  -nostrip         Do not strip symbol information from the output file", 71 );
	fb_PrintString( 0, (FBSTRING*)vr$47, 1 );
	FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (uint8*)"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file", 74 );
	fb_PrintString( 0, (FBSTRING*)vr$48, 1 );
	FBSTRING* vr$49 = fb_StrAllocTempDescZEx( (uint8*)"  -O <value>       Optimization level (default: 0)", 50 );
	fb_PrintString( 0, (FBSTRING*)vr$49, 1 );
	FBSTRING* vr$50 = fb_StrAllocTempDescZEx( (uint8*)"  -p <path>        Add a library search path", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$50, 1 );
	FBSTRING* vr$51 = fb_StrAllocTempDescZEx( (uint8*)"  -pic             Generate position-independent code (non-x86 Unix shared libs)", 80 );
	fb_PrintString( 0, (FBSTRING*)vr$51, 1 );
	FBSTRING* vr$52 = fb_StrAllocTempDescZEx( (uint8*)"  -pp              Write out preprocessed input file (.pp.bas) only", 67 );
	fb_PrintString( 0, (FBSTRING*)vr$52, 1 );
	FBSTRING* vr$53 = fb_StrAllocTempDescZEx( (uint8*)"  -prefix <path>   Set the compiler prefix path", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$53, 1 );
	FBSTRING* vr$54 = fb_StrAllocTempDescZEx( (uint8*)"  -print host|target  Display host/target system name", 53 );
	fb_PrintString( 0, (FBSTRING*)vr$54, 1 );
	FBSTRING* vr$55 = fb_StrAllocTempDescZEx( (uint8*)"  -print fblibdir  Display the compiler's lib/ path", 51 );
	fb_PrintString( 0, (FBSTRING*)vr$55, 1 );
	FBSTRING* vr$56 = fb_StrAllocTempDescZEx( (uint8*)"  -print x         Display output binary/library file name (if known)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$56, 1 );
	if( VERBOSE$1 == 0 ) goto label$1190;
	{
		FBSTRING* vr$57 = fb_StrAllocTempDescZEx( (uint8*)"  -print sha-1     Display compiler's source code commit sha-1 (if known)", 73 );
		fb_PrintString( 0, (FBSTRING*)vr$57, 1 );
	}
	label$1190:;
	label$1189:;
	FBSTRING* vr$58 = fb_StrAllocTempDescZEx( (uint8*)"  -profile         Enable function profiling", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$58, 1 );
	FBSTRING* vr$59 = fb_StrAllocTempDescZEx( (uint8*)"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only", 65 );
	fb_PrintString( 0, (FBSTRING*)vr$59, 1 );
	FBSTRING* vr$60 = fb_StrAllocTempDescZEx( (uint8*)"  -rr              Write out the final .asm only", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$60, 1 );
	FBSTRING* vr$61 = fb_StrAllocTempDescZEx( (uint8*)"  -R               Preserve temporary .asm/.c/.ll/.def files", 60 );
	fb_PrintString( 0, (FBSTRING*)vr$61, 1 );
	FBSTRING* vr$62 = fb_StrAllocTempDescZEx( (uint8*)"  -RR              Preserve the final .asm file", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$62, 1 );
	FBSTRING* vr$63 = fb_StrAllocTempDescZEx( (uint8*)"  -s console|gui   Select win32 subsystem", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$63, 1 );
	FBSTRING* vr$64 = fb_StrAllocTempDescZEx( (uint8*)"  -showincludes    Display a tree of file names of #included files", 66 );
	fb_PrintString( 0, (FBSTRING*)vr$64, 1 );
	FBSTRING* vr$65 = fb_StrAllocTempDescZEx( (uint8*)"  -static          Prefer static libraries over dynamic ones when linking", 73 );
	fb_PrintString( 0, (FBSTRING*)vr$65, 1 );
	FBSTRING* vr$66 = fb_StrAllocTempDescZEx( (uint8*)"  -strip           Omit all symbol information from the output file", 67 );
	fb_PrintString( 0, (FBSTRING*)vr$66, 1 );
	FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (uint8*)"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)", 75 );
	fb_PrintString( 0, (FBSTRING*)vr$67, 1 );
	if( VERBOSE$1 == 0 ) goto label$1192;
	{
		FBSTRING* vr$68 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$68, 1 );
	}
	goto label$1191;
	label$1192:;
	{
		FBSTRING* vr$69 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$69, 1 );
	}
	label$1191:;
	FBSTRING* vr$70 = fb_StrAllocTempDescZEx( (uint8*)"  -title <name>    Set XBE display title (xbox)", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$70, 1 );
	FBSTRING* vr$71 = fb_StrAllocTempDescZEx( (uint8*)"  -v               Be verbose", 29 );
	fb_PrintString( 0, (FBSTRING*)vr$71, 1 );
	FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (uint8*)"  -vec <n>         Automatic vectorization level (default: 0)", 61 );
	fb_PrintString( 0, (FBSTRING*)vr$72, 1 );
	FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-version      Show compiler version", 40 );
	fb_PrintString( 0, (FBSTRING*)vr$73, 1 );
	FBSTRING* vr$74 = fb_StrAllocTempDescZEx( (uint8*)"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value", 70 );
	fb_PrintString( 0, (FBSTRING*)vr$74, 1 );
	if( VERBOSE$1 == 0 ) goto label$1194;
	{
		FBSTRING* vr$75 = fb_StrAllocTempDescZEx( (uint8*)"  -w all           Enable all warnings", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$75, 1 );
		FBSTRING* vr$76 = fb_StrAllocTempDescZEx( (uint8*)"  -w none          Disable all warnings", 39 );
		fb_PrintString( 0, (FBSTRING*)vr$76, 1 );
		FBSTRING* vr$77 = fb_StrAllocTempDescZEx( (uint8*)"  -w param         Enable parameter warnings", 44 );
		fb_PrintString( 0, (FBSTRING*)vr$77, 1 );
		FBSTRING* vr$78 = fb_StrAllocTempDescZEx( (uint8*)"  -w escape        Enable string escape sequence warnings", 57 );
		fb_PrintString( 0, (FBSTRING*)vr$78, 1 );
		FBSTRING* vr$79 = fb_StrAllocTempDescZEx( (uint8*)"  -w next          Enable next statement warnings", 49 );
		fb_PrintString( 0, (FBSTRING*)vr$79, 1 );
		FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (uint8*)"  -w signedness    Enable type signedness warnings", 50 );
		fb_PrintString( 0, (FBSTRING*)vr$80, 1 );
		FBSTRING* vr$81 = fb_StrAllocTempDescZEx( (uint8*)"  -w constness     Enable const type warnings", 45 );
		fb_PrintString( 0, (FBSTRING*)vr$81, 1 );
		FBSTRING* vr$82 = fb_StrAllocTempDescZEx( (uint8*)"  -w suffix        Enable invalid suffix warnings", 49 );
		fb_PrintString( 0, (FBSTRING*)vr$82, 1 );
	}
	label$1194:;
	label$1193:;
	FBSTRING* vr$83 = fb_StrAllocTempDescZEx( (uint8*)"  -Wa <a,b,c>      Pass options to 'as'", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$83, 1 );
	FBSTRING* vr$84 = fb_StrAllocTempDescZEx( (uint8*)"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)", 72 );
	fb_PrintString( 0, (FBSTRING*)vr$84, 1 );
	FBSTRING* vr$85 = fb_StrAllocTempDescZEx( (uint8*)"  -Wl <a,b,c>      Pass options to 'ld'", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$85, 1 );
	FBSTRING* vr$86 = fb_StrAllocTempDescZEx( (uint8*)"  -x <file>        Set output executable/library file name", 58 );
	fb_PrintString( 0, (FBSTRING*)vr$86, 1 );
	if( VERBOSE$1 == 0 ) goto label$1196;
	{
		FBSTRING* vr$87 = fb_StrAllocTempDescZEx( (uint8*)"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB", 56 );
		fb_PrintString( 0, (FBSTRING*)vr$87, 1 );
		FBSTRING* vr$88 = fb_StrAllocTempDescZEx( (uint8*)"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros", 70 );
		fb_PrintString( 0, (FBSTRING*)vr$88, 1 );
	}
	label$1196:;
	label$1195:;
	label$1184:;
}

static void HPRINTVERSION( int32 VERBOSE$1 )
{
	FBSTRING TMP$711$1;
	FBSTRING TMP$712$1;
	FBSTRING TMP$713$1;
	FBSTRING TMP$714$1;
	label$1201:;
	FBSTRING CONFIG$1;
	__builtin_memset( &CONFIG$1, 0, 12 );
	int32 vr$1 = FBGETHOSTBITS(  );
	FBSTRING* vr$2 = fb_IntToStr( vr$1 );
	FBSTRING* vr$3 = FBGETHOSTID(  );
	__builtin_memset( &TMP$711$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$711$1, (void*)"FreeBASIC Compiler - Version 1.08.0 (2021-02-18), built for ", 61, (void*)vr$3, -1 );
	__builtin_memset( &TMP$712$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$712$1, (void*)vr$6, -1, (void*)" (", 3 );
	__builtin_memset( &TMP$713$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$713$1, (void*)vr$9, -1, (void*)vr$2, -1 );
	__builtin_memset( &TMP$714$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$714$1, (void*)vr$12, -1, (void*)"bit)", 5 );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"Copyright (C) 2004-2021 The FreeBASIC development team.", 55 );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	int32 vr$18 = fb_StrLen( (void*)&CONFIG$1, -1 );
	if( vr$18 <= 0 ) goto label$1204;
	{
		fb_PrintString( 0, (FBSTRING*)&CONFIG$1, 1 );
	}
	label$1204:;
	label$1203:;
	if( VERBOSE$1 == 0 ) goto label$1206;
	{
		FBCPRINTTARGETINFO(  );
		goto label$1208;
		{
			FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"source sha-1: ", 14 );
			fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		}
		label$1208:;
		label$1207:;
	}
	label$1206:;
	label$1205:;
	fb_StrDelete( (FBSTRING*)&CONFIG$1 );
	label$1202:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1257:;
	_ZN6FBCCTXC1Ev( &FBC$ );
	label$1258:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1260:;
	_ZN6FBCCTXD1Ev( &FBC$ );
	label$1261:;
}
