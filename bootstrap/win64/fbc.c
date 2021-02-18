typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int64 len; int64 size; } FBSTRING;
typedef int8 boolean;
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 24 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 16 );
typedef int64 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 64 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
struct $9FBCIOFILE {
	FBSTRING SRCFILE;
	FBSTRING* OBJFILE;
	int64 IS_CUSTOM_OBJFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCIOFILE ) == 40 );
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 16 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int64 NODES;
	int64 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 24 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 88 );
struct $10FBC_EXTOPT {
	uint8 GAS[128];
	uint8 LD[128];
	uint8 GCC[128];
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_EXTOPT ) == 384 );
typedef int64 $7FB_LANG;
struct $10FBC_OBJINF {
	$7FB_LANG LANG;
	int64 MT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_OBJINF ) == 16 );
struct $6FBCCTX {
	int64 OPTID;
	struct $9FBCIOFILE* LASTMODULE;
	FBSTRING OBJFILE;
	int64 BACKEND;
	int64 CPUTYPE;
	int64 CPUTYPE_IS_NATIVE;
	int64 ASMSYNTAX;
	int64 EMITASMONLY;
	int64 KEEPASM;
	int64 EMITFINALASMONLY;
	int64 KEEPFINALASM;
	int64 KEEPOBJ;
	int64 VERBOSE;
	int64 SHOWVERSION;
	int64 SHOWHELP;
	int64 PRINT;
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
	int64 MAINSET;
	uint8 MAPFILE[261];
	uint8 SUBSYSTEM[129];
	struct $10FBC_EXTOPT EXTOPT;
	uint8 TARGET[129];
	uint8 TARGETPREFIX[129];
	uint8 XBE_TITLE[129];
	int64 NODEFLIBS;
	int64 STATICLINK;
	int64 STRIPSYMBOLS;
	uint8 PREFIX[261];
	uint8 BINPATH[261];
	uint8 INCPATH[261];
	uint8 LIBPATH[261];
	struct $10FBC_OBJINF OBJINF;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBCCTX ) == 3648 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1IcE {
	uint8* DATA;
	uint8* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 72 );
typedef int64 $6TMP$24;
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileOpenPipe( FBSTRING*, uint32, uint32, uint32, int32, int32, uint8* );
int32 fb_FileClose( int32 );
int32 fb_FilePutLarge( int32, int64, void*, uint64 );
int32 fb_FileLineInput( int32, void*, int64, int32 );
int32 fb_FileInput( int32 );
int32 fb_InputString( void*, int64, int32 );
int32 rename( uint8*, uint8* );
int32 fb_FileFree( void );
int32 fb_FileEof( int32 );
int32 fb_FileKill( FBSTRING* );
void fb_PrintVoid( int32, int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_LongintToStr( int64 );
int64 fb_StrLen( void*, int64 );
int64 fb_StrInstr( int64, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
void fb_Init( int32, uint8**, int32 );
void fb_InitSignals( void );
void fb_End( int32 );
FBSTRING* fb_ExePath( void );
int32 fb_Shell( FBSTRING* );
int32 fb_Exec( FBSTRING*, FBSTRING* );
FBSTRING* fb_GetEnviron( FBSTRING* );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void STRLISTAPPEND( struct $5TLIST*, FBSTRING* );
void STRLISTINIT( struct $5TLIST*, int64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int64 );
void STRSETCOPY( struct $7TSTRSET*, struct $7TSTRSET* );
void STRSETINIT( struct $7TSTRSET*, int64 );
int64 ERRGETCOUNT( void );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void FBINIT( int64, int64 );
void FBEND( void );
void FBCOMPILE( uint8*, uint8*, FBSTRING*, int64 );
int64 FBSHOULDRESTART( void );
void FBGLOBALINIT( void );
void FBADDINCLUDEPATH( FBSTRING* );
void FBADDPREDEFINE( FBSTRING* );
void FBADDPREINCLUDE( FBSTRING* );
void FBSETOPTION( int64, int64 );
int64 FBGETOPTION( int64 );
void FBSETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
void FBGETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
FBSTRING* FBGETTARGETID( void );
FBSTRING* FBGETHOSTID( void );
int64 FBIDENTIFYOS( FBSTRING* );
int64 FBCPUTYPEFROMCPUFAMILYID( FBSTRING* );
uint8* FBGETGCCARCH( void );
uint8* FBGETFBCARCH( void );
int64 FBGETBITS( void );
int64 FBGETHOSTBITS( void );
int64 FBGETCPUFAMILY( void );
int64 FBIDENTIFYFBCARCH( FBSTRING* );
int64 FBTARGETSUPPORTSELF( void );
int64 FBISCROSSCOMP( void );
typedef int64 $10FB_BACKEND;
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
$7FB_LANG FBGETLANGID( uint8* );
int64 HFILEEXISTS( uint8* );
FBSTRING* HSTRIPEXT( FBSTRING* );
FBSTRING* HSTRIPPATH( uint8* );
FBSTRING* HSTRIPFILENAME( uint8* );
FBSTRING* HGETFILEEXT( uint8* );
void HREPLACESLASH( uint8*, int64 );
FBSTRING* PATHSTRIPDIV( FBSTRING* );
FBSTRING* STRUNQUOTE( FBSTRING* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void OBJINFOREADOBJ( FBSTRING* );
void OBJINFOREADLIBFILE( FBSTRING* );
void OBJINFOREADLIB( FBSTRING*, struct $5TLIST* );
int64 OBJINFOREADNEXT( FBSTRING* );
uint8* OBJINFOGETFILENAME( void );
void OBJINFOREADEND( void );
int64 fb_FileLen( uint8* );
static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* );
static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE*, struct $9FBCIOFILE* );
static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* );
static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* );
static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX*, struct $6FBCCTX* );
static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* );
static void FBCFINDBIN( int64, FBSTRING*, int64* );
static void FBCINIT( void );
static void HSETOUTNAME( void );
static void FBCEND( int64 );
static void FBCADDTEMP( FBSTRING* );
static FBSTRING* FBCADDOBJ( FBSTRING* );
static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* );
static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* );
static FBSTRING* FBCFINDLIBFILE( uint8* );
static void FBCADDDEFLIBPATH( FBSTRING* );
static void FBCADDLIBPATHFOR( uint8* );
static int64 FBCRUNBIN( uint8*, int64, FBSTRING* );
static int64 HPUTLDARGSINTOFILE( FBSTRING* );
static int64 CLEARDEFLIST( FBSTRING* );
static int64 HGENERATEEMPTYDEFFILE( FBSTRING* );
static int64 MAKEIMPLIB( FBSTRING*, FBSTRING* );
static FBSTRING* HFINDLIB( uint8* );
static int64 FBCLINKERISGOLD( void );
static int64 FBCISUSINGGOLDLINKER( void );
static int64 HLINKFILES( void );
static void HREADOBJINFO( void );
static void HCOLLECTOBJINFO( void );
static void HFATALINVALIDOPTION( FBSTRING* );
static void HCHECKWAITINGOBJFILE( void );
static void HSETIOFILE( struct $9FBCIOFILE*, FBSTRING*, int64 );
static void HADDBAS( FBSTRING* );
static void HPARSEGNUTRIPLET( FBSTRING*, int64, int64*, int64* );
static void HPARSETARGETARG( FBSTRING*, int64*, int64*, int64* );
static void HANDLEOPT( int64, FBSTRING* );
static int64 PARSEOPTION( uint8* );
static void PARSEARGSFROMFILE( FBSTRING* );
static void HANDLEARG( FBSTRING* );
static int64 HTARGETNEEDSPIC( void );
static void HPARSEARGS( int64, uint8** );
static void FBCDETERMINEPREFIX( void );
static void FBCSETUPCOMPILERPATHS( void );
static void FBCPRINTTARGETINFO( void );
static void FBCDETERMINEMAINNAME( void );
static FBSTRING* HGETASMNAME( struct $9FBCIOFILE*, int64 );
static void HCOMPILEBAS( struct $9FBCIOFILE*, int64, int64 );
static void HCOMPILEMODULES( void );
static int64 HPARSEXPM( FBSTRING*, FBSTRING* );
static int64 HCOMPILEXPM( void );
static int64 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* );
static void HCOMPILESTAGE2MODULES( void );
static int64 HASSEMBLEMODULE( struct $9FBCIOFILE* );
static void HASSEMBLEMODULES( void );
static int64 HASSEMBLERC( struct $9FBCIOFILE* );
static void HASSEMBLERCS( void );
static void HASSEMBLEXPM( void );
static int64 HCOMPILEFBCTINF( void );
static int64 HARCHIVEFILES( void );
static void HSETDEFAULTLIBPATHS( void );
static void FBCADDDEFLIB( uint8* );
static FBSTRING* HGETFBLIBNAMESUFFIX( void );
static void HADDDEFAULTLIBS( void );
static void HPRINTOPTIONS( int64 );
static void HPRINTVERSION( int64 );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static uint8 TOOLNAMES$[14][16] = { "as", "ar", "ld", "gcc", "llc", "dlltool", "GoRC", "windres", "cxbe", "dxe3gen", "emcc", "emar", "emcc", "emcc" };
static struct $6FBCCTX FBC$;
struct $11FBGNUOSINFO {
	uint8* GNUID;
	int64 OS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBGNUOSINFO ) == 16 );
static struct $11FBGNUOSINFO GNUOSMAP$[11] = { { (uint8*)"linux", 2ll }, { (uint8*)"mingw", 0ll }, { (uint8*)"djgpp", 3ll }, { (uint8*)"cygwin", 1ll }, { (uint8*)"darwin", 9ll }, { (uint8*)"freebsd", 5ll }, { (uint8*)"dragonfly", 6ll }, { (uint8*)"solaris", 7ll }, { (uint8*)"netbsd", 10ll }, { (uint8*)"openbsd", 8ll }, { (uint8*)"xbox", 4ll } };
struct $13FBGNUARCHINFO {
	uint8* GNUID;
	int64 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBGNUARCHINFO ) == 16 );
static struct $13FBGNUARCHINFO GNUARCHMAP$[13] = { { (uint8*)"i386", 0ll }, { (uint8*)"i486", 1ll }, { (uint8*)"i586", 2ll }, { (uint8*)"i686", 3ll }, { (uint8*)"x86", 1ll }, { (uint8*)"x86_64", 13ll }, { (uint8*)"amd64", 13ll }, { (uint8*)"armv6", 14ll }, { (uint8*)"armv7a", 15ll }, { (uint8*)"arm", 15ll }, { (uint8*)"aarch64", 16ll }, { (uint8*)"powerpc", 17ll }, { (uint8*)"powerpc64", 18ll } };
struct $12FBOSARCHINFO {
	uint8* TARGETID;
	int64 OS;
	int64 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBOSARCHINFO ) == 24 );
static struct $12FBOSARCHINFO FBOSARCHMAP$[12] = { { (uint8*)"win32", 0ll, 1ll }, { (uint8*)"win64", 0ll, 13ll }, { (uint8*)"dragonfly", 6ll, 13ll }, { (uint8*)"solaris", 7ll, 13ll }, { (uint8*)"dos", 3ll, 1ll }, { (uint8*)"xbox", 4ll, 1ll }, { (uint8*)"cygwin", 1ll, 13ll }, { (uint8*)"darwin", 9ll, 13ll }, { (uint8*)"freebsd", 5ll, 13ll }, { (uint8*)"linux", 2ll, 13ll }, { (uint8*)"netbsd", 10ll, 13ll }, { (uint8*)"openbsd", 8ll, 13ll } };
static int64 OPTION_TAKES_ARGUMENT$[66] = { -1ll, -1ll, -1ll, -1ll, 0ll, 0ll, -1ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, 0ll, -1ll, -1ll, -1ll, 0ll, -1ll, 0ll, -1ll, -1ll, -1ll, -1ll, 0ll, -1ll, -1ll, -1ll, 0ll, 0ll, 0ll, 0ll, 0ll, -1ll, -1ll, -1ll, 0ll, 0ll, -1ll, -1ll, 0ll, 0ll, 0ll, 0ll, 0ll, -1ll, 0ll, 0ll, 0ll, -1ll, -1ll, -1ll, 0ll, -1ll, 0ll, -1ll, -1ll, -1ll, -1ll, -1ll, -1ll };

int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
{
	FBSTRING TMP$727$0;
	int32 fb$result$0;
	__builtin_memset( &fb$result$0, 0, 4ll );
	fb_Init( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0, 0 );
	fb_InitSignals(  );
	label$0:;
	FBCINIT(  );
	if( (int64)__FB_ARGC__$0 != 1ll ) goto label$1225;
	{
		HPRINTOPTIONS( 0ll );
		FBCEND( 1ll );
	}
	label$1225:;
	label$1224:;
	HPARSEARGS( (int64)__FB_ARGC__$0, (uint8**)__FB_ARGV__$0 );
	if( *(int64*)((uint8*)&FBC$ + 120ll) == 0ll ) goto label$1227;
	{
		HPRINTVERSION( *(int64*)((uint8*)&FBC$ + 112ll) );
		FBCEND( 0ll );
	}
	label$1227:;
	label$1226:;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1229;
	{
		HPRINTVERSION( 0ll );
	}
	label$1229:;
	label$1228:;
	if( *(int64*)((uint8*)&FBC$ + 128ll) == 0ll ) goto label$1231;
	{
		HPRINTOPTIONS( *(int64*)((uint8*)&FBC$ + 112ll) );
		FBCEND( 1ll );
	}
	label$1231:;
	label$1230:;
	FBCDETERMINEPREFIX(  );
	FBCSETUPCOMPILERPATHS(  );
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1233;
	{
		FBCPRINTTARGETINFO(  );
	}
	label$1233:;
	label$1232:;
	__builtin_memset( &TMP$727$0, 0, 24ll );
	fb_StrAssign( (void*)&TMP$727$0, -1ll, (void*)((uint8*)&FBC$ + 3106ll), 261ll, 0 );
	FBADDINCLUDEPATH( &TMP$727$0 );
	fb_StrDelete( (FBSTRING*)&TMP$727$0 );
	int64 HAVE_INPUT_FILES$0;
	void* vr$9 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	void* vr$12 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
	void* vr$16 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 504ll) );
	void* vr$20 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 440ll) );
	HAVE_INPUT_FILES$0 = (((int64)-(vr$9 != (void*)0ull) | (int64)-(vr$12 != (void*)0ull)) | (int64)-(vr$16 != (void*)0ull)) | (int64)-(vr$20 != (void*)0ull);
	if( *(int64*)((uint8*)&FBC$ + 136ll) < 0ll ) goto label$1235;
	{
		{
			int64 TMP$728$2;
			TMP$728$2 = *(int64*)((uint8*)&FBC$ + 136ll);
			if( TMP$728$2 != 0ll ) goto label$1237;
			label$1238:;
			{
				FBSTRING* vr$23 = FBGETHOSTID(  );
				fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
			}
			goto label$1236;
			label$1237:;
			if( TMP$728$2 != 1ll ) goto label$1239;
			label$1240:;
			{
				FBSTRING* vr$24 = FBGETTARGETID(  );
				fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
			}
			goto label$1236;
			label$1239:;
			if( TMP$728$2 != 2ll ) goto label$1241;
			label$1242:;
			{
				if( HAVE_INPUT_FILES$0 == 0ll ) goto label$1244;
				{
					FBCDETERMINEMAINNAME(  );
				}
				label$1244:;
				label$1243:;
				HSETOUTNAME(  );
				FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 856ll) );
				fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
			}
			goto label$1236;
			label$1241:;
			if( TMP$728$2 != 3ll ) goto label$1245;
			label$1246:;
			{
				FBSTRING* vr$28 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 3367ll) );
				fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
			}
			goto label$1236;
			label$1245:;
			if( TMP$728$2 != 4ll ) goto label$1247;
			label$1248:;
			{
				FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)"", 0ll );
				fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
			}
			label$1247:;
			label$1236:;
		}
		FBCEND( 0ll );
	}
	label$1235:;
	label$1234:;
	FBCDETERMINEMAINNAME(  );
	if( HAVE_INPUT_FILES$0 != 0ll ) goto label$1250;
	{
		HPRINTOPTIONS( *(int64*)((uint8*)&FBC$ + 112ll) );
		FBCEND( 1ll );
	}
	label$1250:;
	label$1249:;
	HCOMPILEMODULES(  );
	int64 vr$30 = HCOMPILEXPM(  );
	if( vr$30 != 0ll ) goto label$1252;
	{
		FBCEND( 1ll );
	}
	label$1252:;
	label$1251:;
	if( *(int64*)((uint8*)&FBC$ + 72ll) == 0ll ) goto label$1254;
	{
		FBCEND( 0ll );
	}
	label$1254:;
	label$1253:;
	int64 vr$31 = FBGETOPTION( 2ll );
	int64 vr$33 = FBGETOPTION( 2ll );
	if( ((int64)-(vr$31 != 0ll) & (int64)-(vr$33 != 3ll)) == 0ll ) goto label$1256;
	{
		HCOMPILESTAGE2MODULES(  );
	}
	label$1256:;
	label$1255:;
	if( *(int64*)((uint8*)&FBC$ + 88ll) == 0ll ) goto label$1258;
	{
		FBCEND( 0ll );
	}
	label$1258:;
	label$1257:;
	HASSEMBLEMODULES(  );
	HASSEMBLERCS(  );
	HASSEMBLEXPM(  );
	int64 vr$36 = FBGETOPTION( 0ll );
	if( vr$36 != 3ll ) goto label$1260;
	{
		FBCEND( 0ll );
	}
	label$1260:;
	label$1259:;
	HSETDEFAULTLIBPATHS(  );
	int64 vr$37 = FBGETOPTION( 34ll );
	int64 vr$38 = FBISCROSSCOMP(  );
	if( (vr$37 & ~vr$38) == 0ll ) goto label$1262;
	{
		HCOLLECTOBJINFO(  );
	}
	label$1262:;
	label$1261:;
	int64 vr$41 = FBGETOPTION( 0ll );
	if( vr$41 != 1ll ) goto label$1264;
	{
		int64 vr$42 = HARCHIVEFILES(  );
		if( vr$42 != 0ll ) goto label$1266;
		{
			FBCEND( 1ll );
		}
		label$1266:;
		label$1265:;
		FBCEND( 0ll );
	}
	label$1264:;
	label$1263:;
	if( *(int64*)((uint8*)&FBC$ + 2560ll) != 0ll ) goto label$1268;
	{
		HADDDEFAULTLIBS(  );
	}
	label$1268:;
	label$1267:;
	int64 vr$43 = HLINKFILES(  );
	if( vr$43 != 0ll ) goto label$1270;
	{
		FBCEND( 1ll );
	}
	label$1270:;
	label$1269:;
	FBCEND( 0ll );
	label$1:;
	fb_End( 0 );
	return fb$result$0;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 24ll );
	__builtin_memset( (FBSTRING**)((uint8*)THIS$1 + 24ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 32ll), 0, 8ll );
	label$10:;
	label$11:;
}

static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE* THIS$1, struct $9FBCIOFILE* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(FBSTRING**)((uint8*)THIS$1 + 24ll) = *(FBSTRING**)((uint8*)__FB_RHS__$1 + 24ll);
	*(int64*)((uint8*)THIS$1 + 32ll) = *(int64*)((uint8*)__FB_RHS__$1 + 32ll);
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
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (struct $9FBCIOFILE**)((uint8*)THIS$1 + 8ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 16ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 40ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 48ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 56ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 64ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 72ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 80ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 88ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 96ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 104ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 112ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 120ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 128ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 136ll), 0, 8ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 144ll), 0, 64ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 208ll), 0, 64ll );
	_ZN9FBCIOFILEC1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll) );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 312ll), 0, 64ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 376ll), 0, 64ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 440ll), 0, 64ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 504ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 592ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 680ll), 0, 88ll );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 768ll), 0, 88ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 856ll), 0, 261ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1117ll), 0, 261ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 1384ll), 0, 8ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1392ll), 0, 261ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1653ll), 0, 129ll );
	__builtin_memset( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1782ll), 0, 384ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2166ll), 0, 129ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2295ll), 0, 129ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2424ll), 0, 129ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2560ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2568ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 2576ll), 0, 8ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2584ll), 0, 261ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2845ll), 0, 261ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 3106ll), 0, 261ll );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 3367ll), 0, 261ll );
	__builtin_memset( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3632ll), 0, 16ll );
	label$18:;
	label$19:;
}

static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX* THIS$1, struct $6FBCCTX* __FB_RHS__$1 )
{
	label$20:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	*(struct $9FBCIOFILE**)((uint8*)THIS$1 + 8ll) = *(struct $9FBCIOFILE**)((uint8*)__FB_RHS__$1 + 8ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 16ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 16ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 40ll) = *(int64*)((uint8*)__FB_RHS__$1 + 40ll);
	*(int64*)((uint8*)THIS$1 + 48ll) = *(int64*)((uint8*)__FB_RHS__$1 + 48ll);
	*(int64*)((uint8*)THIS$1 + 56ll) = *(int64*)((uint8*)__FB_RHS__$1 + 56ll);
	*(int64*)((uint8*)THIS$1 + 64ll) = *(int64*)((uint8*)__FB_RHS__$1 + 64ll);
	*(int64*)((uint8*)THIS$1 + 72ll) = *(int64*)((uint8*)__FB_RHS__$1 + 72ll);
	*(int64*)((uint8*)THIS$1 + 80ll) = *(int64*)((uint8*)__FB_RHS__$1 + 80ll);
	*(int64*)((uint8*)THIS$1 + 88ll) = *(int64*)((uint8*)__FB_RHS__$1 + 88ll);
	*(int64*)((uint8*)THIS$1 + 96ll) = *(int64*)((uint8*)__FB_RHS__$1 + 96ll);
	*(int64*)((uint8*)THIS$1 + 104ll) = *(int64*)((uint8*)__FB_RHS__$1 + 104ll);
	*(int64*)((uint8*)THIS$1 + 112ll) = *(int64*)((uint8*)__FB_RHS__$1 + 112ll);
	*(int64*)((uint8*)THIS$1 + 120ll) = *(int64*)((uint8*)__FB_RHS__$1 + 120ll);
	*(int64*)((uint8*)THIS$1 + 128ll) = *(int64*)((uint8*)__FB_RHS__$1 + 128ll);
	*(int64*)((uint8*)THIS$1 + 136ll) = *(int64*)((uint8*)__FB_RHS__$1 + 136ll);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 144ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 144ll), 64 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 208ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 208ll), 64 );
	_ZN9FBCIOFILEaSERKS_( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll), (struct $9FBCIOFILE*)((uint8*)__FB_RHS__$1 + 272ll) );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 312ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 312ll), 64 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 376ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 376ll), 64 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 440ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 440ll), 64 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 504ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 504ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 592ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 592ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 680ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 680ll), 88 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 768ll), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 768ll), 88 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 856ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 856ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1117ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 1117ll), 261ll, 0 );
	*(int64*)((uint8*)THIS$1 + 1384ll) = *(int64*)((uint8*)__FB_RHS__$1 + 1384ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1392ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 1392ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1653ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 1653ll), 129ll, 0 );
	__builtin_memcpy( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1782ll), (struct $10FBC_EXTOPT*)((uint8*)__FB_RHS__$1 + 1782ll), 384 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2166ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2166ll), 129ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2295ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2295ll), 129ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2424ll), 129ll, (void*)((uint8*)__FB_RHS__$1 + 2424ll), 129ll, 0 );
	*(int64*)((uint8*)THIS$1 + 2560ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2560ll);
	*(int64*)((uint8*)THIS$1 + 2568ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2568ll);
	*(int64*)((uint8*)THIS$1 + 2576ll) = *(int64*)((uint8*)__FB_RHS__$1 + 2576ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2584ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 2584ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2845ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 2845ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3106ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 3106ll), 261ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3367ll), 261ll, (void*)((uint8*)__FB_RHS__$1 + 3367ll), 261ll, 0 );
	__builtin_memcpy( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3632ll), (struct $10FBC_OBJINF*)((uint8*)__FB_RHS__$1 + 3632ll), 16 );
	label$21:;
}

static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* THIS$1 )
{
	label$24:;
	label$25:;
	_ZN9FBCIOFILED1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 272ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 16ll) );
}

static void FBCINIT( void )
{
	label$26:;
	*(int64*)((uint8*)&FBC$ + 40ll) = -1ll;
	*(int64*)((uint8*)&FBC$ + 48ll) = -1ll;
	*(int64*)((uint8*)&FBC$ + 64ll) = -1ll;
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 144ll), 64ll, 40ll, 4294967295ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 208ll), 16ll, 40ll, 4294967295ll );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 312ll), 16ll );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 376ll), 64ll );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 440ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 504ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 592ll), 16ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), 32ll );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll), 32ll );
	FBGLOBALINIT(  );
	int64 vr$9 = FBGETOPTION( 10ll );
	*($7FB_LANG*)((uint8*)&FBC$ + 3632ll) = vr$9;
	*(int64*)((uint8*)&FBC$ + 136ll) = -1ll;
	label$27:;
}

static void HSETOUTNAME( void )
{
	label$28:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 856ll), 261ll );
	if( vr$1 <= 0ll ) goto label$31;
	{
		goto label$29;
	}
	label$31:;
	label$30:;
	int64 vr$2 = FBGETOPTION( 0ll );
	if( vr$2 != 1ll ) goto label$33;
	{
		FBSTRING TMP$40$2;
		FBSTRING TMP$41$2;
		FBSTRING TMP$42$2;
		FBSTRING* vr$4 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 1117ll) );
		FBSTRING* vr$6 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 1117ll) );
		__builtin_memset( &TMP$40$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$40$2, (void*)vr$6, -1ll, (void*)"lib", 4ll );
		__builtin_memset( &TMP$41$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$41$2, (void*)vr$9, -1ll, (void*)vr$4, -1ll );
		__builtin_memset( &TMP$42$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$42$2, (void*)vr$12, -1ll, (void*)".a", 3ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$15, -1ll, 0 );
		goto label$29;
	}
	label$33:;
	label$32:;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)((uint8*)&FBC$ + 1117ll), 261ll, 0 );
	{
		int64 TMP$43$2;
		int64 vr$19 = FBGETOPTION( 0ll );
		TMP$43$2 = vr$19;
		if( TMP$43$2 != 0ll ) goto label$35;
		label$36:;
		{
			{
				int64 TMP$44$4;
				int64 vr$20 = FBGETOPTION( 3ll );
				TMP$44$4 = vr$20;
				if( TMP$44$4 == 3ll ) goto label$39;
				label$40:;
				if( TMP$44$4 == 1ll ) goto label$39;
				label$41:;
				if( TMP$44$4 == 0ll ) goto label$39;
				label$42:;
				if( TMP$44$4 != 4ll ) goto label$38;
				label$39:;
				{
					FBSTRING TMP$45$5;
					__builtin_memset( &TMP$45$5, 0, 24ll );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$45$5, (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)".exe", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$24, -1ll, 0 );
				}
				goto label$37;
				label$38:;
				if( TMP$44$4 != 11ll ) goto label$43;
				label$44:;
				{
					FBSTRING TMP$47$5;
					__builtin_memset( &TMP$47$5, 0, 24ll );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$47$5, (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)".html", 6ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$29, -1ll, 0 );
				}
				label$43:;
				label$37:;
			}
		}
		goto label$34;
		label$35:;
		if( TMP$43$2 != 2ll ) goto label$45;
		label$46:;
		{
			{
				int64 TMP$48$4;
				int64 vr$31 = FBGETOPTION( 3ll );
				TMP$48$4 = vr$31;
				if( TMP$48$4 == 1ll ) goto label$49;
				label$50:;
				if( TMP$48$4 != 0ll ) goto label$48;
				label$49:;
				{
					FBSTRING TMP$50$5;
					__builtin_memset( &TMP$50$5, 0, 24ll );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$50$5, (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)".dll", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$35, -1ll, 0 );
				}
				goto label$47;
				label$48:;
				if( TMP$48$4 == 2ll ) goto label$52;
				label$53:;
				if( TMP$48$4 == 9ll ) goto label$52;
				label$54:;
				if( TMP$48$4 == 5ll ) goto label$52;
				label$55:;
				if( TMP$48$4 == 8ll ) goto label$52;
				label$56:;
				if( TMP$48$4 == 10ll ) goto label$52;
				label$57:;
				if( TMP$48$4 == 6ll ) goto label$52;
				label$58:;
				if( TMP$48$4 != 7ll ) goto label$51;
				label$52:;
				{
					FBSTRING TMP$52$5;
					FBSTRING TMP$53$5;
					FBSTRING TMP$54$5;
					FBSTRING* vr$38 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 856ll) );
					FBSTRING* vr$40 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 856ll) );
					__builtin_memset( &TMP$52$5, 0, 24ll );
					FBSTRING* vr$43 = fb_StrConcat( &TMP$52$5, (void*)vr$40, -1ll, (void*)"lib", 4ll );
					__builtin_memset( &TMP$53$5, 0, 24ll );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$53$5, (void*)vr$43, -1ll, (void*)vr$38, -1ll );
					__builtin_memset( &TMP$54$5, 0, 24ll );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$54$5, (void*)vr$46, -1ll, (void*)".so", 4ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$49, -1ll, 0 );
				}
				goto label$47;
				label$51:;
				if( TMP$48$4 != 3ll ) goto label$59;
				label$60:;
				{
					FBSTRING TMP$56$5;
					__builtin_memset( &TMP$56$5, 0, 24ll );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$56$5, (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)".dxe", 5ll );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)vr$54, -1ll, 0 );
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

static void FBCEND( int64 ERRNUM$1 )
{
	label$61:;
	FBSTRING* FILE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 312ll) );
	FILE$1 = (FBSTRING*)vr$1;
	label$63:;
	if( FILE$1 == (FBSTRING*)0ull ) goto label$64;
	{
		int32 vr$2 = fb_FileKill( (FBSTRING*)FILE$1 );
		if( (int64)vr$2 == 0ll ) goto label$66;
		{
		}
		label$66:;
		label$65:;
		void* vr$4 = LISTGETNEXT( (void*)FILE$1 );
		FILE$1 = (FBSTRING*)vr$4;
	}
	goto label$63;
	label$64:;
	fb_End( (int32)ERRNUM$1 );
	label$62:;
}

static void FBCADDTEMP( FBSTRING* FILE$1 )
{
	label$67:;
	STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 312ll), FILE$1 );
	label$68:;
}

static FBSTRING* FBCADDOBJ( FBSTRING* FILE$1 )
{
	FBSTRING* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$69:;
	FBSTRING* S$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
	S$1 = (FBSTRING*)vr$2;
	fb_StrAssign( (void*)S$1, -1ll, (void*)FILE$1, -1ll, 0 );
	fb$result$1 = S$1;
	label$70:;
	return fb$result$1;
}

static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* CMD$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$71:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpenPipe( (FBSTRING*)CMD$1, 2u, 0u, 0u, F$1, 0, (uint8*)0ull );
	if( (int64)vr$2 == 0ll ) goto label$74;
	{
		goto label$72;
	}
	label$74:;
	label$73:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_FileInput( F$1 );
	fb_InputString( (void*)&LN$1, -1ll, 0 );
	int32 vr$6 = fb_FileClose( F$1 );
	if( (int64)vr$6 == 0ll ) goto label$75;
	void* vr$8 = fb_ErrorThrowAt( 260, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$8;
	label$75:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&LN$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	goto label$72;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$72:;
	FBSTRING* vr$14 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$14;
}

static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* FILE$1 )
{
	FBSTRING TMP$58$1;
	FBSTRING TMP$59$1;
	int64 TMP$60$1;
	FBSTRING TMP$65$1;
	FBSTRING TMP$66$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$76:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 24ll );
	__builtin_memset( &TMP$58$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$58$1, (void*)((uint8*)&FBC$ + 3367ll), 261ll, (void*)"\x5C", 2ll );
	__builtin_memset( &TMP$59$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$59$1, (void*)vr$5, -1ll, (void*)FILE$1, 0ll );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$8, -1ll, 0 );
	int64 vr$10 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
	if( vr$10 == 0ll ) goto label$79;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$79:;
	label$78:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	TMP$60$1 = 0ll;
	FBCFINDBIN( 3ll, &PATH$1, &TMP$60$1 );
	{
		int64 TMP$61$2;
		int64 vr$17 = FBGETCPUFAMILY(  );
		TMP$61$2 = vr$17;
		if( TMP$61$2 != 0ll ) goto label$81;
		label$82:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$80;
		label$81:;
		if( TMP$61$2 != 1ll ) goto label$83;
		label$84:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		goto label$80;
		label$83:;
		if( TMP$61$2 != 4ll ) goto label$85;
		label$86:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m32", 6ll, 0 );
		}
		goto label$80;
		label$85:;
		if( TMP$61$2 != 5ll ) goto label$87;
		label$88:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1ll, (void*)" -m64", 6ll, 0 );
		}
		label$87:;
		label$80:;
	}
	__builtin_memset( &TMP$65$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$65$1, (void*)" -print-file-name=", 19ll, (void*)FILE$1, 0ll );
	__builtin_memset( &TMP$66$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$66$1, (void*)&PATH$1, -1ll, (void*)vr$24, -1ll );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$28, -1ll, 0 );
	FBSTRING* vr$31 = HGET1STOUTPUTLINEFROMCOMMAND( &PATH$1 );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$31, -1ll, 0 );
	int64 vr$34 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$34 != 0ll ) goto label$90;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$90:;
	label$89:;
	FBSTRING* vr$37 = HSTRIPPATH( (uint8*)*(uint8**)&FOUND$1 );
	int32 vr$39 = fb_StrCompare( (void*)&FOUND$1, -1ll, (void*)vr$37, -1ll );
	if( (int64)vr$39 != 0ll ) goto label$92;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$77;
	}
	label$92:;
	label$91:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$77:;
	FBSTRING* vr$48 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$48;
}

static FBSTRING* FBCFINDLIBFILE( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$93:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 24ll );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)vr$2, -1ll, 0 );
	int64 vr$5 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$5 <= 0ll ) goto label$96;
	{
		int64 vr$6 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
		if( vr$6 != 0ll ) goto label$98;
		{
			fb_StrAssign( (void*)&FOUND$1, -1ll, (void*)"", 1ll, 0 );
		}
		label$98:;
		label$97:;
	}
	label$96:;
	label$95:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$94:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static void FBCADDDEFLIBPATH( FBSTRING* PATH$1 )
{
	label$99:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll), PATH$1, -1ll );
	label$100:;
}

static void FBCADDLIBPATHFOR( uint8* LIBNAME$1 )
{
	FBSTRING TMP$67$1;
	label$101:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	__builtin_memset( &TMP$67$1, 0, 24ll );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( LIBNAME$1 );
	fb_StrAssign( (void*)&TMP$67$1, -1ll, (void*)vr$2, -1ll, 0 );
	FBSTRING* vr$4 = HSTRIPFILENAME( (uint8*)*(uint8**)&TMP$67$1 );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$4, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$67$1 );
	FBSTRING* vr$8 = PATHSTRIPDIV( &PATH$1 );
	fb_StrAssign( (void*)&PATH$1, -1ll, (void*)vr$8, -1ll, 0 );
	int64 vr$11 = fb_StrLen( (void*)&PATH$1, -1ll );
	if( vr$11 <= 0ll ) goto label$104;
	{
		FBCADDDEFLIBPATH( &PATH$1 );
	}
	label$104:;
	label$103:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$102:;
}

static void FBCFINDBIN( int64 TOOL$1, FBSTRING* PATH$1, int64* RELYING_ON_SYSTEM$1 )
{
	label$105:;
	static int64 LASTTOOL$1 = -1ll;
	static int64 LAST_RELYING_ON_SYSTEM$1;
	static FBSTRING LASTPATH$1;
	if( LASTTOOL$1 != TOOL$1 ) goto label$108;
	{
		fb_StrAssign( (void*)PATH$1, -1ll, (void*)&LASTPATH$1, -1ll, 0 );
		*RELYING_ON_SYSTEM$1 = LAST_RELYING_ON_SYSTEM$1;
		goto label$106;
	}
	label$108:;
	label$107:;
	*RELYING_ON_SYSTEM$1 = 0ll;
	FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4ll & 63ll))) );
	FBSTRING* vr$5 = fb_StrUcase2( (FBSTRING*)vr$4, 0 );
	FBSTRING* vr$6 = fb_GetEnviron( (FBSTRING*)vr$5 );
	fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$6, -1ll, 0 );
	int64 vr$7 = fb_StrLen( (void*)PATH$1, -1ll );
	if( vr$7 != 0ll ) goto label$110;
	{
		FBSTRING TMP$68$2;
		FBSTRING TMP$69$2;
		__builtin_memset( &TMP$68$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$68$2, (void*)((uint8*)&FBC$ + 2845ll), 261ll, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4ll & 63ll))), 16ll );
		__builtin_memset( &TMP$69$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$69$2, (void*)vr$13, -1ll, (void*)".exe", 5ll );
		fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$16, -1ll, 0 );
		int64 vr$18 = HFILEEXISTS( (uint8*)*(uint8**)PATH$1 );
		if( vr$18 != 0ll ) goto label$112;
		{
			int64 vr$19 = FBGETOPTION( 3ll );
			if( vr$19 == 11ll ) goto label$114;
			{
				FBSTRING TMP$70$4;
				FBSTRING TMP$71$4;
				__builtin_memset( &TMP$70$4, 0, 24ll );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$70$4, (void*)((uint8*)&FBC$ + 2295ll), 129ll, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4ll & 63ll))), 16ll );
				__builtin_memset( &TMP$71$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$71$4, (void*)vr$25, -1ll, (void*)".exe", 5ll );
				fb_StrAssign( (void*)PATH$1, -1ll, (void*)vr$28, -1ll, 0 );
			}
			goto label$113;
			label$114:;
			{
				fb_StrAssign( (void*)PATH$1, -1ll, (void*)((uint8*)TOOLNAMES$ + (TOOL$1 << (4ll & 63ll))), 16ll, 0 );
			}
			label$113:;
			*RELYING_ON_SYSTEM$1 = -1ll;
		}
		label$112:;
		label$111:;
	}
	label$110:;
	label$109:;
	LASTTOOL$1 = TOOL$1;
	fb_StrAssign( (void*)&LASTPATH$1, -1ll, (void*)PATH$1, -1ll, 0 );
	LAST_RELYING_ON_SYSTEM$1 = *RELYING_ON_SYSTEM$1;
	label$106:;
}

static int64 FBCRUNBIN( uint8* ACTION$1, int64 TOOL$1, FBSTRING* LN$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$115:;
	int64 RESULT$1;
	int64 RELYING_ON_SYSTEM$1;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 24ll );
	FBCFINDBIN( TOOL$1, &PATH$1, &RELYING_ON_SYSTEM$1 );
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$118;
	{
		FBSTRING TMP$73$2;
		FBSTRING TMP$75$2;
		FBSTRING TMP$76$2;
		__builtin_memset( &TMP$73$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$73$2, (void*)ACTION$1, 0ll, (void*)": ", 3ll );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		__builtin_memset( &TMP$75$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$75$2, (void*)&PATH$1, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$76$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$76$2, (void*)vr$10, -1ll, (void*)LN$1, -1ll );
		fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	}
	label$118:;
	label$117:;
	if( RELYING_ON_SYSTEM$1 != 0ll ) goto label$120;
	{
		int32 vr$15 = fb_Exec( (FBSTRING*)&PATH$1, (FBSTRING*)LN$1 );
		RESULT$1 = (int64)vr$15;
	}
	goto label$119;
	label$120:;
	{
		FBSTRING TMP$77$2;
		FBSTRING TMP$78$2;
		__builtin_memset( &TMP$77$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$77$2, (void*)&PATH$1, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$78$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$78$2, (void*)vr$20, -1ll, (void*)LN$1, -1ll );
		int32 vr$24 = fb_Shell( (FBSTRING*)vr$23 );
		RESULT$1 = (int64)vr$24;
	}
	label$119:;
	if( RESULT$1 != 0ll ) goto label$122;
	{
		fb$result$1 = -1ll;
	}
	goto label$121;
	label$122:;
	if( RESULT$1 >= 0ll ) goto label$123;
	{
		ERRREPORTEX( 91ll, (uint8*)*(uint8**)&PATH$1, -1ll, 6ll, (uint8*)0ull );
	}
	goto label$121;
	label$123:;
	{
		if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$125;
		{
			FBSTRING TMP$81$3;
			FBSTRING TMP$82$3;
			FBSTRING TMP$83$3;
			FBSTRING TMP$84$3;
			FBSTRING* vr$26 = fb_LongintToStr( RESULT$1 );
			__builtin_memset( &TMP$81$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$81$3, (void*)ACTION$1, 0ll, (void*)" failed: '", 11ll );
			__builtin_memset( &TMP$82$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$82$3, (void*)vr$30, -1ll, (void*)&PATH$1, -1ll );
			__builtin_memset( &TMP$83$3, 0, 24ll );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$83$3, (void*)vr$33, -1ll, (void*)"' terminated with exit code ", 29ll );
			__builtin_memset( &TMP$84$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$84$3, (void*)vr$36, -1ll, (void*)vr$26, -1ll );
			fb_PrintString( 0, (FBSTRING*)vr$39, 1 );
		}
		label$125:;
		label$124:;
	}
	label$121:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$116:;
	return fb$result$1;
}

static int64 HPUTLDARGSINTOFILE( FBSTRING* LDCLINE$1 )
{
	int64 TMP$88$1;
	FBSTRING TMP$94$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$126:;
	FBSTRING ARGSFILE$1;
	__builtin_memset( &ARGSFILE$1, 0, 24ll );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	int64 F$1;
	FBSTRING* vr$4 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 856ll) );
	fb_StrAssign( (void*)&ARGSFILE$1, -1ll, (void*)vr$4, -1ll, 0 );
	fb_StrConcatAssign( (void*)&ARGSFILE$1, -1ll, (void*)"ldopt.tmp", 10ll, 0 );
	int32 vr$7 = fb_FileFree(  );
	F$1 = (int64)vr$7;
	int32 vr$11 = fb_FileOpen( (FBSTRING*)&ARGSFILE$1, 3u, 0u, 0u, (int32)F$1, 0 );
	if( (int64)vr$11 == 0ll ) goto label$129;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		fb_StrDelete( (FBSTRING*)&ARGSFILE$1 );
		goto label$127;
	}
	label$129:;
	label$128:;
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)LDCLINE$1, -1ll, 0 );
	FBSTRING* vr$16 = HREPLACE( (uint8*)*(uint8**)&LN$1, (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$16, -1ll, 0 );
	TMP$88$1 = F$1;
	fb_PrintString( (int32)TMP$88$1, (FBSTRING*)&LN$1, 1 );
	int32 vr$21 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$21 == 0ll ) goto label$130;
	void* vr$23 = fb_ErrorThrowAt( 475, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$23;
	label$130:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$132;
	{
		FBCADDTEMP( &ARGSFILE$1 );
	}
	label$132:;
	label$131:;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$134;
	{
		FBSTRING TMP$91$2;
		FBSTRING TMP$92$2;
		__builtin_memset( &TMP$91$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$91$2, (void*)"ld options in '", 16ll, (void*)&ARGSFILE$1, -1ll );
		__builtin_memset( &TMP$92$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$92$2, (void*)vr$28, -1ll, (void*)"': ", 4ll );
		fb_PrintString( 0, (FBSTRING*)vr$31, 2 );
		fb_PrintString( 0, (FBSTRING*)LDCLINE$1, 1 );
	}
	label$134:;
	label$133:;
	__builtin_memset( &TMP$94$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$94$1, (void*)"@", 2ll, (void*)&ARGSFILE$1, -1ll );
	fb_StrAssign( (void*)LDCLINE$1, -1ll, (void*)vr$35, -1ll, 0 );
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&ARGSFILE$1 );
	label$127:;
	return fb$result$1;
}

static int64 CLEARDEFLIST( FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$96$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$135:;
	int64 FI$1;
	int32 vr$1 = fb_FileFree(  );
	FI$1 = (int64)vr$1;
	int32 vr$4 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 2u, 0u, 0u, (int32)FI$1, 0 );
	if( (int64)vr$4 == 0ll ) goto label$138;
	{
		fb$result$1 = 0ll;
		goto label$136;
	}
	label$138:;
	label$137:;
	FBSTRING CLEANED$1;
	FBSTRING* vr$6 = HSTRIPEXT( DEFFILE$1 );
	__builtin_memset( &TMP$96$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$96$1, (void*)vr$6, -1ll, (void*)".clean.def", 11ll );
	fb_StrInit( (void*)&CLEANED$1, -1ll, (void*)vr$9, -1ll, 0 );
	int64 FO$1;
	int32 vr$11 = fb_FileFree(  );
	FO$1 = (int64)vr$11;
	int32 vr$15 = fb_FileOpen( (FBSTRING*)&CLEANED$1, 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$15 == 0ll ) goto label$140;
	{
		int32 vr$18 = fb_FileClose( (int32)FI$1 );
		if( (int64)vr$18 == 0ll ) goto label$141;
		void* vr$20 = fb_ErrorThrowAt( 500, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
		goto *vr$20;
		label$141:;
		fb$result$1 = 0ll;
		fb_StrDelete( (FBSTRING*)&CLEANED$1 );
		goto label$136;
	}
	label$140:;
	label$139:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	label$142:;
	int32 vr$24 = fb_FileEof( (int32)FI$1 );
	if( (int64)vr$24 != 0ll ) goto label$143;
	{
		int64 TMP$98$2;
		fb_FileLineInput( (int32)FI$1, (void*)&LN$1, -1ll, 0 );
		FBSTRING* vr$29 = fb_RIGHT( (FBSTRING*)&LN$1, 4ll );
		int32 vr$30 = fb_StrCompare( (void*)vr$29, -1ll, (void*)"DATA", 5ll );
		if( (int64)vr$30 != 0ll ) goto label$145;
		{
			int64 vr$33 = fb_StrLen( (void*)&LN$1, -1ll );
			FBSTRING* vr$36 = fb_LEFT( (FBSTRING*)&LN$1, vr$33 + -4ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$36, -1ll, 0 );
		}
		label$145:;
		label$144:;
		TMP$98$2 = FO$1;
		fb_PrintString( (int32)TMP$98$2, (FBSTRING*)&LN$1, 1 );
	}
	goto label$142;
	label$143:;
	int32 vr$41 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$41 == 0ll ) goto label$146;
	void* vr$43 = fb_ErrorThrowAt( 515, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$43;
	label$146:;
	int32 vr$45 = fb_FileClose( (int32)FI$1 );
	if( (int64)vr$45 == 0ll ) goto label$147;
	void* vr$47 = fb_ErrorThrowAt( 516, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$47;
	label$147:;
	fb_FileKill( (FBSTRING*)DEFFILE$1 );
	int32 vr$49 = rename( (uint8*)*(uint8**)&CLEANED$1, (uint8*)*(uint8**)DEFFILE$1 );
	fb$result$1 = (int64)-((int64)vr$49 == 0ll);
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	goto label$136;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	label$136:;
	return fb$result$1;
}

static int64 HGENERATEEMPTYDEFFILE( FBSTRING* DEFFILE$1 )
{
	int32 TMP$99$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$148:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 3u, 0u, 0u, F$1, 0 );
	if( (int64)vr$2 == 0ll ) goto label$151;
	{
		goto label$149;
	}
	label$151:;
	label$150:;
	TMP$99$1 = F$1;
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"EXPORTS", 7ll );
	fb_PrintString( TMP$99$1, (FBSTRING*)vr$4, 1 );
	int32 vr$5 = fb_FileClose( F$1 );
	if( (int64)vr$5 == 0ll ) goto label$152;
	void* vr$7 = fb_ErrorThrowAt( 530, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$7;
	label$152:;
	fb$result$1 = -1ll;
	label$149:;
	return fb$result$1;
}

static int64 MAKEIMPLIB( FBSTRING* DLLNAME$1, FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$103$1;
	FBSTRING TMP$104$1;
	FBSTRING TMP$105$1;
	FBSTRING TMP$109$1;
	FBSTRING TMP$110$1;
	FBSTRING TMP$111$1;
	FBSTRING TMP$112$1;
	FBSTRING TMP$113$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$153:;
	int64 vr$1 = CLEARDEFLIST( DEFFILE$1 );
	if( vr$1 != 0ll ) goto label$156;
	{
		goto label$154;
	}
	label$156:;
	label$155:;
	int64 vr$3 = fb_FileLen( (uint8*)*(uint8**)DEFFILE$1 );
	if( vr$3 != 0ll ) goto label$158;
	{
		int64 vr$4 = HGENERATEEMPTYDEFFILE( DEFFILE$1 );
		if( vr$4 != 0ll ) goto label$160;
		{
			goto label$154;
		}
		label$160:;
		label$159:;
	}
	label$158:;
	label$157:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	__builtin_memset( &TMP$103$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$103$1, (void*)"--def \x22", 8ll, (void*)DEFFILE$1, -1ll );
	__builtin_memset( &TMP$104$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$104$1, (void*)vr$8, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$105$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$105$1, (void*)&LN$1, -1ll, (void*)vr$11, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$15, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" --dllname \x22", 13ll, 0 );
	FBSTRING* vr$19 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 856ll) );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$19, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$23 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 856ll) );
	__builtin_memset( &TMP$109$1, 0, 24ll );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$109$1, (void*)" --output-lib \x22", 16ll, (void*)vr$23, -1ll );
	__builtin_memset( &TMP$110$1, 0, 24ll );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$110$1, (void*)vr$26, -1ll, (void*)"lib", 4ll );
	__builtin_memset( &TMP$111$1, 0, 24ll );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$111$1, (void*)vr$29, -1ll, (void*)DLLNAME$1, -1ll );
	__builtin_memset( &TMP$112$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$112$1, (void*)vr$32, -1ll, (void*)".dll.a\x22", 8ll );
	__builtin_memset( &TMP$113$1, 0, 24ll );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$113$1, (void*)&LN$1, -1ll, (void*)vr$35, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$39, -1ll, 0 );
	int64 vr$42 = FBCRUNBIN( (uint8*)"creating import library", 5ll, &LN$1 );
	if( vr$42 != 0ll ) goto label$162;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$154;
	}
	label$162:;
	label$161:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$164;
	{
		FBCADDTEMP( DEFFILE$1 );
	}
	label$164:;
	label$163:;
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$154:;
	return fb$result$1;
}

static FBSTRING* HFINDLIB( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$165:;
	FBSTRING FOUND$1;
	FBSTRING* vr$1 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrInit( (void*)&FOUND$1, -1ll, (void*)vr$1, -1ll, 0 );
	int64 vr$4 = fb_StrLen( (void*)&FOUND$1, -1ll );
	if( vr$4 <= 0ll ) goto label$168;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)" \x22", 3ll, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)&FOUND$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)"\x22", 2ll, 0 );
	}
	goto label$167;
	label$168:;
	{
		ERRREPORTEX( 23ll, (uint8*)FILE$1, -1ll, 1ll, (uint8*)0ull );
	}
	label$167:;
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$166:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

static int64 FBCLINKERISGOLD( void )
{
	int64 TMP$116$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$169:;
	FBSTRING LDCMD$1;
	__builtin_memset( &LDCMD$1, 0, 24ll );
	TMP$116$1 = 0ll;
	FBCFINDBIN( 2ll, &LDCMD$1, &TMP$116$1 );
	fb_StrConcatAssign( (void*)&LDCMD$1, -1ll, (void*)" --version", 11ll, 0 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"GNU gold", 8ll );
	FBSTRING* vr$7 = HGET1STOUTPUTLINEFROMCOMMAND( &LDCMD$1 );
	int64 vr$8 = fb_StrInstr( 1ll, (FBSTRING*)vr$7, (FBSTRING*)vr$5 );
	fb$result$1 = (int64)-(vr$8 > 0ll);
	fb_StrDelete( (FBSTRING*)&LDCMD$1 );
	goto label$170;
	fb_StrDelete( (FBSTRING*)&LDCMD$1 );
	label$170:;
	return fb$result$1;
}

static int64 FBCISUSINGGOLDLINKER( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$171:;
	int64 vr$1 = FBTARGETSUPPORTSELF(  );
	if( vr$1 == 0ll ) goto label$174;
	{
		int64 vr$2 = FBCLINKERISGOLD(  );
		fb$result$1 = vr$2;
		goto label$172;
	}
	label$174:;
	label$173:;
	fb$result$1 = 0ll;
	goto label$172;
	label$172:;
	return fb$result$1;
}

static int64 HLINKFILES( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$175:;
	FBSTRING LDCLINE$1;
	__builtin_memset( &LDCLINE$1, 0, 24ll );
	FBSTRING DLLNAME$1;
	__builtin_memset( &DLLNAME$1, 0, 24ll );
	FBSTRING DEFFILE$1;
	__builtin_memset( &DEFFILE$1, 0, 24ll );
	fb$result$1 = 0ll;
	HSETOUTNAME(  );
	{
		int64 TMP$119$2;
		int64 vr$4 = FBGETOPTION( 3ll );
		TMP$119$2 = vr$4;
		if( TMP$119$2 != 0ll ) goto label$178;
		label$179:;
		{
			{
				int64 TMP$120$4;
				int64 vr$5 = FBGETCPUFAMILY(  );
				TMP$120$4 = vr$5;
				if( TMP$120$4 != 0ll ) goto label$181;
				label$182:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m i386pe ", 11ll, 0 );
				}
				goto label$180;
				label$181:;
				if( TMP$120$4 != 1ll ) goto label$183;
				label$184:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m i386pep ", 12ll, 0 );
				}
				label$183:;
				label$180:;
			}
		}
		goto label$177;
		label$178:;
		if( TMP$119$2 != 2ll ) goto label$185;
		label$186:;
		{
			{
				int64 TMP$123$4;
				int64 vr$8 = FBGETCPUFAMILY(  );
				TMP$123$4 = vr$8;
				if( TMP$123$4 != 0ll ) goto label$188;
				label$189:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m elf_i386 ", 13ll, 0 );
				}
				goto label$187;
				label$188:;
				if( TMP$123$4 != 1ll ) goto label$190;
				label$191:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m elf_x86_64 ", 15ll, 0 );
				}
				goto label$187;
				label$190:;
				if( TMP$123$4 != 2ll ) goto label$192;
				label$193:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-m armelf_linux_eabi ", 22ll, 0 );
				}
				label$192:;
				label$187:;
			}
		}
		label$185:;
		label$177:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"-o \x22", 5ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
	{
		uint64 TMP$130$2;
		int64 vr$16 = FBGETOPTION( 3ll );
		TMP$130$2 = (uint64)vr$16;
		goto label$195;
		label$196:;
		{
			int64 vr$18 = fb_StrLen( (void*)((uint8*)&FBC$ + 1653ll), 129ll );
			if( vr$18 != 0ll ) goto label$198;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1653ll), 129ll, (void*)"console", 8ll, 0 );
			}
			goto label$197;
			label$198:;
			{
				int32 vr$21 = fb_StrCompare( (void*)((uint8*)&FBC$ + 1653ll), 129ll, (void*)"gui", 4ll );
				if( (int64)vr$21 != 0ll ) goto label$200;
				{
					fb_StrAssign( (void*)((uint8*)&FBC$ + 1653ll), 129ll, (void*)"windows", 8ll, 0 );
				}
				label$200:;
				label$199:;
			}
			label$197:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -subsystem ", 13ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 1653ll), 129ll, 0 );
			int64 vr$27 = FBGETOPTION( 0ll );
			if( vr$27 != 2ll ) goto label$202;
			{
				FBSTRING TMP$135$4;
				FBSTRING TMP$136$4;
				__builtin_memset( &TMP$136$4, 0, 24ll );
				__builtin_memset( &TMP$135$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$135$4, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
				FBSTRING* vr$33 = HSTRIPEXT( &TMP$135$4 );
				fb_StrAssign( (void*)&TMP$136$4, -1ll, (void*)vr$33, -1ll, 0 );
				FBSTRING* vr$35 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$136$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$35, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$136$4 );
				fb_StrDelete( (FBSTRING*)&TMP$135$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --dll --enable-stdcall-fixup", 30ll, 0 );
				int64 vr$40 = FBGETCPUFAMILY(  );
				if( vr$40 != 0ll ) goto label$204;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e _DllMainCRTStartup@12", 26ll, 0 );
				}
				goto label$203;
				label$204:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e DllMainCRTStartup", 22ll, 0 );
				}
				label$203:;
			}
			label$202:;
			label$201:;
		}
		goto label$194;
		label$205:;
		{
			int64 vr$43 = FBGETOPTION( 0ll );
			if( vr$43 != 2ll ) goto label$207;
			{
				FBSTRING TMP$140$4;
				FBSTRING TMP$141$4;
				__builtin_memset( &TMP$141$4, 0, 24ll );
				__builtin_memset( &TMP$140$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$140$4, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
				FBSTRING* vr$49 = HSTRIPEXT( &TMP$140$4 );
				fb_StrAssign( (void*)&TMP$141$4, -1ll, (void*)vr$49, -1ll, 0 );
				FBSTRING* vr$51 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$141$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$51, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$141$4 );
				fb_StrDelete( (FBSTRING*)&TMP$140$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -shared -h", 12ll, 0 );
				FBSTRING* vr$57 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 856ll) );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$57, -1ll, 0 );
				FBSTRING* vr$60 = fb_LEFT( (FBSTRING*)&DLLNAME$1, 3ll );
				int32 vr$61 = fb_StrCompare( (void*)vr$60, -1ll, (void*)"lib", 4ll );
				if( (int64)vr$61 != 0ll ) goto label$209;
				{
					int64 vr$64 = fb_StrLen( (void*)&DLLNAME$1, -1ll );
					FBSTRING* vr$67 = fb_RIGHT( (FBSTRING*)&DLLNAME$1, vr$64 + -3ll );
					fb_StrAssign( (void*)&DLLNAME$1, -1ll, (void*)vr$67, -1ll, 0 );
				}
				label$209:;
				label$208:;
			}
			goto label$206;
			label$207:;
			{
				{
					uint64 TMP$143$5;
					int64 vr$69 = FBGETOPTION( 3ll );
					TMP$143$5 = (uint64)vr$69;
					goto label$211;
					label$212:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /libexec/ld-elf.so.1", 38ll, 0 );
					}
					goto label$210;
					label$213:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /libexec/ld-elf.so.2", 38ll, 0 );
					}
					goto label$210;
					label$214:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/64/ld.so.1", 33ll, 0 );
					}
					goto label$210;
					label$215:;
					{
						{
							int64 TMP$147$7;
							int64 vr$73 = FBGETCPUFAMILY(  );
							TMP$147$7 = vr$73;
							if( TMP$147$7 != 0ll ) goto label$217;
							label$218:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux.so.2", 36ll, 0 );
							}
							goto label$216;
							label$217:;
							if( TMP$147$7 != 1ll ) goto label$219;
							label$220:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib64/ld-linux-x86-64.so.2", 45ll, 0 );
							}
							goto label$216;
							label$219:;
							if( TMP$147$7 != 2ll ) goto label$221;
							label$222:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux-armhf.so.3", 42ll, 0 );
							}
							goto label$216;
							label$221:;
							if( TMP$147$7 != 3ll ) goto label$223;
							label$224:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /lib/ld-linux-aarch64.so.1", 44ll, 0 );
							}
							label$223:;
							label$216:;
						}
					}
					goto label$210;
					label$225:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /usr/libexec/ld.elf_so", 40ll, 0 );
					}
					goto label$210;
					label$226:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -dynamic-linker /usr/libexec/ld.so", 36ll, 0 );
					}
					goto label$210;
					label$211:;
					static const void* tmp$729[9ll] = {
						&&label$215,
						&&label$210,
						&&label$210,
						&&label$212,
						&&label$213,
						&&label$214,
						&&label$226,
						&&label$210,
						&&label$225,
					};
					if( (TMP$143$5 - 2ull) > 8ull ) goto label$210;
					goto *tmp$729[TMP$143$5 - 2ull];
					label$210:;
				}
			}
			label$206:;
			int64 vr$80 = FBGETOPTION( 0ll );
			int64 vr$82 = FBGETOPTION( 28ll );
			if( ((int64)-(vr$80 == 2ll) | vr$82) == 0ll ) goto label$228;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --export-dynamic", 18ll, 0 );
			}
			label$228:;
			label$227:;
		}
		goto label$194;
		label$229:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared", 66ll, 0 );
		}
		goto label$194;
		label$230:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -O", 4ll, 0 );
			int64 vr$87 = FBGETOPTION( 8ll );
			FBSTRING* vr$88 = fb_LongintToStr( vr$87 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$88, -1ll, 0 );
			static uint8 EMSCRIPTEN_OPTIONS$3[4][32] = { "CASE_INSENSITIVE_FS=1", "TOTAL_MEMORY=67108864", "ALLOW_MEMORY_GROWTH=1", "RETAIN_COMPILER_SETTINGS=1" };
			static struct $8FBARRAY1IcE tmp$161$3 = { (uint8*)EMSCRIPTEN_OPTIONS$3, (uint8*)EMSCRIPTEN_OPTIONS$3, 128ll, 32ll, 1ll, 49ll, { { 4ll, 0ll, 3ll } } };
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Wno-warn-absolute-paths", 26ll, 0 );
			{
				int64 I$4;
				I$4 = 0ll;
				label$234:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -s ", 5ll, 0 );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)EMSCRIPTEN_OPTIONS$3 + (I$4 << (5ll & 63ll))), 32ll, 0 );
				}
				label$232:;
				I$4 = I$4 + 1ll;
				label$231:;
				if( I$4 <= 3ll ) goto label$234;
				label$233:;
			}
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --shell-file", 14ll, 0 );
			FBSTRING* vr$97 = HFINDLIB( (uint8*)"fb_shell.html" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$97, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --post-js", 11ll, 0 );
			FBSTRING* vr$100 = HFINDLIB( (uint8*)"fb_rtlib.js" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$100, -1ll, 0 );
			int64 vr$103 = fb_StrLen( (void*)((uint8*)&FBC$ + 1653ll), 129ll );
			if( vr$103 != 0ll ) goto label$236;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --post-js", 11ll, 0 );
				FBSTRING* vr$105 = HFINDLIB( (uint8*)"termlib_min.js" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$105, -1ll, 0 );
			}
			label$236:;
			label$235:;
		}
		goto label$194;
		label$195:;
		static const void* tmp$730[12ll] = {
			&&label$196,
			&&label$196,
			&&label$205,
			&&label$194,
			&&label$229,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$205,
			&&label$230,
		};
		if( TMP$130$2 > 11ull ) goto label$194;
		goto *tmp$730[TMP$130$2 - 0ull];
		label$194:;
	}
	int64 vr$107 = FBGETOPTION( 3ll );
	if( vr$107 != 3ll ) goto label$238;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -T \x22", 6ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3367ll), 261ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x5Ci386go32.x\x22", 13ll, 0 );
	}
	goto label$237;
	label$238:;
	{
		int64 vr$112 = FBGETOPTION( 34ll );
		int64 vr$113 = FBGETOPTION( 3ll );
		int64 vr$116 = FBGETOPTION( 3ll );
		int64 vr$119 = FBCISUSINGGOLDLINKER(  );
		if( (((vr$112 & (int64)-(vr$113 != 9ll)) & (int64)-(vr$116 != 11ll)) & ~vr$119) == 0ll ) goto label$240;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3367ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x5C" "fbextra.x\x22", 12ll, 0 );
		}
		label$240:;
		label$239:;
	}
	label$237:;
	{
		uint64 TMP$174$2;
		int64 vr$126 = FBGETOPTION( 3ll );
		TMP$174$2 = (uint64)vr$126;
		goto label$242;
		label$243:;
		{
			int64 STACKSIZE$3;
			int64 vr$127 = FBGETOPTION( 33ll );
			STACKSIZE$3 = vr$127;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --stack ", 10ll, 0 );
			FBSTRING* vr$129 = fb_LongintToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$129, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)",", 2ll, 0 );
			FBSTRING* vr$132 = fb_LongintToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$132, -1ll, 0 );
			int64 vr$134 = FBGETOPTION( 0ll );
			if( vr$134 != 2ll ) goto label$245;
			{
				FBSTRING TMP$177$4;
				__builtin_memset( &TMP$177$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$177$4, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
				FBSTRING* vr$139 = HSTRIPEXT( &TMP$177$4 );
				fb_StrAssign( (void*)&DEFFILE$1, -1ll, (void*)vr$139, -1ll, 0 );
				fb_StrConcatAssign( (void*)&DEFFILE$1, -1ll, (void*)".def", 5ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$177$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" --output-def \x22", 16ll, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)&DEFFILE$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
			}
			label$245:;
			label$244:;
		}
		goto label$241;
		label$246:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -e _WinMainCRTStartup", 23ll, 0 );
		}
		goto label$241;
		label$242:;
		static const void* tmp$731[5ll] = {
			&&label$243,
			&&label$243,
			&&label$241,
			&&label$241,
			&&label$246,
		};
		if( TMP$174$2 > 4ull ) goto label$241;
		goto *tmp$731[TMP$174$2 - 0ull];
		label$241:;
	}
	if( *(int64*)((uint8*)&FBC$ + 2568ll) == 0ll ) goto label$248;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Bstatic", 10ll, 0 );
	}
	label$248:;
	label$247:;
	int64 vr$150 = fb_StrLen( (void*)((uint8*)&FBC$ + 1392ll), 261ll );
	if( vr$150 <= 0ll ) goto label$250;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -Map ", 7ll, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 1392ll), 261ll, 0 );
	}
	label$250:;
	label$249:;
	int64 vr$154 = FBGETOPTION( 13ll );
	if( vr$154 != 0ll ) goto label$252;
	{
		int64 vr$155 = FBGETOPTION( 21ll );
		if( vr$155 != 0ll ) goto label$254;
		{
			int64 vr$156 = FBGETOPTION( 3ll );
			int64 vr$158 = FBGETOPTION( 3ll );
			if( ((int64)-(vr$156 != 9ll) & (int64)-(vr$158 != 11ll)) == 0ll ) goto label$256;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -s", 4ll, 0 );
			}
			label$256:;
			label$255:;
		}
		label$254:;
		label$253:;
	}
	label$252:;
	label$251:;
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$163 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 768ll) );
		I$2 = (struct $11TSTRSETITEM*)vr$163;
		FBSTRING L$2;
		__builtin_memset( &L$2, 0, 24ll );
		int64 vr$165 = FBGETOPTION( 3ll );
		if( vr$165 == 11ll ) goto label$258;
		{
			fb_StrAssign( (void*)&L$2, -1ll, (void*)" -L \x22", 6ll, 0 );
		}
		goto label$257;
		label$258:;
		{
			fb_StrAssign( (void*)&L$2, -1ll, (void*)" -L\x22", 5ll, 0 );
		}
		label$257:;
		label$259:;
		if( I$2 == (struct $11TSTRSETITEM*)0ull ) goto label$260;
		{
			FBSTRING TMP$186$3;
			FBSTRING TMP$187$3;
			FBSTRING TMP$188$3;
			__builtin_memset( &TMP$186$3, 0, 24ll );
			FBSTRING* vr$173 = fb_StrConcat( &TMP$186$3, (void*)&L$2, -1ll, (void*)I$2, -1ll );
			__builtin_memset( &TMP$187$3, 0, 24ll );
			FBSTRING* vr$176 = fb_StrConcat( &TMP$187$3, (void*)vr$173, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$188$3, 0, 24ll );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$188$3, (void*)&LDCLINE$1, -1ll, (void*)vr$176, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$180, -1ll, 0 );
			void* vr$182 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$182;
		}
		goto label$259;
		label$260:;
		fb_StrDelete( (FBSTRING*)&L$2 );
	}
	{
		uint64 TMP$189$2;
		int64 vr$184 = FBGETOPTION( 3ll );
		TMP$189$2 = (uint64)vr$184;
		goto label$262;
		label$263:;
		{
			int64 vr$185 = FBGETOPTION( 0ll );
			if( vr$185 != 2ll ) goto label$265;
			{
				FBSTRING* vr$186 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$186, -1ll, 0 );
			}
			goto label$264;
			label$265:;
			{
				FBSTRING* vr$188 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$188, -1ll, 0 );
				int64 vr$190 = FBGETOPTION( 21ll );
				if( vr$190 == 0ll ) goto label$267;
				{
					FBSTRING* vr$191 = HFINDLIB( (uint8*)"gcrt0.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$191, -1ll, 0 );
				}
				label$267:;
				label$266:;
			}
			label$264:;
		}
		goto label$261;
		label$268:;
		{
			int64 vr$193 = FBGETOPTION( 0ll );
			if( vr$193 != 2ll ) goto label$270;
			{
				FBSTRING* vr$194 = HFINDLIB( (uint8*)"dllcrt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$194, -1ll, 0 );
			}
			goto label$269;
			label$270:;
			{
				FBSTRING* vr$196 = HFINDLIB( (uint8*)"crt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$196, -1ll, 0 );
				int64 vr$198 = FBGETOPTION( 21ll );
				if( vr$198 == 0ll ) goto label$272;
				{
					FBSTRING* vr$199 = HFINDLIB( (uint8*)"gcrt2.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$199, -1ll, 0 );
				}
				label$272:;
				label$271:;
			}
			label$269:;
			FBSTRING* vr$201 = HFINDLIB( (uint8*)"crtbegin.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$201, -1ll, 0 );
		}
		goto label$261;
		label$273:;
		{
			int64 vr$203 = FBGETOPTION( 21ll );
			if( vr$203 == 0ll ) goto label$275;
			{
				FBSTRING* vr$204 = HFINDLIB( (uint8*)"gcrt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$204, -1ll, 0 );
			}
			goto label$274;
			label$275:;
			{
				FBSTRING* vr$206 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$206, -1ll, 0 );
			}
			label$274:;
		}
		goto label$261;
		label$276:;
		{
			int64 vr$208 = FBGETOPTION( 0ll );
			if( vr$208 != 0ll ) goto label$278;
			{
				int64 vr$209 = FBGETOPTION( 21ll );
				if( vr$209 == 0ll ) goto label$280;
				{
					{
						uint64 TMP$196$6;
						int64 vr$210 = FBGETOPTION( 3ll );
						TMP$196$6 = (uint64)vr$210;
						goto label$282;
						label$283:;
						{
							FBSTRING* vr$211 = HFINDLIB( (uint8*)"gcrt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$211, -1ll, 0 );
						}
						goto label$281;
						label$284:;
						{
							FBSTRING* vr$213 = HFINDLIB( (uint8*)"gcrt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$213, -1ll, 0 );
						}
						goto label$281;
						label$282:;
						static const void* tmp$732[3ll] = {
							&&label$283,
							&&label$284,
							&&label$283,
						};
						if( (TMP$196$6 - 8ull) > 2ull ) goto label$284;
						goto *tmp$732[TMP$196$6 - 8ull];
						label$281:;
					}
				}
				goto label$279;
				label$280:;
				{
					{
						uint64 TMP$198$6;
						int64 vr$215 = FBGETOPTION( 3ll );
						TMP$198$6 = (uint64)vr$215;
						goto label$286;
						label$287:;
						{
							FBSTRING* vr$216 = HFINDLIB( (uint8*)"crt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$216, -1ll, 0 );
						}
						goto label$285;
						label$288:;
						{
							FBSTRING* vr$218 = HFINDLIB( (uint8*)"crt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$218, -1ll, 0 );
						}
						goto label$285;
						label$286:;
						static const void* tmp$733[3ll] = {
							&&label$287,
							&&label$288,
							&&label$287,
						};
						if( (TMP$198$6 - 8ull) > 2ull ) goto label$288;
						goto *tmp$733[TMP$198$6 - 8ull];
						label$285:;
					}
				}
				label$279:;
			}
			label$278:;
			label$277:;
			int64 vr$220 = FBGETOPTION( 3ll );
			if( vr$220 == 9ll ) goto label$290;
			{
				int64 vr$221 = FBGETOPTION( 3ll );
				if( vr$221 == 8ll ) goto label$292;
				{
					FBSTRING* vr$222 = HFINDLIB( (uint8*)"crti.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$222, -1ll, 0 );
				}
				label$292:;
				label$291:;
				int64 vr$224 = FBGETOPTION( 32ll );
				if( vr$224 == 0ll ) goto label$294;
				{
					FBSTRING* vr$225 = HFINDLIB( (uint8*)"crtbeginS.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$225, -1ll, 0 );
				}
				goto label$293;
				label$294:;
				{
					FBSTRING* vr$227 = HFINDLIB( (uint8*)"crtbegin.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$227, -1ll, 0 );
				}
				label$293:;
			}
			label$290:;
			label$289:;
		}
		goto label$261;
		label$295:;
		{
			FBSTRING* vr$229 = HFINDLIB( (uint8*)"crt0.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$229, -1ll, 0 );
		}
		goto label$261;
		label$262:;
		static const void* tmp$734[11ll] = {
			&&label$268,
			&&label$263,
			&&label$276,
			&&label$273,
			&&label$295,
			&&label$276,
			&&label$276,
			&&label$276,
			&&label$276,
			&&label$276,
			&&label$276,
		};
		if( TMP$189$2 > 10ull ) goto label$261;
		goto *tmp$734[TMP$189$2 - 0ull];
		label$261:;
	}
	if( *(int64*)((uint8*)&FBC$ + 2560ll) != 0ll ) goto label$297;
	{
		int64 vr$231 = FBGETOPTION( 3ll );
		if( vr$231 == 11ll ) goto label$299;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 3367ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x5C", 2ll, 0 );
			int64 vr$236 = FBGETOPTION( 32ll );
			if( vr$236 == 0ll ) goto label$301;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"fbrt0pic.o", 11ll, 0 );
			}
			goto label$300;
			label$301:;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"fbrt0.o", 8ll, 0 );
			}
			label$300:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)"\x22", 2ll, 0 );
		}
		label$299:;
		label$298:;
	}
	label$297:;
	label$296:;
	{
		FBSTRING* OBJFILE$2;
		void* vr$241 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
		OBJFILE$2 = (FBSTRING*)vr$241;
		label$302:;
		if( OBJFILE$2 == (FBSTRING*)0ull ) goto label$303;
		{
			FBSTRING TMP$204$3;
			FBSTRING TMP$205$3;
			FBSTRING TMP$206$3;
			__builtin_memset( &TMP$204$3, 0, 24ll );
			FBSTRING* vr$244 = fb_StrConcat( &TMP$204$3, (void*)" \x22", 3ll, (void*)OBJFILE$2, -1ll );
			__builtin_memset( &TMP$205$3, 0, 24ll );
			FBSTRING* vr$247 = fb_StrConcat( &TMP$205$3, (void*)vr$244, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$206$3, 0, 24ll );
			FBSTRING* vr$251 = fb_StrConcat( &TMP$206$3, (void*)&LDCLINE$1, -1ll, (void*)vr$247, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$251, -1ll, 0 );
			void* vr$253 = LISTGETNEXT( (void*)OBJFILE$2 );
			OBJFILE$2 = (FBSTRING*)vr$253;
		}
		goto label$302;
		label$303:;
	}
	int64 vr$254 = FBGETOPTION( 3ll );
	if( vr$254 == 9ll ) goto label$305;
	{
		int64 vr$255 = FBGETOPTION( 3ll );
		if( vr$255 == 11ll ) goto label$307;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22-(\x22", 6ll, 0 );
		}
		label$307:;
		label$306:;
	}
	label$305:;
	label$304:;
	{
		FBSTRING* LIBFILE$2;
		void* vr$258 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 440ll) );
		LIBFILE$2 = (FBSTRING*)vr$258;
		label$308:;
		if( LIBFILE$2 == (FBSTRING*)0ull ) goto label$309;
		{
			FBSTRING TMP$208$3;
			FBSTRING TMP$209$3;
			FBSTRING TMP$210$3;
			__builtin_memset( &TMP$208$3, 0, 24ll );
			FBSTRING* vr$261 = fb_StrConcat( &TMP$208$3, (void*)" \x22", 3ll, (void*)LIBFILE$2, -1ll );
			__builtin_memset( &TMP$209$3, 0, 24ll );
			FBSTRING* vr$264 = fb_StrConcat( &TMP$209$3, (void*)vr$261, -1ll, (void*)"\x22", 2ll );
			__builtin_memset( &TMP$210$3, 0, 24ll );
			FBSTRING* vr$268 = fb_StrConcat( &TMP$210$3, (void*)&LDCLINE$1, -1ll, (void*)vr$264, -1ll );
			fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$268, -1ll, 0 );
			void* vr$270 = LISTGETNEXT( (void*)LIBFILE$2 );
			LIBFILE$2 = (FBSTRING*)vr$270;
		}
		goto label$308;
		label$309:;
	}
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$272 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 680ll) );
		I$2 = (struct $11TSTRSETITEM*)vr$272;
		int64 CHECKDLLNAME$2;
		int64 vr$273 = FBGETOPTION( 0ll );
		CHECKDLLNAME$2 = (int64)-(vr$273 == 2ll);
		label$310:;
		if( I$2 == (struct $11TSTRSETITEM*)0ull ) goto label$311;
		{
			int64 TMP$211$3;
			if( CHECKDLLNAME$2 == 0ll ) goto label$312;
			int32 vr$278 = fb_StrCompare( (void*)I$2, -1ll, (void*)&DLLNAME$1, -1ll );
			TMP$211$3 = (int64)-((int64)vr$278 != 0ll);
			goto label$1277;
			label$312:;
			TMP$211$3 = -1ll;
			label$1277:;
			if( TMP$211$3 == 0ll ) goto label$314;
			{
				FBSTRING TMP$213$4;
				FBSTRING TMP$214$4;
				__builtin_memset( &TMP$213$4, 0, 24ll );
				FBSTRING* vr$285 = fb_StrConcat( &TMP$213$4, (void*)" -l", 4ll, (void*)I$2, -1ll );
				__builtin_memset( &TMP$214$4, 0, 24ll );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$214$4, (void*)&LDCLINE$1, -1ll, (void*)vr$285, -1ll );
				fb_StrAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$289, -1ll, 0 );
			}
			label$314:;
			label$313:;
			void* vr$291 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$291;
		}
		goto label$310;
		label$311:;
	}
	int64 vr$292 = FBGETOPTION( 3ll );
	if( vr$292 == 9ll ) goto label$316;
	{
		int64 vr$293 = FBGETOPTION( 3ll );
		if( vr$293 == 11ll ) goto label$318;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" \x22-)\x22", 6ll, 0 );
		}
		goto label$317;
		label$318:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -lfb", 6ll, 0 );
		}
		label$317:;
	}
	label$316:;
	label$315:;
	{
		uint64 TMP$217$2;
		int64 vr$296 = FBGETOPTION( 3ll );
		TMP$217$2 = (uint64)vr$296;
		goto label$320;
		label$321:;
		{
			int64 vr$297 = FBGETOPTION( 32ll );
			if( vr$297 == 0ll ) goto label$323;
			{
				FBSTRING* vr$298 = HFINDLIB( (uint8*)"crtendS.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$298, -1ll, 0 );
			}
			goto label$322;
			label$323:;
			{
				FBSTRING* vr$300 = HFINDLIB( (uint8*)"crtend.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$300, -1ll, 0 );
			}
			label$322:;
			int64 vr$302 = FBGETOPTION( 3ll );
			if( vr$302 == 8ll ) goto label$325;
			{
				FBSTRING* vr$303 = HFINDLIB( (uint8*)"crtn.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$303, -1ll, 0 );
			}
			label$325:;
			label$324:;
		}
		goto label$319;
		label$326:;
		{
			FBSTRING* vr$305 = HFINDLIB( (uint8*)"crtend.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)vr$305, -1ll, 0 );
		}
		goto label$319;
		label$320:;
		static const void* tmp$735[11ll] = {
			&&label$326,
			&&label$319,
			&&label$321,
			&&label$319,
			&&label$319,
			&&label$321,
			&&label$321,
			&&label$321,
			&&label$321,
			&&label$319,
			&&label$321,
		};
		if( TMP$217$2 > 10ull ) goto label$319;
		goto *tmp$735[TMP$217$2 - 0ull];
		label$319:;
	}
	int64 vr$307 = FBGETOPTION( 3ll );
	if( vr$307 != 9ll ) goto label$328;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" -macosx_version_min 10.6", 26ll, 0 );
	}
	label$328:;
	label$327:;
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)" ", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1ll, (void*)((uint8*)&FBC$ + 1910ll), 128ll, 0 );
	int64 vr$312 = FBGETOPTION( 3ll );
	int64 vr$315 = fb_StrLen( (void*)&LDCLINE$1, -1ll );
	int64 vr$317 = fb_StrLen( (void*)((uint8*)&FBC$ + 2295ll), 129ll );
	if( ((int64)-(vr$312 == 3ll) | (int64)-(vr$315 > (-vr$317 + 2040ll))) == 0ll ) goto label$330;
	{
		int64 vr$323 = HPUTLDARGSINTOFILE( &LDCLINE$1 );
		if( vr$323 != 0ll ) goto label$332;
		{
			fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
			fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
			fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
			goto label$176;
		}
		label$332:;
		label$331:;
	}
	label$330:;
	label$329:;
	$6TMP$24 LD$1;
	LD$1 = 2ll;
	int64 vr$327 = FBGETOPTION( 3ll );
	if( vr$327 != 11ll ) goto label$334;
	{
		LD$1 = 12ll;
	}
	label$334:;
	label$333:;
	int64 vr$329 = FBCRUNBIN( (uint8*)"linking", LD$1, &LDCLINE$1 );
	if( vr$329 != 0ll ) goto label$336;
	{
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$176;
	}
	label$336:;
	label$335:;
	{
		uint64 TMP$224$2;
		int64 vr$333 = FBGETOPTION( 3ll );
		TMP$224$2 = (uint64)vr$333;
		goto label$338;
		label$339:;
		{
			int32 TMP$225$3;
			int64 F$3;
			int32 vr$334 = fb_FileFree(  );
			F$3 = (int64)vr$334;
			FBSTRING* vr$338 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 856ll) );
			int32 vr$339 = fb_FileOpen( (FBSTRING*)vr$338, 0u, 3u, 0u, (int32)F$3, 0 );
			if( (int64)vr$339 == 0ll ) goto label$341;
			{
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$176;
			}
			label$341:;
			label$340:;
			int64 vr$344 = FBGETOPTION( 33ll );
			TMP$225$3 = (int32)vr$344;
			int32 vr$348 = fb_FilePutLarge( (int32)F$3, 533ll, (void*)&TMP$225$3, 4ull );
			if( (int64)vr$348 == 0ll ) goto label$342;
			void* vr$350 = fb_ErrorThrowAt( 1083, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
			goto *vr$350;
			label$342:;
			int32 vr$352 = fb_FileClose( (int32)F$3 );
			if( (int64)vr$352 == 0ll ) goto label$343;
			void* vr$354 = fb_ErrorThrowAt( 1085, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
			goto *vr$354;
			label$343:;
		}
		goto label$337;
		label$344:;
		{
			int64 vr$355 = FBGETOPTION( 0ll );
			if( vr$355 != 2ll ) goto label$346;
			{
				int64 vr$358 = MAKEIMPLIB( &DLLNAME$1, &DEFFILE$1 );
				if( vr$358 != 0ll ) goto label$348;
				{
					fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
					fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
					fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
					goto label$176;
				}
				label$348:;
				label$347:;
			}
			label$346:;
			label$345:;
		}
		goto label$337;
		label$349:;
		{
			FBSTRING TMP$237$3;
			int64 TMP$242$3;
			FBSTRING TMP$243$3;
			FBSTRING TMP$244$3;
			FBSTRING CXBEPATH$3;
			__builtin_memset( &CXBEPATH$3, 0, 24ll );
			FBSTRING CXBECLINE$3;
			__builtin_memset( &CXBECLINE$3, 0, 24ll );
			int64 RES$3;
			int64 vr$365 = fb_StrLen( (void*)((uint8*)&FBC$ + 2424ll), 129ll );
			if( vr$365 != 0ll ) goto label$351;
			{
				FBSTRING TMP$226$4;
				__builtin_memset( &TMP$226$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$226$4, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
				FBSTRING* vr$370 = HSTRIPEXT( &TMP$226$4 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2424ll), 129ll, (void*)vr$370, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$226$4 );
			}
			label$351:;
			label$350:;
			fb_StrAssign( (void*)&CXBECLINE$3, -1ll, (void*)"-TITLE:\x22", 9ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)((uint8*)&FBC$ + 2424ll), 129ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22 ", 3ll, 0 );
			int64 vr$377 = FBGETOPTION( 13ll );
			if( vr$377 == 0ll ) goto label$353;
			{
				FBSTRING TMP$232$4;
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"-DUMPINFO:\x22", 12ll, 0 );
				__builtin_memset( &TMP$232$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$232$4, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
				FBSTRING* vr$383 = HSTRIPEXT( &TMP$232$4 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)vr$383, -1ll, 0 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)".cxbe\x22", 7ll, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$232$4 );
			}
			label$353:;
			label$352:;
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" -OUT:\x22", 8ll, 0 );
			__builtin_memset( &TMP$237$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$237$3, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
			FBSTRING* vr$392 = HSTRIPEXT( &TMP$237$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)vr$392, -1ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)".xbe", 5ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22", 2ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$237$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" \x22", 3ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)((uint8*)&FBC$ + 856ll), 261ll, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)"\x22", 2ll, 0 );
			if( *(int64*)((uint8*)&FBC$ + 112ll) != 0ll ) goto label$355;
			{
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1ll, (void*)" >nul", 6ll, 0 );
			}
			label$355:;
			label$354:;
			if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$357;
			{
				FBSTRING* vr$402 = fb_StrAllocTempDescZEx( (uint8*)"cxbe: ", 6ll );
				fb_PrintString( 0, (FBSTRING*)vr$402, 2 );
				fb_PrintString( 0, (FBSTRING*)&CXBECLINE$3, 1 );
			}
			label$357:;
			label$356:;
			TMP$242$3 = 0ll;
			FBCFINDBIN( 8ll, &CXBEPATH$3, &TMP$242$3 );
			__builtin_memset( &TMP$243$3, 0, 24ll );
			FBSTRING* vr$410 = fb_StrConcat( &TMP$243$3, (void*)&CXBEPATH$3, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$244$3, 0, 24ll );
			FBSTRING* vr$413 = fb_StrConcat( &TMP$244$3, (void*)vr$410, -1ll, (void*)&CXBECLINE$3, -1ll );
			int32 vr$414 = fb_Shell( (FBSTRING*)vr$413 );
			RES$3 = (int64)vr$414;
			if( RES$3 == 0ll ) goto label$359;
			{
				if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$361;
				{
					FBSTRING TMP$246$5;
					FBSTRING* vr$416 = fb_LongintToStr( RES$3 );
					__builtin_memset( &TMP$246$5, 0, 24ll );
					FBSTRING* vr$419 = fb_StrConcat( &TMP$246$5, (void*)"cxbe failed: exit code ", 24ll, (void*)vr$416, -1ll );
					fb_PrintString( 0, (FBSTRING*)vr$419, 1 );
				}
				label$361:;
				label$360:;
				fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
				fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$176;
			}
			label$359:;
			label$358:;
			FBSTRING* vr$426 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 856ll) );
			fb_FileKill( (FBSTRING*)vr$426 );
			fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
			fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
		}
		goto label$337;
		label$338:;
		static const void* tmp$736[5ll] = {
			&&label$344,
			&&label$344,
			&&label$337,
			&&label$339,
			&&label$349,
		};
		if( TMP$224$2 > 4ull ) goto label$337;
		goto *tmp$736[TMP$224$2 - 0ull];
		label$337:;
	}
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
	fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
	fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
	label$176:;
	return fb$result$1;
}

static void HREADOBJINFO( void )
{
	label$362:;
	FBSTRING DAT$1;
	__builtin_memset( &DAT$1, 0, 24ll );
	int64 LANG$1;
	label$364:;
	{
		{
			uint64 TMP$247$3;
			int64 vr$2 = OBJINFOREADNEXT( &DAT$1 );
			TMP$247$3 = (uint64)vr$2;
			goto label$368;
			label$369:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), &DAT$1, 0ll );
			}
			goto label$367;
			label$370:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll), &DAT$1, 0ll );
			}
			goto label$367;
			label$371:;
			{
				if( *(int64*)((uint8*)&FBC$ + 3640ll) != 0ll ) goto label$373;
				{
					uint8* vr$7 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 20ll, (uint8*)vr$7, -1ll, 1ll, (uint8*)0ull );
					*(int64*)((uint8*)&FBC$ + 3640ll) = -1ll;
					FBSETOPTION( 30ll, -1ll );
				}
				label$373:;
				label$372:;
			}
			goto label$367;
			label$374:;
			{
				FBSETOPTION( 31ll, -1ll );
			}
			goto label$367;
			label$375:;
			{
				$7FB_LANG vr$8 = FBGETLANGID( (uint8*)*(uint8**)&DAT$1 );
				LANG$1 = vr$8;
				if( LANG$1 != -1ll ) goto label$377;
				{
					LANG$1 = 0ll;
				}
				label$377:;
				label$376:;
				if( LANG$1 == *(int64*)((uint8*)&FBC$ + 3632ll) ) goto label$379;
				{
					uint8* vr$9 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 21ll, (uint8*)vr$9, -1ll, 1ll, (uint8*)0ull );
					*($7FB_LANG*)((uint8*)&FBC$ + 3632ll) = LANG$1;
					FBSETOPTION( 10ll, LANG$1 );
				}
				label$379:;
				label$378:;
			}
			goto label$367;
			label$380:;
			{
				goto label$365;
			}
			goto label$367;
			label$368:;
			static const void* tmp$737[5ll] = {
				&&label$369,
				&&label$370,
				&&label$371,
				&&label$374,
				&&label$375,
			};
			if( TMP$247$3 > 4ull ) goto label$380;
			goto *tmp$737[TMP$247$3 - 0ull];
			label$367:;
		}
	}
	label$366:;
	goto label$364;
	label$365:;
	OBJINFOREADEND(  );
	fb_StrDelete( (FBSTRING*)&DAT$1 );
	label$363:;
}

static void HCOLLECTOBJINFO( void )
{
	label$381:;
	FBSTRING* S$1;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
	S$1 = (FBSTRING*)vr$1;
	label$383:;
	if( S$1 == (FBSTRING*)0ull ) goto label$384;
	{
		OBJINFOREADOBJ( S$1 );
		HREADOBJINFO(  );
		void* vr$2 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$2;
	}
	goto label$383;
	label$384:;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 680ll) );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$385:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$386;
	{
		if( *(int64*)((uint8*)I$1 + 24ll) != 0ll ) goto label$388;
		{
			OBJINFOREADLIB( (FBSTRING*)I$1, (struct $5TLIST*)((uint8*)&FBC$ + 768ll) );
			HREADOBJINFO(  );
		}
		label$388:;
		label$387:;
		void* vr$9 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$9;
	}
	goto label$385;
	label$386:;
	void* vr$11 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 440ll) );
	S$1 = (FBSTRING*)vr$11;
	label$389:;
	if( S$1 == (FBSTRING*)0ull ) goto label$390;
	{
		OBJINFOREADLIBFILE( S$1 );
		HREADOBJINFO(  );
		void* vr$12 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$12;
	}
	goto label$389;
	label$390:;
	label$382:;
}

static void HFATALINVALIDOPTION( FBSTRING* ARG$1 )
{
	FBSTRING TMP$248$1;
	FBSTRING TMP$249$1;
	FBSTRING TMP$250$1;
	label$391:;
	__builtin_memset( &TMP$250$1, 0, 24ll );
	__builtin_memset( &TMP$248$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$248$1, (void*)"\x22", 2ll, (void*)ARG$1, -1ll );
	__builtin_memset( &TMP$249$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$249$1, (void*)vr$3, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)&TMP$250$1, -1ll, (void*)vr$6, -1ll, 0 );
	ERRREPORTEX( 81ll, (uint8*)*(uint8**)&TMP$250$1, -1ll, 1ll, (uint8*)0ull );
	fb_StrDelete( (FBSTRING*)&TMP$250$1 );
	FBCEND( 1ll );
	label$392:;
}

static void HCHECKWAITINGOBJFILE( void )
{
	label$393:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 16ll), -1ll );
	if( vr$1 <= 0ll ) goto label$396;
	{
		FBSTRING TMP$251$2;
		FBSTRING TMP$252$2;
		__builtin_memset( &TMP$252$2, 0, 24ll );
		__builtin_memset( &TMP$251$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$251$2, (void*)"-o ", 4ll, (void*)((uint8*)&FBC$ + 16ll), -1ll );
		fb_StrAssign( (void*)&TMP$252$2, -1ll, (void*)vr$6, -1ll, 0 );
		ERRREPORTEX( 292ll, (uint8*)*(uint8**)&TMP$252$2, -1ll, 1ll, (uint8*)0ull );
		fb_StrDelete( (FBSTRING*)&TMP$252$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	}
	label$396:;
	label$395:;
	label$394:;
}

static void HSETIOFILE( struct $9FBCIOFILE* MODULE$1, FBSTRING* SRCFILE$1, int64 IS_RC$1 )
{
	label$397:;
	fb_StrAssign( (void*)MODULE$1, -1ll, (void*)SRCFILE$1, -1ll, 0 );
	int64 vr$3 = fb_StrLen( (void*)((uint8*)&FBC$ + 16ll), -1ll );
	if( vr$3 != 0ll ) goto label$400;
	{
		*(int64*)((uint8*)MODULE$1 + 32ll) = 0ll;
		if( IS_RC$1 == 0ll ) goto label$402;
		{
			FBSTRING TMP$254$3;
			__builtin_memset( &TMP$254$3, 0, 24ll );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$254$3, (void*)SRCFILE$1, -1ll, (void*)".o", 3ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)vr$7, -1ll, 0 );
		}
		goto label$401;
		label$402:;
		{
			FBSTRING TMP$255$3;
			FBSTRING* vr$9 = HSTRIPEXT( SRCFILE$1 );
			__builtin_memset( &TMP$255$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$255$3, (void*)vr$9, -1ll, (void*)".o", 3ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)vr$12, -1ll, 0 );
		}
		label$401:;
		*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) = MODULE$1;
	}
	goto label$399;
	label$400:;
	{
		*(int64*)((uint8*)MODULE$1 + 32ll) = -1ll;
	}
	label$399:;
	FBSTRING* vr$16 = FBCADDOBJ( (FBSTRING*)((uint8*)&FBC$ + 16ll) );
	*(FBSTRING**)((uint8*)MODULE$1 + 24ll) = vr$16;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	label$398:;
}

static void HADDBAS( FBSTRING* BASFILE$1 )
{
	label$403:;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	HSETIOFILE( (struct $9FBCIOFILE*)vr$1, BASFILE$1, 0ll );
	label$404:;
}

static void HPARSEGNUTRIPLET( FBSTRING* ARG$1, int64 SEPARATOR$1, int64* OS$1, int64* CPUTYPE$1 )
{
	label$405:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$410:;
		{
			FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)GNUOSMAP$ + (I$2 << (4ll & 63ll))) );
			int64 vr$2 = fb_StrInstr( 1ll, (FBSTRING*)ARG$1, (FBSTRING*)vr$1 );
			if( vr$2 <= 0ll ) goto label$412;
			{
				*OS$1 = *(int64*)(((uint8*)GNUOSMAP$ + (I$2 << (4ll & 63ll))) + 8ll);
				goto label$409;
			}
			label$412:;
			label$411:;
		}
		label$408:;
		I$2 = I$2 + 1ll;
		label$407:;
		if( I$2 <= 10ll ) goto label$410;
		label$409:;
	}
	if( SEPARATOR$1 <= 0ll ) goto label$414;
	{
		FBSTRING ARCH$2;
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)ARG$1, SEPARATOR$1 + -1ll );
		fb_StrInit( (void*)&ARCH$2, -1ll, (void*)vr$7, -1ll, 0 );
		{
			int64 I$3;
			I$3 = 0ll;
			label$418:;
			{
				int32 vr$11 = fb_StrCompare( (void*)&ARCH$2, -1ll, *(void**)((uint8*)GNUARCHMAP$ + (I$3 << (4ll & 63ll))), 0ll );
				if( (int64)vr$11 != 0ll ) goto label$420;
				{
					*CPUTYPE$1 = *(int64*)(((uint8*)GNUARCHMAP$ + (I$3 << (4ll & 63ll))) + 8ll);
					goto label$417;
				}
				label$420:;
				label$419:;
			}
			label$416:;
			I$3 = I$3 + 1ll;
			label$415:;
			if( I$3 <= 12ll ) goto label$418;
			label$417:;
		}
		fb_StrDelete( (FBSTRING*)&ARCH$2 );
	}
	label$414:;
	label$413:;
	label$406:;
}

static void HPARSETARGETARG( FBSTRING* ARG$1, int64* OS$1, int64* CPUTYPE$1, int64* IS_GNU_TRIPLET$1 )
{
	label$421:;
	*OS$1 = -1ll;
	*CPUTYPE$1 = -1ll;
	*IS_GNU_TRIPLET$1 = 0ll;
	FBSTRING LCASEARG$1;
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
	fb_StrInit( (void*)&LCASEARG$1, -1ll, (void*)vr$3, -1ll, 0 );
	{
		int64 I$2;
		I$2 = 0ll;
		label$426:;
		{
			int32 vr$7 = fb_StrCompare( (void*)&LCASEARG$1, -1ll, *(void**)((uint8*)FBOSARCHMAP$ + (I$2 * 24ll)), 0ll );
			if( (int64)vr$7 != 0ll ) goto label$428;
			{
				*OS$1 = *(int64*)(((uint8*)FBOSARCHMAP$ + (I$2 * 24ll)) + 8ll);
				*CPUTYPE$1 = *(int64*)(((uint8*)FBOSARCHMAP$ + (I$2 * 24ll)) + 16ll);
				fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
				goto label$422;
			}
			label$428:;
			label$427:;
		}
		label$424:;
		I$2 = I$2 + 1ll;
		label$423:;
		if( I$2 <= 11ll ) goto label$426;
		label$425:;
	}
	int64 SEPARATOR$1;
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"-", 1ll );
	int64 vr$16 = fb_StrInstr( 1ll, (FBSTRING*)ARG$1, (FBSTRING*)vr$15 );
	SEPARATOR$1 = vr$16;
	if( SEPARATOR$1 <= 0ll ) goto label$430;
	{
		FBSTRING TMP$287$2;
		FBSTRING TMP$288$2;
		__builtin_memset( &TMP$287$2, 0, 24ll );
		FBSTRING* vr$20 = fb_LEFT( (FBSTRING*)&LCASEARG$1, SEPARATOR$1 + -1ll );
		fb_StrAssign( (void*)&TMP$287$2, -1ll, (void*)vr$20, -1ll, 0 );
		int64 vr$23 = FBIDENTIFYOS( &TMP$287$2 );
		*OS$1 = vr$23;
		fb_StrDelete( (FBSTRING*)&TMP$287$2 );
		__builtin_memset( &TMP$288$2, 0, 24ll );
		int64 vr$28 = fb_StrLen( (void*)&LCASEARG$1, -1ll );
		FBSTRING* vr$31 = fb_RIGHT( (FBSTRING*)&LCASEARG$1, vr$28 - SEPARATOR$1 );
		fb_StrAssign( (void*)&TMP$288$2, -1ll, (void*)vr$31, -1ll, 0 );
		int64 vr$34 = FBCPUTYPEFROMCPUFAMILYID( &TMP$288$2 );
		*CPUTYPE$1 = vr$34;
		fb_StrDelete( (FBSTRING*)&TMP$288$2 );
	}
	label$430:;
	label$429:;
	if( ((int64)-(*OS$1 < 0ll) & (int64)-(*CPUTYPE$1 < 0ll)) == 0ll ) goto label$432;
	{
		HPARSEGNUTRIPLET( ARG$1, SEPARATOR$1, OS$1, CPUTYPE$1 );
		*IS_GNU_TRIPLET$1 = -1ll;
	}
	label$432:;
	label$431:;
	fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
	label$422:;
}

static void HANDLEOPT( int64 OPTID$1, FBSTRING* ARG$1 )
{
	label$433:;
	{
		uint64 TMP$291$2;
		TMP$291$2 = (uint64)OPTID$1;
		goto label$436;
		label$437:;
		{
			FBCADDOBJ( ARG$1 );
		}
		goto label$435;
		label$438:;
		{
			int32 vr$0 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"native", 7ll );
			*(int64*)((uint8*)&FBC$ + 56ll) = (int64)-((int64)vr$0 == 0ll);
			int64 vr$3 = FBIDENTIFYFBCARCH( ARG$1 );
			*(int64*)((uint8*)&FBC$ + 48ll) = vr$3;
			if( *(int64*)((uint8*)&FBC$ + 48ll) >= 0ll ) goto label$440;
			{
				FBSTRING TMP$294$4;
				FBSTRING TMP$295$4;
				__builtin_memset( &TMP$295$4, 0, 24ll );
				__builtin_memset( &TMP$294$4, 0, 24ll );
				FBSTRING* vr$7 = fb_StrConcat( &TMP$294$4, (void*)"-arch ", 7ll, (void*)ARG$1, -1ll );
				fb_StrAssign( (void*)&TMP$295$4, -1ll, (void*)vr$7, -1ll, 0 );
				HFATALINVALIDOPTION( &TMP$295$4 );
				fb_StrDelete( (FBSTRING*)&TMP$295$4 );
			}
			label$440:;
			label$439:;
		}
		goto label$435;
		label$441:;
		{
			{
				FBSTRING TMP$296$4;
				fb_StrInit( (void*)&TMP$296$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$13 = fb_StrCompare( (void*)&TMP$296$4, -1ll, (void*)"att", 4ll );
				if( (int64)vr$13 != 0ll ) goto label$443;
				label$444:;
				{
					*(int64*)((uint8*)&FBC$ + 64ll) = 1ll;
				}
				goto label$442;
				label$443:;
				int32 vr$16 = fb_StrCompare( (void*)&TMP$296$4, -1ll, (void*)"intel", 6ll );
				if( (int64)vr$16 != 0ll ) goto label$445;
				label$446:;
				{
					*(int64*)((uint8*)&FBC$ + 64ll) = 0ll;
				}
				goto label$442;
				label$445:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$447:;
				label$442:;
				fb_StrDelete( (FBSTRING*)&TMP$296$4 );
			}
		}
		goto label$435;
		label$448:;
		{
			HADDBAS( ARG$1 );
		}
		goto label$435;
		label$449:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 104ll) = -1ll;
		}
		goto label$435;
		label$450:;
		{
			*(int64*)((uint8*)&FBC$ + 104ll) = -1ll;
		}
		goto label$435;
		label$451:;
		{
			FBADDPREDEFINE( ARG$1 );
		}
		goto label$435;
		label$452:;
		{
			FBSETOPTION( 0ll, 2ll );
		}
		goto label$435;
		label$453:;
		{
			FBSETOPTION( 15ll, -1ll );
		}
		goto label$435;
		label$454:;
		{
			FBSETOPTION( 20ll, -1ll );
		}
		goto label$435;
		label$455:;
		{
			FBSETOPTION( 14ll, -1ll );
		}
		goto label$435;
		label$456:;
		{
			FBSETOPTION( 12ll, -1ll );
		}
		goto label$435;
		label$457:;
		{
			FBSETOPTION( 13ll, -1ll );
		}
		goto label$435;
		label$458:;
		{
			FBSETOPTION( 18ll, -1ll );
		}
		goto label$435;
		label$459:;
		{
			FBSETOPTION( 19ll, -1ll );
		}
		goto label$435;
		label$460:;
		{
			FBSETOPTION( 15ll, -1ll );
			FBSETOPTION( 16ll, -1ll );
		}
		goto label$435;
		label$461:;
		{
			FBSETOPTION( 15ll, -1ll );
			FBSETOPTION( 16ll, -1ll );
			FBSETOPTION( 17ll, -1ll );
			FBSETOPTION( 18ll, -1ll );
			FBSETOPTION( 20ll, -1ll );
			FBSETOPTION( 19ll, -1ll );
		}
		goto label$435;
		label$462:;
		{
			FBSETOPTION( 28ll, -1ll );
		}
		goto label$435;
		label$463:;
		{
			int64 VALUE$3;
			$7FB_LANG vr$20 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$20;
			if( VALUE$3 != -1ll ) goto label$465;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$465:;
			label$464:;
			FBSETOPTION( 10ll, VALUE$3 );
			FBSETOPTION( 11ll, -1ll );
			*($7FB_LANG*)((uint8*)&FBC$ + 3632ll) = VALUE$3;
		}
		goto label$435;
		label$466:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$299$4;
				FBSTRING* vr$21 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$299$4, -1ll, (void*)vr$21, -1ll, 0 );
				int32 vr$24 = fb_StrCompare( (void*)&TMP$299$4, -1ll, (void*)"PRECISE", 8ll );
				if( (int64)vr$24 != 0ll ) goto label$468;
				label$469:;
				{
					VALUE$3 = 0ll;
				}
				goto label$467;
				label$468:;
				int32 vr$27 = fb_StrCompare( (void*)&TMP$299$4, -1ll, (void*)"FAST", 5ll );
				if( (int64)vr$27 != 0ll ) goto label$470;
				label$471:;
				{
					VALUE$3 = 1ll;
				}
				goto label$467;
				label$470:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$472:;
				label$467:;
				fb_StrDelete( (FBSTRING*)&TMP$299$4 );
			}
			FBSETOPTION( 6ll, VALUE$3 );
		}
		goto label$435;
		label$473:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$302$4;
				FBSTRING* vr$30 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$302$4, -1ll, (void*)vr$30, -1ll, 0 );
				int32 vr$33 = fb_StrCompare( (void*)&TMP$302$4, -1ll, (void*)"X87", 4ll );
				if( (int64)vr$33 == 0ll ) goto label$476;
				label$477:;
				int32 vr$36 = fb_StrCompare( (void*)&TMP$302$4, -1ll, (void*)"FPU", 4ll );
				if( (int64)vr$36 != 0ll ) goto label$475;
				label$476:;
				{
					VALUE$3 = 0ll;
				}
				goto label$474;
				label$475:;
				int32 vr$39 = fb_StrCompare( (void*)&TMP$302$4, -1ll, (void*)"SSE", 4ll );
				if( (int64)vr$39 != 0ll ) goto label$478;
				label$479:;
				{
					VALUE$3 = 1ll;
				}
				goto label$474;
				label$478:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$480:;
				label$474:;
				fb_StrDelete( (FBSTRING*)&TMP$302$4 );
			}
			FBSETOPTION( 5ll, VALUE$3 );
		}
		goto label$435;
		label$481:;
		{
			FBSETOPTION( 12ll, -1ll );
			FBSETOPTION( 13ll, -1ll );
			FBSETOPTION( 14ll, -1ll );
		}
		goto label$435;
		label$482:;
		{
			{
				FBSTRING TMP$306$4;
				FBSTRING* vr$42 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$306$4, -1ll, (void*)vr$42, -1ll, 0 );
				int32 vr$45 = fb_StrCompare( (void*)&TMP$306$4, -1ll, (void*)"gas", 4ll );
				if( (int64)vr$45 != 0ll ) goto label$484;
				label$485:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 0ll;
				}
				goto label$483;
				label$484:;
				int32 vr$48 = fb_StrCompare( (void*)&TMP$306$4, -1ll, (void*)"gcc", 4ll );
				if( (int64)vr$48 != 0ll ) goto label$486;
				label$487:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 1ll;
				}
				goto label$483;
				label$486:;
				int32 vr$51 = fb_StrCompare( (void*)&TMP$306$4, -1ll, (void*)"llvm", 5ll );
				if( (int64)vr$51 != 0ll ) goto label$488;
				label$489:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 2ll;
				}
				goto label$483;
				label$488:;
				int32 vr$54 = fb_StrCompare( (void*)&TMP$306$4, -1ll, (void*)"gas64", 6ll );
				if( (int64)vr$54 != 0ll ) goto label$490;
				label$491:;
				{
					*(int64*)((uint8*)&FBC$ + 40ll) = 3ll;
				}
				goto label$483;
				label$490:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$492:;
				label$483:;
				fb_StrDelete( (FBSTRING*)&TMP$306$4 );
			}
		}
		goto label$435;
		label$493:;
		{
			*(int64*)((uint8*)&FBC$ + 128ll) = -1ll;
		}
		goto label$435;
		label$494:;
		{
			FBSTRING TMP$310$3;
			__builtin_memset( &TMP$310$3, 0, 24ll );
			FBSTRING* vr$58 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$310$3, -1ll, (void*)vr$58, -1ll, 0 );
			FBADDINCLUDEPATH( &TMP$310$3 );
			fb_StrDelete( (FBSTRING*)&TMP$310$3 );
		}
		goto label$435;
		label$495:;
		{
			FBADDPREINCLUDE( ARG$1 );
		}
		goto label$435;
		label$496:;
		{
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 504ll), ARG$1, 0ll );
		}
		goto label$435;
		label$497:;
		{
			int64 VALUE$3;
			$7FB_LANG vr$64 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$64;
			if( VALUE$3 != -1ll ) goto label$499;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$499:;
			label$498:;
			FBSETOPTION( 10ll, VALUE$3 );
			*($7FB_LANG*)((uint8*)&FBC$ + 3632ll) = VALUE$3;
		}
		goto label$435;
		label$500:;
		{
			FBSETOPTION( 0ll, 1ll );
		}
		goto label$435;
		label$501:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1117ll), 261ll, (void*)ARG$1, -1ll, 0 );
			*(int64*)((uint8*)&FBC$ + 1384ll) = -1ll;
		}
		goto label$435;
		label$502:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1392ll), 261ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$435;
		label$503:;
		{
			int64 VALUE$3;
			int32 vr$67 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"inf", 4ll );
			if( (int64)vr$67 != 0ll ) goto label$505;
			{
				VALUE$3 = 2147483647ll;
			}
			goto label$504;
			label$505:;
			{
				int32 vr$69 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = (int64)vr$69;
				if( VALUE$3 > 0ll ) goto label$507;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$507:;
				label$506:;
			}
			label$504:;
			FBSETOPTION( 24ll, VALUE$3 );
		}
		goto label$435;
		label$508:;
		{
			FBSETOPTION( 30ll, -1ll );
			*(int64*)((uint8*)&FBC$ + 3640ll) = -1ll;
		}
		goto label$435;
		label$509:;
		{
			*(int64*)((uint8*)&FBC$ + 2560ll) = -1ll;
		}
		goto label$435;
		label$510:;
		{
			FBSETOPTION( 23ll, 0ll );
		}
		goto label$435;
		label$511:;
		{
			FBSETOPTION( 34ll, 0ll );
		}
		goto label$435;
		label$512:;
		{
			*(int64*)((uint8*)&FBC$ + 2576ll) = 0ll;
		}
		goto label$435;
		label$513:;
		{
			HCHECKWAITINGOBJFILE(  );
			if( *(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) == (struct $9FBCIOFILE*)0ull ) goto label$515;
			{
				fb_StrAssign( *(void**)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) + 24ll), -1ll, (void*)ARG$1, -1ll, 0 );
				*(int64*)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 8ll) + 32ll) = -1ll;
			}
			goto label$514;
			label$515:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 16ll), -1ll, (void*)ARG$1, -1ll, 0 );
			}
			label$514:;
		}
		goto label$435;
		label$516:;
		{
			int64 VALUE$3;
			int32 vr$74 = fb_StrCompare( (void*)ARG$1, -1ll, (void*)"max", 4ll );
			if( (int64)vr$74 != 0ll ) goto label$518;
			{
				VALUE$3 = 3ll;
			}
			goto label$517;
			label$518:;
			{
				int32 vr$76 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = (int64)vr$76;
				if( VALUE$3 >= 0ll ) goto label$520;
				{
					VALUE$3 = 0ll;
				}
				goto label$519;
				label$520:;
				if( VALUE$3 <= 3ll ) goto label$521;
				{
					VALUE$3 = 3ll;
				}
				label$521:;
				label$519:;
			}
			label$517:;
			FBSETOPTION( 8ll, VALUE$3 );
		}
		goto label$435;
		label$522:;
		{
			FBSTRING TMP$313$3;
			__builtin_memset( &TMP$313$3, 0, 24ll );
			FBSTRING* vr$79 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$313$3, -1ll, (void*)vr$79, -1ll, 0 );
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 592ll), &TMP$313$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$313$3 );
		}
		goto label$435;
		label$523:;
		{
			FBSETOPTION( 32ll, -1ll );
		}
		goto label$435;
		label$524:;
		{
			FBSETOPTION( 1ll, -1ll );
			*(int64*)((uint8*)&FBC$ + 72ll) = -1ll;
		}
		goto label$435;
		label$525:;
		{
			FBSTRING* vr$84 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)vr$84, -1ll, 0 );
			HREPLACESLASH( (uint8*)((uint8*)&FBC$ + 2584ll), 92ll );
		}
		goto label$435;
		label$526:;
		{
			{
				FBSTRING TMP$314$4;
				fb_StrInit( (void*)&TMP$314$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$89 = fb_StrCompare( (void*)&TMP$314$4, -1ll, (void*)"host", 5ll );
				if( (int64)vr$89 != 0ll ) goto label$528;
				label$529:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 0ll;
				}
				goto label$527;
				label$528:;
				int32 vr$92 = fb_StrCompare( (void*)&TMP$314$4, -1ll, (void*)"target", 7ll );
				if( (int64)vr$92 != 0ll ) goto label$530;
				label$531:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 1ll;
				}
				goto label$527;
				label$530:;
				int32 vr$95 = fb_StrCompare( (void*)&TMP$314$4, -1ll, (void*)"x", 2ll );
				if( (int64)vr$95 != 0ll ) goto label$532;
				label$533:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 2ll;
				}
				goto label$527;
				label$532:;
				int32 vr$98 = fb_StrCompare( (void*)&TMP$314$4, -1ll, (void*)"fblibdir", 9ll );
				if( (int64)vr$98 != 0ll ) goto label$534;
				label$535:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 3ll;
				}
				goto label$527;
				label$534:;
				int32 vr$101 = fb_StrCompare( (void*)&TMP$314$4, -1ll, (void*)"sha-1", 6ll );
				if( (int64)vr$101 != 0ll ) goto label$536;
				label$537:;
				{
					*(int64*)((uint8*)&FBC$ + 136ll) = 4ll;
				}
				goto label$527;
				label$536:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$538:;
				label$527:;
				fb_StrDelete( (FBSTRING*)&TMP$314$4 );
			}
		}
		goto label$435;
		label$539:;
		{
			FBSETOPTION( 21ll, -1ll );
		}
		goto label$435;
		label$540:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 72ll) = -1ll;
			*(int64*)((uint8*)&FBC$ + 80ll) = -1ll;
		}
		goto label$435;
		label$541:;
		{
			*(int64*)((uint8*)&FBC$ + 80ll) = -1ll;
		}
		goto label$435;
		label$542:;
		{
			FBSETOPTION( 0ll, 3ll );
			*(int64*)((uint8*)&FBC$ + 88ll) = -1ll;
			*(int64*)((uint8*)&FBC$ + 96ll) = -1ll;
		}
		goto label$435;
		label$543:;
		{
			*(int64*)((uint8*)&FBC$ + 96ll) = -1ll;
		}
		goto label$435;
		label$544:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1653ll), 129ll, (void*)ARG$1, -1ll, 0 );
			{
				FBSTRING TMP$320$4;
				fb_StrInit( (void*)&TMP$320$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$107 = fb_StrCompare( (void*)&TMP$320$4, -1ll, (void*)"gui", 4ll );
				if( (int64)vr$107 != 0ll ) goto label$546;
				label$547:;
				{
					FBSETOPTION( 36ll, 1ll );
				}
				label$546:;
				label$545:;
				fb_StrDelete( (FBSTRING*)&TMP$320$4 );
			}
		}
		goto label$435;
		label$548:;
		{
			FBSETOPTION( 35ll, -1ll );
		}
		goto label$435;
		label$549:;
		{
			*(int64*)((uint8*)&FBC$ + 2568ll) = -1ll;
		}
		goto label$435;
		label$550:;
		{
			*(int64*)((uint8*)&FBC$ + 2576ll) = -1ll;
		}
		goto label$435;
		label$551:;
		{
			int32 vr$110 = fb_VALINT( (FBSTRING*)ARG$1 );
			FBSETOPTION( 33ll, (int64)vr$110 << (10ll & 63ll) );
		}
		goto label$435;
		label$552:;
		{
			int64 OS$3;
			__builtin_memset( &OS$3, 0, 8ll );
			int64 CPUTYPE$3;
			__builtin_memset( &CPUTYPE$3, 0, 8ll );
			int64 IS_GNU_TRIPLET$3;
			__builtin_memset( &IS_GNU_TRIPLET$3, 0, 8ll );
			HPARSETARGETARG( ARG$1, &OS$3, &CPUTYPE$3, &IS_GNU_TRIPLET$3 );
			if( ((int64)-(OS$3 < 0ll) | (int64)-(CPUTYPE$3 < 0ll)) == 0ll ) goto label$554;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$554:;
			label$553:;
			FBSETOPTION( 3ll, OS$3 );
			FBSETOPTION( 4ll, CPUTYPE$3 );
			if( (((int64)-(OS$3 != 0ll) | (int64)-(CPUTYPE$3 != 13ll)) | IS_GNU_TRIPLET$3) == 0ll ) goto label$556;
			{
				FBSTRING TMP$321$4;
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2166ll), 129ll, (void*)ARG$1, -1ll, 0 );
				__builtin_memset( &TMP$321$4, 0, 24ll );
				FBSTRING* vr$130 = fb_StrConcat( &TMP$321$4, (void*)((uint8*)&FBC$ + 2166ll), 129ll, (void*)"-", 2ll );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 2295ll), 129ll, (void*)vr$130, -1ll, 0 );
			}
			label$556:;
			label$555:;
		}
		goto label$435;
		label$557:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2424ll), 129ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$435;
		label$558:;
		{
			*(int64*)((uint8*)&FBC$ + 112ll) = -1ll;
		}
		goto label$435;
		label$559:;
		{
			int64 VALUE$3;
			{
				FBSTRING TMP$322$4;
				FBSTRING* vr$133 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$322$4, -1ll, (void*)vr$133, -1ll, 0 );
				int32 vr$136 = fb_StrCompare( (void*)&TMP$322$4, -1ll, (void*)"NONE", 5ll );
				if( (int64)vr$136 == 0ll ) goto label$562;
				label$563:;
				int32 vr$139 = fb_StrCompare( (void*)&TMP$322$4, -1ll, (void*)"0", 2ll );
				if( (int64)vr$139 != 0ll ) goto label$561;
				label$562:;
				{
					VALUE$3 = 0ll;
				}
				goto label$560;
				label$561:;
				int32 vr$142 = fb_StrCompare( (void*)&TMP$322$4, -1ll, (void*)"1", 2ll );
				if( (int64)vr$142 != 0ll ) goto label$564;
				label$565:;
				{
					VALUE$3 = 1ll;
				}
				goto label$560;
				label$564:;
				int32 vr$145 = fb_StrCompare( (void*)&TMP$322$4, -1ll, (void*)"2", 2ll );
				if( (int64)vr$145 != 0ll ) goto label$566;
				label$567:;
				{
					VALUE$3 = 2ll;
				}
				goto label$560;
				label$566:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$568:;
				label$560:;
				fb_StrDelete( (FBSTRING*)&TMP$322$4 );
			}
			FBSETOPTION( 7ll, VALUE$3 );
		}
		goto label$435;
		label$569:;
		{
			*(int64*)((uint8*)&FBC$ + 120ll) = -1ll;
		}
		goto label$435;
		label$570:;
		{
			int64 VALUE$3;
			VALUE$3 = -1ll;
			{
				FBSTRING TMP$325$4;
				fb_StrInit( (void*)&TMP$325$4, -1ll, (void*)ARG$1, -1ll, 0 );
				int32 vr$150 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"all", 4ll );
				if( (int64)vr$150 != 0ll ) goto label$572;
				label$573:;
				{
					VALUE$3 = 0ll;
				}
				goto label$571;
				label$572:;
				int32 vr$153 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"none", 5ll );
				if( (int64)vr$153 != 0ll ) goto label$574;
				label$575:;
				{
					VALUE$3 = 4ll;
				}
				goto label$571;
				label$574:;
				int32 vr$156 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"param", 6ll );
				if( (int64)vr$156 != 0ll ) goto label$576;
				label$577:;
				{
					int64 vr$158 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$158 | 2ll );
				}
				goto label$571;
				label$576:;
				int32 vr$161 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"escape", 7ll );
				if( (int64)vr$161 != 0ll ) goto label$578;
				label$579:;
				{
					int64 vr$163 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$163 | 1ll );
				}
				goto label$571;
				label$578:;
				int32 vr$166 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"next", 5ll );
				if( (int64)vr$166 != 0ll ) goto label$580;
				label$581:;
				{
					int64 vr$168 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$168 | 8ll );
				}
				goto label$571;
				label$580:;
				int32 vr$171 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"signedness", 11ll );
				if( (int64)vr$171 != 0ll ) goto label$582;
				label$583:;
				{
					int64 vr$173 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$173 | 32ll );
				}
				goto label$571;
				label$582:;
				int32 vr$176 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"constness", 10ll );
				if( (int64)vr$176 != 0ll ) goto label$584;
				label$585:;
				{
					int64 vr$178 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$178 | 128ll );
					VALUE$3 = 0ll;
				}
				goto label$571;
				label$584:;
				int32 vr$181 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"funcptr", 8ll );
				if( (int64)vr$181 != 0ll ) goto label$586;
				label$587:;
				{
					int64 vr$183 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$183 | 64ll );
					VALUE$3 = 0ll;
				}
				goto label$571;
				label$586:;
				int32 vr$186 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"suffix", 7ll );
				if( (int64)vr$186 != 0ll ) goto label$588;
				label$589:;
				{
					int64 vr$188 = FBGETOPTION( 25ll );
					FBSETOPTION( 25ll, vr$188 | 256ll );
				}
				goto label$571;
				label$588:;
				int32 vr$191 = fb_StrCompare( (void*)&TMP$325$4, -1ll, (void*)"pedantic", 9ll );
				if( (int64)vr$191 != 0ll ) goto label$590;
				label$591:;
				{
					FBSETOPTION( 25ll, 4294967063ll );
					if( VALUE$3 <= 1ll ) goto label$593;
					{
						VALUE$3 = 1ll;
					}
					label$593:;
					label$592:;
				}
				goto label$571;
				label$590:;
				{
					int32 vr$193 = fb_VALINT( (FBSTRING*)ARG$1 );
					VALUE$3 = (int64)vr$193;
				}
				label$594:;
				label$571:;
				fb_StrDelete( (FBSTRING*)&TMP$325$4 );
			}
			if( VALUE$3 < 0ll ) goto label$596;
			{
				FBSETOPTION( 22ll, VALUE$3 );
			}
			label$596:;
			label$595:;
		}
		goto label$435;
		label$597:;
		{
			FBSTRING TMP$336$3;
			FBSTRING TMP$337$3;
			FBSTRING TMP$338$3;
			FBSTRING* vr$197 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$336$3, 0, 24ll );
			FBSTRING* vr$200 = fb_StrConcat( &TMP$336$3, (void*)" ", 2ll, (void*)vr$197, -1ll );
			__builtin_memset( &TMP$337$3, 0, 24ll );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$337$3, (void*)vr$200, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$338$3, 0, 24ll );
			FBSTRING* vr$207 = fb_StrConcat( &TMP$338$3, (void*)((uint8*)&FBC$ + 1782ll), 128ll, (void*)vr$203, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1782ll), 128ll, (void*)vr$207, -1ll, 0 );
		}
		goto label$435;
		label$598:;
		{
			FBSTRING TMP$339$3;
			FBSTRING TMP$340$3;
			FBSTRING TMP$341$3;
			FBSTRING* vr$210 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$339$3, 0, 24ll );
			FBSTRING* vr$213 = fb_StrConcat( &TMP$339$3, (void*)" ", 2ll, (void*)vr$210, -1ll );
			__builtin_memset( &TMP$340$3, 0, 24ll );
			FBSTRING* vr$216 = fb_StrConcat( &TMP$340$3, (void*)vr$213, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$341$3, 0, 24ll );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$341$3, (void*)((uint8*)&FBC$ + 2038ll), 128ll, (void*)vr$216, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 2038ll), 128ll, (void*)vr$220, -1ll, 0 );
		}
		goto label$435;
		label$599:;
		{
			FBSTRING TMP$342$3;
			FBSTRING TMP$343$3;
			FBSTRING TMP$344$3;
			FBSTRING* vr$223 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$342$3, 0, 24ll );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$342$3, (void*)" ", 2ll, (void*)vr$223, -1ll );
			__builtin_memset( &TMP$343$3, 0, 24ll );
			FBSTRING* vr$229 = fb_StrConcat( &TMP$343$3, (void*)vr$226, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$344$3, 0, 24ll );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$344$3, (void*)((uint8*)&FBC$ + 1910ll), 128ll, (void*)vr$229, -1ll );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1910ll), 128ll, (void*)vr$233, -1ll, 0 );
		}
		goto label$435;
		label$600:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 856ll), 261ll, (void*)ARG$1, -1ll, 0 );
		}
		goto label$435;
		label$601:;
		{
			{
				FBSTRING TMP$345$4;
				FBSTRING* vr$236 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$345$4, -1ll, (void*)vr$236, -1ll, 0 );
				int32 vr$239 = fb_StrCompare( (void*)&TMP$345$4, -1ll, (void*)"gosub-setjmp", 13ll );
				if( (int64)vr$239 != 0ll ) goto label$603;
				label$604:;
				{
					FBSETOPTION( 26ll, -1ll );
				}
				goto label$602;
				label$603:;
				int32 vr$242 = fb_StrCompare( (void*)&TMP$345$4, -1ll, (void*)"valist-as-ptr", 14ll );
				if( (int64)vr$242 != 0ll ) goto label$605;
				label$606:;
				{
					FBSETOPTION( 27ll, -1ll );
				}
				goto label$602;
				label$605:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$607:;
				label$602:;
				fb_StrDelete( (FBSTRING*)&TMP$345$4 );
			}
		}
		goto label$435;
		label$436:;
		static const void* tmp$738[66ll] = {
			&&label$437,
			&&label$438,
			&&label$441,
			&&label$448,
			&&label$449,
			&&label$450,
			&&label$451,
			&&label$452,
			&&label$452,
			&&label$453,
			&&label$454,
			&&label$455,
			&&label$456,
			&&label$457,
			&&label$458,
			&&label$459,
			&&label$460,
			&&label$461,
			&&label$462,
			&&label$463,
			&&label$466,
			&&label$473,
			&&label$481,
			&&label$482,
			&&label$493,
			&&label$494,
			&&label$495,
			&&label$496,
			&&label$497,
			&&label$500,
			&&label$501,
			&&label$502,
			&&label$503,
			&&label$508,
			&&label$509,
			&&label$510,
			&&label$511,
			&&label$512,
			&&label$513,
			&&label$516,
			&&label$522,
			&&label$523,
			&&label$524,
			&&label$525,
			&&label$526,
			&&label$539,
			&&label$540,
			&&label$541,
			&&label$542,
			&&label$543,
			&&label$544,
			&&label$548,
			&&label$549,
			&&label$550,
			&&label$551,
			&&label$552,
			&&label$557,
			&&label$558,
			&&label$559,
			&&label$569,
			&&label$570,
			&&label$597,
			&&label$598,
			&&label$599,
			&&label$600,
			&&label$601,
		};
		if( TMP$291$2 > 65ull ) goto label$435;
		goto *tmp$738[TMP$291$2 - 0ull];
		label$435:;
	}
	label$434:;
}

static int64 PARSEOPTION( uint8* OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$608:;
	{
		uint64 TMP$348$2;
		TMP$348$2 = (uint64)*(uint8*)OPT$1;
		goto label$611;
		label$612:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$614;
			{
				fb$result$1 = 0ll;
				goto label$609;
			}
			label$614:;
			label$613:;
			int32 vr$5 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"arch", 5ll );
			if( (int64)vr$5 != 0ll ) goto label$616;
			{
				fb$result$1 = 1ll;
				goto label$609;
			}
			label$616:;
			label$615:;
			int32 vr$7 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"asm", 4ll );
			if( (int64)vr$7 != 0ll ) goto label$618;
			{
				fb$result$1 = 2ll;
				goto label$609;
			}
			label$618:;
			label$617:;
		}
		goto label$610;
		label$619:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$621;
			{
				fb$result$1 = 3ll;
				goto label$609;
			}
			label$621:;
			label$620:;
		}
		goto label$610;
		label$622:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$624;
			{
				fb$result$1 = 4ll;
				goto label$609;
			}
			label$624:;
			label$623:;
		}
		goto label$610;
		label$625:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$627;
			{
				fb$result$1 = 5ll;
				goto label$609;
			}
			label$627:;
			label$626:;
		}
		goto label$610;
		label$628:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$630;
			{
				fb$result$1 = 6ll;
				goto label$609;
			}
			label$630:;
			label$629:;
			int32 vr$17 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"dll", 4ll );
			if( (int64)vr$17 != 0ll ) goto label$632;
			{
				fb$result$1 = 7ll;
				goto label$609;
			}
			label$632:;
			label$631:;
			int32 vr$19 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"dylib", 6ll );
			if( (int64)vr$19 != 0ll ) goto label$634;
			{
				fb$result$1 = 8ll;
				goto label$609;
			}
			label$634:;
			label$633:;
		}
		goto label$610;
		label$635:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$637;
			{
				fb$result$1 = 9ll;
				goto label$609;
			}
			label$637:;
			label$636:;
			int32 vr$23 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"ex", 3ll );
			if( (int64)vr$23 != 0ll ) goto label$639;
			{
				fb$result$1 = 16ll;
				goto label$609;
			}
			label$639:;
			label$638:;
			int32 vr$25 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"earray", 7ll );
			if( (int64)vr$25 != 0ll ) goto label$641;
			{
				fb$result$1 = 10ll;
				goto label$609;
			}
			label$641:;
			label$640:;
			int32 vr$27 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"eassert", 8ll );
			if( (int64)vr$27 != 0ll ) goto label$643;
			{
				fb$result$1 = 11ll;
				goto label$609;
			}
			label$643:;
			label$642:;
			int32 vr$29 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"edebug", 7ll );
			if( (int64)vr$29 != 0ll ) goto label$645;
			{
				fb$result$1 = 12ll;
				goto label$609;
			}
			label$645:;
			label$644:;
			int32 vr$31 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"edebuginfo", 11ll );
			if( (int64)vr$31 != 0ll ) goto label$647;
			{
				fb$result$1 = 13ll;
				goto label$609;
			}
			label$647:;
			label$646:;
			int32 vr$33 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"elocation", 10ll );
			if( (int64)vr$33 != 0ll ) goto label$649;
			{
				fb$result$1 = 14ll;
				goto label$609;
			}
			label$649:;
			label$648:;
			int32 vr$35 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"enullptr", 9ll );
			if( (int64)vr$35 != 0ll ) goto label$651;
			{
				fb$result$1 = 15ll;
				goto label$609;
			}
			label$651:;
			label$650:;
			int32 vr$37 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"exx", 4ll );
			if( (int64)vr$37 != 0ll ) goto label$653;
			{
				fb$result$1 = 17ll;
				goto label$609;
			}
			label$653:;
			label$652:;
			int32 vr$39 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"export", 7ll );
			if( (int64)vr$39 != 0ll ) goto label$655;
			{
				fb$result$1 = 18ll;
				goto label$609;
			}
			label$655:;
			label$654:;
		}
		goto label$610;
		label$656:;
		{
			int32 vr$41 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"forcelang", 10ll );
			if( (int64)vr$41 != 0ll ) goto label$658;
			{
				fb$result$1 = 19ll;
				goto label$609;
			}
			label$658:;
			label$657:;
			int32 vr$43 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"fpmode", 7ll );
			if( (int64)vr$43 != 0ll ) goto label$660;
			{
				fb$result$1 = 20ll;
				goto label$609;
			}
			label$660:;
			label$659:;
			int32 vr$45 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"fpu", 4ll );
			if( (int64)vr$45 != 0ll ) goto label$662;
			{
				fb$result$1 = 21ll;
				goto label$609;
			}
			label$662:;
			label$661:;
		}
		goto label$610;
		label$663:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$665;
			{
				fb$result$1 = 22ll;
				goto label$609;
			}
			label$665:;
			label$664:;
			int32 vr$49 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"gen", 4ll );
			if( (int64)vr$49 != 0ll ) goto label$667;
			{
				fb$result$1 = 23ll;
				goto label$609;
			}
			label$667:;
			label$666:;
		}
		goto label$610;
		label$668:;
		{
			int32 vr$51 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"help", 5ll );
			if( (int64)vr$51 != 0ll ) goto label$670;
			{
				fb$result$1 = 24ll;
				goto label$609;
			}
			label$670:;
			label$669:;
		}
		goto label$610;
		label$671:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$673;
			{
				fb$result$1 = 25ll;
				goto label$609;
			}
			label$673:;
			label$672:;
			int32 vr$55 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"include", 8ll );
			if( (int64)vr$55 != 0ll ) goto label$675;
			{
				fb$result$1 = 26ll;
				goto label$609;
			}
			label$675:;
			label$674:;
		}
		goto label$610;
		label$676:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$678;
			{
				fb$result$1 = 27ll;
				goto label$609;
			}
			label$678:;
			label$677:;
			int32 vr$59 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"lang", 5ll );
			if( (int64)vr$59 != 0ll ) goto label$680;
			{
				fb$result$1 = 28ll;
				goto label$609;
			}
			label$680:;
			label$679:;
			int32 vr$61 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"lib", 4ll );
			if( (int64)vr$61 != 0ll ) goto label$682;
			{
				fb$result$1 = 29ll;
				goto label$609;
			}
			label$682:;
			label$681:;
		}
		goto label$610;
		label$683:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$685;
			{
				fb$result$1 = 30ll;
				goto label$609;
			}
			label$685:;
			label$684:;
			int32 vr$65 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"map", 4ll );
			if( (int64)vr$65 != 0ll ) goto label$687;
			{
				fb$result$1 = 31ll;
				goto label$609;
			}
			label$687:;
			label$686:;
			int32 vr$67 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"maxerr", 7ll );
			if( (int64)vr$67 != 0ll ) goto label$689;
			{
				fb$result$1 = 32ll;
				goto label$609;
			}
			label$689:;
			label$688:;
			int32 vr$69 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"mt", 3ll );
			if( (int64)vr$69 != 0ll ) goto label$691;
			{
				fb$result$1 = 33ll;
				goto label$609;
			}
			label$691:;
			label$690:;
		}
		goto label$610;
		label$692:;
		{
			int32 vr$71 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"noerrline", 10ll );
			if( (int64)vr$71 != 0ll ) goto label$694;
			{
				fb$result$1 = 35ll;
				goto label$609;
			}
			label$694:;
			label$693:;
			int32 vr$73 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"nodeflibs", 10ll );
			if( (int64)vr$73 != 0ll ) goto label$696;
			{
				fb$result$1 = 34ll;
				goto label$609;
			}
			label$696:;
			label$695:;
			int32 vr$75 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"noobjinfo", 10ll );
			if( (int64)vr$75 != 0ll ) goto label$698;
			{
				fb$result$1 = 36ll;
				goto label$609;
			}
			label$698:;
			label$697:;
			int32 vr$77 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"nostrip", 8ll );
			if( (int64)vr$77 != 0ll ) goto label$700;
			{
				fb$result$1 = 37ll;
				goto label$609;
			}
			label$700:;
			label$699:;
		}
		goto label$610;
		label$701:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$703;
			{
				fb$result$1 = 38ll;
				goto label$609;
			}
			label$703:;
			label$702:;
		}
		goto label$610;
		label$704:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$706;
			{
				fb$result$1 = 39ll;
				goto label$609;
			}
			label$706:;
			label$705:;
		}
		goto label$610;
		label$707:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$709;
			{
				fb$result$1 = 40ll;
				goto label$609;
			}
			label$709:;
			label$708:;
			int32 vr$85 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"pic", 4ll );
			if( (int64)vr$85 != 0ll ) goto label$711;
			{
				fb$result$1 = 41ll;
				goto label$609;
			}
			label$711:;
			label$710:;
			int32 vr$87 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"pp", 3ll );
			if( (int64)vr$87 != 0ll ) goto label$713;
			{
				fb$result$1 = 42ll;
				goto label$609;
			}
			label$713:;
			label$712:;
			int32 vr$89 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"prefix", 7ll );
			if( (int64)vr$89 != 0ll ) goto label$715;
			{
				fb$result$1 = 43ll;
				goto label$609;
			}
			label$715:;
			label$714:;
			int32 vr$91 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"print", 6ll );
			if( (int64)vr$91 != 0ll ) goto label$717;
			{
				fb$result$1 = 44ll;
				goto label$609;
			}
			label$717:;
			label$716:;
			int32 vr$93 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"profile", 8ll );
			if( (int64)vr$93 != 0ll ) goto label$719;
			{
				fb$result$1 = 45ll;
				goto label$609;
			}
			label$719:;
			label$718:;
		}
		goto label$610;
		label$720:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$722;
			{
				fb$result$1 = 46ll;
				goto label$609;
			}
			label$722:;
			label$721:;
			int32 vr$97 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"rr", 3ll );
			if( (int64)vr$97 != 0ll ) goto label$724;
			{
				fb$result$1 = 48ll;
				goto label$609;
			}
			label$724:;
			label$723:;
		}
		goto label$610;
		label$725:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$727;
			{
				fb$result$1 = 47ll;
				goto label$609;
			}
			label$727:;
			label$726:;
			int32 vr$101 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"RR", 3ll );
			if( (int64)vr$101 != 0ll ) goto label$729;
			{
				fb$result$1 = 49ll;
				goto label$609;
			}
			label$729:;
			label$728:;
		}
		goto label$610;
		label$730:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$732;
			{
				fb$result$1 = 50ll;
				goto label$609;
			}
			label$732:;
			label$731:;
			int32 vr$105 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"showincludes", 13ll );
			if( (int64)vr$105 != 0ll ) goto label$734;
			{
				fb$result$1 = 51ll;
				goto label$609;
			}
			label$734:;
			label$733:;
			int32 vr$107 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"static", 7ll );
			if( (int64)vr$107 != 0ll ) goto label$736;
			{
				fb$result$1 = 52ll;
				goto label$609;
			}
			label$736:;
			label$735:;
			int32 vr$109 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"strip", 6ll );
			if( (int64)vr$109 != 0ll ) goto label$738;
			{
				fb$result$1 = 53ll;
				goto label$609;
			}
			label$738:;
			label$737:;
		}
		goto label$610;
		label$739:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$741;
			{
				fb$result$1 = 54ll;
				goto label$609;
			}
			label$741:;
			label$740:;
			int32 vr$113 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"target", 7ll );
			if( (int64)vr$113 != 0ll ) goto label$743;
			{
				fb$result$1 = 55ll;
				goto label$609;
			}
			label$743:;
			label$742:;
			int32 vr$115 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"title", 6ll );
			if( (int64)vr$115 != 0ll ) goto label$745;
			{
				fb$result$1 = 56ll;
				goto label$609;
			}
			label$745:;
			label$744:;
		}
		goto label$610;
		label$746:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$748;
			{
				fb$result$1 = 57ll;
				goto label$609;
			}
			label$748:;
			label$747:;
			int32 vr$119 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"vec", 4ll );
			if( (int64)vr$119 != 0ll ) goto label$750;
			{
				fb$result$1 = 58ll;
				goto label$609;
			}
			label$750:;
			label$749:;
			int32 vr$121 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"version", 8ll );
			if( (int64)vr$121 != 0ll ) goto label$752;
			{
				fb$result$1 = 59ll;
				goto label$609;
			}
			label$752:;
			label$751:;
		}
		goto label$610;
		label$753:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$755;
			{
				fb$result$1 = 60ll;
				goto label$609;
			}
			label$755:;
			label$754:;
		}
		goto label$610;
		label$756:;
		{
			int32 vr$125 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wa", 3ll );
			if( (int64)vr$125 != 0ll ) goto label$758;
			{
				fb$result$1 = 61ll;
				goto label$609;
			}
			label$758:;
			label$757:;
			int32 vr$127 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wl", 3ll );
			if( (int64)vr$127 != 0ll ) goto label$760;
			{
				fb$result$1 = 63ll;
				goto label$609;
			}
			label$760:;
			label$759:;
			int32 vr$129 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"Wc", 3ll );
			if( (int64)vr$129 != 0ll ) goto label$762;
			{
				fb$result$1 = 62ll;
				goto label$609;
			}
			label$762:;
			label$761:;
		}
		goto label$610;
		label$763:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$765;
			{
				fb$result$1 = 64ll;
				goto label$609;
			}
			label$765:;
			label$764:;
		}
		goto label$610;
		label$766:;
		{
			if( (int64)*(uint8*)((uint8*)OPT$1 + 1ll) != 0ll ) goto label$768;
			{
				fb$result$1 = 65ll;
				goto label$609;
			}
			label$768:;
			label$767:;
		}
		goto label$610;
		label$769:;
		{
			int32 vr$135 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"-version", 9ll );
			if( (int64)vr$135 != 0ll ) goto label$771;
			{
				fb$result$1 = 59ll;
				goto label$609;
			}
			label$771:;
			label$770:;
			int32 vr$137 = fb_StrCompare( (void*)OPT$1, 0ll, (void*)"-help", 6ll );
			if( (int64)vr$137 != 0ll ) goto label$773;
			{
				fb$result$1 = 24ll;
				goto label$609;
			}
			label$773:;
			label$772:;
		}
		goto label$610;
		label$611:;
		static const void* tmp$739[78ll] = {
			&&label$769,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$625,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$704,
			&&label$610,
			&&label$610,
			&&label$725,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$756,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$610,
			&&label$612,
			&&label$619,
			&&label$622,
			&&label$628,
			&&label$635,
			&&label$656,
			&&label$663,
			&&label$668,
			&&label$671,
			&&label$610,
			&&label$610,
			&&label$676,
			&&label$683,
			&&label$692,
			&&label$701,
			&&label$707,
			&&label$610,
			&&label$720,
			&&label$730,
			&&label$739,
			&&label$610,
			&&label$746,
			&&label$753,
			&&label$763,
			&&label$610,
			&&label$766,
		};
		if( (TMP$348$2 - 45ull) > 77ull ) goto label$610;
		goto *tmp$739[TMP$348$2 - 45ull];
		label$610:;
	}
	fb$result$1 = -1ll;
	goto label$609;
	label$609:;
	return fb$result$1;
}

static void HANDLEARG( FBSTRING* ARG$1 )
{
	label$774:;
	if( *(int64*)&FBC$ < 0ll ) goto label$777;
	{
		int64 vr$0 = fb_StrLen( (void*)ARG$1, -1ll );
		if( vr$0 != 0ll ) goto label$779;
		{
			HFATALINVALIDOPTION( ARG$1 );
		}
		label$779:;
		label$778:;
		HANDLEOPT( *(int64*)&FBC$, ARG$1 );
		*(int64*)&FBC$ = -1ll;
		goto label$775;
	}
	label$777:;
	label$776:;
	int64 vr$1 = fb_StrLen( (void*)ARG$1, -1ll );
	if( vr$1 != 0ll ) goto label$781;
	{
		goto label$775;
	}
	label$781:;
	label$780:;
	{
		uint8 TMP$418$2;
		TMP$418$2 = *(uint8*)*(uint8**)ARG$1;
		if( (uint64)(int64)TMP$418$2 != 45ull ) goto label$783;
		label$784:;
		{
			uint8* OPT$3;
			OPT$3 = (uint8*)((uint8*)*(uint8**)ARG$1 + 1ll);
			if( (int64)*(uint8*)OPT$3 != 0ll ) goto label$786;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$786:;
			label$785:;
			int64 OPTID$3;
			int64 vr$9 = PARSEOPTION( OPT$3 );
			OPTID$3 = vr$9;
			if( OPTID$3 >= 0ll ) goto label$788;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$788:;
			label$787:;
			if( *(int64*)((uint8*)OPTION_TAKES_ARGUMENT$ + (OPTID$3 << (3ll & 63ll))) == 0ll ) goto label$790;
			{
				*(int64*)&FBC$ = OPTID$3;
			}
			goto label$789;
			label$790:;
			{
				HANDLEOPT( OPTID$3, ARG$1 );
			}
			label$789:;
		}
		goto label$782;
		label$783:;
		if( (uint64)(int64)TMP$418$2 != 64ull ) goto label$791;
		label$792:;
		{
			static int64 RECLEVEL$3 = 0ll;
			if( RECLEVEL$3 <= 128ll ) goto label$794;
			{
				ERRREPORTEX( 27ll, (uint8*)*(uint8**)ARG$1, -1ll, 1ll, (uint8*)0ull );
				FBCEND( 1ll );
			}
			label$794:;
			label$793:;
			int64 vr$13 = fb_StrLen( (void*)ARG$1, -1ll );
			FBSTRING* vr$15 = fb_RIGHT( (FBSTRING*)ARG$1, vr$13 + -1ll );
			fb_StrAssign( (void*)ARG$1, -1ll, (void*)vr$15, -1ll, 0 );
			int64 vr$16 = fb_StrLen( (void*)ARG$1, -1ll );
			if( vr$16 != 0ll ) goto label$796;
			{
				HFATALINVALIDOPTION( ARG$1 );
			}
			label$796:;
			label$795:;
			RECLEVEL$3 = RECLEVEL$3 + 1ll;
			PARSEARGSFROMFILE( ARG$1 );
			RECLEVEL$3 = RECLEVEL$3 + -1ll;
		}
		goto label$782;
		label$791:;
		{
			FBSTRING EXT$3;
			FBSTRING* vr$20 = HGETFILEEXT( (uint8*)*(uint8**)ARG$1 );
			fb_StrInit( (void*)&EXT$3, -1ll, (void*)vr$20, -1ll, 0 );
			FBSTRING* vr$23 = fb_StrLcase2( (FBSTRING*)&EXT$3, 0 );
			fb_StrAssign( (void*)&EXT$3, -1ll, (void*)vr$23, -1ll, 0 );
			{
				int32 vr$26 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"bas", 4ll );
				if( (int64)vr$26 != 0ll ) goto label$799;
				label$800:;
				{
					HADDBAS( ARG$1 );
				}
				goto label$798;
				label$799:;
				int32 vr$29 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"o", 2ll );
				if( (int64)vr$29 != 0ll ) goto label$801;
				label$802:;
				{
					FBCADDOBJ( ARG$1 );
				}
				goto label$798;
				label$801:;
				int32 vr$32 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"a", 2ll );
				if( (int64)vr$32 != 0ll ) goto label$803;
				label$804:;
				{
					STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 440ll), ARG$1 );
				}
				goto label$798;
				label$803:;
				int32 vr$36 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"rc", 3ll );
				if( (int64)vr$36 == 0ll ) goto label$806;
				label$807:;
				int32 vr$39 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"res", 4ll );
				if( (int64)vr$39 != 0ll ) goto label$805;
				label$806:;
				{
					void* vr$42 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
					HSETIOFILE( (struct $9FBCIOFILE*)vr$42, ARG$1, -1ll );
				}
				goto label$798;
				label$805:;
				int32 vr$44 = fb_StrCompare( (void*)&EXT$3, -1ll, (void*)"xpm", 4ll );
				if( (int64)vr$44 != 0ll ) goto label$808;
				label$809:;
				{
					int64 vr$47 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
					if( vr$47 <= 0ll ) goto label$811;
					{
						HFATALINVALIDOPTION( ARG$1 );
					}
					label$811:;
					label$810:;
					HSETIOFILE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll), ARG$1, -1ll );
				}
				goto label$798;
				label$808:;
				{
					HFATALINVALIDOPTION( ARG$1 );
				}
				label$812:;
				label$798:;
			}
			fb_StrDelete( (FBSTRING*)&EXT$3 );
		}
		label$797:;
		label$782:;
	}
	label$775:;
}

static void PARSEARGSFROMFILE( FBSTRING* FILENAME$1 )
{
	label$813:;
	int64 F$1;
	int32 vr$0 = fb_FileFree(  );
	F$1 = (int64)vr$0;
	int32 vr$3 = fb_FileOpen( (FBSTRING*)FILENAME$1, 2u, 0u, 0u, (int32)F$1, 0 );
	if( (int64)vr$3 == 0ll ) goto label$816;
	{
		ERRREPORTEX( 26ll, (uint8*)*(uint8**)FILENAME$1, -1ll, 1ll, (uint8*)0ull );
		FBCEND( 1ll );
	}
	label$816:;
	label$815:;
	FBSTRING ARGS$1;
	__builtin_memset( &ARGS$1, 0, 24ll );
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 24ll );
	label$817:;
	int32 vr$9 = fb_FileEof( (int32)F$1 );
	if( (int64)vr$9 != 0ll ) goto label$818;
	{
		fb_FileLineInput( (int32)F$1, (void*)&ARGS$1, -1ll, 0 );
		FBSTRING* vr$14 = fb_TRIM( (FBSTRING*)&ARGS$1 );
		fb_StrAssign( (void*)&ARGS$1, -1ll, (void*)vr$14, -1ll, 0 );
		label$819:;
		{
			int64 LENGTH$3;
			int64 vr$17 = fb_StrLen( (void*)&ARGS$1, -1ll );
			LENGTH$3 = vr$17;
			if( LENGTH$3 != 0ll ) goto label$823;
			{
				goto label$820;
			}
			label$823:;
			label$822:;
			int64 I$3;
			I$3 = 0ll;
			int64 QUOTECH$3;
			QUOTECH$3 = 0ll;
			label$824:;
			if( I$3 >= LENGTH$3 ) goto label$825;
			{
				int64 CH$4;
				CH$4 = (int64)*(uint8*)((uint8*)*(uint8**)&ARGS$1 + I$3);
				{
					uint64 TMP$423$5;
					TMP$423$5 = (uint64)CH$4;
					goto label$827;
					label$828:;
					{
						if( QUOTECH$3 != 0ll ) goto label$830;
						{
							goto label$825;
						}
						label$830:;
						label$829:;
					}
					goto label$826;
					label$831:;
					{
						if( QUOTECH$3 != CH$4 ) goto label$833;
						{
							QUOTECH$3 = 0ll;
						}
						goto label$832;
						label$833:;
						if( QUOTECH$3 != 0ll ) goto label$834;
						{
							QUOTECH$3 = CH$4;
						}
						label$834:;
						label$832:;
					}
					goto label$826;
					label$827:;
					static const void* tmp$740[8ll] = {
						&&label$828,
						&&label$826,
						&&label$831,
						&&label$826,
						&&label$826,
						&&label$826,
						&&label$826,
						&&label$831,
					};
					if( (TMP$423$5 - 32ull) > 7ull ) goto label$826;
					goto *tmp$740[TMP$423$5 - 32ull];
					label$826:;
				}
				I$3 = I$3 + 1ll;
			}
			goto label$824;
			label$825:;
			if( I$3 != 0ll ) goto label$836;
			{
				I$3 = 1ll;
			}
			goto label$835;
			label$836:;
			{
				FBSTRING* vr$22 = fb_LEFT( (FBSTRING*)&ARGS$1, I$3 );
				fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$22, -1ll, 0 );
				FBSTRING* vr$25 = fb_TRIM( (FBSTRING*)&ARG$1 );
				fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$25, -1ll, 0 );
				FBSTRING* vr$28 = STRUNQUOTE( &ARG$1 );
				fb_StrAssign( (void*)&ARG$1, -1ll, (void*)vr$28, -1ll, 0 );
				HANDLEARG( &ARG$1 );
			}
			label$835:;
			FBSTRING* vr$33 = fb_RIGHT( (FBSTRING*)&ARGS$1, LENGTH$3 - I$3 );
			fb_StrAssign( (void*)&ARGS$1, -1ll, (void*)vr$33, -1ll, 0 );
		}
		label$821:;
		goto label$819;
		label$820:;
	}
	goto label$817;
	label$818:;
	int32 vr$36 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$36 == 0ll ) goto label$837;
	void* vr$38 = fb_ErrorThrowAt( 2355, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$38;
	label$837:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$814:;
}

static int64 HTARGETNEEDSPIC( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$838:;
	fb$result$1 = 0ll;
	int64 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0ll ) goto label$841;
	{
		{
			uint64 TMP$425$3;
			int64 vr$2 = FBGETOPTION( 3ll );
			TMP$425$3 = (uint64)vr$2;
			goto label$843;
			label$844:;
			{
				fb$result$1 = -1ll;
			}
			goto label$842;
			label$843:;
			static const void* tmp$741[9ll] = {
				&&label$844,
				&&label$842,
				&&label$842,
				&&label$844,
				&&label$844,
				&&label$844,
				&&label$844,
				&&label$842,
				&&label$844,
			};
			if( (TMP$425$3 - 2ull) > 8ull ) goto label$842;
			goto *tmp$741[TMP$425$3 - 2ull];
			label$842:;
		}
	}
	label$841:;
	label$840:;
	label$839:;
	return fb$result$1;
}

static void HPARSEARGS( int64 ARGC$1, uint8** ARGV$1 )
{
	label$845:;
	*(int64*)&FBC$ = -1ll;
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 24ll );
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$426$2;
		TMP$426$2 = ARGC$1 + -1ll;
		goto label$847;
		label$850:;
		{
			fb_StrAssign( (void*)&ARG$1, -1ll, *(void**)((uint8*)ARGV$1 + (I$2 << (3ll & 63ll))), 0ll, 0 );
			HANDLEARG( &ARG$1 );
		}
		label$848:;
		I$2 = I$2 + 1ll;
		label$847:;
		if( I$2 <= TMP$426$2 ) goto label$850;
		label$849:;
	}
	if( *(int64*)&FBC$ < 0ll ) goto label$852;
	{
		FBSTRING TMP$427$2;
		__builtin_memset( &TMP$427$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$427$2, -1ll, *(void**)((uint8*)((uint8*)ARGV$1 + (ARGC$1 << (3ll & 63ll))) + -8ll), 0ll, 0 );
		HFATALINVALIDOPTION( &TMP$427$2 );
		fb_StrDelete( (FBSTRING*)&TMP$427$2 );
	}
	label$852:;
	label$851:;
	HCHECKWAITINGOBJFILE(  );
	int64 vr$13 = FBGETOPTION( 5ll );
	if( vr$13 != 0ll ) goto label$854;
	{
		int64 vr$14 = FBGETOPTION( 7ll );
		int64 vr$16 = FBGETOPTION( 6ll );
		if( ((int64)-(vr$14 >= 1ll) | (int64)-(vr$16 == 1ll)) == 0ll ) goto label$856;
		{
			ERRREPORTEX( 284ll, (uint8*)"", -1ll, 1ll, (uint8*)0ull );
			FBCEND( 1ll );
		}
		label$856:;
		label$855:;
	}
	label$854:;
	label$853:;
	if( *(int64*)((uint8*)&FBC$ + 48ll) < 0ll ) goto label$858;
	{
		FBSETOPTION( 4ll, *(int64*)((uint8*)&FBC$ + 48ll) );
	}
	label$858:;
	label$857:;
	int64 vr$19 = FBGETOPTION( 3ll );
	int64 vr$21 = FBGETCPUFAMILY(  );
	if( ((int64)-(vr$19 == 3ll) & (int64)-(vr$21 != 0ll)) == 0ll ) goto label$860;
	{
		uint8* vr$24 = FBGETFBCARCH(  );
		ERRREPORTEX( 82ll, (uint8*)vr$24, -1ll, 1ll, (uint8*)0ull );
		FBCEND( 1ll );
	}
	label$860:;
	label$859:;
	int64 vr$25 = FBGETCPUFAMILY(  );
	if( vr$25 != 0ll ) goto label$862;
	{
		FBSETOPTION( 2ll, 0ll );
	}
	goto label$861;
	label$862:;
	{
		FBSETOPTION( 2ll, 1ll );
	}
	label$861:;
	if( *(int64*)((uint8*)&FBC$ + 40ll) < 0ll ) goto label$864;
	{
		FBSETOPTION( 2ll, *(int64*)((uint8*)&FBC$ + 40ll) );
	}
	label$864:;
	label$863:;
	int64 vr$26 = FBGETOPTION( 2ll );
	int64 vr$28 = FBGETCPUFAMILY(  );
	int64 vr$31 = FBGETOPTION( 2ll );
	int64 vr$33 = FBGETCPUFAMILY(  );
	if( (((int64)-(vr$26 == 0ll) & (int64)-(vr$28 != 0ll)) | ((int64)-(vr$31 == 3ll) & (int64)-(vr$33 != 1ll))) == 0ll ) goto label$866;
	{
		uint8* vr$37 = FBGETFBCARCH(  );
		ERRREPORTEX( 83ll, (uint8*)vr$37, -1ll, 1ll, (uint8*)0ull );
		FBCEND( 1ll );
	}
	label$866:;
	label$865:;
	{
		uint64 TMP$428$2;
		int64 vr$38 = FBGETOPTION( 3ll );
		TMP$428$2 = (uint64)vr$38;
		goto label$868;
		label$869:;
		{
		}
		goto label$867;
		label$870:;
		{
			struct $9FBCIOFILE* RC$3;
			void* vr$40 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
			RC$3 = (struct $9FBCIOFILE*)vr$40;
			if( RC$3 == (struct $9FBCIOFILE*)0ull ) goto label$872;
			{
				ERRREPORTEX( 291ll, (uint8*)*(uint8**)RC$3, -1ll, 1ll, (uint8*)0ull );
				FBCEND( 1ll );
			}
			label$872:;
			label$871:;
		}
		goto label$867;
		label$868:;
		static const void* tmp$742[5ll] = {
			&&label$869,
			&&label$869,
			&&label$870,
			&&label$870,
			&&label$869,
		};
		if( TMP$428$2 > 4ull ) goto label$870;
		goto *tmp$742[TMP$428$2 - 0ull];
		label$867:;
	}
	{
		uint64 TMP$429$2;
		int64 vr$42 = FBGETOPTION( 3ll );
		TMP$429$2 = (uint64)vr$42;
		goto label$874;
		label$875:;
		{
		}
		goto label$873;
		label$876:;
		{
			int64 vr$44 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
			if( vr$44 <= 0ll ) goto label$878;
			{
				ERRREPORTEX( 291ll, (uint8*)*(uint8**)((uint8*)&FBC$ + 272ll), -1ll, 1ll, (uint8*)0ull );
				FBCEND( 1ll );
			}
			label$878:;
			label$877:;
		}
		goto label$873;
		label$874:;
		static const void* tmp$743[9ll] = {
			&&label$875,
			&&label$876,
			&&label$876,
			&&label$875,
			&&label$875,
			&&label$875,
			&&label$875,
			&&label$875,
			&&label$875,
		};
		if( (TMP$429$2 - 2ull) > 8ull ) goto label$876;
		goto *tmp$743[TMP$429$2 - 2ull];
		label$873:;
	}
	if( *(int64*)((uint8*)&FBC$ + 64ll) < 0ll ) goto label$880;
	{
		{
			int64 TMP$430$3;
			int64 vr$45 = FBGETCPUFAMILY(  );
			TMP$430$3 = vr$45;
			if( TMP$430$3 == 0ll ) goto label$883;
			label$884:;
			if( TMP$430$3 != 1ll ) goto label$882;
			label$883:;
			{
			}
			goto label$881;
			label$882:;
			{
				FBSTRING TMP$431$4;
				__builtin_memset( &TMP$431$4, 0, 24ll );
				FBSTRING* vr$47 = FBGETTARGETID(  );
				fb_StrAssign( (void*)&TMP$431$4, -1ll, (void*)vr$47, -1ll, 0 );
				ERRREPORTEX( 319ll, (uint8*)*(uint8**)&TMP$431$4, -1ll, 1ll, (uint8*)0ull );
				fb_StrDelete( (FBSTRING*)&TMP$431$4 );
			}
			label$885:;
			label$881:;
		}
		int64 vr$50 = FBGETOPTION( 2ll );
		int64 vr$52 = FBGETOPTION( 2ll );
		if( (((int64)-(vr$50 == 0ll) | (int64)-(vr$52 == 3ll)) & (int64)-(*(int64*)((uint8*)&FBC$ + 64ll) != 0ll)) == 0ll ) goto label$887;
		{
			ERRREPORTEX( 84ll, (uint8*)"", -1ll, 1ll, (uint8*)0ull );
		}
		label$887:;
		label$886:;
		FBSETOPTION( 9ll, *(int64*)((uint8*)&FBC$ + 64ll) );
	}
	label$880:;
	label$879:;
	int64 vr$57 = FBGETOPTION( 0ll );
	if( vr$57 != 2ll ) goto label$889;
	{
		int64 vr$58 = HTARGETNEEDSPIC(  );
		if( vr$58 == 0ll ) goto label$891;
		{
			FBSETOPTION( 32ll, -1ll );
		}
		label$891:;
		label$890:;
	}
	label$889:;
	label$888:;
	int64 vr$59 = FBGETOPTION( 32ll );
	if( vr$59 == 0ll ) goto label$893;
	{
		int64 vr$60 = FBGETOPTION( 0ll );
		if( vr$60 != 0ll ) goto label$895;
		{
			ERRREPORTEX( 85ll, (uint8*)"", -1ll, 1ll, (uint8*)0ull );
		}
		goto label$894;
		label$895:;
		int64 vr$61 = HTARGETNEEDSPIC(  );
		if( vr$61 != 0ll ) goto label$896;
		{
			ERRREPORTEX( 86ll, (uint8*)"", -1ll, 1ll, (uint8*)0ull );
		}
		label$896:;
		label$894:;
	}
	label$893:;
	label$892:;
	FBSETOPTION( 33ll, -1ll );
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	label$846:;
}

static void FBCDETERMINEPREFIX( void )
{
	label$897:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 2584ll), 261ll );
	if( vr$1 != 0ll ) goto label$900;
	{
		FBSTRING TMP$432$2;
		FBSTRING TMP$433$2;
		FBSTRING TMP$436$2;
		__builtin_memset( &TMP$432$2, 0, 24ll );
		FBSTRING* vr$3 = fb_ExePath(  );
		fb_StrAssign( (void*)&TMP$432$2, -1ll, (void*)vr$3, -1ll, 0 );
		FBSTRING* vr$6 = PATHSTRIPDIV( &TMP$432$2 );
		__builtin_memset( &TMP$433$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$433$2, (void*)vr$6, -1ll, (void*)"\x5C", 2ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)vr$9, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$432$2 );
		__builtin_memset( &TMP$436$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$436$2, (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)"..\x5C", 4ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)vr$15, -1ll, 0 );
	}
	goto label$899;
	label$900:;
	{
		FBSTRING TMP$437$2;
		__builtin_memset( &TMP$437$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$437$2, (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)"\x5C", 2ll );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)vr$20, -1ll, 0 );
	}
	label$899:;
	label$898:;
}

static void FBCSETUPCOMPILERPATHS( void )
{
	FBSTRING TMP$440$1;
	FBSTRING TMP$441$1;
	FBSTRING TMP$442$1;
	FBSTRING TMP$443$1;
	FBSTRING TMP$444$1;
	FBSTRING TMP$445$1;
	FBSTRING TMP$446$1;
	FBSTRING TMP$447$1;
	FBSTRING TMP$448$1;
	FBSTRING TMP$449$1;
	FBSTRING TMP$450$1;
	label$901:;
	FBSTRING TARGETID$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&TARGETID$1, -1ll, (void*)vr$0, -1ll, 0 );
	FBSTRING FBNAME$1;
	__builtin_memset( &FBNAME$1, 0, 24ll );
	fb_StrAssign( (void*)&FBNAME$1, -1ll, (void*)"freebasic", 10ll, 0 );
	FBSTRING LIBDIRNAME$1;
	fb_StrInit( (void*)&LIBDIRNAME$1, -1ll, (void*)"lib", 4ll, 0 );
	__builtin_memset( &TMP$440$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$440$1, (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)"bin", 4ll );
	__builtin_memset( &TMP$441$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$441$1, (void*)vr$9, -1ll, (void*)"\x5C", 2ll );
	__builtin_memset( &TMP$442$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$442$1, (void*)vr$12, -1ll, (void*)((uint8*)&FBC$ + 2295ll), 129ll );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2845ll), 261ll, (void*)vr$15, -1ll, 0 );
	__builtin_memset( &TMP$443$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$443$1, (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)"include", 8ll );
	__builtin_memset( &TMP$444$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$444$1, (void*)vr$21, -1ll, (void*)"\x5C", 2ll );
	__builtin_memset( &TMP$445$1, 0, 24ll );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$445$1, (void*)vr$24, -1ll, (void*)&FBNAME$1, -1ll );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 3106ll), 261ll, (void*)vr$27, -1ll, 0 );
	__builtin_memset( &TMP$446$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$446$1, (void*)((uint8*)&FBC$ + 2584ll), 261ll, (void*)&LIBDIRNAME$1, -1ll );
	__builtin_memset( &TMP$447$1, 0, 24ll );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$447$1, (void*)vr$35, -1ll, (void*)"\x5C", 2ll );
	__builtin_memset( &TMP$448$1, 0, 24ll );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$448$1, (void*)vr$38, -1ll, (void*)&FBNAME$1, -1ll );
	__builtin_memset( &TMP$449$1, 0, 24ll );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$449$1, (void*)vr$41, -1ll, (void*)"\x5C", 2ll );
	__builtin_memset( &TMP$450$1, 0, 24ll );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$450$1, (void*)vr$44, -1ll, (void*)&TARGETID$1, -1ll );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 3367ll), 261ll, (void*)vr$47, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&LIBDIRNAME$1 );
	fb_StrDelete( (FBSTRING*)&FBNAME$1 );
	fb_StrDelete( (FBSTRING*)&TARGETID$1 );
	label$902:;
}

static void FBCPRINTTARGETINFO( void )
{
	FBSTRING TMP$452$1;
	FBSTRING TMP$453$1;
	label$903:;
	FBSTRING S$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&S$1, -1ll, (void*)vr$0, -1ll, 0 );
	uint8* vr$2 = FBGETFBCARCH(  );
	__builtin_memset( &TMP$452$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$452$1, (void*)", ", 3ll, (void*)vr$2, 0ll );
	__builtin_memset( &TMP$453$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$453$1, (void*)&S$1, -1ll, (void*)vr$5, -1ll );
	fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$9, -1ll, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)", ", 3ll, 0 );
	int64 vr$12 = FBGETBITS(  );
	FBSTRING* vr$13 = fb_LongintToStr( vr$12 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$13, -1ll, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"bit", 4ll, 0 );
	int64 vr$17 = fb_StrLen( (void*)((uint8*)&FBC$ + 2166ll), 129ll );
	if( vr$17 <= 0ll ) goto label$906;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" (", 3ll, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)((uint8*)&FBC$ + 2166ll), 129ll, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)")", 2ll, 0 );
	}
	label$906:;
	label$905:;
	FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"target:", 7ll );
	fb_PrintString( 0, (FBSTRING*)vr$22, 2 );
	fb_PrintString( 0, (FBSTRING*)&S$1, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"backend:", 8ll );
	fb_PrintString( 0, (FBSTRING*)vr$24, 2 );
	int64 vr$25 = FBGETOPTION( 2ll );
	FBSTRING* vr$26 = FBGETBACKENDNAME( vr$25 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$904:;
}

static void FBCDETERMINEMAINNAME( void )
{
	label$907:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 1117ll), 261ll );
	if( vr$1 != 0ll ) goto label$910;
	{
		FBSTRING TMP$460$2;
		struct $9FBCIOFILE* M$2;
		void* vr$3 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
		M$2 = (struct $9FBCIOFILE*)vr$3;
		if( M$2 == (struct $9FBCIOFILE*)0ull ) goto label$912;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1117ll), 261ll, (void*)M$2, -1ll, 0 );
		}
		goto label$911;
		label$912:;
		{
			FBSTRING* OBJF$3;
			void* vr$8 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
			OBJF$3 = (FBSTRING*)vr$8;
			if( OBJF$3 == (FBSTRING*)0ull ) goto label$914;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1117ll), 261ll, (void*)OBJF$3, -1ll, 0 );
			}
			goto label$913;
			label$914:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1117ll), 261ll, (void*)"unnamed", 8ll, 0 );
			}
			label$913:;
		}
		label$911:;
		__builtin_memset( &TMP$460$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$460$2, -1ll, (void*)((uint8*)&FBC$ + 1117ll), 261ll, 0 );
		FBSTRING* vr$15 = HSTRIPEXT( &TMP$460$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 1117ll), 261ll, (void*)vr$15, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$460$2 );
	}
	label$910:;
	label$909:;
	label$908:;
}

static FBSTRING* HGETASMNAME( struct $9FBCIOFILE* MODULE$1, int64 STAGE$1 )
{
	FBSTRING TMP$466$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$915:;
	uint8* EXT$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING* vr$3 = HSTRIPEXT( *(FBSTRING**)((uint8*)MODULE$1 + 24ll) );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	int64 vr$5 = FBGETOPTION( 3ll );
	if( vr$5 == 11ll ) goto label$918;
	{
		EXT$1 = (uint8*)".asm";
	}
	goto label$917;
	label$918:;
	{
		EXT$1 = (uint8*)".o";
	}
	label$917:;
	int64 vr$6 = FBGETOPTION( 2ll );
	if( vr$6 != 3ll ) goto label$920;
	{
		EXT$1 = (uint8*)".a64";
	}
	label$920:;
	label$919:;
	if( STAGE$1 != 1ll ) goto label$922;
	{
		{
			int64 TMP$463$3;
			int64 vr$7 = FBGETOPTION( 2ll );
			TMP$463$3 = vr$7;
			if( TMP$463$3 != 1ll ) goto label$924;
			label$925:;
			{
				EXT$1 = (uint8*)".c";
			}
			goto label$923;
			label$924:;
			if( TMP$463$3 != 2ll ) goto label$926;
			label$927:;
			{
				EXT$1 = (uint8*)".ll";
			}
			label$926:;
			label$923:;
		}
	}
	label$922:;
	label$921:;
	__builtin_memset( &TMP$466$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$466$1, (void*)&ASMFILE$1, -1ll, (void*)EXT$1, 0ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$11, -1ll, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&ASMFILE$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$916:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static void HCOMPILEBAS( struct $9FBCIOFILE* MODULE$1, int64 IS_MAIN$1, int64 IS_FBCTINF$1 )
{
	label$928:;
	int64 PREVLANG$1;
	int64 PREVOUTTYPE$1;
	int64 RESTARTS$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING PPONLYFILE$1;
	__builtin_memset( &PPONLYFILE$1, 0, 24ll );
	FBSTRING* vr$2 = HGETASMNAME( MODULE$1, 1ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$2, -1ll, 0 );
	int64 vr$5 = FBGETOPTION( 2ll );
	if( (~(*(int64*)((uint8*)&FBC$ + 80ll)) & ((int64)-(vr$5 != 0ll) | ~(*(int64*)((uint8*)&FBC$ + 96ll)))) == 0ll ) goto label$931;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$931:;
	label$930:;
	int64 vr$11 = FBGETOPTION( 1ll );
	if( vr$11 == 0ll ) goto label$933;
	{
		fb_StrAssign( (void*)&PPONLYFILE$1, -1ll, *(void**)((uint8*)MODULE$1 + 24ll), -1ll, 0 );
		if( *(int64*)((uint8*)MODULE$1 + 32ll) != 0ll ) goto label$935;
		{
			FBSTRING TMP$468$3;
			FBSTRING* vr$16 = HSTRIPEXT( &PPONLYFILE$1 );
			__builtin_memset( &TMP$468$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$468$3, (void*)vr$16, -1ll, (void*)".pp.bas", 8ll );
			fb_StrAssign( (void*)&PPONLYFILE$1, -1ll, (void*)vr$19, -1ll, 0 );
		}
		label$935:;
		label$934:;
	}
	label$933:;
	label$932:;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$937;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"compiling: ", 11ll );
		fb_PrintString( 0, (FBSTRING*)vr$21, 2 );
		fb_PrintString( 0, (FBSTRING*)MODULE$1, 0 );
		FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)" -o ", 4ll );
		fb_PrintString( 0, (FBSTRING*)vr$24, 0 );
		fb_PrintString( 0, (FBSTRING*)&ASMFILE$1, 0 );
		int64 vr$26 = FBGETOPTION( 1ll );
		if( vr$26 == 0ll ) goto label$939;
		{
			FBSTRING TMP$472$3;
			__builtin_memset( &TMP$472$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$472$3, (void*)" -pp ", 6ll, (void*)&PPONLYFILE$1, -1ll );
			fb_PrintString( 0, (FBSTRING*)vr$30, 0 );
		}
		label$939:;
		label$938:;
		if( IS_MAIN$1 == 0ll ) goto label$941;
		{
			FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)" (main module)", 14ll );
			fb_PrintString( 0, (FBSTRING*)vr$31, 0 );
		}
		goto label$940;
		label$941:;
		if( IS_FBCTINF$1 == 0ll ) goto label$942;
		{
			FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)" (FB compile-time info)", 23ll );
			fb_PrintString( 0, (FBSTRING*)vr$32, 0 );
		}
		label$942:;
		label$940:;
		fb_PrintVoid( 0, 1 );
	}
	label$937:;
	label$936:;
	RESTARTS$1 = 0ll;
	int64 vr$33 = FBGETOPTION( 10ll );
	PREVLANG$1 = vr$33;
	int64 vr$34 = FBGETOPTION( 0ll );
	PREVOUTTYPE$1 = vr$34;
	if( IS_FBCTINF$1 == 0ll ) goto label$944;
	{
		FBSETOPTION( 0ll, 3ll );
	}
	label$944:;
	label$943:;
	label$945:;
	{
		FBINIT( IS_MAIN$1, RESTARTS$1 );
		if( IS_FBCTINF$1 == 0ll ) goto label$949;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll) );
		}
		goto label$948;
		label$949:;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 504ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 592ll) );
		}
		label$948:;
		FBCOMPILE( (uint8*)*(uint8**)MODULE$1, (uint8*)*(uint8**)&ASMFILE$1, &PPONLYFILE$1, IS_MAIN$1 );
		int64 vr$41 = ERRGETCOUNT(  );
		if( vr$41 <= 0ll ) goto label$951;
		{
			FBCEND( 1ll );
		}
		label$951:;
		label$950:;
		int64 vr$42 = FBSHOULDRESTART(  );
		if( vr$42 != 0ll ) goto label$953;
		{
			goto label$946;
		}
		label$953:;
		label$952:;
		RESTARTS$1 = RESTARTS$1 + 1ll;
		FBEND(  );
	}
	label$947:;
	goto label$945;
	label$946:;
	if( IS_FBCTINF$1 != 0ll ) goto label$955;
	{
		FBGETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll) );
	}
	label$955:;
	label$954:;
	FBEND(  );
	FBSETOPTION( 0ll, PREVOUTTYPE$1 );
	FBSETOPTION( 10ll, PREVLANG$1 );
	fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$929:;
}

static void HCOMPILEMODULES( void )
{
	label$956:;
	int64 ISMAIN$1;
	int64 CHECKMAIN$1;
	FBSTRING MAINFILE$1;
	__builtin_memset( &MAINFILE$1, 0, 24ll );
	struct $9FBCIOFILE* MODULE$1;
	ISMAIN$1 = 0ll;
	{
		int64 TMP$475$2;
		int64 vr$1 = FBGETOPTION( 0ll );
		TMP$475$2 = vr$1;
		if( TMP$475$2 == 0ll ) goto label$960;
		label$961:;
		if( TMP$475$2 != 2ll ) goto label$959;
		label$960:;
		{
			CHECKMAIN$1 = -1ll;
		}
		goto label$958;
		label$959:;
		{
			CHECKMAIN$1 = *(int64*)((uint8*)&FBC$ + 1384ll);
		}
		label$962:;
		label$958:;
	}
	if( CHECKMAIN$1 == 0ll ) goto label$964;
	{
		FBSTRING* vr$3 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 1117ll) );
		fb_StrAssign( (void*)&MAINFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	}
	label$964:;
	label$963:;
	void* vr$6 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$6;
	if( MODULE$1 != (struct $9FBCIOFILE*)0ull ) goto label$966;
	{
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 504ll) );
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 768ll), (struct $7TSTRSET*)((uint8*)&FBC$ + 592ll) );
		fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
		goto label$957;
	}
	label$966:;
	label$965:;
	label$967:;
	{
		if( CHECKMAIN$1 == 0ll ) goto label$971;
		{
			FBSTRING TMP$476$3;
			__builtin_memset( &TMP$476$3, 0, 24ll );
			FBSTRING* vr$15 = HSTRIPEXT( (FBSTRING*)MODULE$1 );
			fb_StrAssign( (void*)&TMP$476$3, -1ll, (void*)vr$15, -1ll, 0 );
			FBSTRING* vr$17 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$476$3 );
			int32 vr$19 = fb_StrCompare( (void*)&MAINFILE$1, -1ll, (void*)vr$17, -1ll );
			ISMAIN$1 = (int64)-((int64)vr$19 == 0ll);
			fb_StrDelete( (FBSTRING*)&TMP$476$3 );
		}
		label$971:;
		label$970:;
		HCOMPILEBAS( MODULE$1, ISMAIN$1, 0ll );
		void* vr$23 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$23;
	}
	label$969:;
	if( MODULE$1 != (struct $9FBCIOFILE*)0ull ) goto label$967;
	label$968:;
	fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
	label$957:;
}

static int64 HPARSEXPM( FBSTRING* XPMFILE$1, FBSTRING* CODE$1 )
{
	FBSTRING TMP$478$1;
	FBSTRING TMP$480$1;
	FBSTRING TMP$482$1;
	FBSTRING TMP$490$1;
	FBSTRING TMP$492$1;
	FBSTRING TMP$494$1;
	FBSTRING TMP$498$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$972:;
	__builtin_memset( &TMP$478$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$478$1, (void*)CODE$1, -1ll, (void*)"\x0A" "dim shared as zstring ptr ", 28ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$3, -1ll, 0 );
	__builtin_memset( &TMP$480$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$480$1, (void*)CODE$1, -1ll, (void*)"fb_program_icon_data", 21ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$6, -1ll, 0 );
	__builtin_memset( &TMP$482$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$482$1, (void*)CODE$1, -1ll, (void*)"(0 to ...) = _\x0A{ _\x0A", 20ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$9, -1ll, 0 );
	int64 F$1;
	int32 vr$10 = fb_FileFree(  );
	F$1 = (int64)vr$10;
	int32 vr$13 = fb_FileOpen( (FBSTRING*)XPMFILE$1, 2u, 0u, 0u, (int32)F$1, 0 );
	if( (int64)vr$13 == 0ll ) goto label$975;
	{
		goto label$973;
	}
	label$975:;
	label$974:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_FileLineInput( (int32)F$1, (void*)&LN$1, -1ll, 0 );
	FBSTRING* vr$19 = fb_StrUcase2( (FBSTRING*)&LN$1, 0 );
	int32 vr$20 = fb_StrCompare( (void*)vr$19, -1ll, (void*)"/* XPM */", 10ll );
	if( (int64)vr$20 == 0ll ) goto label$977;
	{
		int32 vr$23 = fb_FileClose( (int32)F$1 );
		if( (int64)vr$23 == 0ll ) goto label$978;
		void* vr$25 = fb_ErrorThrowAt( 2886, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
		goto *vr$25;
		label$978:;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$973;
	}
	label$977:;
	label$976:;
	int64 SAW_ROWS$1;
	SAW_ROWS$1 = 0ll;
	label$979:;
	int32 vr$28 = fb_FileEof( (int32)F$1 );
	if( (int64)vr$28 != 0ll ) goto label$980;
	{
		fb_FileLineInput( (int32)F$1, (void*)&LN$1, -1ll, 0 );
		int64 vr$33 = fb_StrLen( (void*)&LN$1, -1ll );
		FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1ll );
		int64 vr$36 = fb_StrInstr( 1ll, (FBSTRING*)&LN$1, (FBSTRING*)vr$34 );
		FBSTRING* vr$40 = fb_RIGHT( (FBSTRING*)&LN$1, (vr$33 - vr$36) + 1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$40, -1ll, 0 );
		FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1ll );
		int64 vr$44 = fb_StrInstr( 2ll, (FBSTRING*)&LN$1, (FBSTRING*)vr$42 );
		FBSTRING* vr$46 = fb_LEFT( (FBSTRING*)&LN$1, vr$44 );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$46, -1ll, 0 );
		int64 vr$49 = fb_StrLen( (void*)&LN$1, -1ll );
		if( vr$49 <= 0ll ) goto label$982;
		{
			FBSTRING TMP$487$3;
			FBSTRING TMP$488$3;
			if( SAW_ROWS$1 == 0ll ) goto label$984;
			{
				FBSTRING TMP$485$4;
				__builtin_memset( &TMP$485$4, 0, 24ll );
				FBSTRING* vr$52 = fb_StrConcat( &TMP$485$4, (void*)CODE$1, -1ll, (void*)", _\x0A", 5ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$52, -1ll, 0 );
			}
			label$984:;
			label$983:;
			__builtin_memset( &TMP$487$3, 0, 24ll );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$487$3, (void*)"\x09@", 3ll, (void*)&LN$1, -1ll );
			__builtin_memset( &TMP$488$3, 0, 24ll );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$488$3, (void*)CODE$1, -1ll, (void*)vr$56, -1ll );
			fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$59, -1ll, 0 );
			SAW_ROWS$1 = -1ll;
		}
		label$982:;
		label$981:;
	}
	goto label$979;
	label$980:;
	int32 vr$61 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$61 == 0ll ) goto label$985;
	void* vr$63 = fb_ErrorThrowAt( 2916, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$63;
	label$985:;
	if( SAW_ROWS$1 != 0ll ) goto label$987;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$973;
	}
	label$987:;
	label$986:;
	__builtin_memset( &TMP$490$1, 0, 24ll );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$490$1, (void*)CODE$1, -1ll, (void*)" _ \x0A", 5ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$67, -1ll, 0 );
	__builtin_memset( &TMP$492$1, 0, 24ll );
	FBSTRING* vr$70 = fb_StrConcat( &TMP$492$1, (void*)CODE$1, -1ll, (void*)"}\x0A\x0A", 4ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$70, -1ll, 0 );
	__builtin_memset( &TMP$494$1, 0, 24ll );
	FBSTRING* vr$73 = fb_StrConcat( &TMP$494$1, (void*)CODE$1, -1ll, (void*)"extern as zstring ptr ptr fb_program_icon alias \x22" "fb_program_icon\x22\x0A", 67ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$73, -1ll, 0 );
	__builtin_memset( &TMP$498$1, 0, 24ll );
	FBSTRING* vr$76 = fb_StrConcat( &TMP$498$1, (void*)CODE$1, -1ll, (void*)"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\x0A", 74ll );
	fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$76, -1ll, 0 );
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$973:;
	return fb$result$1;
}

static int64 HCOMPILEXPM( void )
{
	int64 TMP$503$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$988:;
	FBSTRING XPMFILE$1;
	__builtin_memset( &XPMFILE$1, 0, 24ll );
	FBSTRING CODE$1;
	__builtin_memset( &CODE$1, 0, 24ll );
	int64 FO$1;
	int64 vr$4 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
	if( vr$4 != 0ll ) goto label$991;
	{
		fb$result$1 = -1ll;
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$989;
	}
	label$991:;
	label$990:;
	fb_StrAssign( (void*)&XPMFILE$1, -1ll, (void*)((uint8*)&FBC$ + 272ll), -1ll, 0 );
	int64 vr$9 = fb_StrLen( *(void**)((uint8*)&FBC$ + 296ll), -1ll );
	if( vr$9 <= 0ll ) goto label$993;
	{
		FBSTRING* vr$10 = HSTRIPEXT( *(FBSTRING**)((uint8*)&FBC$ + 296ll) );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 272ll), -1ll, (void*)vr$10, -1ll, 0 );
	}
	label$993:;
	label$992:;
	fb_StrConcatAssign( (void*)((uint8*)&FBC$ + 272ll), -1ll, (void*)".bas", 5ll, 0 );
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$995;
	{
		FBSTRING TMP$501$2;
		FBSTRING TMP$502$2;
		FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"parsing xpm: ", 13ll );
		fb_PrintString( 0, (FBSTRING*)vr$13, 2 );
		__builtin_memset( &TMP$501$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$501$2, (void*)&XPMFILE$1, -1ll, (void*)" -o ", 5ll );
		__builtin_memset( &TMP$502$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$502$2, (void*)vr$18, -1ll, (void*)((uint8*)&FBC$ + 272ll), -1ll );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
	}
	label$995:;
	label$994:;
	int64 vr$24 = HPARSEXPM( &XPMFILE$1, &CODE$1 );
	if( vr$24 != 0ll ) goto label$997;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$989;
	}
	label$997:;
	label$996:;
	int32 vr$27 = fb_FileFree(  );
	FO$1 = (int64)vr$27;
	int32 vr$31 = fb_FileOpen( (FBSTRING*)((uint8*)&FBC$ + 272ll), 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$31 == 0ll ) goto label$999;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$989;
	}
	label$999:;
	label$998:;
	TMP$503$1 = FO$1;
	fb_PrintString( (int32)TMP$503$1, (FBSTRING*)&CODE$1, 0 );
	int32 vr$38 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$38 == 0ll ) goto label$1000;
	void* vr$40 = fb_ErrorThrowAt( 2972, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$40;
	label$1000:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$1002;
	{
		FBCADDTEMP( (FBSTRING*)((uint8*)&FBC$ + 272ll) );
	}
	label$1002:;
	label$1001:;
	HCOMPILEBAS( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll), 0ll, 0ll );
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&CODE$1 );
	fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
	label$989:;
	return fb$result$1;
}

static int64 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* MODULE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1003:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 24ll );
	FBSTRING* vr$3 = HGETASMNAME( MODULE$1, 2ll );
	fb_StrAssign( (void*)&ASMFILE$1, -1ll, (void*)vr$3, -1ll, 0 );
	int64 vr$6 = FBGETOPTION( 3ll );
	if( (~(*(int64*)((uint8*)&FBC$ + 96ll)) & ((int64)-(vr$6 != 11ll) | ~(*(int64*)((uint8*)&FBC$ + 104ll)))) == 0ll ) goto label$1006;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$1006:;
	label$1005:;
	{
		int64 TMP$504$2;
		int64 vr$12 = FBGETOPTION( 2ll );
		TMP$504$2 = vr$12;
		if( TMP$504$2 != 1ll ) goto label$1008;
		label$1009:;
		{
			{
				int64 TMP$505$4;
				int64 vr$13 = FBGETCPUFAMILY(  );
				TMP$505$4 = vr$13;
				if( TMP$505$4 != 0ll ) goto label$1011;
				label$1012:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m32 ", 6ll, 0 );
				}
				goto label$1010;
				label$1011:;
				if( TMP$505$4 != 1ll ) goto label$1013;
				label$1014:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m64 ", 6ll, 0 );
				}
				goto label$1010;
				label$1013:;
				if( TMP$505$4 != 4ll ) goto label$1015;
				label$1016:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m32 ", 6ll, 0 );
				}
				goto label$1010;
				label$1015:;
				if( TMP$505$4 != 5ll ) goto label$1017;
				label$1018:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-m64 ", 6ll, 0 );
				}
				label$1017:;
				label$1010:;
			}
			int64 vr$18 = FBGETOPTION( 3ll );
			if( vr$18 == 11ll ) goto label$1020;
			{
				if( *(int64*)((uint8*)&FBC$ + 56ll) == 0ll ) goto label$1022;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mcpu=native ", 14ll, 0 );
				}
				goto label$1021;
				label$1022:;
				{
					FBSTRING TMP$510$5;
					FBSTRING TMP$511$5;
					FBSTRING TMP$512$5;
					uint8* vr$20 = FBGETGCCARCH(  );
					__builtin_memset( &TMP$510$5, 0, 24ll );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$510$5, (void*)"-mcpu=", 7ll, (void*)vr$20, 0ll );
					__builtin_memset( &TMP$511$5, 0, 24ll );
					FBSTRING* vr$26 = fb_StrConcat( &TMP$511$5, (void*)vr$23, -1ll, (void*)" ", 2ll );
					__builtin_memset( &TMP$512$5, 0, 24ll );
					FBSTRING* vr$30 = fb_StrConcat( &TMP$512$5, (void*)&LN$1, -1ll, (void*)vr$26, -1ll );
					fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$30, -1ll, 0 );
				}
				label$1021:;
			}
			label$1020:;
			label$1019:;
			int64 vr$32 = FBGETOPTION( 32ll );
			if( vr$32 == 0ll ) goto label$1024;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fPIC ", 7ll, 0 );
			}
			label$1024:;
			label$1023:;
			int64 vr$34 = FBGETOPTION( 3ll );
			if( vr$34 == 11ll ) goto label$1026;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-S -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-unused-but-set-variable ", 30ll, 0 );
			}
			goto label$1025;
			label$1026:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 ", 70ll, 0 );
			}
			label$1025:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-main ", 11ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Werror-implicit-function-declaration ", 39ll, 0 );
			int64 vr$41 = FBGETOPTION( 3ll );
			if( vr$41 == 11ll ) goto label$1028;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-O", 3ll, 0 );
				int64 vr$43 = FBGETOPTION( 8ll );
				FBSTRING* vr$44 = fb_LongintToStr( vr$43 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$44, -1ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			}
			label$1028:;
			label$1027:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-strict-aliasing ", 22ll, 0 );
			int64 vr$48 = FBGETOPTION( 3ll );
			if( vr$48 == 11ll ) goto label$1030;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-frounding-math ", 17ll, 0 );
			}
			label$1030:;
			label$1029:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-math-errno ", 17ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fwrapv ", 9ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables ", 68ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-Wno-format ", 13ll, 0 );
			int64 vr$54 = FBGETOPTION( 13ll );
			if( vr$54 == 0ll ) goto label$1032;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-g ", 4ll, 0 );
			}
			label$1032:;
			label$1031:;
			int64 vr$56 = FBGETOPTION( 5ll );
			if( vr$56 != 1ll ) goto label$1034;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-mfpmath=sse -msse2 ", 21ll, 0 );
			}
			label$1034:;
			label$1033:;
			{
				int64 TMP$532$4;
				int64 vr$58 = FBGETCPUFAMILY(  );
				TMP$532$4 = vr$58;
				if( TMP$532$4 == 0ll ) goto label$1037;
				label$1038:;
				if( TMP$532$4 != 1ll ) goto label$1036;
				label$1037:;
				{
					int64 vr$59 = FBGETOPTION( 9ll );
					if( vr$59 != 0ll ) goto label$1040;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-masm=intel ", 13ll, 0 );
					}
					label$1040:;
					label$1039:;
				}
				label$1036:;
				label$1035:;
			}
		}
		goto label$1007;
		label$1008:;
		if( TMP$504$2 != 2ll ) goto label$1041;
		label$1042:;
		{
			{
				int64 TMP$534$4;
				int64 vr$61 = FBGETCPUFAMILY(  );
				TMP$534$4 = vr$61;
				if( TMP$534$4 != 0ll ) goto label$1044;
				label$1045:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=x86 ", 12ll, 0 );
				}
				goto label$1043;
				label$1044:;
				if( TMP$534$4 != 1ll ) goto label$1046;
				label$1047:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=x86-64 ", 15ll, 0 );
				}
				goto label$1043;
				label$1046:;
				if( TMP$534$4 != 2ll ) goto label$1048;
				label$1049:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=arm ", 12ll, 0 );
				}
				goto label$1043;
				label$1048:;
				if( TMP$534$4 != 3ll ) goto label$1050;
				label$1051:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=armv8-a ", 16ll, 0 );
				}
				goto label$1043;
				label$1050:;
				if( TMP$534$4 != 4ll ) goto label$1052;
				label$1053:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=powerpc ", 16ll, 0 );
				}
				goto label$1043;
				label$1052:;
				if( TMP$534$4 != 5ll ) goto label$1054;
				label$1055:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-march=powerpc64 ", 18ll, 0 );
				}
				label$1054:;
				label$1043:;
			}
			int64 vr$68 = FBGETOPTION( 32ll );
			if( vr$68 == 0ll ) goto label$1057;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-relocation-model=pic ", 23ll, 0 );
			}
			label$1057:;
			label$1056:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-O", 3ll, 0 );
			int64 vr$71 = FBGETOPTION( 8ll );
			FBSTRING* vr$72 = fb_LongintToStr( vr$71 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$72, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			{
				int64 TMP$542$4;
				int64 vr$75 = FBGETCPUFAMILY(  );
				TMP$542$4 = vr$75;
				if( TMP$542$4 == 0ll ) goto label$1060;
				label$1061:;
				if( TMP$542$4 != 1ll ) goto label$1059;
				label$1060:;
				{
					int64 vr$76 = FBGETOPTION( 9ll );
					if( vr$76 != 0ll ) goto label$1063;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--x86-asm-syntax=intel ", 24ll, 0 );
					}
					label$1063:;
					label$1062:;
				}
				label$1059:;
				label$1058:;
			}
		}
		label$1041:;
		label$1007:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$79 = HGETASMNAME( MODULE$1, 1ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$79, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22 ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-o \x22", 5ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&ASMFILE$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&FBC$ + 2038ll), 128ll, 0 );
	{
		int64 TMP$546$2;
		int64 vr$88 = FBGETOPTION( 2ll );
		TMP$546$2 = vr$88;
		if( TMP$546$2 != 1ll ) goto label$1065;
		label$1066:;
		{
			$6TMP$24 GCC$3;
			GCC$3 = 3ll;
			int64 vr$89 = FBGETOPTION( 3ll );
			if( vr$89 != 11ll ) goto label$1068;
			{
				GCC$3 = 13ll;
			}
			label$1068:;
			label$1067:;
			int64 vr$91 = FBCRUNBIN( (uint8*)"compiling C", GCC$3, &LN$1 );
			fb$result$1 = vr$91;
		}
		goto label$1064;
		label$1065:;
		if( TMP$546$2 != 2ll ) goto label$1069;
		label$1070:;
		{
			int64 vr$93 = FBCRUNBIN( (uint8*)"compiling LLVM IR", 4ll, &LN$1 );
			fb$result$1 = vr$93;
		}
		label$1069:;
		label$1064:;
	}
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1004:;
	return fb$result$1;
}

static void HCOMPILESTAGE2MODULES( void )
{
	label$1071:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1073:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0ull ) goto label$1074;
	{
		int64 vr$2 = HCOMPILESTAGE2MODULE( MODULE$1 );
		if( vr$2 != 0ll ) goto label$1076;
		{
			FBCEND( 1ll );
		}
		label$1076:;
		label$1075:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1073;
	label$1074:;
	label$1072:;
}

static int64 HASSEMBLEMODULE( struct $9FBCIOFILE* MODULE$1 )
{
	FBSTRING TMP$555$1;
	FBSTRING TMP$556$1;
	FBSTRING TMP$557$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1077:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	{
		int64 TMP$549$2;
		int64 vr$2 = FBGETCPUFAMILY(  );
		TMP$549$2 = vr$2;
		if( TMP$549$2 != 0ll ) goto label$1080;
		label$1081:;
		{
			int64 vr$3 = FBGETOPTION( 3ll );
			if( vr$3 != 9ll ) goto label$1083;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-arch i386 ", 12ll, 0 );
			}
			goto label$1082;
			label$1083:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--32 ", 6ll, 0 );
			}
			label$1082:;
		}
		goto label$1079;
		label$1080:;
		if( TMP$549$2 != 1ll ) goto label$1084;
		label$1085:;
		{
			int64 vr$6 = FBGETOPTION( 3ll );
			if( vr$6 != 9ll ) goto label$1087;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"-arch x86_64 ", 14ll, 0 );
			}
			goto label$1086;
			label$1087:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--64 ", 6ll, 0 );
			}
			label$1086:;
		}
		label$1084:;
		label$1079:;
	}
	int64 vr$9 = FBGETOPTION( 13ll );
	if( vr$9 != 0ll ) goto label$1089;
	{
		int64 vr$10 = FBGETOPTION( 3ll );
		if( vr$10 == 9ll ) goto label$1091;
		{
			int64 vr$11 = FBGETOPTION( 3ll );
			if( vr$11 == 11ll ) goto label$1093;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"--strip-local-absolute ", 24ll, 0 );
			}
			label$1093:;
			label$1092:;
		}
		label$1091:;
		label$1090:;
	}
	label$1089:;
	label$1088:;
	int64 vr$13 = FBGETOPTION( 3ll );
	if( vr$13 != 11ll ) goto label$1095;
	{
		fb$result$1 = -1ll;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1078;
	}
	label$1095:;
	label$1094:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	FBSTRING* vr$16 = HGETASMNAME( MODULE$1, 2ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$16, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22 ", 3ll, 0 );
	__builtin_memset( &TMP$555$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$555$1, (void*)"-o \x22", 5ll, *(void**)((uint8*)MODULE$1 + 24ll), -1ll );
	__builtin_memset( &TMP$556$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$556$1, (void*)vr$22, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$557$1, 0, 24ll );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$557$1, (void*)&LN$1, -1ll, (void*)vr$25, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$29, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&FBC$ + 1782ll), 128ll, 0 );
	$6TMP$24 GAS$1;
	GAS$1 = 0ll;
	int64 vr$33 = FBGETOPTION( 3ll );
	if( vr$33 != 11ll ) goto label$1097;
	{
		GAS$1 = 10ll;
	}
	label$1097:;
	label$1096:;
	int64 vr$35 = FBCRUNBIN( (uint8*)"assembling", GAS$1, &LN$1 );
	if( vr$35 != 0ll ) goto label$1099;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1078;
	}
	label$1099:;
	label$1098:;
	if( *(int64*)((uint8*)&FBC$ + 104ll) != 0ll ) goto label$1101;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)MODULE$1 + 24ll) );
	}
	label$1101:;
	label$1100:;
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1078:;
	return fb$result$1;
}

static void HASSEMBLEMODULES( void )
{
	label$1102:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 144ll) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1104:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0ull ) goto label$1105;
	{
		int64 vr$2 = HASSEMBLEMODULE( MODULE$1 );
		if( vr$2 != 0ll ) goto label$1107;
		{
			FBCEND( 1ll );
		}
		label$1107:;
		label$1106:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1104;
	label$1105:;
	label$1103:;
}

static int64 HASSEMBLERC( struct $9FBCIOFILE* RC$1 )
{
	FBSTRING TMP$560$1;
	FBSTRING TMP$561$1;
	FBSTRING TMP$562$1;
	FBSTRING TMP$563$1;
	FBSTRING TMP$564$1;
	FBSTRING TMP$565$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1108:;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1ll, (void*)"--output-format=coff --include-dir=.", 37ll, 0 );
	__builtin_memset( &TMP$560$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$560$1, (void*)" \x22", 3ll, (void*)RC$1, -1ll );
	__builtin_memset( &TMP$561$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$561$1, (void*)vr$6, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$562$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$562$1, (void*)&LN$1, -1ll, (void*)vr$9, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$13, -1ll, 0 );
	__builtin_memset( &TMP$563$1, 0, 24ll );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$563$1, (void*)" \x22", 3ll, *(void**)((uint8*)RC$1 + 24ll), -1ll );
	__builtin_memset( &TMP$564$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$564$1, (void*)vr$18, -1ll, (void*)"\x22", 2ll );
	__builtin_memset( &TMP$565$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$565$1, (void*)&LN$1, -1ll, (void*)vr$21, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$25, -1ll, 0 );
	int64 vr$28 = FBCRUNBIN( (uint8*)"compiling rc", 7ll, &LN$1 );
	fb$result$1 = vr$28;
	if( *(int64*)((uint8*)&FBC$ + 104ll) != 0ll ) goto label$1111;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)RC$1 + 24ll) );
	}
	label$1111:;
	label$1110:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1109:;
	return fb$result$1;
}

static void HASSEMBLERCS( void )
{
	label$1112:;
	struct $9FBCIOFILE* RC$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 208ll) );
	RC$1 = (struct $9FBCIOFILE*)vr$1;
	label$1114:;
	if( RC$1 == (struct $9FBCIOFILE*)0ull ) goto label$1115;
	{
		int64 vr$2 = HASSEMBLERC( RC$1 );
		if( vr$2 != 0ll ) goto label$1117;
		{
			FBCEND( 1ll );
		}
		label$1117:;
		label$1116:;
		void* vr$3 = LISTGETNEXT( (void*)RC$1 );
		RC$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1114;
	label$1115:;
	label$1113:;
}

static void HASSEMBLEXPM( void )
{
	label$1118:;
	int64 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 272ll), -1ll );
	if( vr$1 <= 0ll ) goto label$1121;
	{
		int64 vr$2 = FBGETOPTION( 2ll );
		if( vr$2 == 0ll ) goto label$1123;
		{
			HCOMPILESTAGE2MODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll) );
		}
		label$1123:;
		label$1122:;
		int64 vr$5 = HASSEMBLEMODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 272ll) );
		if( vr$5 != 0ll ) goto label$1125;
		{
			FBCEND( 1ll );
		}
		label$1125:;
		label$1124:;
	}
	label$1121:;
	label$1120:;
	label$1119:;
}

static int64 HCOMPILEFBCTINF( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1126:;
	struct $9FBCIOFILE FBCTINF$1;
	_ZN9FBCIOFILEC1Ev( &FBCTINF$1 );
	FBSTRING OBJFILE$1;
	__builtin_memset( &OBJFILE$1, 0, 24ll );
	int64 FO$1;
	fb_StrAssign( (void*)&FBCTINF$1, -1ll, (void*)"__fb_ct.inf.bas", 16ll, 0 );
	fb_StrAssign( (void*)&OBJFILE$1, -1ll, (void*)"__fb_ct.inf", 12ll, 0 );
	*(FBSTRING**)((uint8*)&FBCTINF$1 + 24ll) = &OBJFILE$1;
	if( *(int64*)((uint8*)&FBC$ + 112ll) == 0ll ) goto label$1129;
	{
		FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"creating: ", 10ll );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		fb_PrintString( 0, (FBSTRING*)&FBCTINF$1, 1 );
	}
	label$1129:;
	label$1128:;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = (int64)vr$8;
	int32 vr$12 = fb_FileOpen( (FBSTRING*)&FBCTINF$1, 3u, 0u, 0u, (int32)FO$1, 0 );
	if( (int64)vr$12 == 0ll ) goto label$1131;
	{
		fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
		_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
		goto label$1127;
	}
	label$1131:;
	label$1130:;
	int32 vr$17 = fb_FileClose( (int32)FO$1 );
	if( (int64)vr$17 == 0ll ) goto label$1132;
	void* vr$19 = fb_ErrorThrowAt( 3348, (uint8*)"src/compiler/fbc.bas", (void*)0ull, (void*)0ull );
	goto *vr$19;
	label$1132:;
	if( *(int64*)((uint8*)&FBC$ + 80ll) != 0ll ) goto label$1134;
	{
		FBCADDTEMP( (FBSTRING*)&FBCTINF$1 );
	}
	label$1134:;
	label$1133:;
	HCOMPILEBAS( &FBCTINF$1, 0ll, -1ll );
	int64 vr$22 = FBGETOPTION( 2ll );
	if( vr$22 == 0ll ) goto label$1136;
	{
		HCOMPILESTAGE2MODULE( &FBCTINF$1 );
	}
	label$1136:;
	label$1135:;
	int64 vr$25 = HASSEMBLEMODULE( &FBCTINF$1 );
	fb$result$1 = vr$25;
	fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
	_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
	label$1127:;
	return fb$result$1;
}

static int64 HARCHIVEFILES( void )
{
	FBSTRING TMP$570$1;
	FBSTRING TMP$571$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1137:;
	HSETOUTNAME(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 856ll) );
	int32 vr$3 = fb_FileKill( (FBSTRING*)vr$2 );
	if( (int64)vr$3 == 0ll ) goto label$1140;
	{
	}
	label$1140:;
	label$1139:;
	FBSTRING LN$1;
	__builtin_memset( &TMP$570$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$570$1, (void*)"-rsc \x22", 7ll, (void*)((uint8*)&FBC$ + 856ll), 261ll );
	__builtin_memset( &TMP$571$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$571$1, (void*)vr$8, -1ll, (void*)"\x22 ", 3ll );
	fb_StrInit( (void*)&LN$1, -1ll, (void*)vr$11, -1ll, 0 );
	int64 vr$13 = FBGETOPTION( 34ll );
	int64 vr$14 = FBISCROSSCOMP(  );
	if( (vr$13 & ~vr$14) == 0ll ) goto label$1142;
	{
		FBSTRING TMP$575$2;
		int64 vr$17 = HCOMPILEFBCTINF(  );
		if( vr$17 == 0ll ) goto label$1144;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22__fb_ct.inf\x22 ", 15ll, 0 );
		}
		label$1144:;
		label$1143:;
		__builtin_memset( &TMP$575$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$575$2, -1ll, (void*)"__fb_ct.inf", 12ll, 0 );
		FBCADDTEMP( &TMP$575$2 );
		fb_StrDelete( (FBSTRING*)&TMP$575$2 );
	}
	label$1142:;
	label$1141:;
	FBSTRING* OBJFILE$1;
	void* vr$24 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 376ll) );
	OBJFILE$1 = (FBSTRING*)vr$24;
	label$1145:;
	if( OBJFILE$1 == (FBSTRING*)0ull ) goto label$1146;
	{
		FBSTRING TMP$576$2;
		FBSTRING TMP$577$2;
		FBSTRING TMP$578$2;
		__builtin_memset( &TMP$576$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$576$2, (void*)"\x22", 2ll, (void*)OBJFILE$1, -1ll );
		__builtin_memset( &TMP$577$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$577$2, (void*)vr$27, -1ll, (void*)"\x22 ", 3ll );
		__builtin_memset( &TMP$578$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$578$2, (void*)&LN$1, -1ll, (void*)vr$30, -1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$34, -1ll, 0 );
		void* vr$36 = LISTGETNEXT( (void*)OBJFILE$1 );
		OBJFILE$1 = (FBSTRING*)vr$36;
	}
	goto label$1145;
	label$1146:;
	int64 vr$38 = FBCRUNBIN( (uint8*)"archiving", 1ll, &LN$1 );
	fb$result$1 = vr$38;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1138:;
	return fb$result$1;
}

static void HSETDEFAULTLIBPATHS( void )
{
	FBSTRING TMP$580$1;
	FBSTRING TMP$581$1;
	label$1147:;
	__builtin_memset( &TMP$580$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$580$1, -1ll, (void*)((uint8*)&FBC$ + 3367ll), 261ll, 0 );
	FBCADDDEFLIBPATH( &TMP$580$1 );
	fb_StrDelete( (FBSTRING*)&TMP$580$1 );
	__builtin_memset( &TMP$581$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$581$1, -1ll, (void*)".", 2ll, 0 );
	FBCADDDEFLIBPATH( &TMP$581$1 );
	fb_StrDelete( (FBSTRING*)&TMP$581$1 );
	int64 vr$9 = FBGETOPTION( 3ll );
	if( vr$9 == 11ll ) goto label$1150;
	{
		FBCADDLIBPATHFOR( (uint8*)"libgcc.a" );
	}
	label$1150:;
	label$1149:;
	{
		int64 TMP$583$2;
		int64 vr$10 = FBGETOPTION( 3ll );
		TMP$583$2 = vr$10;
		if( TMP$583$2 != 3ll ) goto label$1152;
		label$1153:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libm.a" );
		}
		goto label$1151;
		label$1152:;
		if( TMP$583$2 != 0ll ) goto label$1154;
		label$1155:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libmingw32.a" );
		}
		label$1154:;
		label$1151:;
	}
	label$1148:;
}

static void FBCADDDEFLIB( uint8* LIBNAME$1 )
{
	FBSTRING TMP$586$1;
	label$1156:;
	__builtin_memset( &TMP$586$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$586$1, -1ll, (void*)LIBNAME$1, 0ll, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 680ll), &TMP$586$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$586$1 );
	label$1157:;
}

static FBSTRING* HGETFBLIBNAMESUFFIX( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$1158:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 vr$2 = FBGETOPTION( 30ll );
	if( vr$2 == 0ll ) goto label$1161;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"mt", 3ll, 0 );
	}
	label$1161:;
	label$1160:;
	int64 vr$4 = FBGETOPTION( 32ll );
	if( vr$4 == 0ll ) goto label$1163;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"pic", 4ll, 0 );
	}
	label$1163:;
	label$1162:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1159:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static void HADDDEFAULTLIBS( void )
{
	FBSTRING TMP$587$1;
	FBSTRING TMP$588$1;
	label$1164:;
	__builtin_memset( &TMP$588$1, 0, 24ll );
	FBSTRING* vr$1 = HGETFBLIBNAMESUFFIX(  );
	__builtin_memset( &TMP$587$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$587$1, (void*)"fb", 3ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$588$1, -1ll, (void*)vr$4, -1ll, 0 );
	FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$588$1 );
	fb_StrDelete( (FBSTRING*)&TMP$588$1 );
	int64 vr$7 = FBGETOPTION( 31ll );
	if( vr$7 == 0ll ) goto label$1167;
	{
		FBSTRING TMP$590$2;
		FBSTRING TMP$591$2;
		__builtin_memset( &TMP$591$2, 0, 24ll );
		FBSTRING* vr$9 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$590$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$590$2, (void*)"fbgfx", 6ll, (void*)vr$9, -1ll );
		fb_StrAssign( (void*)&TMP$591$2, -1ll, (void*)vr$12, -1ll, 0 );
		FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$591$2 );
		fb_StrDelete( (FBSTRING*)&TMP$591$2 );
		{
			uint64 TMP$592$3;
			int64 vr$15 = FBGETOPTION( 3ll );
			TMP$592$3 = (uint64)vr$15;
			goto label$1169;
			label$1170:;
			{
				FBCADDDEFLIB( (uint8*)"gdi32" );
				FBCADDDEFLIB( (uint8*)"winmm" );
			}
			goto label$1168;
			label$1171:;
			{
				FBCADDDEFLIB( (uint8*)"X11" );
				FBCADDDEFLIB( (uint8*)"Xext" );
				FBCADDDEFLIB( (uint8*)"Xpm" );
				FBCADDDEFLIB( (uint8*)"Xrandr" );
				FBCADDDEFLIB( (uint8*)"Xrender" );
			}
			goto label$1168;
			label$1169:;
			static const void* tmp$744[11ll] = {
				&&label$1170,
				&&label$1170,
				&&label$1171,
				&&label$1168,
				&&label$1168,
				&&label$1171,
				&&label$1171,
				&&label$1171,
				&&label$1171,
				&&label$1171,
				&&label$1171,
			};
			if( TMP$592$3 > 10ull ) goto label$1168;
			goto *tmp$744[TMP$592$3 - 0ull];
			label$1168:;
		}
	}
	label$1167:;
	label$1166:;
	{
		uint64 TMP$600$2;
		int64 vr$16 = FBGETOPTION( 3ll );
		TMP$600$2 = (uint64)vr$16;
		goto label$1173;
		label$1174:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"cygwin" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			int64 vr$17 = FBGETOPTION( 21ll );
			if( vr$17 == 0ll ) goto label$1176;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1176:;
			label$1175:;
		}
		goto label$1172;
		label$1177:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"System" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1172;
		label$1178:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			int64 vr$18 = FBGETOPTION( 30ll );
			if( vr$18 == 0ll ) goto label$1180;
			{
				FBCADDDEFLIB( (uint8*)"pthread" );
				FBCADDDEFLIB( (uint8*)"socket" );
			}
			label$1180:;
			label$1179:;
		}
		goto label$1172;
		label$1181:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1172;
		label$1182:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1172;
		label$1183:;
		{
			FBSTRING* vr$19 = FBCFINDLIBFILE( (uint8*)"libtinfo.a" );
			int64 vr$20 = fb_StrLen( (void*)vr$19, -1ll );
			FBSTRING* vr$22 = FBCFINDLIBFILE( (uint8*)"libtinfo.so" );
			int64 vr$23 = fb_StrLen( (void*)vr$22, -1ll );
			if( ((int64)-(vr$20 > 0ll) | (int64)-(vr$23 > 0ll)) == 0ll ) goto label$1185;
			{
				FBCADDDEFLIB( (uint8*)"tinfo" );
			}
			goto label$1184;
			label$1185:;
			{
				FBCADDDEFLIB( (uint8*)"ncurses" );
			}
			label$1184:;
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"dl" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBSTRING* vr$26 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int64 vr$27 = fb_StrLen( (void*)vr$26, -1ll );
			FBSTRING* vr$29 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.so" );
			int64 vr$30 = fb_StrLen( (void*)vr$29, -1ll );
			if( ((int64)-(vr$27 > 0ll) | (int64)-(vr$30 > 0ll)) == 0ll ) goto label$1187;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1187:;
			label$1186:;
			FBCADDDEFLIB( (uint8*)"c" );
		}
		goto label$1172;
		label$1188:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1172;
		label$1189:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1172;
		label$1190:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"msvcrt" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			FBCADDDEFLIB( (uint8*)"mingw32" );
			FBCADDDEFLIB( (uint8*)"mingwex" );
			FBCADDDEFLIB( (uint8*)"moldname" );
			FBSTRING* vr$33 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int64 vr$34 = fb_StrLen( (void*)vr$33, -1ll );
			FBSTRING* vr$36 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.dll.a" );
			int64 vr$37 = fb_StrLen( (void*)vr$36, -1ll );
			if( ((int64)-(vr$34 > 0ll) | (int64)-(vr$37 > 0ll)) == 0ll ) goto label$1192;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1192:;
			label$1191:;
			int64 vr$40 = FBGETOPTION( 21ll );
			if( vr$40 == 0ll ) goto label$1194;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1194:;
			label$1193:;
		}
		goto label$1172;
		label$1195:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"fbgfx" );
			FBCADDDEFLIB( (uint8*)"openxdk" );
			FBCADDDEFLIB( (uint8*)"hal" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"usb" );
			FBCADDDEFLIB( (uint8*)"xboxkrnl" );
			FBCADDDEFLIB( (uint8*)"m" );
			int64 vr$41 = FBGETOPTION( 21ll );
			if( vr$41 == 0ll ) goto label$1197;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1197:;
			label$1196:;
		}
		goto label$1172;
		label$1173:;
		static const void* tmp$745[11ll] = {
			&&label$1190,
			&&label$1174,
			&&label$1183,
			&&label$1178,
			&&label$1195,
			&&label$1181,
			&&label$1182,
			&&label$1182,
			&&label$1189,
			&&label$1177,
			&&label$1188,
		};
		if( TMP$600$2 > 10ull ) goto label$1172;
		goto *tmp$745[TMP$600$2 - 0ull];
		label$1172:;
	}
	label$1165:;
}

static void HPRINTOPTIONS( int64 VERBOSE$1 )
{
	label$1198:;
	FBSTRING* vr$0 = fb_StrAllocTempDescZEx( (uint8*)"usage: fbc [options] <input files>", 34ll );
	fb_PrintString( 0, (FBSTRING*)vr$0, 1 );
	FBSTRING* vr$1 = fb_StrAllocTempDescZEx( (uint8*)"input files:", 12ll );
	fb_PrintString( 0, (FBSTRING*)vr$1, 1 );
	FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"  *.a = static library, *.o = object file, *.bas = source", 57ll );
	fb_PrintString( 0, (FBSTRING*)vr$2, 1 );
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"  *.rc = resource script, *.res = compiled resource (win32)", 59ll );
	fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"  *.xpm = icon resource (*nix/*bsd)", 35ll );
	fb_PrintString( 0, (FBSTRING*)vr$4, 1 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"options:", 8ll );
	fb_PrintString( 0, (FBSTRING*)vr$5, 1 );
	FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"  @<file>          Read more command line arguments from a file", 63ll );
	fb_PrintString( 0, (FBSTRING*)vr$6, 1 );
	FBSTRING* vr$7 = fb_StrAllocTempDescZEx( (uint8*)"  -a <file>        Treat file as .o/.a input file", 49ll );
	fb_PrintString( 0, (FBSTRING*)vr$7, 1 );
	FBSTRING* vr$8 = fb_StrAllocTempDescZEx( (uint8*)"  -arch <type>     Set target architecture (default: 486)", 57ll );
	fb_PrintString( 0, (FBSTRING*)vr$8, 1 );
	FBSTRING* vr$9 = fb_StrAllocTempDescZEx( (uint8*)"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$9, 1 );
	FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)"  -b <file>        Treat file as .bas input file", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$10, 1 );
	FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (uint8*)"  -c               Compile only, do not link", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$11, 1 );
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"  -C               Preserve temporary .o files", 46ll );
	fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"  -d <name>[=<val>]  Add a global #define", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"  -dll             Same as -dylib", 33ll );
	fb_PrintString( 0, (FBSTRING*)vr$14, 1 );
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"  -e               Enable runtime error checking", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1201;
	{
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"  -earray          Enable array bounds checking", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$17, 1 );
		FBSTRING* vr$18 = fb_StrAllocTempDescZEx( (uint8*)"  -eassert         Enable assert() and assertwarn() checking", 60ll );
		fb_PrintString( 0, (FBSTRING*)vr$18, 1 );
		FBSTRING* vr$19 = fb_StrAllocTempDescZEx( (uint8*)"  -edebug          Enable __FB_DEBUG__", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$19, 1 );
		FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"  -edebuginfo      Add debug info", 33ll );
		fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"  -elocation       Enable error location reporting", 50ll );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
		FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"  -enullptr        Enable null-pointer checking", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
	}
	label$1201:;
	label$1200:;
	FBSTRING* vr$23 = fb_StrAllocTempDescZEx( (uint8*)"  -ex              -e plus RESUME support", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"  -exx             -ex plus array bounds/null-pointer checking", 62ll );
	fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
	FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (uint8*)"  -export          Export symbols for dynamic linkage", 53ll );
	fb_PrintString( 0, (FBSTRING*)vr$25, 1 );
	FBSTRING* vr$26 = fb_StrAllocTempDescZEx( (uint8*)"  -forcelang <name>  Override #lang statements in source code", 61ll );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"  -fpmode fast|precise  Select floating-point math accuracy/speed", 65ll );
	fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
	FBSTRING* vr$28 = fb_StrAllocTempDescZEx( (uint8*)"  -fpu x87|sse     Set target FPU", 33ll );
	fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
	FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()", 75ll );
	fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1203;
	{
		FBSTRING* vr$30 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas         Select GNU gas assembler backend", 51ll );
		fb_PrintString( 0, (FBSTRING*)vr$30, 1 );
		FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gcc         Select GNU gcc C backend", 43ll );
		fb_PrintString( 0, (FBSTRING*)vr$31, 1 );
		FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)"  -gen llvm        Select LLVM backend", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$32, 1 );
	}
	goto label$1202;
	label$1203:;
	{
		FBSTRING* vr$33 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas|gcc|llvm  Select code generation backend", 51ll );
		fb_PrintString( 0, (FBSTRING*)vr$33, 1 );
	}
	label$1202:;
	FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-help         Show this help output", 40ll );
	fb_PrintString( 0, (FBSTRING*)vr$34, 1 );
	FBSTRING* vr$35 = fb_StrAllocTempDescZEx( (uint8*)"  -i <path>        Add an include file search path", 50ll );
	fb_PrintString( 0, (FBSTRING*)vr$35, 1 );
	FBSTRING* vr$36 = fb_StrAllocTempDescZEx( (uint8*)"  -include <file>  Pre-#include a file for each input .bas", 58ll );
	fb_PrintString( 0, (FBSTRING*)vr$36, 1 );
	FBSTRING* vr$37 = fb_StrAllocTempDescZEx( (uint8*)"  -l <name>        Link in a library", 36ll );
	fb_PrintString( 0, (FBSTRING*)vr$37, 1 );
	FBSTRING* vr$38 = fb_StrAllocTempDescZEx( (uint8*)"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb", 64ll );
	fb_PrintString( 0, (FBSTRING*)vr$38, 1 );
	FBSTRING* vr$39 = fb_StrAllocTempDescZEx( (uint8*)"  -lib             Create a static library", 42ll );
	fb_PrintString( 0, (FBSTRING*)vr$39, 1 );
	FBSTRING* vr$40 = fb_StrAllocTempDescZEx( (uint8*)"  -m <name>        Specify main module (default if not -c: first input .bas)", 76ll );
	fb_PrintString( 0, (FBSTRING*)vr$40, 1 );
	FBSTRING* vr$41 = fb_StrAllocTempDescZEx( (uint8*)"  -map <file>      Save linking map to file", 43ll );
	fb_PrintString( 0, (FBSTRING*)vr$41, 1 );
	FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"  -maxerr <n>      Only show <n> errors", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$42, 1 );
	FBSTRING* vr$43 = fb_StrAllocTempDescZEx( (uint8*)"  -mt              Use thread-safe FB runtime", 45ll );
	fb_PrintString( 0, (FBSTRING*)vr$43, 1 );
	FBSTRING* vr$44 = fb_StrAllocTempDescZEx( (uint8*)"  -nodeflibs       Do not include the default libraries", 55ll );
	fb_PrintString( 0, (FBSTRING*)vr$44, 1 );
	FBSTRING* vr$45 = fb_StrAllocTempDescZEx( (uint8*)"  -noerrline       Do not show source context in error messages", 63ll );
	fb_PrintString( 0, (FBSTRING*)vr$45, 1 );
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files", 78ll );
	fb_PrintString( 0, (FBSTRING*)vr$46, 1 );
	FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"  -nostrip         Do not strip symbol information from the output file", 71ll );
	fb_PrintString( 0, (FBSTRING*)vr$47, 1 );
	FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (uint8*)"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file", 74ll );
	fb_PrintString( 0, (FBSTRING*)vr$48, 1 );
	FBSTRING* vr$49 = fb_StrAllocTempDescZEx( (uint8*)"  -O <value>       Optimization level (default: 0)", 50ll );
	fb_PrintString( 0, (FBSTRING*)vr$49, 1 );
	FBSTRING* vr$50 = fb_StrAllocTempDescZEx( (uint8*)"  -p <path>        Add a library search path", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$50, 1 );
	FBSTRING* vr$51 = fb_StrAllocTempDescZEx( (uint8*)"  -pic             Generate position-independent code (non-x86 Unix shared libs)", 80ll );
	fb_PrintString( 0, (FBSTRING*)vr$51, 1 );
	FBSTRING* vr$52 = fb_StrAllocTempDescZEx( (uint8*)"  -pp              Write out preprocessed input file (.pp.bas) only", 67ll );
	fb_PrintString( 0, (FBSTRING*)vr$52, 1 );
	FBSTRING* vr$53 = fb_StrAllocTempDescZEx( (uint8*)"  -prefix <path>   Set the compiler prefix path", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$53, 1 );
	FBSTRING* vr$54 = fb_StrAllocTempDescZEx( (uint8*)"  -print host|target  Display host/target system name", 53ll );
	fb_PrintString( 0, (FBSTRING*)vr$54, 1 );
	FBSTRING* vr$55 = fb_StrAllocTempDescZEx( (uint8*)"  -print fblibdir  Display the compiler's lib/ path", 51ll );
	fb_PrintString( 0, (FBSTRING*)vr$55, 1 );
	FBSTRING* vr$56 = fb_StrAllocTempDescZEx( (uint8*)"  -print x         Display output binary/library file name (if known)", 69ll );
	fb_PrintString( 0, (FBSTRING*)vr$56, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1205;
	{
		FBSTRING* vr$57 = fb_StrAllocTempDescZEx( (uint8*)"  -print sha-1     Display compiler's source code commit sha-1 (if known)", 73ll );
		fb_PrintString( 0, (FBSTRING*)vr$57, 1 );
	}
	label$1205:;
	label$1204:;
	FBSTRING* vr$58 = fb_StrAllocTempDescZEx( (uint8*)"  -profile         Enable function profiling", 44ll );
	fb_PrintString( 0, (FBSTRING*)vr$58, 1 );
	FBSTRING* vr$59 = fb_StrAllocTempDescZEx( (uint8*)"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only", 65ll );
	fb_PrintString( 0, (FBSTRING*)vr$59, 1 );
	FBSTRING* vr$60 = fb_StrAllocTempDescZEx( (uint8*)"  -rr              Write out the final .asm only", 48ll );
	fb_PrintString( 0, (FBSTRING*)vr$60, 1 );
	FBSTRING* vr$61 = fb_StrAllocTempDescZEx( (uint8*)"  -R               Preserve temporary .asm/.c/.ll/.def files", 60ll );
	fb_PrintString( 0, (FBSTRING*)vr$61, 1 );
	FBSTRING* vr$62 = fb_StrAllocTempDescZEx( (uint8*)"  -RR              Preserve the final .asm file", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$62, 1 );
	FBSTRING* vr$63 = fb_StrAllocTempDescZEx( (uint8*)"  -s console|gui   Select win32 subsystem", 41ll );
	fb_PrintString( 0, (FBSTRING*)vr$63, 1 );
	FBSTRING* vr$64 = fb_StrAllocTempDescZEx( (uint8*)"  -showincludes    Display a tree of file names of #included files", 66ll );
	fb_PrintString( 0, (FBSTRING*)vr$64, 1 );
	FBSTRING* vr$65 = fb_StrAllocTempDescZEx( (uint8*)"  -static          Prefer static libraries over dynamic ones when linking", 73ll );
	fb_PrintString( 0, (FBSTRING*)vr$65, 1 );
	FBSTRING* vr$66 = fb_StrAllocTempDescZEx( (uint8*)"  -strip           Omit all symbol information from the output file", 67ll );
	fb_PrintString( 0, (FBSTRING*)vr$66, 1 );
	FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (uint8*)"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)", 75ll );
	fb_PrintString( 0, (FBSTRING*)vr$67, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1207;
	{
		FBSTRING* vr$68 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$68, 1 );
	}
	goto label$1206;
	label$1207:;
	{
		FBSTRING* vr$69 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47ll );
		fb_PrintString( 0, (FBSTRING*)vr$69, 1 );
	}
	label$1206:;
	FBSTRING* vr$70 = fb_StrAllocTempDescZEx( (uint8*)"  -title <name>    Set XBE display title (xbox)", 47ll );
	fb_PrintString( 0, (FBSTRING*)vr$70, 1 );
	FBSTRING* vr$71 = fb_StrAllocTempDescZEx( (uint8*)"  -v               Be verbose", 29ll );
	fb_PrintString( 0, (FBSTRING*)vr$71, 1 );
	FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (uint8*)"  -vec <n>         Automatic vectorization level (default: 0)", 61ll );
	fb_PrintString( 0, (FBSTRING*)vr$72, 1 );
	FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-version      Show compiler version", 40ll );
	fb_PrintString( 0, (FBSTRING*)vr$73, 1 );
	FBSTRING* vr$74 = fb_StrAllocTempDescZEx( (uint8*)"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value", 70ll );
	fb_PrintString( 0, (FBSTRING*)vr$74, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1209;
	{
		FBSTRING* vr$75 = fb_StrAllocTempDescZEx( (uint8*)"  -w all           Enable all warnings", 38ll );
		fb_PrintString( 0, (FBSTRING*)vr$75, 1 );
		FBSTRING* vr$76 = fb_StrAllocTempDescZEx( (uint8*)"  -w none          Disable all warnings", 39ll );
		fb_PrintString( 0, (FBSTRING*)vr$76, 1 );
		FBSTRING* vr$77 = fb_StrAllocTempDescZEx( (uint8*)"  -w param         Enable parameter warnings", 44ll );
		fb_PrintString( 0, (FBSTRING*)vr$77, 1 );
		FBSTRING* vr$78 = fb_StrAllocTempDescZEx( (uint8*)"  -w escape        Enable string escape sequence warnings", 57ll );
		fb_PrintString( 0, (FBSTRING*)vr$78, 1 );
		FBSTRING* vr$79 = fb_StrAllocTempDescZEx( (uint8*)"  -w next          Enable next statement warnings", 49ll );
		fb_PrintString( 0, (FBSTRING*)vr$79, 1 );
		FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (uint8*)"  -w signedness    Enable type signedness warnings", 50ll );
		fb_PrintString( 0, (FBSTRING*)vr$80, 1 );
		FBSTRING* vr$81 = fb_StrAllocTempDescZEx( (uint8*)"  -w constness     Enable const type warnings", 45ll );
		fb_PrintString( 0, (FBSTRING*)vr$81, 1 );
		FBSTRING* vr$82 = fb_StrAllocTempDescZEx( (uint8*)"  -w suffix        Enable invalid suffix warnings", 49ll );
		fb_PrintString( 0, (FBSTRING*)vr$82, 1 );
	}
	label$1209:;
	label$1208:;
	FBSTRING* vr$83 = fb_StrAllocTempDescZEx( (uint8*)"  -Wa <a,b,c>      Pass options to 'as'", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$83, 1 );
	FBSTRING* vr$84 = fb_StrAllocTempDescZEx( (uint8*)"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)", 72ll );
	fb_PrintString( 0, (FBSTRING*)vr$84, 1 );
	FBSTRING* vr$85 = fb_StrAllocTempDescZEx( (uint8*)"  -Wl <a,b,c>      Pass options to 'ld'", 39ll );
	fb_PrintString( 0, (FBSTRING*)vr$85, 1 );
	FBSTRING* vr$86 = fb_StrAllocTempDescZEx( (uint8*)"  -x <file>        Set output executable/library file name", 58ll );
	fb_PrintString( 0, (FBSTRING*)vr$86, 1 );
	if( VERBOSE$1 == 0ll ) goto label$1211;
	{
		FBSTRING* vr$87 = fb_StrAllocTempDescZEx( (uint8*)"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB", 56ll );
		fb_PrintString( 0, (FBSTRING*)vr$87, 1 );
		FBSTRING* vr$88 = fb_StrAllocTempDescZEx( (uint8*)"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros", 70ll );
		fb_PrintString( 0, (FBSTRING*)vr$88, 1 );
	}
	label$1211:;
	label$1210:;
	label$1199:;
}

static void HPRINTVERSION( int64 VERBOSE$1 )
{
	FBSTRING TMP$721$1;
	FBSTRING TMP$722$1;
	FBSTRING TMP$723$1;
	FBSTRING TMP$724$1;
	label$1216:;
	FBSTRING CONFIG$1;
	__builtin_memset( &CONFIG$1, 0, 24ll );
	int64 vr$1 = FBGETHOSTBITS(  );
	FBSTRING* vr$2 = fb_LongintToStr( vr$1 );
	FBSTRING* vr$3 = FBGETHOSTID(  );
	__builtin_memset( &TMP$721$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$721$1, (void*)"FreeBASIC Compiler - Version 1.08.0 (2021-02-17), built for ", 61ll, (void*)vr$3, -1ll );
	__builtin_memset( &TMP$722$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$722$1, (void*)vr$6, -1ll, (void*)" (", 3ll );
	__builtin_memset( &TMP$723$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$723$1, (void*)vr$9, -1ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$724$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$724$1, (void*)vr$12, -1ll, (void*)"bit)", 5ll );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"Copyright (C) 2004-2021 The FreeBASIC development team.", 55ll );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	int64 vr$18 = fb_StrLen( (void*)&CONFIG$1, -1ll );
	if( vr$18 <= 0ll ) goto label$1219;
	{
		fb_PrintString( 0, (FBSTRING*)&CONFIG$1, 1 );
	}
	label$1219:;
	label$1218:;
	if( VERBOSE$1 == 0ll ) goto label$1221;
	{
		FBCPRINTTARGETINFO(  );
		goto label$1223;
		{
			FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"source sha-1: ", 14ll );
			fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		}
		label$1223:;
		label$1222:;
	}
	label$1221:;
	label$1220:;
	fb_StrDelete( (FBSTRING*)&CONFIG$1 );
	label$1217:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1272:;
	_ZN6FBCCTXC1Ev( &FBC$ );
	label$1273:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1275:;
	_ZN6FBCCTXD1Ev( &FBC$ );
	label$1276:;
}
