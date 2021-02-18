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
typedef int64 $12FB_PARSEROPT;
typedef int64 $9FB_ERRMSG;
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint16 TEXTW[1025];
	};
	int64 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int64 PRDPOS;
		int64 HASESC;
	};
	int64 SUFFIXCHAR;
	int64 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 2128 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int64 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint64 CURRCHAR;
	uint64 LAHDCHAR;
	int64 LINENUM;
	int64 LASTTK_ID;
	int64 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int64 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint16* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int64 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint16* BUFFPTRW;
			uint16 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 25088 );
typedef int64 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int64 DTYPE;
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
	int64 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 152 );
struct $13FB_CMPSTMT_DO {
	int64 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 40 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 24 );
struct $13FB_CMPSTMT_IF {
	int64 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int64 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 32 );
typedef int64 $8FB_TOKEN;
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int64 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 32 );
struct $19FB_CMPSTMT_SELCONST {
	int64 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int64 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 32 );
struct $17FB_CMPSTMT_SELECT {
	int64 ISCONST;
	struct $8FBSYMBOL* SYM;
	int64 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 88 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int64 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 24 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int64 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 16 );
typedef int64 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 8 );
struct $16FB_CMPSTMT_SCOPE {
	int64 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 8 );
struct $13FB_CMPSTMTSTK {
	int64 ID;
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
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 176 );
typedef int64 $13FB_VAREXPROPT;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 240 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzexprzvariable( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTUNDEF( int64, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
void ASTADDUNSCOPED( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCONST( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWIDX( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTBUILDBOUNDCHK( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDPTRCHK( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWNIDXARRAY( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $7ASTNODE* _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( struct $7ASTNODE*, int64, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDMULTIDEREF( int64, struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTUDT( struct $7ASTNODE* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBFINDVARBYSUFFIX( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBFINDVARBYDEFTYPE( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP, struct $7ASTNODE*, struct $7ASTNODE*, $9FB_ERRMSG* );
struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
void SYMBCHECKDYNAMICARRAYDIMENSIONS( struct $8FBSYMBOL*, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int64, struct $8FBSYMBOL*, int64, int64, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
int64 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
void LEXCHECKTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int64 );
struct $7ASTNODE* CHIGHESTPRECEXPR( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLu7INTEGER( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINu7INTEGER( struct $10FBSYMCHAIN*, int64 );
struct $7ASTNODE* CWITHVARIABLE( int64 );
struct $7ASTNODE* CFUNCTIONCALL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, $12FB_PARSEROPT );
struct $7ASTNODE* CPROCCALL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, int64, $12FB_PARSEROPT );
struct $7ASTNODE* CMETHODCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARSEROPT );
struct $7ASTNODE* CUDTMEMBER( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, int64, $12FB_PARSEROPT );
struct $7ASTNODE* CMEMBERACCESS( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* CMEMBERDEREF( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
static struct $7ASTNODE* CDYNAMICARRAYINDEX( struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HINDEXEXPR( void );
static struct $7ASTNODE* HCHECKINTEGERINDEX( struct $7ASTNODE* );
static struct $7ASTNODE* CFIXEDSIZEARRAYINDEX( struct $8FBSYMBOL* );
static struct $7ASTNODE* HBUILDFIELD( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
static struct $7ASTNODE* HFIELDACCESS( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64 );
static struct $8FBSYMBOL* HMEMBERID( struct $8FBSYMBOL* );
static struct $7ASTNODE* HSTRINDEXING( int64, struct $7ASTNODE*, struct $7ASTNODE* );
static int64 HMULTIDEREF( void );
static struct $8FBSYMBOL* HVARADDUNDECL( uint8*, int64 );
static struct $7ASTNODE* HMAKEARRAYIDX( struct $8FBSYMBOL* );
static struct $7ASTNODE* HIMPFIELD( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, int64, int64, $12FB_PARSEROPT );
typedef int64 $11AST_OPFLAGS;
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$81$;
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 16 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 24 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $10TSTACKNODE* TOS;
	int64 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 48 );
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 24 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 16 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int64 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 696 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 80 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 8 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 16 );
struct $7SYMBCTX {
	int64 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int64 CHAINPOOLHEAD;
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
	int64 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int64 FBARRAY_DATA;
	int64 FBARRAY_PTR;
	int64 FBARRAY_SIZE;
	int64 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int64 FBARRAYDIM_LBOUND;
	int64 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 199248 );
extern struct $7SYMBCTX SYMB$;
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
typedef int64 $10FB_OUTTYPE;
typedef int64 $10FB_BACKEND;
typedef int64 $13FB_COMPTARGET;
typedef int64 $10FB_CPUTYPE;
typedef int64 $10FB_FPUTYPE;
typedef int64 $9FB_FPMODE;
typedef int64 $17FB_VECTORIZELEVEL;
typedef int64 $12FB_ASMSYNTAX;
typedef int64 $7FB_LANG;
typedef int64 $10FB_PDCHECK;
typedef int64 $11FB_MODEVIEW;
struct $12FBCMMLINEOPT {
	$10FB_OUTTYPE OUTTYPE;
	int64 PPONLY;
	$10FB_BACKEND BACKEND;
	$13FB_COMPTARGET TARGET;
	$10FB_CPUTYPE CPUTYPE;
	$10FB_FPUTYPE FPUTYPE;
	$9FB_FPMODE FPMODE;
	$17FB_VECTORIZELEVEL VECTORIZE;
	int64 OPTLEVEL;
	$12FB_ASMSYNTAX ASMSYNTAX;
	$7FB_LANG LANG;
	int64 FORCELANG;
	int64 DEBUG;
	int64 DEBUGINFO;
	int64 ASSERTIONS;
	int64 ERRORCHECK;
	int64 RESUMEERR;
	int64 EXTRAERRCHK;
	int64 ERRLOCATION;
	int64 ARRAYBOUNDCHK;
	int64 NULLPTRCHK;
	int64 PROFILE;
	int64 WARNINGLEVEL;
	int64 SHOWERROR;
	int64 MAXERRORS;
	$10FB_PDCHECK PDCHECKOPT;
	int64 GOSUBSETJMP;
	int64 VALISTASPTR;
	int64 EXPORT;
	int64 MSBITFIELDS;
	int64 MULTITHREADED;
	int64 GFX;
	int64 PIC;
	int64 STACKSIZE;
	int64 OBJINFO;
	int64 SHOWINCLUDES;
	$11FB_MODEVIEW MODEVIEW;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBCMMLINEOPT ) == 296 );
typedef int64 $12FB_TARGETOPT;
struct $8FBTARGET {
	uint8* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 40 );
typedef int64 $13FBFILE_FORMAT;
struct $6FBFILE {
	int64 NUM;
	uint8 NAME[261];
	uint8* INCFILE;
	int64 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 296 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 16 );
typedef int64 $11FB_LANG_OPT;
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
__FB_STATIC_ASSERT( sizeof( struct $11FB_LANG_CTX ) == 72 );
struct $8FBOPTION {
	int64 BASE;
	int64 PARAMMODE;
	int64 EXPLICIT;
	int64 PROCPUBLIC;
	int64 ESCAPESTR;
	int64 DYNAMIC;
	int64 GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBOPTION ) == 56 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 88 );
struct $5FBENV {
	struct $5TLIST PREDEFINES;
	struct $5TLIST PREINCLUDES;
	struct $5TLIST INCLUDEPATHS;
	struct $12FBCMMLINEOPT CLOPT;
	struct $8FBTARGET TARGET;
	int64 WCHAR_DOCONV;
	int64 UNDERSCOREPREFIX;
	int64 POINTERSIZE;
	struct $6FBFILE INF;
	struct $6FBFILE OUTF;
	int64 PPFILE_NUM;
	struct $5THASH FILENAMEHASH;
	struct $5THASH INCFILEHASH;
	struct $5THASH INCONCEHASH;
	int64 INCLUDEREC;
	struct $6FBMAIN MAIN;
	struct $11FB_LANG_CTX LANG;
	struct $8FBOPTION OPT;
	int64 INITED;
	int64 RESTARTS;
	int64 DORESTART;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	int64 FBCTINF_STARTED;
};
__FB_STATIC_ASSERT( sizeof( struct $5FBENV ) == 1584 );
extern struct $5FBENV ENV$;
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int64 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 426512 );
extern struct $7LEX_CTX LEX$;
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 64 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int64 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 176 );
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int64 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint64 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int64 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int64 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int64 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 328 );
extern struct $9PARSERCTX PARSER$;

struct $7ASTNODE* CUDTMEMBER( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* VAREXPR$1, int64 CHECK_ARRAY$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$90:;
	int64 IS_PTR$1;
	IS_PTR$1 = -1ll;
	int64 MASK$1;
	MASK$1 = DTYPE$1 & 261632ll;
	label$92:;
	{
		struct $8FBSYMBOL* FLD$2;
		struct $8FBSYMBOL* vr$2 = HMEMBERID( SUBTYPE$1 );
		FLD$2 = vr$2;
		if( FLD$2 != (struct $8FBSYMBOL*)0ull ) goto label$96;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$91;
		}
		label$96:;
		label$95:;
		{
			uint64 TMP$100$3;
			TMP$100$3 = *(uint64*)FLD$2;
			goto label$98;
			label$99:;
			{
				LEXSKIPTOKEN( 2048ll );
				ASTDELTREE( VAREXPR$1 );
				struct $7ASTNODE* vr$4 = ASTBUILDCONST( FLD$2 );
				fb$result$1 = vr$4;
				goto label$91;
			}
			goto label$97;
			label$100:;
			{
				LEXSKIPTOKEN( 2048ll );
				ASTDELTREE( VAREXPR$1 );
				VAREXPR$1 = (struct $7ASTNODE*)0ull;
				int64 vr$5 = LEXGETTOKEN( 0ll );
				if( vr$5 == 46ll ) goto label$102;
				{
					fb$result$1 = (struct $7ASTNODE*)0ull;
					goto label$91;
				}
				label$102:;
				label$101:;
			}
			goto label$97;
			label$103:;
			{
				LEXSKIPTOKEN( 2048ll );
				DTYPE$1 = *(int64*)((uint8*)FLD$2 + 56ll) | MASK$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$2 + 64ll);
				if( IS_PTR$1 != 0ll ) goto label$105;
				{
					struct $7ASTNODE* vr$9 = ASTNEWADDROF( VAREXPR$1 );
					VAREXPR$1 = vr$9;
				}
				label$105:;
				label$104:;
				struct $7ASTNODE* vr$10 = HFIELDACCESS( VAREXPR$1, FLD$2, DTYPE$1, SUBTYPE$1, CHECK_ARRAY$1 );
				VAREXPR$1 = vr$10;
				int64 vr$13 = LEXGETTOKEN( 0ll );
				if( (((int64)-((DTYPE$1 & 511ll) != 20ll) | (int64)-(vr$13 != 46ll)) | (int64)-(*(int64*)VAREXPR$1 == 25ll)) == 0ll ) goto label$107;
				{
					fb$result$1 = VAREXPR$1;
					goto label$91;
				}
				label$107:;
				label$106:;
				IS_PTR$1 = 0ll;
			}
			goto label$97;
			label$108:;
			{
				ASTDELTREE( VAREXPR$1 );
				struct $7ASTNODE* vr$19 = _Z11CVARIABLEEXP8FBSYMBOLu7INTEGER( FLD$2, CHECK_ARRAY$1 );
				VAREXPR$1 = vr$19;
				DTYPE$1 = *(int64*)((uint8*)FLD$2 + 56ll) | MASK$1;
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$2 + 64ll);
				{
					int64 TMP$101$5;
					int64 TMP$102$5;
					if( (DTYPE$1 & 480ll) == 0ll ) goto label$109;
					TMP$101$5 = 24ll;
					goto label$120;
					label$109:;
					TMP$101$5 = DTYPE$1 & 31ll;
					label$120:;
					TMP$102$5 = TMP$101$5;
					if( TMP$102$5 != 20ll ) goto label$111;
					label$112:;
					{
						int64 vr$25 = LEXGETTOKEN( 0ll );
						if( vr$25 == 46ll ) goto label$114;
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
				IS_PTR$1 = 0ll;
			}
			goto label$97;
			label$116:;
			{
				if( IS_PTR$1 == 0ll ) goto label$118;
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
				ERRREPORTEX( 21ll, (uint8*)"CUDTMEMBER", 0ll, 1ll, (uint8*)0ull );
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$91;
			}
			goto label$97;
			label$98:;
			static const void* tmp$104[12ll] = {
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
			if( (TMP$100$3 - 1ull) > 11ull ) goto label$119;
			goto *tmp$104[TMP$100$3 - 1ull];
			label$97:;
		}
		LEXSKIPTOKEN( 2112ll );
	}
	label$94:;
	goto label$92;
	label$93:;
	fb$result$1 = VAREXPR$1;
	label$91:;
	return fb$result$1;
}

void CUDTTYPEMEMBER( int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int64* IS_FIXLENSTR$1 )
{
	label$121:;
	label$123:;
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 46ll ) goto label$124;
	{
		if( (*DTYPE$1 & 31ll) == 20ll ) goto label$126;
		{
			goto label$124;
		}
		label$126:;
		label$125:;
		LEXSKIPTOKEN( 64ll );
		struct $8FBSYMBOL* SYM$2;
		struct $8FBSYMBOL* vr$4 = HMEMBERID( *SUBTYPE$1 );
		SYM$2 = vr$4;
		if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$128;
		{
			LEXSKIPTOKEN( 2048ll );
			*DTYPE$1 = *(int64*)((uint8*)SYM$2 + 56ll);
			*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 64ll);
			*LGT$1 = *(int64*)((uint8*)SYM$2 + 80ll);
			*IS_FIXLENSTR$1 = (int64)-((*(int64*)((uint8*)SYM$2 + 24ll) & 2097152ll) != 0ll);
			if( *(int64*)SYM$2 != 2ll ) goto label$130;
			{
				{
					int64 TMP$105$5;
					TMP$105$5 = *DTYPE$1 & 511ll;
					if( TMP$105$5 == 7ll ) goto label$133;
					label$134:;
					if( TMP$105$5 == 4ll ) goto label$133;
					label$135:;
					if( TMP$105$5 == 17ll ) goto label$133;
					label$136:;
					if( TMP$105$5 != 18ll ) goto label$132;
					label$133:;
					{
						*IS_FIXLENSTR$1 = -1ll;
						*LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$2 + 96ll) + 80ll);
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

struct $7ASTNODE* CMEMBERACCESS( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$137:;
	if( *(int64*)EXPR$1 != 9ll ) goto label$140;
	{
		struct $7ASTNODE* vr$2 = ASTBUILDCALLRESULTUDT( EXPR$1 );
		EXPR$1 = vr$2;
	}
	label$140:;
	label$139:;
	struct $7ASTNODE* vr$3 = ASTNEWADDROF( EXPR$1 );
	struct $7ASTNODE* vr$4 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, vr$3, -1ll, 0ll );
	fb$result$1 = vr$4;
	label$138:;
	return fb$result$1;
}

struct $7ASTNODE* CMEMBERDEREF( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* VAREXPR$1, int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$160:;
	int64 DEREFCNT$1;
	int64 LGT$1;
	struct $7ASTNODE* IDXEXPR$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	label$162:;
	{
		IDXEXPR$1 = (struct $7ASTNODE*)0ull;
		{
			int64 TMP$109$3;
			int64 vr$1 = LEXGETTOKEN( 0ll );
			TMP$109$3 = vr$1;
			if( TMP$109$3 != 398ll ) goto label$166;
			label$167:;
			{
				DEREFCNT$1 = 0ll;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$169;
				{
					LEXSKIPTOKEN( 64ll );
					DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll);
					{
						int64 TMP$110$6;
						TMP$110$6 = DTYPE$1 & 511ll;
						if( TMP$110$6 == 0ll ) goto label$172;
						label$173:;
						if( TMP$110$6 != 23ll ) goto label$171;
						label$172:;
						{
							ERRREPORT( 71ll, -1ll, (uint8*)0ull );
							DTYPE$1 = 8ll;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
						}
						goto label$170;
						label$171:;
						if( TMP$110$6 != 20ll ) goto label$174;
						label$175:;
						{
						}
						goto label$170;
						label$174:;
						{
							ERRREPORT( 24ll, -1ll, (uint8*)0ull );
							DTYPE$1 = 8ll;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
						}
						label$176:;
						label$170:;
					}
					if( *(int64*)((uint8*)&ENV$ + 352ll) == 0ll ) goto label$178;
					{
						struct $7ASTNODE* vr$14 = ASTBUILDPTRCHK( VAREXPR$1 );
						VAREXPR$1 = vr$14;
					}
					label$178:;
					label$177:;
					int64 vr$15 = HMULTIDEREF(  );
					DEREFCNT$1 = DEREFCNT$1 + vr$15;
					struct $7ASTNODE* vr$17 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, VAREXPR$1, CHECK_ARRAY$1, 0ll );
					VAREXPR$1 = vr$17;
				}
				goto label$168;
				label$169:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 198824ll) != (struct $8FBSYMBOL*)0ull ) goto label$180;
					{
						ERRREPORT( 28ll, -1ll, (uint8*)0ull );
						goto label$163;
					}
					label$180:;
					label$179:;
					struct $8FBSYMBOL* PROC$5;
					$9FB_ERRMSG ERR_NUM$5;
					struct $8FBSYMBOL* vr$19 = SYMBFINDUOPOVLPROC( 77ll, VAREXPR$1, &ERR_NUM$5 );
					PROC$5 = vr$19;
					if( PROC$5 != (struct $8FBSYMBOL*)0ull ) goto label$182;
					{
						ERRREPORT( 28ll, -1ll, (uint8*)0ull );
						goto label$163;
					}
					label$182:;
					label$181:;
					struct $7ASTNODE* vr$20 = ASTBUILDCALL( PROC$5, VAREXPR$1, (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
					VAREXPR$1 = vr$20;
					if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$184;
					{
						goto label$161;
					}
					label$184:;
					label$183:;
					LEXSKIPTOKEN( 64ll );
					int64 vr$21 = HMULTIDEREF(  );
					DEREFCNT$1 = DEREFCNT$1 + vr$21;
					struct $7ASTNODE* vr$25 = CMEMBERACCESS( *(int64*)((uint8*)VAREXPR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll), VAREXPR$1 );
					VAREXPR$1 = vr$25;
				}
				label$168:;
				if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$186;
				{
					goto label$161;
				}
				label$186:;
				label$185:;
				if( *(int64*)VAREXPR$1 != 25ll ) goto label$188;
				{
					if( DEREFCNT$1 <= 0ll ) goto label$190;
					{
						ERRREPORT( 28ll, -1ll, (uint8*)0ull );
					}
					label$190:;
					label$189:;
					goto label$163;
				}
				label$188:;
				label$187:;
				DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
				if( DEREFCNT$1 <= 0ll ) goto label$192;
				{
					struct $7ASTNODE* vr$29 = ASTBUILDMULTIDEREF( DEREFCNT$1, VAREXPR$1, DTYPE$1, SUBTYPE$1 );
					VAREXPR$1 = vr$29;
					if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$194;
					{
						goto label$161;
					}
					label$194:;
					label$193:;
					DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
					SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
				}
				label$192:;
				label$191:;
			}
			goto label$165;
			label$166:;
			if( TMP$109$3 != 91ll ) goto label$195;
			label$196:;
			{
				LEXSKIPTOKEN( 0ll );
				struct $7ASTNODE* vr$32 = HINDEXEXPR(  );
				IDXEXPR$1 = vr$32;
				int64 vr$33 = LEXGETTOKEN( 0ll );
				if( vr$33 == 93ll ) goto label$198;
				{
					ERRREPORT( 17ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 93ll, -1ll, 0ll, 0ll );
				}
				goto label$197;
				label$198:;
				{
					LEXSKIPTOKEN( 0ll );
				}
				label$197:;
				{
					int64 TMP$111$5;
					TMP$111$5 = DTYPE$1 & 511ll;
					if( TMP$111$5 == 17ll ) goto label$201;
					label$202:;
					if( TMP$111$5 == 18ll ) goto label$201;
					label$203:;
					if( TMP$111$5 == 4ll ) goto label$201;
					label$204:;
					if( TMP$111$5 != 7ll ) goto label$200;
					label$201:;
					{
						struct $7ASTNODE* vr$35 = HCHECKINTEGERINDEX( IDXEXPR$1 );
						struct $7ASTNODE* vr$36 = HSTRINDEXING( DTYPE$1, VAREXPR$1, vr$35 );
						VAREXPR$1 = vr$36;
						IDXEXPR$1 = (struct $7ASTNODE*)0ull;
						DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
						SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
					}
					goto label$199;
					label$200:;
					if( TMP$111$5 != 20ll ) goto label$205;
					label$206:;
					{
						$9FB_ERRMSG ERR_NUM$6;
						struct $8FBSYMBOL* PROC$6;
						struct $8FBSYMBOL* vr$40 = SYMBFINDSELFBOPOVLPROC( 23ll, VAREXPR$1, IDXEXPR$1, &ERR_NUM$6 );
						PROC$6 = vr$40;
						if( PROC$6 == (struct $8FBSYMBOL*)0ull ) goto label$208;
						{
							struct $7ASTNODE* vr$41 = ASTBUILDCALL( PROC$6, VAREXPR$1, IDXEXPR$1, (struct $7ASTNODE*)0ull );
							VAREXPR$1 = vr$41;
						}
						goto label$207;
						label$208:;
						{
							if( ERR_NUM$6 != 0ll ) goto label$210;
							{
								ERRREPORT( 28ll, -1ll, (uint8*)0ull );
							}
							label$210:;
							label$209:;
						}
						label$207:;
						int64 vr$42 = LEXGETTOKEN( 0ll );
						if( vr$42 != 46ll ) goto label$212;
						{
							LEXSKIPTOKEN( 64ll );
							struct $7ASTNODE* vr$45 = CMEMBERACCESS( *(int64*)((uint8*)VAREXPR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll), VAREXPR$1 );
							VAREXPR$1 = vr$45;
							if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$214;
							{
								goto label$161;
							}
							label$214:;
							label$213:;
							if( *(int64*)VAREXPR$1 != 25ll ) goto label$216;
							{
								goto label$163;
							}
							label$216:;
							label$215:;
						}
						label$212:;
						label$211:;
						DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
						SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
					}
					goto label$199;
					label$205:;
					{
						{
							int64 TMP$112$7;
							TMP$112$7 = DTYPE$1 & 511ll;
							if( TMP$112$7 == 0ll ) goto label$220;
							label$221:;
							if( TMP$112$7 != 23ll ) goto label$219;
							label$220:;
							{
								ERRREPORT( 71ll, -1ll, (uint8*)0ull );
								DTYPE$1 = 40ll;
								SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
							}
							goto label$218;
							label$219:;
							{
								if( (DTYPE$1 & 480ll) != 0ll ) goto label$224;
								{
									ERRREPORT( 28ll, -1ll, (uint8*)0ull );
									goto label$163;
								}
								label$224:;
								label$223:;
							}
							label$222:;
							label$218:;
						}
						DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll);
						int64 vr$61 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
						LGT$1 = vr$61;
						if( LGT$1 != 0ll ) goto label$226;
						{
							ERRREPORT( 71ll, -1ll, (uint8*)0ull );
							DTYPE$1 = 8ll;
							SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
							LGT$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 456ll);
						}
						label$226:;
						label$225:;
						struct $7ASTNODE* vr$62 = HCHECKINTEGERINDEX( IDXEXPR$1 );
						IDXEXPR$1 = vr$62;
						if( *(int64*)((uint8*)&ENV$ + 352ll) == 0ll ) goto label$228;
						{
							struct $7ASTNODE* vr$63 = ASTBUILDPTRCHK( VAREXPR$1 );
							VAREXPR$1 = vr$63;
						}
						label$228:;
						label$227:;
						struct $7ASTNODE* vr$64 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
						struct $7ASTNODE* vr$65 = ASTNEWBOP( 30ll, IDXEXPR$1, vr$64, (struct $8FBSYMBOL*)0ull, 1ll );
						struct $7ASTNODE* vr$66 = ASTNEWBOP( 28ll, VAREXPR$1, vr$65, (struct $8FBSYMBOL*)0ull, 1ll );
						VAREXPR$1 = vr$66;
						int64 vr$67 = LEXGETTOKEN( 0ll );
						if( vr$67 != 46ll ) goto label$230;
						{
							if( (DTYPE$1 & 511ll) == 20ll ) goto label$232;
							{
								ERRREPORT( 24ll, 0ll, (uint8*)0ull );
								goto label$163;
							}
							label$232:;
							label$231:;
							LEXSKIPTOKEN( 64ll );
							struct $7ASTNODE* vr$69 = CUDTMEMBER( DTYPE$1, SUBTYPE$1, VAREXPR$1, CHECK_ARRAY$1, 0ll );
							VAREXPR$1 = vr$69;
							if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$234;
							{
								goto label$161;
							}
							label$234:;
							label$233:;
							if( *(int64*)VAREXPR$1 != 25ll ) goto label$236;
							{
								goto label$163;
							}
							label$236:;
							label$235:;
							DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
							SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
						}
						goto label$229;
						label$230:;
						{
							struct $7ASTNODE* vr$73 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
							VAREXPR$1 = vr$73;
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

struct $7ASTNODE* CFUNCPTRORMEMBERDEREF( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* EXPR$1, int64 ISFUNCPTR$1, int64 CHECKARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$238:;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ISFUNCPTR$1 != 0ll ) goto label$241;
	{
		struct $7ASTNODE* vr$1 = CMEMBERDEREF( DTYPE$1, SUBTYPE$1, EXPR$1, CHECKARRAY$1 );
		EXPR$1 = vr$1;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$243;
		{
			goto label$239;
		}
		label$243:;
		label$242:;
		DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
		int64 vr$5 = LEXGETTOKEN( 0ll );
		if( vr$5 != 40ll ) goto label$245;
		{
			if( DTYPE$1 != 54ll ) goto label$247;
			{
				ISFUNCPTR$1 = -1ll;
			}
			label$247:;
			label$246:;
		}
		label$245:;
		label$244:;
	}
	label$241:;
	label$240:;
	if( ISFUNCPTR$1 != 0ll ) goto label$249;
	{
		fb$result$1 = EXPR$1;
		goto label$239;
	}
	label$249:;
	label$248:;
	if( *(int64*)((uint8*)&ENV$ + 352ll) == 0ll ) goto label$251;
	{
		struct $7ASTNODE* vr$6 = ASTBUILDPTRCHK( EXPR$1 );
		EXPR$1 = vr$6;
	}
	label$251:;
	label$250:;
	if( (*(int64*)((uint8*)SUBTYPE$1 + 56ll) & 511ll) == 0ll ) goto label$253;
	{
		struct $7ASTNODE* vr$9 = CFUNCTIONCALL( (struct $8FBSYMBOL*)0ull, SUBTYPE$1, EXPR$1, (struct $7ASTNODE*)0ull, 0ll );
		EXPR$1 = vr$9;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$255;
		{
			goto label$239;
		}
		label$255:;
		label$254:;
	}
	goto label$252;
	label$253:;
	{
		if( (*(int64*)((uint8*)&PARSER$ + 296ll) & 4ll) != 0ll ) goto label$257;
		{
			struct $7ASTNODE* vr$11 = CPROCCALL( (struct $8FBSYMBOL*)0ull, SUBTYPE$1, EXPR$1, (struct $7ASTNODE*)0ull, 0ll, 0ll );
			EXPR$1 = vr$11;
		}
		goto label$256;
		label$257:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$1 = vr$12;
		}
		label$256:;
	}
	label$252:;
	fb$result$1 = EXPR$1;
	label$239:;
	return fb$result$1;
}

struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLu7INTEGER( struct $8FBSYMBOL* SYM$1, int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$295:;
	struct $7ASTNODE* VAREXPR$1;
	struct $7ASTNODE* IDXEXPR$1;
	struct $7ASTNODE* DESCEXPR$1;
	int64 IS_BYREF$1;
	int64 IS_FUNCPTR$1;
	int64 IS_ARRAY$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	int64 vr$1 = SYMBCHECKACCESS( SYM$1 );
	if( vr$1 != 0ll ) goto label$298;
	{
		ERRREPORT( 202ll, 0ll, (uint8*)0ull );
	}
	label$298:;
	label$297:;
	LEXSKIPTOKEN( 4096ll );
	IS_BYREF$1 = ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 65536ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) != 0ll)) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) != 0ll);
	int64 vr$13 = SYMBISARRAY( SYM$1 );
	IS_ARRAY$1 = vr$13;
	IS_FUNCPTR$1 = 0ll;
	VAREXPR$1 = (struct $7ASTNODE*)0ull;
	IDXEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 CHECK_FIELDS$1;
	CHECK_FIELDS$1 = -1ll;
	int64 IS_NIDXARRAY$1;
	IS_NIDXARRAY$1 = 0ll;
	int64 vr$14 = LEXGETTOKEN( 0ll );
	if( ((int64)-(vr$14 == 40ll) & (int64)-((*(int64*)((uint8*)&PARSER$ + 296ll) & 4096ll) == 0ll)) == 0ll ) goto label$300;
	{
		int64 vr$19 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$19 == 41ll ) goto label$302;
		{
			if( IS_ARRAY$1 == 0ll ) goto label$304;
			{
				LEXSKIPTOKEN( 0ll );
				if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$306;
				{
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll ) goto label$308;
					{
						struct $7ASTNODE* vr$24 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
						DESCEXPR$1 = vr$24;
						ASTSETTYPE( DESCEXPR$1, 52ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll) );
						struct $7ASTNODE* vr$26 = ASTNEWDEREF( DESCEXPR$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
						DESCEXPR$1 = vr$26;
					}
					goto label$307;
					label$308:;
					{
						struct $7ASTNODE* vr$28 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll), 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
						DESCEXPR$1 = vr$28;
					}
					label$307:;
					struct $7ASTNODE* vr$29 = ASTCLONETREE( DESCEXPR$1 );
					struct $7ASTNODE* vr$30 = CDYNAMICARRAYINDEX( SYM$1, vr$29 );
					IDXEXPR$1 = vr$30;
					struct $7ASTNODE* vr$31 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( DESCEXPR$1, *(int64*)((uint8*)&SYMB$ + 199176ll), 8ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
					struct $7ASTNODE* vr$32 = ASTNEWBOP( 28ll, IDXEXPR$1, vr$31, (struct $8FBSYMBOL*)0ull, 1ll );
					IDXEXPR$1 = vr$32;
				}
				goto label$305;
				label$306:;
				{
					struct $7ASTNODE* vr$33 = CFIXEDSIZEARRAYINDEX( SYM$1 );
					IDXEXPR$1 = vr$33;
				}
				label$305:;
				int64 vr$34 = HMATCH( 41ll, 0ll );
				if( vr$34 != 0ll ) goto label$310;
				{
					ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				}
				label$310:;
				label$309:;
			}
			goto label$303;
			label$304:;
			{
				IS_FUNCPTR$1 = (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) == 54ll);
				if( ((int64)-(IS_ARRAY$1 == 0ll) & (int64)-(IS_FUNCPTR$1 == 0ll)) == 0ll ) goto label$312;
				{
					ERRREPORT( 72ll, -1ll, (uint8*)0ull );
					LEXSKIPTOKEN( 0ll );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
				}
				label$312:;
				label$311:;
			}
			label$303:;
		}
		goto label$301;
		label$302:;
		{
			if( IS_ARRAY$1 == 0ll ) goto label$314;
			{
				CHECK_FIELDS$1 = 0ll;
			}
			label$314:;
			label$313:;
		}
		label$301:;
	}
	goto label$299;
	label$300:;
	{
		if( IS_ARRAY$1 == 0ll ) goto label$316;
		{
			if( CHECK_ARRAY$1 == 0ll ) goto label$318;
			{
				ERRREPORT( 73ll, -1ll, (uint8*)0ull );
				struct $7ASTNODE* vr$41 = HMAKEARRAYIDX( SYM$1 );
				IDXEXPR$1 = vr$41;
			}
			goto label$317;
			label$318:;
			{
				CHECK_FIELDS$1 = 0ll;
				IS_NIDXARRAY$1 = -1ll;
			}
			label$317:;
		}
		label$316:;
		label$315:;
	}
	label$299:;
	struct $7ASTNODE* vr$42 = ASTNEWVAR( SYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	VAREXPR$1 = vr$42;
	if( IDXEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$320;
	{
		if( IS_BYREF$1 == 0ll ) goto label$322;
		{
			struct $7ASTNODE* vr$43 = ASTNEWBOP( 28ll, VAREXPR$1, IDXEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			VAREXPR$1 = vr$43;
		}
		goto label$321;
		label$322:;
		{
			struct $7ASTNODE* vr$44 = ASTNEWIDX( VAREXPR$1, IDXEXPR$1 );
			VAREXPR$1 = vr$44;
		}
		label$321:;
	}
	label$320:;
	label$319:;
	if( IS_BYREF$1 == 0ll ) goto label$324;
	{
		struct $7ASTNODE* vr$45 = ASTNEWDEREF( VAREXPR$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
		VAREXPR$1 = vr$45;
	}
	label$324:;
	label$323:;
	if( IS_FUNCPTR$1 != 0ll ) goto label$326;
	{
		if( CHECK_FIELDS$1 == 0ll ) goto label$328;
		{
			int64 vr$46 = LEXGETTOKEN( 0ll );
			if( vr$46 != 46ll ) goto label$330;
			{
				if( (*(int64*)((uint8*)VAREXPR$1 + 8ll) & 511ll) == 20ll ) goto label$332;
				{
					ERRREPORT( 265ll, -1ll, (uint8*)0ull );
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
					fb$result$1 = VAREXPR$1;
					goto label$296;
				}
				label$332:;
				label$331:;
				LEXSKIPTOKEN( 64ll );
				struct $7ASTNODE* vr$49 = ASTNEWADDROF( VAREXPR$1 );
				struct $7ASTNODE* vr$52 = CUDTMEMBER( *(int64*)((uint8*)VAREXPR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll), vr$49, CHECK_ARRAY$1, 0ll );
				VAREXPR$1 = vr$52;
				if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$334;
				{
					goto label$296;
				}
				label$334:;
				label$333:;
				if( *(int64*)VAREXPR$1 != 25ll ) goto label$336;
				{
					fb$result$1 = VAREXPR$1;
					goto label$296;
				}
				label$336:;
				label$335:;
				int64 vr$54 = LEXGETTOKEN( 0ll );
				if( vr$54 != 40ll ) goto label$338;
				{
					IS_FUNCPTR$1 = (int64)-((*(int64*)((uint8*)VAREXPR$1 + 8ll) & 511ll) == 54ll);
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
	if( CHECK_FIELDS$1 == 0ll ) goto label$340;
	{
		struct $7ASTNODE* vr$60 = CFUNCPTRORMEMBERDEREF( *(int64*)((uint8*)VAREXPR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll), VAREXPR$1, IS_FUNCPTR$1, CHECK_ARRAY$1 );
		VAREXPR$1 = vr$60;
	}
	goto label$339;
	label$340:;
	{
		if( IS_NIDXARRAY$1 == 0ll ) goto label$342;
		{
			struct $7ASTNODE* vr$61 = ASTNEWNIDXARRAY( VAREXPR$1 );
			VAREXPR$1 = vr$61;
		}
		label$342:;
		label$341:;
	}
	label$339:;
	fb$result$1 = VAREXPR$1;
	label$296:;
	return fb$result$1;
}

struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINu7INTEGER( struct $10FBSYMCHAIN* CHAIN_$1, int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$343:;
	uint8* ID$1;
	int64 SUFFIX$1;
	struct $8FBSYMBOL* SYM$1;
	uint8* vr$1 = LEXGETTEXT(  );
	ID$1 = vr$1;
	SUFFIX$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 16ll);
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$346;
	{
		int64 vr$4 = LEXGETCLASS( 0ll );
		if( vr$4 != 1ll ) goto label$348;
		{
			if( SUFFIX$1 != 2147483648ll ) goto label$350;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
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
	if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 8388608ll) == 0ll ) goto label$352;
	{
		if( SUFFIX$1 != 2147483648ll ) goto label$354;
		{
			int64 vr$6 = SYMBGETDEFTYPE( (uint8*)ID$1 );
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
		if( SUFFIX$1 == 2147483648ll ) goto label$356;
		{
			LEXCHECKTOKEN( 4096ll );
			SUFFIX$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 16ll);
		}
		label$356:;
		label$355:;
		struct $8FBSYMBOL* vr$11 = SYMBFINDBYCLASS( CHAIN_$1, 1ll );
		SYM$1 = vr$11;
	}
	label$351:;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$358;
	{
		if( *(int64*)((uint8*)&ENV$ + 1336ll) == 0ll ) goto label$360;
		{
			ERRREPORTUNDEF( 42ll, ID$1 );
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$344;
		}
		label$360:;
		label$359:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$362;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 8388608ll) == 0ll ) goto label$364;
			{
				struct $8FBSYMBOL* vr$13 = SYMBFINDBYCLASS( CHAIN_$1, 1ll );
				SYM$1 = vr$13;
				if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$366;
				{
					if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) ) goto label$368;
					{
						ERRREPORT( 131ll, 0ll, (uint8*)0ull );
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
		if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$370;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$344;
		}
		label$370:;
		label$369:;
		if( (*(int64*)((uint8*)&PARSER$ + 296ll) & 4ll) == 0ll ) goto label$372;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 2ll) == 0ll ) goto label$374;
			{
				if( *(int64*)((uint8*)&ENV$ + 1336ll) != 0ll ) goto label$376;
				{
					ERRREPORTWARN( 11ll, (uint8*)ID$1, 1ll, (uint8*)0ull );
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
	struct $7ASTNODE* vr$19 = _Z11CVARIABLEEXP8FBSYMBOLu7INTEGER( SYM$1, CHECK_ARRAY$1 );
	fb$result$1 = vr$19;
	label$344:;
	return fb$result$1;
}

struct $7ASTNODE* CWITHVARIABLE( int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$387:;
	struct $8FBSYMBOL* SYM$1;
	int64 DTYPE$1;
	LEXSKIPTOKEN( 64ll );
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) + 24ll);
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll);
	if( *(int64*)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) + 32ll) == 0ll ) goto label$390;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll);
	}
	label$390:;
	label$389:;
	struct $7ASTNODE* vr$16 = HIMPFIELD( SYM$1, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), CHECK_ARRAY$1, *(int64*)((uint8*)*(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) + 32ll), 0ll );
	fb$result$1 = vr$16;
	label$388:;
	return fb$result$1;
}

struct $7ASTNODE* CVARIABLE( struct $10FBSYMCHAIN* CHAIN_$1, int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$391:;
	{
		int64 TMP$114$2;
		int64 vr$1 = LEXGETCLASS( 0ll );
		TMP$114$2 = vr$1;
		if( TMP$114$2 == 0ll ) goto label$395;
		label$396:;
		if( TMP$114$2 != 2ll ) goto label$394;
		label$395:;
		{
			struct $7ASTNODE* vr$2 = _Z11CVARIABLEEXP10FBSYMCHAINu7INTEGER( CHAIN_$1, CHECK_ARRAY$1 );
			fb$result$1 = vr$2;
			goto label$392;
		}
		goto label$393;
		label$394:;
		{
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) != (struct $13FB_CMPSTMTSTK*)0ull ) goto label$399;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$392;
			}
			label$399:;
			label$398:;
			int64 vr$3 = LEXGETTOKEN( 0ll );
			if( vr$3 == 46ll ) goto label$401;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
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

struct $7ASTNODE* CIMPLICITDATAMEMBER( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, int64 CHECK_ARRAY$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$402:;
	struct $8FBSYMBOL* THIS_$1;
	THIS_$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) + 136ll);
	if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) + 16ll) & 2ll) != 0ll) & (int64)-(PARAM$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$405;
	{
		THIS_$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 104ll);
	}
	label$405:;
	label$404:;
	if( THIS_$1 != (struct $8FBSYMBOL*)0ull ) goto label$407;
	{
		ERRREPORT( 215ll, 0ll, (uint8*)0ull );
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$403;
	}
	label$407:;
	label$406:;
	if( BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$409;
	{
		BASE_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)THIS_$1 + 64ll);
	}
	label$409:;
	label$408:;
	struct $7ASTNODE* vr$10 = HIMPFIELD( THIS_$1, *(int64*)((uint8*)THIS_$1 + 56ll), BASE_PARENT$1, CHECK_ARRAY$1, -1ll, OPTIONS$1 );
	fb$result$1 = vr$10;
	label$403:;
	return fb$result$1;
}

struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$410:;
	int64 LAST_ISEXPR$1;
	int64 CHECK_ARRAY$1;
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$413;
	{
		LAST_ISEXPR$1 = (int64)-((*(int64*)((uint8*)&PARSER$ + 296ll) & 4ll) != 0ll);
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) | 4ll;
		}
		goto label$414;
		label$415:;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) & -5ll;
		}
		label$414:;
	}
	label$413:;
	label$412:;
	CHECK_ARRAY$1 = (int64)-((*(int64*)((uint8*)&PARSER$ + 296ll) & 2ll) != 0ll);
	if( (OPTIONS$1 & 1ll) != 0ll ) goto label$417;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) | 2ll;
	}
	goto label$416;
	label$417:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) & -3ll;
	}
	label$416:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$11 = CHIGHESTPRECEXPR( (struct $8FBSYMBOL*)0ull, (struct $10FBSYMCHAIN*)0ull );
	EXPR$1 = vr$11;
	if( CHECK_ARRAY$1 == 0ll ) goto label$419;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) | 2ll;
	}
	goto label$418;
	label$419:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) & -3ll;
	}
	label$418:;
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$421;
	{
		if( LAST_ISEXPR$1 == 0ll ) goto label$423;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) | 4ll;
		}
		goto label$422;
		label$423:;
		{
			*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 296ll) = *(int64*)((uint8*)&PARSER$ + 296ll) & -5ll;
		}
		label$422:;
	}
	label$421:;
	label$420:;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$425;
	{
		struct $7ASTNODE* T$2;
		if( (OPTIONS$1 & 2ll) == 0ll ) goto label$427;
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
		int64 COMPLAIN$2;
		COMPLAIN$2 = -1ll;
		{
			uint64 TMP$115$3;
			TMP$115$3 = *(uint64*)T$2;
			goto label$429;
			label$430:;
			{
				COMPLAIN$2 = 0ll;
			}
			goto label$428;
			label$431:;
			{
				COMPLAIN$2 = (int64)-((OPTIONS$1 & 16ll) != 0ll);
			}
			goto label$428;
			label$429:;
			static const void* tmp$116[17ll] = {
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
			if( (TMP$115$3 - 9ull) > 16ull ) goto label$428;
			goto *tmp$116[TMP$115$3 - 9ull];
			label$428:;
		}
		if( COMPLAIN$2 == 0ll ) goto label$433;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			ASTDELTREE( EXPR$1 );
			EXPR$1 = (struct $7ASTNODE*)0ull;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static struct $7ASTNODE* HINDEXEXPR( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$1 = CEXPRESSIONWITHNIDXARRAY( 0ll );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$13;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$2 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	{
		int64 TMP$94$2;
		int64 TMP$95$2;
		if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$16;
		TMP$94$2 = 24ll;
		goto label$434;
		label$16:;
		TMP$94$2 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
		label$434:;
		TMP$95$2 = TMP$94$2;
		if( TMP$95$2 != 8ll ) goto label$18;
		label$19:;
		{
		}
		goto label$17;
		label$18:;
		if( TMP$95$2 != 24ll ) goto label$20;
		label$21:;
		{
			ERRREPORT( 151ll, -1ll, (uint8*)0ull );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$1 = vr$7;
		}
		goto label$17;
		label$20:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$24;
			{
				ERRREPORT( 151ll, -1ll, (uint8*)0ull );
				struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$25:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* DIMEXPR$1;
	int64 DIMENSION$1;
	int64 LOWER$1;
	int64 UPPER$1;
	DIMENSION$1 = -1ll;
	EXPR$1 = (struct $7ASTNODE*)0ull;
	label$27:;
	{
		DIMENSION$1 = DIMENSION$1 + 1ll;
		if( DIMENSION$1 < *(int64*)((uint8*)SYM$1 + 104ll) ) goto label$31;
		{
			ERRREPORT( 36ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			fb$result$1 = vr$3;
			goto label$26;
		}
		label$31:;
		label$30:;
		LOWER$1 = *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (DIMENSION$1 << (4ll & 63ll)));
		UPPER$1 = *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (DIMENSION$1 << (4ll & 63ll))) + 8ll);
		struct $7ASTNODE* vr$10 = HINDEXEXPR(  );
		struct $7ASTNODE* vr$11 = HCHECKINTEGERINDEX( vr$10 );
		DIMEXPR$1 = vr$11;
		if( *(int64*)((uint8*)&ENV$ + 344ll) == 0ll ) goto label$33;
		{
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( UPPER$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$13 = ASTNEWCONSTI( LOWER$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$14 = ASTBUILDBOUNDCHK( DIMEXPR$1, vr$13, vr$12 );
			DIMEXPR$1 = vr$14;
			if( DIMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$35;
			{
				ERRREPORT( 92ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( LOWER$1, 8ll, (struct $8FBSYMBOL*)0ull );
				DIMEXPR$1 = vr$15;
			}
			label$35:;
			label$34:;
		}
		label$33:;
		label$32:;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$37;
		{
			EXPR$1 = DIMEXPR$1;
		}
		goto label$36;
		label$37:;
		{
			struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (UPPER$1 - LOWER$1) + 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$19 = ASTNEWBOP( 30ll, EXPR$1, vr$18, (struct $8FBSYMBOL*)0ull, 1ll );
			EXPR$1 = vr$19;
			struct $7ASTNODE* vr$20 = ASTNEWBOP( 28ll, EXPR$1, DIMEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			EXPR$1 = vr$20;
		}
		label$36:;
	}
	label$29:;
	int64 vr$21 = HMATCH( 44ll, 0ll );
	if( vr$21 != 0ll ) goto label$27;
	label$28:;
	if( DIMENSION$1 >= (*(int64*)((uint8*)SYM$1 + 104ll) + -1ll) ) goto label$39;
	{
		ERRREPORT( 36ll, 0ll, (uint8*)0ull );
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$25 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 80ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$26 = ASTNEWBOP( 30ll, EXPR$1, vr$25, (struct $8FBSYMBOL*)0ull, 1ll );
	EXPR$1 = vr$26;
	fb$result$1 = EXPR$1;
	label$26:;
	return fb$result$1;
}

static struct $7ASTNODE* HBUILDFIELD( struct $7ASTNODE* VAREXPR$1, struct $7ASTNODE* OFFSETEXPR$1, struct $8FBSYMBOL* FLD$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$40:;
	struct $7ASTNODE* vr$1 = ASTNEWBOP( 28ll, VAREXPR$1, OFFSETEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
	VAREXPR$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, SUBTYPE$1, 0ll );
	VAREXPR$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWFIELD( VAREXPR$1, FLD$1 );
	VAREXPR$1 = vr$3;
	fb$result$1 = VAREXPR$1;
	label$41:;
	return fb$result$1;
}

static struct $7ASTNODE* HFIELDACCESS( struct $7ASTNODE* VAREXPR$1, struct $8FBSYMBOL* FLD$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 CHECK_ARRAY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$42:;
	struct $7ASTNODE* OFFSETEXPR$1;
	struct $7ASTNODE* INDEXEXPR$1;
	struct $7ASTNODE* TREE$1;
	struct $8FBSYMBOL* DESC$1;
	struct $7ASTNODE* vr$2 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 88ll), 8ll, (struct $8FBSYMBOL*)0ull );
	OFFSETEXPR$1 = vr$2;
	if( *(int64*)((uint8*)FLD$1 + 104ll) == 0ll ) goto label$45;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( ((int64)-(vr$4 != 40ll) | (int64)-((*(int64*)((uint8*)&PARSER$ + 296ll) & 4096ll) != 0ll)) == 0ll ) goto label$47;
		{
			if( CHECK_ARRAY$1 == 0ll ) goto label$49;
			{
				ERRREPORT( 73ll, 0ll, (uint8*)0ull );
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
		int64 vr$11 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$11 != 41ll ) goto label$51;
		{
			struct $7ASTNODE* vr$12 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
			fb$result$1 = vr$12;
			goto label$43;
		}
		label$51:;
		label$50:;
		LEXSKIPTOKEN( 0ll );
		if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) == 0ll ) goto label$53;
		{
			DESC$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 136ll);
			struct $7ASTNODE* vr$16 = ASTNEWBOP( 28ll, VAREXPR$1, OFFSETEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			VAREXPR$1 = vr$16;
			struct $7ASTNODE* vr$31 = ASTNEWCONV( (((*(int64*)((uint8*)DESC$1 + 56ll) & 31ll) | ((*(int64*)((uint8*)DESC$1 + 56ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)DESC$1 + 56ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)DESC$1 + 56ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 64ll), VAREXPR$1, 24ll, (int64*)0ull );
			VAREXPR$1 = vr$31;
			TREE$1 = (struct $7ASTNODE*)0ull;
			int64 vr$32 = ASTHASSIDEFX( VAREXPR$1 );
			if( vr$32 == 0ll ) goto label$55;
			{
				struct $7ASTNODE* vr$34 = ASTREMSIDEFX( &VAREXPR$1 );
				struct $7ASTNODE* vr$35 = ASTNEWLINK( TREE$1, vr$34, 2ll );
				TREE$1 = vr$35;
			}
			label$55:;
			label$54:;
			struct $7ASTNODE* vr$36 = ASTCLONETREE( VAREXPR$1 );
			struct $7ASTNODE* vr$37 = ASTNEWDEREF( vr$36, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
			struct $7ASTNODE* vr$38 = CDYNAMICARRAYINDEX( FLD$1, vr$37 );
			INDEXEXPR$1 = vr$38;
			struct $7ASTNODE* vr$39 = ASTNEWCONSTI( *(int64*)((uint8*)&SYMB$ + 199176ll), 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$40 = ASTNEWBOP( 28ll, VAREXPR$1, vr$39, (struct $8FBSYMBOL*)0ull, 1ll );
			VAREXPR$1 = vr$40;
			struct $7ASTNODE* vr$50 = ASTNEWCONV( (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 64ll)) | ((DTYPE$1 & 261632ll) << (2ll & 63ll))) | (DTYPE$1 & 32505856ll), SUBTYPE$1, VAREXPR$1, 24ll, (int64*)0ull );
			VAREXPR$1 = vr$50;
			struct $7ASTNODE* vr$51 = ASTNEWDEREF( VAREXPR$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
			VAREXPR$1 = vr$51;
			struct $7ASTNODE* vr$52 = ASTNEWBOP( 28ll, VAREXPR$1, INDEXEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			VAREXPR$1 = vr$52;
			struct $7ASTNODE* vr$53 = ASTNEWDEREF( VAREXPR$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
			VAREXPR$1 = vr$53;
			struct $7ASTNODE* vr$54 = ASTNEWLINK( TREE$1, VAREXPR$1, 2ll );
			VAREXPR$1 = vr$54;
		}
		goto label$52;
		label$53:;
		{
			struct $7ASTNODE* vr$55 = CFIXEDSIZEARRAYINDEX( FLD$1 );
			INDEXEXPR$1 = vr$55;
			struct $7ASTNODE* vr$57 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 120ll), 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$58 = ASTNEWBOP( 28ll, INDEXEXPR$1, vr$57, (struct $8FBSYMBOL*)0ull, 1ll );
			INDEXEXPR$1 = vr$58;
			struct $7ASTNODE* vr$59 = ASTNEWBOP( 28ll, OFFSETEXPR$1, INDEXEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			OFFSETEXPR$1 = vr$59;
			struct $7ASTNODE* vr$60 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
			VAREXPR$1 = vr$60;
		}
		label$52:;
		int64 vr$61 = HMATCH( 41ll, 0ll );
		if( vr$61 != 0ll ) goto label$57;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		label$57:;
		label$56:;
	}
	goto label$44;
	label$45:;
	{
		struct $7ASTNODE* vr$62 = HBUILDFIELD( VAREXPR$1, OFFSETEXPR$1, FLD$1, DTYPE$1, SUBTYPE$1 );
		VAREXPR$1 = vr$62;
	}
	label$44:;
	fb$result$1 = VAREXPR$1;
	label$43:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HMEMBERID( struct $8FBSYMBOL* PARENT$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	struct $8FBSYMBOL* RES$1;
	if( PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$61;
	{
		ERRREPORT( 265ll, -1ll, (uint8*)0ull );
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$59;
	}
	label$61:;
	label$60:;
	{
		uint64 TMP$96$2;
		int64 vr$1 = LEXGETCLASS( 0ll );
		TMP$96$2 = (uint64)vr$1;
		goto label$63;
		label$64:;
		{
		}
		goto label$62;
		label$65:;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
			goto label$59;
		}
		goto label$62;
		label$63:;
		static const void* tmp$117[3ll] = {
			&&label$64,
			&&label$64,
			&&label$64,
		};
		if( TMP$96$2 > 2ull ) goto label$65;
		goto *tmp$117[TMP$96$2 - 0ull];
		label$62:;
	}
	RES$1 = (struct $8FBSYMBOL*)0ull;
	{
		int64 TMP$97$2;
		int64 vr$2 = LEXGETTOKEN( 0ll );
		TMP$97$2 = vr$2;
		if( TMP$97$2 != 347ll ) goto label$67;
		label$68:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			RES$1 = vr$3;
		}
		goto label$66;
		label$67:;
		if( TMP$97$2 != 348ll ) goto label$69;
		label$70:;
		{
			struct $8FBSYMBOL* vr$4 = SYMBGETCOMPDTOR( PARENT$1 );
			RES$1 = vr$4;
		}
		label$69:;
		label$66:;
	}
	if( RES$1 == (struct $8FBSYMBOL*)0ull ) goto label$72;
	{
		fb$result$1 = RES$1;
		goto label$59;
	}
	label$72:;
	label$71:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	uint8* vr$5 = LEXGETTEXT(  );
	struct $10FBSYMCHAIN* vr$6 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$5, 0ll, -1ll );
	CHAIN_$1 = vr$6;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$74;
	{
		uint8* vr$7 = LEXGETTEXT(  );
		ERRREPORTUNDEF( 18ll, vr$7 );
		LEXSKIPTOKEN( 0ll );
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
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
			if( (int64)*(uint16*)((uint8*)SYM$2 + 72ll) != (int64)*(uint16*)((uint8*)PARENT$1 + 72ll) ) goto label$82;
			{
				{
					uint64 TMP$98$5;
					TMP$98$5 = *(uint64*)SYM$2;
					goto label$84;
					label$85:;
					{
						int64 vr$14 = SYMBCHECKACCESS( SYM$2 );
						if( vr$14 != 0ll ) goto label$87;
						{
							ERRREPORT( 202ll, 0ll, (uint8*)0ull );
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
						ERRREPORTEX( 21ll, (uint8*)"HMEMBERID", 0ll, 1ll, (uint8*)0ull );
						fb$result$1 = (struct $8FBSYMBOL*)0ull;
						goto label$59;
					}
					goto label$83;
					label$84:;
					static const void* tmp$118[12ll] = {
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
					if( (TMP$98$5 - 1ull) > 11ull ) goto label$89;
					goto *tmp$118[TMP$98$5 - 1ull];
					label$83:;
				}
				fb$result$1 = SYM$2;
				goto label$59;
			}
			label$82:;
			label$81:;
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 280ll);
		}
		label$80:;
		if( SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$78;
		label$79:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
	}
	label$77:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$75;
	label$76:;
	uint8* vr$17 = LEXGETTEXT(  );
	ERRREPORTUNDEF( 18ll, vr$17 );
	LEXSKIPTOKEN( 0ll );
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	label$59:;
	return fb$result$1;
}

static struct $7ASTNODE* HSTRINDEXING( int64 DTYPE$1, struct $7ASTNODE* VAREXPR$1, struct $7ASTNODE* IDXEXPR$1 )
{
	int64 TMP$106$1;
	int64 TMP$107$1;
	int64 TMP$108$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$141:;
	struct $7ASTNODE* vr$1 = ASTUPDSTRCONCAT( VAREXPR$1 );
	VAREXPR$1 = vr$1;
	if( *(int64*)VAREXPR$1 != 9ll ) goto label$144;
	{
		ERRREPORT( 17ll, -1ll, (uint8*)0ull );
	}
	label$144:;
	label$143:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$145;
	TMP$106$1 = 24ll;
	goto label$435;
	label$145:;
	TMP$106$1 = DTYPE$1 & 31ll;
	label$435:;
	if( TMP$106$1 != 17ll ) goto label$147;
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
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$148;
	TMP$107$1 = 24ll;
	goto label$436;
	label$148:;
	TMP$107$1 = DTYPE$1 & 31ll;
	label$436:;
	if( TMP$107$1 != 7ll ) goto label$150;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll), 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$10 = ASTNEWBOP( 30ll, IDXEXPR$1, vr$9, (struct $8FBSYMBOL*)0ull, 1ll );
		IDXEXPR$1 = vr$10;
	}
	label$150:;
	label$149:;
	if( *(int64*)((uint8*)&ENV$ + 344ll) == 0ll ) goto label$152;
	{
		struct $7ASTNODE* vr$11 = ASTBUILDPTRCHK( VAREXPR$1 );
		VAREXPR$1 = vr$11;
	}
	label$152:;
	label$151:;
	struct $7ASTNODE* vr$12 = ASTNEWBOP( 28ll, VAREXPR$1, IDXEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
	VAREXPR$1 = vr$12;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$153;
	TMP$108$1 = 24ll;
	goto label$437;
	label$153:;
	TMP$108$1 = DTYPE$1 & 31ll;
	label$437:;
	if( TMP$108$1 != 7ll ) goto label$155;
	{
		DTYPE$1 = (DTYPE$1 & -512ll) | (*(int64*)((uint8*)&ENV$ + 496ll) & 511ll);
	}
	goto label$154;
	label$155:;
	{
		DTYPE$1 = (DTYPE$1 & -512ll) | 3ll;
	}
	label$154:;
	struct $7ASTNODE* vr$20 = ASTNEWDEREF( VAREXPR$1, DTYPE$1, (struct $8FBSYMBOL*)0ull, 0ll );
	fb$result$1 = vr$20;
	label$142:;
	return fb$result$1;
}

static int64 HMULTIDEREF( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$156:;
	int64 DEREFS$1;
	__builtin_memset( &DEREFS$1, 0, 8ll );
	label$158:;
	int64 vr$2 = LEXGETTOKEN( 0ll );
	if( vr$2 != 42ll ) goto label$159;
	{
		LEXSKIPTOKEN( 64ll );
		DEREFS$1 = DEREFS$1 + 1ll;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$258:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* DIMEXPR$1;
	int64 DIMENSION$1;
	int64 DIMOFFSET$1;
	DIMENSION$1 = -1ll;
	EXPR$1 = (struct $7ASTNODE*)0ull;
	label$260:;
	{
		DIMENSION$1 = DIMENSION$1 + 1ll;
		DIMOFFSET$1 = *(int64*)((uint8*)&SYMB$ + 199200ll) + (DIMENSION$1 * *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 199208ll) + 80ll));
		struct $7ASTNODE* vr$5 = HINDEXEXPR(  );
		struct $7ASTNODE* vr$6 = HCHECKINTEGERINDEX( vr$5 );
		DIMEXPR$1 = vr$6;
		if( *(int64*)((uint8*)&ENV$ + 344ll) == 0ll ) goto label$264;
		{
			struct $7ASTNODE* vr$8 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$9 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( vr$8, DIMOFFSET$1 + *(int64*)((uint8*)&SYMB$ + 199224ll), 8ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$11 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$12 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( vr$11, DIMOFFSET$1 + *(int64*)((uint8*)&SYMB$ + 199216ll), 8ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$13 = ASTBUILDBOUNDCHK( DIMEXPR$1, vr$12, vr$9 );
			DIMEXPR$1 = vr$13;
		}
		label$264:;
		label$263:;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$266;
		{
			EXPR$1 = DIMEXPR$1;
		}
		goto label$265;
		label$266:;
		{
			struct $7ASTNODE* vr$14 = ASTCLONETREE( DESCEXPR$1 );
			struct $7ASTNODE* vr$15 = _Z19ASTBUILDDEREFADDROFP7ASTNODExu7INTEGERP8FBSYMBOLS3_( vr$14, DIMOFFSET$1, 8ll, (struct $8FBSYMBOL*)0ull, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$16 = ASTNEWBOP( 30ll, EXPR$1, vr$15, (struct $8FBSYMBOL*)0ull, 1ll );
			EXPR$1 = vr$16;
			struct $7ASTNODE* vr$17 = ASTNEWBOP( 28ll, EXPR$1, DIMEXPR$1, (struct $8FBSYMBOL*)0ull, 1ll );
			EXPR$1 = vr$17;
		}
		label$265:;
	}
	label$262:;
	int64 vr$18 = HMATCH( 44ll, 0ll );
	if( vr$18 != 0ll ) goto label$260;
	label$261:;
	struct $7ASTNODE* vr$20 = ASTNEWCONSTI( *(int64*)((uint8*)SYM$1 + 80ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$21 = ASTNEWBOP( 30ll, EXPR$1, vr$20, (struct $8FBSYMBOL*)0ull, 1ll );
	EXPR$1 = vr$21;
	ASTDELTREE( DESCEXPR$1 );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$268;
	{
		SYMBCHECKDYNAMICARRAYDIMENSIONS( SYM$1, DIMENSION$1 + 1ll );
	}
	label$268:;
	label$267:;
	fb$result$1 = EXPR$1;
	label$259:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HVARADDUNDECL( uint8* ID$1, int64 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$269:;
	struct $8FBSYMBOL* S$1;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$113$1;
	*(struct $10FBARRAYDIM**)&tmp$113$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$113$1 + 8ll) = (struct $10FBARRAYDIM*)DTB$1;
	*(int64*)((uint8*)&tmp$113$1 + 16ll) = 16ll;
	*(int64*)((uint8*)&tmp$113$1 + 24ll) = 16ll;
	*(int64*)((uint8*)&tmp$113$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$113$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$113$1 + 48ll) = 1ll;
	*(int64*)((uint8*)&tmp$113$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$113$1 + 64ll) = 0ll;
	int64 ATTRIB$1;
	int64 OPTIONS$1;
	struct $7ASTNODE* VAR_$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) + 16ll) & 64ll) == 0ll ) goto label$272;
	{
		ATTRIB$1 = 2ll;
	}
	goto label$271;
	label$272:;
	{
		ATTRIB$1 = 0ll;
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$274;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1232ll) ) goto label$276;
			{
				if( (ATTRIB$1 & 57ll) != 0ll ) goto label$278;
				{
					ATTRIB$1 = ATTRIB$1 | 2ll;
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
	if( DTYPE$1 != 2147483648ll ) goto label$280;
	{
		int64 vr$8 = SYMBGETDEFTYPE( (uint8*)ID$1 );
		DTYPE$1 = vr$8;
	}
	goto label$279;
	label$280:;
	{
		ATTRIB$1 = ATTRIB$1 | 1048576ll;
	}
	label$279:;
	OPTIONS$1 = 0ll;
	if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 2ll) == 0ll ) goto label$282;
	{
		if( (*(int64*)((uint8*)&PARSER$ + 296ll) & 8ll) != 0ll ) goto label$284;
		{
			OPTIONS$1 = OPTIONS$1 | 2ll;
		}
		label$284:;
		label$283:;
	}
	goto label$281;
	label$282:;
	{
		OPTIONS$1 = OPTIONS$1 | 2ll;
	}
	label$281:;
	struct $8FBSYMBOL* vr$15 = SYMBADDVAR( (uint8*)ID$1, (uint8*)0ull, DTYPE$1, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$113$1, ATTRIB$1, OPTIONS$1 );
	S$1 = vr$15;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$286;
	{
		ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
		uint8* vr$17 = SYMBUNIQUELABEL(  );
		struct $8FBSYMBOL* vr$18 = SYMBADDVAR( (uint8*)vr$17, (uint8*)0ull, DTYPE$1, (struct $8FBSYMBOL*)0ull, 0ll, 0ll, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$113$1, ATTRIB$1, OPTIONS$1 );
		S$1 = vr$18;
	}
	goto label$285;
	label$286:;
	{
		struct $7ASTNODE* vr$19 = ASTNEWDECL( S$1, -1ll );
		VAR_$1 = vr$19;
		if( (OPTIONS$1 & 2ll) == 0ll ) goto label$288;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$289:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll ) goto label$292;
	{
		struct $7ASTNODE* vr$3 = ASTNEWVAR( SYM$1, 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$4 = ASTNEWDEREF( vr$3, 8ll, (struct $8FBSYMBOL*)0ull, *(int64*)((uint8*)&SYMB$ + 199176ll) );
		fb$result$1 = vr$4;
		goto label$290;
	}
	label$292:;
	label$291:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) == 0ll ) goto label$294;
	{
		struct $7ASTNODE* vr$8 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll), *(int64*)((uint8*)&SYMB$ + 199176ll), 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$8;
		goto label$290;
	}
	label$294:;
	label$293:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( *(int64*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll), 8ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$11;
	label$290:;
	return fb$result$1;
}

static struct $7ASTNODE* HIMPFIELD( struct $8FBSYMBOL* THIS_$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 CHECK_ARRAY$1, int64 IS_PTR$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$377:;
	struct $7ASTNODE* VAREXPR$1;
	if( IS_PTR$1 == 0ll ) goto label$380;
	{
		struct $7ASTNODE* vr$10 = ASTNEWVAR( THIS_$1, 0ll, (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll), SUBTYPE$1 );
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
	if( VAREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$382;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$378;
	}
	label$382:;
	label$381:;
	if( *(int64*)VAREXPR$1 != 25ll ) goto label$384;
	{
		fb$result$1 = VAREXPR$1;
		goto label$378;
	}
	label$384:;
	label$383:;
	DTYPE$1 = *(int64*)((uint8*)VAREXPR$1 + 8ll);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)VAREXPR$1 + 16ll);
	int64 IS_FUNCPTR$1;
	IS_FUNCPTR$1 = 0ll;
	int64 vr$17 = LEXGETTOKEN( 0ll );
	if( vr$17 != 40ll ) goto label$386;
	{
		IS_FUNCPTR$1 = (int64)-((DTYPE$1 & 511ll) == 54ll);
	}
	label$386:;
	label$385:;
	struct $7ASTNODE* vr$20 = CFUNCPTRORMEMBERDEREF( DTYPE$1, SUBTYPE$1, VAREXPR$1, IS_FUNCPTR$1, CHECK_ARRAY$1 );
	fb$result$1 = vr$20;
	label$378:;
	return fb$result$1;
}
