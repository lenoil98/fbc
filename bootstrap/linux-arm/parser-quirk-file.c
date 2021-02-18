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
typedef int32 $8FB_TOKEN;
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
typedef int32 $8LEXCHECK;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
typedef int32 $10FBOPENKIND;
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCHIDORKW( uint8*, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
int32 RTLPRINT( struct $7ASTNODE*, int32, int32, struct $7ASTNODE*, int32 );
int32 RTLPRINTSPCTAB( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLWRITE( struct $7ASTNODE*, int32, struct $7ASTNODE* );
int32 RTLPRINTUSINGINIT( struct $7ASTNODE*, int32 );
int32 RTLPRINTUSINGEND( struct $7ASTNODE*, int32 );
int32 RTLPRINTUSING( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32, int32 );
struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, $10FBOPENKIND );
struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE*, int32 );
int32 RTLFILESEEK( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* );
struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLFILELINEINPUT( int32, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLFILELINEINPUTWSTR( int32, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLFILEINPUT( int32, struct $7ASTNODE*, int32, int32 );
int32 RTLFILEINPUTGET( struct $7ASTNODE* );
int32 RTLFILELOCK( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HFILECLOSE( int32 );
static struct $7ASTNODE* HFILEPUT( int32 );
static struct $7ASTNODE* HFILEGET( int32 );
static struct $7ASTNODE* HFILEOPEN( int32 );
static struct $7ASTNODE* HFILERENAME( int32 );
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

int32 CPRINTSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* USINGEXPR$1;
	__builtin_memset( &USINGEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	int32 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 4 );
	int32 ISSEMICOLON$1;
	__builtin_memset( &ISSEMICOLON$1, 0, 4 );
	int32 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 4 );
	int32 ISTAB$1;
	__builtin_memset( &ISTAB$1, 0, 4 );
	int32 ISSPC$1;
	__builtin_memset( &ISSPC$1, 0, 4 );
	int32 ISLPRINT$1;
	__builtin_memset( &ISLPRINT$1, 0, 4 );
	fb$result$1 = 0;
	{
		if( TK$1 == 461 ) goto label$14;
		label$15:;
		if( TK$1 != 63 ) goto label$13;
		label$14:;
		{
			ISLPRINT$1 = 0;
		}
		goto label$12;
		label$13:;
		if( TK$1 != 462 ) goto label$16;
		label$17:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 33554432) != 0 ) goto label$19;
			{
				ERRREPORTNOTALLOWED( 33554432, 146, (uint8*)0u );
			}
			goto label$18;
			label$19:;
			{
				ISLPRINT$1 = -1;
			}
			label$18:;
		}
		goto label$12;
		label$16:;
		{
			goto label$11;
		}
		label$20:;
		label$12:;
	}
	LEXSKIPTOKEN( 2048 );
	if( ISLPRINT$1 == 0 ) goto label$22;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		FILEXPR$1 = vr$12;
	}
	goto label$21;
	label$22:;
	{
		int32 vr$13 = HMATCH( 35, 0 );
		if( vr$13 == 0 ) goto label$24;
		{
			struct $7ASTNODE* vr$14 = HMATCHEXPR( 8 );
			FILEXPR$1 = vr$14;
			if( FILEXPR$1 != (struct $7ASTNODE*)0u ) goto label$26;
			{
				goto label$11;
			}
			label$26:;
			label$25:;
			int32 vr$15 = LEXGETTOKEN( 0 );
			if( vr$15 == 44 ) goto label$28;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$27;
			label$28:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$27:;
		}
		goto label$23;
		label$24:;
		{
			struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FILEXPR$1 = vr$16;
		}
		label$23:;
	}
	label$21:;
	if( *(int32*)FILEXPR$1 == 16 ) goto label$30;
	{
		struct $7ASTNODE* vr$19 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$19 );
	}
	label$30:;
	label$29:;
	USINGEXPR$1 = (struct $7ASTNODE*)0u;
	EXPRESSIONS$1 = 0;
	label$31:;
	{
		int32 vr$20 = HMATCH( 287, 2048 );
		if( vr$20 == 0 ) goto label$35;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0u ) goto label$37;
			{
				ERRREPORT( 3, 0, (uint8*)0u );
				struct $7ASTNODE* vr$21 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$21;
				int32 vr$22 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
				if( vr$22 != 0 ) goto label$39;
				{
					goto label$11;
				}
				label$39:;
				label$38:;
			}
			label$37:;
			label$36:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 17 );
			USINGEXPR$1 = vr$23;
			if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$41;
			{
				goto label$11;
			}
			label$41:;
			label$40:;
			int32 vr$24 = HMATCH( 59, 0 );
			if( vr$24 != 0 ) goto label$43;
			{
				ERRREPORT( 47, 0, (uint8*)0u );
			}
			label$43:;
			label$42:;
			int32 vr$25 = RTLPRINTUSINGINIT( USINGEXPR$1, ISLPRINT$1 );
			if( vr$25 != 0 ) goto label$45;
			{
				goto label$11;
			}
			label$45:;
			label$44:;
		}
		label$35:;
		label$34:;
		ISSPC$1 = 0;
		ISTAB$1 = 0;
		int32 vr$26 = HMATCH( 484, 4096 );
		if( vr$26 == 0 ) goto label$47;
		{
			ISSPC$1 = -1;
			int32 vr$27 = LEXGETTOKEN( 0 );
			if( vr$27 == 40 ) goto label$49;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$48;
			label$49:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$48:;
			struct $7ASTNODE* vr$28 = HMATCHEXPR( 8 );
			EXPR$1 = vr$28;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$51;
			{
				goto label$11;
			}
			label$51:;
			label$50:;
			int32 vr$29 = LEXGETTOKEN( 0 );
			if( vr$29 == 41 ) goto label$53;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$52;
			label$53:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$52:;
		}
		goto label$46;
		label$47:;
		int32 vr$30 = HMATCH( 485, 4096 );
		if( vr$30 == 0 ) goto label$54;
		{
			ISTAB$1 = -1;
			int32 vr$31 = LEXGETTOKEN( 0 );
			if( vr$31 == 40 ) goto label$56;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$55;
			label$56:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$55:;
			struct $7ASTNODE* vr$32 = HMATCHEXPR( 8 );
			EXPR$1 = vr$32;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$58;
			{
				goto label$11;
			}
			label$58:;
			label$57:;
			int32 vr$33 = LEXGETTOKEN( 0 );
			if( vr$33 == 41 ) goto label$60;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$59;
			label$60:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$59:;
		}
		goto label$46;
		label$54:;
		{
			struct $7ASTNODE* vr$34 = CEXPRESSION(  );
			EXPR$1 = vr$34;
		}
		label$46:;
		ISCOMMA$1 = 0;
		ISSEMICOLON$1 = 0;
		int32 vr$35 = HMATCH( 44, 0 );
		if( vr$35 == 0 ) goto label$62;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0u ) goto label$64;
			{
				ERRREPORT( 47, 0, (uint8*)0u );
			}
			label$64:;
			label$63:;
			ISCOMMA$1 = -1;
		}
		goto label$61;
		label$62:;
		int32 vr$36 = HMATCH( 59, 0 );
		if( vr$36 == 0 ) goto label$65;
		{
			ISSEMICOLON$1 = -1;
		}
		label$65:;
		label$61:;
		if( ((ISSPC$1 | ISTAB$1) & -(ISSEMICOLON$1 == 0)) == 0 ) goto label$67;
		{
			ERRREPORT( 47, 0, (uint8*)0u );
		}
		label$67:;
		label$66:;
		if( ((-(ISCOMMA$1 == 0) & -(ISSEMICOLON$1 == 0)) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$69;
		{
			goto label$32;
		}
		label$69:;
		label$68:;
		if( (ISSPC$1 | ISTAB$1) == 0 ) goto label$71;
		{
			struct $7ASTNODE* vr$46 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$46;
			int32 vr$47 = RTLPRINTSPCTAB( FILEXPRCOPY$1, EXPR$1, ISTAB$1, ISLPRINT$1 );
			if( vr$47 != 0 ) goto label$73;
			{
				goto label$11;
			}
			label$73:;
			label$72:;
		}
		goto label$70;
		label$71:;
		{
			if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$75;
			{
				struct $7ASTNODE* vr$48 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$48;
				int32 vr$49 = RTLPRINT( FILEXPRCOPY$1, ISCOMMA$1, ISSEMICOLON$1, EXPR$1, ISLPRINT$1 );
				if( vr$49 != 0 ) goto label$77;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$77:;
				label$76:;
			}
			goto label$74;
			label$75:;
			{
				struct $7ASTNODE* vr$50 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$50;
				int32 vr$51 = RTLPRINTUSING( FILEXPRCOPY$1, EXPR$1, ISCOMMA$1, ISSEMICOLON$1, ISLPRINT$1 );
				if( vr$51 != 0 ) goto label$79;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$79:;
				label$78:;
			}
			label$74:;
		}
		label$70:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1;
	}
	label$33:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) != 0 ) goto label$31;
	label$32:;
	if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$81;
	{
		if( EXPRESSIONS$1 != 0 ) goto label$83;
		{
			struct $7ASTNODE* vr$54 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$54;
			int32 vr$55 = RTLPRINT( FILEXPRCOPY$1, 0, 0, (struct $7ASTNODE*)0u, ISLPRINT$1 );
			if( vr$55 != 0 ) goto label$85;
			{
				goto label$11;
			}
			label$85:;
			label$84:;
		}
		label$83:;
		label$82:;
	}
	goto label$80;
	label$81:;
	{
		struct $7ASTNODE* vr$56 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$56;
		int32 vr$57 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
		if( vr$57 != 0 ) goto label$87;
		{
			goto label$11;
		}
		label$87:;
		label$86:;
	}
	label$80:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1;
	label$11:;
	return fb$result$1;
}

int32 CWRITESTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$88:;
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	int32 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 4 );
	int32 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 4 );
	fb$result$1 = 0;
	LEXSKIPTOKEN( 2048 );
	int32 vr$6 = HMATCH( 35, 0 );
	if( vr$6 == 0 ) goto label$91;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8 );
		FILEXPR$1 = vr$7;
		if( FILEXPR$1 != (struct $7ASTNODE*)0u ) goto label$93;
		{
			goto label$89;
		}
		label$93:;
		label$92:;
		int32 vr$8 = LEXGETTOKEN( 0 );
		if( vr$8 == 44 ) goto label$95;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$94;
		label$95:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$94:;
	}
	goto label$90;
	label$91:;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		FILEXPR$1 = vr$9;
	}
	label$90:;
	if( *(int32*)FILEXPR$1 == 16 ) goto label$97;
	{
		struct $7ASTNODE* vr$12 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$12 );
	}
	label$97:;
	label$96:;
	EXPRESSIONS$1 = 0;
	label$98:;
	{
		struct $7ASTNODE* vr$13 = CEXPRESSION(  );
		EXPR$1 = vr$13;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$102;
		{
			EXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$102:;
		label$101:;
		ISCOMMA$1 = 0;
		int32 vr$14 = HMATCH( 44, 0 );
		if( vr$14 == 0 ) goto label$104;
		{
			ISCOMMA$1 = -1;
		}
		label$104:;
		label$103:;
		struct $7ASTNODE* vr$15 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$15;
		if( (-(ISCOMMA$1 == 0) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$106;
		{
			if( EXPRESSIONS$1 != 0 ) goto label$108;
			{
				RTLWRITE( FILEXPRCOPY$1, 0, (struct $7ASTNODE*)0u );
			}
			label$108:;
			label$107:;
			goto label$99;
		}
		label$106:;
		label$105:;
		int32 vr$19 = RTLWRITE( FILEXPRCOPY$1, ISCOMMA$1, EXPR$1 );
		if( vr$19 != 0 ) goto label$110;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
		}
		label$110:;
		label$109:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1;
	}
	label$100:;
	if( ISCOMMA$1 != 0 ) goto label$98;
	label$99:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1;
	label$89:;
	return fb$result$1;
}

int32 CLINEINPUTSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 4 );
	int32 ISFILE$1;
	__builtin_memset( &ISFILE$1, 0, 4 );
	int32 ADDNEWLINE$1;
	__builtin_memset( &ADDNEWLINE$1, 0, 4 );
	int32 ISSEP$1;
	__builtin_memset( &ISSEP$1, 0, 4 );
	int32 ADDQUESTION$1;
	__builtin_memset( &ADDQUESTION$1, 0, 4 );
	fb$result$1 = 0;
	int32 vr$7 = LEXGETLOOKAHEAD( 1, 0 );
	if( vr$7 == 476 ) goto label$114;
	{
		goto label$112;
	}
	label$114:;
	label$113:;
	LEXSKIPTOKEN( 2048 );
	LEXSKIPTOKEN( 2048 );
	int32 vr$8 = HMATCH( 59, 0 );
	ADDNEWLINE$1 = -(vr$8 == 0);
	ISFILE$1 = 0;
	int32 vr$10 = HMATCH( 35, 0 );
	if( vr$10 == 0 ) goto label$116;
	{
		ISFILE$1 = -1;
	}
	label$116:;
	label$115:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	EXPR$1 = vr$11;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$118;
	{
		if( ISFILE$1 == 0 ) goto label$120;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$12;
		}
		goto label$119;
		label$120:;
		{
			EXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$119:;
	}
	label$118:;
	label$117:;
	ISSEP$1 = -1;
	int32 vr$13 = HMATCH( 44, 0 );
	if( vr$13 != 0 ) goto label$122;
	{
		int32 vr$14 = HMATCH( 59, 0 );
		if( vr$14 != 0 ) goto label$124;
		{
			ISSEP$1 = 0;
			if( (-(EXPR$1 == (struct $7ASTNODE*)0u) | ISFILE$1) == 0 ) goto label$126;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			label$126:;
			label$125:;
		}
		goto label$123;
		label$124:;
		{
			ADDQUESTION$1 = -1;
		}
		label$123:;
	}
	goto label$121;
	label$122:;
	{
		ADDQUESTION$1 = 0;
	}
	label$121:;
	struct $7ASTNODE* vr$17 = CVARORDEREF( 0 );
	DSTEXPR$1 = vr$17;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$128;
	{
		if( (-(EXPR$1 == (struct $7ASTNODE*)0u) | ISFILE$1) == 0 ) goto label$130;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$112;
		}
		goto label$129;
		label$130:;
		{
			DSTEXPR$1 = EXPR$1;
			EXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$129:;
	}
	goto label$127;
	label$128:;
	{
		if( ISSEP$1 != 0 ) goto label$132;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		label$132:;
		label$131:;
	}
	label$127:;
	if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$134;
	{
		ERRREPORT( 119, 0, (uint8*)0u );
	}
	label$134:;
	label$133:;
	{
		int32 TMP$94$2;
		TMP$94$2 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
		if( TMP$94$2 == 17 ) goto label$137;
		label$138:;
		if( TMP$94$2 == 18 ) goto label$137;
		label$139:;
		if( TMP$94$2 != 4 ) goto label$136;
		label$137:;
		{
			int32 vr$24 = RTLFILELINEINPUT( ISFILE$1, EXPR$1, DSTEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$24;
		}
		goto label$135;
		label$136:;
		if( TMP$94$2 != 7 ) goto label$140;
		label$141:;
		{
			int32 vr$25 = RTLFILELINEINPUTWSTR( ISFILE$1, EXPR$1, DSTEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$25;
		}
		goto label$135;
		label$140:;
		{
			ASTDELTREE( DSTEXPR$1 );
			ERRREPORT( 24, 0, (uint8*)0u );
			fb$result$1 = -1;
			goto label$112;
		}
		label$142:;
		label$135:;
	}
	label$112:;
	return fb$result$1;
}

int32 CINPUTSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	struct $7ASTNODE* FILESTREXPR$1;
	__builtin_memset( &FILESTREXPR$1, 0, 4 );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 4 );
	int32 ISLAST$1;
	__builtin_memset( &ISLAST$1, 0, 4 );
	int32 ISFILE$1;
	__builtin_memset( &ISFILE$1, 0, 4 );
	int32 ADDNEWLINE$1;
	__builtin_memset( &ADDNEWLINE$1, 0, 4 );
	int32 ADDQUESTION$1;
	__builtin_memset( &ADDQUESTION$1, 0, 4 );
	fb$result$1 = 0;
	LEXSKIPTOKEN( 2048 );
	int32 vr$7 = HMATCH( 59, 0 );
	ADDNEWLINE$1 = -(vr$7 == 0);
	ADDQUESTION$1 = 0;
	int32 vr$9 = HMATCH( 35, 0 );
	if( vr$9 == 0 ) goto label$146;
	{
		ISFILE$1 = -1;
		struct $7ASTNODE* vr$10 = HMATCHEXPR( 8 );
		FILESTREXPR$1 = vr$10;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0u ) goto label$148;
		{
			goto label$144;
		}
		label$148:;
		label$147:;
	}
	goto label$145;
	label$146:;
	{
		ISFILE$1 = 0;
		int32 vr$11 = LEXGETCLASS( 0 );
		if( vr$11 != 4 ) goto label$150;
		{
			uint8* vr$14 = LEXGETTEXT(  );
			struct $8FBSYMBOL* vr$15 = SYMBALLOCSTRCONST( vr$14, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4112) );
			struct $7ASTNODE* vr$16 = ASTNEWVAR( vr$15, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			FILESTREXPR$1 = vr$16;
			LEXSKIPTOKEN( 0 );
		}
		goto label$149;
		label$150:;
		{
			FILESTREXPR$1 = (struct $7ASTNODE*)0u;
			ADDQUESTION$1 = -1;
		}
		label$149:;
	}
	label$145:;
	if( (ISFILE$1 | -(FILESTREXPR$1 != (struct $7ASTNODE*)0u)) == 0 ) goto label$152;
	{
		int32 vr$19 = HMATCH( 44, 0 );
		if( vr$19 != 0 ) goto label$154;
		{
			int32 vr$20 = HMATCH( 59, 0 );
			if( vr$20 != 0 ) goto label$156;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$155;
			label$156:;
			{
				ADDQUESTION$1 = -1;
			}
			label$155:;
		}
		label$154:;
		label$153:;
	}
	label$152:;
	label$151:;
	int32 vr$21 = RTLFILEINPUT( ISFILE$1, FILESTREXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
	if( vr$21 != 0 ) goto label$158;
	{
		goto label$144;
	}
	label$158:;
	label$157:;
	label$159:;
	{
		struct $7ASTNODE* vr$22 = CVARORDEREF( 0 );
		DSTEXPR$1 = vr$22;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$163;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			DSTEXPR$1 = (struct $7ASTNODE*)0u;
			HSKIPUNTIL( 44, 0, 0, 0 );
		}
		label$163:;
		label$162:;
		int32 vr$23 = HMATCH( 44, 0 );
		if( vr$23 == 0 ) goto label$165;
		{
			ISLAST$1 = 0;
		}
		goto label$164;
		label$165:;
		{
			ISLAST$1 = -1;
		}
		label$164:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0u ) goto label$167;
		{
			if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$169;
			{
				ERRREPORT( 119, 0, (uint8*)0u );
			}
			label$169:;
			label$168:;
			int32 vr$26 = RTLFILEINPUTGET( DSTEXPR$1 );
			if( vr$26 != 0 ) goto label$171;
			{
				goto label$144;
			}
			label$171:;
			label$170:;
		}
		label$167:;
		label$166:;
	}
	label$161:;
	if( ISLAST$1 == 0 ) goto label$159;
	label$160:;
	fb$result$1 = -1;
	label$144:;
	return fb$result$1;
}

int32 CFILESTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$486:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 4 );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 4 );
	int32 ISLOCK$1;
	__builtin_memset( &ISLOCK$1, 0, 4 );
	fb$result$1 = 0;
	{
		uint32 TMP$119$2;
		TMP$119$2 = (uint32)TK$1;
		goto label$489;
		label$490:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$5 = HFILEOPEN( 0 );
			fb$result$1 = -(vr$5 != (struct $7ASTNODE*)0u);
		}
		goto label$488;
		label$491:;
		{
			struct $7ASTNODE* vr$7 = HFILECLOSE( 0 );
			fb$result$1 = -(vr$7 != (struct $7ASTNODE*)0u);
		}
		goto label$488;
		label$492:;
		{
			LEXSKIPTOKEN( 2048 );
			HMATCH( 35, 0 );
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8 );
			FILENUM$1 = vr$9;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$494;
			{
				goto label$487;
			}
			label$494:;
			label$493:;
			int32 vr$10 = LEXGETTOKEN( 0 );
			if( vr$10 == 44 ) goto label$496;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$495;
			label$496:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$495:;
			struct $7ASTNODE* vr$11 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$11;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$498;
			{
				goto label$487;
			}
			label$498:;
			label$497:;
			int32 vr$12 = RTLFILESEEK( FILENUM$1, EXPR1$1 );
			fb$result$1 = vr$12;
		}
		goto label$488;
		label$499:;
		{
			int32 vr$13 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$13 == 35 ) goto label$501;
			{
				goto label$487;
			}
			label$501:;
			label$500:;
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$14 = HFILEPUT( 0 );
			fb$result$1 = -(vr$14 != (struct $7ASTNODE*)0u);
		}
		goto label$488;
		label$502:;
		{
			int32 vr$16 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$16 == 35 ) goto label$504;
			{
				goto label$487;
			}
			label$504:;
			label$503:;
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$17 = HFILEGET( 0 );
			fb$result$1 = -(vr$17 != (struct $7ASTNODE*)0u);
		}
		goto label$488;
		label$505:;
		{
			if( TK$1 != 475 ) goto label$507;
			{
				ISLOCK$1 = -1;
			}
			goto label$506;
			label$507:;
			{
				ISLOCK$1 = 0;
			}
			label$506:;
			LEXSKIPTOKEN( 2048 );
			HMATCH( 35, 0 );
			struct $7ASTNODE* vr$19 = HMATCHEXPR( 8 );
			FILENUM$1 = vr$19;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$509;
			{
				goto label$487;
			}
			label$509:;
			label$508:;
			int32 vr$20 = LEXGETTOKEN( 0 );
			if( vr$20 == 44 ) goto label$511;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$510;
			label$511:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$510:;
			struct $7ASTNODE* vr$21 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$21;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$513;
			{
				goto label$487;
			}
			label$513:;
			label$512:;
			int32 vr$22 = HMATCH( 284, 2048 );
			if( vr$22 == 0 ) goto label$515;
			{
				struct $7ASTNODE* vr$23 = HMATCHEXPR( 8 );
				EXPR2$1 = vr$23;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$517;
				{
					goto label$487;
				}
				label$517:;
				label$516:;
			}
			goto label$514;
			label$515:;
			{
				struct $7ASTNODE* vr$24 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR2$1 = vr$24;
			}
			label$514:;
			int32 vr$25 = RTLFILELOCK( ISLOCK$1, FILENUM$1, EXPR1$1, EXPR2$1 );
			fb$result$1 = vr$25;
		}
		goto label$488;
		label$518:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$26 = HFILERENAME( 0 );
			fb$result$1 = -(vr$26 != (struct $7ASTNODE*)0u);
		}
		goto label$488;
		label$489:;
		static const void* tmp$120[21] = {
			&&label$490,
			&&label$491,
			&&label$492,
			&&label$499,
			&&label$502,
			&&label$488,
			&&label$488,
			&&label$505,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$518,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$488,
			&&label$505,
		};
		if( (TMP$119$2 - 468u) > 20u ) goto label$488;
		goto *tmp$120[TMP$119$2 - 468u];
		label$488:;
	}
	label$487:;
	return fb$result$1;
}

struct $7ASTNODE* CFILEFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$519:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		uint32 TMP$121$2;
		TMP$121$2 = (uint32)TK$1;
		goto label$522;
		label$523:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$3 = LEXGETTOKEN( 0 );
			if( vr$3 == 40 ) goto label$525;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$524;
			label$525:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$524:;
			struct $7ASTNODE* vr$4 = HMATCHEXPR( 8 );
			FILENUM$1 = vr$4;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$527;
			{
				goto label$520;
			}
			label$527:;
			label$526:;
			int32 vr$5 = LEXGETTOKEN( 0 );
			if( vr$5 == 41 ) goto label$529;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$528;
			label$529:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$528:;
			struct $7ASTNODE* vr$6 = RTLFILETELL( FILENUM$1 );
			fb$result$1 = vr$6;
		}
		goto label$521;
		label$530:;
		{
			$8LEXCHECK TMP$122$3;
			if( TK$1 != 476 ) goto label$531;
			TMP$122$3 = 8192;
			goto label$555;
			label$531:;
			TMP$122$3 = 2048;
			label$555:;
			LEXSKIPTOKEN( TMP$122$3 );
			int32 vr$7 = LEXGETTOKEN( 0 );
			if( vr$7 == 40 ) goto label$533;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$532;
			label$533:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$532:;
			struct $7ASTNODE* vr$8 = HMATCHEXPR( 8 );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$535;
			{
				goto label$520;
			}
			label$535:;
			label$534:;
			int32 vr$9 = HMATCH( 44, 0 );
			if( vr$9 == 0 ) goto label$537;
			{
				HMATCH( 35, 0 );
				struct $7ASTNODE* vr$10 = HMATCHEXPR( 8 );
				FILENUM$1 = vr$10;
				if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$539;
				{
					goto label$520;
				}
				label$539:;
				label$538:;
			}
			goto label$536;
			label$537:;
			{
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$11;
			}
			label$536:;
			int32 vr$12 = LEXGETTOKEN( 0 );
			if( vr$12 == 41 ) goto label$541;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$540;
			label$541:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$540:;
			struct $7ASTNODE* vr$13 = RTLFILESTRINPUT( EXPR$1, FILENUM$1, TK$1 );
			fb$result$1 = vr$13;
		}
		goto label$521;
		label$542:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$14 = HFILEOPEN( -1 );
			fb$result$1 = vr$14;
		}
		goto label$521;
		label$543:;
		{
			struct $7ASTNODE* vr$15 = HFILECLOSE( -1 );
			fb$result$1 = vr$15;
		}
		goto label$521;
		label$544:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( vr$16 == 40 ) goto label$546;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$545;
			label$546:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$545:;
			struct $7ASTNODE* vr$17 = HFILEPUT( -1 );
			fb$result$1 = vr$17;
			int32 vr$18 = LEXGETTOKEN( 0 );
			if( vr$18 == 41 ) goto label$548;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$547;
			label$548:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$547:;
		}
		goto label$521;
		label$549:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$19 = LEXGETTOKEN( 0 );
			if( vr$19 == 40 ) goto label$551;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$550;
			label$551:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$550:;
			struct $7ASTNODE* vr$20 = HFILEGET( -1 );
			fb$result$1 = vr$20;
			int32 vr$21 = LEXGETTOKEN( 0 );
			if( vr$21 == 41 ) goto label$553;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$552;
			label$553:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$552:;
		}
		goto label$521;
		label$554:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$22 = HFILERENAME( -1 );
			fb$result$1 = vr$22;
		}
		goto label$521;
		label$522:;
		static const void* tmp$123[16] = {
			&&label$542,
			&&label$543,
			&&label$523,
			&&label$544,
			&&label$549,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$530,
			&&label$530,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$521,
			&&label$554,
		};
		if( (TMP$121$2 - 468u) > 15u ) goto label$521;
		goto *tmp$123[TMP$121$2 - 468u];
		label$521:;
	}
	label$520:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static struct $7ASTNODE* HFILECLOSE( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$172:;
	int32 CNT$1;
	__builtin_memset( &CNT$1, 0, 4 );
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* PROC$1;
	__builtin_memset( &PROC$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	if( ISFUNC$1 == 0 ) goto label$175;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( vr$4 == 40 ) goto label$177;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$176;
		label$177:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$176:;
	}
	label$175:;
	label$174:;
	CNT$1 = 0;
	label$178:;
	{
		HMATCH( 35, 0 );
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILENUM$1 = vr$5;
		if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$182;
		{
			if( CNT$1 != 0 ) goto label$184;
			{
			}
			goto label$183;
			label$184:;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$6;
			}
			label$183:;
		}
		label$182:;
		label$181:;
		struct $7ASTNODE* vr$7 = RTLFILECLOSE( FILENUM$1, ISFUNC$1 );
		PROC$1 = vr$7;
		if( PROC$1 != (struct $7ASTNODE*)0u ) goto label$186;
		{
			goto label$173;
		}
		label$186:;
		label$185:;
		if( ISFUNC$1 == 0 ) goto label$188;
		{
			goto label$179;
		}
		label$188:;
		label$187:;
		CNT$1 = CNT$1 + 1;
	}
	label$180:;
	int32 vr$9 = HMATCH( 44, 0 );
	if( vr$9 != 0 ) goto label$178;
	label$179:;
	if( ISFUNC$1 == 0 ) goto label$190;
	{
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 41 ) goto label$192;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$191;
		label$192:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$191:;
	}
	label$190:;
	label$189:;
	fb$result$1 = PROC$1;
	label$173:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEPUT( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$193:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 4 );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 4 );
	struct $7ASTNODE* SRCEXPR$1;
	__builtin_memset( &SRCEXPR$1, 0, 4 );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 4 );
	int32 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 4 );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 != 35 ) goto label$196;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$196:;
	label$195:;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 8 );
	FILEEXPR$1 = vr$8;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0u ) goto label$198;
	{
		goto label$194;
	}
	label$198:;
	label$197:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 44 ) goto label$200;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$199;
	label$200:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$199:;
	struct $7ASTNODE* vr$10 = CEXPRESSION(  );
	POSEXPR$1 = vr$10;
	if( POSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$202;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$202:;
	label$201:;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 == 44 ) goto label$204;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$203;
	label$204:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$203:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( 8 );
	SRCEXPR$1 = vr$12;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$206;
	{
		goto label$194;
	}
	label$206:;
	label$205:;
	if( (-(*(int32*)SRCEXPR$1 == 16) | -(*(int32*)SRCEXPR$1 == 23)) == 0 ) goto label$208;
	{
		ASTDELTREE( SRCEXPR$1 );
		ERRREPORT( 14, -1, (uint8*)0u );
		if( ISFUNC$1 == 0 ) goto label$210;
		{
			HSKIPUNTIL( 41, 0, 0, 0 );
		}
		goto label$209;
		label$210:;
		{
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$209:;
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$18;
		goto label$194;
	}
	label$208:;
	label$207:;
	ISARRAY$1 = 0;
	int32 vr$19 = LEXGETTOKEN( 0 );
	if( vr$19 != 40 ) goto label$212;
	{
		int32 vr$20 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$20 != 41 ) goto label$214;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$216;
			{
				int32 vr$22 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$22;
				if( ISARRAY$1 == 0 ) goto label$218;
				{
					if( (*(int32*)((uint8*)S$1 + 28) & 511) != 17 ) goto label$220;
					{
						ASTDELTREE( SRCEXPR$1 );
						ERRREPORT( 24, -1, (uint8*)0u );
						if( ISFUNC$1 == 0 ) goto label$222;
						{
							HSKIPUNTIL( 41, 0, 0, 0 );
						}
						goto label$221;
						label$222:;
						{
							HSKIPUNTIL( -1, 0, 0, 0 );
						}
						label$221:;
						struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
						fb$result$1 = vr$25;
						goto label$194;
					}
					label$220:;
					label$219:;
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
				}
				label$218:;
				label$217:;
			}
			label$216:;
			label$215:;
		}
		label$214:;
		label$213:;
	}
	label$212:;
	label$211:;
	int32 vr$26 = HMATCH( 44, 0 );
	if( vr$26 == 0 ) goto label$224;
	{
		if( ISARRAY$1 == 0 ) goto label$226;
		{
			ERRREPORT( 277, 0, (uint8*)0u );
			struct $7ASTNODE* vr$27 = CEXPRESSION(  );
			ELMEXPR$1 = vr$27;
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$228;
			{
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$228:;
			label$227:;
		}
		goto label$225;
		label$226:;
		{
			{
				int32 TMP$95$4;
				TMP$95$4 = *(int32*)((uint8*)SRCEXPR$1 + 4) & 511;
				if( TMP$95$4 == 17 ) goto label$231;
				label$232:;
				if( TMP$95$4 != 18 ) goto label$230;
				label$231:;
				{
					ERRREPORT( 277, 0, (uint8*)0u );
					struct $7ASTNODE* vr$30 = CEXPRESSION(  );
					ELMEXPR$1 = vr$30;
					if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$234;
					{
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0u;
					}
					label$234:;
					label$233:;
				}
				goto label$229;
				label$230:;
				{
					struct $7ASTNODE* vr$31 = CEXPRESSION(  );
					ELMEXPR$1 = vr$31;
					if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$237;
					{
						ERRREPORT( 9, 0, (uint8*)0u );
					}
					label$237:;
					label$236:;
				}
				label$235:;
				label$229:;
			}
		}
		label$225:;
		if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$239;
		{
			if( ((*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) & 480) == 0 ) goto label$241;
			{
				ERRREPORTWARN( 2, (uint8*)0u, 1, (uint8*)0u );
			}
			label$241:;
			label$240:;
			if( (*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) == 8 ) goto label$243;
			{
				struct $7ASTNODE* vr$37 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, ELMEXPR$1, 0, (int32*)0u );
				ELMEXPR$1 = vr$37;
				if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$245;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
				}
				label$245:;
				label$244:;
			}
			label$243:;
			label$242:;
		}
		label$239:;
		label$238:;
	}
	goto label$223;
	label$224:;
	{
		ELMEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$223:;
	if( ISARRAY$1 != 0 ) goto label$247;
	{
		struct $7ASTNODE* vr$38 = RTLFILEPUT( FILEEXPR$1, POSEXPR$1, SRCEXPR$1, ELMEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$38;
	}
	goto label$246;
	label$247:;
	{
		struct $7ASTNODE* vr$39 = RTLFILEPUTARRAY( FILEEXPR$1, POSEXPR$1, SRCEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$39;
	}
	label$246:;
	label$194:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEGET( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$248:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 4 );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 4 );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 4 );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 4 );
	struct $7ASTNODE* IOBEXPR$1;
	__builtin_memset( &IOBEXPR$1, 0, 4 );
	int32 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 4 );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	int32 vr$8 = LEXGETTOKEN( 0 );
	if( vr$8 != 35 ) goto label$251;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$251:;
	label$250:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( 8 );
	FILEEXPR$1 = vr$9;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0u ) goto label$253;
	{
		goto label$249;
	}
	label$253:;
	label$252:;
	int32 vr$10 = LEXGETTOKEN( 0 );
	if( vr$10 == 44 ) goto label$255;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$254;
	label$255:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$254:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	POSEXPR$1 = vr$11;
	int32 vr$12 = LEXGETTOKEN( 0 );
	if( vr$12 == 44 ) goto label$257;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$256;
	label$257:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$256:;
	struct $7ASTNODE* vr$13 = CVARORDEREF( 0 );
	DSTEXPR$1 = vr$13;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$259;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		if( ISFUNC$1 == 0 ) goto label$261;
		{
			HSKIPUNTIL( 41, 0, 0, 0 );
		}
		goto label$260;
		label$261:;
		{
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$260:;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$14;
		goto label$249;
	}
	label$259:;
	label$258:;
	ISARRAY$1 = 0;
	int32 vr$15 = LEXGETTOKEN( 0 );
	if( vr$15 != 40 ) goto label$263;
	{
		int32 vr$16 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$16 != 41 ) goto label$265;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$267;
			{
				int32 vr$18 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$18;
				if( ISARRAY$1 == 0 ) goto label$269;
				{
					if( (*(int32*)((uint8*)S$1 + 28) & 511) != 17 ) goto label$271;
					{
						ERRREPORT( 24, -1, (uint8*)0u );
						if( ISFUNC$1 == 0 ) goto label$273;
						{
							HSKIPUNTIL( 41, 0, 0, 0 );
						}
						goto label$272;
						label$273:;
						{
							HSKIPUNTIL( -1, 0, 0, 0 );
						}
						label$272:;
						struct $7ASTNODE* vr$21 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
						fb$result$1 = vr$21;
						goto label$249;
					}
					label$271:;
					label$270:;
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
				}
				label$269:;
				label$268:;
			}
			label$267:;
			label$266:;
		}
		label$265:;
		label$264:;
	}
	label$263:;
	label$262:;
	int32 vr$22 = HMATCH( 44, 0 );
	if( vr$22 == 0 ) goto label$275;
	{
		struct $7ASTNODE* vr$23 = CEXPRESSION(  );
		ELMEXPR$1 = vr$23;
		if( ISARRAY$1 == 0 ) goto label$277;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$279;
			{
				ERRREPORT( 277, 0, (uint8*)0u );
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$279:;
			label$278:;
		}
		goto label$276;
		label$277:;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$281;
			{
				{
					int32 TMP$96$5;
					TMP$96$5 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
					if( TMP$96$5 == 17 ) goto label$284;
					label$285:;
					if( TMP$96$5 != 18 ) goto label$283;
					label$284:;
					{
						ERRREPORT( 277, 0, (uint8*)0u );
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0u;
					}
					goto label$282;
					label$283:;
					{
						if( ((*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) & 480) == 0 ) goto label$288;
						{
							ERRREPORTWARN( 2, (uint8*)0u, 1, (uint8*)0u );
						}
						label$288:;
						label$287:;
						if( (*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) == 8 ) goto label$290;
						{
							struct $7ASTNODE* vr$31 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, ELMEXPR$1, 0, (int32*)0u );
							ELMEXPR$1 = vr$31;
							if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$292;
							{
								ERRREPORT( 17, -1, (uint8*)0u );
							}
							label$292:;
							label$291:;
						}
						label$290:;
						label$289:;
					}
					label$286:;
					label$282:;
				}
			}
			label$281:;
			label$280:;
		}
		label$276:;
	}
	goto label$274;
	label$275:;
	{
		ELMEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$274:;
	int32 vr$32 = HMATCH( 44, 0 );
	if( vr$32 == 0 ) goto label$294;
	{
		struct $7ASTNODE* vr$33 = CVARORDEREF( 0 );
		IOBEXPR$1 = vr$33;
		if( IOBEXPR$1 == (struct $7ASTNODE*)0u ) goto label$296;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)IOBEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$298;
			{
				int32 TMP$97$4;
				int32 TMP$98$4;
				int32 DTYPE$4;
				DTYPE$4 = *(int32*)((uint8*)S$1 + 28) & 511;
				if( (DTYPE$4 & 480) == 0 ) goto label$299;
				TMP$97$4 = 24;
				goto label$556;
				label$299:;
				TMP$97$4 = DTYPE$4 & 31;
				label$556:;
				if( (DTYPE$4 & 480) == 0 ) goto label$300;
				TMP$98$4 = 24;
				goto label$557;
				label$300:;
				TMP$98$4 = DTYPE$4 & 31;
				label$557:;
				if( ((-(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$97$4 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 272)) | -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$98$4 * 28)) != 0)) | -((DTYPE$4 & 480) != 0)) == 0 ) goto label$302;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$302:;
				label$301:;
			}
			label$298:;
			label$297:;
		}
		goto label$295;
		label$296:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
		}
		label$295:;
	}
	goto label$293;
	label$294:;
	{
		IOBEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$293:;
	if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$304;
	{
		ERRREPORT( 119, 0, (uint8*)0u );
	}
	label$304:;
	label$303:;
	if( IOBEXPR$1 == (struct $7ASTNODE*)0u ) goto label$306;
	{
		if( (*(int32*)((uint8*)IOBEXPR$1 + 4) & 512) == 0 ) goto label$308;
		{
			ERRREPORT( 119, 0, (uint8*)0u );
		}
		label$308:;
		label$307:;
	}
	label$306:;
	label$305:;
	if( ISARRAY$1 != 0 ) goto label$310;
	{
		struct $7ASTNODE* vr$53 = RTLFILEGET( FILEEXPR$1, POSEXPR$1, DSTEXPR$1, ELMEXPR$1, IOBEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$53;
	}
	goto label$309;
	label$310:;
	{
		struct $7ASTNODE* vr$54 = RTLFILEGETARRAY( FILEEXPR$1, POSEXPR$1, DSTEXPR$1, IOBEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$54;
	}
	label$309:;
	label$249:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEOPEN( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$311:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 4 );
	struct $7ASTNODE* FMODE$1;
	__builtin_memset( &FMODE$1, 0, 4 );
	struct $7ASTNODE* FACCESS$1;
	__builtin_memset( &FACCESS$1, 0, 4 );
	struct $7ASTNODE* FLOCK$1;
	__builtin_memset( &FLOCK$1, 0, 4 );
	struct $7ASTNODE* FLEN$1;
	__builtin_memset( &FLEN$1, 0, 4 );
	struct $7ASTNODE* FENCODING$1;
	__builtin_memset( &FENCODING$1, 0, 4 );
	int32 SHORT_FORM$1;
	__builtin_memset( &SHORT_FORM$1, 0, 4 );
	int32 FILE_MODE$1;
	__builtin_memset( &FILE_MODE$1, 0, 4 );
	int32 ACCESS_MODE$1;
	__builtin_memset( &ACCESS_MODE$1, 0, 4 );
	int32 LOCK_MODE$1;
	__builtin_memset( &LOCK_MODE$1, 0, 4 );
	int32 RECORD_LEN$1;
	__builtin_memset( &RECORD_LEN$1, 0, 4 );
	$10FBOPENKIND OPEN_KIND$1;
	__builtin_memset( &OPEN_KIND$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	OPEN_KIND$1 = 0;
	SHORT_FORM$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$314;
	{
		{
			FBSTRING TMP$99$3;
			uint8* vr$14 = LEXGETTEXT(  );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			FBSTRING* vr$16 = fb_StrUcase2( (FBSTRING*)vr$15, 0 );
			fb_StrInit( (void*)&TMP$99$3, -1, (void*)vr$16, -1, 0 );
			int32 vr$19 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"CONS", 5 );
			if( vr$19 != 0 ) goto label$316;
			label$317:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$319;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 1;
				}
				label$319:;
				label$318:;
			}
			goto label$315;
			label$316:;
			int32 vr$23 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"ERR", 4 );
			if( vr$23 != 0 ) goto label$320;
			label$321:;
			{
				LEXSKIPTOKEN( 2048 );
				OPEN_KIND$1 = 2;
			}
			goto label$315;
			label$320:;
			int32 vr$25 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"PIPE", 5 );
			if( vr$25 != 0 ) goto label$322;
			label$323:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$325;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 3;
				}
				label$325:;
				label$324:;
			}
			goto label$315;
			label$322:;
			int32 vr$29 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"SCRN", 5 );
			if( vr$29 != 0 ) goto label$326;
			label$327:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$329;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 4;
				}
				label$329:;
				label$328:;
			}
			goto label$315;
			label$326:;
			int32 vr$33 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"LPT", 4 );
			if( vr$33 != 0 ) goto label$330;
			label$331:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$333;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 5;
				}
				label$333:;
				label$332:;
			}
			goto label$315;
			label$330:;
			int32 vr$37 = fb_StrCompare( (void*)&TMP$99$3, -1, (void*)"COM", 4 );
			if( vr$37 != 0 ) goto label$334;
			label$335:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$337;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 6;
				}
				label$337:;
				label$336:;
			}
			label$334:;
			label$315:;
			fb_StrDelete( (FBSTRING*)&TMP$99$3 );
		}
	}
	label$314:;
	label$313:;
	if( ISFUNC$1 == 0 ) goto label$339;
	{
		int32 vr$41 = LEXGETTOKEN( 0 );
		if( vr$41 == 40 ) goto label$341;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$340;
		label$341:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$340:;
	}
	label$339:;
	label$338:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$343;
	{
		OPEN_KIND$1 = 7;
	}
	label$343:;
	label$342:;
	{
		uint32 TMP$106$2;
		TMP$106$2 = (uint32)OPEN_KIND$1;
		goto label$345;
		label$346:;
		{
			struct $7ASTNODE* vr$42 = HMATCHEXPR( 17 );
			FILENAME$1 = vr$42;
			if( FILENAME$1 != (struct $7ASTNODE*)0u ) goto label$348;
			{
				goto label$312;
			}
			label$348:;
			label$347:;
			if( ISFUNC$1 == 0 ) goto label$350;
			{
				HMATCH( 44, 0 );
			}
			label$350:;
			label$349:;
			{
				if( OPEN_KIND$1 == 0 ) goto label$353;
				label$354:;
				if( OPEN_KIND$1 != 7 ) goto label$352;
				label$353:;
				{
					if( ISFUNC$1 == 0 ) goto label$356;
					{
						{
							int32 TMP$107$7;
							int32 vr$43 = LEXGETTOKEN( 0 );
							TMP$107$7 = vr$43;
							if( TMP$107$7 == 281 ) goto label$359;
							label$360:;
							if( TMP$107$7 == 473 ) goto label$359;
							label$361:;
							if( TMP$107$7 != 376 ) goto label$358;
							label$359:;
							{
							}
							goto label$357;
							label$358:;
							{
								SHORT_FORM$1 = -1;
							}
							label$362:;
							label$357:;
						}
					}
					goto label$355;
					label$356:;
					{
						int32 vr$44 = HMATCH( 44, 0 );
						if( vr$44 == 0 ) goto label$364;
						{
							SHORT_FORM$1 = -1;
						}
						label$364:;
						label$363:;
					}
					label$355:;
				}
				label$352:;
				label$351:;
			}
		}
		goto label$344;
		label$365:;
		{
			struct $7ASTNODE* vr$45 = ASTNEWCONSTSTR( (uint8*)"" );
			FILENAME$1 = vr$45;
		}
		goto label$344;
		label$345:;
		static const void* tmp$124[8] = {
			&&label$346,
			&&label$365,
			&&label$365,
			&&label$346,
			&&label$365,
			&&label$346,
			&&label$346,
			&&label$346,
		};
		if( TMP$106$2 > 7u ) goto label$365;
		goto *tmp$124[TMP$106$2 - 0u];
		label$344:;
	}
	if( SHORT_FORM$1 == 0 ) goto label$367;
	{
		FMODE$1 = FILENAME$1;
		FILENAME$1 = (struct $7ASTNODE*)0u;
		HMATCH( 35, 0 );
		struct $7ASTNODE* vr$46 = HMATCHEXPR( 8 );
		FILENUM$1 = vr$46;
		if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$369;
		{
			goto label$312;
		}
		label$369:;
		label$368:;
		int32 vr$47 = LEXGETTOKEN( 0 );
		if( vr$47 == 44 ) goto label$371;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$370;
		label$371:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$370:;
		struct $7ASTNODE* vr$48 = HMATCHEXPR( 17 );
		FILENAME$1 = vr$48;
		if( FILENAME$1 != (struct $7ASTNODE*)0u ) goto label$373;
		{
			goto label$312;
		}
		label$373:;
		label$372:;
		int32 vr$49 = HMATCH( 44, 0 );
		if( vr$49 == 0 ) goto label$375;
		{
			int32 vr$50 = LEXGETTOKEN( 0 );
			if( vr$50 == 44 ) goto label$377;
			{
				struct $7ASTNODE* vr$51 = HMATCHEXPR( 8 );
				FLEN$1 = vr$51;
				if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$379;
				{
					goto label$312;
				}
				label$379:;
				label$378:;
			}
			label$377:;
			label$376:;
			int32 vr$52 = HMATCH( 44, 0 );
			if( vr$52 == 0 ) goto label$381;
			{
				int32 vr$53 = LEXGETTOKEN( 0 );
				if( vr$53 == 44 ) goto label$383;
				{
					struct $7ASTNODE* vr$54 = HMATCHEXPR( 17 );
					FACCESS$1 = vr$54;
					if( FACCESS$1 != (struct $7ASTNODE*)0u ) goto label$385;
					{
						goto label$312;
					}
					label$385:;
					label$384:;
				}
				label$383:;
				label$382:;
				int32 vr$55 = HMATCH( 44, 0 );
				if( vr$55 == 0 ) goto label$387;
				{
					struct $7ASTNODE* vr$56 = HMATCHEXPR( 17 );
					FLOCK$1 = vr$56;
					if( FLOCK$1 != (struct $7ASTNODE*)0u ) goto label$389;
					{
						goto label$312;
					}
					label$389:;
					label$388:;
				}
				label$387:;
				label$386:;
			}
			label$381:;
			label$380:;
		}
		label$375:;
		label$374:;
		if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$391;
		{
			struct $7ASTNODE* vr$57 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FLEN$1 = vr$57;
		}
		label$391:;
		label$390:;
		if( FACCESS$1 != (struct $7ASTNODE*)0u ) goto label$393;
		{
			struct $7ASTNODE* vr$58 = ASTNEWCONSTSTR( (uint8*)"" );
			FACCESS$1 = vr$58;
		}
		label$393:;
		label$392:;
		if( FLOCK$1 != (struct $7ASTNODE*)0u ) goto label$395;
		{
			struct $7ASTNODE* vr$59 = ASTNEWCONSTSTR( (uint8*)"" );
			FLOCK$1 = vr$59;
		}
		label$395:;
		label$394:;
		if( ISFUNC$1 == 0 ) goto label$397;
		{
			int32 vr$60 = LEXGETTOKEN( 0 );
			if( vr$60 == 41 ) goto label$399;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$398;
			label$399:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$398:;
		}
		label$397:;
		label$396:;
		struct $7ASTNODE* vr$61 = RTLFILEOPENSHORT( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, ISFUNC$1 );
		fb$result$1 = vr$61;
		goto label$312;
	}
	label$367:;
	label$366:;
	int32 vr$62 = HMATCH( 281, 2048 );
	if( vr$62 == 0 ) goto label$401;
	{
		{
			FBSTRING TMP$108$3;
			uint8* vr$63 = LEXGETTEXT(  );
			FBSTRING* vr$64 = fb_StrAllocTempDescZ( (uint8*)vr$63 );
			FBSTRING* vr$65 = fb_StrUcase2( (FBSTRING*)vr$64, 0 );
			fb_StrInit( (void*)&TMP$108$3, -1, (void*)vr$65, -1, 0 );
			int32 vr$68 = fb_StrCompare( (void*)&TMP$108$3, -1, (void*)"INPUT", 6 );
			if( vr$68 != 0 ) goto label$403;
			label$404:;
			{
				FILE_MODE$1 = 2;
			}
			goto label$402;
			label$403:;
			int32 vr$70 = fb_StrCompare( (void*)&TMP$108$3, -1, (void*)"OUTPUT", 7 );
			if( vr$70 != 0 ) goto label$405;
			label$406:;
			{
				FILE_MODE$1 = 3;
			}
			goto label$402;
			label$405:;
			int32 vr$72 = fb_StrCompare( (void*)&TMP$108$3, -1, (void*)"BINARY", 7 );
			if( vr$72 != 0 ) goto label$407;
			label$408:;
			{
				FILE_MODE$1 = 0;
			}
			goto label$402;
			label$407:;
			int32 vr$74 = fb_StrCompare( (void*)&TMP$108$3, -1, (void*)"RANDOM", 7 );
			if( vr$74 != 0 ) goto label$409;
			label$410:;
			{
				FILE_MODE$1 = 1;
			}
			goto label$402;
			label$409:;
			int32 vr$76 = fb_StrCompare( (void*)&TMP$108$3, -1, (void*)"APPEND", 7 );
			if( vr$76 != 0 ) goto label$411;
			label$412:;
			{
				FILE_MODE$1 = 4;
			}
			goto label$402;
			label$411:;
			{
				fb_StrDelete( (FBSTRING*)&TMP$108$3 );
				goto label$312;
			}
			label$413:;
			label$402:;
			fb_StrDelete( (FBSTRING*)&TMP$108$3 );
		}
		LEXSKIPTOKEN( 2048 );
	}
	goto label$400;
	label$401:;
	{
		FILE_MODE$1 = 1;
	}
	label$400:;
	struct $7ASTNODE* vr$80 = ASTNEWCONSTI( (int64)FILE_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FMODE$1 = vr$80;
	if( ISFUNC$1 == 0 ) goto label$415;
	{
		HMATCH( 44, 0 );
	}
	label$415:;
	label$414:;
	FENCODING$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$417;
	{
		{
			if( FILE_MODE$1 == 2 ) goto label$420;
			label$421:;
			if( FILE_MODE$1 == 3 ) goto label$420;
			label$422:;
			if( FILE_MODE$1 != 4 ) goto label$419;
			label$420:;
			{
				int32 vr$81 = HMATCH( 482, 2048 );
				if( vr$81 == 0 ) goto label$424;
				{
					struct $7ASTNODE* vr$82 = HMATCHEXPR( 17 );
					FENCODING$1 = vr$82;
					if( FENCODING$1 != (struct $7ASTNODE*)0u ) goto label$426;
					{
						goto label$312;
					}
					label$426:;
					label$425:;
					if( ISFUNC$1 == 0 ) goto label$428;
					{
						HMATCH( 44, 0 );
					}
					label$428:;
					label$427:;
				}
				label$424:;
				label$423:;
			}
			label$419:;
			label$418:;
		}
	}
	label$417:;
	label$416:;
	int32 vr$83 = HMATCHIDORKW( (uint8*)"ACCESS", 2048 );
	if( vr$83 == 0 ) goto label$430;
	{
		int32 vr$84 = HMATCHIDORKW( (uint8*)"WRITE", 2048 );
		if( vr$84 == 0 ) goto label$432;
		{
			ACCESS_MODE$1 = 2;
		}
		goto label$431;
		label$432:;
		int32 vr$85 = HMATCHIDORKW( (uint8*)"READ", 2048 );
		if( vr$85 == 0 ) goto label$433;
		{
			int32 vr$86 = HMATCH( 474, 0 );
			if( vr$86 == 0 ) goto label$435;
			{
				ACCESS_MODE$1 = 3;
			}
			goto label$434;
			label$435:;
			{
				ACCESS_MODE$1 = 1;
			}
			label$434:;
		}
		label$433:;
		label$431:;
	}
	goto label$429;
	label$430:;
	{
		ACCESS_MODE$1 = 0;
	}
	label$429:;
	struct $7ASTNODE* vr$88 = ASTNEWCONSTI( (int64)ACCESS_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FACCESS$1 = vr$88;
	if( ISFUNC$1 == 0 ) goto label$437;
	{
		HMATCH( 44, 0 );
	}
	label$437:;
	label$436:;
	int32 vr$89 = HMATCH( 312, 2048 );
	if( vr$89 == 0 ) goto label$439;
	{
		LOCK_MODE$1 = 0;
	}
	goto label$438;
	label$439:;
	int32 vr$90 = HMATCHIDORKW( (uint8*)"LOCK", 2048 );
	if( vr$90 == 0 ) goto label$440;
	{
		int32 vr$91 = HMATCHIDORKW( (uint8*)"WRITE", 2048 );
		if( vr$91 == 0 ) goto label$442;
		{
			LOCK_MODE$1 = 2;
		}
		goto label$441;
		label$442:;
		int32 vr$92 = HMATCHIDORKW( (uint8*)"READ", 2048 );
		if( vr$92 == 0 ) goto label$443;
		{
			int32 vr$93 = HMATCH( 474, 2048 );
			if( vr$93 == 0 ) goto label$445;
			{
				LOCK_MODE$1 = 3;
			}
			goto label$444;
			label$445:;
			{
				LOCK_MODE$1 = 1;
			}
			label$444:;
		}
		label$443:;
		label$441:;
	}
	goto label$438;
	label$440:;
	{
		LOCK_MODE$1 = 0;
	}
	label$438:;
	struct $7ASTNODE* vr$95 = ASTNEWCONSTI( (int64)LOCK_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FLOCK$1 = vr$95;
	if( ISFUNC$1 == 0 ) goto label$447;
	{
		HMATCH( 44, 0 );
	}
	label$447:;
	label$446:;
	int32 vr$96 = HMATCH( 376, 2048 );
	if( vr$96 != 0 ) goto label$449;
	{
		ERRREPORT( 5, 0, (uint8*)0u );
	}
	label$449:;
	label$448:;
	HMATCH( 35, 0 );
	struct $7ASTNODE* vr$97 = HMATCHEXPR( 8 );
	FILENUM$1 = vr$97;
	if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$451;
	{
		goto label$312;
	}
	label$451:;
	label$450:;
	if( ISFUNC$1 == 0 ) goto label$453;
	{
		HMATCH( 44, 0 );
	}
	label$453:;
	label$452:;
	int32 vr$98 = HMATCHIDORKW( (uint8*)"LEN", 2048 );
	if( vr$98 == 0 ) goto label$455;
	{
		int32 vr$99 = CASSIGNTOKEN(  );
		if( vr$99 != 0 ) goto label$457;
		{
			ERRREPORT( 10, 0, (uint8*)0u );
			struct $7ASTNODE* vr$100 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FLEN$1 = vr$100;
		}
		goto label$456;
		label$457:;
		{
			struct $7ASTNODE* vr$101 = HMATCHEXPR( 8 );
			FLEN$1 = vr$101;
			if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$459;
			{
				goto label$312;
			}
			label$459:;
			label$458:;
		}
		label$456:;
	}
	goto label$454;
	label$455:;
	{
		struct $7ASTNODE* vr$102 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		FLEN$1 = vr$102;
	}
	label$454:;
	if( ISFUNC$1 == 0 ) goto label$461;
	{
		int32 vr$103 = LEXGETTOKEN( 0 );
		if( vr$103 == 41 ) goto label$463;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$462;
		label$463:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$462:;
	}
	label$461:;
	label$460:;
	struct $7ASTNODE* vr$104 = RTLFILEOPEN( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, FENCODING$1, ISFUNC$1, OPEN_KIND$1 );
	fb$result$1 = vr$104;
	label$312:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILERENAME( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$464:;
	struct $7ASTNODE* FILENAME_OLD$1;
	__builtin_memset( &FILENAME_OLD$1, 0, 4 );
	struct $7ASTNODE* FILENAME_NEW$1;
	__builtin_memset( &FILENAME_NEW$1, 0, 4 );
	int32 MATCHPRNT$1;
	__builtin_memset( &MATCHPRNT$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( ISFUNC$1 == 0 ) goto label$467;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( vr$4 == 40 ) goto label$469;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$468;
		label$469:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$468:;
	}
	goto label$466;
	label$467:;
	{
		int32 vr$5 = HMATCH( 40, 0 );
		MATCHPRNT$1 = vr$5;
	}
	label$466:;
	struct $7ASTNODE* vr$6 = HMATCHEXPR( 17 );
	FILENAME_OLD$1 = vr$6;
	if( FILENAME_OLD$1 != (struct $7ASTNODE*)0u ) goto label$471;
	{
		goto label$465;
	}
	label$471:;
	label$470:;
	if( ISFUNC$1 == 0 ) goto label$473;
	{
		int32 vr$7 = LEXGETTOKEN( 0 );
		if( vr$7 == 44 ) goto label$475;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$474;
		label$475:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$474:;
	}
	goto label$472;
	label$473:;
	{
		int32 vr$8 = HMATCH( 376, 2048 );
		if( vr$8 != 0 ) goto label$477;
		{
			int32 vr$9 = HMATCH( 44, 0 );
			if( vr$9 != 0 ) goto label$479;
			{
				ERRREPORT( 5, 0, (uint8*)0u );
			}
			label$479:;
			label$478:;
		}
		label$477:;
		label$476:;
	}
	label$472:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( 17 );
	FILENAME_NEW$1 = vr$10;
	if( FILENAME_NEW$1 != (struct $7ASTNODE*)0u ) goto label$481;
	{
		goto label$465;
	}
	label$481:;
	label$480:;
	if( (ISFUNC$1 | MATCHPRNT$1) == 0 ) goto label$483;
	{
		int32 vr$12 = LEXGETTOKEN( 0 );
		if( vr$12 == 41 ) goto label$485;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$484;
		label$485:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$484:;
	}
	label$483:;
	label$482:;
	struct $7ASTNODE* vr$13 = RTLFILERENAME( FILENAME_NEW$1, FILENAME_OLD$1, ISFUNC$1 );
	fb$result$1 = vr$13;
	label$465:;
	return fb$result$1;
}
