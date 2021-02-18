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
struct $8DWSTRING {
	uint32* DATA;
	int64 LEN;
	int64 SIZE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 240 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 240 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint64, int32, int32, uint64, ... );
int32 fb_ArrayRedimPresvEx( struct $7FBARRAYIvE*, uint64, int32, int32, uint64, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint32* fb_WstrAssign( uint32*, int64, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int64, void*, int64 );
FBSTRING* fb_WstrAssignToA( void*, int64, uint32*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
uint32* fb_WstrMid( uint32*, int64, int64 );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
int64 fb_StrInstr( int64, FBSTRING*, FBSTRING* );
int64 fb_WstrInstr( int64, uint32*, uint32* );
FBSTRING* fb_OCT_l( uint64 );
uint32* fb_WstrOct_l( uint64 );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
uint32* fb_WstrLeft( uint32*, int64 );
static void fb_ctor__hlpzstr( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XREALLOCATE( void*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void DZSTRALLOCATE( struct $8DZSTRING*, int64 );
void DWSTRALLOCATE( struct $8DWSTRING*, int64 );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
static int64 HREMAPCHAR( int64 );
static uint64 HU16TOWCHAR( uint32* );
typedef int64 $13AST_NODECLASS;
typedef int64 $11AST_OPFLAGS;
typedef int64 $6AST_OP;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 72 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
typedef int64 $12FB_DATACLASS;
typedef int64 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int64 SIZE;
	int64 SIGNED;
	int64 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int64 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 56 );
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 72 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
struct $8FBARRAY2IlE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 96 );
static struct $8FBARRAY2IlE tmp$82$;

void ZSTRASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$10:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint8*)0ull ) goto label$13;
	{
		SRC_LEN$1 = 0ll;
	}
	goto label$12;
	label$13:;
	{
		int64 vr$2 = fb_StrLen( (void*)SRC$1, 0ll );
		SRC_LEN$1 = vr$2;
	}
	label$12:;
	if( SRC_LEN$1 != 0ll ) goto label$15;
	{
		if( *DST$1 == (uint8*)0ull ) goto label$17;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0ull;
			goto label$11;
		}
		label$17:;
		label$16:;
	}
	label$15:;
	label$14:;
	if( *DST$1 != (uint8*)0ull ) goto label$19;
	{
		DST_LEN$1 = 0ll;
	}
	goto label$18;
	label$19:;
	{
		int64 vr$8 = fb_StrLen( *(void**)DST$1, 0ll );
		DST_LEN$1 = vr$8;
	}
	label$18:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$21;
	{
		void* vr$11 = XALLOCATE( (int32)(SRC_LEN$1 + 1ll) );
		*DST$1 = (uint8*)vr$11;
	}
	label$21:;
	label$20:;
	if( *DST$1 == (uint8*)0ull ) goto label$23;
	{
		fb_StrAssign( *(void**)DST$1, 0ll, (void*)SRC$1, 0ll, 0 );
	}
	label$23:;
	label$22:;
	label$11:;
}

void ZSTRASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$24:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint32*)0ull ) goto label$27;
	{
		SRC_LEN$1 = 0ll;
	}
	goto label$26;
	label$27:;
	{
		int64 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$26:;
	if( SRC_LEN$1 != 0ll ) goto label$29;
	{
		if( *DST$1 == (uint8*)0ull ) goto label$31;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0ull;
			goto label$25;
		}
		label$31:;
		label$30:;
	}
	label$29:;
	label$28:;
	if( *DST$1 != (uint8*)0ull ) goto label$33;
	{
		DST_LEN$1 = 0ll;
	}
	goto label$32;
	label$33:;
	{
		int64 vr$8 = fb_StrLen( *(void**)DST$1, 0ll );
		DST_LEN$1 = vr$8;
	}
	label$32:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$35;
	{
		void* vr$11 = XALLOCATE( (int32)(SRC_LEN$1 + 1ll) );
		*DST$1 = (uint8*)vr$11;
	}
	label$35:;
	label$34:;
	if( *DST$1 == (uint8*)0ull ) goto label$37;
	{
		fb_WstrAssignToA( *(void**)DST$1, 0ll, (uint32*)SRC$1, 0 );
	}
	label$37:;
	label$36:;
	label$25:;
}

void ZSTRCONCATASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$38:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint8*)0ull ) goto label$41;
	{
		goto label$39;
	}
	label$41:;
	label$40:;
	int64 vr$2 = fb_StrLen( (void*)SRC$1, 0ll );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0ll ) goto label$43;
	{
		goto label$39;
	}
	label$43:;
	label$42:;
	if( *DST$1 != (uint8*)0ull ) goto label$45;
	{
		DST_LEN$1 = 0ll;
		void* vr$6 = XALLOCATE( (int32)(SRC_LEN$1 + 1ll) );
		*DST$1 = (uint8*)vr$6;
	}
	goto label$44;
	label$45:;
	{
		int64 vr$9 = fb_StrLen( *(void**)DST$1, 0ll );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, (int32)((DST_LEN$1 + SRC_LEN$1) + 1ll) );
		*DST$1 = (uint8*)vr$14;
	}
	label$44:;
	if( *DST$1 == (uint8*)0ull ) goto label$47;
	{
		fb_StrAssign( (void*)((uint8*)*DST$1 + DST_LEN$1), 0ll, (void*)SRC$1, 0ll, 0 );
	}
	label$47:;
	label$46:;
	label$39:;
}

void ZSTRCONCATASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$48:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint32*)0ull ) goto label$51;
	{
		goto label$49;
	}
	label$51:;
	label$50:;
	int64 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0ll ) goto label$53;
	{
		goto label$49;
	}
	label$53:;
	label$52:;
	if( *DST$1 != (uint8*)0ull ) goto label$55;
	{
		DST_LEN$1 = 0ll;
		void* vr$6 = XALLOCATE( (int32)(SRC_LEN$1 + 1ll) );
		*DST$1 = (uint8*)vr$6;
	}
	goto label$54;
	label$55:;
	{
		int64 vr$9 = fb_StrLen( *(void**)DST$1, 0ll );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, (int32)((DST_LEN$1 + SRC_LEN$1) + 1ll) );
		*DST$1 = (uint8*)vr$14;
	}
	label$54:;
	if( *DST$1 == (uint8*)0ull ) goto label$57;
	{
		fb_WstrAssignToA( (void*)((uint8*)*DST$1 + DST_LEN$1), 0ll, (uint32*)SRC$1, 0 );
	}
	label$57:;
	label$56:;
	label$49:;
}

void WSTRASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$58:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint32*)0ull ) goto label$61;
	{
		SRC_LEN$1 = 0ll;
	}
	goto label$60;
	label$61:;
	{
		int64 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$60:;
	if( SRC_LEN$1 != 0ll ) goto label$63;
	{
		if( *DST$1 == (uint32*)0ull ) goto label$65;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0ull;
			goto label$59;
		}
		label$65:;
		label$64:;
	}
	label$63:;
	label$62:;
	if( *DST$1 != (uint32*)0ull ) goto label$67;
	{
		DST_LEN$1 = 0ll;
	}
	goto label$66;
	label$67:;
	{
		int64 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$66:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$69;
	{
		void* vr$12 = XALLOCATE( (int32)((SRC_LEN$1 << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$12;
	}
	label$69:;
	label$68:;
	if( *DST$1 == (uint32*)0ull ) goto label$71;
	{
		fb_WstrAssign( *DST$1, 0ll, (uint32*)SRC$1 );
	}
	label$71:;
	label$70:;
	label$59:;
}

void WSTRASSIGNA( uint32** DST$1, uint8* SRC$1 )
{
	label$72:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint8*)0ull ) goto label$75;
	{
		SRC_LEN$1 = 0ll;
	}
	goto label$74;
	label$75:;
	{
		int64 vr$2 = fb_StrLen( (void*)SRC$1, 0ll );
		SRC_LEN$1 = vr$2;
	}
	label$74:;
	if( SRC_LEN$1 != 0ll ) goto label$77;
	{
		if( *DST$1 == (uint32*)0ull ) goto label$79;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0ull;
			goto label$73;
		}
		label$79:;
		label$78:;
	}
	label$77:;
	label$76:;
	if( *DST$1 != (uint32*)0ull ) goto label$81;
	{
		DST_LEN$1 = 0ll;
	}
	goto label$80;
	label$81:;
	{
		int64 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$80:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$83;
	{
		void* vr$12 = XALLOCATE( (int32)((SRC_LEN$1 << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$12;
	}
	label$83:;
	label$82:;
	if( *DST$1 == (uint32*)0ull ) goto label$85;
	{
		fb_WstrAssignFromA( *DST$1, 0ll, (void*)SRC$1, 0ll );
	}
	label$85:;
	label$84:;
	label$73:;
}

void WSTRCONCATASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$86:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint32*)0ull ) goto label$89;
	{
		goto label$87;
	}
	label$89:;
	label$88:;
	int64 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0ll ) goto label$91;
	{
		goto label$87;
	}
	label$91:;
	label$90:;
	if( *DST$1 != (uint32*)0ull ) goto label$93;
	{
		DST_LEN$1 = 0ll;
		void* vr$7 = XALLOCATE( (int32)((SRC_LEN$1 << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$7;
	}
	goto label$92;
	label$93:;
	{
		int64 vr$10 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$10;
		void* vr$16 = XREALLOCATE( *(void**)DST$1, (int32)(((DST_LEN$1 + SRC_LEN$1) << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$16;
	}
	label$92:;
	if( *DST$1 == (uint32*)0ull ) goto label$95;
	{
		fb_WstrAssign( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2ll & 63ll))), 0ll, (uint32*)SRC$1 );
	}
	label$95:;
	label$94:;
	label$87:;
}

void WSTRCONCATASSIGNW( uint32** DST$1, uint8* SRC$1 )
{
	label$96:;
	int64 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 8ll );
	int64 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 8ll );
	if( SRC$1 != (uint8*)0ull ) goto label$99;
	{
		goto label$97;
	}
	label$99:;
	label$98:;
	int64 vr$2 = fb_StrLen( (void*)SRC$1, 0ll );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0ll ) goto label$101;
	{
		goto label$97;
	}
	label$101:;
	label$100:;
	if( *DST$1 != (uint32*)0ull ) goto label$103;
	{
		DST_LEN$1 = 0ll;
		void* vr$7 = XALLOCATE( (int32)((SRC_LEN$1 << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$7;
	}
	goto label$102;
	label$103:;
	{
		int64 vr$10 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$10;
		void* vr$16 = XREALLOCATE( *(void**)DST$1, (int32)(((DST_LEN$1 + SRC_LEN$1) << (2ll & 63ll)) + 4ll) );
		*DST$1 = (uint32*)vr$16;
	}
	label$102:;
	if( *DST$1 == (uint32*)0ull ) goto label$105;
	{
		fb_WstrAssignFromA( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2ll & 63ll))), 0ll, (void*)SRC$1, 0ll );
	}
	label$105:;
	label$104:;
	label$97:;
}

uint8* ZSTRDUP( uint8* S$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$106:;
	uint8* DST$1;
	__builtin_memset( &DST$1, 0, 8ll );
	int64 vr$2 = fb_StrLen( (void*)S$1, 0ll );
	void* vr$5 = XALLOCATE( (int32)(vr$2 + 1ll) );
	DST$1 = (uint8*)vr$5;
	fb_StrAssign( (void*)DST$1, 0ll, (void*)S$1, 0ll, 0 );
	fb$result$1 = DST$1;
	label$107:;
	return fb$result$1;
}

uint32* WSTRDUP( uint32* S$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$108:;
	uint32* DST$1;
	__builtin_memset( &DST$1, 0, 8ll );
	int64 vr$2 = fb_WstrLen( (uint32*)S$1 );
	void* vr$6 = XALLOCATE( (int32)((vr$2 << (2ll & 63ll)) + 4ll) );
	DST$1 = (uint32*)vr$6;
	fb_WstrAssign( DST$1, 0ll, (uint32*)S$1 );
	fb$result$1 = DST$1;
	label$109:;
	return fb$result$1;
}

FBSTRING* HREPLACE( uint8* ORGTEXT$1, uint8* OLDTEXT$1, uint8* NEWTEXT$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$110:;
	static int64 OLDLEN$1;
	static int64 NEWLEN$1;
	static int64 P$1;
	static FBSTRING TEXT$1;
	static FBSTRING REMTEXT$1;
	int64 vr$1 = fb_StrLen( (void*)OLDTEXT$1, 0ll );
	OLDLEN$1 = vr$1;
	int64 vr$2 = fb_StrLen( (void*)NEWTEXT$1, 0ll );
	NEWLEN$1 = vr$2;
	fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)ORGTEXT$1, 0ll, 0 );
	P$1 = 0ll;
	label$112:;
	{
		FBSTRING TMP$83$2;
		FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)OLDTEXT$1 );
		int64 vr$5 = fb_StrInstr( P$1 + 1ll, (FBSTRING*)&TEXT$1, (FBSTRING*)vr$3 );
		P$1 = vr$5;
		if( P$1 != 0ll ) goto label$116;
		{
			goto label$113;
		}
		label$116:;
		label$115:;
		FBSTRING* vr$7 = fb_StrMid( (FBSTRING*)&TEXT$1, P$1 + OLDLEN$1, -1ll );
		fb_StrAssign( (void*)&REMTEXT$1, -1ll, (void*)vr$7, -1ll, 0 );
		FBSTRING* vr$9 = fb_LEFT( (FBSTRING*)&TEXT$1, P$1 + -1ll );
		fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$9, -1ll, 0 );
		__builtin_memset( &TMP$83$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$83$2, (void*)&TEXT$1, -1ll, (void*)NEWTEXT$1, 0ll );
		fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$12, -1ll, 0 );
		fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)&REMTEXT$1, -1ll, 0 );
		P$1 = (P$1 + NEWLEN$1) + -1ll;
	}
	label$114:;
	goto label$112;
	label$113:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&TEXT$1, -1ll, 0 );
	label$111:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

uint32* HREPLACEW( uint32* ORGTEXT$1, uint32* OLDTEXT$1, uint32* NEWTEXT$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$117:;
	static int64 OLDLEN$1;
	static int64 NEWLEN$1;
	static int64 P$1;
	static struct $8DWSTRING TEXT$1;
	static struct $8DWSTRING REMTEXT$1;
	int64 vr$1 = fb_WstrLen( (uint32*)OLDTEXT$1 );
	OLDLEN$1 = vr$1;
	int64 vr$2 = fb_WstrLen( (uint32*)NEWTEXT$1 );
	NEWLEN$1 = vr$2;
	DWSTRASSIGN( &TEXT$1, ORGTEXT$1 );
	P$1 = 0ll;
	label$119:;
	{
		uint32* TMP$84$2;
		uint32* TMP$85$2;
		int64 vr$4 = fb_WstrInstr( P$1 + 1ll, (uint32*)*(uint32**)&TEXT$1, (uint32*)OLDTEXT$1 );
		P$1 = vr$4;
		if( P$1 != 0ll ) goto label$123;
		{
			goto label$120;
		}
		label$123:;
		label$122:;
		uint32* vr$6 = fb_WstrMid( (uint32*)*(uint32**)&TEXT$1, P$1 + OLDLEN$1, -1ll );
		TMP$84$2 = vr$6;
		DWSTRASSIGN( &REMTEXT$1, TMP$84$2 );
		fb_WstrDelete( (uint32*)TMP$84$2 );
		uint32* vr$8 = fb_WstrLeft( *(uint32**)&TEXT$1, P$1 + -1ll );
		TMP$85$2 = vr$8;
		DWSTRASSIGN( &TEXT$1, TMP$85$2 );
		fb_WstrDelete( (uint32*)TMP$85$2 );
		DWSTRCONCATASSIGN( &TEXT$1, NEWTEXT$1 );
		DWSTRCONCATASSIGN( &TEXT$1, *(uint32**)&REMTEXT$1 );
		P$1 = (P$1 + NEWLEN$1) + -1ll;
	}
	label$121:;
	goto label$119;
	label$120:;
	fb$result$1 = *(uint32**)&TEXT$1;
	label$118:;
	return fb$result$1;
}

uint8* HREPLACECHAR( uint8* ORGTEXT$1, int64 OLDCHAR$1, int64 NEWCHAR$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$124:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$86$2;
		int64 vr$1 = fb_StrLen( (void*)ORGTEXT$1, 0ll );
		TMP$86$2 = vr$1 + -1ll;
		goto label$126;
		label$129:;
		{
			if( (int64)*(uint8*)((uint8*)ORGTEXT$1 + I$2) != OLDCHAR$1 ) goto label$131;
			{
				*(uint8*)((uint8*)ORGTEXT$1 + I$2) = (uint8)NEWCHAR$1;
			}
			label$131:;
			label$130:;
		}
		label$127:;
		I$2 = I$2 + 1ll;
		label$126:;
		if( I$2 <= TMP$86$2 ) goto label$129;
		label$128:;
	}
	fb$result$1 = ORGTEXT$1;
	label$125:;
	return fb$result$1;
}

uint8* HREESCAPE( uint8* TEXT$1, int64* TEXTLEN$1, int64* ISUNICODE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$132:;
	static struct $8DZSTRING RES$1;
	static int64 CHAR$1;
	static int64 LGT$1;
	static int64 I$1;
	static int64 VALUE$1;
	static int64 ISNUMBER$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	*ISUNICODE$1 = 0ll;
	*TEXTLEN$1 = 0ll;
	int64 vr$3 = fb_StrLen( (void*)TEXT$1, 0ll );
	LGT$1 = vr$3;
	if( LGT$1 != 0ll ) goto label$135;
	{
		fb$result$1 = TEXT$1;
		goto label$133;
	}
	label$135:;
	label$134:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (1ll & 63ll) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$136:;
	if( SRC$1 >= SRC_END$1 ) goto label$137;
	{
		CHAR$1 = (int64)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
		if( CHAR$1 != 92ll ) goto label$139;
		{
			if( SRC$1 < SRC_END$1 ) goto label$141;
			{
				goto label$137;
				label$141:;
			}
			*DST$1 = (uint8)27u;
			DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
			ISNUMBER$1 = 0ll;
			CHAR$1 = (int64)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
			{
				if( CHAR$1 < 48ll ) goto label$143;
				if( CHAR$1 > 57ll ) goto label$143;
				label$144:;
				{
					ISNUMBER$1 = -1ll;
					VALUE$1 = CHAR$1 + -48ll;
					{
						I$1 = 2ll;
						label$148:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$150;
							{
								goto label$147;
								label$150:;
							}
							CHAR$1 = (int64)*SRC$1;
							if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 57ll)) == 0ll ) goto label$152;
							{
								goto label$147;
							}
							label$152:;
							label$151:;
							VALUE$1 = ((VALUE$1 * 10ll) + CHAR$1) + -48ll;
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
						}
						label$146:;
						I$1 = I$1 + 1ll;
						label$145:;
						if( I$1 <= 3ll ) goto label$148;
						label$147:;
					}
				}
				goto label$142;
				label$143:;
				if( CHAR$1 == 38ll ) goto label$154;
				label$155:;
				if( CHAR$1 == 88ll ) goto label$154;
				label$156:;
				if( CHAR$1 != 120ll ) goto label$153;
				label$154:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$158;
					{
						goto label$137;
						label$158:;
					}
					VALUE$1 = 0ll;
					if( CHAR$1 != 38ll ) goto label$160;
					{
						CHAR$1 = (int64)*SRC$1;
						SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
					}
					goto label$159;
					label$160:;
					{
						CHAR$1 = 72ll;
					}
					label$159:;
					{
						uint64 TMP$87$6;
						TMP$87$6 = (uint64)CHAR$1;
						goto label$162;
						label$163:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$167:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$169;
									{
										goto label$166;
										label$169:;
									}
									CHAR$1 = (int64)*SRC$1;
									{
										if( CHAR$1 < 97ll ) goto label$173;
										if( CHAR$1 <= 102ll ) goto label$172;
										label$173:;
										if( CHAR$1 < 65ll ) goto label$174;
										if( CHAR$1 <= 70ll ) goto label$172;
										label$174:;
										if( CHAR$1 < 48ll ) goto label$171;
										if( CHAR$1 > 57ll ) goto label$171;
										label$172:;
										{
											CHAR$1 = CHAR$1 + -48ll;
											if( CHAR$1 <= 9ll ) goto label$176;
											{
												CHAR$1 = CHAR$1 + -7ll;
											}
											label$176:;
											label$175:;
											if( CHAR$1 <= 16ll ) goto label$178;
											{
												CHAR$1 = CHAR$1 + -32ll;
											}
											label$178:;
											label$177:;
											VALUE$1 = (VALUE$1 << (4ll & 63ll)) + CHAR$1;
										}
										goto label$170;
										label$171:;
										{
											goto label$166;
										}
										label$179:;
										label$170:;
									}
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
								}
								label$165:;
								I$1 = I$1 + 1ll;
								label$164:;
								if( I$1 <= 2ll ) goto label$167;
								label$166:;
							}
						}
						goto label$161;
						label$180:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$184:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$186;
									{
										goto label$183;
										label$186:;
									}
									CHAR$1 = (int64)*SRC$1;
									if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 55ll)) == 0ll ) goto label$188;
									{
										goto label$183;
									}
									label$188:;
									label$187:;
									VALUE$1 = ((VALUE$1 << (3ll & 63ll)) + CHAR$1) + -48ll;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
								}
								label$182:;
								I$1 = I$1 + 1ll;
								label$181:;
								if( I$1 <= 3ll ) goto label$184;
								label$183:;
							}
						}
						goto label$161;
						label$189:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$193:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$195;
									{
										goto label$192;
										label$195:;
									}
									CHAR$1 = (int64)*SRC$1;
									if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 49ll)) == 0ll ) goto label$197;
									{
										goto label$192;
									}
									label$197:;
									label$196:;
									VALUE$1 = ((VALUE$1 << (1ll & 63ll)) + CHAR$1) + -48ll;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
								}
								label$191:;
								I$1 = I$1 + 1ll;
								label$190:;
								if( I$1 <= 8ll ) goto label$193;
								label$192:;
							}
						}
						goto label$161;
						label$162:;
						static const void* tmp$88[46ll] = {
							&&label$189,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$163,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$180,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$189,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$163,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$180,
						};
						if( (TMP$87$6 - 66ull) > 45ull ) goto label$161;
						goto *tmp$88[TMP$87$6 - 66ull];
						label$161:;
					}
				}
				goto label$142;
				label$153:;
				if( CHAR$1 != 97ll ) goto label$198;
				label$199:;
				{
					ISNUMBER$1 = -1ll;
					VALUE$1 = 7ll;
				}
				goto label$142;
				label$198:;
				if( CHAR$1 != 117ll ) goto label$200;
				label$201:;
				{
					*ISUNICODE$1 = -1ll;
					*DST$1 = (uint8)CHAR$1;
					DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
					{
						I$1 = 1ll;
						label$205:;
						{
							fb_StrAssign( (void*)DST$1, 0ll, (void*)SRC$1, 0ll, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
						}
						label$203:;
						I$1 = I$1 + 1ll;
						label$202:;
						if( I$1 <= 4ll ) goto label$205;
						label$204:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2ll;
					goto label$136;
				}
				goto label$142;
				label$200:;
				if( CHAR$1 != 85ll ) goto label$206;
				label$207:;
				{
					*ISUNICODE$1 = -1ll;
					*DST$1 = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
					{
						I$1 = 1ll;
						label$211:;
						{
							fb_StrAssign( (void*)DST$1, 0ll, (void*)SRC$1, 0ll, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
						}
						label$209:;
						I$1 = I$1 + 1ll;
						label$208:;
						if( I$1 <= 4ll ) goto label$211;
						label$210:;
					}
					*DST$1 = (uint8)27u;
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
					{
						I$1 = 1ll;
						label$215:;
						{
							fb_StrAssign( (void*)DST$1, 0ll, (void*)SRC$1, 0ll, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
						}
						label$213:;
						I$1 = I$1 + 1ll;
						label$212:;
						if( I$1 <= 4ll ) goto label$215;
						label$214:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4ll;
					goto label$136;
				}
				label$206:;
				label$142:;
			}
			if( ISNUMBER$1 == 0ll ) goto label$217;
			{
				if( (uint64)VALUE$1 <= 255ull ) goto label$219;
				{
					ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					VALUE$1 = 255ll;
				}
				label$219:;
				label$218:;
				if( VALUE$1 >= 8ll ) goto label$221;
				{
					LGT$1 = 1ll;
				}
				goto label$220;
				label$221:;
				if( VALUE$1 >= 64ll ) goto label$222;
				{
					LGT$1 = 2ll;
				}
				goto label$220;
				label$222:;
				{
					LGT$1 = 3ll;
				}
				label$220:;
				*DST$1 = (uint8)LGT$1;
				DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
				FBSTRING* vr$85 = fb_OCT_l( (uint64)VALUE$1 );
				fb_StrAssign( (void*)DST$1, 0ll, (void*)vr$85, -1ll, 0 );
				DST$1 = (uint8*)((uint8*)DST$1 + LGT$1);
				*TEXTLEN$1 = *TEXTLEN$1 + 1ll;
				goto label$136;
			}
			label$217:;
			label$216:;
		}
		label$139:;
		label$138:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
		*TEXTLEN$1 = *TEXTLEN$1 + 1ll;
	}
	goto label$136;
	label$137:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$133:;
	return fb$result$1;
}

uint32* HREESCAPEW( uint32* TEXT$1, int64* TEXTLEN$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$223:;
	static struct $8DWSTRING RES$1;
	static int64 CHAR$1;
	static int64 LGT$1;
	static int64 I$1;
	static int64 ISNUMBER$1;
	static uint64 VALUE$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	*TEXTLEN$1 = 0ll;
	int64 vr$2 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$2;
	if( LGT$1 != 0ll ) goto label$226;
	{
		fb$result$1 = TEXT$1;
		goto label$224;
	}
	label$226:;
	label$225:;
	DWSTRALLOCATE( &RES$1, LGT$1 << (1ll & 63ll) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2ll & 63ll)));
	label$227:;
	if( SRC$1 >= SRC_END$1 ) goto label$228;
	{
		CHAR$1 = (int64)*SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
		if( CHAR$1 != 92ll ) goto label$230;
		{
			if( SRC$1 < SRC_END$1 ) goto label$232;
			{
				goto label$228;
				label$232:;
			}
			*DST$1 = (uint32)27u;
			DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
			ISNUMBER$1 = 0ll;
			CHAR$1 = (int64)*SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
			{
				if( CHAR$1 < 48ll ) goto label$234;
				if( CHAR$1 > 57ll ) goto label$234;
				label$235:;
				{
					ISNUMBER$1 = -1ll;
					VALUE$1 = (uint64)(CHAR$1 + -48ll);
					{
						I$1 = 2ll;
						label$239:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$241;
							{
								goto label$238;
								label$241:;
							}
							CHAR$1 = (int64)*SRC$1;
							if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 57ll)) == 0ll ) goto label$243;
							{
								goto label$238;
							}
							label$243:;
							label$242:;
							VALUE$1 = (VALUE$1 * 10ull) + (uint64)(CHAR$1 + -48ll);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
						}
						label$237:;
						I$1 = I$1 + 1ll;
						label$236:;
						if( I$1 <= 5ll ) goto label$239;
						label$238:;
					}
				}
				goto label$233;
				label$234:;
				if( CHAR$1 == 38ll ) goto label$245;
				label$246:;
				if( CHAR$1 == 88ll ) goto label$245;
				label$247:;
				if( CHAR$1 != 120ll ) goto label$244;
				label$245:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$249;
					{
						goto label$228;
						label$249:;
					}
					VALUE$1 = 0ull;
					if( CHAR$1 != 38ll ) goto label$251;
					{
						CHAR$1 = (int64)*SRC$1;
						SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
					}
					goto label$250;
					label$251:;
					{
						CHAR$1 = 72ll;
					}
					label$250:;
					{
						uint64 TMP$89$6;
						TMP$89$6 = (uint64)CHAR$1;
						goto label$253;
						label$254:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$258:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$260;
									{
										goto label$257;
										label$260:;
									}
									CHAR$1 = (int64)*SRC$1;
									{
										if( CHAR$1 < 97ll ) goto label$264;
										if( CHAR$1 <= 102ll ) goto label$263;
										label$264:;
										if( CHAR$1 < 65ll ) goto label$265;
										if( CHAR$1 <= 70ll ) goto label$263;
										label$265:;
										if( CHAR$1 < 48ll ) goto label$262;
										if( CHAR$1 > 57ll ) goto label$262;
										label$263:;
										{
											CHAR$1 = CHAR$1 + -48ll;
											if( CHAR$1 <= 9ll ) goto label$267;
											{
												CHAR$1 = CHAR$1 + -7ll;
											}
											label$267:;
											label$266:;
											if( CHAR$1 <= 16ll ) goto label$269;
											{
												CHAR$1 = CHAR$1 + -32ll;
											}
											label$269:;
											label$268:;
											VALUE$1 = (VALUE$1 << (4ull & 63ll)) + (uint64)CHAR$1;
										}
										goto label$261;
										label$262:;
										{
											goto label$257;
										}
										label$270:;
										label$261:;
									}
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
								}
								label$256:;
								I$1 = I$1 + 1ll;
								label$255:;
								if( I$1 <= 4ll ) goto label$258;
								label$257:;
							}
						}
						goto label$252;
						label$271:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$275:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$277;
									{
										goto label$274;
										label$277:;
									}
									CHAR$1 = (int64)*SRC$1;
									if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 55ll)) == 0ll ) goto label$279;
									{
										goto label$274;
									}
									label$279:;
									label$278:;
									VALUE$1 = (VALUE$1 << (3ull & 63ll)) + (uint64)(CHAR$1 + -48ll);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
								}
								label$273:;
								I$1 = I$1 + 1ll;
								label$272:;
								if( I$1 <= 6ll ) goto label$275;
								label$274:;
							}
						}
						goto label$252;
						label$280:;
						{
							ISNUMBER$1 = -1ll;
							{
								I$1 = 1ll;
								label$284:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$286;
									{
										goto label$283;
										label$286:;
									}
									CHAR$1 = (int64)*SRC$1;
									if( ((int64)-(CHAR$1 < 48ll) | (int64)-(CHAR$1 > 49ll)) == 0ll ) goto label$288;
									{
										goto label$283;
									}
									label$288:;
									label$287:;
									VALUE$1 = (VALUE$1 << (1ull & 63ll)) + (uint64)(CHAR$1 + -48ll);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
								}
								label$282:;
								I$1 = I$1 + 1ll;
								label$281:;
								if( I$1 <= 16ll ) goto label$284;
								label$283:;
							}
						}
						goto label$252;
						label$253:;
						static const void* tmp$91[46ll] = {
							&&label$280,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$254,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$271,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$280,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$254,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$271,
						};
						if( (TMP$89$6 - 66ull) > 45ull ) goto label$252;
						goto *tmp$91[TMP$89$6 - 66ull];
						label$252:;
					}
				}
				goto label$233;
				label$244:;
				if( CHAR$1 != 117ll ) goto label$289;
				label$290:;
				{
					*DST$1 = (uint32)(uint32)CHAR$1;
					DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
					{
						I$1 = 1ll;
						label$294:;
						{
							fb_WstrAssign( DST$1, 0ll, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
						}
						label$292:;
						I$1 = I$1 + 1ll;
						label$291:;
						if( I$1 <= 4ll ) goto label$294;
						label$293:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2ll;
					goto label$227;
				}
				goto label$233;
				label$289:;
				if( CHAR$1 != 85ll ) goto label$295;
				label$296:;
				{
					*DST$1 = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
					{
						I$1 = 1ll;
						label$300:;
						{
							fb_WstrAssign( DST$1, 0ll, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
						}
						label$298:;
						I$1 = I$1 + 1ll;
						label$297:;
						if( I$1 <= 4ll ) goto label$300;
						label$299:;
					}
					*DST$1 = (uint32)27u;
					*(uint32*)((uint8*)DST$1 + 4ll) = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 8ll);
					{
						I$1 = 1ll;
						label$304:;
						{
							fb_WstrAssign( DST$1, 0ll, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
						}
						label$302:;
						I$1 = I$1 + 1ll;
						label$301:;
						if( I$1 <= 4ll ) goto label$304;
						label$303:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4ll;
					goto label$227;
				}
				label$295:;
				label$233:;
			}
			if( ISNUMBER$1 == 0ll ) goto label$306;
			{
				uint32* TMP$90$4;
				if( VALUE$1 <= 65535ull ) goto label$308;
				{
					ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					VALUE$1 = 65535ull;
				}
				label$308:;
				label$307:;
				LGT$1 = 1ll;
				label$309:;
				if( VALUE$1 <= 7ull ) goto label$310;
				{
					VALUE$1 = VALUE$1 >> (3ll & 63ll);
					LGT$1 = LGT$1 + 1ll;
				}
				goto label$309;
				label$310:;
				*DST$1 = (uint32)(uint32)LGT$1;
				DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
				uint32* vr$85 = fb_WstrOct_l( VALUE$1 );
				TMP$90$4 = vr$85;
				fb_WstrAssign( DST$1, 0ll, (uint32*)TMP$90$4 );
				fb_WstrDelete( (uint32*)TMP$90$4 );
				DST$1 = (uint32*)((uint8*)DST$1 + (LGT$1 << (2ll & 63ll)));
				*TEXTLEN$1 = *TEXTLEN$1 + 1ll;
				goto label$227;
			}
			label$306:;
			label$305:;
		}
		label$230:;
		label$229:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
		*TEXTLEN$1 = *TEXTLEN$1 + 1ll;
	}
	goto label$227;
	label$228:;
	*DST$1 = (uint32)0u;
	fb$result$1 = *(uint32**)&RES$1;
	label$224:;
	return fb$result$1;
}

uint8* HESCAPE( uint8* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$311:;
	static struct $8DZSTRING RES$1;
	static int64 C$1;
	static int64 OCTLEN$1;
	static int64 LGT$1;
	static uint8* SRC$1;
	static uint8* SRC_END$1;
	static uint8* DST$1;
	OCTLEN$1 = 0ll;
	int64 vr$1 = fb_StrLen( (void*)TEXT$1, 0ll );
	LGT$1 = vr$1;
	if( LGT$1 != 0ll ) goto label$314;
	{
		fb$result$1 = TEXT$1;
		goto label$312;
	}
	label$314:;
	label$313:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (2ll & 63ll) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$315:;
	if( SRC$1 >= SRC_END$1 ) goto label$316;
	{
		C$1 = (int64)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
		{
			if( C$1 == 92ll ) goto label$319;
			label$320:;
			if( C$1 != 34ll ) goto label$318;
			label$319:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
			}
			goto label$317;
			label$318:;
			if( C$1 != 27ll ) goto label$321;
			label$322:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
				if( SRC$1 < SRC_END$1 ) goto label$324;
				{
					goto label$316;
					label$324:;
				}
				C$1 = (int64)*SRC$1;
				SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
				if( ((int64)-(C$1 >= 1ll) & (int64)-(C$1 <= 3ll)) == 0ll ) goto label$326;
				{
					OCTLEN$1 = C$1;
					if( SRC$1 < SRC_END$1 ) goto label$328;
					{
						goto label$316;
						label$328:;
					}
					C$1 = (int64)*SRC$1;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
				}
				label$326:;
				label$325:;
			}
			goto label$317;
			label$321:;
			if( C$1 < 0ll ) goto label$331;
			if( C$1 <= 31ll ) goto label$330;
			label$331:;
			if( C$1 < 128ll ) goto label$329;
			if( C$1 > 255ll ) goto label$329;
			label$330:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
				if( C$1 >= 8ll ) goto label$333;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)48u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
					C$1 = C$1 + 48ll;
				}
				goto label$332;
				label$333:;
				if( C$1 >= 64ll ) goto label$334;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)((C$1 >> (3ll & 63ll)) + 48ll);
					DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
					C$1 = (C$1 & 7ll) + 48ll;
				}
				goto label$332;
				label$334:;
				{
					*DST$1 = (uint8)((C$1 >> (6ll & 63ll)) + 48ll);
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)(((C$1 & 56ll) >> (3ll & 63ll)) + 48ll);
					DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
					C$1 = (C$1 & 7ll) + 48ll;
				}
				label$332:;
			}
			label$329:;
			label$317:;
		}
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
		if( OCTLEN$1 <= 0ll ) goto label$336;
		{
			OCTLEN$1 = OCTLEN$1 + -1ll;
			if( OCTLEN$1 != 0ll ) goto label$338;
			{
				*DST$1 = (uint8)34u;
				*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)34u;
				DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
			}
			label$338:;
			label$337:;
		}
		label$336:;
		label$335:;
	}
	goto label$315;
	label$316:;
	*DST$1 = (uint8)0u;
	fb$result$1 = (uint8*)*(uint8**)&RES$1;
	label$312:;
	return fb$result$1;
}

int64 HHASESCAPE( uint8* TEXT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$351:;
	static uint64 CHAR$1;
	static int64 LGT$1;
	int64 vr$1 = fb_StrLen( (void*)TEXT$1, 0ll );
	LGT$1 = vr$1;
	label$353:;
	if( LGT$1 <= 0ll ) goto label$354;
	{
		if( (int64)*TEXT$1 != 92ll ) goto label$356;
		{
			TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1ll);
			CHAR$1 = (uint64)*TEXT$1;
			{
				uint64 TMP$101$4;
				TMP$101$4 = CHAR$1;
				goto label$358;
				label$359:;
				{
					fb$result$1 = -1ll;
					goto label$352;
				}
				goto label$357;
				label$358:;
				static const void* tmp$102[85ll] = {
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$359,
				};
				if( (TMP$101$4 - 34ull) > 84ull ) goto label$357;
				goto *tmp$102[TMP$101$4 - 34ull];
				label$357:;
			}
		}
		label$356:;
		label$355:;
		TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1ll);
		LGT$1 = LGT$1 + -1ll;
	}
	goto label$353;
	label$354:;
	fb$result$1 = 0ll;
	label$352:;
	return fb$result$1;
}

int64 HHASESCAPEW( uint32* TEXT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$360:;
	static uint64 CHAR$1;
	static int64 LGT$1;
	int64 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	label$362:;
	if( LGT$1 <= 0ll ) goto label$363;
	{
		if( (int64)*TEXT$1 != 92ll ) goto label$365;
		{
			TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4ll);
			CHAR$1 = (uint64)*TEXT$1;
			{
				uint64 TMP$103$4;
				TMP$103$4 = CHAR$1;
				goto label$367;
				label$368:;
				{
					fb$result$1 = -1ll;
					goto label$361;
				}
				goto label$366;
				label$367:;
				static const void* tmp$104[85ll] = {
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$368,
				};
				if( (TMP$103$4 - 34ull) > 84ull ) goto label$366;
				goto *tmp$104[TMP$103$4 - 34ull];
				label$366:;
			}
		}
		label$365:;
		label$364:;
		TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4ll);
		LGT$1 = LGT$1 + -1ll;
	}
	goto label$362;
	label$363:;
	fb$result$1 = 0ll;
	label$361:;
	return fb$result$1;
}

uint8* HESCAPEW( uint32* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$379:;
	static struct $8DZSTRING RES$1;
	static uint64 CHAR$1;
	static uint64 C$1;
	static int64 LGT$1;
	static int64 I$1;
	static int64 WCHARLEN$1;
	static uint32* SRC$1;
	static uint32* SRC_END$1;
	static uint8* DST$1;
	WCHARLEN$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
	int64 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	if( LGT$1 != 0ll ) goto label$382;
	{
		fb$result$1 = (uint8*)0ull;
		goto label$380;
	}
	label$382:;
	label$381:;
	DZSTRALLOCATE( &RES$1, (LGT$1 * WCHARLEN$1) << (2ll & 63ll) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2ll & 63ll)));
	label$383:;
	if( SRC$1 >= SRC_END$1 ) goto label$384;
	{
		CHAR$1 = (uint64)*SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
		if( CHAR$1 != 27ull ) goto label$386;
		{
			if( SRC$1 < SRC_END$1 ) goto label$388;
			{
				goto label$384;
				label$388:;
			}
			CHAR$1 = (uint64)*SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
			if( ((int64)-(CHAR$1 >= 1ull) & (int64)-(CHAR$1 <= 11ull)) == 0ll ) goto label$390;
			{
				I$1 = (int64)CHAR$1;
				CHAR$1 = 0ull;
				if( (uint32*)((uint8*)SRC$1 + (I$1 << (2ll & 63ll))) <= SRC_END$1 ) goto label$392;
				{
					goto label$384;
					label$392:;
				}
				label$393:;
				if( I$1 <= 0ll ) goto label$394;
				{
					CHAR$1 = (CHAR$1 << (3ull & 63ll)) + (uint64)((int64)*SRC$1 + -48ll);
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
					I$1 = I$1 + -1ll;
				}
				goto label$393;
				label$394:;
			}
			goto label$389;
			label$390:;
			{
				if( CHAR$1 != 117ull ) goto label$396;
				{
					if( (uint32*)((uint8*)SRC$1 + 16ll) <= SRC_END$1 ) goto label$398;
					{
						goto label$384;
						label$398:;
					}
					uint64 vr$25 = HU16TOWCHAR( SRC$1 );
					CHAR$1 = vr$25;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16ll);
				}
				goto label$395;
				label$396:;
				{
					int64 vr$27 = HREMAPCHAR( (int64)CHAR$1 );
					CHAR$1 = (uint64)vr$27;
				}
				label$395:;
			}
			label$389:;
		}
		label$386:;
		label$385:;
		{
			I$1 = 1ll;
			int64 TMP$106$3;
			TMP$106$3 = WCHARLEN$1;
			goto label$399;
			label$402:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
				C$1 = CHAR$1 & 255ull;
				if( C$1 >= 8ull ) goto label$404;
				{
					*DST$1 = (uint8)(C$1 + 48ull);
					DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
				}
				goto label$403;
				label$404:;
				if( C$1 >= 64ull ) goto label$405;
				{
					*DST$1 = (uint8)((C$1 >> (3ll & 63ll)) + 48ull);
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)((C$1 & 7ull) + 48ull);
					DST$1 = (uint8*)((uint8*)DST$1 + 2ll);
				}
				goto label$403;
				label$405:;
				{
					*DST$1 = (uint8)((C$1 >> (6ll & 63ll)) + 48ull);
					*(uint8*)((uint8*)DST$1 + 1ll) = (uint8)(((C$1 & 56ull) >> (3ll & 63ll)) + 48ull);
					*(uint8*)((uint8*)DST$1 + 2ll) = (uint8)((C$1 & 7ull) + 48ull);
					DST$1 = (uint8*)((uint8*)DST$1 + 3ll);
				}
				label$403:;
				CHAR$1 = CHAR$1 >> (8ll & 63ll);
			}
			label$400:;
			I$1 = I$1 + 1ll;
			label$399:;
			if( I$1 <= TMP$106$3 ) goto label$402;
			label$401:;
		}
	}
	goto label$383;
	label$384:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$380:;
	return fb$result$1;
}

uint8* HUNESCAPE( uint8* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$406:;
	static struct $8DZSTRING RES$1;
	static int64 CHAR$1;
	static int64 LGT$1;
	static int64 I$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	int64 vr$1 = fb_StrLen( (void*)TEXT$1, 0ll );
	LGT$1 = vr$1;
	if( LGT$1 != 0ll ) goto label$409;
	{
		fb$result$1 = TEXT$1;
		goto label$407;
	}
	label$409:;
	label$408:;
	DZSTRALLOCATE( &RES$1, LGT$1 );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$410:;
	if( SRC$1 >= SRC_END$1 ) goto label$411;
	{
		CHAR$1 = (int64)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
		if( CHAR$1 != 27ll ) goto label$413;
		{
			if( SRC$1 < SRC_END$1 ) goto label$415;
			{
				goto label$411;
				label$415:;
			}
			CHAR$1 = (int64)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
			if( ((int64)-(CHAR$1 >= 1ll) & (int64)-(CHAR$1 <= 3ll)) == 0ll ) goto label$417;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0ll;
				label$418:;
				if( I$1 <= 0ll ) goto label$419;
				{
					CHAR$1 = ((CHAR$1 << (3ll & 63ll)) + (int64)*SRC$1) + -48ll;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1ll);
					I$1 = I$1 + -1ll;
				}
				goto label$418;
				label$419:;
			}
			goto label$416;
			label$417:;
			{
				int64 vr$19 = HREMAPCHAR( CHAR$1 );
				CHAR$1 = vr$19;
			}
			label$416:;
		}
		label$413:;
		label$412:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1ll);
	}
	goto label$410;
	label$411:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$407:;
	return fb$result$1;
}

uint32* HUNESCAPEW( uint32* TEXT$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$420:;
	static struct $8DWSTRING RES$1;
	static int64 CHAR$1;
	static int64 LGT$1;
	static int64 I$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	int64 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	if( LGT$1 != 0ll ) goto label$423;
	{
		fb$result$1 = TEXT$1;
		goto label$421;
	}
	label$423:;
	label$422:;
	DWSTRALLOCATE( &RES$1, LGT$1 );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2ll & 63ll)));
	label$424:;
	if( SRC$1 >= SRC_END$1 ) goto label$425;
	{
		CHAR$1 = (int64)*SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
		if( CHAR$1 != 27ll ) goto label$427;
		{
			if( SRC$1 < SRC_END$1 ) goto label$429;
			{
				goto label$425;
				label$429:;
			}
			CHAR$1 = (int64)*SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
			if( ((int64)-(CHAR$1 >= 1ll) & (int64)-(CHAR$1 <= 11ll)) == 0ll ) goto label$431;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0ll;
				label$432:;
				if( I$1 <= 0ll ) goto label$433;
				{
					CHAR$1 = ((CHAR$1 << (3ll & 63ll)) + (int64)*SRC$1) + -48ll;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
					I$1 = I$1 + -1ll;
				}
				goto label$432;
				label$433:;
			}
			goto label$430;
			label$431:;
			{
				if( (uint64)CHAR$1 != 117ull ) goto label$435;
				{
					if( (uint32*)((uint8*)SRC$1 + 16ll) <= SRC_END$1 ) goto label$437;
					{
						goto label$425;
						label$437:;
					}
					uint64 vr$21 = HU16TOWCHAR( SRC$1 );
					CHAR$1 = (int64)vr$21;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16ll);
				}
				goto label$434;
				label$435:;
				{
					int64 vr$23 = HREMAPCHAR( CHAR$1 );
					CHAR$1 = vr$23;
				}
				label$434:;
			}
			label$430:;
		}
		label$427:;
		label$426:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4ll);
	}
	goto label$424;
	label$425:;
	*DST$1 = (uint32)0u;
	fb$result$1 = *(uint32**)&RES$1;
	label$421:;
	return fb$result$1;
}

int64 HCHARNEEDSESCAPING( int64 CH$1, int64 QUOTECHAR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$438:;
	fb$result$1 = (((int64)-(CH$1 < 32ll) | (int64)-(CH$1 >= 127ll)) | (int64)-((uint64)CH$1 == 92ull)) | (int64)-(CH$1 == QUOTECHAR$1);
	label$439:;
	return fb$result$1;
}

int64 HISVALIDHEXDIGIT( int64 CH$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$440:;
	fb$result$1 = (((int64)-((uint64)CH$1 >= 48ull) & (int64)-((uint64)CH$1 <= 57ull)) | ((int64)-((uint64)CH$1 >= 97ull) & (int64)-((uint64)CH$1 <= 102ull))) | ((int64)-((uint64)CH$1 >= 65ull) & (int64)-((uint64)CH$1 <= 70ull));
	label$441:;
	return fb$result$1;
}

void HSPLITSTR( FBSTRING* TXT$1, FBSTRING* DEL$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	label$442:;
	int64 ITEMS$1;
	ITEMS$1 = 10ll;
	struct $8FBARRAY1IlE {
		int64* DATA;
		int64* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 72 );
	struct $8FBARRAY1IlE DPOS$1;
	*(int64**)&DPOS$1 = (int64*)0ull;
	*(int64**)((uint8*)&DPOS$1 + 8ll) = (int64*)0ull;
	*(int64*)((uint8*)&DPOS$1 + 16ll) = 0ll;
	*(int64*)((uint8*)&DPOS$1 + 24ll) = 8ll;
	*(int64*)((uint8*)&DPOS$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&DPOS$1 + 40ll) = 17ll;
	__builtin_memset( (void*)((uint8*)&DPOS$1 + 48ll), 0, 24ll );
	int32 vr$3 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&DPOS$1, 8ull, -1, 0, 1ull, 0ll, ITEMS$1 + -1ll );
	if( (int64)vr$3 == 0ll ) goto label$444;
	void* vr$5 = fb_ErrorThrowAt( 1267, (uint8*)"src/compiler/hlp-str.bas", (void*)0ull, (void*)0ull );
	goto *vr$5;
	label$444:;
	int64 DELLEN$1;
	int64 vr$6 = fb_StrLen( (void*)DEL$1, -1ll );
	DELLEN$1 = vr$6;
	int64 CNT$1;
	CNT$1 = 0ll;
	int64 P$1;
	P$1 = 1ll;
	label$445:;
	{
		int64 vr$7 = fb_StrInstr( P$1, (FBSTRING*)TXT$1, (FBSTRING*)DEL$1 );
		P$1 = vr$7;
		if( P$1 <= 0ll ) goto label$449;
		{
			if( CNT$1 < ITEMS$1 ) goto label$451;
			{
				ITEMS$1 = ITEMS$1 + 10ll;
				int32 vr$11 = fb_ArrayRedimPresvEx( (struct $7FBARRAYIvE*)&DPOS$1, 8ull, -1, 0, 1ull, 0ll, ITEMS$1 + -1ll );
				if( (int64)vr$11 == 0ll ) goto label$452;
				void* vr$13 = fb_ErrorThrowAt( 1278, (uint8*)"src/compiler/hlp-str.bas", (void*)0ull, (void*)0ull );
				goto *vr$13;
				label$452:;
			}
			label$451:;
			label$450:;
			*(int64*)((CNT$1 << (3ll & 63ll)) + *(int64*)&DPOS$1) = P$1;
			P$1 = P$1 + DELLEN$1;
		}
		label$449:;
		label$448:;
		CNT$1 = CNT$1 + 1ll;
	}
	label$447:;
	if( P$1 != 0ll ) goto label$445;
	label$446:;
	CNT$1 = CNT$1 + -1ll;
	if( CNT$1 != 0ll ) goto label$454;
	{
		int32 vr$19 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 24ull, -1, -1, 1ull, 0ll, 0ll );
		if( (int64)vr$19 == 0ll ) goto label$455;
		void* vr$21 = fb_ErrorThrowAt( 1288, (uint8*)"src/compiler/hlp-str.bas", (void*)0ull, (void*)0ull );
		goto *vr$21;
		label$455:;
		fb_StrAssign( (void*)*(int64*)RES$1, -1ll, (void*)TXT$1, -1ll, 0 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
		goto label$443;
	}
	label$454:;
	label$453:;
	int32 vr$25 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 24ull, -1, -1, 1ull, 0ll, CNT$1 );
	if( (int64)vr$25 == 0ll ) goto label$456;
	void* vr$27 = fb_ErrorThrowAt( 1293, (uint8*)"src/compiler/hlp-str.bas", (void*)0ull, (void*)0ull );
	goto *vr$27;
	label$456:;
	FBSTRING* vr$29 = fb_LEFT( (FBSTRING*)TXT$1, *(int64*)*(int64*)&DPOS$1 + -1ll );
	fb_StrAssign( (void*)*(int64*)RES$1, -1ll, (void*)vr$29, -1ll, 0 );
	P$1 = 1ll;
	label$457:;
	if( P$1 == CNT$1 ) goto label$458;
	{
		FBSTRING* vr$41 = fb_StrMid( (FBSTRING*)TXT$1, *(int64*)((uint8*)((P$1 << (3ll & 63ll)) + *(int64*)&DPOS$1) + -8ll) + DELLEN$1, (*(int64*)((P$1 << (3ll & 63ll)) + *(int64*)&DPOS$1) - *(int64*)((uint8*)((P$1 << (3ll & 63ll)) + *(int64*)&DPOS$1) + -8ll)) - DELLEN$1 );
		fb_StrAssign( (void*)((P$1 * 24ll) + *(int64*)RES$1), -1ll, (void*)vr$41, -1ll, 0 );
		P$1 = P$1 + 1ll;
	}
	goto label$457;
	label$458:;
	FBSTRING* vr$50 = fb_StrMid( (FBSTRING*)TXT$1, *(int64*)((uint8*)((CNT$1 << (3ll & 63ll)) + *(int64*)&DPOS$1) + -8ll) + DELLEN$1, -1ll );
	fb_StrAssign( (void*)((CNT$1 * 24ll) + *(int64*)RES$1), -1ll, (void*)vr$50, -1ll, 0 );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
	label$443:;
}

int64 HSTR2TOK( uint8* TXT$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	int64 TMP$113$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$459:;
	int64 T$1;
	T$1 = 0ll;
	uint32 LC$1;
	LC$1 = 32u;
	uint8* S$1;
	S$1 = (uint8*)TXT$1;
	label$461:;
	if( (int64)*S$1 == 0ll ) goto label$462;
	{
		uint64 C$2;
		C$2 = (uint64)*S$1;
		if( C$2 != 7ull ) goto label$464;
		{
			C$2 = 32ull;
		}
		label$464:;
		label$463:;
		if( C$2 != 32ull ) goto label$466;
		{
			if( (int64)LC$1 == 32ll ) goto label$468;
			{
				T$1 = T$1 + 1ll;
			}
			label$468:;
			label$467:;
		}
		label$466:;
		label$465:;
		LC$1 = (uint32)C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1ll);
	}
	goto label$461;
	label$462:;
	if( (int64)LC$1 == 32ll ) goto label$470;
	{
		T$1 = T$1 + 1ll;
	}
	label$470:;
	label$469:;
	if( T$1 != 0ll ) goto label$472;
	{
		fb$result$1 = 0ll;
		goto label$460;
	}
	label$472:;
	label$471:;
	int32 vr$12 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 24ull, -1, -1, 1ull, 0ll, T$1 + -1ll );
	if( (int64)vr$12 == 0ll ) goto label$473;
	void* vr$14 = fb_ErrorThrowAt( 1335, (uint8*)"src/compiler/hlp-str.bas", (void*)0ull, (void*)0ull );
	goto *vr$14;
	label$473:;
	T$1 = 0ll;
	LC$1 = 32u;
	S$1 = (uint8*)TXT$1;
	label$474:;
	if( (int64)*S$1 == 0ll ) goto label$475;
	{
		uint64 C$2;
		C$2 = (uint64)*S$1;
		if( C$2 != 7ull ) goto label$477;
		{
			C$2 = 32ull;
		}
		label$477:;
		label$476:;
		if( C$2 != 32ull ) goto label$479;
		{
			if( (int64)LC$1 == 32ll ) goto label$481;
			{
				T$1 = T$1 + 1ll;
			}
			label$481:;
			label$480:;
		}
		goto label$478;
		label$479:;
		{
			FBSTRING TMP$112$3;
			FBSTRING* vr$21 = fb_CHR( 1, (int64)C$2 );
			__builtin_memset( &TMP$112$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$112$3, (void*)((T$1 * 24ll) + *(int64*)RES$1), -1ll, (void*)vr$21, -1ll );
			fb_StrAssign( (void*)((T$1 * 24ll) + *(int64*)RES$1), -1ll, (void*)vr$28, -1ll, 0 );
		}
		label$478:;
		LC$1 = (uint32)C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1ll);
	}
	goto label$474;
	label$475:;
	if( (int64)LC$1 == 32ll ) goto label$482;
	TMP$113$1 = T$1 + 1ll;
	goto label$483;
	label$482:;
	TMP$113$1 = T$1;
	label$483:;
	fb$result$1 = TMP$113$1;
	label$460:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static int64 HREMAPCHAR( int64 CHAR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$339:;
	{
		uint64 TMP$92$2;
		TMP$92$2 = (uint64)CHAR$1;
		goto label$342;
		label$343:;
		{
			fb$result$1 = 13ll;
		}
		goto label$341;
		label$344:;
		{
			fb$result$1 = 10ll;
		}
		goto label$341;
		label$345:;
		{
			fb$result$1 = 9ll;
		}
		goto label$341;
		label$346:;
		{
			fb$result$1 = 8ll;
		}
		goto label$341;
		label$347:;
		{
			fb$result$1 = 7ll;
		}
		goto label$341;
		label$348:;
		{
			fb$result$1 = 12ll;
		}
		goto label$341;
		label$349:;
		{
			fb$result$1 = 11ll;
		}
		goto label$341;
		label$350:;
		{
			fb$result$1 = CHAR$1;
		}
		goto label$341;
		label$342:;
		static const void* tmp$114[22ll] = {
			&&label$347,
			&&label$346,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$348,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$344,
			&&label$350,
			&&label$344,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$343,
			&&label$350,
			&&label$345,
			&&label$350,
			&&label$349,
		};
		if( (TMP$92$2 - 97ull) > 21ull ) goto label$350;
		goto *tmp$114[TMP$92$2 - 97ull];
		label$341:;
	}
	label$340:;
	return fb$result$1;
}

static uint64 HU16TOWCHAR( uint32* SRC$1 )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$369:;
	static uint64 CHAR$1;
	static uint64 C$1;
	static int64 I$1;
	CHAR$1 = 0ull;
	{
		I$1 = 1ll;
		label$374:;
		{
			C$1 = (uint64)((int64)*SRC$1 + -48ll);
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4ll);
			if( C$1 <= 9ull ) goto label$376;
			{
				C$1 = C$1 + 18446744073709551609ull;
			}
			label$376:;
			label$375:;
			if( C$1 <= 16ull ) goto label$378;
			{
				C$1 = C$1 + 18446744073709551584ull;
			}
			label$378:;
			label$377:;
			CHAR$1 = (CHAR$1 << (4ull & 63ll)) | C$1;
		}
		label$372:;
		I$1 = I$1 + 1ll;
		label$371:;
		if( I$1 <= 4ll ) goto label$374;
		label$373:;
	}
	fb$result$1 = CHAR$1;
	label$370:;
	return fb$result$1;
}
