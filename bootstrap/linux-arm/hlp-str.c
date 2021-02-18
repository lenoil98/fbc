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
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 120 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayRedimPresvEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int32, void*, int32 );
FBSTRING* fb_WstrAssignToA( void*, int32, uint32*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
uint32* fb_WstrMid( uint32*, int32, int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
int32 fb_WstrInstr( int32, uint32*, uint32* );
FBSTRING* fb_OCT_i( uint32 );
uint32* fb_WstrOct_i( uint32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
static void fb_ctor__hlpzstr( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XREALLOCATE( void*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void DZSTRALLOCATE( struct $8DZSTRING*, int32 );
void DWSTRALLOCATE( struct $8DWSTRING*, int32 );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
static int32 HREMAPCHAR( int32 );
static uint32 HU16TOWCHAR( uint32* );
typedef int32 $13AST_NODECLASS;
typedef int32 $11AST_OPFLAGS;
typedef int32 $6AST_OP;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 36 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
typedef int32 $12FB_DATACLASS;
typedef int32 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int32 SIZE;
	int32 SIGNED;
	int32 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int32 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 28 );
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 36 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
struct $8FBARRAY2IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 48 );
static struct $8FBARRAY2IlE tmp$82$;

void ZSTRASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$10:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$13;
	{
		SRC_LEN$1 = 0;
	}
	goto label$12;
	label$13:;
	{
		int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
		SRC_LEN$1 = vr$2;
	}
	label$12:;
	if( SRC_LEN$1 != 0 ) goto label$15;
	{
		if( *DST$1 == (uint8*)0u ) goto label$17;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0u;
			goto label$11;
		}
		label$17:;
		label$16:;
	}
	label$15:;
	label$14:;
	if( *DST$1 != (uint8*)0u ) goto label$19;
	{
		DST_LEN$1 = 0;
	}
	goto label$18;
	label$19:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
	}
	label$18:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$21;
	{
		void* vr$10 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$10;
	}
	label$21:;
	label$20:;
	if( *DST$1 == (uint8*)0u ) goto label$23;
	{
		fb_StrAssign( *(void**)DST$1, 0, (void*)SRC$1, 0, 0 );
	}
	label$23:;
	label$22:;
	label$11:;
}

void ZSTRASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$24:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$27;
	{
		SRC_LEN$1 = 0;
	}
	goto label$26;
	label$27:;
	{
		int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$26:;
	if( SRC_LEN$1 != 0 ) goto label$29;
	{
		if( *DST$1 == (uint8*)0u ) goto label$31;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0u;
			goto label$25;
		}
		label$31:;
		label$30:;
	}
	label$29:;
	label$28:;
	if( *DST$1 != (uint8*)0u ) goto label$33;
	{
		DST_LEN$1 = 0;
	}
	goto label$32;
	label$33:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
	}
	label$32:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$35;
	{
		void* vr$10 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$10;
	}
	label$35:;
	label$34:;
	if( *DST$1 == (uint8*)0u ) goto label$37;
	{
		fb_WstrAssignToA( *(void**)DST$1, 0, (uint32*)SRC$1, 0 );
	}
	label$37:;
	label$36:;
	label$25:;
}

void ZSTRCONCATASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$38:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$41;
	{
		goto label$39;
	}
	label$41:;
	label$40:;
	int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$43;
	{
		goto label$39;
	}
	label$43:;
	label$42:;
	if( *DST$1 != (uint8*)0u ) goto label$45;
	{
		DST_LEN$1 = 0;
		void* vr$5 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$5;
	}
	goto label$44;
	label$45:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
		void* vr$12 = XREALLOCATE( *(void**)DST$1, (DST_LEN$1 + SRC_LEN$1) + 1 );
		*DST$1 = (uint8*)vr$12;
	}
	label$44:;
	if( *DST$1 == (uint8*)0u ) goto label$47;
	{
		fb_StrAssign( (void*)((uint8*)*DST$1 + DST_LEN$1), 0, (void*)SRC$1, 0, 0 );
	}
	label$47:;
	label$46:;
	label$39:;
}

void ZSTRCONCATASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$48:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$51;
	{
		goto label$49;
	}
	label$51:;
	label$50:;
	int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$53;
	{
		goto label$49;
	}
	label$53:;
	label$52:;
	if( *DST$1 != (uint8*)0u ) goto label$55;
	{
		DST_LEN$1 = 0;
		void* vr$5 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$5;
	}
	goto label$54;
	label$55:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
		void* vr$12 = XREALLOCATE( *(void**)DST$1, (DST_LEN$1 + SRC_LEN$1) + 1 );
		*DST$1 = (uint8*)vr$12;
	}
	label$54:;
	if( *DST$1 == (uint8*)0u ) goto label$57;
	{
		fb_WstrAssignToA( (void*)((uint8*)*DST$1 + DST_LEN$1), 0, (uint32*)SRC$1, 0 );
	}
	label$57:;
	label$56:;
	label$49:;
}

void WSTRASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$58:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$61;
	{
		SRC_LEN$1 = 0;
	}
	goto label$60;
	label$61:;
	{
		int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$60:;
	if( SRC_LEN$1 != 0 ) goto label$63;
	{
		if( *DST$1 == (uint32*)0u ) goto label$65;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0u;
			goto label$59;
		}
		label$65:;
		label$64:;
	}
	label$63:;
	label$62:;
	if( *DST$1 != (uint32*)0u ) goto label$67;
	{
		DST_LEN$1 = 0;
	}
	goto label$66;
	label$67:;
	{
		int32 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$66:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$69;
	{
		void* vr$11 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$11;
	}
	label$69:;
	label$68:;
	if( *DST$1 == (uint32*)0u ) goto label$71;
	{
		fb_WstrAssign( *DST$1, 0, (uint32*)SRC$1 );
	}
	label$71:;
	label$70:;
	label$59:;
}

void WSTRASSIGNA( uint32** DST$1, uint8* SRC$1 )
{
	label$72:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$75;
	{
		SRC_LEN$1 = 0;
	}
	goto label$74;
	label$75:;
	{
		int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
		SRC_LEN$1 = vr$2;
	}
	label$74:;
	if( SRC_LEN$1 != 0 ) goto label$77;
	{
		if( *DST$1 == (uint32*)0u ) goto label$79;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0u;
			goto label$73;
		}
		label$79:;
		label$78:;
	}
	label$77:;
	label$76:;
	if( *DST$1 != (uint32*)0u ) goto label$81;
	{
		DST_LEN$1 = 0;
	}
	goto label$80;
	label$81:;
	{
		int32 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$80:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$83;
	{
		void* vr$11 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$11;
	}
	label$83:;
	label$82:;
	if( *DST$1 == (uint32*)0u ) goto label$85;
	{
		fb_WstrAssignFromA( *DST$1, 0, (void*)SRC$1, 0 );
	}
	label$85:;
	label$84:;
	label$73:;
}

void WSTRCONCATASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$86:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$89;
	{
		goto label$87;
	}
	label$89:;
	label$88:;
	int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$91;
	{
		goto label$87;
	}
	label$91:;
	label$90:;
	if( *DST$1 != (uint32*)0u ) goto label$93;
	{
		DST_LEN$1 = 0;
		void* vr$6 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$6;
	}
	goto label$92;
	label$93:;
	{
		int32 vr$9 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, ((DST_LEN$1 + SRC_LEN$1) << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$14;
	}
	label$92:;
	if( *DST$1 == (uint32*)0u ) goto label$95;
	{
		fb_WstrAssign( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2 & 31))), 0, (uint32*)SRC$1 );
	}
	label$95:;
	label$94:;
	label$87:;
}

void WSTRCONCATASSIGNW( uint32** DST$1, uint8* SRC$1 )
{
	label$96:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$99;
	{
		goto label$97;
	}
	label$99:;
	label$98:;
	int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$101;
	{
		goto label$97;
	}
	label$101:;
	label$100:;
	if( *DST$1 != (uint32*)0u ) goto label$103;
	{
		DST_LEN$1 = 0;
		void* vr$6 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$6;
	}
	goto label$102;
	label$103:;
	{
		int32 vr$9 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, ((DST_LEN$1 + SRC_LEN$1) << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$14;
	}
	label$102:;
	if( *DST$1 == (uint32*)0u ) goto label$105;
	{
		fb_WstrAssignFromA( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2 & 31))), 0, (void*)SRC$1, 0 );
	}
	label$105:;
	label$104:;
	label$97:;
}

uint8* ZSTRDUP( uint8* S$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$106:;
	uint8* DST$1;
	__builtin_memset( &DST$1, 0, 4 );
	int32 vr$2 = fb_StrLen( (void*)S$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	DST$1 = (uint8*)vr$4;
	fb_StrAssign( (void*)DST$1, 0, (void*)S$1, 0, 0 );
	fb$result$1 = DST$1;
	label$107:;
	return fb$result$1;
}

uint32* WSTRDUP( uint32* S$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$108:;
	uint32* DST$1;
	__builtin_memset( &DST$1, 0, 4 );
	int32 vr$2 = fb_WstrLen( (uint32*)S$1 );
	void* vr$5 = XALLOCATE( (vr$2 << (2 & 31)) + 4 );
	DST$1 = (uint32*)vr$5;
	fb_WstrAssign( DST$1, 0, (uint32*)S$1 );
	fb$result$1 = DST$1;
	label$109:;
	return fb$result$1;
}

FBSTRING* HREPLACE( uint8* ORGTEXT$1, uint8* OLDTEXT$1, uint8* NEWTEXT$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$110:;
	static int32 OLDLEN$1;
	static int32 NEWLEN$1;
	static int32 P$1;
	static FBSTRING TEXT$1;
	static FBSTRING REMTEXT$1;
	int32 vr$1 = fb_StrLen( (void*)OLDTEXT$1, 0 );
	OLDLEN$1 = vr$1;
	int32 vr$2 = fb_StrLen( (void*)NEWTEXT$1, 0 );
	NEWLEN$1 = vr$2;
	fb_StrAssign( (void*)&TEXT$1, -1, (void*)ORGTEXT$1, 0, 0 );
	P$1 = 0;
	label$112:;
	{
		FBSTRING TMP$83$2;
		FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)OLDTEXT$1 );
		int32 vr$5 = fb_StrInstr( P$1 + 1, (FBSTRING*)&TEXT$1, (FBSTRING*)vr$3 );
		P$1 = vr$5;
		if( P$1 != 0 ) goto label$116;
		{
			goto label$113;
		}
		label$116:;
		label$115:;
		FBSTRING* vr$7 = fb_StrMid( (FBSTRING*)&TEXT$1, P$1 + OLDLEN$1, -1 );
		fb_StrAssign( (void*)&REMTEXT$1, -1, (void*)vr$7, -1, 0 );
		FBSTRING* vr$9 = fb_LEFT( (FBSTRING*)&TEXT$1, P$1 + -1 );
		fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$9, -1, 0 );
		__builtin_memset( &TMP$83$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$83$2, (void*)&TEXT$1, -1, (void*)NEWTEXT$1, 0 );
		fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$12, -1, 0 );
		fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)&REMTEXT$1, -1, 0 );
		P$1 = (P$1 + NEWLEN$1) + -1;
	}
	label$114:;
	goto label$112;
	label$113:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&TEXT$1, -1, 0 );
	label$111:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

uint32* HREPLACEW( uint32* ORGTEXT$1, uint32* OLDTEXT$1, uint32* NEWTEXT$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	static int32 OLDLEN$1;
	static int32 NEWLEN$1;
	static int32 P$1;
	static struct $8DWSTRING TEXT$1;
	static struct $8DWSTRING REMTEXT$1;
	int32 vr$1 = fb_WstrLen( (uint32*)OLDTEXT$1 );
	OLDLEN$1 = vr$1;
	int32 vr$2 = fb_WstrLen( (uint32*)NEWTEXT$1 );
	NEWLEN$1 = vr$2;
	DWSTRASSIGN( &TEXT$1, ORGTEXT$1 );
	P$1 = 0;
	label$119:;
	{
		uint32* TMP$84$2;
		uint32* TMP$85$2;
		int32 vr$4 = fb_WstrInstr( P$1 + 1, (uint32*)*(uint32**)&TEXT$1, (uint32*)OLDTEXT$1 );
		P$1 = vr$4;
		if( P$1 != 0 ) goto label$123;
		{
			goto label$120;
		}
		label$123:;
		label$122:;
		uint32* vr$6 = fb_WstrMid( (uint32*)*(uint32**)&TEXT$1, P$1 + OLDLEN$1, -1 );
		TMP$84$2 = vr$6;
		DWSTRASSIGN( &REMTEXT$1, TMP$84$2 );
		fb_WstrDelete( (uint32*)TMP$84$2 );
		uint32* vr$8 = fb_WstrLeft( *(uint32**)&TEXT$1, P$1 + -1 );
		TMP$85$2 = vr$8;
		DWSTRASSIGN( &TEXT$1, TMP$85$2 );
		fb_WstrDelete( (uint32*)TMP$85$2 );
		DWSTRCONCATASSIGN( &TEXT$1, NEWTEXT$1 );
		DWSTRCONCATASSIGN( &TEXT$1, *(uint32**)&REMTEXT$1 );
		P$1 = (P$1 + NEWLEN$1) + -1;
	}
	label$121:;
	goto label$119;
	label$120:;
	fb$result$1 = *(uint32**)&TEXT$1;
	label$118:;
	return fb$result$1;
}

uint8* HREPLACECHAR( uint8* ORGTEXT$1, int32 OLDCHAR$1, int32 NEWCHAR$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$124:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$86$2;
		int32 vr$1 = fb_StrLen( (void*)ORGTEXT$1, 0 );
		TMP$86$2 = vr$1 + -1;
		goto label$126;
		label$129:;
		{
			if( (int32)*(uint8*)((uint8*)ORGTEXT$1 + I$2) != OLDCHAR$1 ) goto label$131;
			{
				*(uint8*)((uint8*)ORGTEXT$1 + I$2) = (uint8)NEWCHAR$1;
			}
			label$131:;
			label$130:;
		}
		label$127:;
		I$2 = I$2 + 1;
		label$126:;
		if( I$2 <= TMP$86$2 ) goto label$129;
		label$128:;
	}
	fb$result$1 = ORGTEXT$1;
	label$125:;
	return fb$result$1;
}

uint8* HREESCAPE( uint8* TEXT$1, int32* TEXTLEN$1, int32* ISUNICODE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$132:;
	static struct $8DZSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 VALUE$1;
	static int32 ISNUMBER$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	*ISUNICODE$1 = 0;
	*TEXTLEN$1 = 0;
	int32 vr$3 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$3;
	if( LGT$1 != 0 ) goto label$135;
	{
		fb$result$1 = TEXT$1;
		goto label$133;
	}
	label$135:;
	label$134:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (1 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$136:;
	if( SRC$1 >= SRC_END$1 ) goto label$137;
	{
		CHAR$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		if( CHAR$1 != 92 ) goto label$139;
		{
			if( SRC$1 < SRC_END$1 ) goto label$141;
			{
				goto label$137;
				label$141:;
			}
			*DST$1 = (uint8)27u;
			DST$1 = (uint8*)((uint8*)DST$1 + 1);
			ISNUMBER$1 = 0;
			CHAR$1 = (int32)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
			{
				if( CHAR$1 < 48 ) goto label$143;
				if( CHAR$1 > 57 ) goto label$143;
				label$144:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = CHAR$1 + -48;
					{
						I$1 = 2;
						label$148:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$150;
							{
								goto label$147;
								label$150:;
							}
							CHAR$1 = (int32)*SRC$1;
							if( (-(CHAR$1 < 48) | -(CHAR$1 > 57)) == 0 ) goto label$152;
							{
								goto label$147;
							}
							label$152:;
							label$151:;
							VALUE$1 = ((VALUE$1 * 10) + CHAR$1) + -48;
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$146:;
						I$1 = I$1 + 1;
						label$145:;
						if( I$1 <= 3 ) goto label$148;
						label$147:;
					}
				}
				goto label$142;
				label$143:;
				if( CHAR$1 == 38 ) goto label$154;
				label$155:;
				if( CHAR$1 == 88 ) goto label$154;
				label$156:;
				if( CHAR$1 != 120 ) goto label$153;
				label$154:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$158;
					{
						goto label$137;
						label$158:;
					}
					VALUE$1 = 0;
					if( CHAR$1 != 38 ) goto label$160;
					{
						CHAR$1 = (int32)*SRC$1;
						SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
					}
					goto label$159;
					label$160:;
					{
						CHAR$1 = 72;
					}
					label$159:;
					{
						uint32 TMP$87$6;
						TMP$87$6 = (uint32)CHAR$1;
						goto label$162;
						label$163:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$167:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$169;
									{
										goto label$166;
										label$169:;
									}
									CHAR$1 = (int32)*SRC$1;
									{
										if( CHAR$1 < 97 ) goto label$173;
										if( CHAR$1 <= 102 ) goto label$172;
										label$173:;
										if( CHAR$1 < 65 ) goto label$174;
										if( CHAR$1 <= 70 ) goto label$172;
										label$174:;
										if( CHAR$1 < 48 ) goto label$171;
										if( CHAR$1 > 57 ) goto label$171;
										label$172:;
										{
											CHAR$1 = CHAR$1 + -48;
											if( CHAR$1 <= 9 ) goto label$176;
											{
												CHAR$1 = CHAR$1 + -7;
											}
											label$176:;
											label$175:;
											if( CHAR$1 <= 16 ) goto label$178;
											{
												CHAR$1 = CHAR$1 + -32;
											}
											label$178:;
											label$177:;
											VALUE$1 = (VALUE$1 << (4 & 31)) + CHAR$1;
										}
										goto label$170;
										label$171:;
										{
											goto label$166;
										}
										label$179:;
										label$170:;
									}
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$165:;
								I$1 = I$1 + 1;
								label$164:;
								if( I$1 <= 2 ) goto label$167;
								label$166:;
							}
						}
						goto label$161;
						label$180:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$184:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$186;
									{
										goto label$183;
										label$186:;
									}
									CHAR$1 = (int32)*SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 55)) == 0 ) goto label$188;
									{
										goto label$183;
									}
									label$188:;
									label$187:;
									VALUE$1 = ((VALUE$1 << (3 & 31)) + CHAR$1) + -48;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$182:;
								I$1 = I$1 + 1;
								label$181:;
								if( I$1 <= 3 ) goto label$184;
								label$183:;
							}
						}
						goto label$161;
						label$189:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$193:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$195;
									{
										goto label$192;
										label$195:;
									}
									CHAR$1 = (int32)*SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 49)) == 0 ) goto label$197;
									{
										goto label$192;
									}
									label$197:;
									label$196:;
									VALUE$1 = ((VALUE$1 << (1 & 31)) + CHAR$1) + -48;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$191:;
								I$1 = I$1 + 1;
								label$190:;
								if( I$1 <= 8 ) goto label$193;
								label$192:;
							}
						}
						goto label$161;
						label$162:;
						static const void* tmp$88[46] = {
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
						if( (TMP$87$6 - 66u) > 45u ) goto label$161;
						goto *tmp$88[TMP$87$6 - 66u];
						label$161:;
					}
				}
				goto label$142;
				label$153:;
				if( CHAR$1 != 97 ) goto label$198;
				label$199:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = 7;
				}
				goto label$142;
				label$198:;
				if( CHAR$1 != 117 ) goto label$200;
				label$201:;
				{
					*ISUNICODE$1 = -1;
					*DST$1 = (uint8)CHAR$1;
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
					{
						I$1 = 1;
						label$205:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$203:;
						I$1 = I$1 + 1;
						label$202:;
						if( I$1 <= 4 ) goto label$205;
						label$204:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2;
					goto label$136;
				}
				goto label$142;
				label$200:;
				if( CHAR$1 != 85 ) goto label$206;
				label$207:;
				{
					*ISUNICODE$1 = -1;
					*DST$1 = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
					{
						I$1 = 1;
						label$211:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$209:;
						I$1 = I$1 + 1;
						label$208:;
						if( I$1 <= 4 ) goto label$211;
						label$210:;
					}
					*DST$1 = (uint8)27u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					{
						I$1 = 1;
						label$215:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$213:;
						I$1 = I$1 + 1;
						label$212:;
						if( I$1 <= 4 ) goto label$215;
						label$214:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4;
					goto label$136;
				}
				label$206:;
				label$142:;
			}
			if( ISNUMBER$1 == 0 ) goto label$217;
			{
				if( (uint32)VALUE$1 <= 255u ) goto label$219;
				{
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
					VALUE$1 = 255;
				}
				label$219:;
				label$218:;
				if( VALUE$1 >= 8 ) goto label$221;
				{
					LGT$1 = 1;
				}
				goto label$220;
				label$221:;
				if( VALUE$1 >= 64 ) goto label$222;
				{
					LGT$1 = 2;
				}
				goto label$220;
				label$222:;
				{
					LGT$1 = 3;
				}
				label$220:;
				*DST$1 = (uint8)LGT$1;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				FBSTRING* vr$85 = fb_OCT_i( (uint32)VALUE$1 );
				fb_StrAssign( (void*)DST$1, 0, (void*)vr$85, -1, 0 );
				DST$1 = (uint8*)((uint8*)DST$1 + LGT$1);
				*TEXTLEN$1 = *TEXTLEN$1 + 1;
				goto label$136;
			}
			label$217:;
			label$216:;
		}
		label$139:;
		label$138:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
		*TEXTLEN$1 = *TEXTLEN$1 + 1;
	}
	goto label$136;
	label$137:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$133:;
	return fb$result$1;
}

uint32* HREESCAPEW( uint32* TEXT$1, int32* TEXTLEN$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$223:;
	static struct $8DWSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 ISNUMBER$1;
	static uint32 VALUE$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	*TEXTLEN$1 = 0;
	int32 vr$2 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$2;
	if( LGT$1 != 0 ) goto label$226;
	{
		fb$result$1 = TEXT$1;
		goto label$224;
	}
	label$226:;
	label$225:;
	DWSTRALLOCATE( &RES$1, LGT$1 << (1 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$227:;
	if( SRC$1 >= SRC_END$1 ) goto label$228;
	{
		CHAR$1 = *(int32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 92 ) goto label$230;
		{
			if( SRC$1 < SRC_END$1 ) goto label$232;
			{
				goto label$228;
				label$232:;
			}
			*DST$1 = (uint32)27u;
			DST$1 = (uint32*)((uint8*)DST$1 + 4);
			ISNUMBER$1 = 0;
			CHAR$1 = *(int32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			{
				if( CHAR$1 < 48 ) goto label$234;
				if( CHAR$1 > 57 ) goto label$234;
				label$235:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = (uint32)(CHAR$1 + -48);
					{
						I$1 = 2;
						label$239:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$241;
							{
								goto label$238;
								label$241:;
							}
							CHAR$1 = *(int32*)SRC$1;
							if( (-(CHAR$1 < 48) | -(CHAR$1 > 57)) == 0 ) goto label$243;
							{
								goto label$238;
							}
							label$243:;
							label$242:;
							VALUE$1 = (VALUE$1 * 10u) + (uint32)(CHAR$1 + -48);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$237:;
						I$1 = I$1 + 1;
						label$236:;
						if( I$1 <= 5 ) goto label$239;
						label$238:;
					}
				}
				goto label$233;
				label$234:;
				if( CHAR$1 == 38 ) goto label$245;
				label$246:;
				if( CHAR$1 == 88 ) goto label$245;
				label$247:;
				if( CHAR$1 != 120 ) goto label$244;
				label$245:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$249;
					{
						goto label$228;
						label$249:;
					}
					VALUE$1 = 0u;
					if( CHAR$1 != 38 ) goto label$251;
					{
						CHAR$1 = *(int32*)SRC$1;
						SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					}
					goto label$250;
					label$251:;
					{
						CHAR$1 = 72;
					}
					label$250:;
					{
						uint32 TMP$89$6;
						TMP$89$6 = (uint32)CHAR$1;
						goto label$253;
						label$254:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$258:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$260;
									{
										goto label$257;
										label$260:;
									}
									CHAR$1 = *(int32*)SRC$1;
									{
										if( CHAR$1 < 97 ) goto label$264;
										if( CHAR$1 <= 102 ) goto label$263;
										label$264:;
										if( CHAR$1 < 65 ) goto label$265;
										if( CHAR$1 <= 70 ) goto label$263;
										label$265:;
										if( CHAR$1 < 48 ) goto label$262;
										if( CHAR$1 > 57 ) goto label$262;
										label$263:;
										{
											CHAR$1 = CHAR$1 + -48;
											if( CHAR$1 <= 9 ) goto label$267;
											{
												CHAR$1 = CHAR$1 + -7;
											}
											label$267:;
											label$266:;
											if( CHAR$1 <= 16 ) goto label$269;
											{
												CHAR$1 = CHAR$1 + -32;
											}
											label$269:;
											label$268:;
											VALUE$1 = (VALUE$1 << (4u & 31)) + (uint32)CHAR$1;
										}
										goto label$261;
										label$262:;
										{
											goto label$257;
										}
										label$270:;
										label$261:;
									}
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$256:;
								I$1 = I$1 + 1;
								label$255:;
								if( I$1 <= 4 ) goto label$258;
								label$257:;
							}
						}
						goto label$252;
						label$271:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$275:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$277;
									{
										goto label$274;
										label$277:;
									}
									CHAR$1 = *(int32*)SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 55)) == 0 ) goto label$279;
									{
										goto label$274;
									}
									label$279:;
									label$278:;
									VALUE$1 = (VALUE$1 << (3u & 31)) + (uint32)(CHAR$1 + -48);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$273:;
								I$1 = I$1 + 1;
								label$272:;
								if( I$1 <= 6 ) goto label$275;
								label$274:;
							}
						}
						goto label$252;
						label$280:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$284:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$286;
									{
										goto label$283;
										label$286:;
									}
									CHAR$1 = *(int32*)SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 49)) == 0 ) goto label$288;
									{
										goto label$283;
									}
									label$288:;
									label$287:;
									VALUE$1 = (VALUE$1 << (1u & 31)) + (uint32)(CHAR$1 + -48);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$282:;
								I$1 = I$1 + 1;
								label$281:;
								if( I$1 <= 16 ) goto label$284;
								label$283:;
							}
						}
						goto label$252;
						label$253:;
						static const void* tmp$91[46] = {
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
						if( (TMP$89$6 - 66u) > 45u ) goto label$252;
						goto *tmp$91[TMP$89$6 - 66u];
						label$252:;
					}
				}
				goto label$233;
				label$244:;
				if( CHAR$1 != 117 ) goto label$289;
				label$290:;
				{
					*DST$1 = (uint32)(uint32)CHAR$1;
					DST$1 = (uint32*)((uint8*)DST$1 + 4);
					{
						I$1 = 1;
						label$294:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$292:;
						I$1 = I$1 + 1;
						label$291:;
						if( I$1 <= 4 ) goto label$294;
						label$293:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2;
					goto label$227;
				}
				goto label$233;
				label$289:;
				if( CHAR$1 != 85 ) goto label$295;
				label$296:;
				{
					*DST$1 = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 4);
					{
						I$1 = 1;
						label$300:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$298:;
						I$1 = I$1 + 1;
						label$297:;
						if( I$1 <= 4 ) goto label$300;
						label$299:;
					}
					*DST$1 = (uint32)27u;
					*(uint32*)((uint8*)DST$1 + 4) = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 8);
					{
						I$1 = 1;
						label$304:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$302:;
						I$1 = I$1 + 1;
						label$301:;
						if( I$1 <= 4 ) goto label$304;
						label$303:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4;
					goto label$227;
				}
				label$295:;
				label$233:;
			}
			if( ISNUMBER$1 == 0 ) goto label$306;
			{
				uint32* TMP$90$4;
				if( VALUE$1 <= 65535u ) goto label$308;
				{
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
					VALUE$1 = 65535u;
				}
				label$308:;
				label$307:;
				LGT$1 = 1;
				label$309:;
				if( VALUE$1 <= 7u ) goto label$310;
				{
					VALUE$1 = VALUE$1 >> (3 & 31);
					LGT$1 = LGT$1 + 1;
				}
				goto label$309;
				label$310:;
				*DST$1 = (uint32)(uint32)LGT$1;
				DST$1 = (uint32*)((uint8*)DST$1 + 4);
				uint32* vr$76 = fb_WstrOct_i( VALUE$1 );
				TMP$90$4 = vr$76;
				fb_WstrAssign( DST$1, 0, (uint32*)TMP$90$4 );
				fb_WstrDelete( (uint32*)TMP$90$4 );
				DST$1 = (uint32*)((uint8*)DST$1 + (LGT$1 << (2 & 31)));
				*TEXTLEN$1 = *TEXTLEN$1 + 1;
				goto label$227;
			}
			label$306:;
			label$305:;
		}
		label$230:;
		label$229:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
		*TEXTLEN$1 = *TEXTLEN$1 + 1;
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$311:;
	static struct $8DZSTRING RES$1;
	static int32 C$1;
	static int32 OCTLEN$1;
	static int32 LGT$1;
	static uint8* SRC$1;
	static uint8* SRC_END$1;
	static uint8* DST$1;
	OCTLEN$1 = 0;
	int32 vr$1 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$314;
	{
		fb$result$1 = TEXT$1;
		goto label$312;
	}
	label$314:;
	label$313:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (2 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$315:;
	if( SRC$1 >= SRC_END$1 ) goto label$316;
	{
		C$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		{
			if( C$1 == 92 ) goto label$319;
			label$320:;
			if( C$1 != 34 ) goto label$318;
			label$319:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
			}
			goto label$317;
			label$318:;
			if( C$1 != 27 ) goto label$321;
			label$322:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				if( SRC$1 < SRC_END$1 ) goto label$324;
				{
					goto label$316;
					label$324:;
				}
				C$1 = (int32)*SRC$1;
				SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
				if( (-(C$1 >= 1) & -(C$1 <= 3)) == 0 ) goto label$326;
				{
					OCTLEN$1 = C$1;
					if( SRC$1 < SRC_END$1 ) goto label$328;
					{
						goto label$316;
						label$328:;
					}
					C$1 = (int32)*SRC$1;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
				}
				label$326:;
				label$325:;
			}
			goto label$317;
			label$321:;
			if( C$1 < 0 ) goto label$331;
			if( C$1 <= 31 ) goto label$330;
			label$331:;
			if( C$1 < 128 ) goto label$329;
			if( C$1 > 255 ) goto label$329;
			label$330:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				if( C$1 >= 8 ) goto label$333;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)48u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = C$1 + 48;
				}
				goto label$332;
				label$333:;
				if( C$1 >= 64 ) goto label$334;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)((C$1 >> (3 & 31)) + 48);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = (C$1 & 7) + 48;
				}
				goto label$332;
				label$334:;
				{
					*DST$1 = (uint8)((C$1 >> (6 & 31)) + 48);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)(((C$1 & 56) >> (3 & 31)) + 48);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = (C$1 & 7) + 48;
				}
				label$332:;
			}
			label$329:;
			label$317:;
		}
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
		if( OCTLEN$1 <= 0 ) goto label$336;
		{
			OCTLEN$1 = OCTLEN$1 + -1;
			if( OCTLEN$1 != 0 ) goto label$338;
			{
				*DST$1 = (uint8)34u;
				*(uint8*)((uint8*)DST$1 + 1) = (uint8)34u;
				DST$1 = (uint8*)((uint8*)DST$1 + 2);
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

int32 HHASESCAPE( uint8* TEXT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$351:;
	static uint32 CHAR$1;
	static int32 LGT$1;
	int32 vr$1 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$1;
	label$353:;
	if( LGT$1 <= 0 ) goto label$354;
	{
		if( (int32)*TEXT$1 != 92 ) goto label$356;
		{
			TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1);
			CHAR$1 = (uint32)*TEXT$1;
			{
				uint32 TMP$101$4;
				TMP$101$4 = CHAR$1;
				goto label$358;
				label$359:;
				{
					fb$result$1 = -1;
					goto label$352;
				}
				goto label$357;
				label$358:;
				static const void* tmp$102[85] = {
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
				if( (TMP$101$4 - 34u) > 84u ) goto label$357;
				goto *tmp$102[TMP$101$4 - 34u];
				label$357:;
			}
		}
		label$356:;
		label$355:;
		TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1);
		LGT$1 = LGT$1 + -1;
	}
	goto label$353;
	label$354:;
	fb$result$1 = 0;
	label$352:;
	return fb$result$1;
}

int32 HHASESCAPEW( uint32* TEXT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$360:;
	static uint32 CHAR$1;
	static int32 LGT$1;
	int32 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	label$362:;
	if( LGT$1 <= 0 ) goto label$363;
	{
		if( *(uint32*)TEXT$1 != 92u ) goto label$365;
		{
			TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4);
			CHAR$1 = *(uint32*)TEXT$1;
			{
				uint32 TMP$103$4;
				TMP$103$4 = CHAR$1;
				goto label$367;
				label$368:;
				{
					fb$result$1 = -1;
					goto label$361;
				}
				goto label$366;
				label$367:;
				static const void* tmp$104[85] = {
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
				if( (TMP$103$4 - 34u) > 84u ) goto label$366;
				goto *tmp$104[TMP$103$4 - 34u];
				label$366:;
			}
		}
		label$365:;
		label$364:;
		TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4);
		LGT$1 = LGT$1 + -1;
	}
	goto label$362;
	label$363:;
	fb$result$1 = 0;
	label$361:;
	return fb$result$1;
}

uint8* HESCAPEW( uint32* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$379:;
	static struct $8DZSTRING RES$1;
	static uint32 CHAR$1;
	static uint32 C$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 WCHARLEN$1;
	static uint32* SRC$1;
	static uint32* SRC_END$1;
	static uint8* DST$1;
	WCHARLEN$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 200);
	int32 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$382;
	{
		fb$result$1 = (uint8*)0u;
		goto label$380;
	}
	label$382:;
	label$381:;
	DZSTRALLOCATE( &RES$1, (LGT$1 * WCHARLEN$1) << (2 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$383:;
	if( SRC$1 >= SRC_END$1 ) goto label$384;
	{
		CHAR$1 = *(uint32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 27u ) goto label$386;
		{
			if( SRC$1 < SRC_END$1 ) goto label$388;
			{
				goto label$384;
				label$388:;
			}
			CHAR$1 = *(uint32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( (-(CHAR$1 >= 1u) & -(CHAR$1 <= 11u)) == 0 ) goto label$390;
			{
				I$1 = (int32)CHAR$1;
				CHAR$1 = 0u;
				if( (uint32*)((uint8*)SRC$1 + (I$1 << (2 & 31))) <= SRC_END$1 ) goto label$392;
				{
					goto label$384;
					label$392:;
				}
				label$393:;
				if( I$1 <= 0 ) goto label$394;
				{
					CHAR$1 = ((CHAR$1 << (3u & 31)) + *(uint32*)SRC$1) + 4294967248u;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					I$1 = I$1 + -1;
				}
				goto label$393;
				label$394:;
			}
			goto label$389;
			label$390:;
			{
				if( CHAR$1 != 117u ) goto label$396;
				{
					if( (uint32*)((uint8*)SRC$1 + 16) <= SRC_END$1 ) goto label$398;
					{
						goto label$384;
						label$398:;
					}
					uint32 vr$22 = HU16TOWCHAR( SRC$1 );
					CHAR$1 = vr$22;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16);
				}
				goto label$395;
				label$396:;
				{
					int32 vr$24 = HREMAPCHAR( (int32)CHAR$1 );
					CHAR$1 = (uint32)vr$24;
				}
				label$395:;
			}
			label$389:;
		}
		label$386:;
		label$385:;
		{
			I$1 = 1;
			int32 TMP$106$3;
			TMP$106$3 = WCHARLEN$1;
			goto label$399;
			label$402:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				C$1 = CHAR$1 & 255u;
				if( C$1 >= 8u ) goto label$404;
				{
					*DST$1 = (uint8)(C$1 + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
				}
				goto label$403;
				label$404:;
				if( C$1 >= 64u ) goto label$405;
				{
					*DST$1 = (uint8)((C$1 >> (3 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)((C$1 & 7u) + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
				}
				goto label$403;
				label$405:;
				{
					*DST$1 = (uint8)((C$1 >> (6 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)(((C$1 & 56u) >> (3 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 2) = (uint8)((C$1 & 7u) + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 3);
				}
				label$403:;
				CHAR$1 = CHAR$1 >> (8 & 31);
			}
			label$400:;
			I$1 = I$1 + 1;
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$406:;
	static struct $8DZSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	int32 vr$1 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$409;
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
		CHAR$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		if( CHAR$1 != 27 ) goto label$413;
		{
			if( SRC$1 < SRC_END$1 ) goto label$415;
			{
				goto label$411;
				label$415:;
			}
			CHAR$1 = (int32)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
			if( (-(CHAR$1 >= 1) & -(CHAR$1 <= 3)) == 0 ) goto label$417;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0;
				label$418:;
				if( I$1 <= 0 ) goto label$419;
				{
					CHAR$1 = ((CHAR$1 << (3 & 31)) + (int32)*SRC$1) + -48;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
					I$1 = I$1 + -1;
				}
				goto label$418;
				label$419:;
			}
			goto label$416;
			label$417:;
			{
				int32 vr$19 = HREMAPCHAR( CHAR$1 );
				CHAR$1 = vr$19;
			}
			label$416:;
		}
		label$413:;
		label$412:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$420:;
	static struct $8DWSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	int32 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$423;
	{
		fb$result$1 = TEXT$1;
		goto label$421;
	}
	label$423:;
	label$422:;
	DWSTRALLOCATE( &RES$1, LGT$1 );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$424:;
	if( SRC$1 >= SRC_END$1 ) goto label$425;
	{
		CHAR$1 = *(int32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 27 ) goto label$427;
		{
			if( SRC$1 < SRC_END$1 ) goto label$429;
			{
				goto label$425;
				label$429:;
			}
			CHAR$1 = *(int32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( (-(CHAR$1 >= 1) & -(CHAR$1 <= 11)) == 0 ) goto label$431;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0;
				label$432:;
				if( I$1 <= 0 ) goto label$433;
				{
					CHAR$1 = (int32)(((uint32)(CHAR$1 << (3 & 31)) + *(uint32*)SRC$1) + 4294967248u);
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					I$1 = I$1 + -1;
				}
				goto label$432;
				label$433:;
			}
			goto label$430;
			label$431:;
			{
				if( (uint32)CHAR$1 != 117u ) goto label$435;
				{
					if( (uint32*)((uint8*)SRC$1 + 16) <= SRC_END$1 ) goto label$437;
					{
						goto label$425;
						label$437:;
					}
					uint32 vr$18 = HU16TOWCHAR( SRC$1 );
					CHAR$1 = (int32)vr$18;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16);
				}
				goto label$434;
				label$435:;
				{
					int32 vr$20 = HREMAPCHAR( CHAR$1 );
					CHAR$1 = vr$20;
				}
				label$434:;
			}
			label$430:;
		}
		label$427:;
		label$426:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
	}
	goto label$424;
	label$425:;
	*DST$1 = (uint32)0u;
	fb$result$1 = *(uint32**)&RES$1;
	label$421:;
	return fb$result$1;
}

int32 HCHARNEEDSESCAPING( int32 CH$1, int32 QUOTECHAR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$438:;
	fb$result$1 = ((-(CH$1 < 32) | -(CH$1 >= 127)) | -((uint32)CH$1 == 92u)) | -(CH$1 == QUOTECHAR$1);
	label$439:;
	return fb$result$1;
}

int32 HISVALIDHEXDIGIT( int32 CH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$440:;
	fb$result$1 = ((-((uint32)CH$1 >= 48u) & -((uint32)CH$1 <= 57u)) | (-((uint32)CH$1 >= 97u) & -((uint32)CH$1 <= 102u))) | (-((uint32)CH$1 >= 65u) & -((uint32)CH$1 <= 70u));
	label$441:;
	return fb$result$1;
}

void HSPLITSTR( FBSTRING* TXT$1, FBSTRING* DEL$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	label$442:;
	int32 ITEMS$1;
	ITEMS$1 = 10;
	struct $8FBARRAY1IlE {
		int32* DATA;
		int32* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 36 );
	struct $8FBARRAY1IlE DPOS$1;
	*(int32**)&DPOS$1 = (int32*)0u;
	*(int32**)((uint8*)&DPOS$1 + 4) = (int32*)0u;
	*(int32*)((uint8*)&DPOS$1 + 8) = 0;
	*(int32*)((uint8*)&DPOS$1 + 12) = 4;
	*(int32*)((uint8*)&DPOS$1 + 16) = 1;
	*(int32*)((uint8*)&DPOS$1 + 20) = 17;
	__builtin_memset( (void*)((uint8*)&DPOS$1 + 24), 0, 12 );
	int32 vr$3 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&DPOS$1, 4u, -1, 0, 1u, 0, ITEMS$1 + -1 );
	if( vr$3 == 0 ) goto label$444;
	void* vr$4 = fb_ErrorThrowAt( 1267, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$4;
	label$444:;
	int32 DELLEN$1;
	int32 vr$5 = fb_StrLen( (void*)DEL$1, -1 );
	DELLEN$1 = vr$5;
	int32 CNT$1;
	CNT$1 = 0;
	int32 P$1;
	P$1 = 1;
	label$445:;
	{
		int32 vr$6 = fb_StrInstr( P$1, (FBSTRING*)TXT$1, (FBSTRING*)DEL$1 );
		P$1 = vr$6;
		if( P$1 <= 0 ) goto label$449;
		{
			if( CNT$1 < ITEMS$1 ) goto label$451;
			{
				ITEMS$1 = ITEMS$1 + 10;
				int32 vr$10 = fb_ArrayRedimPresvEx( (struct $7FBARRAYIvE*)&DPOS$1, 4u, -1, 0, 1u, 0, ITEMS$1 + -1 );
				if( vr$10 == 0 ) goto label$452;
				void* vr$11 = fb_ErrorThrowAt( 1278, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
				goto *vr$11;
				label$452:;
			}
			label$451:;
			label$450:;
			*(int32*)((CNT$1 << (2 & 31)) + *(int32*)&DPOS$1) = P$1;
			P$1 = P$1 + DELLEN$1;
		}
		label$449:;
		label$448:;
		CNT$1 = CNT$1 + 1;
	}
	label$447:;
	if( P$1 != 0 ) goto label$445;
	label$446:;
	CNT$1 = CNT$1 + -1;
	if( CNT$1 != 0 ) goto label$454;
	{
		int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, 0 );
		if( vr$17 == 0 ) goto label$455;
		void* vr$18 = fb_ErrorThrowAt( 1288, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$455:;
		fb_StrAssign( (void*)*(int32*)RES$1, -1, (void*)TXT$1, -1, 0 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
		goto label$443;
	}
	label$454:;
	label$453:;
	int32 vr$22 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, CNT$1 );
	if( vr$22 == 0 ) goto label$456;
	void* vr$23 = fb_ErrorThrowAt( 1293, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$23;
	label$456:;
	FBSTRING* vr$25 = fb_LEFT( (FBSTRING*)TXT$1, *(int32*)*(int32*)&DPOS$1 + -1 );
	fb_StrAssign( (void*)*(int32*)RES$1, -1, (void*)vr$25, -1, 0 );
	P$1 = 1;
	label$457:;
	if( P$1 == CNT$1 ) goto label$458;
	{
		FBSTRING* vr$37 = fb_StrMid( (FBSTRING*)TXT$1, *(int32*)((uint8*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4) + DELLEN$1, (*(int32*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) - *(int32*)((uint8*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4)) - DELLEN$1 );
		fb_StrAssign( (void*)((P$1 * 12) + *(int32*)RES$1), -1, (void*)vr$37, -1, 0 );
		P$1 = P$1 + 1;
	}
	goto label$457;
	label$458:;
	FBSTRING* vr$46 = fb_StrMid( (FBSTRING*)TXT$1, *(int32*)((uint8*)((CNT$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4) + DELLEN$1, -1 );
	fb_StrAssign( (void*)((CNT$1 * 12) + *(int32*)RES$1), -1, (void*)vr$46, -1, 0 );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
	label$443:;
}

int32 HSTR2TOK( uint8* TXT$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	int32 TMP$113$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$459:;
	int32 T$1;
	T$1 = 0;
	uint32 LC$1;
	LC$1 = 32u;
	uint8* S$1;
	S$1 = (uint8*)TXT$1;
	label$461:;
	if( (int32)*S$1 == 0 ) goto label$462;
	{
		uint32 C$2;
		C$2 = (uint32)*S$1;
		if( C$2 != 7u ) goto label$464;
		{
			C$2 = 32u;
		}
		label$464:;
		label$463:;
		if( C$2 != 32u ) goto label$466;
		{
			if( LC$1 == 32u ) goto label$468;
			{
				T$1 = T$1 + 1;
			}
			label$468:;
			label$467:;
		}
		label$466:;
		label$465:;
		LC$1 = C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	goto label$461;
	label$462:;
	if( LC$1 == 32u ) goto label$470;
	{
		T$1 = T$1 + 1;
	}
	label$470:;
	label$469:;
	if( T$1 != 0 ) goto label$472;
	{
		fb$result$1 = 0;
		goto label$460;
	}
	label$472:;
	label$471:;
	int32 vr$9 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, T$1 + -1 );
	if( vr$9 == 0 ) goto label$473;
	void* vr$10 = fb_ErrorThrowAt( 1335, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$10;
	label$473:;
	T$1 = 0;
	LC$1 = 32u;
	S$1 = (uint8*)TXT$1;
	label$474:;
	if( (int32)*S$1 == 0 ) goto label$475;
	{
		uint32 C$2;
		C$2 = (uint32)*S$1;
		if( C$2 != 7u ) goto label$477;
		{
			C$2 = 32u;
		}
		label$477:;
		label$476:;
		if( C$2 != 32u ) goto label$479;
		{
			if( LC$1 == 32u ) goto label$481;
			{
				T$1 = T$1 + 1;
			}
			label$481:;
			label$480:;
		}
		goto label$478;
		label$479:;
		{
			FBSTRING TMP$112$3;
			FBSTRING* vr$16 = fb_CHR( 1, (int32)C$2 );
			__builtin_memset( &TMP$112$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$112$3, (void*)((T$1 * 12) + *(int32*)RES$1), -1, (void*)vr$16, -1 );
			fb_StrAssign( (void*)((T$1 * 12) + *(int32*)RES$1), -1, (void*)vr$23, -1, 0 );
		}
		label$478:;
		LC$1 = C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	goto label$474;
	label$475:;
	if( LC$1 == 32u ) goto label$482;
	TMP$113$1 = T$1 + 1;
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
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static int32 HREMAPCHAR( int32 CHAR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$339:;
	{
		uint32 TMP$92$2;
		TMP$92$2 = (uint32)CHAR$1;
		goto label$342;
		label$343:;
		{
			fb$result$1 = 13;
		}
		goto label$341;
		label$344:;
		{
			fb$result$1 = 10;
		}
		goto label$341;
		label$345:;
		{
			fb$result$1 = 9;
		}
		goto label$341;
		label$346:;
		{
			fb$result$1 = 8;
		}
		goto label$341;
		label$347:;
		{
			fb$result$1 = 7;
		}
		goto label$341;
		label$348:;
		{
			fb$result$1 = 12;
		}
		goto label$341;
		label$349:;
		{
			fb$result$1 = 11;
		}
		goto label$341;
		label$350:;
		{
			fb$result$1 = CHAR$1;
		}
		goto label$341;
		label$342:;
		static const void* tmp$114[22] = {
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
		if( (TMP$92$2 - 97u) > 21u ) goto label$350;
		goto *tmp$114[TMP$92$2 - 97u];
		label$341:;
	}
	label$340:;
	return fb$result$1;
}

static uint32 HU16TOWCHAR( uint32* SRC$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$369:;
	static uint32 CHAR$1;
	static uint32 C$1;
	static int32 I$1;
	CHAR$1 = 0u;
	{
		I$1 = 1;
		label$374:;
		{
			C$1 = *(uint32*)SRC$1 + 4294967248u;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( C$1 <= 9u ) goto label$376;
			{
				C$1 = C$1 + 4294967289u;
			}
			label$376:;
			label$375:;
			if( C$1 <= 16u ) goto label$378;
			{
				C$1 = C$1 + 4294967264u;
			}
			label$378:;
			label$377:;
			CHAR$1 = (CHAR$1 << (4u & 31)) | C$1;
		}
		label$372:;
		I$1 = I$1 + 1;
		label$371:;
		if( I$1 <= 4 ) goto label$374;
		label$373:;
	}
	fb$result$1 = CHAR$1;
	label$370:;
	return fb$result$1;
}
