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
typedef int64 $13AST_NODECLASS;
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 24 );
typedef int64 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $9FBS_ARRAY {
	int64 DIMENSIONS;
	struct $10FBARRAYDIM* DIMTB;
	int64 DIFF;
	int64 ELEMENTS;
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* DESCTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_ARRAY ) == 48 );
struct $10FBVAR_DESC {
	struct $8FBSYMBOL* ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DESC ) == 8 );
struct $10FBVAR_DATA {
	struct $8FBSYMBOL* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DATA ) == 8 );
struct $7FBS_VAR {
	union {
		uint8* LITTEXT;
		uint16* LITTEXTW;
		struct $7ASTNODE* INITREE;
	};
	struct $9FBS_ARRAY ARRAY;
	struct $10FBVAR_DESC DESC;
	int64 STMTNUM;
	int64 ALIGN;
	struct $10FBVAR_DATA DATA;
	int64 BITPOS;
	int64 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBS_VAR ) == 104 );
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
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 24 );
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
struct $8FBHASHTB;
struct $8FBHASHTB {
	struct $8FBSYMBOL* OWNER;
	struct $5THASH TB;
	struct $8FBHASHTB* PREV;
	struct $8FBHASHTB* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBHASHTB ) == 48 );
struct $9FBSYMLIST {
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMLIST ) == 16 );
struct $10FBSYMCHAIN;
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int64 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 48 );
struct $13FBNAMESPC_EXT {
	struct $9FBSYMLIST IMPLIST;
	struct $9FBSYMLIST EXPLIST;
	int64 CNT;
	struct $10FBSYMCHAIN* IMPSYM_HEAD;
	struct $10FBSYMCHAIN* IMPSYM_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBNAMESPC_EXT ) == 56 );
struct $9FBNAMESPC {
	struct $10FBSYMBOLTB SYMTB;
	struct $8FBHASHTB HASHTB;
	struct $13FBNAMESPC_EXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBNAMESPC ) == 80 );
typedef int64 $15FB_STRUCT_INREG;
struct $13FB_STRUCT_DBG {
	int64 TYPENUM;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_STRUCT_DBG ) == 8 );
struct $12FB_STRUCTEXT {
	struct $8FBSYMBOL* CTORHEAD;
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* DTOR;
	struct $8FBSYMBOL* COPYLETOP;
	struct $8FBSYMBOL* COPYLETOPCONST;
	struct $8FBSYMBOL* OPOVLTB[28];
	int64 VTABLEELEMENTS;
	struct $8FBSYMBOL* VTABLE;
	struct $8FBSYMBOL* RTTI;
	int64 ABSTRACTCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_STRUCTEXT ) == 312 );
struct $10FBS_STRUCT {
	struct $9FBNAMESPC NS;
	struct $8FBSYMBOL* BASE;
	struct $8FBSYMBOL* ANONPARENT;
	int64 NATALIGN;
	int64 UNPADLGT;
	int32 OPTIONS;
	uint8 BITPOS;
	uint8 ALIGN;
	$11FB_DATATYPE RETDTYPE;
	$15FB_STRUCT_INREG RETIN2REGS;
	struct $13FB_STRUCT_DBG DBG;
	struct $12FB_STRUCTEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_STRUCT ) == 152 );
struct $8FBS_ENUM {
	struct $9FBNAMESPC NS;
	int64 ELEMENTS;
	struct $13FB_STRUCT_DBG DBG;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_ENUM ) == 96 );
typedef int64 $11FB_FUNCMODE;
typedef int64 $21FB_PROC_RETURN_METHOD;
typedef int64 (*tmp$34)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$34 CALLBACK;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCRTL ) == 8 );
struct $10FB_PROCOVL {
	int16 MINPARAMS;
	int16 MAXPARAMS;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCOVL ) == 16 );
struct $10FB_PROCSTK {
	int64 ARGOFS;
	int64 LOCALOFS;
	int64 LOCALMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCSTK ) == 24 );
struct $10FB_PROCDBG {
	int64 INILINE;
	int64 ENDLINE;
	uint8* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCDBG ) == 24 );
struct $10FB_PROCERR {
	struct $8FBSYMBOL* LASTHND;
	struct $8FBSYMBOL* LASTMOD;
	struct $8FBSYMBOL* LASTFUN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCERR ) == 24 );
typedef int64 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 8 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
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
typedef int64 $12FB_PROCSTATS;
struct $10FB_PROCGSB {
	struct $8FBSYMBOL* CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCGSB ) == 8 );
struct $10FB_PROCEXT {
	struct $8FBSYMBOL* RES;
	struct $10FB_PROCSTK STK;
	struct $10FB_PROCDBG DBG;
	struct $10FB_PROCERR ERR;
	struct $12FB_PROCOPOVL OPOVL;
	struct $5TLIST* STATDTOR;
	$12FB_PROCSTATS STATS;
	int64 STMTNUM;
	int64 PRIORITY;
	struct $10FB_PROCGSB GOSUB;
	struct $7ASTNODE* BASE_INITREE;
	int64 VTABLEINDEX;
	struct $8FBSYMBOL* OVERRIDDEN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCEXT ) == 152 );
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
__FB_STATIC_ASSERT( sizeof( struct $8FBS_PROC ) == 120 );
typedef int64 $12FB_PARAMMODE;
struct $9FBS_PARAM {
	$12FB_PARAMMODE MODE;
	struct $8FBSYMBOL* VAR;
	struct $7ASTNODE* OPTEXPR;
	int64 BYDESCDIMENSIONS;
	struct $8FBSYMBOL* BYDESCREALSUBTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_PARAM ) == 40 );
struct $9FBS_LABEL {
	struct $8FBSYMBOL* PARENT;
	int64 DECLARED;
	int64 STMTNUM;
	boolean GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_LABEL ) == 32 );
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int64 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 24 );
typedef int64 $14FB_DEFTOK_TYPE;
struct $9FB_DEFTOK;
struct $9FB_DEFTOK {
	$14FB_DEFTOK_TYPE TYPE;
	union {
		uint8* TEXT;
		uint16* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$28)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 24 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int64 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 776 );
typedef FBSTRING* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
typedef uint16* (*tmp$30)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint16* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$28 DPROCZ;
		tmp$29 MPROCZ;
	};
	union {
		tmp$30 MPROCW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_DEFINE ) == 56 );
typedef int64 $10FB_TKCLASS;
struct $11FBS_KEYWORD {
	int64 ID;
	$10FB_TKCLASS TKCLASS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBS_KEYWORD ) == 16 );
struct $8FBFWDREF;
struct $8FBFWDREF {
	struct $8FBSYMBOL* REF;
	struct $8FBFWDREF* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBFWDREF ) == 16 );
struct $10FBS_FWDREF {
	struct $8FBFWDREF* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_FWDREF ) == 8 );
struct $11FB_SCOPEDBG {
	int64 INILINE;
	int64 ENDLINE;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* ENDLABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SCOPEDBG ) == 32 );
struct $12FB_SCOPEEMIT {
	int64 BASEOFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_SCOPEEMIT ) == 8 );
struct $9FBS_SCOPE {
	struct $7ASTNODE* BACKNODE;
	struct $10FBSYMBOLTB SYMTB;
	struct $11FB_SCOPEDBG DBG;
	struct $12FB_SCOPEEMIT EMIT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_SCOPE ) == 72 );
struct $13FBS_NAMESPACE {
	struct $9FBNAMESPC NS;
	int64 CNT;
	struct $8FBSYMBOL* LAST_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBS_NAMESPACE ) == 96 );
struct $12FBS_NSIMPORT {
	struct $8FBSYMBOL* IMP_NS;
	struct $8FBSYMBOL* IMP_PREV;
	struct $8FBSYMBOL* IMP_NEXT;
	struct $8FBSYMBOL* EXP_NS;
	struct $8FBSYMBOL* EXP_PREV;
	struct $8FBSYMBOL* EXP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBS_NSIMPORT ) == 48 );
struct $9FBSYMHASH {
	struct $8FBHASHTB* TB;
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMHASH ) == 40 );
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
__FB_STATIC_ASSERT( sizeof( struct $8FBSYMBOL ) == 320 );
struct $12AST_NODE_VAR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_VAR ) == 8 );
struct $12AST_NODE_IDX {
	int64 OFS;
	int64 MULT;
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
__FB_STATIC_ASSERT( sizeof( struct $19AST_TMPSTRLIST_ITEM ) == 24 );
struct $13AST_NODE_CALL {
	int64 ISRTL;
	int64 ARGS;
	struct $8FBSYMBOL* CURRARG;
	struct $7ASTNODE* ARGTAIL;
	struct $19AST_TMPSTRLIST_ITEM* STRTAIL;
	struct $8FBSYMBOL* TMPRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CALL ) == 48 );
struct $12AST_NODE_ARG {
	int64 MODE;
	int64 LGT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ARG ) == 16 );
struct $12AST_NODE_IIF {
	struct $8FBSYMBOL* FALSELABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IIF ) == 8 );
typedef int64 $9AST_OPOPT;
struct $11AST_NODE_OP {
	int64 OP;
	$9AST_OPOPT OPTIONS;
	struct $8FBSYMBOL* EX;
};
__FB_STATIC_ASSERT( sizeof( struct $11AST_NODE_OP ) == 24 );
struct $13AST_NODE_LOAD {
	int64 ISRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LOAD ) == 8 );
struct $14AST_NODE_LABEL {
	int64 FLUSH;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_LABEL ) == 8 );
struct $13AST_NODE_OFFS {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_OFFS ) == 8 );
struct $12AST_NODE_LIT {
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_LIT ) == 8 );
typedef int64 $14AST_ASMTOKTYPE;
struct $9ASTASMTOK;
struct $9ASTASMTOK {
	$14AST_ASMTOKTYPE TYPE;
	union {
		struct $8FBSYMBOL* SYM;
		uint8* TEXT;
	};
	struct $9ASTASMTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9ASTASMTOK ) == 24 );
struct $12AST_NODE_ASM {
	struct $9ASTASMTOK* TOKHEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ASM ) == 8 );
struct $14AST_NODE_JMPTB {
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int64 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_JMPTB ) == 48 );
struct $12AST_NODE_DBG {
	int64 EX;
	uint8* FILENAME;
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_DBG ) == 24 );
struct $12AST_NODE_MEM {
	int64 BYTES;
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_MEM ) == 16 );
struct $14AST_NODE_STACK {
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_STACK ) == 8 );
struct $16AST_NODE_TYPEINI {
	int64 OFS;
	union {
		int64 BYTES;
		int64 ELEMENTS;
	};
	struct $8FBSYMBOL* SCP;
	struct $8FBSYMBOL* LASTSCP;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_NODE_TYPEINI ) == 32 );
struct $21AST_NODE_TYPEINISCOPE {
	int64 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $21AST_NODE_TYPEINISCOPE ) == 8 );
struct $13AST_BREAKLIST {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_BREAKLIST ) == 16 );
struct $13AST_NODE_PROC {
	int64 ISMAIN;
	struct $7ASTNODE* DECL_LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_PROC ) == 16 );
struct $14AST_NODE_BLOCK {
	struct $7ASTNODE* PARENT;
	int64 INISTMT;
	int64 ENDSTMT;
	struct $8FBSYMBOL* INITLABEL;
	struct $8FBSYMBOL* EXITLABEL;
	struct $13AST_BREAKLIST BREAKLIST;
	struct $13AST_NODE_PROC PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BLOCK ) == 72 );
struct $14AST_NODE_BREAK {
	struct $7ASTNODE* PARENT;
	int64 SCOPE;
	int64 LINENUM;
	int64 STMTNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BREAK ) == 32 );
struct $17AST_NODE_DATASTMT {
	union {
		int64 ID;
		int64 ELMTS;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_NODE_DATASTMT ) == 8 );
struct $13AST_NODE_LINK {
	int64 RET;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LINK ) == 8 );
struct $13AST_NODE_CAST {
	int64 DOCONV;
	int64 DO_CONVFD2FS;
	int64 CONVCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CAST ) == 24 );
struct $7ASTNODE {
	$13AST_NODECLASS CLASS;
	int64 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8FBSYMBOL* SYM;
	int64 VECTOR;
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
__FB_STATIC_ASSERT( sizeof( struct $7ASTNODE ) == 144 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzquirkzconsole( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
int64 SYMBISSTRING( int64 );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
struct $7ASTNODE* RTLWIDTHSCREEN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWIDTHDEV( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWIDTHFILE( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLCOLOR( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLPAGESET( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLCONSOLEVIEW( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLCONSOLEREADXY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$81$;
typedef int64 $12FB_DATACLASS;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$82$;
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$83$;

struct $7ASTNODE* CVIEWSTMT( int64 IS_FUNC$1 )
{
	int64 TMP$95$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 8ll );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 8ll );
	int64 DEFAULT_VIEW$1;
	__builtin_memset( &DEFAULT_VIEW$1, 0, 8ll );
	int64 DEFAULT_VIEW_VALUE$1;
	__builtin_memset( &DEFAULT_VIEW_VALUE$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DEFAULT_VIEW$1 = IS_FUNC$1;
	if( IS_FUNC$1 == 0ll ) goto label$12;
	TMP$95$1 = -1ll;
	goto label$33;
	label$12:;
	TMP$95$1 = 0ll;
	label$33:;
	DEFAULT_VIEW_VALUE$1 = TMP$95$1;
	int64 vr$5 = LEXGETLOOKAHEAD( 1ll, 0ll );
	if( vr$5 == 461ll ) goto label$14;
	{
		goto label$11;
	}
	label$14:;
	label$13:;
	LEXSKIPTOKEN( 2048ll );
	LEXSKIPTOKEN( 2048ll );
	if( IS_FUNC$1 != 0ll ) goto label$16;
	{
		struct $7ASTNODE* vr$6 = CEXPRESSION(  );
		EXPR1$1 = vr$6;
		if( EXPR1$1 == (struct $7ASTNODE*)0ull ) goto label$18;
		{
			int64 vr$7 = HMATCH( 284ll, 2048ll );
			if( vr$7 != 0ll ) goto label$20;
			{
				ERRREPORT( 17ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR1$1 = vr$8;
			}
			label$20:;
			label$19:;
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8ll );
			EXPR2$1 = vr$9;
			if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$22;
			{
				goto label$11;
			}
			label$22:;
			label$21:;
		}
		goto label$17;
		label$18:;
		{
			DEFAULT_VIEW$1 = -1ll;
		}
		label$17:;
	}
	label$16:;
	label$15:;
	if( DEFAULT_VIEW$1 == 0ll ) goto label$24;
	{
		if( IS_FUNC$1 == 0ll ) goto label$26;
		{
			int64 vr$10 = LEXGETTOKEN( 0ll );
			if( vr$10 == 40ll ) goto label$28;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$27;
			label$28:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$27:;
			int64 vr$11 = LEXGETTOKEN( 0ll );
			if( vr$11 == 41ll ) goto label$30;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$29;
			label$30:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$29:;
		}
		label$26:;
		label$25:;
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( DEFAULT_VIEW_VALUE$1, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR1$1 = vr$12;
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( DEFAULT_VIEW_VALUE$1, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR2$1 = vr$13;
	}
	label$24:;
	label$23:;
	struct $7ASTNODE* vr$14 = RTLCONSOLEVIEW( EXPR1$1, EXPR2$1 );
	EXPR1$1 = vr$14;
	if( IS_FUNC$1 != 0ll ) goto label$32;
	{
		ASTADD( EXPR1$1 );
	}
	label$32:;
	label$31:;
	fb$result$1 = EXPR1$1;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* CWIDTHSTMT( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$34:;
	struct $7ASTNODE* FNUM$1;
	__builtin_memset( &FNUM$1, 0, 8ll );
	struct $7ASTNODE* WIDTH_ARG$1;
	__builtin_memset( &WIDTH_ARG$1, 0, 8ll );
	struct $7ASTNODE* HEIGHT_ARG$1;
	__builtin_memset( &HEIGHT_ARG$1, 0, 8ll );
	struct $7ASTNODE* DEV_NAME$1;
	__builtin_memset( &DEV_NAME$1, 0, 8ll );
	int64 CHECKRPRNT$1;
	__builtin_memset( &CHECKRPRNT$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	LEXSKIPTOKEN( 2048ll );
	if( ISFUNC$1 == 0ll ) goto label$37;
	{
		int64 vr$6 = HMATCH( 40ll, 0ll );
		CHECKRPRNT$1 = vr$6;
	}
	goto label$36;
	label$37:;
	{
		CHECKRPRNT$1 = 0ll;
	}
	label$36:;
	if( ISFUNC$1 == 0ll ) goto label$39;
	{
		if( CHECKRPRNT$1 != 0ll ) goto label$41;
		{
			struct $7ASTNODE* vr$7 = RTLWIDTHSCREEN( (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull, ISFUNC$1 );
			fb$result$1 = vr$7;
			goto label$35;
		}
		goto label$40;
		label$41:;
		int64 vr$8 = HMATCH( 41ll, 0ll );
		if( vr$8 == 0ll ) goto label$42;
		{
			struct $7ASTNODE* vr$9 = RTLWIDTHSCREEN( (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull, ISFUNC$1 );
			fb$result$1 = vr$9;
			goto label$35;
		}
		label$42:;
		label$40:;
	}
	label$39:;
	label$38:;
	int64 vr$10 = HMATCH( 462ll, 0ll );
	if( vr$10 == 0ll ) goto label$44;
	{
		struct $7ASTNODE* vr$11 = ASTNEWCONSTSTR( (uint8*)"LPT1:" );
		DEV_NAME$1 = vr$11;
		struct $7ASTNODE* vr$12 = HMATCHEXPR( 8ll );
		WIDTH_ARG$1 = vr$12;
		if( WIDTH_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$46;
		{
			goto label$35;
		}
		label$46:;
		label$45:;
		struct $7ASTNODE* vr$13 = RTLWIDTHDEV( DEV_NAME$1, WIDTH_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$13;
	}
	goto label$43;
	label$44:;
	int64 vr$14 = HMATCH( 35ll, 0ll );
	if( vr$14 == 0ll ) goto label$47;
	{
		struct $7ASTNODE* vr$15 = HMATCHEXPR( 8ll );
		FNUM$1 = vr$15;
		if( FNUM$1 != (struct $7ASTNODE*)0ull ) goto label$49;
		{
			goto label$35;
		}
		label$49:;
		label$48:;
		int64 vr$16 = HMATCH( 44ll, 0ll );
		if( vr$16 == 0ll ) goto label$51;
		{
			struct $7ASTNODE* vr$17 = HMATCHEXPR( 8ll );
			WIDTH_ARG$1 = vr$17;
			if( WIDTH_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$53;
			{
				goto label$35;
			}
			label$53:;
			label$52:;
		}
		goto label$50;
		label$51:;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
			WIDTH_ARG$1 = vr$18;
		}
		label$50:;
		struct $7ASTNODE* vr$19 = RTLWIDTHFILE( FNUM$1, WIDTH_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$19;
	}
	goto label$43;
	label$47:;
	int64 vr$20 = HMATCH( 44ll, 0ll );
	if( vr$20 == 0ll ) goto label$54;
	{
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		WIDTH_ARG$1 = vr$21;
		struct $7ASTNODE* vr$22 = HMATCHEXPR( 8ll );
		HEIGHT_ARG$1 = vr$22;
		if( HEIGHT_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$56;
		{
			goto label$35;
		}
		label$56:;
		label$55:;
		struct $7ASTNODE* vr$23 = RTLWIDTHSCREEN( WIDTH_ARG$1, HEIGHT_ARG$1, ISFUNC$1 );
		fb$result$1 = vr$23;
	}
	goto label$43;
	label$54:;
	{
		struct $7ASTNODE* vr$24 = HMATCHEXPR( 17ll );
		DEV_NAME$1 = vr$24;
		if( DEV_NAME$1 != (struct $7ASTNODE*)0ull ) goto label$58;
		{
			goto label$35;
		}
		label$58:;
		label$57:;
		int64 vr$27 = SYMBISSTRING( *(int64*)((uint8*)DEV_NAME$1 + 8ll) & 511ll );
		if( vr$27 == 0ll ) goto label$60;
		{
			int64 vr$28 = HMATCH( 44ll, 0ll );
			if( vr$28 == 0ll ) goto label$62;
			{
				struct $7ASTNODE* vr$29 = HMATCHEXPR( 8ll );
				WIDTH_ARG$1 = vr$29;
				if( WIDTH_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$64;
				{
					goto label$35;
				}
				label$64:;
				label$63:;
			}
			goto label$61;
			label$62:;
			{
				struct $7ASTNODE* vr$30 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				WIDTH_ARG$1 = vr$30;
			}
			label$61:;
			struct $7ASTNODE* vr$31 = RTLWIDTHDEV( DEV_NAME$1, WIDTH_ARG$1, ISFUNC$1 );
			fb$result$1 = vr$31;
		}
		goto label$59;
		label$60:;
		{
			WIDTH_ARG$1 = DEV_NAME$1;
			DEV_NAME$1 = (struct $7ASTNODE*)0ull;
			int64 vr$32 = HMATCH( 44ll, 0ll );
			if( vr$32 == 0ll ) goto label$66;
			{
				struct $7ASTNODE* vr$33 = HMATCHEXPR( 8ll );
				HEIGHT_ARG$1 = vr$33;
				if( HEIGHT_ARG$1 != (struct $7ASTNODE*)0ull ) goto label$68;
				{
					goto label$35;
				}
				label$68:;
				label$67:;
			}
			goto label$65;
			label$66:;
			{
				struct $7ASTNODE* vr$34 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
				HEIGHT_ARG$1 = vr$34;
			}
			label$65:;
			struct $7ASTNODE* vr$35 = RTLWIDTHSCREEN( WIDTH_ARG$1, HEIGHT_ARG$1, ISFUNC$1 );
			fb$result$1 = vr$35;
		}
		label$59:;
	}
	label$43:;
	if( CHECKRPRNT$1 == 0ll ) goto label$70;
	{
		int64 vr$36 = LEXGETTOKEN( 0ll );
		if( vr$36 == 41ll ) goto label$72;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$71;
		label$72:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$71:;
	}
	label$70:;
	label$69:;
	label$35:;
	return fb$result$1;
}

struct $7ASTNODE* CCOLORSTMT( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$73:;
	struct $7ASTNODE* FORE_COLOR$1;
	__builtin_memset( &FORE_COLOR$1, 0, 8ll );
	struct $7ASTNODE* BACK_COLOR$1;
	BACK_COLOR$1 = (struct $7ASTNODE*)0ull;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	LEXSKIPTOKEN( 2048ll );
	if( ISFUNC$1 == 0ll ) goto label$76;
	{
		int64 vr$2 = HMATCH( 40ll, 0ll );
		if( vr$2 != -1ll ) goto label$78;
		{
			struct $7ASTNODE* vr$3 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$3;
			int64 vr$4 = HMATCH( 44ll, 0ll );
			if( vr$4 != -1ll ) goto label$80;
			{
				struct $7ASTNODE* vr$5 = HMATCHEXPR( -1ll );
				BACK_COLOR$1 = vr$5;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0ull ) goto label$82;
				{
					goto label$74;
				}
				label$82:;
				label$81:;
			}
			label$80:;
			label$79:;
			int64 vr$6 = LEXGETTOKEN( 0ll );
			if( vr$6 == 41ll ) goto label$84;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$83;
			label$84:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$83:;
		}
		label$78:;
		label$77:;
	}
	goto label$75;
	label$76:;
	{
		int64 vr$7 = HMATCH( 40ll, 0ll );
		if( vr$7 != -1ll ) goto label$86;
		{
			struct $7ASTNODE* vr$8 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$8;
			int64 vr$9 = HMATCH( 44ll, 0ll );
			if( vr$9 != -1ll ) goto label$88;
			{
				struct $7ASTNODE* vr$10 = HMATCHEXPR( -1ll );
				BACK_COLOR$1 = vr$10;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0ull ) goto label$90;
				{
					goto label$74;
				}
				label$90:;
				label$89:;
				int64 vr$11 = LEXGETTOKEN( 0ll );
				if( vr$11 == 41ll ) goto label$92;
				{
					ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				}
				goto label$91;
				label$92:;
				{
					LEXSKIPTOKEN( 0ll );
				}
				label$91:;
			}
			goto label$87;
			label$88:;
			{
				int64 vr$12 = LEXGETTOKEN( 0ll );
				if( vr$12 == 41ll ) goto label$94;
				{
					ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				}
				goto label$93;
				label$94:;
				{
					LEXSKIPTOKEN( 0ll );
				}
				label$93:;
				int64 vr$13 = HMATCH( 44ll, 0ll );
				if( vr$13 != -1ll ) goto label$96;
				{
					struct $7ASTNODE* vr$14 = HMATCHEXPR( -1ll );
					BACK_COLOR$1 = vr$14;
					if( BACK_COLOR$1 != (struct $7ASTNODE*)0ull ) goto label$98;
					{
						goto label$74;
					}
					label$98:;
					label$97:;
				}
				label$96:;
				label$95:;
			}
			label$87:;
		}
		goto label$85;
		label$86:;
		{
			struct $7ASTNODE* vr$15 = CEXPRESSION(  );
			FORE_COLOR$1 = vr$15;
			int64 vr$16 = HMATCH( 44ll, 0ll );
			if( vr$16 != -1ll ) goto label$100;
			{
				struct $7ASTNODE* vr$17 = HMATCHEXPR( -1ll );
				BACK_COLOR$1 = vr$17;
				if( BACK_COLOR$1 != (struct $7ASTNODE*)0ull ) goto label$102;
				{
					goto label$74;
				}
				label$102:;
				label$101:;
			}
			label$100:;
			label$99:;
		}
		label$85:;
	}
	label$75:;
	struct $7ASTNODE* vr$18 = RTLCOLOR( FORE_COLOR$1, BACK_COLOR$1, ISFUNC$1 );
	fb$result$1 = vr$18;
	label$74:;
	return fb$result$1;
}

struct $7ASTNODE* CSCREENFUNCT( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$103:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	LEXSKIPTOKEN( 2048ll );
	int64 MATCH_PAREN$1;
	MATCH_PAREN$1 = 0ll;
	struct $7ASTNODE* YEXPR$1;
	YEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 40ll ) goto label$106;
	{
		LEXSKIPTOKEN( 0ll );
		MATCH_PAREN$1 = -1ll;
		struct $7ASTNODE* vr$2 = CEXPRESSION(  );
		YEXPR$1 = vr$2;
	}
	label$106:;
	label$105:;
	if( YEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$108;
	{
		struct $7ASTNODE* vr$3 = RTLPAGESET( (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull, -1ll );
		fb$result$1 = vr$3;
	}
	goto label$107;
	label$108:;
	{
		struct $7ASTNODE* XEXPR$2;
		__builtin_memset( &XEXPR$2, 0, 8ll );
		struct $7ASTNODE* FEXPR$2;
		__builtin_memset( &FEXPR$2, 0, 8ll );
		int64 vr$6 = LEXGETTOKEN( 0ll );
		if( vr$6 == 44ll ) goto label$110;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$109;
		label$110:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$109:;
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8ll );
		XEXPR$2 = vr$7;
		if( XEXPR$2 != (struct $7ASTNODE*)0ull ) goto label$112;
		{
			goto label$104;
		}
		label$112:;
		label$111:;
		FEXPR$2 = (struct $7ASTNODE*)0ull;
		int64 vr$8 = HMATCH( 44ll, 0ll );
		if( vr$8 == 0ll ) goto label$114;
		{
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8ll );
			FEXPR$2 = vr$9;
			if( FEXPR$2 != (struct $7ASTNODE*)0ull ) goto label$116;
			{
				goto label$104;
			}
			label$116:;
			label$115:;
		}
		label$114:;
		label$113:;
		struct $7ASTNODE* vr$10 = RTLCONSOLEREADXY( YEXPR$1, XEXPR$2, FEXPR$2 );
		fb$result$1 = vr$10;
	}
	label$107:;
	if( MATCH_PAREN$1 == 0ll ) goto label$118;
	{
		int64 vr$11 = LEXGETTOKEN( 0ll );
		if( vr$11 == 41ll ) goto label$120;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$119;
		label$120:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$119:;
	}
	label$118:;
	label$117:;
	label$104:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}
