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
struct $16OBJINFOPARSERCTX {
	int32 I;
	FBSTRING FILENAME;
	int32 IS_OLD;
	int32 OLD_SECTION;
};
__FB_STATIC_ASSERT( sizeof( struct $16OBJINFOPARSERCTX ) == 24 );
struct $8ELF32_SH {
	uint32 SH_NAME __attribute__((packed, aligned(1)));
	uint32 SH_TYPE __attribute__((packed, aligned(1)));
	uint32 SH_FLAGS __attribute__((packed, aligned(1)));
	uint32 SH_ADDR __attribute__((packed, aligned(1)));
	uint32 SH_OFFSET __attribute__((packed, aligned(1)));
	uint32 SH_SIZE __attribute__((packed, aligned(1)));
	uint32 SH_LINK __attribute__((packed, aligned(1)));
	uint32 SH_INFO __attribute__((packed, aligned(1)));
	uint32 SH_ADDRALIGN __attribute__((packed, aligned(1)));
	uint32 SH_ENTSIZE __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $8ELF32_SH ) == 40 );
struct $7ELF32_H {
	uint8 E_IDENT[16];
	uint16 E_TYPE __attribute__((packed, aligned(1)));
	uint16 E_MACHINE __attribute__((packed, aligned(1)));
	uint32 E_VERSION __attribute__((packed, aligned(1)));
	uint32 E_ENTRY __attribute__((packed, aligned(1)));
	uint32 E_PHOFF __attribute__((packed, aligned(1)));
	uint32 E_SHOFF __attribute__((packed, aligned(1)));
	uint32 E_FLAGS __attribute__((packed, aligned(1)));
	uint16 E_EHSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_SHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHSTRNDX __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7ELF32_H ) == 52 );
struct $8ELF64_SH {
	uint32 SH_NAME __attribute__((packed, aligned(1)));
	uint32 SH_TYPE __attribute__((packed, aligned(1)));
	uint64 SH_FLAGS __attribute__((packed, aligned(1)));
	uint64 SH_ADDR __attribute__((packed, aligned(1)));
	uint64 SH_OFFSET __attribute__((packed, aligned(1)));
	uint64 SH_SIZE __attribute__((packed, aligned(1)));
	uint32 SH_LINK __attribute__((packed, aligned(1)));
	uint32 SH_INFO __attribute__((packed, aligned(1)));
	uint64 SH_ADDRALIGN __attribute__((packed, aligned(1)));
	uint64 SH_ENTSIZE __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $8ELF64_SH ) == 64 );
struct $7ELF64_H {
	uint8 E_IDENT[16];
	uint16 E_TYPE __attribute__((packed, aligned(1)));
	uint16 E_MACHINE __attribute__((packed, aligned(1)));
	uint32 E_VERSION __attribute__((packed, aligned(1)));
	uint64 E_ENTRY __attribute__((packed, aligned(1)));
	uint64 E_PHOFF __attribute__((packed, aligned(1)));
	uint64 E_SHOFF __attribute__((packed, aligned(1)));
	uint32 E_FLAGS __attribute__((packed, aligned(1)));
	uint16 E_EHSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_SHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHSTRNDX __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7ELF64_H ) == 64 );
struct $6COFF_H {
	uint16 MAGIC __attribute__((packed, aligned(1)));
	uint16 SECCOUNT __attribute__((packed, aligned(1)));
	uint32 TIMESTAMP __attribute__((packed, aligned(1)));
	uint32 SYMTBOFFSET __attribute__((packed, aligned(1)));
	uint32 SYMCOUNT __attribute__((packed, aligned(1)));
	uint16 OPTHEADSIZE __attribute__((packed, aligned(1)));
	uint16 FLAGS __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $6COFF_H ) == 20 );
struct $7COFF_SH {
	uint8 NAME[8];
	uint32 PADDR __attribute__((packed, aligned(1)));
	uint32 VADDR __attribute__((packed, aligned(1)));
	uint32 SIZE __attribute__((packed, aligned(1)));
	uint32 DATAOFFSET __attribute__((packed, aligned(1)));
	uint32 RELOFFSET __attribute__((packed, aligned(1)));
	uint32 LNOFFSET __attribute__((packed, aligned(1)));
	uint16 RELCOUNT __attribute__((packed, aligned(1)));
	uint16 LNCOUNT __attribute__((packed, aligned(1)));
	uint32 FLAGS __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7COFF_SH ) == 40 );
struct $4AR_H {
	uint8 NAME[16];
	uint8 MODIFYTIME[12];
	uint8 OWNERID[6];
	uint8 GROUPID[6];
	uint8 MODE[8];
	uint8 SIZE[10];
	uint8 MAGIC[2];
};
__FB_STATIC_ASSERT( sizeof( struct $4AR_H ) == 60 );
struct $10DATABUFFER {
	uint8* P;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $10DATABUFFER ) == 8 );
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FileGetIOB( int32, int32, void*, uint32, uint32* );
int32 fb_FileFree( void );
int64 fb_FileSize( int32 );
void* malloc( uint32 );
void free( void* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
double fb_VAL( FBSTRING* );
static void fb_ctor__objinfo( void ) __attribute__(( constructor ));
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void OBJINFOREADLIBFILE( FBSTRING* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBGETCPUFAMILY( void );
int32 FBTARGETSUPPORTSELF( void );
int32 FBTARGETSUPPORTSCOFF( void );
int32 HFILEEXISTS( uint8* );
static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX*, struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* );
static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H*, int32 );
static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H*, int32, int32 );
static void HLOADFBCTINFFROMELF32_H( int32 );
static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H*, int32 );
static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H*, int32, int32 );
static void HLOADFBCTINFFROMELF64_H( int32 );
static void HLOADFBCTINFFROMCOFF( uint16 );
static uint8* HLOADARSTRING( uint8*, int32 );
static void HLOADOBJFROMAR( void );
static void HLOADFILE( FBSTRING*, struct $10DATABUFFER* );
static void HLOADFBCTINFFROMOBJ( void );
static void HRESETBUFFERS( void );
static void OBJINFOINIT( FBSTRING* );
static uint8* HGETNEXTSTRING( void );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static struct $10DATABUFFER ARDATA$;
static struct $10DATABUFFER OBJDATA$;
static struct $10DATABUFFER FBCTINF$;
static struct $16OBJINFOPARSERCTX PARSER$;
static uint8 FBCTINFNAME$[9] = ".fbctinf";
static uint8 ELFMAGIC$[16] = { (uint8)127u, (uint8)69u, (uint8)76u, (uint8)70u, (uint8)0u, (uint8)1u, (uint8)1u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u };
static uint8 ARMAGIC$[8] = { (uint8)33u, (uint8)60u, (uint8)97u, (uint8)114u, (uint8)99u, (uint8)104u, (uint8)62u, (uint8)10u };
struct $9ENTRYINFO {
	uint8* TEXT;
	int32 HAS_PARAM;
};
__FB_STATIC_ASSERT( sizeof( struct $9ENTRYINFO ) == 8 );
static struct $9ENTRYINFO ENTRIES$[5] = { { (uint8*)"-l", -1 }, { (uint8*)"-p", -1 }, { (uint8*)"-mt", 0 }, { (uint8*)"-gfx", 0 }, { (uint8*)"-lang", -1 } };

void OBJINFOREADOBJ( FBSTRING* OBJFILE$1 )
{
	label$217:;
	OBJINFOINIT( OBJFILE$1 );
	HLOADFILE( OBJFILE$1, &OBJDATA$ );
	if( *(int32*)((uint8*)&OBJDATA$ + 4) != 0 ) goto label$220;
	{
		goto label$218;
	}
	label$220:;
	label$219:;
	HLOADFBCTINFFROMOBJ(  );
	label$218:;
}

void OBJINFOREADLIBFILE( FBSTRING* LIBFILE$1 )
{
	label$221:;
	OBJINFOINIT( LIBFILE$1 );
	HLOADFILE( LIBFILE$1, &ARDATA$ );
	if( *(int32*)((uint8*)&ARDATA$ + 4) != 0 ) goto label$224;
	{
		goto label$222;
	}
	label$224:;
	label$223:;
	HLOADOBJFROMAR(  );
	if( *(int32*)((uint8*)&OBJDATA$ + 4) != 0 ) goto label$226;
	{
		goto label$222;
	}
	label$226:;
	label$225:;
	HLOADFBCTINFFROMOBJ(  );
	label$222:;
}

void OBJINFOREADLIB( FBSTRING* LIBNAME$1, struct $5TLIST* LIBPATHS$1 )
{
	FBSTRING TMP$50$1;
	FBSTRING TMP$51$1;
	label$227:;
	static FBSTRING LIBFILE$1;
	static FBSTRING FILENAME$1;
	struct $11TSTRSETITEM* PATH$1;
	__builtin_memset( &TMP$50$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$50$1, (void*)"lib", 4, (void*)LIBNAME$1, -1 );
	__builtin_memset( &TMP$51$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$51$1, (void*)vr$2, -1, (void*)".a", 3 );
	fb_StrAssign( (void*)&FILENAME$1, -1, (void*)vr$5, -1, 0 );
	void* vr$6 = LISTGETHEAD( LIBPATHS$1 );
	PATH$1 = (struct $11TSTRSETITEM*)vr$6;
	label$229:;
	if( PATH$1 == (struct $11TSTRSETITEM*)0u ) goto label$230;
	{
		FBSTRING TMP$52$2;
		FBSTRING TMP$53$2;
		__builtin_memset( &TMP$52$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$52$2, (void*)PATH$1, -1, (void*)"/", 2 );
		__builtin_memset( &TMP$53$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$53$2, (void*)vr$11, -1, (void*)&FILENAME$1, -1 );
		fb_StrAssign( (void*)&LIBFILE$1, -1, (void*)vr$14, -1, 0 );
		int32 vr$15 = HFILEEXISTS( (uint8*)*(uint8**)&LIBFILE$1 );
		if( vr$15 == 0 ) goto label$232;
		{
			goto label$230;
		}
		label$232:;
		label$231:;
		void* vr$16 = LISTGETNEXT( (void*)PATH$1 );
		PATH$1 = (struct $11TSTRSETITEM*)vr$16;
	}
	goto label$229;
	label$230:;
	if( PATH$1 != (struct $11TSTRSETITEM*)0u ) goto label$234;
	{
		goto label$228;
	}
	label$234:;
	label$233:;
	OBJINFOREADLIBFILE( &LIBFILE$1 );
	label$228:;
}

int32 OBJINFOREADNEXT( FBSTRING* DAT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$241:;
	if( *(int32*)((uint8*)&FBCTINF$ + 4) > 0 ) goto label$244;
	{
		fb$result$1 = -1;
		goto label$242;
	}
	label$244:;
	label$243:;
	if( *(int32*)((uint8*)&PARSER$ + 16) == 0 ) goto label$246;
	{
		label$247:;
		if( *(int32*)&PARSER$ >= *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$248;
		{
			if( *(int32*)((uint8*)&PARSER$ + 20) >= 0 ) goto label$250;
			{
				*(int32*)((uint8*)&PARSER$ + 20) = (int32)*(uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$);
				*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
				if( (-(*(int32*)((uint8*)&PARSER$ + 20) <= 0) | -(*(int32*)((uint8*)&PARSER$ + 20) > 3)) == 0 ) goto label$252;
				{
					*(int32*)((uint8*)&PARSER$ + 20) = -1;
					*(int32*)&PARSER$ = *(int32*)((uint8*)&FBCTINF$ + 4);
					fb$result$1 = -1;
					goto label$242;
				}
				label$252:;
				label$251:;
			}
			label$250:;
			label$249:;
			if( *(int32*)&PARSER$ < *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$254;
			{
				fb$result$1 = -1;
				goto label$242;
			}
			label$254:;
			label$253:;
			*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
			if( (int32)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$) + -1) != 0 ) goto label$256;
			{
				*(int32*)((uint8*)&PARSER$ + 20) = -1;
				goto label$247;
			}
			label$256:;
			label$255:;
			uint8* vr$10 = HGETNEXTSTRING(  );
			fb_StrAssign( (void*)DAT$1, -1, (void*)vr$10, 0, 0 );
			{
				int32 TMP$54$4;
				TMP$54$4 = *(int32*)((uint8*)&PARSER$ + 20);
				if( TMP$54$4 != 1 ) goto label$258;
				label$259:;
				{
					fb$result$1 = 0;
					goto label$242;
				}
				goto label$257;
				label$258:;
				if( TMP$54$4 != 2 ) goto label$260;
				label$261:;
				{
					fb$result$1 = 1;
					goto label$242;
				}
				goto label$257;
				label$260:;
				if( TMP$54$4 != 3 ) goto label$262;
				label$263:;
				{
					{
						FBSTRING TMP$55$6;
						fb_StrInit( (void*)&TMP$55$6, -1, (void*)DAT$1, -1, 0 );
						int32 vr$13 = fb_StrCompare( (void*)&TMP$55$6, -1, (void*)"-lang", 6 );
						if( vr$13 != 0 ) goto label$265;
						label$266:;
						{
							uint8* vr$14 = HGETNEXTSTRING(  );
							fb_StrAssign( (void*)DAT$1, -1, (void*)vr$14, 0, 0 );
							int32 vr$15 = fb_StrLen( (void*)DAT$1, -1 );
							if( vr$15 <= 0 ) goto label$268;
							{
								fb$result$1 = 4;
								fb_StrDelete( (FBSTRING*)&TMP$55$6 );
								goto label$242;
							}
							label$268:;
							label$267:;
						}
						goto label$264;
						label$265:;
						int32 vr$18 = fb_StrCompare( (void*)&TMP$55$6, -1, (void*)"-mt", 4 );
						if( vr$18 != 0 ) goto label$269;
						label$270:;
						{
							fb$result$1 = 2;
							fb_StrDelete( (FBSTRING*)&TMP$55$6 );
							goto label$242;
						}
						label$269:;
						label$264:;
						fb_StrDelete( (FBSTRING*)&TMP$55$6 );
					}
				}
				label$262:;
				label$257:;
			}
		}
		goto label$247;
		label$248:;
	}
	goto label$245;
	label$246:;
	{
		uint8* vr$21 = HGETNEXTSTRING(  );
		fb_StrAssign( (void*)DAT$1, -1, (void*)vr$21, 0, 0 );
		{
			int32 I$3;
			I$3 = 0;
			label$274:;
			{
				int32 vr$23 = fb_StrCompare( (void*)DAT$1, -1, *(void**)((uint8*)ENTRIES$ + (I$3 << (3 & 31))), 0 );
				if( vr$23 != 0 ) goto label$276;
				{
					if( *(int32*)(((uint8*)ENTRIES$ + (I$3 << (3 & 31))) + 4) == 0 ) goto label$278;
					{
						uint8* vr$25 = HGETNEXTSTRING(  );
						fb_StrAssign( (void*)DAT$1, -1, (void*)vr$25, 0, 0 );
					}
					goto label$277;
					label$278:;
					{
					}
					label$277:;
					fb$result$1 = I$3;
					goto label$242;
				}
				label$276:;
				label$275:;
			}
			label$272:;
			I$3 = I$3 + 1;
			label$271:;
			if( I$3 <= 4 ) goto label$274;
			label$273:;
		}
	}
	label$245:;
	fb$result$1 = -1;
	label$242:;
	return fb$result$1;
}

uint8* OBJINFOGETFILENAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$279:;
	fb$result$1 = (uint8*)*(uint8**)((uint8*)&PARSER$ + 4);
	label$280:;
	return fb$result$1;
}

void OBJINFOREADEND( void )
{
	label$281:;
	if( *(uint8**)&ARDATA$ == (uint8*)0u ) goto label$284;
	{
		free( *(void**)&ARDATA$ );
	}
	goto label$283;
	label$284:;
	if( *(uint8**)&OBJDATA$ == (uint8*)0u ) goto label$285;
	{
		free( *(void**)&OBJDATA$ );
	}
	label$285:;
	label$283:;
	HRESETBUFFERS(  );
	label$282:;
}

uint8* OBJINFOENCODE( int32 ENTRY$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$286:;
	fb$result$1 = *(uint8**)((uint8*)ENTRIES$ + (ENTRY$1 << (3 & 31)));
	label$287:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__objinfo( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 4), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 16), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 20), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX* THIS$1, struct $16OBJINFOPARSERCTX* __FB_RHS__$1 )
{
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 4), -1, (void*)((uint8*)__FB_RHS__$1 + 4), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 16) = *(int32*)((uint8*)__FB_RHS__$1 + 16);
	*(int32*)((uint8*)THIS$1 + 20) = *(int32*)((uint8*)__FB_RHS__$1 + 20);
	label$13:;
}

static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 4) );
}

static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H* H$1, int32 INDEX$1 )
{
	struct $8ELF32_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	struct $8ELF32_SH* SH$1;
	int32 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int32)(*(uint32*)((uint8*)H$1 + 32) + (uint32)(INDEX$1 * 40));
	if( ((uint64)HEADEROFFSET$1 + 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$21;
	{
		goto label$19;
	}
	label$21:;
	label$20:;
	SH$1 = (struct $8ELF32_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( ((uint64)*(uint32*)((uint8*)SH$1 + 16) + (uint64)*(uint32*)((uint8*)SH$1 + 20)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$23;
	{
		goto label$19;
	}
	label$23:;
	label$22:;
	fb$result$1 = SH$1;
	label$19:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H* H$1, int32 INDEX$1, int32 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF32_SH* SH$1;
	int32 I$1;
	int32 J$1;
	int32 CH$1;
	struct $8ELF32_SH* vr$1 = HCHECKELF32_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF32_SH*)0u ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	I$1 = (int32)((uint32)NAMETB$1 + *(uint32*)SH$1);
	J$1 = 0;
	label$28:;
	if( (-(I$1 < *(int32*)((uint8*)&OBJDATA$ + 4)) & -(J$1 < 32)) == 0 ) goto label$29;
	{
		CH$1 = (int32)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0 ) goto label$31;
		{
			goto label$29;
		}
		label$31:;
		label$30:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1;
		J$1 = J$1 + 1;
	}
	goto label$28;
	label$29:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$25:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF32_H( int32 ELF_MACHINE$1 )
{
	label$32:;
	struct $7ELF32_H* H$1;
	struct $8ELF32_SH* SH$1;
	struct $8ELF32_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 52 ) goto label$35;
	{
		goto label$33;
	}
	label$35:;
	label$34:;
	H$1 = *(struct $7ELF32_H**)&OBJDATA$;
	*(uint8*)((uint8*)ELFMAGIC$ + 4) = (uint8)1u;
	{
		int32 I$2;
		I$2 = 0;
		label$39:;
		{
			if( (int32)*(uint8*)((uint8*)H$1 + I$2) == (int32)*(uint8*)((uint8*)ELFMAGIC$ + I$2) ) goto label$41;
			{
				goto label$33;
			}
			label$41:;
			label$40:;
		}
		label$37:;
		I$2 = I$2 + 1;
		label$36:;
		if( I$2 <= 15 ) goto label$39;
		label$38:;
	}
	if( (int32)*(uint16*)((uint8*)H$1 + 40) == 52 ) goto label$43;
	{
		goto label$33;
	}
	label$43:;
	label$42:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 1 ) goto label$45;
	{
		goto label$33;
	}
	label$45:;
	label$44:;
	if( (int32)*(uint16*)((uint8*)H$1 + 18) == ELF_MACHINE$1 ) goto label$47;
	{
		goto label$33;
	}
	label$47:;
	label$46:;
	if( (int32)*(uint16*)((uint8*)H$1 + 46) == 40 ) goto label$49;
	{
		goto label$33;
	}
	label$49:;
	label$48:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 48) * 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$51;
	{
		goto label$33;
	}
	label$51:;
	label$50:;
	if( (-((int32)*(uint16*)((uint8*)H$1 + 50) < 0) | -((int32)*(uint16*)((uint8*)H$1 + 50) >= (int32)*(uint16*)((uint8*)H$1 + 48))) == 0 ) goto label$53;
	{
		goto label$33;
	}
	label$53:;
	label$52:;
	if( ((uint64)*(uint32*)((uint8*)H$1 + 32) + (uint64)((int32)*(uint16*)((uint8*)H$1 + 48) * 40)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$55;
	{
		goto label$33;
	}
	label$55:;
	label$54:;
	struct $8ELF32_SH* vr$35 = HCHECKELF32_SH( H$1, (int32)*(uint16*)((uint8*)H$1 + 50) );
	NAMETB$1 = vr$35;
	if( NAMETB$1 != (struct $8ELF32_SH*)0u ) goto label$57;
	{
		goto label$33;
	}
	label$57:;
	label$56:;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$23$2;
		TMP$23$2 = (int32)*(uint16*)((uint8*)H$1 + 48) + -1;
		goto label$58;
		label$61:;
		{
			uint8* vr$40 = HGETSECTIONNAMEELF32_SH( H$1, I$2, *(int32*)((uint8*)NAMETB$1 + 16) );
			SECTIONNAME$1 = vr$40;
			if( SECTIONNAME$1 == (uint8*)0u ) goto label$63;
			{
				int32 vr$41 = fb_StrCompare( (void*)SECTIONNAME$1, 0, (void*)FBCTINFNAME$, 9 );
				if( vr$41 != 0 ) goto label$65;
				{
					struct $8ELF32_SH* vr$42 = HCHECKELF32_SH( H$1, I$2 );
					SH$1 = vr$42;
					if( SH$1 == (struct $8ELF32_SH*)0u ) goto label$67;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SH$1 + 16));
						*(int32*)((uint8*)&FBCTINF$ + 4) = *(int32*)((uint8*)SH$1 + 20);
						goto label$60;
					}
					label$67:;
					label$66:;
				}
				label$65:;
				label$64:;
			}
			label$63:;
			label$62:;
		}
		label$59:;
		I$2 = I$2 + 1;
		label$58:;
		if( I$2 <= TMP$23$2 ) goto label$61;
		label$60:;
	}
	label$33:;
}

static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H* H$1, int32 INDEX$1 )
{
	struct $8ELF64_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	struct $8ELF64_SH* SH$1;
	int32 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int32)(*(uint64*)((uint8*)H$1 + 40) + (uint64)(INDEX$1 << (6 & 31)));
	if( ((uint64)HEADEROFFSET$1 + 64ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$71;
	{
		goto label$69;
	}
	label$71:;
	label$70:;
	SH$1 = (struct $8ELF64_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( (*(uint64*)((uint8*)SH$1 + 24) + *(uint64*)((uint8*)SH$1 + 32)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$73;
	{
		goto label$69;
	}
	label$73:;
	label$72:;
	fb$result$1 = SH$1;
	label$69:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H* H$1, int32 INDEX$1, int32 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$74:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF64_SH* SH$1;
	int32 I$1;
	int32 J$1;
	int32 CH$1;
	struct $8ELF64_SH* vr$1 = HCHECKELF64_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF64_SH*)0u ) goto label$77;
	{
		goto label$75;
	}
	label$77:;
	label$76:;
	I$1 = (int32)((uint32)NAMETB$1 + *(uint32*)SH$1);
	J$1 = 0;
	label$78:;
	if( (-(I$1 < *(int32*)((uint8*)&OBJDATA$ + 4)) & -(J$1 < 32)) == 0 ) goto label$79;
	{
		CH$1 = (int32)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0 ) goto label$81;
		{
			goto label$79;
		}
		label$81:;
		label$80:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1;
		J$1 = J$1 + 1;
	}
	goto label$78;
	label$79:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$75:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF64_H( int32 ELF_MACHINE$1 )
{
	label$82:;
	struct $7ELF64_H* H$1;
	struct $8ELF64_SH* SH$1;
	struct $8ELF64_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 64 ) goto label$85;
	{
		goto label$83;
	}
	label$85:;
	label$84:;
	H$1 = *(struct $7ELF64_H**)&OBJDATA$;
	*(uint8*)((uint8*)ELFMAGIC$ + 4) = (uint8)2u;
	{
		int32 I$2;
		I$2 = 0;
		label$89:;
		{
			if( (int32)*(uint8*)((uint8*)H$1 + I$2) == (int32)*(uint8*)((uint8*)ELFMAGIC$ + I$2) ) goto label$91;
			{
				goto label$83;
			}
			label$91:;
			label$90:;
		}
		label$87:;
		I$2 = I$2 + 1;
		label$86:;
		if( I$2 <= 15 ) goto label$89;
		label$88:;
	}
	if( (int32)*(uint16*)((uint8*)H$1 + 52) == 64 ) goto label$93;
	{
		goto label$83;
	}
	label$93:;
	label$92:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 1 ) goto label$95;
	{
		goto label$83;
	}
	label$95:;
	label$94:;
	if( (int32)*(uint16*)((uint8*)H$1 + 18) == ELF_MACHINE$1 ) goto label$97;
	{
		goto label$83;
	}
	label$97:;
	label$96:;
	if( (int32)*(uint16*)((uint8*)H$1 + 58) == 64 ) goto label$99;
	{
		goto label$83;
	}
	label$99:;
	label$98:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 60) << (6ull & 63)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$101;
	{
		goto label$83;
	}
	label$101:;
	label$100:;
	if( (-((int32)*(uint16*)((uint8*)H$1 + 62) < 0) | -((int32)*(uint16*)((uint8*)H$1 + 62) >= (int32)*(uint16*)((uint8*)H$1 + 60))) == 0 ) goto label$103;
	{
		goto label$83;
	}
	label$103:;
	label$102:;
	if( (*(uint64*)((uint8*)H$1 + 40) + (uint64)((int32)*(uint16*)((uint8*)H$1 + 60) << (6 & 31))) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$105;
	{
		goto label$83;
	}
	label$105:;
	label$104:;
	struct $8ELF64_SH* vr$34 = HCHECKELF64_SH( H$1, (int32)*(uint16*)((uint8*)H$1 + 62) );
	NAMETB$1 = vr$34;
	if( NAMETB$1 != (struct $8ELF64_SH*)0u ) goto label$107;
	{
		goto label$83;
	}
	label$107:;
	label$106:;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$24$2;
		TMP$24$2 = (int32)*(uint16*)((uint8*)H$1 + 60) + -1;
		goto label$108;
		label$111:;
		{
			uint8* vr$40 = HGETSECTIONNAMEELF64_SH( H$1, I$2, (int32)*(uint64*)((uint8*)NAMETB$1 + 24) );
			SECTIONNAME$1 = vr$40;
			if( SECTIONNAME$1 == (uint8*)0u ) goto label$113;
			{
				int32 vr$41 = fb_StrCompare( (void*)SECTIONNAME$1, 0, (void*)FBCTINFNAME$, 9 );
				if( vr$41 != 0 ) goto label$115;
				{
					struct $8ELF64_SH* vr$42 = HCHECKELF64_SH( H$1, I$2 );
					SH$1 = vr$42;
					if( SH$1 == (struct $8ELF64_SH*)0u ) goto label$117;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int32)*(uint64*)((uint8*)SH$1 + 24));
						*(int32*)((uint8*)&FBCTINF$ + 4) = (int32)*(uint64*)((uint8*)SH$1 + 32);
						goto label$110;
					}
					label$117:;
					label$116:;
				}
				label$115:;
				label$114:;
			}
			label$113:;
			label$112:;
		}
		label$109:;
		I$2 = I$2 + 1;
		label$108:;
		if( I$2 <= TMP$24$2 ) goto label$111;
		label$110:;
	}
	label$83:;
}

static void HLOADFBCTINFFROMCOFF( uint16 MAGIC$1 )
{
	label$118:;
	struct $6COFF_H* H$1;
	struct $7COFF_SH* SH$1;
	struct $7COFF_SH* SHBASE$1;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 20 ) goto label$121;
	{
		goto label$119;
	}
	label$121:;
	label$120:;
	H$1 = *(struct $6COFF_H**)&OBJDATA$;
	if( (int32)*(uint16*)H$1 == (int32)MAGIC$1 ) goto label$123;
	{
		goto label$119;
	}
	label$123:;
	label$122:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 0 ) goto label$125;
	{
		goto label$119;
	}
	label$125:;
	label$124:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 2) * 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$127;
	{
		goto label$119;
	}
	label$127:;
	label$126:;
	SHBASE$1 = (struct $7COFF_SH*)((uint8*)H$1 + 20);
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$25$2;
		TMP$25$2 = (int32)*(uint16*)((uint8*)H$1 + 2) + -1;
		goto label$128;
		label$131:;
		{
			SH$1 = (struct $7COFF_SH*)((uint8*)SHBASE$1 + (I$2 * 40));
			{
				int32 J$4;
				J$4 = 0;
				label$135:;
				{
					if( (int32)*(uint8*)((uint8*)SH$1 + J$4) == (int32)*(uint8*)((uint8*)FBCTINFNAME$ + J$4) ) goto label$137;
					{
						goto label$129;
					}
					label$137:;
					label$136:;
				}
				label$133:;
				J$4 = J$4 + 1;
				label$132:;
				if( J$4 <= 7 ) goto label$135;
				label$134:;
			}
			if( ((uint64)*(uint32*)((uint8*)SH$1 + 20) + (uint64)*(uint32*)((uint8*)SH$1 + 16)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$139;
			{
				goto label$119;
			}
			label$139:;
			label$138:;
			*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SH$1 + 20));
			*(int32*)((uint8*)&FBCTINF$ + 4) = *(int32*)((uint8*)SH$1 + 16);
			goto label$130;
		}
		label$129:;
		I$2 = I$2 + 1;
		label$128:;
		if( I$2 <= TMP$25$2 ) goto label$131;
		label$130:;
	}
	label$119:;
}

static uint8* HLOADARSTRING( uint8* P$1, int32 LENGTH$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$140:;
	static uint8 S$1[17];
	int32 LAST$1;
	int32 I$1;
	LAST$1 = LENGTH$1 + -1;
	label$142:;
	if( LAST$1 < 0 ) goto label$143;
	{
		if( (uint32)(int32)*(uint8*)(P$1 + LAST$1) == 32u ) goto label$145;
		{
			goto label$143;
		}
		label$145:;
		label$144:;
		LAST$1 = LAST$1 + -1;
	}
	goto label$142;
	label$143:;
	I$1 = 0;
	label$146:;
	if( I$1 > LAST$1 ) goto label$147;
	{
		*(uint8*)((uint8*)S$1 + I$1) = *(uint8*)(P$1 + I$1);
		I$1 = I$1 + 1;
	}
	goto label$146;
	label$147:;
	*(uint8*)((uint8*)S$1 + I$1) = (uint8)0u;
	fb$result$1 = (uint8*)S$1;
	label$141:;
	return fb$result$1;
}

static void HLOADOBJFROMAR( void )
{
	label$148:;
	struct $4AR_H* H$1;
	FBSTRING FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 12 );
	int32 I$1;
	int32 FILESIZE$1;
	*(uint8**)&OBJDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&OBJDATA$ + 4) = 0;
	if( *(int32*)((uint8*)&ARDATA$ + 4) >= 8 ) goto label$151;
	{
		fb_StrDelete( (FBSTRING*)&FILENAME$1 );
		goto label$149;
	}
	label$151:;
	label$150:;
	{
		I$1 = 0;
		label$155:;
		{
			if( (int32)*(uint8*)(*(uint8**)&ARDATA$ + I$1) == (int32)*(uint8*)((uint8*)ARMAGIC$ + I$1) ) goto label$157;
			{
				fb_StrDelete( (FBSTRING*)&FILENAME$1 );
				goto label$149;
			}
			label$157:;
			label$156:;
		}
		label$153:;
		I$1 = I$1 + 1;
		label$152:;
		if( I$1 <= 7 ) goto label$155;
		label$154:;
	}
	I$1 = 8;
	label$158:;
	{
		if( (I$1 + 60) <= *(int32*)((uint8*)&ARDATA$ + 4) ) goto label$162;
		{
			fb_StrDelete( (FBSTRING*)&FILENAME$1 );
			goto label$149;
		}
		label$162:;
		label$161:;
		H$1 = (struct $4AR_H*)((uint8*)*(void**)&ARDATA$ + I$1);
		uint8* vr$12 = HLOADARSTRING( (uint8*)H$1, 16 );
		fb_StrAssign( (void*)&FILENAME$1, -1, (void*)vr$12, 0, 0 );
		uint8* vr$16 = HLOADARSTRING( (uint8*)((uint8*)H$1 + 48), 10 );
		FBSTRING* vr$17 = fb_StrAllocTempDescZ( (uint8*)vr$16 );
		double vr$18 = fb_VAL( (FBSTRING*)vr$17 );
		FILESIZE$1 = fb_D2I( vr$18 );
		if( FILESIZE$1 >= 0 ) goto label$164;
		{
			FILESIZE$1 = 0;
		}
		goto label$163;
		label$164:;
		if( (-(FILESIZE$1 > *(int32*)((uint8*)&ARDATA$ + 4)) | -(FILESIZE$1 > (*(int32*)((uint8*)&ARDATA$ + 4) - I$1))) == 0 ) goto label$165;
		{
			FILESIZE$1 = *(int32*)((uint8*)&ARDATA$ + 4) - I$1;
		}
		label$165:;
		label$163:;
		I$1 = I$1 + 60;
		{
			int32 vr$27 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__fb_ct.inf", 12 );
			if( vr$27 == 0 ) goto label$168;
			label$169:;
			int32 vr$29 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__fb_ct.inf/", 13 );
			if( vr$29 != 0 ) goto label$167;
			label$168:;
			{
				if( FILESIZE$1 <= 0 ) goto label$171;
				{
					*(uint8**)&OBJDATA$ = (uint8*)((uint8*)*(void**)&ARDATA$ + I$1);
					*(int32*)((uint8*)&OBJDATA$ + 4) = FILESIZE$1;
				}
				label$171:;
				label$170:;
				goto label$159;
			}
			goto label$166;
			label$167:;
			int32 vr$32 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"/", 2 );
			if( vr$32 == 0 ) goto label$173;
			label$174:;
			int32 vr$34 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"//", 3 );
			if( vr$34 == 0 ) goto label$173;
			label$175:;
			int32 vr$36 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__.SYMDEF", 10 );
			if( vr$36 != 0 ) goto label$172;
			label$173:;
			{
			}
			goto label$166;
			label$172:;
			{
				goto label$159;
			}
			label$176:;
			label$166:;
		}
		I$1 = I$1 + FILESIZE$1;
		I$1 = I$1 + (I$1 & 1);
	}
	label$160:;
	goto label$158;
	label$159:;
	fb_StrDelete( (FBSTRING*)&FILENAME$1 );
	label$149:;
}

static void HLOADFILE( FBSTRING* FILENAME$1, struct $10DATABUFFER* BUF$1 )
{
	label$177:;
	int32 F$1;
	int32 SIZE$1;
	uint8* P$1;
	*(uint8**)BUF$1 = (uint8*)0u;
	*(int32*)((uint8*)BUF$1 + 4) = 0;
	int32 vr$2 = fb_FileFree(  );
	F$1 = vr$2;
	int32 vr$3 = fb_FileOpen( (FBSTRING*)FILENAME$1, 0u, 1u, 0u, F$1, 0 );
	if( vr$3 == 0 ) goto label$180;
	{
		goto label$178;
	}
	label$180:;
	label$179:;
	int64 vr$4 = fb_FileSize( F$1 );
	SIZE$1 = (int32)vr$4;
	if( SIZE$1 <= 0 ) goto label$182;
	{
		void* vr$6 = malloc( (uint32)SIZE$1 );
		P$1 = (uint8*)vr$6;
		int32 vr$8 = fb_FileGetIOB( F$1, 0, (void*)P$1, (uint32)SIZE$1, (uint32*)&SIZE$1 );
		if( vr$8 == 0 ) goto label$184;
		{
			goto label$178;
		}
		label$184:;
		label$183:;
		*(uint8**)BUF$1 = P$1;
		*(int32*)((uint8*)BUF$1 + 4) = SIZE$1;
	}
	label$182:;
	label$181:;
	int32 vr$11 = fb_FileClose( F$1 );
	if( vr$11 == 0 ) goto label$185;
	void* vr$12 = fb_ErrorThrowAt( 616, (uint8*)"src/compiler/objinfo.bas", (void*)0u, (void*)0u );
	goto *vr$12;
	label$185:;
	label$178:;
}

static void HLOADFBCTINFFROMOBJ( void )
{
	label$186:;
	int32 vr$0 = FBTARGETSUPPORTSCOFF(  );
	if( vr$0 == 0 ) goto label$189;
	{
		{
			int32 TMP$40$3;
			int32 vr$1 = FBGETCPUFAMILY(  );
			TMP$40$3 = vr$1;
			if( TMP$40$3 != 1 ) goto label$191;
			label$192:;
			{
				HLOADFBCTINFFROMCOFF( (uint16)34404u );
			}
			goto label$190;
			label$191:;
			if( TMP$40$3 != 0 ) goto label$193;
			label$194:;
			{
				HLOADFBCTINFFROMCOFF( (uint16)332u );
			}
			label$193:;
			label$190:;
		}
	}
	goto label$188;
	label$189:;
	int32 vr$2 = FBTARGETSUPPORTSELF(  );
	if( vr$2 == 0 ) goto label$195;
	{
		{
			int32 TMP$41$3;
			int32 vr$3 = FBGETCPUFAMILY(  );
			TMP$41$3 = vr$3;
			if( TMP$41$3 != 1 ) goto label$197;
			label$198:;
			{
				HLOADFBCTINFFROMELF64_H( 62 );
			}
			goto label$196;
			label$197:;
			if( TMP$41$3 != 0 ) goto label$199;
			label$200:;
			{
				HLOADFBCTINFFROMELF32_H( 3 );
			}
			goto label$196;
			label$199:;
			if( TMP$41$3 != 3 ) goto label$201;
			label$202:;
			{
				HLOADFBCTINFFROMELF64_H( 183 );
			}
			goto label$196;
			label$201:;
			if( TMP$41$3 != 2 ) goto label$203;
			label$204:;
			{
				HLOADFBCTINFFROMELF32_H( 40 );
			}
			goto label$196;
			label$203:;
			if( TMP$41$3 != 5 ) goto label$205;
			label$206:;
			{
				HLOADFBCTINFFROMELF64_H( 21 );
			}
			goto label$196;
			label$205:;
			if( TMP$41$3 != 4 ) goto label$207;
			label$208:;
			{
				HLOADFBCTINFFROMELF32_H( 20 );
			}
			label$207:;
			label$196:;
		}
	}
	label$195:;
	label$188:;
	if( *(int32*)((uint8*)&FBCTINF$ + 4) != 0 ) goto label$210;
	{
		goto label$187;
	}
	label$210:;
	label$209:;
	if( (int32)*(*(uint8**)&FBCTINF$) != 16 ) goto label$212;
	{
		*(int32*)((uint8*)&PARSER$ + 16) = -1;
		*(int32*)&PARSER$ = 1;
	}
	goto label$211;
	label$212:;
	{
		*(int32*)((uint8*)&PARSER$ + 16) = 0;
	}
	label$211:;
	label$187:;
}

static void HRESETBUFFERS( void )
{
	label$213:;
	*(uint8**)&ARDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&ARDATA$ + 4) = 0;
	*(uint8**)&OBJDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&OBJDATA$ + 4) = 0;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	label$214:;
}

static void OBJINFOINIT( FBSTRING* FILENAME$1 )
{
	label$215:;
	HRESETBUFFERS(  );
	*(int32*)&PARSER$ = 0;
	fb_StrAssign( (void*)((uint8*)&PARSER$ + 4), -1, (void*)FILENAME$1, -1, 0 );
	*(int32*)((uint8*)&PARSER$ + 16) = 0;
	*(int32*)((uint8*)&PARSER$ + 20) = -1;
	label$216:;
}

static uint8* HGETNEXTSTRING( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$235:;
	int32 BEGIN$1;
	fb$result$1 = (uint8*)"";
	BEGIN$1 = *(int32*)&PARSER$;
	label$237:;
	if( *(int32*)&PARSER$ >= *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$238;
	{
		*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
		if( (int32)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$) + -1) != 0 ) goto label$240;
		{
			fb$result$1 = (uint8*)(*(uint8**)&FBCTINF$ + BEGIN$1);
			goto label$236;
		}
		label$240:;
		label$239:;
	}
	goto label$237;
	label$238:;
	label$236:;
	return fb$result$1;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$289:;
	_ZN16OBJINFOPARSERCTXC1Ev( &PARSER$ );
	label$290:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$292:;
	_ZN16OBJINFOPARSERCTXD1Ev( &PARSER$ );
	label$293:;
}
