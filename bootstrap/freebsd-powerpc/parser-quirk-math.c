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
typedef int32 $13AST_NODECLASS;
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 12 );
typedef int32 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $9FBS_ARRAY {
	int32 DIMENSIONS;
	struct $10FBARRAYDIM* DIMTB;
	int64 DIFF;
	int64 ELEMENTS;
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* DESCTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_ARRAY ) == 32 );
struct $10FBVAR_DESC {
	struct $8FBSYMBOL* ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DESC ) == 4 );
struct $10FBVAR_DATA {
	struct $8FBSYMBOL* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DATA ) == 4 );
struct $7FBS_VAR {
	union {
		uint8* LITTEXT;
		uint32* LITTEXTW;
		struct $7ASTNODE* INITREE;
	};
	struct $9FBS_ARRAY ARRAY;
	struct $10FBVAR_DESC DESC;
	int32 STMTNUM;
	int32 ALIGN;
	struct $10FBVAR_DATA DATA;
	int32 BITPOS;
	int32 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBS_VAR ) == 64 );
union $7FBVALUE {
	struct $8FBSYMBOL* S;
	int64 I;
	double F;
};
__FB_STATIC_ASSERT( sizeof( union $7FBVALUE ) == 8 );
struct $10FBSYMBOLTB {
	struct $8FBSYMBOL* OWNER;
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 12 );
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
struct $8FBHASHTB;
struct $8FBHASHTB {
	struct $8FBSYMBOL* OWNER;
	struct $5THASH TB;
	struct $8FBHASHTB* PREV;
	struct $8FBHASHTB* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBHASHTB ) == 24 );
struct $9FBSYMLIST {
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMLIST ) == 8 );
struct $10FBSYMCHAIN;
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int32 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 24 );
struct $13FBNAMESPC_EXT {
	struct $9FBSYMLIST IMPLIST;
	struct $9FBSYMLIST EXPLIST;
	int32 CNT;
	struct $10FBSYMCHAIN* IMPSYM_HEAD;
	struct $10FBSYMCHAIN* IMPSYM_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBNAMESPC_EXT ) == 28 );
struct $9FBNAMESPC {
	struct $10FBSYMBOLTB SYMTB;
	struct $8FBHASHTB HASHTB;
	struct $13FBNAMESPC_EXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBNAMESPC ) == 40 );
typedef int32 $15FB_STRUCT_INREG;
struct $13FB_STRUCT_DBG {
	int32 TYPENUM;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_STRUCT_DBG ) == 4 );
struct $12FB_STRUCTEXT {
	struct $8FBSYMBOL* CTORHEAD;
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* DTOR;
	struct $8FBSYMBOL* COPYLETOP;
	struct $8FBSYMBOL* COPYLETOPCONST;
	struct $8FBSYMBOL* OPOVLTB[28];
	int32 VTABLEELEMENTS;
	struct $8FBSYMBOL* VTABLE;
	struct $8FBSYMBOL* RTTI;
	int32 ABSTRACTCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_STRUCTEXT ) == 156 );
struct $10FBS_STRUCT {
	struct $9FBNAMESPC NS;
	struct $8FBSYMBOL* BASE;
	struct $8FBSYMBOL* ANONPARENT;
	int32 NATALIGN;
	int64 UNPADLGT;
	int32 OPTIONS;
	uint8 BITPOS;
	uint8 ALIGN;
	$11FB_DATATYPE RETDTYPE;
	$15FB_STRUCT_INREG RETIN2REGS;
	struct $13FB_STRUCT_DBG DBG;
	struct $12FB_STRUCTEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_STRUCT ) == 88 );
struct $8FBS_ENUM {
	struct $9FBNAMESPC NS;
	int32 ELEMENTS;
	struct $13FB_STRUCT_DBG DBG;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_ENUM ) == 48 );
typedef int32 $11FB_FUNCMODE;
typedef int32 $21FB_PROC_RETURN_METHOD;
typedef int32 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCRTL ) == 4 );
struct $10FB_PROCOVL {
	int16 MINPARAMS;
	int16 MAXPARAMS;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCOVL ) == 8 );
struct $10FB_PROCSTK {
	int32 ARGOFS;
	int32 LOCALOFS;
	int32 LOCALMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCSTK ) == 12 );
struct $10FB_PROCDBG {
	int32 INILINE;
	int32 ENDLINE;
	uint8* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCDBG ) == 12 );
struct $10FB_PROCERR {
	struct $8FBSYMBOL* LASTHND;
	struct $8FBSYMBOL* LASTMOD;
	struct $8FBSYMBOL* LASTFUN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCERR ) == 12 );
typedef int32 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
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
typedef int32 $12FB_PROCSTATS;
struct $10FB_PROCGSB {
	struct $8FBSYMBOL* CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCGSB ) == 4 );
struct $10FB_PROCEXT {
	struct $8FBSYMBOL* RES;
	struct $10FB_PROCSTK STK;
	struct $10FB_PROCDBG DBG;
	struct $10FB_PROCERR ERR;
	struct $12FB_PROCOPOVL OPOVL;
	struct $5TLIST* STATDTOR;
	$12FB_PROCSTATS STATS;
	int32 STMTNUM;
	int32 PRIORITY;
	struct $10FB_PROCGSB GOSUB;
	struct $7ASTNODE* BASE_INITREE;
	int32 VTABLEINDEX;
	struct $8FBSYMBOL* OVERRIDDEN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCEXT ) == 76 );
struct $8FBS_PROC {
	struct $10FBSYMBOLTB SYMTB;
	int16 PARAMS;
	int16 OPTPARAMS;
	struct $10FBSYMBOLTB PARAMTB;
	$11FB_FUNCMODE MODE;
	$11FB_DATATYPE REALDTYPE;
	struct $8FBSYMBOL* REALSUBTYPE;
	$21FB_PROC_RETURN_METHOD RETURNMETHOD;
	struct $10FB_PROCRTL RTL;
	struct $10FB_PROCOVL OVL;
	struct $10FB_PROCEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_PROC ) == 60 );
typedef int32 $12FB_PARAMMODE;
struct $9FBS_PARAM {
	$12FB_PARAMMODE MODE;
	struct $8FBSYMBOL* VAR;
	struct $7ASTNODE* OPTEXPR;
	int32 BYDESCDIMENSIONS;
	struct $8FBSYMBOL* BYDESCREALSUBTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_PARAM ) == 20 );
struct $9FBS_LABEL {
	struct $8FBSYMBOL* PARENT;
	int32 DECLARED;
	int32 STMTNUM;
	boolean GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_LABEL ) == 16 );
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
typedef int32 $14FB_DEFTOK_TYPE;
struct $9FB_DEFTOK;
struct $9FB_DEFTOK {
	$14FB_DEFTOK_TYPE TYPE;
	union {
		uint8* TEXT;
		uint32* TEXTW;
		int32 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 16 );
typedef int32 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 12 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int32 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 388 );
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int32* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int32* );
struct $10FBS_DEFINE {
	int32 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int32 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_DEFINE ) == 28 );
typedef int32 $10FB_TKCLASS;
struct $11FBS_KEYWORD {
	int32 ID;
	$10FB_TKCLASS TKCLASS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBS_KEYWORD ) == 8 );
struct $8FBFWDREF;
struct $8FBFWDREF {
	struct $8FBSYMBOL* REF;
	struct $8FBFWDREF* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBFWDREF ) == 8 );
struct $10FBS_FWDREF {
	struct $8FBFWDREF* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_FWDREF ) == 4 );
struct $11FB_SCOPEDBG {
	int32 INILINE;
	int32 ENDLINE;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* ENDLABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SCOPEDBG ) == 16 );
struct $12FB_SCOPEEMIT {
	int32 BASEOFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_SCOPEEMIT ) == 4 );
struct $9FBS_SCOPE {
	struct $7ASTNODE* BACKNODE;
	struct $10FBSYMBOLTB SYMTB;
	struct $11FB_SCOPEDBG DBG;
	struct $12FB_SCOPEEMIT EMIT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_SCOPE ) == 36 );
struct $13FBS_NAMESPACE {
	struct $9FBNAMESPC NS;
	int32 CNT;
	struct $8FBSYMBOL* LAST_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBS_NAMESPACE ) == 48 );
struct $12FBS_NSIMPORT {
	struct $8FBSYMBOL* IMP_NS;
	struct $8FBSYMBOL* IMP_PREV;
	struct $8FBSYMBOL* IMP_NEXT;
	struct $8FBSYMBOL* EXP_NS;
	struct $8FBSYMBOL* EXP_PREV;
	struct $8FBSYMBOL* EXP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBS_NSIMPORT ) == 24 );
struct $9FBSYMHASH {
	struct $8FBHASHTB* TB;
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMHASH ) == 20 );
struct $8FBSYMBOL {
	$12FB_SYMBCLASS CLASS;
	$13FB_SYMBATTRIB ATTRIB;
	$13FB_PROCATTRIB PATTRIB;
	$12FB_SYMBSTATS STATS;
	struct $9FB_SYMBID ID;
	$11FB_DATATYPE TYP;
	struct $8FBSYMBOL* SUBTYPE;
	uint16 SCOPE;
	int16 MANGLING;
	int64 LGT;
	int64 OFS;
	union {
		struct $7FBS_VAR VAR_;
		union $7FBVALUE VAL;
		struct $10FBS_STRUCT UDT;
		struct $8FBS_ENUM ENUM_;
		struct $8FBS_PROC PROC;
		struct $9FBS_PARAM PARAM;
		struct $9FBS_LABEL LBL;
		struct $10FBS_DEFINE DEF;
		struct $11FBS_KEYWORD KEY;
		struct $10FBS_FWDREF FWD;
		struct $9FBS_SCOPE SCP;
		struct $13FBS_NAMESPACE NSPC;
		struct $12FBS_NSIMPORT NSIMP;
	};
	struct $9FBSYMHASH HASH;
	struct $10FBSYMBOLTB* SYMTB;
	struct $8FBSYMBOL* PARENT;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBSYMBOL ) == 184 );
struct $12AST_NODE_VAR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_VAR ) == 8 );
struct $12AST_NODE_IDX {
	int64 OFS;
	int32 MULT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IDX ) == 16 );
struct $12AST_NODE_PTR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_PTR ) == 8 );
struct $19AST_TMPSTRLIST_ITEM;
struct $19AST_TMPSTRLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $7ASTNODE* SRCTREE;
	struct $19AST_TMPSTRLIST_ITEM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $19AST_TMPSTRLIST_ITEM ) == 12 );
struct $13AST_NODE_CALL {
	int32 ISRTL;
	int32 ARGS;
	struct $8FBSYMBOL* CURRARG;
	struct $7ASTNODE* ARGTAIL;
	struct $19AST_TMPSTRLIST_ITEM* STRTAIL;
	struct $8FBSYMBOL* TMPRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CALL ) == 24 );
struct $12AST_NODE_ARG {
	int32 MODE;
	int64 LGT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ARG ) == 16 );
struct $12AST_NODE_IIF {
	struct $8FBSYMBOL* FALSELABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IIF ) == 4 );
typedef int32 $9AST_OPOPT;
struct $11AST_NODE_OP {
	int32 OP;
	$9AST_OPOPT OPTIONS;
	struct $8FBSYMBOL* EX;
};
__FB_STATIC_ASSERT( sizeof( struct $11AST_NODE_OP ) == 12 );
struct $13AST_NODE_LOAD {
	int32 ISRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LOAD ) == 4 );
struct $14AST_NODE_LABEL {
	int32 FLUSH;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_LABEL ) == 4 );
struct $13AST_NODE_OFFS {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_OFFS ) == 8 );
struct $12AST_NODE_LIT {
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_LIT ) == 4 );
typedef int32 $14AST_ASMTOKTYPE;
struct $9ASTASMTOK;
struct $9ASTASMTOK {
	$14AST_ASMTOKTYPE TYPE;
	union {
		struct $8FBSYMBOL* SYM;
		uint8* TEXT;
	};
	struct $9ASTASMTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9ASTASMTOK ) == 12 );
struct $12AST_NODE_ASM {
	struct $9ASTASMTOK* TOKHEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ASM ) == 4 );
struct $14AST_NODE_JMPTB {
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_JMPTB ) == 32 );
struct $12AST_NODE_DBG {
	int32 EX;
	uint8* FILENAME;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_DBG ) == 12 );
struct $12AST_NODE_MEM {
	int64 BYTES;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_MEM ) == 16 );
struct $14AST_NODE_STACK {
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_STACK ) == 4 );
struct $16AST_NODE_TYPEINI {
	int64 OFS;
	union {
		int64 BYTES;
		int64 ELEMENTS;
	};
	struct $8FBSYMBOL* SCP;
	struct $8FBSYMBOL* LASTSCP;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_NODE_TYPEINI ) == 24 );
struct $21AST_NODE_TYPEINISCOPE {
	int32 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $21AST_NODE_TYPEINISCOPE ) == 4 );
struct $13AST_BREAKLIST {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_BREAKLIST ) == 8 );
struct $13AST_NODE_PROC {
	int32 ISMAIN;
	struct $7ASTNODE* DECL_LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_PROC ) == 8 );
struct $14AST_NODE_BLOCK {
	struct $7ASTNODE* PARENT;
	int32 INISTMT;
	int32 ENDSTMT;
	struct $8FBSYMBOL* INITLABEL;
	struct $8FBSYMBOL* EXITLABEL;
	struct $13AST_BREAKLIST BREAKLIST;
	struct $13AST_NODE_PROC PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BLOCK ) == 36 );
struct $14AST_NODE_BREAK {
	struct $7ASTNODE* PARENT;
	int32 SCOPE;
	int32 LINENUM;
	int32 STMTNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BREAK ) == 16 );
struct $17AST_NODE_DATASTMT {
	union {
		int32 ID;
		int32 ELMTS;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_NODE_DATASTMT ) == 4 );
struct $13AST_NODE_LINK {
	int32 RET;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LINK ) == 4 );
struct $13AST_NODE_CAST {
	int32 DOCONV;
	int32 DO_CONVFD2FS;
	int32 CONVCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CAST ) == 12 );
struct $7ASTNODE {
	$13AST_NODECLASS CLASS;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8FBSYMBOL* SYM;
	int32 VECTOR;
	union {
		union $7FBVALUE VAL;
		struct $12AST_NODE_VAR VAR_;
		struct $12AST_NODE_IDX IDX;
		struct $12AST_NODE_PTR PTR;
		struct $13AST_NODE_CALL CALL;
		struct $12AST_NODE_ARG ARG;
		struct $12AST_NODE_IIF IIF;
		struct $11AST_NODE_OP OP;
		struct $13AST_NODE_LOAD LOD;
		struct $14AST_NODE_LABEL LBL;
		struct $13AST_NODE_OFFS OFS;
		struct $12AST_NODE_LIT LIT;
		struct $12AST_NODE_ASM ASM;
		struct $14AST_NODE_JMPTB JMPTB;
		struct $12AST_NODE_DBG DBG;
		struct $12AST_NODE_MEM MEM;
		struct $14AST_NODE_STACK STACK;
		struct $16AST_NODE_TYPEINI TYPEINI;
		struct $21AST_NODE_TYPEINISCOPE TYPEINISCOPE;
		struct $14AST_NODE_BLOCK BLOCK;
		struct $14AST_NODE_BREAK BREAK;
		struct $17AST_NODE_DATASTMT DATA;
		struct $13AST_NODE_LINK LINK;
		struct $13AST_NODE_CAST CAST;
	};
	struct $7ASTNODE* L;
	struct $7ASTNODE* R;
	struct $7ASTNODE* PREV;
	struct $7ASTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7ASTNODE ) == 80 );
typedef int32 $8FB_TOKEN;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_WstrLen( uint32* );
static void fb_ctor__parserzquirkzmath( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
int64 ASTSIZEOF( struct $7ASTNODE*, int32* );
uint32* HUNESCAPEW( uint32* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
struct $7ASTNODE* CTYPEOREXPRESSION( int32, int32*, struct $8FBSYMBOL**, int64*, int32* );
void CUDTTYPEMEMBER( int32*, struct $8FBSYMBOL**, int64*, int32* );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
struct $7ASTNODE* RTLSTRLEN( struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRLEN( struct $7ASTNODE* );
static struct $7ASTNODE* HMATHOP( $6AST_OP );
static struct $7ASTNODE* HATAN2( void );
static struct $7ASTNODE* HLEN( struct $7ASTNODE*, int64* );
static struct $7ASTNODE* HLENSIZEOF( int32, int32 );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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

struct $7ASTNODE* CMATHFUNCT( $8FB_TOKEN TK$1, int32 ISASM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$83:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		uint32 TMP$101$2;
		TMP$101$2 = (uint32)TK$1;
		goto label$86;
		label$87:;
		{
			struct $7ASTNODE* vr$1 = HMATHOP( 56 );
			fb$result$1 = vr$1;
		}
		goto label$85;
		label$88:;
		{
			struct $7ASTNODE* vr$2 = HMATHOP( 57 );
			fb$result$1 = vr$2;
		}
		goto label$85;
		label$89:;
		{
			struct $7ASTNODE* vr$3 = HMATHOP( 71 );
			fb$result$1 = vr$3;
		}
		goto label$85;
		label$90:;
		{
			struct $7ASTNODE* vr$4 = HMATHOP( 72 );
			fb$result$1 = vr$4;
		}
		goto label$85;
		label$91:;
		{
			struct $7ASTNODE* vr$5 = HMATHOP( 70 );
			fb$result$1 = vr$5;
		}
		goto label$85;
		label$92:;
		{
			struct $7ASTNODE* vr$6 = HMATHOP( 58 );
			fb$result$1 = vr$6;
		}
		goto label$85;
		label$93:;
		{
			struct $7ASTNODE* vr$7 = HMATHOP( 59 );
			fb$result$1 = vr$7;
		}
		goto label$85;
		label$94:;
		{
			struct $7ASTNODE* vr$8 = HMATHOP( 60 );
			fb$result$1 = vr$8;
		}
		goto label$85;
		label$95:;
		{
			struct $7ASTNODE* vr$9 = HMATHOP( 61 );
			fb$result$1 = vr$9;
		}
		goto label$85;
		label$96:;
		{
			struct $7ASTNODE* vr$10 = HMATHOP( 62 );
			fb$result$1 = vr$10;
		}
		goto label$85;
		label$97:;
		{
			struct $7ASTNODE* vr$11 = HMATHOP( 63 );
			fb$result$1 = vr$11;
		}
		goto label$85;
		label$98:;
		{
			struct $7ASTNODE* vr$12 = HMATHOP( 65 );
			fb$result$1 = vr$12;
		}
		goto label$85;
		label$99:;
		{
			struct $7ASTNODE* vr$13 = HMATHOP( 68 );
			fb$result$1 = vr$13;
		}
		goto label$85;
		label$100:;
		{
			struct $7ASTNODE* vr$14 = HMATHOP( 69 );
			fb$result$1 = vr$14;
		}
		goto label$85;
		label$101:;
		{
			struct $7ASTNODE* vr$15 = HATAN2(  );
			fb$result$1 = vr$15;
		}
		goto label$85;
		label$102:;
		{
			struct $7ASTNODE* vr$16 = HLENSIZEOF( TK$1, ISASM$1 );
			fb$result$1 = vr$16;
		}
		goto label$85;
		label$86:;
		static const void* tmp$102[19] = {
			&&label$87,
			&&label$88,
			&&label$89,
			&&label$90,
			&&label$92,
			&&label$93,
			&&label$94,
			&&label$95,
			&&label$96,
			&&label$97,
			&&label$98,
			&&label$99,
			&&label$100,
			&&label$91,
			&&label$101,
			&&label$85,
			&&label$85,
			&&label$102,
			&&label$102,
		};
		if( (TMP$101$2 - 446u) > 18u ) goto label$85;
		goto *tmp$102[TMP$101$2 - 446u];
		label$85:;
	}
	label$84:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static struct $7ASTNODE* HMATHOP( $6AST_OP OP$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR$1;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$13;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$12:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 8 );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 41 ) goto label$17;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$16;
	label$17:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$16:;
	struct $7ASTNODE* vr$4 = ASTNEWUOP( OP$1, EXPR$1 );
	EXPR$1 = vr$4;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$19;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$5;
	}
	label$19:;
	label$18:;
	fb$result$1 = EXPR$1;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HATAN2( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* EXPR2$1;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$23;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$22;
	label$23:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$22:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 8 );
	EXPR$1 = vr$2;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$25;
	{
		goto label$21;
	}
	label$25:;
	label$24:;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 44 ) goto label$27;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$26;
	label$27:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$26:;
	struct $7ASTNODE* vr$4 = HMATCHEXPR( 8 );
	EXPR2$1 = vr$4;
	if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$29;
	{
		goto label$21;
	}
	label$29:;
	label$28:;
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 == 41 ) goto label$31;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$30;
	label$31:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$30:;
	struct $7ASTNODE* vr$6 = ASTNEWBOP( 64, EXPR$1, EXPR2$1, (struct $8FBSYMBOL*)0u, 1 );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$33;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
		struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$7;
	}
	label$33:;
	label$32:;
	fb$result$1 = EXPR$1;
	label$21:;
	return fb$result$1;
}

static struct $7ASTNODE* HLEN( struct $7ASTNODE* EXPR$1, int64* LGT$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$34:;
	struct $8FBSYMBOL* LITSYM$1;
	struct $7ASTNODE* LENEXPR$1;
	{
		int32 TMP$94$2;
		TMP$94$2 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
		if( TMP$94$2 != 17 ) goto label$37;
		label$38:;
		{
			struct $7ASTNODE* vr$3 = RTLSTRLEN( EXPR$1 );
			fb$result$1 = vr$3;
			goto label$35;
		}
		goto label$36;
		label$37:;
		if( TMP$94$2 != 4 ) goto label$39;
		label$40:;
		{
			struct $8FBSYMBOL* vr$4 = ASTGETSTRLITSYMBOL( EXPR$1 );
			LITSYM$1 = vr$4;
			if( LITSYM$1 != (struct $8FBSYMBOL*)0u ) goto label$42;
			{
				struct $7ASTNODE* vr$5 = RTLSTRLEN( EXPR$1 );
				fb$result$1 = vr$5;
				goto label$35;
			}
			label$42:;
			label$41:;
			*LGT$1 = *(int64*)((uint8*)LITSYM$1 + 40) + -1ll;
		}
		goto label$36;
		label$39:;
		if( TMP$94$2 != 7 ) goto label$43;
		label$44:;
		{
			struct $8FBSYMBOL* vr$9 = ASTGETSTRLITSYMBOL( EXPR$1 );
			LITSYM$1 = vr$9;
			if( LITSYM$1 != (struct $8FBSYMBOL*)0u ) goto label$46;
			{
				struct $7ASTNODE* vr$10 = RTLWSTRLEN( EXPR$1 );
				fb$result$1 = vr$10;
				goto label$35;
			}
			label$46:;
			label$45:;
			uint32* vr$12 = HUNESCAPEW( *(uint32**)((uint8*)LITSYM$1 + 56) );
			int32 vr$13 = fb_WstrLen( (uint32*)vr$12 );
			*LGT$1 = (int64)vr$13;
		}
		goto label$36;
		label$43:;
		if( TMP$94$2 != 18 ) goto label$47;
		label$48:;
		{
			int32 TMP$95$3;
			TMP$95$3 = 0;
			int64 vr$17 = ASTSIZEOF( EXPR$1, &TMP$95$3 );
			*LGT$1 = vr$17 + -1ll;
		}
		goto label$36;
		label$47:;
		if( TMP$94$2 != 20 ) goto label$49;
		label$50:;
		{
			int32 TMP$96$3;
			struct $7ASTNODE* vr$20 = ASTNEWUOP( 73, EXPR$1 );
			LENEXPR$1 = vr$20;
			if( LENEXPR$1 == (struct $7ASTNODE*)0u ) goto label$52;
			{
				fb$result$1 = LENEXPR$1;
				goto label$35;
			}
			label$52:;
			label$51:;
			TMP$96$3 = 0;
			int64 vr$22 = ASTSIZEOF( EXPR$1, &TMP$96$3 );
			*LGT$1 = vr$22;
		}
		goto label$36;
		label$49:;
		{
			int32 TMP$97$3;
			TMP$97$3 = 0;
			int64 vr$25 = ASTSIZEOF( EXPR$1, &TMP$97$3 );
			*LGT$1 = vr$25;
		}
		label$53:;
		label$36:;
	}
	ASTDELTREE( EXPR$1 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	goto label$35;
	label$35:;
	return fb$result$1;
}

static struct $7ASTNODE* HLENSIZEOF( int32 TK$1, int32 ISASM$1 )
{
	int32 TMP$98$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	struct $7ASTNODE* EXPR$1;
	int32 DTYPE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$57;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$56;
	label$57:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$56:;
	TMP$98$1 = 0;
	struct $7ASTNODE* vr$6 = CTYPEOREXPRESSION( TK$1, &DTYPE$1, &SUBTYPE$1, &LGT$1, &TMP$98$1 );
	EXPR$1 = vr$6;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$59;
	{
		if( *(int32*)EXPR$1 != 25 ) goto label$61;
		{
			TK$1 = 464;
			struct $7ASTNODE* vr$8 = ASTREMOVENIDXARRAY( EXPR$1 );
			EXPR$1 = vr$8;
		}
		label$61:;
		label$60:;
	}
	goto label$58;
	label$59:;
	if( TK$1 != 464 ) goto label$62;
	{
		int32 IS_FIXLENSTR$2;
		__builtin_memset( &IS_FIXLENSTR$2, 0, 4 );
		CUDTTYPEMEMBER( &DTYPE$1, &SUBTYPE$1, &LGT$1, &IS_FIXLENSTR$2 );
	}
	goto label$58;
	label$62:;
	if( TK$1 != 463 ) goto label$63;
	{
		int32 IS_FIXLENSTR$2;
		__builtin_memset( &IS_FIXLENSTR$2, 0, 4 );
		CUDTTYPEMEMBER( &DTYPE$1, &SUBTYPE$1, &LGT$1, &IS_FIXLENSTR$2 );
		if( IS_FIXLENSTR$2 == 0 ) goto label$65;
		{
			{
				int32 TMP$99$4;
				TMP$99$4 = DTYPE$1 & 511;
				if( TMP$99$4 == 4 ) goto label$68;
				label$69:;
				if( TMP$99$4 == 17 ) goto label$68;
				label$70:;
				if( TMP$99$4 != 18 ) goto label$67;
				label$68:;
				{
					LGT$1 = LGT$1 - (int64)*(int32*)((uint8*)SYMB_DTYPETB$ + 116);
					LGT$1 = fb_D2L( (double)LGT$1 / (double)*(int32*)((uint8*)SYMB_DTYPETB$ + 116) );
				}
				goto label$66;
				label$67:;
				if( TMP$99$4 != 7 ) goto label$71;
				label$72:;
				{
					LGT$1 = LGT$1 - (int64)*(int32*)((uint8*)SYMB_DTYPETB$ + 200);
					LGT$1 = fb_D2L( (double)LGT$1 / (double)*(int32*)((uint8*)SYMB_DTYPETB$ + 200) );
				}
				label$71:;
				label$66:;
			}
		}
		label$65:;
		label$64:;
	}
	label$63:;
	label$58:;
	int32 vr$32 = LEXGETTOKEN( 0 );
	if( vr$32 == 41 ) goto label$74;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$73;
	label$74:;
	{
		if( ISASM$1 != 0 ) goto label$76;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$76:;
		label$75:;
	}
	label$73:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$78;
	{
		if( TK$1 != 463 ) goto label$80;
		{
			struct $7ASTNODE* vr$34 = HLEN( EXPR$1, &LGT$1 );
			EXPR$1 = vr$34;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$82;
			{
				struct $7ASTNODE* vr$35 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
				EXPR$1 = vr$35;
			}
			label$82:;
			label$81:;
		}
		goto label$79;
		label$80:;
		{
			int32 TMP$100$3;
			TMP$100$3 = 0;
			int64 vr$37 = ASTSIZEOF( EXPR$1, &TMP$100$3 );
			LGT$1 = vr$37;
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$38 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$38;
		}
		label$79:;
	}
	goto label$77;
	label$78:;
	{
		struct $7ASTNODE* vr$39 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$39;
	}
	label$77:;
	fb$result$1 = EXPR$1;
	label$55:;
	return fb$result$1;
}
