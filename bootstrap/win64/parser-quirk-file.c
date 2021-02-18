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
typedef int64 $8FB_TOKEN;
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
typedef int64 $8LEXCHECK;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
typedef int64 $10FBOPENKIND;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCHIDORKW( uint8*, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
int64 RTLPRINT( struct $7ASTNODE*, int64, int64, struct $7ASTNODE*, int64 );
int64 RTLPRINTSPCTAB( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLWRITE( struct $7ASTNODE*, int64, struct $7ASTNODE* );
int64 RTLPRINTUSINGINIT( struct $7ASTNODE*, int64 );
int64 RTLPRINTUSINGEND( struct $7ASTNODE*, int64 );
int64 RTLPRINTUSING( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64, int64 );
struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, $10FBOPENKIND );
struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE*, int64 );
int64 RTLFILESEEK( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* );
struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLFILELINEINPUT( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLFILELINEINPUTWSTR( int64, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLFILEINPUT( int64, struct $7ASTNODE*, int64, int64 );
int64 RTLFILEINPUTGET( struct $7ASTNODE* );
int64 RTLFILELOCK( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HFILECLOSE( int64 );
static struct $7ASTNODE* HFILEPUT( int64 );
static struct $7ASTNODE* HFILEGET( int64 );
static struct $7ASTNODE* HFILEOPEN( int64 );
static struct $7ASTNODE* HFILERENAME( int64 );
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

int64 CPRINTSTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* USINGEXPR$1;
	__builtin_memset( &USINGEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	int64 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 8ll );
	int64 ISSEMICOLON$1;
	__builtin_memset( &ISSEMICOLON$1, 0, 8ll );
	int64 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 8ll );
	int64 ISTAB$1;
	__builtin_memset( &ISTAB$1, 0, 8ll );
	int64 ISSPC$1;
	__builtin_memset( &ISSPC$1, 0, 8ll );
	int64 ISLPRINT$1;
	__builtin_memset( &ISLPRINT$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		if( TK$1 == 461ll ) goto label$14;
		label$15:;
		if( TK$1 != 63ll ) goto label$13;
		label$14:;
		{
			ISLPRINT$1 = 0ll;
		}
		goto label$12;
		label$13:;
		if( TK$1 != 462ll ) goto label$16;
		label$17:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 33554432ll) != 0ll ) goto label$19;
			{
				ERRREPORTNOTALLOWED( 33554432ll, 146ll, (uint8*)0ull );
			}
			goto label$18;
			label$19:;
			{
				ISLPRINT$1 = -1ll;
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
	LEXSKIPTOKEN( 2048ll );
	if( ISLPRINT$1 == 0ll ) goto label$22;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FILEXPR$1 = vr$12;
	}
	goto label$21;
	label$22:;
	{
		int64 vr$13 = HMATCH( 35ll, 0ll );
		if( vr$13 == 0ll ) goto label$24;
		{
			struct $7ASTNODE* vr$14 = HMATCHEXPR( 8ll );
			FILEXPR$1 = vr$14;
			if( FILEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$26;
			{
				goto label$11;
			}
			label$26:;
			label$25:;
			int64 vr$15 = LEXGETTOKEN( 0ll );
			if( vr$15 == 44ll ) goto label$28;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$27;
			label$28:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$27:;
		}
		goto label$23;
		label$24:;
		{
			struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FILEXPR$1 = vr$16;
		}
		label$23:;
	}
	label$21:;
	if( *(int64*)FILEXPR$1 == 16ll ) goto label$30;
	{
		struct $7ASTNODE* vr$19 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$19 );
	}
	label$30:;
	label$29:;
	USINGEXPR$1 = (struct $7ASTNODE*)0ull;
	EXPRESSIONS$1 = 0ll;
	label$31:;
	{
		int64 vr$20 = HMATCH( 287ll, 2048ll );
		if( vr$20 == 0ll ) goto label$35;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$37;
			{
				ERRREPORT( 3ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$21 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$21;
				int64 vr$22 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
				if( vr$22 != 0ll ) goto label$39;
				{
					goto label$11;
				}
				label$39:;
				label$38:;
			}
			label$37:;
			label$36:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 17ll );
			USINGEXPR$1 = vr$23;
			if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$41;
			{
				goto label$11;
			}
			label$41:;
			label$40:;
			int64 vr$24 = HMATCH( 59ll, 0ll );
			if( vr$24 != 0ll ) goto label$43;
			{
				ERRREPORT( 47ll, 0ll, (uint8*)0ull );
			}
			label$43:;
			label$42:;
			int64 vr$25 = RTLPRINTUSINGINIT( USINGEXPR$1, ISLPRINT$1 );
			if( vr$25 != 0ll ) goto label$45;
			{
				goto label$11;
			}
			label$45:;
			label$44:;
		}
		label$35:;
		label$34:;
		ISSPC$1 = 0ll;
		ISTAB$1 = 0ll;
		int64 vr$26 = HMATCH( 484ll, 4096ll );
		if( vr$26 == 0ll ) goto label$47;
		{
			ISSPC$1 = -1ll;
			int64 vr$27 = LEXGETTOKEN( 0ll );
			if( vr$27 == 40ll ) goto label$49;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$48;
			label$49:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$48:;
			struct $7ASTNODE* vr$28 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$28;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$51;
			{
				goto label$11;
			}
			label$51:;
			label$50:;
			int64 vr$29 = LEXGETTOKEN( 0ll );
			if( vr$29 == 41ll ) goto label$53;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$52;
			label$53:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$52:;
		}
		goto label$46;
		label$47:;
		int64 vr$30 = HMATCH( 485ll, 4096ll );
		if( vr$30 == 0ll ) goto label$54;
		{
			ISTAB$1 = -1ll;
			int64 vr$31 = LEXGETTOKEN( 0ll );
			if( vr$31 == 40ll ) goto label$56;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$55;
			label$56:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$55:;
			struct $7ASTNODE* vr$32 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$32;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$58;
			{
				goto label$11;
			}
			label$58:;
			label$57:;
			int64 vr$33 = LEXGETTOKEN( 0ll );
			if( vr$33 == 41ll ) goto label$60;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$59;
			label$60:;
			{
				LEXSKIPTOKEN( 0ll );
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
		ISCOMMA$1 = 0ll;
		ISSEMICOLON$1 = 0ll;
		int64 vr$35 = HMATCH( 44ll, 0ll );
		if( vr$35 == 0ll ) goto label$62;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$64;
			{
				ERRREPORT( 47ll, 0ll, (uint8*)0ull );
			}
			label$64:;
			label$63:;
			ISCOMMA$1 = -1ll;
		}
		goto label$61;
		label$62:;
		int64 vr$36 = HMATCH( 59ll, 0ll );
		if( vr$36 == 0ll ) goto label$65;
		{
			ISSEMICOLON$1 = -1ll;
		}
		label$65:;
		label$61:;
		if( ((ISSPC$1 | ISTAB$1) & (int64)-(ISSEMICOLON$1 == 0ll)) == 0ll ) goto label$67;
		{
			ERRREPORT( 47ll, 0ll, (uint8*)0ull );
		}
		label$67:;
		label$66:;
		if( (((int64)-(ISCOMMA$1 == 0ll) & (int64)-(ISSEMICOLON$1 == 0ll)) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$69;
		{
			goto label$32;
		}
		label$69:;
		label$68:;
		if( (ISSPC$1 | ISTAB$1) == 0ll ) goto label$71;
		{
			struct $7ASTNODE* vr$46 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$46;
			int64 vr$47 = RTLPRINTSPCTAB( FILEXPRCOPY$1, EXPR$1, ISTAB$1, ISLPRINT$1 );
			if( vr$47 != 0ll ) goto label$73;
			{
				goto label$11;
			}
			label$73:;
			label$72:;
		}
		goto label$70;
		label$71:;
		{
			if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$75;
			{
				struct $7ASTNODE* vr$48 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$48;
				int64 vr$49 = RTLPRINT( FILEXPRCOPY$1, ISCOMMA$1, ISSEMICOLON$1, EXPR$1, ISLPRINT$1 );
				if( vr$49 != 0ll ) goto label$77;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				}
				label$77:;
				label$76:;
			}
			goto label$74;
			label$75:;
			{
				struct $7ASTNODE* vr$50 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$50;
				int64 vr$51 = RTLPRINTUSING( FILEXPRCOPY$1, EXPR$1, ISCOMMA$1, ISSEMICOLON$1, ISLPRINT$1 );
				if( vr$51 != 0ll ) goto label$79;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				}
				label$79:;
				label$78:;
			}
			label$74:;
		}
		label$70:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1ll;
	}
	label$33:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) != 0ll ) goto label$31;
	label$32:;
	if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$81;
	{
		if( EXPRESSIONS$1 != 0ll ) goto label$83;
		{
			struct $7ASTNODE* vr$54 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$54;
			int64 vr$55 = RTLPRINT( FILEXPRCOPY$1, 0ll, 0ll, (struct $7ASTNODE*)0ull, ISLPRINT$1 );
			if( vr$55 != 0ll ) goto label$85;
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
		int64 vr$57 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
		if( vr$57 != 0ll ) goto label$87;
		{
			goto label$11;
		}
		label$87:;
		label$86:;
	}
	label$80:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1ll;
	label$11:;
	return fb$result$1;
}

int64 CWRITESTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$88:;
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	int64 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 8ll );
	int64 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 8ll );
	fb$result$1 = 0ll;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$6 = HMATCH( 35ll, 0ll );
	if( vr$6 == 0ll ) goto label$91;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8ll );
		FILEXPR$1 = vr$7;
		if( FILEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$93;
		{
			goto label$89;
		}
		label$93:;
		label$92:;
		int64 vr$8 = LEXGETTOKEN( 0ll );
		if( vr$8 == 44ll ) goto label$95;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$94;
		label$95:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$94:;
	}
	goto label$90;
	label$91:;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FILEXPR$1 = vr$9;
	}
	label$90:;
	if( *(int64*)FILEXPR$1 == 16ll ) goto label$97;
	{
		struct $7ASTNODE* vr$12 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$12 );
	}
	label$97:;
	label$96:;
	EXPRESSIONS$1 = 0ll;
	label$98:;
	{
		struct $7ASTNODE* vr$13 = CEXPRESSION(  );
		EXPR$1 = vr$13;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$102;
		{
			EXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$102:;
		label$101:;
		ISCOMMA$1 = 0ll;
		int64 vr$14 = HMATCH( 44ll, 0ll );
		if( vr$14 == 0ll ) goto label$104;
		{
			ISCOMMA$1 = -1ll;
		}
		label$104:;
		label$103:;
		struct $7ASTNODE* vr$15 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$15;
		if( ((int64)-(ISCOMMA$1 == 0ll) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$106;
		{
			if( EXPRESSIONS$1 != 0ll ) goto label$108;
			{
				RTLWRITE( FILEXPRCOPY$1, 0ll, (struct $7ASTNODE*)0ull );
			}
			label$108:;
			label$107:;
			goto label$99;
		}
		label$106:;
		label$105:;
		int64 vr$19 = RTLWRITE( FILEXPRCOPY$1, ISCOMMA$1, EXPR$1 );
		if( vr$19 != 0ll ) goto label$110;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
		}
		label$110:;
		label$109:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1ll;
	}
	label$100:;
	if( ISCOMMA$1 != 0ll ) goto label$98;
	label$99:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1ll;
	label$89:;
	return fb$result$1;
}

int64 CLINEINPUTSTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$111:;
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 8ll );
	int64 ISFILE$1;
	__builtin_memset( &ISFILE$1, 0, 8ll );
	int64 ADDNEWLINE$1;
	__builtin_memset( &ADDNEWLINE$1, 0, 8ll );
	int64 ISSEP$1;
	__builtin_memset( &ISSEP$1, 0, 8ll );
	int64 ADDQUESTION$1;
	__builtin_memset( &ADDQUESTION$1, 0, 8ll );
	fb$result$1 = 0ll;
	int64 vr$7 = LEXGETLOOKAHEAD( 1ll, 0ll );
	if( vr$7 == 476ll ) goto label$114;
	{
		goto label$112;
	}
	label$114:;
	label$113:;
	LEXSKIPTOKEN( 2048ll );
	LEXSKIPTOKEN( 2048ll );
	int64 vr$8 = HMATCH( 59ll, 0ll );
	ADDNEWLINE$1 = (int64)-(vr$8 == 0ll);
	ISFILE$1 = 0ll;
	int64 vr$10 = HMATCH( 35ll, 0ll );
	if( vr$10 == 0ll ) goto label$116;
	{
		ISFILE$1 = -1ll;
	}
	label$116:;
	label$115:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	EXPR$1 = vr$11;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$118;
	{
		if( ISFILE$1 == 0ll ) goto label$120;
		{
			ERRREPORT( 9ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			EXPR$1 = vr$12;
		}
		goto label$119;
		label$120:;
		{
			EXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$119:;
	}
	label$118:;
	label$117:;
	ISSEP$1 = -1ll;
	int64 vr$13 = HMATCH( 44ll, 0ll );
	if( vr$13 != 0ll ) goto label$122;
	{
		int64 vr$14 = HMATCH( 59ll, 0ll );
		if( vr$14 != 0ll ) goto label$124;
		{
			ISSEP$1 = 0ll;
			if( ((int64)-(EXPR$1 == (struct $7ASTNODE*)0ull) | ISFILE$1) == 0ll ) goto label$126;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			label$126:;
			label$125:;
		}
		goto label$123;
		label$124:;
		{
			ADDQUESTION$1 = -1ll;
		}
		label$123:;
	}
	goto label$121;
	label$122:;
	{
		ADDQUESTION$1 = 0ll;
	}
	label$121:;
	struct $7ASTNODE* vr$17 = CVARORDEREF( 0ll );
	DSTEXPR$1 = vr$17;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$128;
	{
		if( ((int64)-(EXPR$1 == (struct $7ASTNODE*)0ull) | ISFILE$1) == 0ll ) goto label$130;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
			fb$result$1 = -1ll;
			goto label$112;
		}
		goto label$129;
		label$130:;
		{
			DSTEXPR$1 = EXPR$1;
			EXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$129:;
	}
	goto label$127;
	label$128:;
	{
		if( ISSEP$1 != 0ll ) goto label$132;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		label$132:;
		label$131:;
	}
	label$127:;
	if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$134;
	{
		ERRREPORT( 119ll, 0ll, (uint8*)0ull );
	}
	label$134:;
	label$133:;
	{
		int64 TMP$95$2;
		TMP$95$2 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
		if( TMP$95$2 == 17ll ) goto label$137;
		label$138:;
		if( TMP$95$2 == 18ll ) goto label$137;
		label$139:;
		if( TMP$95$2 != 4ll ) goto label$136;
		label$137:;
		{
			int64 vr$24 = RTLFILELINEINPUT( ISFILE$1, EXPR$1, DSTEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$24;
		}
		goto label$135;
		label$136:;
		if( TMP$95$2 != 7ll ) goto label$140;
		label$141:;
		{
			int64 vr$25 = RTLFILELINEINPUTWSTR( ISFILE$1, EXPR$1, DSTEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$25;
		}
		goto label$135;
		label$140:;
		{
			ASTDELTREE( DSTEXPR$1 );
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			fb$result$1 = -1ll;
			goto label$112;
		}
		label$142:;
		label$135:;
	}
	label$112:;
	return fb$result$1;
}

int64 CINPUTSTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$143:;
	struct $7ASTNODE* FILESTREXPR$1;
	__builtin_memset( &FILESTREXPR$1, 0, 8ll );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 8ll );
	int64 ISLAST$1;
	__builtin_memset( &ISLAST$1, 0, 8ll );
	int64 ISFILE$1;
	__builtin_memset( &ISFILE$1, 0, 8ll );
	int64 ADDNEWLINE$1;
	__builtin_memset( &ADDNEWLINE$1, 0, 8ll );
	int64 ADDQUESTION$1;
	__builtin_memset( &ADDQUESTION$1, 0, 8ll );
	fb$result$1 = 0ll;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$7 = HMATCH( 59ll, 0ll );
	ADDNEWLINE$1 = (int64)-(vr$7 == 0ll);
	ADDQUESTION$1 = 0ll;
	int64 vr$9 = HMATCH( 35ll, 0ll );
	if( vr$9 == 0ll ) goto label$146;
	{
		ISFILE$1 = -1ll;
		struct $7ASTNODE* vr$10 = HMATCHEXPR( 8ll );
		FILESTREXPR$1 = vr$10;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$148;
		{
			goto label$144;
		}
		label$148:;
		label$147:;
	}
	goto label$145;
	label$146:;
	{
		ISFILE$1 = 0ll;
		int64 vr$11 = LEXGETCLASS( 0ll );
		if( vr$11 != 4ll ) goto label$150;
		{
			uint8* vr$14 = LEXGETTEXT(  );
			struct $8FBSYMBOL* vr$15 = SYMBALLOCSTRCONST( vr$14, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2080ll) );
			struct $7ASTNODE* vr$16 = ASTNEWVAR( vr$15, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			FILESTREXPR$1 = vr$16;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$149;
		label$150:;
		{
			FILESTREXPR$1 = (struct $7ASTNODE*)0ull;
			ADDQUESTION$1 = -1ll;
		}
		label$149:;
	}
	label$145:;
	if( (ISFILE$1 | (int64)-(FILESTREXPR$1 != (struct $7ASTNODE*)0ull)) == 0ll ) goto label$152;
	{
		int64 vr$19 = HMATCH( 44ll, 0ll );
		if( vr$19 != 0ll ) goto label$154;
		{
			int64 vr$20 = HMATCH( 59ll, 0ll );
			if( vr$20 != 0ll ) goto label$156;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$155;
			label$156:;
			{
				ADDQUESTION$1 = -1ll;
			}
			label$155:;
		}
		label$154:;
		label$153:;
	}
	label$152:;
	label$151:;
	int64 vr$21 = RTLFILEINPUT( ISFILE$1, FILESTREXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
	if( vr$21 != 0ll ) goto label$158;
	{
		goto label$144;
	}
	label$158:;
	label$157:;
	label$159:;
	{
		struct $7ASTNODE* vr$22 = CVARORDEREF( 0ll );
		DSTEXPR$1 = vr$22;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$163;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			DSTEXPR$1 = (struct $7ASTNODE*)0ull;
			HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
		}
		label$163:;
		label$162:;
		int64 vr$23 = HMATCH( 44ll, 0ll );
		if( vr$23 == 0ll ) goto label$165;
		{
			ISLAST$1 = 0ll;
		}
		goto label$164;
		label$165:;
		{
			ISLAST$1 = -1ll;
		}
		label$164:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$167;
		{
			if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$169;
			{
				ERRREPORT( 119ll, 0ll, (uint8*)0ull );
			}
			label$169:;
			label$168:;
			int64 vr$26 = RTLFILEINPUTGET( DSTEXPR$1 );
			if( vr$26 != 0ll ) goto label$171;
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
	if( ISLAST$1 == 0ll ) goto label$159;
	label$160:;
	fb$result$1 = -1ll;
	label$144:;
	return fb$result$1;
}

int64 CFILESTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$486:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 8ll );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 8ll );
	int64 ISLOCK$1;
	__builtin_memset( &ISLOCK$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		uint64 TMP$120$2;
		TMP$120$2 = (uint64)TK$1;
		goto label$489;
		label$490:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$5 = HFILEOPEN( 0ll );
			fb$result$1 = (int64)-(vr$5 != (struct $7ASTNODE*)0ull);
		}
		goto label$488;
		label$491:;
		{
			struct $7ASTNODE* vr$7 = HFILECLOSE( 0ll );
			fb$result$1 = (int64)-(vr$7 != (struct $7ASTNODE*)0ull);
		}
		goto label$488;
		label$492:;
		{
			LEXSKIPTOKEN( 2048ll );
			HMATCH( 35ll, 0ll );
			struct $7ASTNODE* vr$9 = HMATCHEXPR( 8ll );
			FILENUM$1 = vr$9;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$494;
			{
				goto label$487;
			}
			label$494:;
			label$493:;
			int64 vr$10 = LEXGETTOKEN( 0ll );
			if( vr$10 == 44ll ) goto label$496;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$495;
			label$496:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$495:;
			struct $7ASTNODE* vr$11 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$11;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$498;
			{
				goto label$487;
			}
			label$498:;
			label$497:;
			int64 vr$12 = RTLFILESEEK( FILENUM$1, EXPR1$1 );
			fb$result$1 = vr$12;
		}
		goto label$488;
		label$499:;
		{
			int64 vr$13 = LEXGETLOOKAHEAD( 1ll, 0ll );
			if( vr$13 == 35ll ) goto label$501;
			{
				goto label$487;
			}
			label$501:;
			label$500:;
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$14 = HFILEPUT( 0ll );
			fb$result$1 = (int64)-(vr$14 != (struct $7ASTNODE*)0ull);
		}
		goto label$488;
		label$502:;
		{
			int64 vr$16 = LEXGETLOOKAHEAD( 1ll, 0ll );
			if( vr$16 == 35ll ) goto label$504;
			{
				goto label$487;
			}
			label$504:;
			label$503:;
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$17 = HFILEGET( 0ll );
			fb$result$1 = (int64)-(vr$17 != (struct $7ASTNODE*)0ull);
		}
		goto label$488;
		label$505:;
		{
			if( TK$1 != 475ll ) goto label$507;
			{
				ISLOCK$1 = -1ll;
			}
			goto label$506;
			label$507:;
			{
				ISLOCK$1 = 0ll;
			}
			label$506:;
			LEXSKIPTOKEN( 2048ll );
			HMATCH( 35ll, 0ll );
			struct $7ASTNODE* vr$19 = HMATCHEXPR( 8ll );
			FILENUM$1 = vr$19;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$509;
			{
				goto label$487;
			}
			label$509:;
			label$508:;
			int64 vr$20 = LEXGETTOKEN( 0ll );
			if( vr$20 == 44ll ) goto label$511;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$510;
			label$511:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$510:;
			struct $7ASTNODE* vr$21 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$21;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$513;
			{
				goto label$487;
			}
			label$513:;
			label$512:;
			int64 vr$22 = HMATCH( 284ll, 2048ll );
			if( vr$22 == 0ll ) goto label$515;
			{
				struct $7ASTNODE* vr$23 = HMATCHEXPR( 8ll );
				EXPR2$1 = vr$23;
				if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$517;
				{
					goto label$487;
				}
				label$517:;
				label$516:;
			}
			goto label$514;
			label$515:;
			{
				struct $7ASTNODE* vr$24 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR2$1 = vr$24;
			}
			label$514:;
			int64 vr$25 = RTLFILELOCK( ISLOCK$1, FILENUM$1, EXPR1$1, EXPR2$1 );
			fb$result$1 = vr$25;
		}
		goto label$488;
		label$518:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$26 = HFILERENAME( 0ll );
			fb$result$1 = (int64)-(vr$26 != (struct $7ASTNODE*)0ull);
		}
		goto label$488;
		label$489:;
		static const void* tmp$121[21ll] = {
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
		if( (TMP$120$2 - 468ull) > 20ull ) goto label$488;
		goto *tmp$121[TMP$120$2 - 468ull];
		label$488:;
	}
	label$487:;
	return fb$result$1;
}

struct $7ASTNODE* CFILEFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$519:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	{
		uint64 TMP$122$2;
		TMP$122$2 = (uint64)TK$1;
		goto label$522;
		label$523:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$3 = LEXGETTOKEN( 0ll );
			if( vr$3 == 40ll ) goto label$525;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$524;
			label$525:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$524:;
			struct $7ASTNODE* vr$4 = HMATCHEXPR( 8ll );
			FILENUM$1 = vr$4;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$527;
			{
				goto label$520;
			}
			label$527:;
			label$526:;
			int64 vr$5 = LEXGETTOKEN( 0ll );
			if( vr$5 == 41ll ) goto label$529;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$528;
			label$529:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$528:;
			struct $7ASTNODE* vr$6 = RTLFILETELL( FILENUM$1 );
			fb$result$1 = vr$6;
		}
		goto label$521;
		label$530:;
		{
			$8LEXCHECK TMP$123$3;
			if( TK$1 != 476ll ) goto label$531;
			TMP$123$3 = 8192ll;
			goto label$555;
			label$531:;
			TMP$123$3 = 2048ll;
			label$555:;
			LEXSKIPTOKEN( TMP$123$3 );
			int64 vr$7 = LEXGETTOKEN( 0ll );
			if( vr$7 == 40ll ) goto label$533;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$532;
			label$533:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$532:;
			struct $7ASTNODE* vr$8 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$535;
			{
				goto label$520;
			}
			label$535:;
			label$534:;
			int64 vr$9 = HMATCH( 44ll, 0ll );
			if( vr$9 == 0ll ) goto label$537;
			{
				HMATCH( 35ll, 0ll );
				struct $7ASTNODE* vr$10 = HMATCHEXPR( 8ll );
				FILENUM$1 = vr$10;
				if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$539;
				{
					goto label$520;
				}
				label$539:;
				label$538:;
			}
			goto label$536;
			label$537:;
			{
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$11;
			}
			label$536:;
			int64 vr$12 = LEXGETTOKEN( 0ll );
			if( vr$12 == 41ll ) goto label$541;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$540;
			label$541:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$540:;
			struct $7ASTNODE* vr$13 = RTLFILESTRINPUT( EXPR$1, FILENUM$1, TK$1 );
			fb$result$1 = vr$13;
		}
		goto label$521;
		label$542:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$14 = HFILEOPEN( -1ll );
			fb$result$1 = vr$14;
		}
		goto label$521;
		label$543:;
		{
			struct $7ASTNODE* vr$15 = HFILECLOSE( -1ll );
			fb$result$1 = vr$15;
		}
		goto label$521;
		label$544:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$16 = LEXGETTOKEN( 0ll );
			if( vr$16 == 40ll ) goto label$546;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$545;
			label$546:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$545:;
			struct $7ASTNODE* vr$17 = HFILEPUT( -1ll );
			fb$result$1 = vr$17;
			int64 vr$18 = LEXGETTOKEN( 0ll );
			if( vr$18 == 41ll ) goto label$548;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$547;
			label$548:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$547:;
		}
		goto label$521;
		label$549:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$19 = LEXGETTOKEN( 0ll );
			if( vr$19 == 40ll ) goto label$551;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$550;
			label$551:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$550:;
			struct $7ASTNODE* vr$20 = HFILEGET( -1ll );
			fb$result$1 = vr$20;
			int64 vr$21 = LEXGETTOKEN( 0ll );
			if( vr$21 == 41ll ) goto label$553;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$552;
			label$553:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$552:;
		}
		goto label$521;
		label$554:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$22 = HFILERENAME( -1ll );
			fb$result$1 = vr$22;
		}
		goto label$521;
		label$522:;
		static const void* tmp$124[16ll] = {
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
		if( (TMP$122$2 - 468ull) > 15ull ) goto label$521;
		goto *tmp$124[TMP$122$2 - 468ull];
		label$521:;
	}
	label$520:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static struct $7ASTNODE* HFILECLOSE( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$172:;
	int64 CNT$1;
	__builtin_memset( &CNT$1, 0, 8ll );
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* PROC$1;
	__builtin_memset( &PROC$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	LEXSKIPTOKEN( 2048ll );
	if( ISFUNC$1 == 0ll ) goto label$175;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( vr$4 == 40ll ) goto label$177;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$176;
		label$177:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$176:;
	}
	label$175:;
	label$174:;
	CNT$1 = 0ll;
	label$178:;
	{
		HMATCH( 35ll, 0ll );
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILENUM$1 = vr$5;
		if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$182;
		{
			if( CNT$1 != 0ll ) goto label$184;
			{
			}
			goto label$183;
			label$184:;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$6;
			}
			label$183:;
		}
		label$182:;
		label$181:;
		struct $7ASTNODE* vr$7 = RTLFILECLOSE( FILENUM$1, ISFUNC$1 );
		PROC$1 = vr$7;
		if( PROC$1 != (struct $7ASTNODE*)0ull ) goto label$186;
		{
			goto label$173;
		}
		label$186:;
		label$185:;
		if( ISFUNC$1 == 0ll ) goto label$188;
		{
			goto label$179;
		}
		label$188:;
		label$187:;
		CNT$1 = CNT$1 + 1ll;
	}
	label$180:;
	int64 vr$9 = HMATCH( 44ll, 0ll );
	if( vr$9 != 0ll ) goto label$178;
	label$179:;
	if( ISFUNC$1 == 0ll ) goto label$190;
	{
		int64 vr$10 = LEXGETTOKEN( 0ll );
		if( vr$10 == 41ll ) goto label$192;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$191;
		label$192:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$191:;
	}
	label$190:;
	label$189:;
	fb$result$1 = PROC$1;
	label$173:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEPUT( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$193:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 8ll );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 8ll );
	struct $7ASTNODE* SRCEXPR$1;
	__builtin_memset( &SRCEXPR$1, 0, 8ll );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 8ll );
	int64 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 8ll );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	int64 vr$7 = LEXGETTOKEN( 0ll );
	if( vr$7 != 35ll ) goto label$196;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$196:;
	label$195:;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 8ll );
	FILEEXPR$1 = vr$8;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$198;
	{
		goto label$194;
	}
	label$198:;
	label$197:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 == 44ll ) goto label$200;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$199;
	label$200:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$199:;
	struct $7ASTNODE* vr$10 = CEXPRESSION(  );
	POSEXPR$1 = vr$10;
	if( POSEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$202;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$202:;
	label$201:;
	int64 vr$11 = LEXGETTOKEN( 0ll );
	if( vr$11 == 44ll ) goto label$204;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$203;
	label$204:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$203:;
	struct $7ASTNODE* vr$12 = HMATCHEXPR( 8ll );
	SRCEXPR$1 = vr$12;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$206;
	{
		goto label$194;
	}
	label$206:;
	label$205:;
	if( ((int64)-(*(int64*)SRCEXPR$1 == 16ll) | (int64)-(*(int64*)SRCEXPR$1 == 23ll)) == 0ll ) goto label$208;
	{
		ASTDELTREE( SRCEXPR$1 );
		ERRREPORT( 14ll, -1ll, (uint8*)0ull );
		if( ISFUNC$1 == 0ll ) goto label$210;
		{
			HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
		}
		goto label$209;
		label$210:;
		{
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$209:;
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$18;
		goto label$194;
	}
	label$208:;
	label$207:;
	ISARRAY$1 = 0ll;
	int64 vr$19 = LEXGETTOKEN( 0ll );
	if( vr$19 != 40ll ) goto label$212;
	{
		int64 vr$20 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$20 != 41ll ) goto label$214;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$216;
			{
				int64 vr$22 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$22;
				if( ISARRAY$1 == 0ll ) goto label$218;
				{
					if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 17ll ) goto label$220;
					{
						ASTDELTREE( SRCEXPR$1 );
						ERRREPORT( 24ll, -1ll, (uint8*)0ull );
						if( ISFUNC$1 == 0ll ) goto label$222;
						{
							HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
						}
						goto label$221;
						label$222:;
						{
							HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
						}
						label$221:;
						struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
						fb$result$1 = vr$25;
						goto label$194;
					}
					label$220:;
					label$219:;
					LEXSKIPTOKEN( 0ll );
					LEXSKIPTOKEN( 0ll );
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
	int64 vr$26 = HMATCH( 44ll, 0ll );
	if( vr$26 == 0ll ) goto label$224;
	{
		if( ISARRAY$1 == 0ll ) goto label$226;
		{
			ERRREPORT( 277ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$27 = CEXPRESSION(  );
			ELMEXPR$1 = vr$27;
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$228;
			{
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$228:;
			label$227:;
		}
		goto label$225;
		label$226:;
		{
			{
				int64 TMP$96$4;
				TMP$96$4 = *(int64*)((uint8*)SRCEXPR$1 + 8ll) & 511ll;
				if( TMP$96$4 == 17ll ) goto label$231;
				label$232:;
				if( TMP$96$4 != 18ll ) goto label$230;
				label$231:;
				{
					ERRREPORT( 277ll, 0ll, (uint8*)0ull );
					struct $7ASTNODE* vr$30 = CEXPRESSION(  );
					ELMEXPR$1 = vr$30;
					if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$234;
					{
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0ull;
					}
					label$234:;
					label$233:;
				}
				goto label$229;
				label$230:;
				{
					struct $7ASTNODE* vr$31 = CEXPRESSION(  );
					ELMEXPR$1 = vr$31;
					if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$237;
					{
						ERRREPORT( 9ll, 0ll, (uint8*)0ull );
					}
					label$237:;
					label$236:;
				}
				label$235:;
				label$229:;
			}
		}
		label$225:;
		if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$239;
		{
			if( ((*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$241;
			{
				ERRREPORTWARN( 2ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$241:;
			label$240:;
			if( (*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) == 8ll ) goto label$243;
			{
				struct $7ASTNODE* vr$37 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, ELMEXPR$1, 0ll, (int64*)0ull );
				ELMEXPR$1 = vr$37;
				if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$245;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
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
		ELMEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$223:;
	if( ISARRAY$1 != 0ll ) goto label$247;
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

static struct $7ASTNODE* HFILEGET( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$248:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 8ll );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 8ll );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 8ll );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 8ll );
	struct $7ASTNODE* IOBEXPR$1;
	__builtin_memset( &IOBEXPR$1, 0, 8ll );
	int64 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 8ll );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	int64 vr$8 = LEXGETTOKEN( 0ll );
	if( vr$8 != 35ll ) goto label$251;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$251:;
	label$250:;
	struct $7ASTNODE* vr$9 = HMATCHEXPR( 8ll );
	FILEEXPR$1 = vr$9;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$253;
	{
		goto label$249;
	}
	label$253:;
	label$252:;
	int64 vr$10 = LEXGETTOKEN( 0ll );
	if( vr$10 == 44ll ) goto label$255;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$254;
	label$255:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$254:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	POSEXPR$1 = vr$11;
	int64 vr$12 = LEXGETTOKEN( 0ll );
	if( vr$12 == 44ll ) goto label$257;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$256;
	label$257:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$256:;
	struct $7ASTNODE* vr$13 = CVARORDEREF( 0ll );
	DSTEXPR$1 = vr$13;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$259;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		if( ISFUNC$1 == 0ll ) goto label$261;
		{
			HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
		}
		goto label$260;
		label$261:;
		{
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$260:;
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$14;
		goto label$249;
	}
	label$259:;
	label$258:;
	ISARRAY$1 = 0ll;
	int64 vr$15 = LEXGETTOKEN( 0ll );
	if( vr$15 != 40ll ) goto label$263;
	{
		int64 vr$16 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$16 != 41ll ) goto label$265;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$267;
			{
				int64 vr$18 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$18;
				if( ISARRAY$1 == 0ll ) goto label$269;
				{
					if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 17ll ) goto label$271;
					{
						ERRREPORT( 24ll, -1ll, (uint8*)0ull );
						if( ISFUNC$1 == 0ll ) goto label$273;
						{
							HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
						}
						goto label$272;
						label$273:;
						{
							HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
						}
						label$272:;
						struct $7ASTNODE* vr$21 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
						fb$result$1 = vr$21;
						goto label$249;
					}
					label$271:;
					label$270:;
					LEXSKIPTOKEN( 0ll );
					LEXSKIPTOKEN( 0ll );
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
	int64 vr$22 = HMATCH( 44ll, 0ll );
	if( vr$22 == 0ll ) goto label$275;
	{
		struct $7ASTNODE* vr$23 = CEXPRESSION(  );
		ELMEXPR$1 = vr$23;
		if( ISARRAY$1 == 0ll ) goto label$277;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$279;
			{
				ERRREPORT( 277ll, 0ll, (uint8*)0ull );
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$279:;
			label$278:;
		}
		goto label$276;
		label$277:;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$281;
			{
				{
					int64 TMP$97$5;
					TMP$97$5 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
					if( TMP$97$5 == 17ll ) goto label$284;
					label$285:;
					if( TMP$97$5 != 18ll ) goto label$283;
					label$284:;
					{
						ERRREPORT( 277ll, 0ll, (uint8*)0ull );
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0ull;
					}
					goto label$282;
					label$283:;
					{
						if( ((*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$288;
						{
							ERRREPORTWARN( 2ll, (uint8*)0ull, 1ll, (uint8*)0ull );
						}
						label$288:;
						label$287:;
						if( (*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) == 8ll ) goto label$290;
						{
							struct $7ASTNODE* vr$31 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, ELMEXPR$1, 0ll, (int64*)0ull );
							ELMEXPR$1 = vr$31;
							if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$292;
							{
								ERRREPORT( 17ll, -1ll, (uint8*)0ull );
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
		ELMEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$274:;
	int64 vr$32 = HMATCH( 44ll, 0ll );
	if( vr$32 == 0ll ) goto label$294;
	{
		struct $7ASTNODE* vr$33 = CVARORDEREF( 0ll );
		IOBEXPR$1 = vr$33;
		if( IOBEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$296;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)IOBEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$298;
			{
				int64 TMP$98$4;
				int64 TMP$99$4;
				int64 DTYPE$4;
				DTYPE$4 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
				if( (DTYPE$4 & 480ll) == 0ll ) goto label$299;
				TMP$98$4 = 24ll;
				goto label$556;
				label$299:;
				TMP$98$4 = DTYPE$4 & 31ll;
				label$556:;
				if( (DTYPE$4 & 480ll) == 0ll ) goto label$300;
				TMP$99$4 = 24ll;
				goto label$557;
				label$300:;
				TMP$99$4 = DTYPE$4 & 31ll;
				label$557:;
				if( (((int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$98$4 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 544ll)) | (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$99$4 * 56ll)) != 0ll)) | (int64)-((DTYPE$4 & 480ll) != 0ll)) == 0ll ) goto label$302;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
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
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		}
		label$295:;
	}
	goto label$293;
	label$294:;
	{
		IOBEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$293:;
	if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$304;
	{
		ERRREPORT( 119ll, 0ll, (uint8*)0ull );
	}
	label$304:;
	label$303:;
	if( IOBEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$306;
	{
		if( (*(int64*)((uint8*)IOBEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$308;
		{
			ERRREPORT( 119ll, 0ll, (uint8*)0ull );
		}
		label$308:;
		label$307:;
	}
	label$306:;
	label$305:;
	if( ISARRAY$1 != 0ll ) goto label$310;
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

static struct $7ASTNODE* HFILEOPEN( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$311:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 8ll );
	struct $7ASTNODE* FMODE$1;
	__builtin_memset( &FMODE$1, 0, 8ll );
	struct $7ASTNODE* FACCESS$1;
	__builtin_memset( &FACCESS$1, 0, 8ll );
	struct $7ASTNODE* FLOCK$1;
	__builtin_memset( &FLOCK$1, 0, 8ll );
	struct $7ASTNODE* FLEN$1;
	__builtin_memset( &FLEN$1, 0, 8ll );
	struct $7ASTNODE* FENCODING$1;
	__builtin_memset( &FENCODING$1, 0, 8ll );
	int64 SHORT_FORM$1;
	__builtin_memset( &SHORT_FORM$1, 0, 8ll );
	int64 FILE_MODE$1;
	__builtin_memset( &FILE_MODE$1, 0, 8ll );
	int64 ACCESS_MODE$1;
	__builtin_memset( &ACCESS_MODE$1, 0, 8ll );
	int64 LOCK_MODE$1;
	__builtin_memset( &LOCK_MODE$1, 0, 8ll );
	int64 RECORD_LEN$1;
	__builtin_memset( &RECORD_LEN$1, 0, 8ll );
	$10FBOPENKIND OPEN_KIND$1;
	__builtin_memset( &OPEN_KIND$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	OPEN_KIND$1 = 0ll;
	SHORT_FORM$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$314;
	{
		{
			FBSTRING TMP$100$3;
			uint8* vr$14 = LEXGETTEXT(  );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			FBSTRING* vr$16 = fb_StrUcase2( (FBSTRING*)vr$15, 0 );
			fb_StrInit( (void*)&TMP$100$3, -1ll, (void*)vr$16, -1ll, 0 );
			int32 vr$19 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"CONS", 5ll );
			if( (int64)vr$19 != 0ll ) goto label$316;
			label$317:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$319;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 1ll;
				}
				label$319:;
				label$318:;
			}
			goto label$315;
			label$316:;
			int32 vr$24 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"ERR", 4ll );
			if( (int64)vr$24 != 0ll ) goto label$320;
			label$321:;
			{
				LEXSKIPTOKEN( 2048ll );
				OPEN_KIND$1 = 2ll;
			}
			goto label$315;
			label$320:;
			int32 vr$27 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"PIPE", 5ll );
			if( (int64)vr$27 != 0ll ) goto label$322;
			label$323:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$325;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 3ll;
				}
				label$325:;
				label$324:;
			}
			goto label$315;
			label$322:;
			int32 vr$32 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"SCRN", 5ll );
			if( (int64)vr$32 != 0ll ) goto label$326;
			label$327:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$329;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 4ll;
				}
				label$329:;
				label$328:;
			}
			goto label$315;
			label$326:;
			int32 vr$37 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"LPT", 4ll );
			if( (int64)vr$37 != 0ll ) goto label$330;
			label$331:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$333;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 5ll;
				}
				label$333:;
				label$332:;
			}
			goto label$315;
			label$330:;
			int32 vr$42 = fb_StrCompare( (void*)&TMP$100$3, -1ll, (void*)"COM", 4ll );
			if( (int64)vr$42 != 0ll ) goto label$334;
			label$335:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$337;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 6ll;
				}
				label$337:;
				label$336:;
			}
			label$334:;
			label$315:;
			fb_StrDelete( (FBSTRING*)&TMP$100$3 );
		}
	}
	label$314:;
	label$313:;
	if( ISFUNC$1 == 0ll ) goto label$339;
	{
		int64 vr$47 = LEXGETTOKEN( 0ll );
		if( vr$47 == 40ll ) goto label$341;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$340;
		label$341:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$340:;
	}
	label$339:;
	label$338:;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$343;
	{
		OPEN_KIND$1 = 7ll;
	}
	label$343:;
	label$342:;
	{
		uint64 TMP$107$2;
		TMP$107$2 = (uint64)OPEN_KIND$1;
		goto label$345;
		label$346:;
		{
			struct $7ASTNODE* vr$48 = HMATCHEXPR( 17ll );
			FILENAME$1 = vr$48;
			if( FILENAME$1 != (struct $7ASTNODE*)0ull ) goto label$348;
			{
				goto label$312;
			}
			label$348:;
			label$347:;
			if( ISFUNC$1 == 0ll ) goto label$350;
			{
				HMATCH( 44ll, 0ll );
			}
			label$350:;
			label$349:;
			{
				if( OPEN_KIND$1 == 0ll ) goto label$353;
				label$354:;
				if( OPEN_KIND$1 != 7ll ) goto label$352;
				label$353:;
				{
					if( ISFUNC$1 == 0ll ) goto label$356;
					{
						{
							int64 TMP$108$7;
							int64 vr$49 = LEXGETTOKEN( 0ll );
							TMP$108$7 = vr$49;
							if( TMP$108$7 == 281ll ) goto label$359;
							label$360:;
							if( TMP$108$7 == 473ll ) goto label$359;
							label$361:;
							if( TMP$108$7 != 376ll ) goto label$358;
							label$359:;
							{
							}
							goto label$357;
							label$358:;
							{
								SHORT_FORM$1 = -1ll;
							}
							label$362:;
							label$357:;
						}
					}
					goto label$355;
					label$356:;
					{
						int64 vr$50 = HMATCH( 44ll, 0ll );
						if( vr$50 == 0ll ) goto label$364;
						{
							SHORT_FORM$1 = -1ll;
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
			struct $7ASTNODE* vr$51 = ASTNEWCONSTSTR( (uint8*)"" );
			FILENAME$1 = vr$51;
		}
		goto label$344;
		label$345:;
		static const void* tmp$125[8ll] = {
			&&label$346,
			&&label$365,
			&&label$365,
			&&label$346,
			&&label$365,
			&&label$346,
			&&label$346,
			&&label$346,
		};
		if( TMP$107$2 > 7ull ) goto label$365;
		goto *tmp$125[TMP$107$2 - 0ull];
		label$344:;
	}
	if( SHORT_FORM$1 == 0ll ) goto label$367;
	{
		FMODE$1 = FILENAME$1;
		FILENAME$1 = (struct $7ASTNODE*)0ull;
		HMATCH( 35ll, 0ll );
		struct $7ASTNODE* vr$52 = HMATCHEXPR( 8ll );
		FILENUM$1 = vr$52;
		if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$369;
		{
			goto label$312;
		}
		label$369:;
		label$368:;
		int64 vr$53 = LEXGETTOKEN( 0ll );
		if( vr$53 == 44ll ) goto label$371;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$370;
		label$371:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$370:;
		struct $7ASTNODE* vr$54 = HMATCHEXPR( 17ll );
		FILENAME$1 = vr$54;
		if( FILENAME$1 != (struct $7ASTNODE*)0ull ) goto label$373;
		{
			goto label$312;
		}
		label$373:;
		label$372:;
		int64 vr$55 = HMATCH( 44ll, 0ll );
		if( vr$55 == 0ll ) goto label$375;
		{
			int64 vr$56 = LEXGETTOKEN( 0ll );
			if( vr$56 == 44ll ) goto label$377;
			{
				struct $7ASTNODE* vr$57 = HMATCHEXPR( 8ll );
				FLEN$1 = vr$57;
				if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$379;
				{
					goto label$312;
				}
				label$379:;
				label$378:;
			}
			label$377:;
			label$376:;
			int64 vr$58 = HMATCH( 44ll, 0ll );
			if( vr$58 == 0ll ) goto label$381;
			{
				int64 vr$59 = LEXGETTOKEN( 0ll );
				if( vr$59 == 44ll ) goto label$383;
				{
					struct $7ASTNODE* vr$60 = HMATCHEXPR( 17ll );
					FACCESS$1 = vr$60;
					if( FACCESS$1 != (struct $7ASTNODE*)0ull ) goto label$385;
					{
						goto label$312;
					}
					label$385:;
					label$384:;
				}
				label$383:;
				label$382:;
				int64 vr$61 = HMATCH( 44ll, 0ll );
				if( vr$61 == 0ll ) goto label$387;
				{
					struct $7ASTNODE* vr$62 = HMATCHEXPR( 17ll );
					FLOCK$1 = vr$62;
					if( FLOCK$1 != (struct $7ASTNODE*)0ull ) goto label$389;
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
		if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$391;
		{
			struct $7ASTNODE* vr$63 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FLEN$1 = vr$63;
		}
		label$391:;
		label$390:;
		if( FACCESS$1 != (struct $7ASTNODE*)0ull ) goto label$393;
		{
			struct $7ASTNODE* vr$64 = ASTNEWCONSTSTR( (uint8*)"" );
			FACCESS$1 = vr$64;
		}
		label$393:;
		label$392:;
		if( FLOCK$1 != (struct $7ASTNODE*)0ull ) goto label$395;
		{
			struct $7ASTNODE* vr$65 = ASTNEWCONSTSTR( (uint8*)"" );
			FLOCK$1 = vr$65;
		}
		label$395:;
		label$394:;
		if( ISFUNC$1 == 0ll ) goto label$397;
		{
			int64 vr$66 = LEXGETTOKEN( 0ll );
			if( vr$66 == 41ll ) goto label$399;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$398;
			label$399:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$398:;
		}
		label$397:;
		label$396:;
		struct $7ASTNODE* vr$67 = RTLFILEOPENSHORT( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, ISFUNC$1 );
		fb$result$1 = vr$67;
		goto label$312;
	}
	label$367:;
	label$366:;
	int64 vr$68 = HMATCH( 281ll, 2048ll );
	if( vr$68 == 0ll ) goto label$401;
	{
		{
			FBSTRING TMP$109$3;
			uint8* vr$69 = LEXGETTEXT(  );
			FBSTRING* vr$70 = fb_StrAllocTempDescZ( (uint8*)vr$69 );
			FBSTRING* vr$71 = fb_StrUcase2( (FBSTRING*)vr$70, 0 );
			fb_StrInit( (void*)&TMP$109$3, -1ll, (void*)vr$71, -1ll, 0 );
			int32 vr$74 = fb_StrCompare( (void*)&TMP$109$3, -1ll, (void*)"INPUT", 6ll );
			if( (int64)vr$74 != 0ll ) goto label$403;
			label$404:;
			{
				FILE_MODE$1 = 2ll;
			}
			goto label$402;
			label$403:;
			int32 vr$77 = fb_StrCompare( (void*)&TMP$109$3, -1ll, (void*)"OUTPUT", 7ll );
			if( (int64)vr$77 != 0ll ) goto label$405;
			label$406:;
			{
				FILE_MODE$1 = 3ll;
			}
			goto label$402;
			label$405:;
			int32 vr$80 = fb_StrCompare( (void*)&TMP$109$3, -1ll, (void*)"BINARY", 7ll );
			if( (int64)vr$80 != 0ll ) goto label$407;
			label$408:;
			{
				FILE_MODE$1 = 0ll;
			}
			goto label$402;
			label$407:;
			int32 vr$83 = fb_StrCompare( (void*)&TMP$109$3, -1ll, (void*)"RANDOM", 7ll );
			if( (int64)vr$83 != 0ll ) goto label$409;
			label$410:;
			{
				FILE_MODE$1 = 1ll;
			}
			goto label$402;
			label$409:;
			int32 vr$86 = fb_StrCompare( (void*)&TMP$109$3, -1ll, (void*)"APPEND", 7ll );
			if( (int64)vr$86 != 0ll ) goto label$411;
			label$412:;
			{
				FILE_MODE$1 = 4ll;
			}
			goto label$402;
			label$411:;
			{
				fb_StrDelete( (FBSTRING*)&TMP$109$3 );
				goto label$312;
			}
			label$413:;
			label$402:;
			fb_StrDelete( (FBSTRING*)&TMP$109$3 );
		}
		LEXSKIPTOKEN( 2048ll );
	}
	goto label$400;
	label$401:;
	{
		FILE_MODE$1 = 1ll;
	}
	label$400:;
	struct $7ASTNODE* vr$90 = ASTNEWCONSTI( FILE_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FMODE$1 = vr$90;
	if( ISFUNC$1 == 0ll ) goto label$415;
	{
		HMATCH( 44ll, 0ll );
	}
	label$415:;
	label$414:;
	FENCODING$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$417;
	{
		{
			if( FILE_MODE$1 == 2ll ) goto label$420;
			label$421:;
			if( FILE_MODE$1 == 3ll ) goto label$420;
			label$422:;
			if( FILE_MODE$1 != 4ll ) goto label$419;
			label$420:;
			{
				int64 vr$91 = HMATCH( 482ll, 2048ll );
				if( vr$91 == 0ll ) goto label$424;
				{
					struct $7ASTNODE* vr$92 = HMATCHEXPR( 17ll );
					FENCODING$1 = vr$92;
					if( FENCODING$1 != (struct $7ASTNODE*)0ull ) goto label$426;
					{
						goto label$312;
					}
					label$426:;
					label$425:;
					if( ISFUNC$1 == 0ll ) goto label$428;
					{
						HMATCH( 44ll, 0ll );
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
	int64 vr$93 = HMATCHIDORKW( (uint8*)"ACCESS", 2048ll );
	if( vr$93 == 0ll ) goto label$430;
	{
		int64 vr$94 = HMATCHIDORKW( (uint8*)"WRITE", 2048ll );
		if( vr$94 == 0ll ) goto label$432;
		{
			ACCESS_MODE$1 = 2ll;
		}
		goto label$431;
		label$432:;
		int64 vr$95 = HMATCHIDORKW( (uint8*)"READ", 2048ll );
		if( vr$95 == 0ll ) goto label$433;
		{
			int64 vr$96 = HMATCH( 474ll, 0ll );
			if( vr$96 == 0ll ) goto label$435;
			{
				ACCESS_MODE$1 = 3ll;
			}
			goto label$434;
			label$435:;
			{
				ACCESS_MODE$1 = 1ll;
			}
			label$434:;
		}
		label$433:;
		label$431:;
	}
	goto label$429;
	label$430:;
	{
		ACCESS_MODE$1 = 0ll;
	}
	label$429:;
	struct $7ASTNODE* vr$97 = ASTNEWCONSTI( ACCESS_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FACCESS$1 = vr$97;
	if( ISFUNC$1 == 0ll ) goto label$437;
	{
		HMATCH( 44ll, 0ll );
	}
	label$437:;
	label$436:;
	int64 vr$98 = HMATCH( 312ll, 2048ll );
	if( vr$98 == 0ll ) goto label$439;
	{
		LOCK_MODE$1 = 0ll;
	}
	goto label$438;
	label$439:;
	int64 vr$99 = HMATCHIDORKW( (uint8*)"LOCK", 2048ll );
	if( vr$99 == 0ll ) goto label$440;
	{
		int64 vr$100 = HMATCHIDORKW( (uint8*)"WRITE", 2048ll );
		if( vr$100 == 0ll ) goto label$442;
		{
			LOCK_MODE$1 = 2ll;
		}
		goto label$441;
		label$442:;
		int64 vr$101 = HMATCHIDORKW( (uint8*)"READ", 2048ll );
		if( vr$101 == 0ll ) goto label$443;
		{
			int64 vr$102 = HMATCH( 474ll, 2048ll );
			if( vr$102 == 0ll ) goto label$445;
			{
				LOCK_MODE$1 = 3ll;
			}
			goto label$444;
			label$445:;
			{
				LOCK_MODE$1 = 1ll;
			}
			label$444:;
		}
		label$443:;
		label$441:;
	}
	goto label$438;
	label$440:;
	{
		LOCK_MODE$1 = 0ll;
	}
	label$438:;
	struct $7ASTNODE* vr$103 = ASTNEWCONSTI( LOCK_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FLOCK$1 = vr$103;
	if( ISFUNC$1 == 0ll ) goto label$447;
	{
		HMATCH( 44ll, 0ll );
	}
	label$447:;
	label$446:;
	int64 vr$104 = HMATCH( 376ll, 2048ll );
	if( vr$104 != 0ll ) goto label$449;
	{
		ERRREPORT( 5ll, 0ll, (uint8*)0ull );
	}
	label$449:;
	label$448:;
	HMATCH( 35ll, 0ll );
	struct $7ASTNODE* vr$105 = HMATCHEXPR( 8ll );
	FILENUM$1 = vr$105;
	if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$451;
	{
		goto label$312;
	}
	label$451:;
	label$450:;
	if( ISFUNC$1 == 0ll ) goto label$453;
	{
		HMATCH( 44ll, 0ll );
	}
	label$453:;
	label$452:;
	int64 vr$106 = HMATCHIDORKW( (uint8*)"LEN", 2048ll );
	if( vr$106 == 0ll ) goto label$455;
	{
		int64 vr$107 = CASSIGNTOKEN(  );
		if( vr$107 != 0ll ) goto label$457;
		{
			ERRREPORT( 10ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$108 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FLEN$1 = vr$108;
		}
		goto label$456;
		label$457:;
		{
			struct $7ASTNODE* vr$109 = HMATCHEXPR( 8ll );
			FLEN$1 = vr$109;
			if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$459;
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
		struct $7ASTNODE* vr$110 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FLEN$1 = vr$110;
	}
	label$454:;
	if( ISFUNC$1 == 0ll ) goto label$461;
	{
		int64 vr$111 = LEXGETTOKEN( 0ll );
		if( vr$111 == 41ll ) goto label$463;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$462;
		label$463:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$462:;
	}
	label$461:;
	label$460:;
	struct $7ASTNODE* vr$112 = RTLFILEOPEN( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, FENCODING$1, ISFUNC$1, OPEN_KIND$1 );
	fb$result$1 = vr$112;
	label$312:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILERENAME( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$464:;
	struct $7ASTNODE* FILENAME_OLD$1;
	__builtin_memset( &FILENAME_OLD$1, 0, 8ll );
	struct $7ASTNODE* FILENAME_NEW$1;
	__builtin_memset( &FILENAME_NEW$1, 0, 8ll );
	int64 MATCHPRNT$1;
	__builtin_memset( &MATCHPRNT$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ISFUNC$1 == 0ll ) goto label$467;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( vr$4 == 40ll ) goto label$469;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$468;
		label$469:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$468:;
	}
	goto label$466;
	label$467:;
	{
		int64 vr$5 = HMATCH( 40ll, 0ll );
		MATCHPRNT$1 = vr$5;
	}
	label$466:;
	struct $7ASTNODE* vr$6 = HMATCHEXPR( 17ll );
	FILENAME_OLD$1 = vr$6;
	if( FILENAME_OLD$1 != (struct $7ASTNODE*)0ull ) goto label$471;
	{
		goto label$465;
	}
	label$471:;
	label$470:;
	if( ISFUNC$1 == 0ll ) goto label$473;
	{
		int64 vr$7 = LEXGETTOKEN( 0ll );
		if( vr$7 == 44ll ) goto label$475;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$474;
		label$475:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$474:;
	}
	goto label$472;
	label$473:;
	{
		int64 vr$8 = HMATCH( 376ll, 2048ll );
		if( vr$8 != 0ll ) goto label$477;
		{
			int64 vr$9 = HMATCH( 44ll, 0ll );
			if( vr$9 != 0ll ) goto label$479;
			{
				ERRREPORT( 5ll, 0ll, (uint8*)0ull );
			}
			label$479:;
			label$478:;
		}
		label$477:;
		label$476:;
	}
	label$472:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( 17ll );
	FILENAME_NEW$1 = vr$10;
	if( FILENAME_NEW$1 != (struct $7ASTNODE*)0ull ) goto label$481;
	{
		goto label$465;
	}
	label$481:;
	label$480:;
	if( (ISFUNC$1 | MATCHPRNT$1) == 0ll ) goto label$483;
	{
		int64 vr$12 = LEXGETTOKEN( 0ll );
		if( vr$12 == 41ll ) goto label$485;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$484;
		label$485:;
		{
			LEXSKIPTOKEN( 0ll );
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
