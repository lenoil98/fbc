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
typedef int32 $12FB_PARSEROPT;
typedef int32 $9FB_ERRMSG;
struct $7FBTOKEN;
struct $7FBTOKEN {
	int32 ID;
	int32 CLASS;
	int32 DTYPE;
	union {
		uint8 TEXT[1025];
		uint32 TEXTW[1025];
	};
	int32 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int32 PRDPOS;
		int32 HASESC;
	};
	int32 SUFFIXCHAR;
	int32 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4136 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int32 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint32 CURRCHAR;
	uint32 LAHDCHAR;
	int32 LINENUM;
	int32 LASTTK_ID;
	int32 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int32 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint32* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int32 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int32 FILEPOS;
	int32 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int32 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49408 );
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
typedef int32 $8FB_TOKEN;
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
typedef int32 $13FB_VAREXPROPT;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 120 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzexprzvariable( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTUNDEF( int32, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCONST( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIDX( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTBUILDBOUNDCHK( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPTRCHK( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWNIDXARRAY( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( struct $7ASTNODE*, int64, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDMULTIDEREF( int32, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTUDT( struct $7ASTNODE* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDVARBYSUFFIX( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDVARBYDEFTYPE( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
void SYMBCHECKDYNAMICARRAYDIMENSIONS( struct $8FBSYMBOL*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int32, struct $8FBSYMBOL*, int64, int32, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
int32 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
void LEXCHECKTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int32 );
struct $7ASTNODE* CHIGHESTPRECEXPR( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLl( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINl( struct $10FBSYMCHAIN*, int32 );
struct $7ASTNODE* CWITHVARIABLE( int32 );
struct $7ASTNODE* CFUNCTIONCALL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, $12FB_PARSEROPT );
struct $7ASTNODE* CPROCCALL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, int32, $12FB_PARSEROPT );
struct $7ASTNODE* CMETHODCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARSEROPT );
struct $7ASTNODE* CUDTMEMBER( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32, $12FB_PARSEROPT );
struct $7ASTNODE* CMEMBERACCESS( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* CMEMBERDEREF( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static struct $7ASTNODE* CDYNAMICARRAYINDEX( struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HINDEXEXPR( void );
static struct $7ASTNODE* HCHECKINTEGERINDEX( struct $7ASTNODE* );
static struct $7ASTNODE* CFIXEDSIZEARRAYINDEX( struct $8FBSYMBOL* );
static struct $7ASTNODE* HBUILDFIELD( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
static struct $7ASTNODE* HFIELDACCESS( struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
static struct $8FBSYMBOL* HMEMBERID( struct $8FBSYMBOL* );
static struct $7ASTNODE* HSTRINDEXING( int32, struct $7ASTNODE*, struct $7ASTNODE* );
static int32 HMULTIDEREF( void );
static struct $8FBSYMBOL* HVARADDUNDECL( uint8*, int32 );
static struct $7ASTNODE* HMAKEARRAYIDX( struct $8FBSYMBOL* );
static struct $7ASTNODE* HIMPFIELD( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32, int32, $12FB_PARSEROPT );
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
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_BACKEND;
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
typedef int32 $7FB_LANG;
typedef int32 $10FB_PDCHECK;
typedef int32 $11FB_MODEVIEW;
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
typedef int32 $12FB_TARGETOPT;
struct $8FBTARGET {
	uint8* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 20 );
typedef int32 $13FBFILE_FORMAT;
struct $6FBFILE {
	int32 NUM;
	uint8 NAME[261];
	uint8* INCFILE;
	int32 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 280 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 8 );
typedef int32 $11FB_LANG_OPT;
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
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 839944 );
extern struct $7LEX_CTX LEX$;
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

struct $7ASTNODE* CUDTMEMBER( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* VAREXPR$1, int32 CHECK_ARRAY$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$90:;
	int32 IS_PTR$1;
	IS_PTR$1 = -1;
	int32 MASK$1;
	MASK$1 = DTYPE$1 & 261632;
	label$92:;
	{
		struct $8FBSYMBOL* FLD$2;
		struct $8FBSYMBOL* vr$2 = HMEMBERID( SUBTYPE$1 );
		FLD$2 = vr$2;
		if( FLD$2 != (struct $8FBSYMBOL*)0u ) goto label$96;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$91;
		}
		label$96:;
		label$95:;
		{
			uint32 TMP$99$3;
			TMP$99$3 = *(uint32*)FLD$2;
			goto label$98;
			label$99:;
			{
				LEXSKIPTOKEN( 2048 );
				ASTDELTREE( VAREXPR$1 );
				struct $7ASTNODE* vr$4 = ASTBUILDCONST( FLD$2 );
				fb$result$1 = vr$4;
				goto label$91;
			}
			goto label$97;
			label$100:;
			{
				LEXSKIPTOKEN( 2048 );
				ASTDELTREE( VAREXPR$1 );
				VAREXPR$1 = (struct $7ASTNODE*)0u;
				int32 vr$5 = LEXGETTOKEN( 0 );
				if( vr$5 == 46 ) goto label$102;
				{
					fb$result$1 = (struct $7ASTNODE*)0u;
					goto label$91;
				}
				label$102:;
				label$101:;
			}
			goto label$97;
			label$103:;
			{
				LEXSKIPTOKEN( 2048 );
				DTYPE$1 = *(int32*)((uint8*)FLD$2 + 28) | MASK$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$2 + 32);
				if( IS_PTR$1 != 0 ) goto label$105;
				{
					struct $7ASTNODE* vr$9 = ASTNEWADDROF( VAREXPR$1 );
					VAREXPR$1 = vr$9;
				}
				label$105:;
				label$104:;
				struct $7ASTNODE* vr$10 = HFIELDACCESS( VAREXPR$1, FLD$2, DTYPE$1, SUBTYPE$1, CHECK_ARRAY$1 );
				VAREXPR$1 = vr$10;
				int32 vr$13 = LEXGETTOKEN( 0 );
				if( ((-((DTYPE$1 & 511) != 20) | -(vr$13 != 46)) | -(*(int32*)VAREXPR$1 == 25)) == 0 ) goto label$107;
				{
					fb$result$1 = VAREXPR$1;
					goto label$91;
				}
				label$107:;
				label$106:;
				IS_PTR$1 = 0;
			}
			goto label$97;
			label$108:;
			{
				ASTDELTREE( VAREXPR$1 );
				struct $7ASTNODE* vr$19 = _Z11CVARIABLEEXP8FBSYMBOLl( FLD$2, CHECK_ARRAY$1 );
				VAREXPR$1 = vr$19;
				DTYPE$1 = *(int32*)((uint8*)FLD$2 + 28) | MASK$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$2 + 32);
				{
					int32 TMP$100$5;
					int32 TMP$101$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$109;
					TMP$100$5 = 24;
					goto label$120;
					label$109:;
					TMP$100$5 = DTYPE$1 & 31;
					label$120:;
					TMP$101$5 = TMP$100$5;
					if( TMP$101$5 != 20 ) goto label$111;
					label$112:;
					{
						int32 vr$25 = LEXGETTOKEN( 0 );
						if( vr$25 == 46 ) goto label$114;
						{
							fb$result$1 = VAREXPR$1;
							goto label$91;
						}
						label$114:;
						label$113:;
					}
					goto label$110;
					label$111:;
					{
						fb$result$1 = VAREXPR$1;
						goto label$91;
					}
					label$115:;
					label$110:;
				}
				IS_PTR$1 = 0;
			}
			goto label$97;
			label$116:;
			{
				if( IS_PTR$1 == 0 ) goto label$118;
				{
					struct $7ASTNODE* vr$26 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
					VAREXPR$1 = vr$26;
				}
				label$118:;
				label$117:;
				struct $7ASTNODE* vr$27 = CMETHODCALL( FLD$2, VAREXPR$1, OPTIONS$1 );
				fb$result$1 = vr$27;
				goto label$91;
			}
			goto label$97;
			label$119:;
			{
				ERRREPORTEX( 21, (uint8*)"CUDTMEMBER", 0, 1, (uint8*)0u );
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$91;
			}
			goto label$97;
			label$98:;
			static const void* tmp$103[12] = {
				&&label$108,
				&&label$99,
				&&label$116,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$100,
				&&label$119,
				&&label$119,
				&&label$103,
			};
			if( (TMP$99$3 - 1u) > 11u ) goto label$119;
			goto *tmp$103[TMP$99$3 - 1u];
			label$97:;
		}
		LEXSKIPTOKEN( 2112 );
	}
	label$94:;
	goto label$92;
	label$93:;
	fb$result$1 = VAREXPR$1;
	label$91:;
	return fb$result$1;
}

void CUDTTYPEMEMBER( int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int32* IS_FIXLENSTR$1 )
{
	label$121:;
	label$123:;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 46 ) goto label$124;
	{
		if( (*DTYPE$1 & 31) == 20 ) goto label$126;
		{
			goto label$124;
		}
		label$126:;
		label$125:;
		LEXSKIPTOKEN( 64 );
		struct $8FBSYMBOL* SYM$2;
		struct $8FBSYMBOL* vr$4 = HMEMBERID( *SUBTYPE$1 );
		SYM$2 = vr$4;
		if( SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$128;
		{
			LEXSKIPTOKEN( 2048 );
			*DTYPE$1 = *(int32*)((uint8*)SYM$2 + 28);
			*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 32);
			*LGT$1 = *(int64*)((uint8*)SYM$2 + 40);
			*IS_FIXLENSTR$1 = -((*(int32*)((uint8*)SYM$2 + 12) & 2097152) != 0);
			if( *(int32*)SYM$2 != 2 ) goto label$130;
			{
				{
					int32 TMP$104$5;
					TMP$104$5 = *DTYPE$1 & 511;
					if( TMP$104$5 == 7 ) goto label$133;
					label$134:;
					if( TMP$104$5 == 4 ) goto label$133;
					label$135:;
					if( TMP$104$5 == 17 ) goto label$133;
					label$136:;
					if( TMP$104$5 != 18 ) goto label$132;
					label$133:;
					{
						*IS_FIXLENSTR$1 = -1;
						*LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$2 + 56) + 40);
						goto label$124;
					}
					label$132:;
					label$131:;
				}
			}
			label$130:;
			label$129:;
		}
		goto label$127;
		label$128:;
		{
			goto label$124;
		}
		label$127:;
	}
	goto label$123;
	label$124:;
	label$122:;
}

struct $7ASTNODE* CMEMBERACCESS( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$137:;
	if( *(int32*)EXPR$1 != 9 ) goto label$140;
	{
		struct $7ASTNODE* vr$2 = ASTBUILDCALLRESULTUDT( EXPR$1 );
		EXPR$1 = vr$2;
	}
	label$140:;
	label$139:;
	struct $7ASTNODE* vr$3 = ASTNEWADDROF( EXPR$1 );
	struct $7ASTNODE* vr$4 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, vr$3, -1, 0 );
	fb$result$1 = vr$4;
	label$138:;
	return fb$result$1;
}

struct $7ASTNODE* CMEMBERDEREF( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* VAREXPR$1, int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$160:;
	int32 DEREFCNT$1;
	int64 LGT$1;
	struct $7ASTNODE* IDXEXPR$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$162:;
	{
		IDXEXPR$1 = (struct $7ASTNODE*)0u;
		{
			int32 TMP$108$3;
			int32 vr$1 = LEXGETTOKEN( 0 );
			TMP$108$3 = vr$1;
			if( TMP$108$3 != 398 ) goto label$166;
			label$167:;
			{
				DEREFCNT$1 = 0;
				if( (DTYPE$1 & 480) == 0 ) goto label$169;
				{
					LEXSKIPTOKEN( 64 );
					DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
					{
						int32 TMP$109$6;
						TMP$109$6 = DTYPE$1 & 511;
						if( TMP$109$6 == 0 ) goto label$172;
						label$173:;
						if( TMP$109$6 != 23 ) goto label$171;
						label$172:;
						{
							ERRREPORT( 71, -1, (uint8*)0u );
							DTYPE$1 = 8;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
						}
						goto label$170;
						label$171:;
						if( TMP$109$6 != 20 ) goto label$174;
						label$175:;
						{
						}
						goto label$170;
						label$174:;
						{
							ERRREPORT( 24, -1, (uint8*)0u );
							DTYPE$1 = 8;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
						}
						label$176:;
						label$170:;
					}
					if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$178;
					{
						struct $7ASTNODE* vr$14 = ASTBUILDPTRCHK( VAREXPR$1 );
						VAREXPR$1 = vr$14;
					}
					label$178:;
					label$177:;
					int32 vr$15 = HMULTIDEREF(  );
					DEREFCNT$1 = DEREFCNT$1 + vr$15;
					struct $7ASTNODE* vr$17 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, VAREXPR$1, CHECK_ARRAY$1, 0 );
					VAREXPR$1 = vr$17;
				}
				goto label$168;
				label$169:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99436) != (struct $8FBSYMBOL*)0u ) goto label$180;
					{
						ERRREPORT( 28, -1, (uint8*)0u );
						goto label$163;
					}
					label$180:;
					label$179:;
					struct $8FBSYMBOL* PROC$5;
					$9FB_ERRMSG ERR_NUM$5;
					struct $8FBSYMBOL* vr$19 = SYMBFINDUOPOVLPROC( 77, VAREXPR$1, &ERR_NUM$5 );
					PROC$5 = vr$19;
					if( PROC$5 != (struct $8FBSYMBOL*)0u ) goto label$182;
					{
						ERRREPORT( 28, -1, (uint8*)0u );
						goto label$163;
					}
					label$182:;
					label$181:;
					struct $7ASTNODE* vr$20 = ASTBUILDCALL( PROC$5, VAREXPR$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
					VAREXPR$1 = vr$20;
					if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$184;
					{
						goto label$161;
					}
					label$184:;
					label$183:;
					LEXSKIPTOKEN( 64 );
					int32 vr$21 = HMULTIDEREF(  );
					DEREFCNT$1 = DEREFCNT$1 + vr$21;
					struct $7ASTNODE* vr$25 = CMEMBERACCESS( *(int32*)((uint8*)VAREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8), VAREXPR$1 );
					VAREXPR$1 = vr$25;
				}
				label$168:;
				if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$186;
				{
					goto label$161;
				}
				label$186:;
				label$185:;
				if( *(int32*)VAREXPR$1 != 25 ) goto label$188;
				{
					if( DEREFCNT$1 <= 0 ) goto label$190;
					{
						ERRREPORT( 28, -1, (uint8*)0u );
					}
					label$190:;
					label$189:;
					goto label$163;
				}
				label$188:;
				label$187:;
				DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
				if( DEREFCNT$1 <= 0 ) goto label$192;
				{
					struct $7ASTNODE* vr$29 = ASTBUILDMULTIDEREF( DEREFCNT$1, VAREXPR$1, DTYPE$1, SUBTYPE$1 );
					VAREXPR$1 = vr$29;
					if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$194;
					{
						goto label$161;
					}
					label$194:;
					label$193:;
					DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
					SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
				}
				label$192:;
				label$191:;
			}
			goto label$165;
			label$166:;
			if( TMP$108$3 != 91 ) goto label$195;
			label$196:;
			{
				LEXSKIPTOKEN( 0 );
				struct $7ASTNODE* vr$32 = HINDEXEXPR(  );
				IDXEXPR$1 = vr$32;
				int32 vr$33 = LEXGETTOKEN( 0 );
				if( vr$33 == 93 ) goto label$198;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
					HSKIPUNTIL( 93, -1, 0, 0 );
				}
				goto label$197;
				label$198:;
				{
					LEXSKIPTOKEN( 0 );
				}
				label$197:;
				{
					int32 TMP$110$5;
					TMP$110$5 = DTYPE$1 & 511;
					if( TMP$110$5 == 17 ) goto label$201;
					label$202:;
					if( TMP$110$5 == 18 ) goto label$201;
					label$203:;
					if( TMP$110$5 == 4 ) goto label$201;
					label$204:;
					if( TMP$110$5 != 7 ) goto label$200;
					label$201:;
					{
						struct $7ASTNODE* vr$35 = HCHECKINTEGERINDEX( IDXEXPR$1 );
						struct $7ASTNODE* vr$36 = HSTRINDEXING( DTYPE$1, VAREXPR$1, vr$35 );
						VAREXPR$1 = vr$36;
						IDXEXPR$1 = (struct $7ASTNODE*)0u;
						DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
						SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
					}
					goto label$199;
					label$200:;
					if( TMP$110$5 != 20 ) goto label$205;
					label$206:;
					{
						$9FB_ERRMSG ERR_NUM$6;
						struct $8FBSYMBOL* PROC$6;
						struct $8FBSYMBOL* vr$40 = SYMBFINDSELFBOPOVLPROC( 23, VAREXPR$1, IDXEXPR$1, &ERR_NUM$6 );
						PROC$6 = vr$40;
						if( PROC$6 == (struct $8FBSYMBOL*)0u ) goto label$208;
						{
							struct $7ASTNODE* vr$41 = ASTBUILDCALL( PROC$6, VAREXPR$1, IDXEXPR$1, (struct $7ASTNODE*)0u );
							VAREXPR$1 = vr$41;
						}
						goto label$207;
						label$208:;
						{
							if( ERR_NUM$6 != 0 ) goto label$210;
							{
								ERRREPORT( 28, -1, (uint8*)0u );
							}
							label$210:;
							label$209:;
						}
						label$207:;
						int32 vr$42 = LEXGETTOKEN( 0 );
						if( vr$42 != 46 ) goto label$212;
						{
							LEXSKIPTOKEN( 64 );
							struct $7ASTNODE* vr$45 = CMEMBERACCESS( *(int32*)((uint8*)VAREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8), VAREXPR$1 );
							VAREXPR$1 = vr$45;
							if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$214;
							{
								goto label$161;
							}
							label$214:;
							label$213:;
							if( *(int32*)VAREXPR$1 != 25 ) goto label$216;
							{
								goto label$163;
							}
							label$216:;
							label$215:;
						}
						label$212:;
						label$211:;
						DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
						SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
					}
					goto label$199;
					label$205:;
					{
						{
							int32 TMP$111$7;
							TMP$111$7 = DTYPE$1 & 511;
							if( TMP$111$7 == 0 ) goto label$220;
							label$221:;
							if( TMP$111$7 != 23 ) goto label$219;
							label$220:;
							{
								ERRREPORT( 71, -1, (uint8*)0u );
								DTYPE$1 = 40;
								SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
							}
							goto label$218;
							label$219:;
							{
								if( (DTYPE$1 & 480) != 0 ) goto label$224;
								{
									ERRREPORT( 28, -1, (uint8*)0u );
									goto label$163;
								}
								label$224:;
								label$223:;
							}
							label$222:;
							label$218:;
						}
						DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
						int64 vr$61 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
						LGT$1 = vr$61;
						if( LGT$1 != 0ll ) goto label$226;
						{
							ERRREPORT( 71, -1, (uint8*)0u );
							DTYPE$1 = 8;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
							LGT$1 = (int64)*(int32*)((uint8*)SYMB_DTYPETB$ + 228);
						}
						label$226:;
						label$225:;
						struct $7ASTNODE* vr$63 = HCHECKINTEGERINDEX( IDXEXPR$1 );
						IDXEXPR$1 = vr$63;
						if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$228;
						{
							struct $7ASTNODE* vr$64 = ASTBUILDPTRCHK( VAREXPR$1 );
							VAREXPR$1 = vr$64;
						}
						label$228:;
						label$227:;
						struct $7ASTNODE* vr$65 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
						struct $7ASTNODE* vr$66 = ASTNEWBOP( 30, IDXEXPR$1, vr$65, (struct $8FBSYMBOL*)0u, 1 );
						struct $7ASTNODE* vr$67 = ASTNEWBOP( 28, VAREXPR$1, vr$66, (struct $8FBSYMBOL*)0u, 1 );
						VAREXPR$1 = vr$67;
						int32 vr$68 = LEXGETTOKEN( 0 );
						if( vr$68 != 46 ) goto label$230;
						{
							if( (DTYPE$1 & 511) == 20 ) goto label$232;
							{
								ERRREPORT( 24, 0, (uint8*)0u );
								goto label$163;
							}
							label$232:;
							label$231:;
							LEXSKIPTOKEN( 64 );
							struct $7ASTNODE* vr$70 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, VAREXPR$1, CHECK_ARRAY$1, 0 );
							VAREXPR$1 = vr$70;
							if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$234;
							{
								goto label$161;
							}
							label$234:;
							label$233:;
							if( *(int32*)VAREXPR$1 != 25 ) goto label$236;
							{
								goto label$163;
							}
							label$236:;
							label$235:;
							DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
							SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
						}
						goto label$229;
						label$230:;
						{
							struct $7ASTNODE* vr$74 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
							VAREXPR$1 = vr$74;
						}
						label$229:;
					}
					label$217:;
					label$199:;
				}
			}
			goto label$165;
			label$195:;
			{
				goto label$163;
			}
			label$237:;
			label$165:;
		}
	}
	label$164:;
	goto label$162;
	label$163:;
	fb$result$1 = VAREXPR$1;
	label$161:;
	return fb$result$1;
}

struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1, int32 ISFUNCPTR$1, int32 CHECKARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$238:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( ISFUNCPTR$1 != 0 ) goto label$241;
	{
		struct $7ASTNODE* vr$1 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, CHECKARRAY$1 );
		EXPR$1 = vr$1;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$243;
		{
			goto label$239;
		}
		label$243:;
		label$242:;
		DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
		int32 vr$5 = LEXGETTOKEN( 0 );
		if( vr$5 != 40 ) goto label$245;
		{
			if( DTYPE$1 != 54 ) goto label$247;
			{
				ISFUNCPTR$1 = -1;
			}
			label$247:;
			label$246:;
		}
		label$245:;
		label$244:;
	}
	label$241:;
	label$240:;
	if( ISFUNCPTR$1 != 0 ) goto label$249;
	{
		fb$result$1 = EXPR$1;
		goto label$239;
	}
	label$249:;
	label$248:;
	if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$251;
	{
		struct $7ASTNODE* vr$6 = ASTBUILDPTRCHK( EXPR$1 );
		EXPR$1 = vr$6;
	}
	label$251:;
	label$250:;
	if( (*(int32*)((uint8*)SUBTYPE$1 + 28) & 511) == 0 ) goto label$253;
	{
		struct $7ASTNODE* vr$9 = CFUNCTIONCALL( (struct $8FBSYMBOL*)0u, SUBTYPE$1, EXPR$1, (struct $7ASTNODE*)0u, 0 );
		EXPR$1 = vr$9;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$255;
		{
			goto label$239;
		}
		label$255:;
		label$254:;
	}
	goto label$252;
	label$253:;
	{
		if( (*(int32*)((uint8*)&PARSER$ + 148) & 4) != 0 ) goto label$257;
		{
			struct $7ASTNODE* vr$11 = CPROCCALL( (struct $8FBSYMBOL*)0u, SUBTYPE$1, EXPR$1, (struct $7ASTNODE*)0u, 0, 0 );
			EXPR$1 = vr$11;
		}
		goto label$256;
		label$257:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$12;
		}
		label$256:;
	}
	label$252:;
	fb$result$1 = EXPR$1;
	label$239:;
	return fb$result$1;
}

struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLl( struct $8FBSYMBOL* SYM$1, int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$295:;
	struct $7ASTNODE* VAREXPR$1;
	struct $7ASTNODE* IDXEXPR$1;
	struct $7ASTNODE* DESCEXPR$1;
	int32 IS_BYREF$1;
	int32 IS_FUNCPTR$1;
	int32 IS_ARRAY$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	int32 vr$1 = SYMBCHECKACCESS( SYM$1 );
	if( vr$1 != 0 ) goto label$298;
	{
		ERRREPORT( 202, 0, (uint8*)0u );
	}
	label$298:;
	label$297:;
	LEXSKIPTOKEN( 4096 );
	IS_BYREF$1 = (-((*(int32*)((uint8*)SYM$1 + 4) & 65536) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 512) != 0)) | -((*(int32*)((uint8*)SYM$1 + 4) & 262144) != 0);
	int32 vr$13 = SYMBISARRAY( SYM$1 );
	IS_ARRAY$1 = vr$13;
	IS_FUNCPTR$1 = 0;
	VAREXPR$1 = (struct $7ASTNODE*)0u;
	IDXEXPR$1 = (struct $7ASTNODE*)0u;
	int32 CHECK_FIELDS$1;
	CHECK_FIELDS$1 = -1;
	int32 IS_NIDXARRAY$1;
	IS_NIDXARRAY$1 = 0;
	int32 vr$14 = LEXGETTOKEN( 0 );
	if( (-(vr$14 == 40) & -((*(int32*)((uint8*)&PARSER$ + 148) & 4096) == 0)) == 0 ) goto label$300;
	{
		int32 vr$19 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$19 == 41 ) goto label$302;
		{
			if( IS_ARRAY$1 == 0 ) goto label$304;
			{
				LEXSKIPTOKEN( 0 );
				if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$306;
				{
					if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$308;
					{
						struct $7ASTNODE* vr$24 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
						DESCEXPR$1 = vr$24;
						ASTSETTYPE( DESCEXPR$1, 52, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92) );
						struct $7ASTNODE* vr$26 = ASTNEWDEREF( DESCEXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
						DESCEXPR$1 = vr$26;
					}
					goto label$307;
					label$308:;
					{
						struct $7ASTNODE* vr$28 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
						DESCEXPR$1 = vr$28;
					}
					label$307:;
					struct $7ASTNODE* vr$29 = ASTCLONETREE( DESCEXPR$1 );
					struct $7ASTNODE* vr$30 = CDYNAMICARRAYINDEX( SYM$1, vr$29 );
					IDXEXPR$1 = vr$30;
					struct $7ASTNODE* vr$32 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( DESCEXPR$1, (int64)*(int32*)((uint8*)&SYMB$ + 99612), 8, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
					struct $7ASTNODE* vr$33 = ASTNEWBOP( 28, IDXEXPR$1, vr$32, (struct $8FBSYMBOL*)0u, 1 );
					IDXEXPR$1 = vr$33;
				}
				goto label$305;
				label$306:;
				{
					struct $7ASTNODE* vr$34 = CFIXEDSIZEARRAYINDEX( SYM$1 );
					IDXEXPR$1 = vr$34;
				}
				label$305:;
				int32 vr$35 = HMATCH( 41, 0 );
				if( vr$35 != 0 ) goto label$310;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				label$310:;
				label$309:;
			}
			goto label$303;
			label$304:;
			{
				IS_FUNCPTR$1 = -((*(int32*)((uint8*)SYM$1 + 28) & 511) == 54);
				if( (-(IS_ARRAY$1 == 0) & -(IS_FUNCPTR$1 == 0)) == 0 ) goto label$312;
				{
					ERRREPORT( 72, -1, (uint8*)0u );
					LEXSKIPTOKEN( 0 );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				label$312:;
				label$311:;
			}
			label$303:;
		}
		goto label$301;
		label$302:;
		{
			if( IS_ARRAY$1 == 0 ) goto label$314;
			{
				CHECK_FIELDS$1 = 0;
			}
			label$314:;
			label$313:;
		}
		label$301:;
	}
	goto label$299;
	label$300:;
	{
		if( IS_ARRAY$1 == 0 ) goto label$316;
		{
			if( CHECK_ARRAY$1 == 0 ) goto label$318;
			{
				ERRREPORT( 73, -1, (uint8*)0u );
				struct $7ASTNODE* vr$42 = HMAKEARRAYIDX( SYM$1 );
				IDXEXPR$1 = vr$42;
			}
			goto label$317;
			label$318:;
			{
				CHECK_FIELDS$1 = 0;
				IS_NIDXARRAY$1 = -1;
			}
			label$317:;
		}
		label$316:;
		label$315:;
	}
	label$299:;
	struct $7ASTNODE* vr$43 = ASTNEWVAR( SYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	VAREXPR$1 = vr$43;
	if( IDXEXPR$1 == (struct $7ASTNODE*)0u ) goto label$320;
	{
		if( IS_BYREF$1 == 0 ) goto label$322;
		{
			struct $7ASTNODE* vr$44 = ASTNEWBOP( 28, VAREXPR$1, IDXEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			VAREXPR$1 = vr$44;
		}
		goto label$321;
		label$322:;
		{
			struct $7ASTNODE* vr$45 = ASTNEWIDX( VAREXPR$1, IDXEXPR$1 );
			VAREXPR$1 = vr$45;
		}
		label$321:;
	}
	label$320:;
	label$319:;
	if( IS_BYREF$1 == 0 ) goto label$324;
	{
		struct $7ASTNODE* vr$46 = ASTNEWDEREF( VAREXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
		VAREXPR$1 = vr$46;
	}
	label$324:;
	label$323:;
	if( IS_FUNCPTR$1 != 0 ) goto label$326;
	{
		if( CHECK_FIELDS$1 == 0 ) goto label$328;
		{
			int32 vr$47 = LEXGETTOKEN( 0 );
			if( vr$47 != 46 ) goto label$330;
			{
				if( (*(int32*)((uint8*)VAREXPR$1 + 4) & 511) == 20 ) goto label$332;
				{
					ERRREPORT( 265, -1, (uint8*)0u );
					HSKIPUNTIL( -1, 0, 0, 0 );
					fb$result$1 = VAREXPR$1;
					goto label$296;
				}
				label$332:;
				label$331:;
				LEXSKIPTOKEN( 64 );
				struct $7ASTNODE* vr$50 = ASTNEWADDROF( VAREXPR$1 );
				struct $7ASTNODE* vr$53 = CUDTMEMBER( *(int32*)((uint8*)VAREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8), vr$50, CHECK_ARRAY$1, 0 );
				VAREXPR$1 = vr$53;
				if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$334;
				{
					goto label$296;
				}
				label$334:;
				label$333:;
				if( *(int32*)VAREXPR$1 != 25 ) goto label$336;
				{
					fb$result$1 = VAREXPR$1;
					goto label$296;
				}
				label$336:;
				label$335:;
				int32 vr$55 = LEXGETTOKEN( 0 );
				if( vr$55 != 40 ) goto label$338;
				{
					IS_FUNCPTR$1 = -((*(int32*)((uint8*)VAREXPR$1 + 4) & 511) == 54);
				}
				label$338:;
				label$337:;
			}
			label$330:;
			label$329:;
		}
		label$328:;
		label$327:;
	}
	label$326:;
	label$325:;
	if( CHECK_FIELDS$1 == 0 ) goto label$340;
	{
		struct $7ASTNODE* vr$61 = CFUNCPTRORMEMBERDEREF( *(int32*)((uint8*)VAREXPR$1 + 4), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8), VAREXPR$1, IS_FUNCPTR$1, CHECK_ARRAY$1 );
		VAREXPR$1 = vr$61;
	}
	goto label$339;
	label$340:;
	{
		if( IS_NIDXARRAY$1 == 0 ) goto label$342;
		{
			struct $7ASTNODE* vr$62 = ASTNEWNIDXARRAY( VAREXPR$1 );
			VAREXPR$1 = vr$62;
		}
		label$342:;
		label$341:;
	}
	label$339:;
	fb$result$1 = VAREXPR$1;
	label$296:;
	return fb$result$1;
}

struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINl( struct $10FBSYMCHAIN* CHAIN_$1, int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$343:;
	uint8* ID$1;
	int32 SUFFIX$1;
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$1 = LEXGETTEXT(  );
	ID$1 = vr$1;
	SUFFIX$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8);
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$346;
	{
		int32 vr$4 = LEXGETCLASS( 0 );
		if( vr$4 != 1 ) goto label$348;
		{
			if( SUFFIX$1 != -2147483648u ) goto label$350;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$344;
			}
			label$350:;
			label$349:;
		}
		label$348:;
		label$347:;
	}
	label$346:;
	label$345:;
	if( (*(int32*)((uint8*)&ENV$ + 888) & 8388608) == 0 ) goto label$352;
	{
		if( SUFFIX$1 != -2147483648u ) goto label$354;
		{
			int32 vr$6 = SYMBGETDEFTYPE( (uint8*)ID$1 );
			struct $8FBSYMBOL* vr$7 = SYMBFINDVARBYDEFTYPE( CHAIN_$1, vr$6 );
			SYM$1 = vr$7;
		}
		goto label$353;
		label$354:;
		{
			struct $8FBSYMBOL* vr$8 = SYMBFINDVARBYSUFFIX( CHAIN_$1, SUFFIX$1 );
			SYM$1 = vr$8;
		}
		label$353:;
	}
	goto label$351;
	label$352:;
	{
		if( SUFFIX$1 == -2147483648u ) goto label$356;
		{
			LEXCHECKTOKEN( 4096 );
			SUFFIX$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8);
		}
		label$356:;
		label$355:;
		struct $8FBSYMBOL* vr$11 = SYMBFINDBYCLASS( CHAIN_$1, 1 );
		SYM$1 = vr$11;
	}
	label$351:;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$358;
	{
		if( *(int32*)((uint8*)&ENV$ + 932) == 0 ) goto label$360;
		{
			ERRREPORTUNDEF( 42, ID$1 );
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$344;
		}
		label$360:;
		label$359:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$362;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 8388608) == 0 ) goto label$364;
			{
				struct $8FBSYMBOL* vr$13 = SYMBFINDBYCLASS( CHAIN_$1, 1 );
				SYM$1 = vr$13;
				if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$366;
				{
					if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$368;
					{
						ERRREPORT( 131, 0, (uint8*)0u );
					}
					label$368:;
					label$367:;
				}
				label$366:;
				label$365:;
			}
			label$364:;
			label$363:;
		}
		label$362:;
		label$361:;
		struct $8FBSYMBOL* vr$16 = HVARADDUNDECL( ID$1, SUFFIX$1 );
		SYM$1 = vr$16;
		if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$370;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$344;
		}
		label$370:;
		label$369:;
		if( (*(int32*)((uint8*)&PARSER$ + 148) & 4) == 0 ) goto label$372;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 2) == 0 ) goto label$374;
			{
				if( *(int32*)((uint8*)&ENV$ + 932) != 0 ) goto label$376;
				{
					ERRREPORTWARN( 11, (uint8*)ID$1, 1, (uint8*)0u );
				}
				label$376:;
				label$375:;
			}
			label$374:;
			label$373:;
		}
		label$372:;
		label$371:;
	}
	label$358:;
	label$357:;
	struct $7ASTNODE* vr$19 = _Z11CVARIABLEEXP8FBSYMBOLl( SYM$1, CHECK_ARRAY$1 );
	fb$result$1 = vr$19;
	label$344:;
	return fb$result$1;
}

struct $7ASTNODE* CWITHVARIABLE( int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$387:;
	struct $8FBSYMBOL* SYM$1;
	int32 DTYPE$1;
	LEXSKIPTOKEN( 64 );
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) + 16);
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28);
	if( *(int32*)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) + 20) == 0 ) goto label$390;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856);
	}
	label$390:;
	label$389:;
	struct $7ASTNODE* vr$16 = HIMPFIELD( SYM$1, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), CHECK_ARRAY$1, *(int32*)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) + 20), 0 );
	fb$result$1 = vr$16;
	label$388:;
	return fb$result$1;
}

struct $7ASTNODE* CVARIABLE( struct $10FBSYMCHAIN* CHAIN_$1, int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$391:;
	{
		int32 TMP$113$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$113$2 = vr$1;
		if( TMP$113$2 == 0 ) goto label$395;
		label$396:;
		if( TMP$113$2 != 2 ) goto label$394;
		label$395:;
		{
			struct $7ASTNODE* vr$2 = _Z11CVARIABLEEXP10FBSYMCHAINl( CHAIN_$1, CHECK_ARRAY$1 );
			fb$result$1 = vr$2;
			goto label$392;
		}
		goto label$393;
		label$394:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) != (struct $13FB_CMPSTMTSTK*)0u ) goto label$399;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$392;
			}
			label$399:;
			label$398:;
			int32 vr$3 = LEXGETTOKEN( 0 );
			if( vr$3 == 46 ) goto label$401;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$392;
			}
			label$401:;
			label$400:;
			struct $7ASTNODE* vr$4 = CWITHVARIABLE( CHECK_ARRAY$1 );
			fb$result$1 = vr$4;
			goto label$392;
		}
		label$397:;
		label$393:;
	}
	label$392:;
	return fb$result$1;
}

struct $7ASTNODE* CIMPLICITDATAMEMBER( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, int32 CHECK_ARRAY$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$402:;
	struct $8FBSYMBOL* THIS_$1;
	THIS_$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 76);
	if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 8) & 2) != 0) & -(PARAM$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$405;
	{
		THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 60);
	}
	label$405:;
	label$404:;
	if( THIS_$1 != (struct $8FBSYMBOL*)0u ) goto label$407;
	{
		ERRREPORT( 215, 0, (uint8*)0u );
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$403;
	}
	label$407:;
	label$406:;
	if( BASE_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$409;
	{
		BASE_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)THIS_$1 + 32);
	}
	label$409:;
	label$408:;
	struct $7ASTNODE* vr$10 = HIMPFIELD( THIS_$1, *(int32*)((uint8*)THIS_$1 + 28), BASE_PARENT$1, CHECK_ARRAY$1, -1, OPTIONS$1 );
	fb$result$1 = vr$10;
	label$403:;
	return fb$result$1;
}

struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$410:;
	int32 LAST_ISEXPR$1;
	int32 CHECK_ARRAY$1;
	if( (OPTIONS$1 & 4) == 0 ) goto label$413;
	{
		LAST_ISEXPR$1 = -((*(int32*)((uint8*)&PARSER$ + 148) & 4) != 0);
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) | 4;
		}
		goto label$414;
		label$415:;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) & -5;
		}
		label$414:;
	}
	label$413:;
	label$412:;
	CHECK_ARRAY$1 = -((*(int32*)((uint8*)&PARSER$ + 148) & 2) != 0);
	if( (OPTIONS$1 & 1) != 0 ) goto label$417;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) | 2;
	}
	goto label$416;
	label$417:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) & -3;
	}
	label$416:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$11 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0u, (struct $10FBSYMCHAIN*)0u );
	EXPR$1 = vr$11;
	if( CHECK_ARRAY$1 == 0 ) goto label$419;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) | 2;
	}
	goto label$418;
	label$419:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) & -3;
	}
	label$418:;
	if( (OPTIONS$1 & 4) == 0 ) goto label$421;
	{
		if( LAST_ISEXPR$1 == 0 ) goto label$423;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) | 4;
		}
		goto label$422;
		label$423:;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) & -5;
		}
		label$422:;
	}
	label$421:;
	label$420:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$425;
	{
		struct $7ASTNODE* T$2;
		if( (OPTIONS$1 & 2) == 0 ) goto label$427;
		{
			struct $7ASTNODE* vr$18 = ASTSKIPCASTS( EXPR$1 );
			T$2 = vr$18;
		}
		goto label$426;
		label$427:;
		{
			struct $7ASTNODE* vr$19 = ASTSKIPNOCONVCAST( EXPR$1 );
			T$2 = vr$19;
		}
		label$426:;
		int32 COMPLAIN$2;
		COMPLAIN$2 = -1;
		{
			uint32 TMP$114$3;
			TMP$114$3 = *(uint32*)T$2;
			goto label$429;
			label$430:;
			{
				COMPLAIN$2 = 0;
			}
			goto label$428;
			label$431:;
			{
				COMPLAIN$2 = -((OPTIONS$1 & 16) != 0);
			}
			goto label$428;
			label$429:;
			static const void* tmp$115[17] = {
				&&label$431,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$430,
				&&label$430,
				&&label$430,
				&&label$430,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$428,
				&&label$431,
			};
			if( (TMP$114$3 - 9u) > 16u ) goto label$428;
			goto *tmp$115[TMP$114$3 - 9u];
			label$428:;
		}
		if( COMPLAIN$2 == 0 ) goto label$433;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( EXPR$1 );
			EXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$433:;
		label$432:;
	}
	label$425:;
	label$424:;
	fb$result$1 = EXPR$1;
	label$411:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static struct $7ASTNODE* HINDEXEXPR( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CEXPRESSIONWITHNIDXARRAY( 0 );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$13;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$2;
	}
	label$13:;
	label$12:;
	fb$result$1 = EXPR$1;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKINTEGERINDEX( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	{
		int32 TMP$93$2;
		int32 TMP$94$2;
		if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$16;
		TMP$93$2 = 24;
		goto label$434;
		label$16:;
		TMP$93$2 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
		label$434:;
		TMP$94$2 = TMP$93$2;
		if( TMP$94$2 != 8 ) goto label$18;
		label$19:;
		{
		}
		goto label$17;
		label$18:;
		if( TMP$94$2 != 24 ) goto label$20;
		label$21:;
		{
			ERRREPORT( 151, -1, (uint8*)0u );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$7;
		}
		goto label$17;
		label$20:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$24;
			{
				ERRREPORT( 151, -1, (uint8*)0u );
				struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$1 = vr$9;
			}
			label$24:;
			label$23:;
		}
		label$22:;
		label$17:;
	}
	fb$result$1 = EXPR$1;
	label$15:;
	return fb$result$1;
}

static struct $7ASTNODE* CFIXEDSIZEARRAYINDEX( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$25:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* DIMEXPR$1;
	int32 DIMENSION$1;
	int64 LOWER$1;
	int64 UPPER$1;
	DIMENSION$1 = -1;
	EXPR$1 = (struct $7ASTNODE*)0u;
	label$27:;
	{
		DIMENSION$1 = DIMENSION$1 + 1;
		if( DIMENSION$1 < *(int32*)((uint8*)SYM$1 + 64) ) goto label$31;
		{
			ERRREPORT( 36, 0, (uint8*)0u );
			struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$3;
			goto label$26;
		}
		label$31:;
		label$30:;
		LOWER$1 = *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (DIMENSION$1 << (4 & 31)));
		UPPER$1 = *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (DIMENSION$1 << (4 & 31))) + 8);
		struct $7ASTNODE* vr$10 = HINDEXEXPR(  );
		struct $7ASTNODE* vr$11 = HCHECKINTEGERINDEX( vr$10 );
		DIMEXPR$1 = vr$11;
		if( *(int32*)((uint8*)&ENV$ + 172) == 0 ) goto label$33;
		{
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( UPPER$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$13 = ASTNEWCONSTI( LOWER$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$14 = ASTBUILDBOUNDCHK( DIMEXPR$1, vr$13, vr$12 );
			DIMEXPR$1 = vr$14;
			if( DIMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$35;
			{
				ERRREPORT( 92, 0, (uint8*)0u );
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( LOWER$1, 8, (struct $8FBSYMBOL*)0u );
				DIMEXPR$1 = vr$15;
			}
			label$35:;
			label$34:;
		}
		label$33:;
		label$32:;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$37;
		{
			EXPR$1 = DIMEXPR$1;
		}
		goto label$36;
		label$37:;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (UPPER$1 - LOWER$1) + 1ll, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$19 = ASTNEWBOP( 30, EXPR$1, vr$18, (struct $8FBSYMBOL*)0u, 1 );
			EXPR$1 = vr$19;
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 28, EXPR$1, DIMEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			EXPR$1 = vr$20;
		}
		label$36:;
	}
	label$29:;
	int32 vr$21 = HMATCH( 44, 0 );
	if( vr$21 != 0 ) goto label$27;
	label$28:;
	if( DIMENSION$1 >= (*(int32*)((uint8*)SYM$1 + 64) + -1) ) goto label$39;
	{
		ERRREPORT( 36, 0, (uint8*)0u );
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$25 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 40), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$26 = ASTNEWBOP( 30, EXPR$1, vr$25, (struct $8FBSYMBOL*)0u, 1 );
	EXPR$1 = vr$26;
	fb$result$1 = EXPR$1;
	label$26:;
	return fb$result$1;
}

static struct $7ASTNODE* HBUILDFIELD( struct $7ASTNODE* VAREXPR$1, struct $7ASTNODE* OFFSETEXPR$1, struct $8FBSYMBOL* FLD$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$40:;
	struct $7ASTNODE* vr$1 = ASTNEWBOP( 28, VAREXPR$1, OFFSETEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
	VAREXPR$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
	VAREXPR$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWFIELD( VAREXPR$1, FLD$1 );
	VAREXPR$1 = vr$3;
	fb$result$1 = VAREXPR$1;
	label$41:;
	return fb$result$1;
}

static struct $7ASTNODE* HFIELDACCESS( struct $7ASTNODE* VAREXPR$1, struct $8FBSYMBOL* FLD$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$42:;
	struct $7ASTNODE* OFFSETEXPR$1;
	struct $7ASTNODE* INDEXEXPR$1;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* DESC$1;
	struct $7ASTNODE* vr$2 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 48), 8, (struct $8FBSYMBOL*)0u );
	OFFSETEXPR$1 = vr$2;
	if( *(int32*)((uint8*)FLD$1 + 64) == 0 ) goto label$45;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( (-(vr$4 != 40) | -((*(int32*)((uint8*)&PARSER$ + 148) & 4096) != 0)) == 0 ) goto label$47;
		{
			if( CHECK_ARRAY$1 == 0 ) goto label$49;
			{
				ERRREPORT( 73, 0, (uint8*)0u );
			}
			label$49:;
			label$48:;
			struct $7ASTNODE* vr$9 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
			struct $7ASTNODE* vr$10 = ASTNEWNIDXARRAY( vr$9 );
			fb$result$1 = vr$10;
			goto label$43;
		}
		label$47:;
		label$46:;
		int32 vr$11 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$11 != 41 ) goto label$51;
		{
			struct $7ASTNODE* vr$12 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
			fb$result$1 = vr$12;
			goto label$43;
		}
		label$51:;
		label$50:;
		LEXSKIPTOKEN( 0 );
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) == 0 ) goto label$53;
		{
			DESC$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 88);
			struct $7ASTNODE* vr$16 = ASTNEWBOP( 28, VAREXPR$1, OFFSETEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			VAREXPR$1 = vr$16;
			struct $7ASTNODE* vr$31 = ASTNEWCONV( (((*(int32*)((uint8*)DESC$1 + 28) & 31) | ((*(int32*)((uint8*)DESC$1 + 28) & 480) + 32)) | ((*(int32*)((uint8*)DESC$1 + 28) & 261632) << (1 & 31))) | (*(int32*)((uint8*)DESC$1 + 28) & 32505856), *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 32), VAREXPR$1, 24, (int32*)0u );
			VAREXPR$1 = vr$31;
			TREE$1 = (struct $7ASTNODE*)0u;
			int32 vr$32 = ASTHASSIDEFX( VAREXPR$1 );
			if( vr$32 == 0 ) goto label$55;
			{
				struct $7ASTNODE* vr$34 = ASTREMSIDEFX( &VAREXPR$1 );
				struct $7ASTNODE* vr$35 = ASTNEWLINK( TREE$1, vr$34, 2 );
				TREE$1 = vr$35;
			}
			label$55:;
			label$54:;
			struct $7ASTNODE* vr$36 = ASTCLONETREE( VAREXPR$1 );
			struct $7ASTNODE* vr$37 = ASTNEWDEREF( vr$36, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			struct $7ASTNODE* vr$38 = CDYNAMICARRAYINDEX( FLD$1, vr$37 );
			INDEXEXPR$1 = vr$38;
			struct $7ASTNODE* vr$40 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)&SYMB$ + 99612), 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$41 = ASTNEWBOP( 28, VAREXPR$1, vr$40, (struct $8FBSYMBOL*)0u, 1 );
			VAREXPR$1 = vr$41;
			struct $7ASTNODE* vr$51 = ASTNEWCONV( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 64)) | ((DTYPE$1 & 261632) << (2 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1, VAREXPR$1, 24, (int32*)0u );
			VAREXPR$1 = vr$51;
			struct $7ASTNODE* vr$52 = ASTNEWDEREF( VAREXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			VAREXPR$1 = vr$52;
			struct $7ASTNODE* vr$53 = ASTNEWBOP( 28, VAREXPR$1, INDEXEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			VAREXPR$1 = vr$53;
			struct $7ASTNODE* vr$54 = ASTNEWDEREF( VAREXPR$1, -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
			VAREXPR$1 = vr$54;
			struct $7ASTNODE* vr$55 = ASTNEWLINK( TREE$1, VAREXPR$1, 2 );
			VAREXPR$1 = vr$55;
		}
		goto label$52;
		label$53:;
		{
			struct $7ASTNODE* vr$56 = CFIXEDSIZEARRAYINDEX( FLD$1 );
			INDEXEXPR$1 = vr$56;
			struct $7ASTNODE* vr$58 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 72), 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$59 = ASTNEWBOP( 28, INDEXEXPR$1, vr$58, (struct $8FBSYMBOL*)0u, 1 );
			INDEXEXPR$1 = vr$59;
			struct $7ASTNODE* vr$60 = ASTNEWBOP( 28, OFFSETEXPR$1, INDEXEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			OFFSETEXPR$1 = vr$60;
			struct $7ASTNODE* vr$61 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
			VAREXPR$1 = vr$61;
		}
		label$52:;
		int32 vr$62 = HMATCH( 41, 0 );
		if( vr$62 != 0 ) goto label$57;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		label$57:;
		label$56:;
	}
	goto label$44;
	label$45:;
	{
		struct $7ASTNODE* vr$63 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
		VAREXPR$1 = vr$63;
	}
	label$44:;
	fb$result$1 = VAREXPR$1;
	label$43:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HMEMBERID( struct $8FBSYMBOL* PARENT$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	struct $8FBSYMBOL* RES$1;
	if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$61;
	{
		ERRREPORT( 265, -1, (uint8*)0u );
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$59;
	}
	label$61:;
	label$60:;
	{
		uint32 TMP$95$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$95$2 = (uint32)vr$1;
		goto label$63;
		label$64:;
		{
		}
		goto label$62;
		label$65:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$59;
		}
		goto label$62;
		label$63:;
		static const void* tmp$116[3] = {
			&&label$64,
			&&label$64,
			&&label$64,
		};
		if( TMP$95$2 > 2u ) goto label$65;
		goto *tmp$116[TMP$95$2 - 0u];
		label$62:;
	}
	RES$1 = (struct $8FBSYMBOL*)0u;
	{
		int32 TMP$96$2;
		int32 vr$2 = LEXGETTOKEN( 0 );
		TMP$96$2 = vr$2;
		if( TMP$96$2 != 347 ) goto label$67;
		label$68:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			RES$1 = vr$3;
		}
		goto label$66;
		label$67:;
		if( TMP$96$2 != 348 ) goto label$69;
		label$70:;
		{
			struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDTOR( PARENT$1 );
			RES$1 = vr$4;
		}
		label$69:;
		label$66:;
	}
	if( RES$1 == (struct $8FBSYMBOL*)0u ) goto label$72;
	{
		fb$result$1 = RES$1;
		goto label$59;
	}
	label$72:;
	label$71:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	uint8* vr$5 = LEXGETTEXT(  );
	struct $10FBSYMCHAIN* vr$6 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$5, 0, -1 );
	CHAIN_$1 = vr$6;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$74;
	{
		uint8* vr$7 = LEXGETTEXT(  );
		ERRREPORTUNDEF( 18, vr$7 );
		LEXSKIPTOKEN( 0 );
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$59;
	}
	label$74:;
	label$73:;
	label$75:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$78:;
		{
			if( (int32)*(uint16*)((uint8*)SYM$2 + 36) != (int32)*(uint16*)((uint8*)PARENT$1 + 36) ) goto label$82;
			{
				{
					uint32 TMP$97$5;
					TMP$97$5 = *(uint32*)SYM$2;
					goto label$84;
					label$85:;
					{
						int32 vr$14 = SYMBCHECKACCESS( SYM$2 );
						if( vr$14 != 0 ) goto label$87;
						{
							ERRREPORT( 202, 0, (uint8*)0u );
						}
						label$87:;
						label$86:;
					}
					goto label$83;
					label$88:;
					{
					}
					goto label$83;
					label$89:;
					{
						ERRREPORTEX( 21, (uint8*)"HMEMBERID", 0, 1, (uint8*)0u );
						fb$result$1 = (struct $8FBSYMBOL*)0u;
						goto label$59;
					}
					goto label$83;
					label$84:;
					static const void* tmp$117[12] = {
						&&label$85,
						&&label$85,
						&&label$88,
						&&label$89,
						&&label$89,
						&&label$89,
						&&label$89,
						&&label$89,
						&&label$85,
						&&label$89,
						&&label$89,
						&&label$85,
					};
					if( (TMP$97$5 - 1u) > 11u ) goto label$89;
					goto *tmp$117[TMP$97$5 - 1u];
					label$83:;
				}
				fb$result$1 = SYM$2;
				goto label$59;
			}
			label$82:;
			label$81:;
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		label$80:;
		if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$78;
		label$79:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	label$77:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$75;
	label$76:;
	uint8* vr$17 = LEXGETTEXT(  );
	ERRREPORTUNDEF( 18, vr$17 );
	LEXSKIPTOKEN( 0 );
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	label$59:;
	return fb$result$1;
}

static struct $7ASTNODE* HSTRINDEXING( int32 DTYPE$1, struct $7ASTNODE* VAREXPR$1, struct $7ASTNODE* IDXEXPR$1 )
{
	int32 TMP$105$1;
	int32 TMP$106$1;
	int32 TMP$107$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$141:;
	struct $7ASTNODE* vr$1 = ASTUPDSTRCONCAT( VAREXPR$1 );
	VAREXPR$1 = vr$1;
	if( *(int32*)VAREXPR$1 != 9 ) goto label$144;
	{
		ERRREPORT( 17, -1, (uint8*)0u );
	}
	label$144:;
	label$143:;
	if( (DTYPE$1 & 480) == 0 ) goto label$145;
	TMP$105$1 = 24;
	goto label$435;
	label$145:;
	TMP$105$1 = DTYPE$1 & 31;
	label$435:;
	if( TMP$105$1 != 17 ) goto label$147;
	{
		struct $7ASTNODE* vr$5 = ASTBUILDSTRPTR( VAREXPR$1 );
		VAREXPR$1 = vr$5;
	}
	goto label$146;
	label$147:;
	{
		struct $7ASTNODE* vr$6 = ASTNEWADDROF( VAREXPR$1 );
		VAREXPR$1 = vr$6;
	}
	label$146:;
	if( (DTYPE$1 & 480) == 0 ) goto label$148;
	TMP$106$1 = 24;
	goto label$436;
	label$148:;
	TMP$106$1 = DTYPE$1 & 31;
	label$436:;
	if( TMP$106$1 != 7 ) goto label$150;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)SYMB_DTYPETB$ + 200), 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$11 = ASTNEWBOP( 30, IDXEXPR$1, vr$10, (struct $8FBSYMBOL*)0u, 1 );
		IDXEXPR$1 = vr$11;
	}
	label$150:;
	label$149:;
	if( *(int32*)((uint8*)&ENV$ + 172) == 0 ) goto label$152;
	{
		struct $7ASTNODE* vr$12 = ASTBUILDPTRCHK( VAREXPR$1 );
		VAREXPR$1 = vr$12;
	}
	label$152:;
	label$151:;
	struct $7ASTNODE* vr$13 = ASTNEWBOP( 28, VAREXPR$1, IDXEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
	VAREXPR$1 = vr$13;
	if( (DTYPE$1 & 480) == 0 ) goto label$153;
	TMP$107$1 = 24;
	goto label$437;
	label$153:;
	TMP$107$1 = DTYPE$1 & 31;
	label$437:;
	if( TMP$107$1 != 7 ) goto label$155;
	{
		DTYPE$1 = (DTYPE$1 & -512) | (*(int32*)((uint8*)&ENV$ + 248) & 511);
	}
	goto label$154;
	label$155:;
	{
		DTYPE$1 = (DTYPE$1 & -512) | 3;
	}
	label$154:;
	struct $7ASTNODE* vr$21 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, (struct $8FBSYMBOL*)0u, 0ll );
	fb$result$1 = vr$21;
	label$142:;
	return fb$result$1;
}

static int32 HMULTIDEREF( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$156:;
	int32 DEREFS$1;
	__builtin_memset( &DEREFS$1, 0, 4 );
	label$158:;
	int32 vr$2 = LEXGETTOKEN( 0 );
	if( vr$2 != 42 ) goto label$159;
	{
		LEXSKIPTOKEN( 64 );
		DEREFS$1 = DEREFS$1 + 1;
	}
	goto label$158;
	label$159:;
	fb$result$1 = DEREFS$1;
	label$157:;
	return fb$result$1;
}

static struct $7ASTNODE* CDYNAMICARRAYINDEX( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* DESCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$258:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* DIMEXPR$1;
	int32 DIMENSION$1;
	int64 DIMOFFSET$1;
	DIMENSION$1 = -1;
	EXPR$1 = (struct $7ASTNODE*)0u;
	label$260:;
	{
		DIMENSION$1 = DIMENSION$1 + 1;
		DIMOFFSET$1 = (int64)*(int32*)((uint8*)&SYMB$ + 99624) + ((int64)DIMENSION$1 * *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99628) + 40));
		struct $7ASTNODE* vr$7 = HINDEXEXPR(  );
		struct $7ASTNODE* vr$8 = HCHECKINTEGERINDEX( vr$7 );
		DIMEXPR$1 = vr$8;
		if( *(int32*)((uint8*)&ENV$ + 172) == 0 ) goto label$264;
		{
			struct $7ASTNODE* vr$11 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$12 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$11, DIMOFFSET$1 + (int64)*(int32*)((uint8*)&SYMB$ + 99636), 8, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$15 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$16 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$15, DIMOFFSET$1 + (int64)*(int32*)((uint8*)&SYMB$ + 99632), 8, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$17 = ASTBUILDBOUNDCHK( DIMEXPR$1, vr$16, vr$12 );
			DIMEXPR$1 = vr$17;
		}
		label$264:;
		label$263:;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$266;
		{
			EXPR$1 = DIMEXPR$1;
		}
		goto label$265;
		label$266:;
		{
			struct $7ASTNODE* vr$18 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$19 = _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_( vr$18, DIMOFFSET$1, 8, (struct $8FBSYMBOL*)0u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 30, EXPR$1, vr$19, (struct $8FBSYMBOL*)0u, 1 );
			EXPR$1 = vr$20;
			struct $7ASTNODE* vr$21 = ASTNEWBOP( 28, EXPR$1, DIMEXPR$1, (struct $8FBSYMBOL*)0u, 1 );
			EXPR$1 = vr$21;
		}
		label$265:;
	}
	label$262:;
	int32 vr$22 = HMATCH( 44, 0 );
	if( vr$22 != 0 ) goto label$260;
	label$261:;
	struct $7ASTNODE* vr$24 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 40), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$25 = ASTNEWBOP( 30, EXPR$1, vr$24, (struct $8FBSYMBOL*)0u, 1 );
	EXPR$1 = vr$25;
	ASTDELTREE( DESCEXPR$1 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$268;
	{
		SYMBCHECKDYNAMICARRAYDIMENSIONS( SYM$1, DIMENSION$1 + 1 );
	}
	label$268:;
	label$267:;
	fb$result$1 = EXPR$1;
	label$259:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HVARADDUNDECL( uint8* ID$1, int32 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$269:;
	struct $8FBSYMBOL* S$1;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 36 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$112$1;
	*(struct $10FBARRAYDIM**)&tmp$112$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$112$1 + 4) = (struct $10FBARRAYDIM*)DTB$1;
	*(int32*)((uint8*)&tmp$112$1 + 8) = 16;
	*(int32*)((uint8*)&tmp$112$1 + 12) = 16;
	*(int32*)((uint8*)&tmp$112$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$112$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$112$1 + 24) = 1;
	*(int32*)((uint8*)&tmp$112$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$112$1 + 32) = 0;
	int32 ATTRIB$1;
	int32 OPTIONS$1;
	struct $7ASTNODE* VAR_$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 8) & 64) == 0 ) goto label$272;
	{
		ATTRIB$1 = 2;
	}
	goto label$271;
	label$272:;
	{
		ATTRIB$1 = 0;
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$274;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 880) ) goto label$276;
			{
				if( (ATTRIB$1 & 57) != 0 ) goto label$278;
				{
					ATTRIB$1 = ATTRIB$1 | 2;
				}
				label$278:;
				label$277:;
			}
			label$276:;
			label$275:;
		}
		label$274:;
		label$273:;
	}
	label$271:;
	if( DTYPE$1 != -2147483648u ) goto label$280;
	{
		int32 vr$8 = SYMBGETDEFTYPE( (uint8*)ID$1 );
		DTYPE$1 = vr$8;
	}
	goto label$279;
	label$280:;
	{
		ATTRIB$1 = ATTRIB$1 | 1048576;
	}
	label$279:;
	OPTIONS$1 = 0;
	if( (*(int32*)((uint8*)&ENV$ + 888) & 2) == 0 ) goto label$282;
	{
		if( (*(int32*)((uint8*)&PARSER$ + 148) & 8) != 0 ) goto label$284;
		{
			OPTIONS$1 = OPTIONS$1 | 2;
		}
		label$284:;
		label$283:;
	}
	goto label$281;
	label$282:;
	{
		OPTIONS$1 = OPTIONS$1 | 2;
	}
	label$281:;
	struct $8FBSYMBOL* vr$15 = SYMBADDVAR( (uint8*)ID$1, (uint8*)0u, DTYPE$1, (struct $8FBSYMBOL*)0u, 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$112$1, ATTRIB$1, OPTIONS$1 );
	S$1 = vr$15;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$286;
	{
		ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
		uint8* vr$17 = SYMBUNIQUELABEL(  );
		struct $8FBSYMBOL* vr$18 = SYMBADDVAR( (uint8*)vr$17, (uint8*)0u, DTYPE$1, (struct $8FBSYMBOL*)0u, 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$112$1, ATTRIB$1, OPTIONS$1 );
		S$1 = vr$18;
	}
	goto label$285;
	label$286:;
	{
		struct $7ASTNODE* vr$19 = ASTNEWDECL( S$1, -1 );
		VAR_$1 = vr$19;
		if( (OPTIONS$1 & 2) == 0 ) goto label$288;
		{
			ASTADDUNSCOPED( VAR_$1 );
		}
		goto label$287;
		label$288:;
		{
			ASTADD( VAR_$1 );
		}
		label$287:;
	}
	label$285:;
	fb$result$1 = S$1;
	label$270:;
	return fb$result$1;
}

static struct $7ASTNODE* HMAKEARRAYIDX( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$289:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$292;
	{
		struct $7ASTNODE* vr$4 = ASTNEWVAR( SYM$1, 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$5 = ASTNEWDEREF( vr$4, 8, (struct $8FBSYMBOL*)0u, (int64)*(int32*)((uint8*)&SYMB$ + 99612) );
		fb$result$1 = vr$5;
		goto label$290;
	}
	label$292:;
	label$291:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 4) == 0 ) goto label$294;
	{
		struct $7ASTNODE* vr$10 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 88), (int64)*(int32*)((uint8*)&SYMB$ + 99612), 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$10;
		goto label$290;
	}
	label$294:;
	label$293:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( *(int64*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68), 8, (struct $8FBSYMBOL*)0u );
	fb$result$1 = vr$13;
	label$290:;
	return fb$result$1;
}

static struct $7ASTNODE* HIMPFIELD( struct $8FBSYMBOL* THIS_$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 CHECK_ARRAY$1, int32 IS_PTR$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$377:;
	struct $7ASTNODE* VAREXPR$1;
	if( IS_PTR$1 == 0 ) goto label$380;
	{
		struct $7ASTNODE* vr$10 = ASTNEWVAR( THIS_$1, 0ll, (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856), SUBTYPE$1 );
		VAREXPR$1 = vr$10;
	}
	goto label$379;
	label$380:;
	{
		struct $7ASTNODE* vr$11 = ASTNEWVAR( THIS_$1, 0ll, DTYPE$1, SUBTYPE$1 );
		struct $7ASTNODE* vr$12 = ASTNEWADDROF( vr$11 );
		VAREXPR$1 = vr$12;
	}
	label$379:;
	struct $7ASTNODE* vr$13 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, VAREXPR$1, CHECK_ARRAY$1, OPTIONS$1 );
	VAREXPR$1 = vr$13;
	if( VAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$382;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$378;
	}
	label$382:;
	label$381:;
	if( *(int32*)VAREXPR$1 != 25 ) goto label$384;
	{
		fb$result$1 = VAREXPR$1;
		goto label$378;
	}
	label$384:;
	label$383:;
	DTYPE$1 = *(int32*)((uint8*)VAREXPR$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 8);
	int32 IS_FUNCPTR$1;
	IS_FUNCPTR$1 = 0;
	int32 vr$17 = LEXGETTOKEN( 0 );
	if( vr$17 != 40 ) goto label$386;
	{
		IS_FUNCPTR$1 = -((DTYPE$1 & 511) == 54);
	}
	label$386:;
	label$385:;
	struct $7ASTNODE* vr$20 = CFUNCPTRORMEMBERDEREF( DTYPE$1, SUBTYPE$1, VAREXPR$1, IS_FUNCPTR$1, CHECK_ARRAY$1 );
	fb$result$1 = vr$20;
	label$378:;
	return fb$result$1;
}
