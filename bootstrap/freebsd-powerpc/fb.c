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
typedef int32 $11FB_LANG_OPT;
typedef int32 $7FB_LANG;
typedef int32 $10FB_BACKEND;
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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 12 );
typedef int32 $11FB_DATATYPE;
struct $8FBSYMBOL;
typedef int32 $13AST_NODECLASS;
union $7FBVALUE {
	struct $8FBSYMBOL* S;
	int64 I;
	double F;
};
__FB_STATIC_ASSERT( sizeof( union $7FBVALUE ) == 8 );
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
struct $7ASTNODE;
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
struct $10FBSYMBOLTB {
	struct $8FBSYMBOL* OWNER;
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 12 );
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
typedef int32 $13FB_COMPTARGET;
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 8 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 12 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $10TSTACKNODE* TOS;
	int32 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 24 );
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
typedef int32 $10FB_PDCHECK;
typedef int32 $11FB_MODEVIEW;
typedef int32 $13FBFILE_FORMAT;
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
struct $6FBFILE {
	int32 NUM;
	uint8 NAME[261];
	uint8* INCFILE;
	int32 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 280 );
typedef int32 $19FB_CVA_LIST_TYPEDEF;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
typedef int32 $12FB_TARGETOPT;
struct $8FBTARGET {
	uint8* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 20 );
typedef void (*tmp$68)( uint8* );
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FileFree( void );
void free( void* );
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
int32 fb_StrLen( void*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__fb( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void STRLISTAPPEND( struct $5TLIST*, FBSTRING* );
void STRLISTINIT( struct $5TLIST*, int32 );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int32 );
void STRSETCOPY( struct $7TSTRSET*, struct $7TSTRSET* );
void STRSETINIT( struct $7TSTRSET*, int32 );
void STRSETEND( struct $7TSTRSET* );
void ERRINIT( void );
void ERREND( void );
void ERRHIDEFURTHERERRORS( void );
int32 ERRGETCOUNT( void );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
int32 FBSHOULDCONTINUE( void );
void FBSETOPTION( int32, int32 );
int32 FBGETOPTION( int32 );
void FBINCLUDEFILE( uint8*, int32 );
int32 FBIDENTIFYCPUFAMILY( FBSTRING* );
int32 FBIS64BIT( void );
int32 FBGETBITS( void );
int32 FBGETCPUFAMILY( void );
int32 FBISCROSSCOMP( void );
void FBMAINBEGIN( void );
void FBMAINEND( void );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
int32 STACKNEW( struct $6TSTACK*, int32, int32, int32 );
int32 STACKFREE( struct $6TSTACK* );
void IRINIT( void );
void IREND( void );
void ASTINIT( void );
void ASTEND( void );
void SYMBINIT( int32 );
void SYMBEND( void );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int32, int32, tmp$27, $15FB_DEFINE_FLAGS );
int32 SYMBCHECKLABELS( struct $8FBSYMBOL* );
int32 HFILEEXISTS( uint8* );
void HCLEARNAME( uint8* );
FBSTRING* HSTRIPEXT( FBSTRING* );
FBSTRING* HSTRIPPATH( uint8* );
FBSTRING* HSTRIPFILENAME( uint8* );
void HREPLACESLASH( uint8*, int32 );
FBSTRING* PATHSTRIPDIV( FBSTRING* );
int32 PATHISABSOLUTE( uint8* );
int32 HCHECKFILEFORMAT( int32 );
FBSTRING* HCURDIR( void );
FBSTRING* PATHSTRIPCURDIR( FBSTRING* );
uint8* HESCAPE( uint8* );
void LEXINIT( int32, int32 );
void LEXEND( void );
void LEXPUSHCTX( void );
void LEXPOPCTX( void );
void CPROGRAM( void );
void RTLINIT( void );
void RTLEND( void );
uint8* OBJINFOENCODE( int32 );
void PARSERINIT( void );
void PARSEREND( void );
void PARSERSETCTX( void );
static uint8* HFINDINCFILE( struct $5THASH*, uint8* );
static uint8* HADDINCFILE( struct $5THASH*, struct $5THASH*, uint8* );
static void HUPDATELANGOPTIONS( void );
static void HUPDATETARGETOPTIONS( void );
static FBSTRING* HGETTARGETID( int32, int32 );
static void FBPARSEPREDEFINES( void );
static void FBPARSEPREINCLUDES( void );
static void HAPPENDFBCTINF( uint8* );
static void HEMITOBJINFO( void );
static void HSHOWINCLUDE( int32, FBSTRING* );
static void HONSKIPPEDFILE( FBSTRING* );
static int32 IS_ROOTPATH( uint8** );
static int32 GET_ROOTPATH_LEN( uint8* );
static int32 SOLVE_PATH( uint8* );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32 );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( int32, struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$56)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int32, struct $8FBSYMBOL*, int32, uint8* );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint32*, int64 );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int32 );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$76)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$53 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$54 EMITCALL;
	tmp$55 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$56 EMITBRANCH;
	tmp$57 EMITJMPTB;
	tmp$58 EMITMEM;
	tmp$59 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$60 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$61 EMITVARINII;
	tmp$62 EMITVARINIF;
	tmp$63 EMITVARINIOFS;
	tmp$64 EMITVARINISTR;
	tmp$65 EMITVARINIWSTR;
	tmp$66 EMITVARINIPAD;
	tmp$67 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$68 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$69 ALLOCVREG;
	tmp$70 ALLOCVRIMM;
	tmp$71 ALLOCVRIMMF;
	tmp$72 ALLOCVRVAR;
	tmp$73 ALLOCVRIDX;
	tmp$74 ALLOCVRPTR;
	tmp$72 ALLOCVROFS;
	tmp$75 SETVREGDATATYPE;
	tmp$76 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
typedef int32 $6IR_OPT;
struct $5IRCTX {
	int32 INITED;
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 280 );
extern struct $5IRCTX IR$;
typedef int32 $11AST_OPFLAGS;
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 12 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 8 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int32 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 348 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 4 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 8 );
struct $7SYMBCTX {
	int32 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int32 CHAINPOOLHEAD;
	struct $8FBSYMBOL GLOBNSPC;
	struct $8FBSYMBOL* NAMESPC;
	struct $8FBHASHTB* HASHTB;
	struct $10FBSYMBOLTB* SYMTB;
	struct $6TSTACK NESTSTK;
	struct $5THASH IMPHASHTB;
	struct $5TLIST IMPHASHLIST;
	struct $5TPOOL NAMEPOOL;
	struct $5TLIST FWDLIST;
	struct $5TLIST NSEXTLIST;
	int32 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int32 FBARRAY_DATA;
	int32 FBARRAY_PTR;
	int32 FBARRAY_SIZE;
	int32 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int32 FBARRAYDIM_LBOUND;
	int32 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 99648 );
extern struct $7SYMBCTX SYMB$;
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
struct $12FBCMMLINEOPT {
	$10FB_OUTTYPE OUTTYPE;
	int32 PPONLY;
	$10FB_BACKEND BACKEND;
	$13FB_COMPTARGET TARGET;
	$10FB_CPUTYPE CPUTYPE;
	$10FB_FPUTYPE FPUTYPE;
	$9FB_FPMODE FPMODE;
	$17FB_VECTORIZELEVEL VECTORIZE;
	int32 OPTLEVEL;
	$12FB_ASMSYNTAX ASMSYNTAX;
	$7FB_LANG LANG;
	int32 FORCELANG;
	int32 DEBUG;
	int32 DEBUGINFO;
	int32 ASSERTIONS;
	int32 ERRORCHECK;
	int32 RESUMEERR;
	int32 EXTRAERRCHK;
	int32 ERRLOCATION;
	int32 ARRAYBOUNDCHK;
	int32 NULLPTRCHK;
	int32 PROFILE;
	int32 WARNINGLEVEL;
	int32 SHOWERROR;
	int32 MAXERRORS;
	$10FB_PDCHECK PDCHECKOPT;
	int32 GOSUBSETJMP;
	int32 VALISTASPTR;
	int32 EXPORT;
	int32 MSBITFIELDS;
	int32 MULTITHREADED;
	int32 GFX;
	int32 PIC;
	int32 STACKSIZE;
	int32 OBJINFO;
	int32 SHOWINCLUDES;
	$11FB_MODEVIEW MODEVIEW;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBCMMLINEOPT ) == 148 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 8 );
struct $11FB_LANG_CTX {
	$11FB_LANG_OPT OPT;
	$11FB_DATATYPE INTEGERKEYWORDDTYPE;
	$11FB_DATATYPE INT15LITERALDTYPE;
	$11FB_DATATYPE INT16LITERALDTYPE;
	$11FB_DATATYPE INT31LITERALDTYPE;
	$11FB_DATATYPE INT32LITERALDTYPE;
	$11FB_DATATYPE INT63LITERALDTYPE;
	$11FB_DATATYPE INT64LITERALDTYPE;
	$11FB_DATATYPE FLOATLITERALDTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_LANG_CTX ) == 36 );
struct $8FBOPTION {
	int32 BASE;
	int32 PARAMMODE;
	int32 EXPLICIT;
	int32 PROCPUBLIC;
	int32 ESCAPESTR;
	int32 DYNAMIC;
	int32 GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBOPTION ) == 28 );
struct $5FBENV {
	struct $5TLIST PREDEFINES;
	struct $5TLIST PREINCLUDES;
	struct $5TLIST INCLUDEPATHS;
	struct $12FBCMMLINEOPT CLOPT;
	struct $8FBTARGET TARGET;
	int32 WCHAR_DOCONV;
	int32 UNDERSCOREPREFIX;
	int32 POINTERSIZE;
	struct $6FBFILE INF;
	struct $6FBFILE OUTF;
	int32 PPFILE_NUM;
	struct $5THASH FILENAMEHASH;
	struct $5THASH INCFILEHASH;
	struct $5THASH INCONCEHASH;
	int32 INCLUDEREC;
	struct $6FBMAIN MAIN;
	struct $11FB_LANG_CTX LANG;
	struct $8FBOPTION OPT;
	int32 INITED;
	int32 RESTARTS;
	int32 DORESTART;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	int32 FBCTINF_STARTED;
};
__FB_STATIC_ASSERT( sizeof( struct $5FBENV ) == 1056 );
extern struct $5FBENV ENV$;
typedef int32 $8FB_TOKEN;
typedef int32 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int32 DTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_FORELM ) == 24 );
struct $13FB_CMPSTMTSTK;
struct $14FB_CMPSTMT_FOR {
	struct $7ASTNODE* OUTERSCOPENODE;
	struct $17FB_CMPSTMT_FORELM CNT;
	struct $17FB_CMPSTMT_FORELM END;
	struct $17FB_CMPSTMT_FORELM STP;
	struct $17FB_CMPSTMT_FORELM ISPOS;
	struct $8FBSYMBOL* TESTLABEL;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	int32 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 128 );
struct $13FB_CMPSTMT_DO {
	int32 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 20 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 12 );
struct $13FB_CMPSTMT_IF {
	int32 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int32 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 16 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int32 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 16 );
struct $19FB_CMPSTMT_SELCONST {
	int32 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int32 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 24 );
struct $17FB_CMPSTMT_SELECT {
	int32 ISCONST;
	struct $8FBSYMBOL* SYM;
	int32 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 56 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int32 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 12 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int32 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 8 );
typedef int32 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 4 );
struct $16FB_CMPSTMT_SCOPE {
	int32 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 4 );
struct $13FB_CMPSTMTSTK {
	int32 ID;
	$15FB_CMPSTMT_MASK ALLOWMASK;
	struct $7ASTNODE* SCOPENODE;
	union {
		struct $14FB_CMPSTMT_FOR FOR;
		struct $13FB_CMPSTMT_DO DO;
		struct $16FB_CMPSTMT_WHILE WHILE;
		struct $13FB_CMPSTMT_IF IF;
		struct $15FB_CMPSTMT_PROC PROC;
		struct $17FB_CMPSTMT_SELECT SELECT;
		struct $15FB_CMPSTMT_WITH WITH;
		struct $20FB_CMPSTMT_NAMESPACE NSPC;
		struct $17FB_CMPSTMT_EXTERN EXT;
		struct $16FB_CMPSTMT_SCOPE SCP;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 144 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 32 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int32 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 88 );
typedef int32 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int32 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint32 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int32 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int32 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int32 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 164 );
extern struct $9PARSERCTX PARSER$;
struct $7FBARRAYI6FBFILEE {
	struct $6FBFILE* DATA;
	struct $6FBFILE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI6FBFILEE ) == 120 );
static struct $7FBARRAYI6FBFILEE INFILETB$ = { (struct $6FBFILE*)0u, (struct $6FBFILE*)0u, 0, 280, 0, 8, {  } };
struct $12FB_LANG_INFO {
	uint8* NAME;
	$11FB_LANG_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_LANG_INFO ) == 8 );
static struct $12FB_LANG_INFO LANGTB$[4] = { { (uint8*)"fb", 536873471 }, { (uint8*)"deprecated", 738066591 }, { (uint8*)"fblite", 738132125 }, { (uint8*)"qb", 738131968 } };
static struct $8FBTARGET TARGETINFO$[12] = { { (uint8*)"win32", 6, 1, 1, 148 }, { (uint8*)"cygwin", 6, 1, 1, 149 }, { (uint8*)"linux", 12, 3, 2, 105 }, { (uint8*)"dos", 3, 3, 2, 136 }, { (uint8*)"xbox", 12, 1, 1, 144 }, { (uint8*)"freebsd", 12, 3, 2, 89 }, { (uint8*)"dragonfly", 12, 3, 2, 89 }, { (uint8*)"solaris", 12, 3, 2, 89 }, { (uint8*)"openbsd", 12, 3, 2, 89 }, { (uint8*)"darwin", 12, 3, 2, 313 }, { (uint8*)"netbsd", 12, 3, 2, 89 }, { (uint8*)"js", 6, 3, 2, 25 } };
struct $15FBCPUFAMILYINFO {
	uint8* ID;
	int32 DEFAULTCPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $15FBCPUFAMILYINFO ) == 8 );
static struct $15FBCPUFAMILYINFO CPUFAMILYINFO$[7] = { { (uint8*)"x86", 1 }, { (uint8*)"x86_64", 13 }, { (uint8*)"arm", 15 }, { (uint8*)"aarch64", 16 }, { (uint8*)"powerpc", 17 }, { (uint8*)"powerpc64", 18 }, { (uint8*)"asmjs", 19 } };
struct $13FBCPUTYPEINFO {
	uint8* GCCARCH;
	uint8* FBCARCH;
	int32 FAMILY;
	int32 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBCPUTYPEINFO ) == 16 );
static struct $13FBCPUTYPEINFO CPUTYPEINFO$[20] = { { (uint8*)"i386", (uint8*)"386", 0, 32 }, { (uint8*)"i486", (uint8*)"486", 0, 32 }, { (uint8*)"i586", (uint8*)"586", 0, 32 }, { (uint8*)"i686", (uint8*)"686", 0, 32 }, { (uint8*)0u, (uint8*)"athlon", 0, 32 }, { (uint8*)0u, (uint8*)"athlon-xp", 0, 32 }, { (uint8*)0u, (uint8*)"athlon-fx", 0, 32 }, { (uint8*)0u, (uint8*)"k8-sse3", 0, 32 }, { (uint8*)0u, (uint8*)"pentium-mmx", 0, 32 }, { (uint8*)0u, (uint8*)"pentium2", 0, 32 }, { (uint8*)0u, (uint8*)"pentium3", 0, 32 }, { (uint8*)0u, (uint8*)"pentium4", 0, 32 }, { (uint8*)"prescott", (uint8*)"pentium4-sse3", 0, 32 }, { (uint8*)0u, (uint8*)"x86-64", 1, 64 }, { (uint8*)0u, (uint8*)"armv6", 2, 32 }, { (uint8*)0u, (uint8*)"armv7-a", 2, 32 }, { (uint8*)"armv8-a", (uint8*)"aarch64", 3, 64 }, { (uint8*)0u, (uint8*)"powerpc", 4, 32 }, { (uint8*)0u, (uint8*)"powerpc64", 5, 64 }, { (uint8*)0u, (uint8*)"asmjs", 6, 32 } };
struct $5FBENV ENV$;

$11FB_LANG_OPT FBGETLANGOPTIONS( $7FB_LANG LANG$1 )
{
	$11FB_LANG_OPT fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	fb$result$1 = *($11FB_LANG_OPT*)(((uint8*)LANGTB$ + (LANG$1 << (3 & 31))) + 4);
	label$21:;
	return fb$result$1;
}

FBSTRING* FBGETLANGNAME( $7FB_LANG LANG$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$22:;
	fb_StrAssign( (void*)&fb$result$1, -1, *(void**)((uint8*)LANGTB$ + (LANG$1 << (3 & 31))), 0, 0 );
	label$23:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND LANG$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$24:;
	{
		$10FB_BACKEND TMP$144$2;
		TMP$144$2 = *($10FB_BACKEND*)((uint8*)&ENV$ + 104);
		if( TMP$144$2 != 0 ) goto label$27;
		label$28:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"gas", 4, 0 );
		}
		goto label$26;
		label$27:;
		if( TMP$144$2 != 1 ) goto label$29;
		label$30:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"gcc", 4, 0 );
		}
		goto label$26;
		label$29:;
		if( TMP$144$2 != 2 ) goto label$31;
		label$32:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"llvm", 5, 0 );
		}
		goto label$26;
		label$31:;
		if( TMP$144$2 != 3 ) goto label$33;
		label$34:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"gas64", 6, 0 );
		}
		label$33:;
		label$26:;
	}
	label$25:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

void FBINIT( int32 ISMAIN$1, int32 RESTARTS$1 )
{
	int32 TMP$151$1;
	label$35:;
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&ENV$ + 964), 5 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&ENV$ + 1008), 5 );
	*(int32*)((uint8*)&ENV$ + 956) = RESTARTS$1;
	*(int32*)((uint8*)&ENV$ + 960) = 0;
	int32 vr$2 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&INFILETB$, 280u, -1, 0, 1u, 0, 15 );
	if( vr$2 == 0 ) goto label$37;
	void* vr$3 = fb_ErrorThrowAt( 382, (uint8*)"src/compiler/fb.bas", (void*)0u, (void*)0u );
	goto *vr$3;
	label$37:;
	*(int32*)((uint8*)&ENV$ + 876) = 0;
	*(struct $8FBSYMBOL**)((uint8*)&ENV$ + 880) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&ENV$ + 932) = -(*(int32*)((uint8*)&ENV$ + 136) == 0);
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$39;
	{
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 892) = 8;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 896) = 8;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 900) = 9;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 904) = 8;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 908) = 9;
		int32 vr$5 = FBIS64BIT(  );
		if( vr$5 == 0 ) goto label$41;
		{
			*($11FB_DATATYPE*)((uint8*)&ENV$ + 912) = 8;
			*($11FB_DATATYPE*)((uint8*)&ENV$ + 916) = 9;
		}
		goto label$40;
		label$41:;
		{
			*($11FB_DATATYPE*)((uint8*)&ENV$ + 912) = 13;
			*($11FB_DATATYPE*)((uint8*)&ENV$ + 916) = 14;
		}
		label$40:;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 920) = 16;
	}
	goto label$38;
	label$39:;
	{
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 892) = 5;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 896) = 5;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 900) = 6;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 904) = 11;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 908) = 12;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 912) = 13;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 916) = 14;
		*($11FB_DATATYPE*)((uint8*)&ENV$ + 920) = 15;
	}
	label$38:;
	*(int32*)((uint8*)&ENV$ + 928) = 2;
	*(int32*)((uint8*)&ENV$ + 936) = -1;
	*(int32*)((uint8*)&ENV$ + 940) = 0;
	*(int32*)((uint8*)&ENV$ + 944) = 0;
	*(int32*)((uint8*)&ENV$ + 924) = 0;
	*(int32*)((uint8*)&ENV$ + 948) = -(*(int32*)((uint8*)&ENV$ + 136) == 3);
	*(int32*)((uint8*)&ENV$ + 1052) = 0;
	*(int32*)((uint8*)&ENV$ + 268) = 0;
	{
		$13FB_COMPTARGET TMP$150$2;
		TMP$150$2 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
		if( TMP$150$2 == 3 ) goto label$44;
		label$45:;
		if( TMP$150$2 != 4 ) goto label$43;
		label$44:;
		{
			*(int32*)((uint8*)&ENV$ + 268) = -1;
		}
		goto label$42;
		label$43:;
		if( TMP$150$2 == 1 ) goto label$47;
		label$48:;
		if( TMP$150$2 != 0 ) goto label$46;
		label$47:;
		{
			int32 vr$7 = FBIS64BIT(  );
			*(int32*)((uint8*)&ENV$ + 268) = ~vr$7;
		}
		label$46:;
		label$42:;
	}
	*(int32*)((uint8*)&ENV$ + 272) = 0;
	PARSERSETCTX(  );
	SYMBINIT( ISMAIN$1 );
	ERRINIT(  );
	ASTINIT(  );
	IRINIT(  );
	if( (*(int32*)((uint8*)&ENV$ + 248) & 480) == 0 ) goto label$49;
	TMP$151$1 = 24;
	goto label$50;
	label$49:;
	TMP$151$1 = *(int32*)((uint8*)&ENV$ + 248) & 31;
	label$50:;
	*(int32*)((uint8*)&ENV$ + 264) = -(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$151$1 * 28)) + 4) == 4);
	HASHINIT( (struct $5THASH*)((uint8*)&ENV$ + 840), 256, 0 );
	HASHINIT( (struct $5THASH*)((uint8*)&ENV$ + 852), 256, 0 );
	HASHINIT( (struct $5THASH*)((uint8*)&ENV$ + 864), 256, 0 );
	STACKNEW( (struct $6TSTACK*)&PARSER$, 128, 144, 0 );
	LEXINIT( 0, 0 );
	PARSERINIT(  );
	RTLINIT(  );
	*(int32*)((uint8*)&ENV$ + 952) = -1;
	label$36:;
}

void FBEND( void )
{
	label$51:;
	*(int32*)((uint8*)&ENV$ + 952) = 0;
	RTLEND(  );
	PARSEREND(  );
	LEXEND(  );
	STACKFREE( (struct $6TSTACK*)&PARSER$ );
	HASHEND( (struct $5THASH*)((uint8*)&ENV$ + 840) );
	HASHEND( (struct $5THASH*)((uint8*)&ENV$ + 864) );
	HASHEND( (struct $5THASH*)((uint8*)&ENV$ + 852) );
	IREND(  );
	ASTEND(  );
	ERREND(  );
	SYMBEND(  );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&INFILETB$ );
	STRSETEND( (struct $7TSTRSET*)((uint8*)&ENV$ + 964) );
	STRSETEND( (struct $7TSTRSET*)((uint8*)&ENV$ + 1008) );
	label$52:;
}

void FBGLOBALINIT( void )
{
	label$57:;
	STRLISTINIT( (struct $5TLIST*)&ENV$, 256 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&ENV$ + 32), 256 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&ENV$ + 64), 256 );
	*($10FB_OUTTYPE*)((uint8*)&ENV$ + 96) = 0;
	*(int32*)((uint8*)&ENV$ + 100) = 0;
	*($10FB_BACKEND*)((uint8*)&ENV$ + 104) = 0;
	*($13FB_COMPTARGET*)((uint8*)&ENV$ + 108) = 5;
	*($10FB_CPUTYPE*)((uint8*)&ENV$ + 112) = 17;
	*($10FB_FPUTYPE*)((uint8*)&ENV$ + 116) = 0;
	*($9FB_FPMODE*)((uint8*)&ENV$ + 120) = 0;
	*($17FB_VECTORIZELEVEL*)((uint8*)&ENV$ + 124) = 0;
	*(int32*)((uint8*)&ENV$ + 128) = 0;
	*($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 132) = 0;
	*($7FB_LANG*)((uint8*)&ENV$ + 136) = 0;
	*(int32*)((uint8*)&ENV$ + 140) = 0;
	*(int32*)((uint8*)&ENV$ + 144) = 0;
	*(int32*)((uint8*)&ENV$ + 148) = 0;
	*(int32*)((uint8*)&ENV$ + 152) = 0;
	*(int32*)((uint8*)&ENV$ + 156) = 0;
	*(int32*)((uint8*)&ENV$ + 164) = 0;
	*(int32*)((uint8*)&ENV$ + 168) = 0;
	*(int32*)((uint8*)&ENV$ + 172) = 0;
	*(int32*)((uint8*)&ENV$ + 176) = 0;
	*(int32*)((uint8*)&ENV$ + 160) = 0;
	*(int32*)((uint8*)&ENV$ + 180) = 0;
	*(int32*)((uint8*)&ENV$ + 184) = 1;
	*(int32*)((uint8*)&ENV$ + 188) = -1;
	*(int32*)((uint8*)&ENV$ + 192) = 10;
	*($10FB_PDCHECK*)((uint8*)&ENV$ + 196) = 0;
	*(int32*)((uint8*)&ENV$ + 200) = 0;
	*(int32*)((uint8*)&ENV$ + 208) = 0;
	*(int32*)((uint8*)&ENV$ + 216) = 0;
	*(int32*)((uint8*)&ENV$ + 220) = 0;
	*(int32*)((uint8*)&ENV$ + 224) = 0;
	*(int32*)((uint8*)&ENV$ + 212) = 0;
	*(int32*)((uint8*)&ENV$ + 228) = 0;
	*(int32*)((uint8*)&ENV$ + 232) = -1;
	*(int32*)((uint8*)&ENV$ + 236) = 0;
	*($11FB_MODEVIEW*)((uint8*)&ENV$ + 240) = 0;
	HUPDATELANGOPTIONS(  );
	HUPDATETARGETOPTIONS(  );
	label$58:;
}

void FBADDINCLUDEPATH( FBSTRING* PATH$1 )
{
	label$59:;
	STRLISTAPPEND( (struct $5TLIST*)((uint8*)&ENV$ + 64), PATH$1 );
	label$60:;
}

void FBADDPREDEFINE( FBSTRING* DEF$1 )
{
	label$61:;
	STRLISTAPPEND( (struct $5TLIST*)&ENV$, DEF$1 );
	label$62:;
}

void FBADDPREINCLUDE( FBSTRING* FILE$1 )
{
	label$63:;
	STRLISTAPPEND( (struct $5TLIST*)((uint8*)&ENV$ + 32), FILE$1 );
	label$64:;
}

void FBSETOPTION( int32 OPT$1, int32 VALUE$1 )
{
	label$65:;
	{
		uint32 TMP$152$2;
		TMP$152$2 = (uint32)OPT$1;
		goto label$68;
		label$69:;
		{
			*($10FB_OUTTYPE*)((uint8*)&ENV$ + 96) = VALUE$1;
		}
		goto label$67;
		label$70:;
		{
			*(int32*)((uint8*)&ENV$ + 100) = VALUE$1;
		}
		goto label$67;
		label$71:;
		{
			*($10FB_BACKEND*)((uint8*)&ENV$ + 104) = VALUE$1;
		}
		goto label$67;
		label$72:;
		{
			*($13FB_COMPTARGET*)((uint8*)&ENV$ + 108) = VALUE$1;
			HUPDATETARGETOPTIONS(  );
		}
		goto label$67;
		label$73:;
		{
			*($10FB_CPUTYPE*)((uint8*)&ENV$ + 112) = VALUE$1;
		}
		goto label$67;
		label$74:;
		{
			*($10FB_FPUTYPE*)((uint8*)&ENV$ + 116) = VALUE$1;
		}
		goto label$67;
		label$75:;
		{
			*($9FB_FPMODE*)((uint8*)&ENV$ + 120) = VALUE$1;
		}
		goto label$67;
		label$76:;
		{
			*($17FB_VECTORIZELEVEL*)((uint8*)&ENV$ + 124) = VALUE$1;
		}
		goto label$67;
		label$77:;
		{
			*(int32*)((uint8*)&ENV$ + 128) = VALUE$1;
		}
		goto label$67;
		label$78:;
		{
			*($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 132) = VALUE$1;
		}
		goto label$67;
		label$79:;
		{
			*($7FB_LANG*)((uint8*)&ENV$ + 136) = VALUE$1;
			HUPDATELANGOPTIONS(  );
		}
		goto label$67;
		label$80:;
		{
			*(int32*)((uint8*)&ENV$ + 140) = VALUE$1;
		}
		goto label$67;
		label$81:;
		{
			*(int32*)((uint8*)&ENV$ + 144) = VALUE$1;
		}
		goto label$67;
		label$82:;
		{
			*(int32*)((uint8*)&ENV$ + 148) = VALUE$1;
		}
		goto label$67;
		label$83:;
		{
			*(int32*)((uint8*)&ENV$ + 152) = VALUE$1;
		}
		goto label$67;
		label$84:;
		{
			*(int32*)((uint8*)&ENV$ + 156) = VALUE$1;
		}
		goto label$67;
		label$85:;
		{
			*(int32*)((uint8*)&ENV$ + 160) = VALUE$1;
		}
		goto label$67;
		label$86:;
		{
			*(int32*)((uint8*)&ENV$ + 164) = VALUE$1;
		}
		goto label$67;
		label$87:;
		{
			*(int32*)((uint8*)&ENV$ + 168) = VALUE$1;
		}
		goto label$67;
		label$88:;
		{
			*(int32*)((uint8*)&ENV$ + 172) = VALUE$1;
		}
		goto label$67;
		label$89:;
		{
			*(int32*)((uint8*)&ENV$ + 176) = VALUE$1;
		}
		goto label$67;
		label$90:;
		{
			*(int32*)((uint8*)&ENV$ + 180) = VALUE$1;
		}
		goto label$67;
		label$91:;
		{
			*(int32*)((uint8*)&ENV$ + 184) = VALUE$1;
		}
		goto label$67;
		label$92:;
		{
			*(int32*)((uint8*)&ENV$ + 188) = VALUE$1;
		}
		goto label$67;
		label$93:;
		{
			*(int32*)((uint8*)&ENV$ + 192) = VALUE$1;
		}
		goto label$67;
		label$94:;
		{
			*($10FB_PDCHECK*)((uint8*)&ENV$ + 196) = VALUE$1;
		}
		goto label$67;
		label$95:;
		{
			*(int32*)((uint8*)&ENV$ + 200) = VALUE$1;
		}
		goto label$67;
		label$96:;
		{
			*(int32*)((uint8*)&ENV$ + 204) = VALUE$1;
		}
		goto label$67;
		label$97:;
		{
			*(int32*)((uint8*)&ENV$ + 208) = VALUE$1;
		}
		goto label$67;
		label$98:;
		{
			*(int32*)((uint8*)&ENV$ + 212) = VALUE$1;
		}
		goto label$67;
		label$99:;
		{
			*(int32*)((uint8*)&ENV$ + 216) = VALUE$1;
		}
		goto label$67;
		label$100:;
		{
			*(int32*)((uint8*)&ENV$ + 220) = VALUE$1;
		}
		goto label$67;
		label$101:;
		{
			*(int32*)((uint8*)&ENV$ + 224) = VALUE$1;
		}
		goto label$67;
		label$102:;
		{
			if( VALUE$1 >= 0 ) goto label$104;
			{
				if( *(int32*)((uint8*)&ENV$ + 228) != 0 ) goto label$106;
				{
					int32 TMP$153$5;
					int32 vr$0 = FBIS64BIT(  );
					if( vr$0 == 0 ) goto label$107;
					TMP$153$5 = 2097152;
					goto label$115;
					label$107:;
					TMP$153$5 = 1048576;
					label$115:;
					*(int32*)((uint8*)&ENV$ + 228) = TMP$153$5;
				}
				label$106:;
				label$105:;
			}
			goto label$103;
			label$104:;
			{
				int32 vr$1 = FBIS64BIT(  );
				if( vr$1 == 0 ) goto label$109;
				{
					int32 TMP$154$5;
					if( VALUE$1 >= 65536 ) goto label$110;
					TMP$154$5 = 65536;
					goto label$116;
					label$110:;
					TMP$154$5 = VALUE$1;
					label$116:;
					*(int32*)((uint8*)&ENV$ + 228) = TMP$154$5;
				}
				goto label$108;
				label$109:;
				{
					int32 TMP$155$5;
					if( VALUE$1 >= 32768 ) goto label$111;
					TMP$155$5 = 32768;
					goto label$117;
					label$111:;
					TMP$155$5 = VALUE$1;
					label$117:;
					*(int32*)((uint8*)&ENV$ + 228) = TMP$155$5;
				}
				label$108:;
			}
			label$103:;
		}
		goto label$67;
		label$112:;
		{
			*(int32*)((uint8*)&ENV$ + 232) = VALUE$1;
		}
		goto label$67;
		label$113:;
		{
			*(int32*)((uint8*)&ENV$ + 236) = VALUE$1;
		}
		goto label$67;
		label$114:;
		{
			*($11FB_MODEVIEW*)((uint8*)&ENV$ + 240) = VALUE$1;
		}
		goto label$67;
		label$68:;
		static const void* tmp$156[37] = {
			&&label$69,
			&&label$70,
			&&label$71,
			&&label$72,
			&&label$73,
			&&label$74,
			&&label$75,
			&&label$76,
			&&label$77,
			&&label$78,
			&&label$79,
			&&label$80,
			&&label$81,
			&&label$82,
			&&label$83,
			&&label$84,
			&&label$85,
			&&label$86,
			&&label$87,
			&&label$89,
			&&label$88,
			&&label$90,
			&&label$91,
			&&label$92,
			&&label$93,
			&&label$94,
			&&label$95,
			&&label$96,
			&&label$97,
			&&label$98,
			&&label$99,
			&&label$100,
			&&label$101,
			&&label$102,
			&&label$112,
			&&label$113,
			&&label$114,
		};
		if( TMP$152$2 > 36u ) goto label$67;
		goto *tmp$156[TMP$152$2 - 0u];
		label$67:;
	}
	label$66:;
}

int32 FBGETOPTION( int32 OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$118:;
	{
		uint32 TMP$157$2;
		TMP$157$2 = (uint32)OPT$1;
		goto label$121;
		label$122:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 96);
		}
		goto label$120;
		label$123:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 100);
		}
		goto label$120;
		label$124:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 104);
		}
		goto label$120;
		label$125:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 108);
		}
		goto label$120;
		label$126:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 112);
		}
		goto label$120;
		label$127:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 116);
		}
		goto label$120;
		label$128:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 120);
		}
		goto label$120;
		label$129:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 124);
		}
		goto label$120;
		label$130:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 128);
		}
		goto label$120;
		label$131:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 132);
		}
		goto label$120;
		label$132:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 136);
		}
		goto label$120;
		label$133:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 140);
		}
		goto label$120;
		label$134:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 144);
		}
		goto label$120;
		label$135:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 148);
		}
		goto label$120;
		label$136:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 152);
		}
		goto label$120;
		label$137:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 156);
		}
		goto label$120;
		label$138:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 160);
		}
		goto label$120;
		label$139:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 164);
		}
		goto label$120;
		label$140:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 168);
		}
		goto label$120;
		label$141:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 172);
		}
		goto label$120;
		label$142:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 176);
		}
		goto label$120;
		label$143:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 180);
		}
		goto label$120;
		label$144:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 184);
		}
		goto label$120;
		label$145:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 188);
		}
		goto label$120;
		label$146:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 192);
		}
		goto label$120;
		label$147:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 196);
		}
		goto label$120;
		label$148:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 200);
		}
		goto label$120;
		label$149:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 204);
		}
		goto label$120;
		label$150:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 208);
		}
		goto label$120;
		label$151:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 212);
		}
		goto label$120;
		label$152:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 216);
		}
		goto label$120;
		label$153:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 220);
		}
		goto label$120;
		label$154:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 224);
		}
		goto label$120;
		label$155:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 228);
		}
		goto label$120;
		label$156:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 232);
		}
		goto label$120;
		label$157:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 236);
		}
		goto label$120;
		label$158:;
		{
			fb$result$1 = *(int32*)((uint8*)&ENV$ + 240);
		}
		goto label$120;
		label$159:;
		{
			fb$result$1 = 0;
		}
		goto label$120;
		label$121:;
		static const void* tmp$158[37] = {
			&&label$122,
			&&label$123,
			&&label$124,
			&&label$125,
			&&label$126,
			&&label$127,
			&&label$128,
			&&label$129,
			&&label$130,
			&&label$131,
			&&label$132,
			&&label$133,
			&&label$134,
			&&label$135,
			&&label$136,
			&&label$137,
			&&label$138,
			&&label$139,
			&&label$140,
			&&label$142,
			&&label$141,
			&&label$143,
			&&label$144,
			&&label$145,
			&&label$146,
			&&label$147,
			&&label$148,
			&&label$149,
			&&label$150,
			&&label$151,
			&&label$152,
			&&label$153,
			&&label$154,
			&&label$155,
			&&label$156,
			&&label$157,
			&&label$158,
		};
		if( TMP$157$2 > 36u ) goto label$159;
		goto *tmp$158[TMP$157$2 - 0u];
		label$120:;
	}
	label$119:;
	return fb$result$1;
}

void FBCHANGEOPTION( int32 OPT$1, int32 VALUE$1 )
{
	label$160:;
	{
		uint32 TMP$159$2;
		TMP$159$2 = (uint32)OPT$1;
		goto label$163;
		label$164:;
		{
			FBSETOPTION( OPT$1, VALUE$1 );
		}
		goto label$162;
		label$165:;
		{
			int32 vr$0 = FBGETOPTION( OPT$1 );
			if( VALUE$1 == vr$0 ) goto label$167;
			{
				if( *(uint32*)((uint8*)&PARSER$ + 96) == 0u ) goto label$169;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 880) ) goto label$171;
					{
						ERRREPORT( 61, 0, (uint8*)0u );
					}
					goto label$170;
					label$171:;
					{
						ERRREPORT( 96, 0, (uint8*)0u );
					}
					label$170:;
				}
				goto label$168;
				label$169:;
				{
					if( *(int32*)((uint8*)&ENV$ + 140) == 0 ) goto label$173;
					{
						ERRREPORTWARN( 30, (uint8*)0u, 1, (uint8*)0u );
					}
					goto label$172;
					label$173:;
					{
						if( *(int32*)((uint8*)&ENV$ + 956) != 0 ) goto label$175;
						{
							FBSETOPTION( OPT$1, VALUE$1 );
							*(int32*)((uint8*)&ENV$ + 960) = -1;
							ERRHIDEFURTHERERRORS(  );
						}
						goto label$174;
						label$175:;
						{
							ERRREPORTWARN( 31, (uint8*)0u, 1, (uint8*)0u );
						}
						label$174:;
					}
					label$172:;
				}
				label$168:;
			}
			label$167:;
			label$166:;
		}
		goto label$162;
		label$176:;
		{
			ERRREPORT( 21, 0, (uint8*)0u );
		}
		goto label$162;
		label$163:;
		static const void* tmp$160[20] = {
			&&label$165,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$176,
			&&label$164,
		};
		if( (TMP$159$2 - 10u) > 19u ) goto label$176;
		goto *tmp$160[TMP$159$2 - 10u];
		label$162:;
	}
	label$161:;
}

int32 FBISCROSSCOMP( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$177:;
	fb$result$1 = -(*(int32*)((uint8*)&ENV$ + 108) != 5);
	label$178:;
	return fb$result$1;
}

FBSTRING* FBGETTARGETID( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$190:;
	FBSTRING* vr$1 = HGETTARGETID( *(int32*)((uint8*)&ENV$ + 108), *(int32*)((uint8*)&ENV$ + 112) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$191:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

FBSTRING* FBGETHOSTID( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$192:;
	FBSTRING* vr$1 = HGETTARGETID( 5, 17 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$193:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

int32 FBIDENTIFYOS( FBSTRING* OSID$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$194:;
	{
		int32 I$2;
		I$2 = 0;
		label$199:;
		{
			int32 vr$2 = fb_StrCompare( (void*)OSID$1, -1, *(void**)((uint8*)TARGETINFO$ + (I$2 * 20)), 0 );
			if( vr$2 != 0 ) goto label$201;
			{
				fb$result$1 = I$2;
				goto label$195;
			}
			label$201:;
			label$200:;
		}
		label$197:;
		I$2 = I$2 + 1;
		label$196:;
		if( I$2 <= 11 ) goto label$199;
		label$198:;
	}
	fb$result$1 = -1;
	label$195:;
	return fb$result$1;
}

int32 FBIDENTIFYCPUFAMILY( FBSTRING* CPUFAMILYID$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$202:;
	{
		int32 I$2;
		I$2 = 0;
		label$207:;
		{
			int32 vr$2 = fb_StrCompare( (void*)CPUFAMILYID$1, -1, *(void**)((uint8*)CPUFAMILYINFO$ + (I$2 << (3 & 31))), 0 );
			if( vr$2 != 0 ) goto label$209;
			{
				fb$result$1 = I$2;
				goto label$203;
			}
			label$209:;
			label$208:;
		}
		label$205:;
		I$2 = I$2 + 1;
		label$204:;
		if( I$2 <= 6 ) goto label$207;
		label$206:;
	}
	fb$result$1 = -1;
	label$203:;
	return fb$result$1;
}

int32 FBCPUTYPEFROMCPUFAMILYID( FBSTRING* CPUFAMILYID$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$210:;
	int32 CPUFAMILY$1;
	int32 vr$1 = FBIDENTIFYCPUFAMILY( CPUFAMILYID$1 );
	CPUFAMILY$1 = vr$1;
	if( CPUFAMILY$1 < 0 ) goto label$213;
	{
		fb$result$1 = *(int32*)(((uint8*)CPUFAMILYINFO$ + (CPUFAMILY$1 << (3 & 31))) + 4);
		goto label$211;
	}
	label$213:;
	label$212:;
	fb$result$1 = -1;
	label$211:;
	return fb$result$1;
}

uint8* FBGETGCCARCH( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$214:;
	uint8* GCCARCH$1;
	GCCARCH$1 = *(uint8**)((uint8*)CPUTYPEINFO$ + (*(int32*)((uint8*)&ENV$ + 112) << (4 & 31)));
	if( GCCARCH$1 != (uint8*)0u ) goto label$217;
	{
		GCCARCH$1 = *(uint8**)(((uint8*)CPUTYPEINFO$ + (*(int32*)((uint8*)&ENV$ + 112) << (4 & 31))) + 4);
	}
	label$217:;
	label$216:;
	fb$result$1 = GCCARCH$1;
	label$215:;
	return fb$result$1;
}

uint8* FBGETFBCARCH( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$218:;
	fb$result$1 = *(uint8**)(((uint8*)CPUTYPEINFO$ + (*(int32*)((uint8*)&ENV$ + 112) << (4 & 31))) + 4);
	label$219:;
	return fb$result$1;
}

int32 FBIS64BIT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$220:;
	int32 vr$1 = FBGETBITS(  );
	fb$result$1 = -(vr$1 == 64);
	label$221:;
	return fb$result$1;
}

int32 FBGETBITS( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$222:;
	fb$result$1 = *(int32*)(((uint8*)CPUTYPEINFO$ + (*(int32*)((uint8*)&ENV$ + 112) << (4 & 31))) + 12);
	label$223:;
	return fb$result$1;
}

int32 FBGETHOSTBITS( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$224:;
	fb$result$1 = *(int32*)((uint8*)CPUTYPEINFO$ + 284);
	label$225:;
	return fb$result$1;
}

int32 FBGETCPUFAMILY( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$226:;
	fb$result$1 = *(int32*)(((uint8*)CPUTYPEINFO$ + (*(int32*)((uint8*)&ENV$ + 112) << (4 & 31))) + 8);
	label$227:;
	return fb$result$1;
}

int32 FBIDENTIFYFBCARCH( FBSTRING* FBCARCH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$228:;
	{
		FBSTRING TMP$165$2;
		fb_StrInit( (void*)&TMP$165$2, -1, (void*)FBCARCH$1, -1, 0 );
		int32 vr$3 = fb_StrCompare( (void*)&TMP$165$2, -1, (void*)"native", 7 );
		if( vr$3 != 0 ) goto label$231;
		label$232:;
		{
			fb$result$1 = 17;
			fb_StrDelete( (FBSTRING*)&TMP$165$2 );
			goto label$229;
		}
		goto label$230;
		label$231:;
		int32 vr$6 = fb_StrCompare( (void*)&TMP$165$2, -1, (void*)"32", 3 );
		if( vr$6 != 0 ) goto label$233;
		label$234:;
		{
			fb$result$1 = 17;
			fb_StrDelete( (FBSTRING*)&TMP$165$2 );
			goto label$229;
		}
		goto label$230;
		label$233:;
		int32 vr$9 = fb_StrCompare( (void*)&TMP$165$2, -1, (void*)"64", 3 );
		if( vr$9 != 0 ) goto label$235;
		label$236:;
		{
			fb$result$1 = 18;
			fb_StrDelete( (FBSTRING*)&TMP$165$2 );
			goto label$229;
		}
		label$235:;
		label$230:;
		fb_StrDelete( (FBSTRING*)&TMP$165$2 );
	}
	{
		int32 I$2;
		I$2 = 0;
		label$240:;
		{
			int32 vr$13 = fb_StrCompare( *(void**)(((uint8*)CPUTYPEINFO$ + (I$2 << (4 & 31))) + 4), 0, (void*)FBCARCH$1, -1 );
			if( vr$13 != 0 ) goto label$242;
			{
				fb$result$1 = I$2;
				goto label$229;
			}
			label$242:;
			label$241:;
		}
		label$238:;
		I$2 = I$2 + 1;
		label$237:;
		if( I$2 <= 19 ) goto label$240;
		label$239:;
	}
	{
		FBSTRING TMP$169$2;
		fb_StrInit( (void*)&TMP$169$2, -1, (void*)FBCARCH$1, -1, 0 );
		int32 vr$17 = fb_StrCompare( (void*)&TMP$169$2, -1, (void*)"x86_64", 7 );
		if( vr$17 == 0 ) goto label$245;
		label$246:;
		int32 vr$19 = fb_StrCompare( (void*)&TMP$169$2, -1, (void*)"amd64", 6 );
		if( vr$19 != 0 ) goto label$244;
		label$245:;
		{
			fb$result$1 = 13;
		}
		goto label$243;
		label$244:;
		{
			fb$result$1 = -1;
		}
		label$247:;
		label$243:;
		fb_StrDelete( (FBSTRING*)&TMP$169$2 );
	}
	label$229:;
	return fb$result$1;
}

int32 FBTARGETSUPPORTSELF( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$248:;
	fb$result$1 = -((*(int32*)((uint8*)&ENV$ + 260) & 64) != 0);
	goto label$249;
	label$249:;
	return fb$result$1;
}

int32 FBTARGETSUPPORTSCOFF( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$250:;
	fb$result$1 = -((*(int32*)((uint8*)&ENV$ + 260) & 128) != 0);
	goto label$251;
	label$251:;
	return fb$result$1;
}

FBSTRING* FBGETENTRYPOINT( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$252:;
	if( *(int32*)((uint8*)&ENV$ + 108) != 4 ) goto label$255;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"XBoxStartup", 12, 0 );
	}
	goto label$254;
	label$255:;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"main", 5, 0 );
	}
	label$254:;
	label$253:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

FBSTRING* FBGETMODULEENTRY( void )
{
	FBSTRING TMP$173$1;
	FBSTRING TMP$174$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$256:;
	static FBSTRING SNAME$1;
	__builtin_memset( &TMP$174$1, 0, 12 );
	__builtin_memset( &TMP$173$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$173$1, -1, (void*)((uint8*)&ENV$ + 560), 261, 0 );
	FBSTRING* vr$6 = HSTRIPEXT( &TMP$173$1 );
	fb_StrAssign( (void*)&TMP$174$1, -1, (void*)vr$6, -1, 0 );
	FBSTRING* vr$8 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$174$1 );
	fb_StrAssign( (void*)&SNAME$1, -1, (void*)vr$8, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$174$1 );
	fb_StrDelete( (FBSTRING*)&TMP$173$1 );
	HCLEARNAME( (uint8*)*(uint8**)&SNAME$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"fb_ctor__", 10, 0 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)&SNAME$1, -1, 0 );
	label$257:;
	FBSTRING* vr$14 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$14;
}

FBSTRING* FBGETINPUTFILEPARENTDIR( void )
{
	FBSTRING TMP$176$1;
	FBSTRING TMP$177$1;
	FBSTRING TMP$178$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$258:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 vr$3 = PATHISABSOLUTE( (uint8*)((uint8*)&ENV$ + 280) );
	if( vr$3 != 0 ) goto label$261;
	{
		FBSTRING* vr$4 = HCURDIR(  );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$4, -1, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"/", 2, 0 );
	}
	label$261:;
	label$260:;
	__builtin_memset( &TMP$178$1, 0, 12 );
	__builtin_memset( &TMP$177$1, 0, 12 );
	__builtin_memset( &TMP$176$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$176$1, (void*)&S$1, -1, (void*)((uint8*)&ENV$ + 280), 261 );
	fb_StrAssign( (void*)&TMP$177$1, -1, (void*)vr$13, -1, 0 );
	FBSTRING* vr$15 = HSTRIPFILENAME( (uint8*)*(uint8**)&TMP$177$1 );
	fb_StrAssign( (void*)&TMP$178$1, -1, (void*)vr$15, -1, 0 );
	FBSTRING* vr$18 = PATHSTRIPDIV( &TMP$178$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$18, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$178$1 );
	fb_StrDelete( (FBSTRING*)&TMP$177$1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$259:;
	FBSTRING* vr$24 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$24;
}

void FBADDLIB( uint8* LIBNAME$1 )
{
	FBSTRING TMP$179$1;
	label$262:;
	__builtin_memset( &TMP$179$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$179$1, -1, (void*)LIBNAME$1, 0, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&ENV$ + 964), &TMP$179$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$179$1 );
	label$263:;
}

void FBADDLIBPATH( uint8* PATH$1 )
{
	FBSTRING TMP$180$1;
	FBSTRING TMP$181$1;
	label$264:;
	__builtin_memset( &TMP$181$1, 0, 12 );
	__builtin_memset( &TMP$180$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$180$1, -1, (void*)PATH$1, 0, 0 );
	FBSTRING* vr$4 = PATHSTRIPDIV( &TMP$180$1 );
	fb_StrAssign( (void*)&TMP$181$1, -1, (void*)vr$4, -1, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&ENV$ + 1008), &TMP$181$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$181$1 );
	fb_StrDelete( (FBSTRING*)&TMP$180$1 );
	label$265:;
}

void FBCOMPILE( uint8* INFNAME$1, uint8* OUTFNAME$1, FBSTRING* PPONLYFILE$1, int32 ISMAIN$1 )
{
	label$310:;
	fb_StrAssign( (void*)((uint8*)&ENV$ + 280), 261, (void*)INFNAME$1, 0, 0 );
	HREPLACESLASH( (uint8*)((uint8*)&ENV$ + 280), 47 );
	uint8* vr$4 = HADDINCFILE( (struct $5THASH*)0u, (struct $5THASH*)((uint8*)&ENV$ + 840), (uint8*)((uint8*)&ENV$ + 280) );
	*(uint8**)((uint8*)&ENV$ + 544) = vr$4;
	*(int32*)((uint8*)&ENV$ + 548) = ISMAIN$1;
	fb_StrAssign( (void*)((uint8*)&ENV$ + 560), 261, (void*)OUTFNAME$1, 0, 0 );
	*(int32*)((uint8*)&ENV$ + 828) = ISMAIN$1;
	int32 vr$6 = HFILEEXISTS( INFNAME$1 );
	if( vr$6 != 0 ) goto label$313;
	{
		ERRREPORTEX( 23, (uint8*)INFNAME$1, -1, 1, (uint8*)0u );
		goto label$311;
	}
	label$313:;
	label$312:;
	int32 vr$7 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 276) = vr$7;
	FBSTRING* vr$8 = fb_StrAllocTempDescZ( (uint8*)INFNAME$1 );
	int32 vr$9 = fb_FileOpen( (FBSTRING*)vr$8, 0u, 1u, 0u, *(int32*)((uint8*)&ENV$ + 276), 0 );
	if( vr$9 == 0 ) goto label$315;
	{
		ERRREPORTEX( 26, (uint8*)INFNAME$1, -1, 1, (uint8*)0u );
		goto label$311;
	}
	label$315:;
	label$314:;
	if( *(int32*)((uint8*)&ENV$ + 236) == 0 ) goto label$317;
	{
		FBSTRING TMP$192$2;
		FBSTRING TMP$193$2;
		__builtin_memset( &TMP$193$2, 0, 12 );
		__builtin_memset( &TMP$192$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$192$2, -1, (void*)INFNAME$1, 0, 0 );
		FBSTRING* vr$14 = PATHSTRIPCURDIR( &TMP$192$2 );
		fb_StrAssign( (void*)&TMP$193$2, -1, (void*)vr$14, -1, 0 );
		HSHOWINCLUDE( 0, &TMP$193$2 );
		fb_StrDelete( (FBSTRING*)&TMP$193$2 );
		fb_StrDelete( (FBSTRING*)&TMP$192$2 );
	}
	label$317:;
	label$316:;
	int32 vr$19 = HCHECKFILEFORMAT( *(int32*)((uint8*)&ENV$ + 276) );
	*($13FBFILE_FORMAT*)((uint8*)&ENV$ + 552) = vr$19;
	int32 vr$20 = (*(tmp$38*)((uint8*)&IR$ + 12))(  );
	if( vr$20 != 0 ) goto label$319;
	{
		ERRREPORTEX( 26, (uint8*)((uint8*)&ENV$ + 560), -1, 1, (uint8*)0u );
		goto label$311;
	}
	label$319:;
	label$318:;
	int32 vr$22 = FBGETOPTION( 1 );
	if( vr$22 == 0 ) goto label$321;
	{
		int32 vr$23 = fb_FileFree(  );
		*(int32*)((uint8*)&ENV$ + 836) = vr$23;
		int32 vr$24 = fb_FileOpen( (FBSTRING*)PPONLYFILE$1, 3u, 0u, 0u, *(int32*)((uint8*)&ENV$ + 836), 0 );
		if( vr$24 == 0 ) goto label$323;
		{
			ERRREPORTEX( 26, (uint8*)*(uint8**)PPONLYFILE$1, -1, 1, (uint8*)0u );
			goto label$311;
		}
		label$323:;
		label$322:;
	}
	goto label$320;
	label$321:;
	{
		*(int32*)((uint8*)&ENV$ + 836) = 0;
	}
	label$320:;
	FBMAINBEGIN(  );
	FBPARSEPREDEFINES(  );
	FBPARSEPREINCLUDES(  );
	int32 vr$26 = FBSHOULDCONTINUE(  );
	if( vr$26 == 0 ) goto label$325;
	{
		CPROGRAM(  );
	}
	label$325:;
	label$324:;
	FBMAINEND(  );
	int32 vr$27 = FBGETOPTION( 34 );
	int32 vr$28 = FBISCROSSCOMP(  );
	if( ((vr$27 & ~vr$28) & -(*(int32*)((uint8*)&ENV$ + 96) == 3)) == 0 ) goto label$327;
	{
		HEMITOBJINFO(  );
	}
	label$327:;
	label$326:;
	(*(tmp$37*)((uint8*)&IR$ + 16))(  );
	if( *(int32*)((uint8*)&ENV$ + 836) <= 0 ) goto label$329;
	{
		int32 vr$33 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 836) );
		if( vr$33 == 0 ) goto label$330;
		void* vr$34 = fb_ErrorThrowAt( 1208, (uint8*)"src/compiler/fb.bas", (void*)0u, (void*)0u );
		goto *vr$34;
		label$330:;
	}
	label$329:;
	label$328:;
	int32 vr$35 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 276) );
	if( vr$35 == 0 ) goto label$331;
	void* vr$36 = fb_ErrorThrowAt( 1211, (uint8*)"src/compiler/fb.bas", (void*)0u, (void*)0u );
	goto *vr$36;
	label$331:;
	int32 vr$37 = FBSHOULDCONTINUE(  );
	if( vr$37 == 0 ) goto label$333;
	{
		SYMBCHECKLABELS( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98412) );
	}
	label$333:;
	label$332:;
	label$311:;
}

int32 FBSHOULDRESTART( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$334:;
	fb$result$1 = *(int32*)((uint8*)&ENV$ + 960);
	goto label$335;
	label$335:;
	return fb$result$1;
}

int32 FBSHOULDCONTINUE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$336:;
	int32 vr$2 = ERRGETCOUNT(  );
	fb$result$1 = -(*(int32*)((uint8*)&ENV$ + 960) == 0) & -(vr$2 < *(int32*)((uint8*)&ENV$ + 192));
	goto label$337;
	label$337:;
	return fb$result$1;
}

void FBSETLIBS( struct $7TSTRSET* LIBS$1, struct $7TSTRSET* LIBPATHS$1 )
{
	label$338:;
	STRSETCOPY( (struct $7TSTRSET*)((uint8*)&ENV$ + 964), LIBS$1 );
	STRSETCOPY( (struct $7TSTRSET*)((uint8*)&ENV$ + 1008), LIBPATHS$1 );
	label$339:;
}

void FBGETLIBS( struct $7TSTRSET* LIBS$1, struct $7TSTRSET* LIBPATHS$1 )
{
	label$340:;
	STRSETCOPY( LIBS$1, (struct $7TSTRSET*)((uint8*)&ENV$ + 964) );
	STRSETCOPY( LIBPATHS$1, (struct $7TSTRSET*)((uint8*)&ENV$ + 1008) );
	label$341:;
}

void FBPRAGMAONCE( void )
{
	label$342:;
	int32 vr$1 = fb_StrCompare( (void*)((uint8*)&ENV$ + 280), 261, (void*)"", 1 );
	if( vr$1 <= 0 ) goto label$345;
	{
		uint8* vr$4 = HFINDINCFILE( (struct $5THASH*)((uint8*)&ENV$ + 864), (uint8*)((uint8*)&ENV$ + 280) );
		if( vr$4 != (uint8*)0u ) goto label$347;
		{
			HADDINCFILE( (struct $5THASH*)((uint8*)&ENV$ + 864), (struct $5THASH*)((uint8*)&ENV$ + 840), (uint8*)((uint8*)&ENV$ + 280) );
		}
		label$347:;
		label$346:;
	}
	label$345:;
	label$344:;
	label$343:;
}

void FBINCLUDEFILE( uint8* FILENAME$1, int32 ISONCE$1 )
{
	FBSTRING TMP$197$1;
	uint8* TMP$207$1;
	uint8* TMP$210$1;
	label$372:;
	static uint8 INCFILE$1[260];
	uint8* FILEIDX$1;
	__builtin_memset( &FILEIDX$1, 0, 4 );
	if( *(int32*)((uint8*)&ENV$ + 876) < 16 ) goto label$375;
	{
		ERRREPORT( 27, 0, (uint8*)0u );
		ERRHIDEFURTHERERRORS(  );
		goto label$373;
	}
	label$375:;
	label$374:;
	FBSTRING* vr$2 = HSTRIPFILENAME( (uint8*)((uint8*)&ENV$ + 280) );
	fb_StrAssign( (void*)INCFILE$1, 260, (void*)vr$2, -1, 0 );
	__builtin_memset( &TMP$197$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$197$1, (void*)INCFILE$1, 260, (void*)FILENAME$1, 0 );
	fb_StrAssign( (void*)INCFILE$1, 260, (void*)vr$5, -1, 0 );
	int32 vr$6 = HFILEEXISTS( (uint8*)INCFILE$1 );
	if( vr$6 != 0 ) goto label$377;
	{
		int32 vr$7 = HFILEEXISTS( FILENAME$1 );
		if( vr$7 != 0 ) goto label$379;
		{
			FBSTRING* PATH$3;
			void* vr$9 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&ENV$ + 64) );
			PATH$3 = (FBSTRING*)vr$9;
			label$380:;
			if( PATH$3 == (FBSTRING*)0u ) goto label$381;
			{
				FBSTRING TMP$198$4;
				FBSTRING TMP$199$4;
				__builtin_memset( &TMP$198$4, 0, 12 );
				FBSTRING* vr$12 = fb_StrConcat( &TMP$198$4, (void*)PATH$3, -1, (void*)"/", 2 );
				__builtin_memset( &TMP$199$4, 0, 12 );
				FBSTRING* vr$15 = fb_StrConcat( &TMP$199$4, (void*)vr$12, -1, (void*)FILENAME$1, 0 );
				fb_StrAssign( (void*)INCFILE$1, 260, (void*)vr$15, -1, 0 );
				int32 vr$16 = HFILEEXISTS( (uint8*)INCFILE$1 );
				if( vr$16 == 0 ) goto label$383;
				{
					goto label$381;
				}
				label$383:;
				label$382:;
				void* vr$17 = LISTGETNEXT( (void*)PATH$3 );
				PATH$3 = (FBSTRING*)vr$17;
			}
			goto label$380;
			label$381:;
			if( PATH$3 != (FBSTRING*)0u ) goto label$385;
			{
				FBSTRING TMP$204$4;
				FBSTRING TMP$205$4;
				FBSTRING TMP$206$4;
				if( *(int32*)((uint8*)&ENV$ + 236) == 0 ) goto label$387;
				{
					FBSTRING TMP$201$5;
					FBSTRING TMP$202$5;
					__builtin_memset( &TMP$202$5, 0, 12 );
					__builtin_memset( &TMP$201$5, 0, 12 );
					FBSTRING* vr$21 = fb_StrConcat( &TMP$201$5, (void*)FILENAME$1, 0, (void*)" (not found in include dirs)", 29 );
					fb_StrAssign( (void*)&TMP$202$5, -1, (void*)vr$21, -1, 0 );
					HSHOWINCLUDE( *(int32*)((uint8*)&ENV$ + 876) + 1, &TMP$202$5 );
					fb_StrDelete( (FBSTRING*)&TMP$202$5 );
				}
				label$387:;
				label$386:;
				__builtin_memset( &TMP$206$4, 0, 12 );
				__builtin_memset( &TMP$204$4, 0, 12 );
				FBSTRING* vr$29 = fb_StrConcat( &TMP$204$4, (void*)"\x22", 2, (void*)FILENAME$1, 0 );
				__builtin_memset( &TMP$205$4, 0, 12 );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$205$4, (void*)vr$29, -1, (void*)"\x22", 2 );
				fb_StrAssign( (void*)&TMP$206$4, -1, (void*)vr$32, -1, 0 );
				ERRREPORTEX( 23, (uint8*)*(uint8**)&TMP$206$4, 0, 1, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$206$4 );
				ERRHIDEFURTHERERRORS(  );
				goto label$373;
			}
			label$385:;
			label$384:;
		}
		goto label$378;
		label$379:;
		{
			fb_StrAssign( (void*)INCFILE$1, 260, (void*)FILENAME$1, 0, 0 );
		}
		label$378:;
	}
	label$377:;
	label$376:;
	TMP$207$1 = (uint8*)INCFILE$1;
	int32 vr$36 = IS_ROOTPATH( &TMP$207$1 );
	if( vr$36 != 0 ) goto label$389;
	{
		FBSTRING TMP$208$2;
		FBSTRING TMP$209$2;
		FBSTRING* vr$37 = HCURDIR(  );
		__builtin_memset( &TMP$208$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$208$2, (void*)vr$37, -1, (void*)"/", 2 );
		__builtin_memset( &TMP$209$2, 0, 12 );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$209$2, (void*)vr$40, -1, (void*)INCFILE$1, 260 );
		fb_StrAssign( (void*)INCFILE$1, 260, (void*)vr$43, -1, 0 );
	}
	label$389:;
	label$388:;
	TMP$210$1 = (uint8*)INCFILE$1;
	int32 vr$45 = IS_ROOTPATH( &TMP$210$1 );
	if( vr$45 != 0 ) goto label$391;
	{
		FBSTRING TMP$211$2;
		FBSTRING TMP$212$2;
		FBSTRING TMP$213$2;
		__builtin_memset( &TMP$213$2, 0, 12 );
		__builtin_memset( &TMP$211$2, 0, 12 );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$211$2, (void*)"\x22", 2, (void*)INCFILE$1, 260 );
		__builtin_memset( &TMP$212$2, 0, 12 );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$212$2, (void*)vr$49, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$213$2, -1, (void*)vr$52, -1, 0 );
		ERRREPORTEX( 23, (uint8*)*(uint8**)&TMP$213$2, 0, 1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&TMP$213$2 );
		ERRHIDEFURTHERERRORS(  );
		goto label$373;
	}
	label$391:;
	label$390:;
	int32 vr$55 = SOLVE_PATH( (uint8*)INCFILE$1 );
	if( vr$55 != 0 ) goto label$393;
	{
		FBSTRING TMP$214$2;
		FBSTRING TMP$215$2;
		FBSTRING TMP$216$2;
		__builtin_memset( &TMP$216$2, 0, 12 );
		__builtin_memset( &TMP$214$2, 0, 12 );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$214$2, (void*)"\x22", 2, (void*)INCFILE$1, 260 );
		__builtin_memset( &TMP$215$2, 0, 12 );
		FBSTRING* vr$62 = fb_StrConcat( &TMP$215$2, (void*)vr$59, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$216$2, -1, (void*)vr$62, -1, 0 );
		ERRREPORTEX( 23, (uint8*)*(uint8**)&TMP$216$2, 0, 1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&TMP$216$2 );
		ERRHIDEFURTHERERRORS(  );
		goto label$373;
	}
	label$393:;
	label$392:;
	HREPLACESLASH( (uint8*)INCFILE$1, 47 );
	if( ISONCE$1 == 0 ) goto label$395;
	{
		uint8* vr$66 = HFINDINCFILE( (struct $5THASH*)((uint8*)&ENV$ + 852), (uint8*)INCFILE$1 );
		if( vr$66 == (uint8*)0u ) goto label$397;
		{
			FBSTRING TMP$217$3;
			__builtin_memset( &TMP$217$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$217$3, -1, (void*)INCFILE$1, 260, 0 );
			HONSKIPPEDFILE( &TMP$217$3 );
			fb_StrDelete( (FBSTRING*)&TMP$217$3 );
			goto label$373;
		}
		label$397:;
		label$396:;
	}
	label$395:;
	label$394:;
	uint8* vr$72 = HFINDINCFILE( (struct $5THASH*)((uint8*)&ENV$ + 864), (uint8*)INCFILE$1 );
	if( vr$72 == (uint8*)0u ) goto label$399;
	{
		FBSTRING TMP$218$2;
		__builtin_memset( &TMP$218$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$218$2, -1, (void*)INCFILE$1, 260, 0 );
		HONSKIPPEDFILE( &TMP$218$2 );
		fb_StrDelete( (FBSTRING*)&TMP$218$2 );
		goto label$373;
	}
	label$399:;
	label$398:;
	uint8* vr$79 = HADDINCFILE( (struct $5THASH*)((uint8*)&ENV$ + 852), (struct $5THASH*)((uint8*)&ENV$ + 840), (uint8*)INCFILE$1 );
	FILEIDX$1 = vr$79;
	__builtin_memcpy( (struct $6FBFILE*)((*(int32*)((uint8*)&ENV$ + 876) * 280) + *(int32*)&INFILETB$), (struct $6FBFILE*)((uint8*)&ENV$ + 276), 280 );
	*(int32*)((uint8*)&ENV$ + 876) = *(int32*)((uint8*)&ENV$ + 876) + 1;
	fb_StrAssign( (void*)((uint8*)&ENV$ + 280), 261, (void*)INCFILE$1, 260, 0 );
	*(uint8**)((uint8*)&ENV$ + 544) = FILEIDX$1;
	if( *(int32*)((uint8*)&ENV$ + 236) == 0 ) goto label$401;
	{
		FBSTRING TMP$219$2;
		FBSTRING TMP$220$2;
		__builtin_memset( &TMP$220$2, 0, 12 );
		__builtin_memset( &TMP$219$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$219$2, -1, (void*)INCFILE$1, 260, 0 );
		FBSTRING* vr$90 = PATHSTRIPCURDIR( &TMP$219$2 );
		fb_StrAssign( (void*)&TMP$220$2, -1, (void*)vr$90, -1, 0 );
		HSHOWINCLUDE( *(int32*)((uint8*)&ENV$ + 876), &TMP$220$2 );
		fb_StrDelete( (FBSTRING*)&TMP$220$2 );
		fb_StrDelete( (FBSTRING*)&TMP$219$2 );
	}
	label$401:;
	label$400:;
	int32 vr$95 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 276) = vr$95;
	FBSTRING* vr$96 = fb_StrAllocTempDescZ( (uint8*)INCFILE$1 );
	int32 vr$97 = fb_FileOpen( (FBSTRING*)vr$96, 0u, 1u, 0u, *(int32*)((uint8*)&ENV$ + 276), 0 );
	if( vr$97 == 0 ) goto label$403;
	{
		FBSTRING TMP$221$2;
		FBSTRING TMP$222$2;
		FBSTRING TMP$223$2;
		__builtin_memset( &TMP$223$2, 0, 12 );
		__builtin_memset( &TMP$221$2, 0, 12 );
		FBSTRING* vr$101 = fb_StrConcat( &TMP$221$2, (void*)"\x22", 2, (void*)FILENAME$1, 0 );
		__builtin_memset( &TMP$222$2, 0, 12 );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$222$2, (void*)vr$101, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$223$2, -1, (void*)vr$104, -1, 0 );
		ERRREPORTEX( 23, (uint8*)*(uint8**)&TMP$223$2, 0, 1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&TMP$223$2 );
		ERRHIDEFURTHERERRORS(  );
		goto label$373;
	}
	label$403:;
	label$402:;
	int32 vr$107 = HCHECKFILEFORMAT( *(int32*)((uint8*)&ENV$ + 276) );
	*($13FBFILE_FORMAT*)((uint8*)&ENV$ + 552) = vr$107;
	LEXPUSHCTX(  );
	LEXINIT( -1, 0 );
	CPROGRAM(  );
	LEXPOPCTX(  );
	int32 vr$108 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 276) );
	if( vr$108 == 0 ) goto label$404;
	void* vr$109 = fb_ErrorThrowAt( 1510, (uint8*)"src/compiler/fb.bas", (void*)0u, (void*)0u );
	goto *vr$109;
	label$404:;
	*(int32*)((uint8*)&ENV$ + 876) = *(int32*)((uint8*)&ENV$ + 876) + -1;
	__builtin_memcpy( (struct $6FBFILE*)((uint8*)&ENV$ + 276), (struct $6FBFILE*)((*(int32*)((uint8*)&ENV$ + 876) * 280) + *(int32*)&INFILETB$), 280 );
	label$373:;
}

void FBOVERRIDEFILENAME( uint8* FILENAME$1 )
{
	label$405:;
	fb_StrAssign( (void*)((uint8*)&ENV$ + 280), 261, (void*)FILENAME$1, 0, 0 );
	uint8* vr$2 = HADDINCFILE( (struct $5THASH*)0u, (struct $5THASH*)((uint8*)&ENV$ + 840), FILENAME$1 );
	*(uint8**)((uint8*)&ENV$ + 544) = vr$2;
	label$406:;
}

$7FB_LANG FBGETLANGID( uint8* TXT$1 )
{
	$7FB_LANG fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$407:;
	{
		FBSTRING TMP$224$2;
		FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)TXT$1 );
		FBSTRING* vr$2 = fb_StrLcase2( (FBSTRING*)vr$1, 0 );
		fb_StrInit( (void*)&TMP$224$2, -1, (void*)vr$2, -1, 0 );
		int32 vr$5 = fb_StrCompare( (void*)&TMP$224$2, -1, (void*)"fb", 3 );
		if( vr$5 != 0 ) goto label$410;
		label$411:;
		{
			fb$result$1 = 0;
		}
		goto label$409;
		label$410:;
		int32 vr$7 = fb_StrCompare( (void*)&TMP$224$2, -1, (void*)"deprecated", 11 );
		if( vr$7 != 0 ) goto label$412;
		label$413:;
		{
			fb$result$1 = 1;
		}
		goto label$409;
		label$412:;
		int32 vr$9 = fb_StrCompare( (void*)&TMP$224$2, -1, (void*)"fblite", 7 );
		if( vr$9 != 0 ) goto label$414;
		label$415:;
		{
			fb$result$1 = 2;
		}
		goto label$409;
		label$414:;
		int32 vr$11 = fb_StrCompare( (void*)&TMP$224$2, -1, (void*)"qb", 3 );
		if( vr$11 != 0 ) goto label$416;
		label$417:;
		{
			fb$result$1 = 3;
		}
		goto label$409;
		label$416:;
		{
			fb$result$1 = -1;
		}
		label$418:;
		label$409:;
		fb_StrDelete( (FBSTRING*)&TMP$224$2 );
	}
	label$408:;
	return fb$result$1;
}

$19FB_CVA_LIST_TYPEDEF FBGETBACKENDVALISTTYPE( void )
{
	$19FB_CVA_LIST_TYPEDEF fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$419:;
	$19FB_CVA_LIST_TYPEDEF TYPEDEF$1;
	TYPEDEF$1 = 0;
	{
		$10FB_BACKEND TMP$225$2;
		TMP$225$2 = *($10FB_BACKEND*)((uint8*)&ENV$ + 104);
		if( TMP$225$2 != 1 ) goto label$422;
		label$423:;
		{
			{
				int32 TMP$226$4;
				int32 vr$1 = FBGETCPUFAMILY(  );
				TMP$226$4 = vr$1;
				if( TMP$226$4 != 0 ) goto label$425;
				label$426:;
				{
					TYPEDEF$1 = 2;
				}
				goto label$424;
				label$425:;
				if( TMP$226$4 != 1 ) goto label$427;
				label$428:;
				{
					{
						$13FB_COMPTARGET TMP$227$6;
						TMP$227$6 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
						if( TMP$227$6 != 0 ) goto label$430;
						label$431:;
						{
							TYPEDEF$1 = 2;
						}
						goto label$429;
						label$430:;
						{
							TYPEDEF$1 = 3;
						}
						label$432:;
						label$429:;
					}
				}
				goto label$424;
				label$427:;
				if( TMP$226$4 != 2 ) goto label$433;
				label$434:;
				{
					TYPEDEF$1 = 5;
				}
				goto label$424;
				label$433:;
				if( TMP$226$4 != 3 ) goto label$435;
				label$436:;
				{
					TYPEDEF$1 = 4;
				}
				goto label$424;
				label$435:;
				if( TMP$226$4 != 4 ) goto label$437;
				label$438:;
				{
					TYPEDEF$1 = 3;
				}
				goto label$424;
				label$437:;
				if( TMP$226$4 != 5 ) goto label$439;
				label$440:;
				{
					TYPEDEF$1 = 3;
				}
				goto label$424;
				label$439:;
				{
					TYPEDEF$1 = 2;
				}
				label$441:;
				label$424:;
			}
		}
		goto label$421;
		label$422:;
		if( TMP$225$2 != 0 ) goto label$442;
		label$443:;
		{
			TYPEDEF$1 = 1;
		}
		goto label$421;
		label$442:;
		if( TMP$225$2 != 2 ) goto label$444;
		label$445:;
		{
			TYPEDEF$1 = 1;
		}
		goto label$421;
		label$444:;
		if( TMP$225$2 != 3 ) goto label$446;
		label$447:;
		{
			{
				$13FB_COMPTARGET TMP$228$4;
				TMP$228$4 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
				if( TMP$228$4 != 0 ) goto label$449;
				label$450:;
				{
					TYPEDEF$1 = 2;
				}
				goto label$448;
				label$449:;
				{
					TYPEDEF$1 = 3;
				}
				label$451:;
				label$448:;
			}
		}
		goto label$421;
		label$446:;
		{
			TYPEDEF$1 = 1;
		}
		label$452:;
		label$421:;
	}
	if( TYPEDEF$1 != 2 ) goto label$454;
	{
		int32 vr$2 = FBGETOPTION( 27 );
		if( vr$2 == 0 ) goto label$456;
		{
			TYPEDEF$1 = 1;
		}
		label$456:;
		label$455:;
	}
	label$454:;
	label$453:;
	fb$result$1 = TYPEDEF$1;
	label$420:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__fb( void )
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

static uint8* HFINDINCFILE( struct $5THASH* INCFILEHASH$1, uint8* FILENAME$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	static FBSTRING FNAME$1;
	fb_StrAssign( (void*)&FNAME$1, -1, (void*)FILENAME$1, 0, 0 );
	void* vr$1 = HASHLOOKUP( INCFILEHASH$1, (uint8*)*(uint8**)&FNAME$1 );
	fb$result$1 = (uint8*)vr$1;
	label$11:;
	return fb$result$1;
}

static uint8* HADDINCFILE( struct $5THASH* INCFILEHASH$1, struct $5THASH* FILENAMEHASH$1, uint8* FILENAME$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$12:;
	static uint8* FNAME$1;
	static uint8* RES$1;
	static uint32 INDEX$1;
	int32 vr$1 = fb_StrLen( (void*)FILENAME$1, 0 );
	void* vr$3 = XALLOCATE( vr$1 + 1 );
	FNAME$1 = (uint8*)vr$3;
	fb_StrAssign( (void*)FNAME$1, 0, (void*)FILENAME$1, 0, 0 );
	uint32 vr$4 = HASHHASH( (uint8*)FNAME$1 );
	INDEX$1 = vr$4;
	void* vr$5 = HASHLOOKUPEX( FILENAMEHASH$1, (uint8*)FNAME$1, INDEX$1 );
	RES$1 = (uint8*)vr$5;
	if( RES$1 != (uint8*)0u ) goto label$15;
	{
		HASHADD( FILENAMEHASH$1, (uint8*)FNAME$1, (void*)FNAME$1, INDEX$1 );
	}
	goto label$14;
	label$15:;
	{
		free( (void*)FNAME$1 );
		FNAME$1 = RES$1;
	}
	label$14:;
	if( INCFILEHASH$1 == (struct $5THASH*)0u ) goto label$17;
	{
		void* vr$6 = HASHLOOKUPEX( INCFILEHASH$1, (uint8*)FNAME$1, INDEX$1 );
		RES$1 = (uint8*)vr$6;
		if( RES$1 != (uint8*)0u ) goto label$19;
		{
			HASHADD( INCFILEHASH$1, (uint8*)FNAME$1, (void*)FNAME$1, INDEX$1 );
		}
		label$19:;
		label$18:;
	}
	label$17:;
	label$16:;
	fb$result$1 = FNAME$1;
	label$13:;
	return fb$result$1;
}

static void HUPDATELANGOPTIONS( void )
{
	label$53:;
	*($11FB_LANG_OPT*)((uint8*)&ENV$ + 888) = *($11FB_LANG_OPT*)(((uint8*)LANGTB$ + (*(int32*)((uint8*)&ENV$ + 136) << (3 & 31))) + 4);
	label$54:;
}

static void HUPDATETARGETOPTIONS( void )
{
	label$55:;
	__builtin_memcpy( (struct $8FBTARGET*)((uint8*)&ENV$ + 244), (struct $8FBTARGET*)((uint8*)TARGETINFO$ + (*(int32*)((uint8*)&ENV$ + 108) * 20)), 20 );
	label$56:;
}

static FBSTRING* HGETTARGETID( int32 OS$1, int32 CPUTYPE$1 )
{
	FBSTRING TMP$163$1;
	FBSTRING TMP$164$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$179:;
	int32 CPUFAMILY$1;
	CPUFAMILY$1 = *(int32*)(((uint8*)CPUTYPEINFO$ + (CPUTYPE$1 << (4 & 31))) + 8);
	FBSTRING OSID$1;
	fb_StrInit( (void*)&OSID$1, -1, *(void**)((uint8*)TARGETINFO$ + (OS$1 * 20)), 0, 0 );
	{
		if( OS$1 == 0 ) goto label$183;
		label$184:;
		if( OS$1 == 3 ) goto label$183;
		label$185:;
		if( OS$1 != 4 ) goto label$182;
		label$183:;
		{
			if( CPUFAMILY$1 != 0 ) goto label$187;
			{
				fb_StrInit( (void*)&fb$result$1, -1, (void*)&OSID$1, -1, 0 );
				fb_StrDelete( (FBSTRING*)&OSID$1 );
				goto label$180;
			}
			label$187:;
			label$186:;
		}
		label$182:;
		label$181:;
	}
	if( (-(OS$1 == 0) & -(CPUFAMILY$1 == 1)) == 0 ) goto label$189;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"win64", 6, 0 );
		fb_StrDelete( (FBSTRING*)&OSID$1 );
		goto label$180;
	}
	label$189:;
	label$188:;
	__builtin_memset( &TMP$163$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$163$1, (void*)&OSID$1, -1, (void*)"-", 2 );
	__builtin_memset( &TMP$164$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$164$1, (void*)vr$16, -1, *(void**)((uint8*)CPUFAMILYINFO$ + (CPUFAMILY$1 << (3 & 31))), 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$19, -1, 0 );
	fb_StrDelete( (FBSTRING*)&OSID$1 );
	label$180:;
	FBSTRING* vr$23 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$23;
}

static void FBPARSEPREDEFINES( void )
{
	label$266:;
	FBSTRING DEFID$1;
	__builtin_memset( &DEFID$1, 0, 12 );
	FBSTRING DEFTEXT$1;
	__builtin_memset( &DEFTEXT$1, 0, 12 );
	FBSTRING* DEF$1;
	void* vr$3 = LISTGETHEAD( (struct $5TLIST*)&ENV$ );
	DEF$1 = (FBSTRING*)vr$3;
	label$268:;
	if( DEF$1 == (FBSTRING*)0u ) goto label$269;
	{
		int32 IDLENGTH$2;
		FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"=", 1 );
		int32 vr$5 = fb_StrInstr( 1, (FBSTRING*)DEF$1, (FBSTRING*)vr$4 );
		IDLENGTH$2 = vr$5 + -1;
		if( IDLENGTH$2 >= 0 ) goto label$271;
		{
			int32 vr$7 = fb_StrLen( (void*)DEF$1, -1 );
			IDLENGTH$2 = vr$7;
		}
		label$271:;
		label$270:;
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)DEF$1, IDLENGTH$2 );
		fb_StrAssign( (void*)&DEFID$1, -1, (void*)vr$8, -1, 0 );
		int32 vr$10 = fb_StrLen( (void*)DEF$1, -1 );
		FBSTRING* vr$13 = fb_RIGHT( (FBSTRING*)DEF$1, (vr$10 - IDLENGTH$2) + -1 );
		fb_StrAssign( (void*)&DEFTEXT$1, -1, (void*)vr$13, -1, 0 );
		int32 vr$16 = fb_StrLen( (void*)&DEFTEXT$1, -1 );
		if( vr$16 != 0 ) goto label$273;
		{
			fb_StrAssign( (void*)&DEFTEXT$1, -1, (void*)"1", 2, 0 );
		}
		label$273:;
		label$272:;
		int32 vr$19 = fb_StrLen( (void*)&DEFTEXT$1, -1 );
		SYMBADDDEFINE( (uint8*)*(uint8**)&DEFID$1, (uint8*)*(uint8**)&DEFTEXT$1, vr$19, 0, (tmp$27)0u, 0 );
		void* vr$20 = LISTGETNEXT( (void*)DEF$1 );
		DEF$1 = (FBSTRING*)vr$20;
	}
	goto label$268;
	label$269:;
	fb_StrDelete( (FBSTRING*)&DEFTEXT$1 );
	fb_StrDelete( (FBSTRING*)&DEFID$1 );
	label$267:;
}

static void FBPARSEPREINCLUDES( void )
{
	label$274:;
	FBSTRING* FILE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&ENV$ + 32) );
	FILE$1 = (FBSTRING*)vr$1;
	label$276:;
	int32 vr$3 = FBSHOULDCONTINUE(  );
	if( (-(FILE$1 != (FBSTRING*)0u) & vr$3) == 0 ) goto label$277;
	{
		FBINCLUDEFILE( (uint8*)*(uint8**)FILE$1, -1 );
		void* vr$6 = LISTGETNEXT( (void*)FILE$1 );
		FILE$1 = (FBSTRING*)vr$6;
	}
	goto label$276;
	label$277:;
	label$275:;
}

static void HAPPENDFBCTINF( uint8* VALUE$1 )
{
	label$278:;
	if( *(int32*)((uint8*)&ENV$ + 1052) != 0 ) goto label$281;
	{
		*(int32*)((uint8*)&ENV$ + 1052) = -1;
		(*(tmp$37*)((uint8*)&IR$ + 216))(  );
	}
	label$281:;
	label$280:;
	(*(tmp$68*)((uint8*)&IR$ + 220))( VALUE$1 );
	label$279:;
}

static void HEMITOBJINFO( void )
{
	label$282:;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&ENV$ + 964) );
	I$1 = (struct $11TSTRSETITEM*)vr$1;
	label$284:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$285;
	{
		if( *(int32*)((uint8*)I$1 + 12) != 0 ) goto label$287;
		{
			uint8* vr$3 = OBJINFOENCODE( 0 );
			HAPPENDFBCTINF( (uint8*)vr$3 );
			HAPPENDFBCTINF( (uint8*)*(uint8**)I$1 );
		}
		label$287:;
		label$286:;
		void* vr$5 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$5;
	}
	goto label$284;
	label$285:;
	void* vr$7 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&ENV$ + 1008) );
	I$1 = (struct $11TSTRSETITEM*)vr$7;
	label$288:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$289;
	{
		if( *(int32*)((uint8*)I$1 + 12) != 0 ) goto label$291;
		{
			uint8* vr$9 = OBJINFOENCODE( 1 );
			HAPPENDFBCTINF( (uint8*)vr$9 );
			uint8* vr$11 = HESCAPE( (uint8*)*(uint8**)I$1 );
			HAPPENDFBCTINF( vr$11 );
		}
		label$291:;
		label$290:;
		void* vr$12 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$12;
	}
	goto label$288;
	label$289:;
	if( *(int32*)((uint8*)&ENV$ + 216) == 0 ) goto label$293;
	{
		uint8* vr$13 = OBJINFOENCODE( 2 );
		HAPPENDFBCTINF( (uint8*)vr$13 );
	}
	label$293:;
	label$292:;
	if( *(int32*)((uint8*)&ENV$ + 220) == 0 ) goto label$295;
	{
		uint8* vr$14 = OBJINFOENCODE( 3 );
		HAPPENDFBCTINF( (uint8*)vr$14 );
	}
	label$295:;
	label$294:;
	if( *(int32*)((uint8*)&ENV$ + 136) == 0 ) goto label$297;
	{
		FBSTRING TMP$183$2;
		uint8* vr$15 = OBJINFOENCODE( 4 );
		HAPPENDFBCTINF( (uint8*)vr$15 );
		__builtin_memset( &TMP$183$2, 0, 12 );
		FBSTRING* vr$17 = FBGETLANGNAME( *($7FB_LANG*)((uint8*)&ENV$ + 136) );
		fb_StrAssign( (void*)&TMP$183$2, -1, (void*)vr$17, -1, 0 );
		HAPPENDFBCTINF( (uint8*)*(uint8**)&TMP$183$2 );
		fb_StrDelete( (FBSTRING*)&TMP$183$2 );
	}
	label$297:;
	label$296:;
	if( *(int32*)((uint8*)&ENV$ + 1052) == 0 ) goto label$299;
	{
		(*(tmp$37*)((uint8*)&IR$ + 224))(  );
	}
	label$299:;
	label$298:;
	label$283:;
}

static void HSHOWINCLUDE( int32 INCLUDELEVEL$1, FBSTRING* MESSAGE$1 )
{
	FBSTRING TMP$186$1;
	label$300:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$184$2;
		TMP$184$2 = INCLUDELEVEL$1;
		goto label$302;
		label$305:;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" |  ", 5, 0 );
		}
		label$303:;
		I$2 = I$2 + 1;
		label$302:;
		if( I$2 <= TMP$184$2 ) goto label$305;
		label$304:;
	}
	__builtin_memset( &TMP$186$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$186$1, (void*)&LN$1, -1, (void*)MESSAGE$1, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$6, -1, 0 );
	fb_PrintString( 0, (FBSTRING*)&LN$1, 1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$301:;
}

static void HONSKIPPEDFILE( FBSTRING* FILENAME$1 )
{
	label$306:;
	if( *(int32*)((uint8*)&ENV$ + 236) == 0 ) goto label$309;
	{
		FBSTRING TMP$189$2;
		FBSTRING TMP$190$2;
		FBSTRING TMP$191$2;
		__builtin_memset( &TMP$191$2, 0, 12 );
		FBSTRING* vr$1 = PATHSTRIPCURDIR( FILENAME$1 );
		__builtin_memset( &TMP$189$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$189$2, (void*)"(", 2, (void*)vr$1, -1 );
		__builtin_memset( &TMP$190$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$190$2, (void*)vr$4, -1, (void*)")", 2 );
		fb_StrAssign( (void*)&TMP$191$2, -1, (void*)vr$7, -1, 0 );
		HSHOWINCLUDE( *(int32*)((uint8*)&ENV$ + 876) + 1, &TMP$191$2 );
		fb_StrDelete( (FBSTRING*)&TMP$191$2 );
	}
	label$309:;
	label$308:;
	label$307:;
}

static int32 IS_ROOTPATH( uint8** PATH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$348:;
	fb$result$1 = 0;
	if( *PATH$1 != (uint8*)0u ) goto label$351;
	{
		goto label$349;
	}
	label$351:;
	label$350:;
	fb$result$1 = -((uint32)(int32)*(*PATH$1) == 47u);
	label$349:;
	return fb$result$1;
}

static int32 GET_ROOTPATH_LEN( uint8* PATH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$352:;
	fb$result$1 = 0;
	if( (int32)*PATH$1 != 0 ) goto label$355;
	{
		goto label$353;
	}
	label$355:;
	label$354:;
	fb$result$1 = 1;
	label$353:;
	return fb$result$1;
}

static int32 SOLVE_PATH( uint8* PATH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$356:;
	static int32 CIDX$1[131];
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
	static struct $8FBARRAY1IlE tmp$194$1 = { (int32*)CIDX$1, (int32*)CIDX$1, 524, 4, 1, 49, { { 131, 0, 130 } } };
	int32 STK$1;
	int32 S$1;
	int32 N$1;
	int32 D$1;
	int32 R$1;
	int32 W$1;
	int32 C$1;
	STK$1 = 0;
	int32 vr$1 = GET_ROOTPATH_LEN( PATH$1 );
	S$1 = vr$1;
	*(int32*)((uint8*)CIDX$1 + (STK$1 << (2 & 31))) = S$1;
	W$1 = S$1;
	N$1 = 0;
	D$1 = 0;
	{
		R$1 = S$1;
		int32 TMP$195$2;
		int32 vr$3 = fb_StrLen( (void*)PATH$1, 0 );
		TMP$195$2 = vr$3 + -1;
		goto label$358;
		label$361:;
		{
			C$1 = (int32)*(uint8*)((uint8*)PATH$1 + R$1);
			if( (-((uint32)C$1 == 47u) | -((uint32)C$1 == 92u)) == 0 ) goto label$363;
			{
				if( N$1 != 0 ) goto label$365;
				{
				}
				goto label$364;
				label$365:;
				if( (-(D$1 == 1) & -(N$1 == 1)) == 0 ) goto label$366;
				{
					W$1 = W$1 + -1;
				}
				goto label$364;
				label$366:;
				if( (-(D$1 == 2) & -(N$1 == 2)) == 0 ) goto label$367;
				{
					if( STK$1 == 0 ) goto label$369;
					{
						STK$1 = STK$1 + -1;
					}
					label$369:;
					label$368:;
					W$1 = *(int32*)((uint8*)CIDX$1 + (STK$1 << (2 & 31)));
				}
				goto label$364;
				label$367:;
				{
					*(uint8*)((uint8*)PATH$1 + W$1) = (uint8)C$1;
					W$1 = W$1 + 1;
					STK$1 = STK$1 + 1;
					*(int32*)((uint8*)CIDX$1 + (STK$1 << (2 & 31))) = W$1;
				}
				label$364:;
				N$1 = 0;
				D$1 = 0;
			}
			goto label$362;
			label$363:;
			{
				if( (uint32)C$1 != 46u ) goto label$371;
				{
					D$1 = D$1 + 1;
				}
				label$371:;
				label$370:;
				N$1 = N$1 + 1;
				*(uint8*)((uint8*)PATH$1 + W$1) = (uint8)C$1;
				W$1 = W$1 + 1;
			}
			label$362:;
		}
		label$359:;
		R$1 = R$1 + 1;
		label$358:;
		if( R$1 <= TMP$195$2 ) goto label$361;
		label$360:;
	}
	*(uint8*)((uint8*)PATH$1 + W$1) = (uint8)0u;
	fb$result$1 = -1;
	label$357:;
	return fb$result$1;
}
