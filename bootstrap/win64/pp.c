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
typedef int64 $13AST_NODECLASS;
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
	int64 MULT;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
typedef int64 $7FB_LANG;
void* memset( void*, int32, uint64 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
uint16* fb_StrToWstr( uint8* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__pp( void ) __attribute__(( constructor ));
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void FBCHANGEOPTION( int64, int64 );
void FBINCLUDEFILE( uint8*, int64 );
void FBOVERRIDEFILENAME( uint8* );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
$7FB_LANG FBGETLANGID( uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLIT( uint8* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
void ASTDUMPTREE( struct $7ASTNODE*, int64 );
struct $8FBSYMBOL* SYMBADDKEYWORD( uint8*, int64, int64, struct $8FBHASHTB*, int64, $13FB_SYMBATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
FBSTRING* SYMBTYPETOSTR( int64, struct $8FBSYMBOL*, int64, int64 );
void FBADDLIB( uint8* );
void FBADDLIBPATH( uint8* );
void DZSTRRESET( struct $8DZSTRING* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNW( struct $8DZSTRING*, uint16* );
void DWSTRALLOCATE( struct $8DWSTRING*, int64 );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXPPONLYEMITTOKEN( void );
void LEXPPONLYEMITTEXT( FBSTRING* );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCHIDORKW( uint8*, $8LEXCHECK );
int64 CCOMMENT( $8LEXCHECK );
void CTYPEOF( int64*, struct $8FBSYMBOL**, int64*, int64* );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
void PPPARSE( void );
void PPDEFINEINIT( void );
void PPDEFINEEND( void );
void PPDEFINE( int64 );
void PPPRAGMAINIT( void );
void PPPRAGMAEND( void );
void PPPRAGMA( void );
FBSTRING* PPTYPEOF( void );
void PPCONDINIT( void );
void PPCONDEND( void );
void PPCONDIF( void );
void PPCONDELSE( void );
void PPCONDENDIF( void );
void PPASSERT( void );
uint8* PPREADLITERAL( int64 );
static void PPINCLUDE( void );
static void PPINCLIB( void );
static void PPLIBPATH( void );
static void PPLINE( void );
static void PPLANG( void );
static void PPDUMPTREE( int64 );
static void HRTRIMMACROTEXT( struct $8DZSTRING* );
static void HRTRIMMACROTEXTW( struct $8DWSTRING* );
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
typedef int64 $8FB_TOKEN;
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
typedef int64 $12FB_PARSEROPT;
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int64 LEVEL;
	int64 SKIPPING;
	int64 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 408 );
extern struct $6PP_CTX PP$;
struct $7SYMBKWD {
	uint8* NAME;
	int64 ID;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBKWD ) == 24 );
static struct $7SYMBKWD KWDTB$[24] = { { (uint8*)"IF", 266ll }, { (uint8*)"IFDEF", 267ll }, { (uint8*)"IFNDEF", 268ll }, { (uint8*)"ELSE", 269ll }, { (uint8*)"ELSEIF", 270ll }, { (uint8*)"ENDIF", 271ll }, { (uint8*)"DEFINE", 272ll }, { (uint8*)"UNDEF", 273ll }, { (uint8*)"MACRO", 274ll }, { (uint8*)"ENDMACRO", 275ll }, { (uint8*)"INCLUDE", 276ll }, { (uint8*)"LIBPATH", 278ll }, { (uint8*)"INCLIB", 277ll }, { (uint8*)"PRAGMA", 279ll }, { (uint8*)"PRINT", 280ll }, { (uint8*)"ERROR", 281ll }, { (uint8*)"LINE", 282ll }, { (uint8*)"LANG", 283ll }, { (uint8*)"ASSERT", 284ll }, { (uint8*)"DUMP", 285ll }, { (uint8*)"ODUMP", 286ll }, { (uint8*)0ull } };
struct $6PP_CTX PP$;

void PPINIT( void )
{
	label$10:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	*($12FB_SYMBCLASS*)&PP$ = 8ll;
	*(uint16*)((uint8*)&PP$ + 72ll) = (uint16)0u;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 96ll) = (struct $8FBSYMBOL*)&PP$;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 104ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 112ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 120ll) = (struct $8FBSYMBOL*)&PP$;
	*(struct $8FBHASHTB**)((uint8*)&PP$ + 152ll) = (struct $8FBHASHTB*)0ull;
	*(struct $8FBHASHTB**)((uint8*)&PP$ + 160ll) = (struct $8FBHASHTB*)0ull;
	{
		HASHINIT( (struct $5THASH*)((uint8*)&PP$ + 128ll), 24ll, 0ll );
	}
	goto label$12;
	label$13:;
	{
		memset( (void*)((uint8*)&PP$ + 128ll), 0, 24ull );
	}
	label$12:;
	void* vr$6 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
	*(struct $13FBNAMESPC_EXT**)((uint8*)&PP$ + 168ll) = (struct $13FBNAMESPC_EXT*)vr$6;
	{
		I$1 = 0ll;
		label$17:;
		{
			if( *(uint8**)((uint8*)KWDTB$ + (I$1 * 24ll)) != (uint8*)0ull ) goto label$19;
			{
				goto label$16;
			}
			label$19:;
			label$18:;
			struct $8FBSYMBOL* vr$11 = SYMBADDKEYWORD( *(uint8**)((uint8*)KWDTB$ + (I$1 * 24ll)), *(int64*)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 8ll), 1ll, (struct $8FBHASHTB*)((uint8*)&PP$ + 120ll), 2147483648ll, 0ll );
			*(struct $8FBSYMBOL**)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 16ll) = vr$11;
			if( *(struct $8FBSYMBOL**)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 16ll) != (struct $8FBSYMBOL*)0ull ) goto label$21;
			{
				goto label$11;
			}
			label$21:;
			label$20:;
		}
		label$15:;
		I$1 = I$1 + 1ll;
		label$14:;
		if( I$1 <= 23ll ) goto label$17;
		label$16:;
	}
	*(int64*)((uint8*)&PP$ + 392ll) = 0ll;
	PPDEFINEINIT(  );
	PPCONDINIT(  );
	PPPRAGMAINIT(  );
	label$11:;
}

void PPEND( void )
{
	label$22:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	PPPRAGMAEND(  );
	PPCONDEND(  );
	PPDEFINEEND(  );
	{
		I$1 = 0ll;
		label$27:;
		{
			if( *(struct $8FBSYMBOL**)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 16ll) != (struct $8FBSYMBOL*)0ull ) goto label$29;
			{
				goto label$26;
			}
			label$29:;
			label$28:;
			SYMBFREESYMBOL( *(struct $8FBSYMBOL**)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 16ll) );
			*(struct $8FBSYMBOL**)(((uint8*)KWDTB$ + (I$1 * 24ll)) + 16ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$25:;
		I$1 = I$1 + 1ll;
		label$24:;
		if( I$1 <= 23ll ) goto label$27;
		label$26:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll), *(void**)((uint8*)&PP$ + 168ll) );
	HASHEND( (struct $5THASH*)((uint8*)&PP$ + 128ll) );
	label$23:;
}

void PPCHECK( void )
{
	label$30:;
	if( *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) == 35ll ) goto label$33;
	{
		goto label$31;
	}
	label$33:;
	label$32:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) == 0ll ) goto label$35;
	{
		goto label$31;
	}
	label$35:;
	label$34:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8560ll) == 257ll ) goto label$37;
	{
		if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8560ll) == -1ll ) goto label$39;
		{
			goto label$31;
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) + 1ll;
	*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8584ll) = (struct $8FBSYMBOL*)&PP$;
	LEXSKIPTOKEN( 256ll );
	PPPARSE(  );
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) + -1ll;
	label$31:;
}

void PPPARSE( void )
{
	label$40:;
	{
		uint64 TMP$116$2;
		int64 vr$0 = LEXGETTOKEN( 256ll );
		TMP$116$2 = (uint64)vr$0;
		goto label$43;
		label$44:;
		{
			LEXSKIPTOKEN( 2050ll );
			PPDEFINE( 0ll );
		}
		goto label$42;
		label$45:;
		{
			LEXSKIPTOKEN( 2050ll );
			PPDEFINE( -1ll );
		}
		goto label$42;
		label$46:;
		{
			struct $10FBSYMCHAIN* CHAIN_$3;
			struct $8FBSYMBOL* BASE_PARENT$3;
			LEXSKIPTOKEN( 2050ll );
			struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( &BASE_PARENT$3, 0ll );
			CHAIN_$3 = vr$2;
			if( CHAIN_$3 == (struct $10FBSYMCHAIN*)0ull ) goto label$48;
			{
				struct $8FBSYMBOL* SYM$4;
				SYM$4 = *(struct $8FBSYMBOL**)CHAIN_$3;
				if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$4 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$50;
				{
					ERRREPORT( 123ll, 0ll, (uint8*)0ull );
				}
				goto label$49;
				label$50:;
				{
					if( (*(int64*)((uint8*)SYM$4 + 24ll) & 8388608ll) == 0ll ) goto label$52;
					{
						ERRREPORT( 177ll, 0ll, (uint8*)0ull );
					}
					goto label$51;
					label$52:;
					{
						if( *(int64*)((uint8*)&ENV$ + 1144ll) <= 0ll ) goto label$54;
						{
							if( *(int64*)SYM$4 == 5ll ) goto label$56;
							{
								FBSTRING TMP$118$8;
								__builtin_memset( &TMP$118$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$118$8, -1ll, (void*)"#undef", 7ll, 0 );
								LEXPPONLYEMITTEXT( &TMP$118$8 );
								fb_StrDelete( (FBSTRING*)&TMP$118$8 );
								LEXPPONLYEMITTOKEN(  );
							}
							label$56:;
							label$55:;
						}
						label$54:;
						label$53:;
						SYMBDELFROMHASH( SYM$4 );
					}
					label$51:;
				}
				label$49:;
			}
			label$48:;
			label$47:;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$42;
		label$57:;
		{
			PPCONDIF(  );
		}
		goto label$42;
		label$58:;
		{
			PPCONDELSE(  );
		}
		goto label$42;
		label$59:;
		{
			PPCONDENDIF(  );
		}
		goto label$42;
		label$60:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPASSERT(  );
		}
		goto label$42;
		label$61:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPDUMPTREE( 0ll );
		}
		goto label$42;
		label$62:;
		{
			LEXSKIPTOKEN( 2050ll );
			PPDUMPTREE( -1ll );
		}
		goto label$42;
		label$63:;
		{
			LEXSKIPTOKEN( 2048ll );
			uint8* vr$14 = PPREADLITERAL( 0ll );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
		}
		goto label$42;
		label$64:;
		{
			LEXSKIPTOKEN( 2048ll );
			uint8* vr$16 = PPREADLITERAL( 0ll );
			ERRREPORTEX( -1ll, (uint8*)vr$16, 0ll, 1ll, (uint8*)0ull );
			*(int64*)((uint8*)&PARSER$ + 56ll) = *(int64*)((uint8*)&PARSER$ + 56ll) + 1ll;
		}
		goto label$42;
		label$65:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPINCLUDE(  );
		}
		goto label$42;
		label$66:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPINCLIB(  );
		}
		goto label$42;
		label$67:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPLIBPATH(  );
		}
		goto label$42;
		label$68:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPPRAGMA(  );
		}
		goto label$42;
		label$69:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPLINE(  );
		}
		goto label$42;
		label$70:;
		{
			LEXSKIPTOKEN( 2048ll );
			PPLANG(  );
		}
		goto label$42;
		label$71:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		goto label$42;
		label$43:;
		static const void* tmp$119[21ll] = {
			&&label$57,
			&&label$57,
			&&label$57,
			&&label$58,
			&&label$58,
			&&label$59,
			&&label$44,
			&&label$46,
			&&label$45,
			&&label$71,
			&&label$65,
			&&label$66,
			&&label$67,
			&&label$68,
			&&label$63,
			&&label$64,
			&&label$69,
			&&label$70,
			&&label$60,
			&&label$61,
			&&label$62,
		};
		if( (TMP$116$2 - 266ull) > 20ull ) goto label$71;
		goto *tmp$119[TMP$116$2 - 266ull];
		label$42:;
	}
	CCOMMENT( 0ll );
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$73;
	{
		if( *(int64*)((uint8*)&ENV$ + 1224ll) != 0ll ) goto label$75;
		{
			struct $7ASTNODE* vr$19 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 25056ll) );
			ASTADD( vr$19 );
			DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 25056ll) );
		}
		label$75:;
		label$74:;
	}
	label$73:;
	label$72:;
	int64 vr$22 = LEXGETTOKEN( 0ll );
	if( vr$22 == 257ll ) goto label$77;
	{
		int64 vr$23 = LEXGETTOKEN( 0ll );
		if( vr$23 == 256ll ) goto label$79;
		{
			ERRREPORT( 3ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
		}
		label$79:;
		label$78:;
	}
	label$77:;
	label$76:;
	label$41:;
}

uint8* PPREADLITERAL( int64 ISMULTILINE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$127:;
	static struct $8DZSTRING TEXT$1;
	int64 NESTEDCNT$1;
	NESTEDCNT$1 = 0ll;
	DZSTRRESET( &TEXT$1 );
	label$129:;
	{
		{
			uint64 TMP$131$3;
			int64 vr$1 = LEXGETTOKEN( 62ll );
			TMP$131$3 = (uint64)vr$1;
			goto label$133;
			label$134:;
			{
				if( ISMULTILINE$1 == 0ll ) goto label$136;
				{
					ERRREPORT( 134ll, 0ll, (uint8*)0ull );
				}
				label$136:;
				label$135:;
				goto label$130;
			}
			goto label$132;
			label$137:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$139;
				{
					goto label$130;
				}
				label$139:;
				label$138:;
				if( *(int64*)((uint8*)&TEXT$1 + 8ll) <= 0ll ) goto label$141;
				{
					DZSTRCONCATASSIGN( &TEXT$1, (uint8*)"\x0A" );
				}
				label$141:;
				label$140:;
				LEXSKIPTOKEN( 62ll );
				goto label$131;
			}
			goto label$132;
			label$142:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$144;
				{
					goto label$130;
				}
				label$144:;
				label$143:;
				label$145:;
				{
					LEXSKIPTOKEN( 62ll );
					{
						int64 TMP$133$6;
						int64 vr$2 = LEXGETTOKEN( 62ll );
						TMP$133$6 = vr$2;
						if( TMP$133$6 == 257ll ) goto label$150;
						label$151:;
						if( TMP$133$6 != 256ll ) goto label$149;
						label$150:;
						{
							goto label$146;
						}
						label$149:;
						label$148:;
					}
				}
				label$147:;
				goto label$145;
				label$146:;
				goto label$131;
			}
			goto label$132;
			label$152:;
			{
				{
					int64 TMP$134$5;
					int64 vr$3 = LEXGETLOOKAHEAD( 1ll, 314ll );
					TMP$134$5 = vr$3;
					if( TMP$134$5 != 274ll ) goto label$154;
					label$155:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$157;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1ll;
						}
						label$157:;
						label$156:;
					}
					goto label$153;
					label$154:;
					if( TMP$134$5 != 275ll ) goto label$158;
					label$159:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$161;
						{
							if( NESTEDCNT$1 != 0ll ) goto label$163;
							{
								LEXSKIPTOKEN( 62ll );
								LEXSKIPTOKEN( 0ll );
								HRTRIMMACROTEXT( &TEXT$1 );
								goto label$130;
							}
							label$163:;
							label$162:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1ll;
						}
						label$161:;
						label$160:;
					}
					label$158:;
					label$153:;
				}
			}
			goto label$132;
			label$164:;
			{
				if( *(int64*)((uint8*)&TEXT$1 + 8ll) <= 0ll ) goto label$166;
				{
					DZSTRCONCATASSIGN( &TEXT$1, (uint8*)" " );
				}
				label$166:;
				label$165:;
				LEXSKIPTOKEN( 62ll );
				goto label$131;
			}
			goto label$132;
			label$167:;
			{
				FBSTRING TMP$136$4;
				__builtin_memset( &TMP$136$4, 0, 24ll );
				FBSTRING* vr$7 = PPTYPEOF(  );
				fb_StrAssign( (void*)&TMP$136$4, -1ll, (void*)vr$7, -1ll, 0 );
				DZSTRCONCATASSIGN( &TEXT$1, (uint8*)*(uint8**)&TMP$136$4 );
				fb_StrDelete( (FBSTRING*)&TMP$136$4 );
				goto label$130;
			}
			goto label$132;
			label$133:;
			static const void* tmp$137[369ll] = {
				&&label$164,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$164,
				&&label$132,
				&&label$132,
				&&label$152,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$134,
				&&label$137,
				&&label$132,
				&&label$142,
				&&label$142,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$167,
			};
			if( (TMP$131$3 - 9ull) > 368ull ) goto label$132;
			goto *tmp$137[TMP$131$3 - 9ull];
			label$132:;
		}
		if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 16ll) == 7ll ) goto label$169;
		{
			uint8* vr$12 = LEXGETTEXT(  );
			DZSTRCONCATASSIGN( &TEXT$1, vr$12 );
		}
		goto label$168;
		label$169:;
		{
			DZSTRCONCATASSIGNW( &TEXT$1, (uint16*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 24ll) );
		}
		label$168:;
		LEXSKIPTOKEN( 62ll );
	}
	label$131:;
	goto label$129;
	label$130:;
	fb$result$1 = *(uint8**)&TEXT$1;
	label$128:;
	return fb$result$1;
}

uint16* PPREADLITERALW( int64 ISMULTILINE$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	static struct $8DWSTRING TEXT$1;
	int64 NESTEDCNT$1;
	NESTEDCNT$1 = 0ll;
	DWSTRALLOCATE( &TEXT$1, 0ll );
	label$180:;
	{
		{
			uint64 TMP$139$3;
			int64 vr$1 = LEXGETTOKEN( 62ll );
			TMP$139$3 = (uint64)vr$1;
			goto label$184;
			label$185:;
			{
				if( ISMULTILINE$1 == 0ll ) goto label$187;
				{
					ERRREPORT( 134ll, 0ll, (uint8*)0ull );
				}
				label$187:;
				label$186:;
				goto label$181;
			}
			goto label$183;
			label$188:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$190;
				{
					goto label$181;
				}
				label$190:;
				label$189:;
				if( *(int64*)((uint8*)&TEXT$1 + 8ll) <= 0ll ) goto label$192;
				{
					uint16* TMP$140$5;
					uint16* vr$2 = fb_StrToWstr( (uint8*)"\x0A" );
					TMP$140$5 = vr$2;
					DWSTRCONCATASSIGN( &TEXT$1, TMP$140$5 );
					fb_WstrDelete( (uint16*)TMP$140$5 );
				}
				label$192:;
				label$191:;
				LEXSKIPTOKEN( 62ll );
				goto label$182;
			}
			goto label$183;
			label$193:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$195;
				{
					goto label$181;
				}
				label$195:;
				label$194:;
				label$196:;
				{
					LEXSKIPTOKEN( 62ll );
					{
						int64 TMP$141$6;
						int64 vr$3 = LEXGETTOKEN( 62ll );
						TMP$141$6 = vr$3;
						if( TMP$141$6 == 257ll ) goto label$201;
						label$202:;
						if( TMP$141$6 != 256ll ) goto label$200;
						label$201:;
						{
							goto label$197;
						}
						label$200:;
						label$199:;
					}
				}
				label$198:;
				goto label$196;
				label$197:;
				goto label$182;
			}
			goto label$183;
			label$203:;
			{
				{
					int64 TMP$142$5;
					int64 vr$4 = LEXGETLOOKAHEAD( 1ll, 314ll );
					TMP$142$5 = vr$4;
					if( TMP$142$5 != 274ll ) goto label$205;
					label$206:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$208;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1ll;
						}
						label$208:;
						label$207:;
					}
					goto label$204;
					label$205:;
					if( TMP$142$5 != 275ll ) goto label$209;
					label$210:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$212;
						{
							if( NESTEDCNT$1 != 0ll ) goto label$214;
							{
								LEXSKIPTOKEN( 62ll );
								LEXSKIPTOKEN( 0ll );
								HRTRIMMACROTEXTW( &TEXT$1 );
								goto label$181;
							}
							label$214:;
							label$213:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1ll;
						}
						label$212:;
						label$211:;
					}
					label$209:;
					label$204:;
				}
			}
			goto label$183;
			label$215:;
			{
				if( *(int64*)((uint8*)&TEXT$1 + 8ll) <= 0ll ) goto label$217;
				{
					uint16* TMP$143$5;
					uint16* vr$7 = fb_StrToWstr( (uint8*)" " );
					TMP$143$5 = vr$7;
					DWSTRCONCATASSIGN( &TEXT$1, TMP$143$5 );
					fb_WstrDelete( (uint16*)TMP$143$5 );
				}
				label$217:;
				label$216:;
				LEXSKIPTOKEN( 62ll );
				goto label$182;
			}
			goto label$183;
			label$218:;
			{
				FBSTRING TMP$144$4;
				__builtin_memset( &TMP$144$4, 0, 24ll );
				FBSTRING* vr$9 = PPTYPEOF(  );
				fb_StrAssign( (void*)&TMP$144$4, -1ll, (void*)vr$9, -1ll, 0 );
				DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$144$4 );
				fb_StrDelete( (FBSTRING*)&TMP$144$4 );
				goto label$181;
			}
			goto label$183;
			label$184:;
			static const void* tmp$145[369ll] = {
				&&label$215,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$215,
				&&label$183,
				&&label$183,
				&&label$203,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$185,
				&&label$188,
				&&label$183,
				&&label$193,
				&&label$193,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$218,
			};
			if( (TMP$139$3 - 9ull) > 368ull ) goto label$183;
			goto *tmp$145[TMP$139$3 - 9ull];
			label$183:;
		}
		if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 16ll) != 7ll ) goto label$220;
		{
			DWSTRCONCATASSIGN( &TEXT$1, (uint16*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8520ll) + 24ll) );
		}
		goto label$219;
		label$220:;
		{
			uint8* vr$17 = LEXGETTEXT(  );
			DWSTRCONCATASSIGNA( &TEXT$1, vr$17 );
		}
		label$219:;
		LEXSKIPTOKEN( 62ll );
	}
	label$182:;
	goto label$180;
	label$181:;
	fb$result$1 = *(uint16**)&TEXT$1;
	label$179:;
	return fb$result$1;
}

FBSTRING* PPTYPEOF( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$221:;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 40ll ) goto label$224;
	{
		ERRREPORT( 6ll, 0ll, (uint8*)0ull );
	}
	goto label$223;
	label$224:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$223:;
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	int64 IS_FIXLENSTR$1;
	__builtin_memset( &IS_FIXLENSTR$1, 0, 8ll );
	int64 LGT$1;
	__builtin_memset( &LGT$1, 0, 8ll );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 8ll );
	CTYPEOF( &DTYPE$1, &SUBTYPE$1, &LGT$1, &IS_FIXLENSTR$1 );
	FBSTRING* vr$10 = SYMBTYPETOSTR( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1 );
	FBSTRING* vr$11 = fb_StrUcase2( (FBSTRING*)vr$10, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$11, -1ll, 0 );
	int64 vr$13 = LEXGETTOKEN( 0ll );
	if( vr$13 == 41ll ) goto label$226;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
	}
	goto label$225;
	label$226:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$225:;
	label$222:;
	FBSTRING* vr$15 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$15;
}

__attribute__(( constructor )) static void fb_ctor__pp( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static void PPINCLUDE( void )
{
	label$80:;
	static uint8 INCFILE$1[261];
	int64 ISONCE$1;
	int64 vr$0 = HMATCHIDORKW( (uint8*)"ONCE", 2048ll );
	ISONCE$1 = vr$0;
	int64 vr$1 = LEXGETCLASS( 0ll );
	if( vr$1 == 4ll ) goto label$83;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		LEXSKIPTOKEN( 0ll );
		goto label$81;
	}
	label$83:;
	label$82:;
	LEXEATTOKEN( (uint8*)INCFILE$1, 0ll );
	FBINCLUDEFILE( (uint8*)INCFILE$1, ISONCE$1 );
	label$81:;
}

static void PPINCLIB( void )
{
	label$84:;
	int64 vr$0 = LEXGETCLASS( 0ll );
	if( vr$0 == 4ll ) goto label$87;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		LEXSKIPTOKEN( 0ll );
		goto label$85;
	}
	label$87:;
	label$86:;
	if( *(int64*)((uint8*)&ENV$ + 1144ll) <= 0ll ) goto label$89;
	{
		FBSTRING TMP$122$2;
		__builtin_memset( &TMP$122$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$122$2, -1ll, (void*)"#inclib", 8ll, 0 );
		LEXPPONLYEMITTEXT( &TMP$122$2 );
		fb_StrDelete( (FBSTRING*)&TMP$122$2 );
		LEXPPONLYEMITTOKEN(  );
	}
	label$89:;
	label$88:;
	uint8* vr$5 = LEXGETTEXT(  );
	FBADDLIB( vr$5 );
	LEXSKIPTOKEN( 0ll );
	label$85:;
}

static void PPLIBPATH( void )
{
	label$90:;
	int64 vr$0 = LEXGETCLASS( 0ll );
	if( vr$0 == 4ll ) goto label$93;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		LEXSKIPTOKEN( 0ll );
		goto label$91;
	}
	label$93:;
	label$92:;
	if( *(int64*)((uint8*)&ENV$ + 1144ll) <= 0ll ) goto label$95;
	{
		FBSTRING TMP$124$2;
		__builtin_memset( &TMP$124$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$124$2, -1ll, (void*)"#libpath", 9ll, 0 );
		LEXPPONLYEMITTEXT( &TMP$124$2 );
		fb_StrDelete( (FBSTRING*)&TMP$124$2 );
		LEXPPONLYEMITTOKEN(  );
	}
	label$95:;
	label$94:;
	uint8* vr$5 = LEXGETTEXT(  );
	FBADDLIBPATH( vr$5 );
	LEXSKIPTOKEN( 0ll );
	label$91:;
}

static void PPLINE( void )
{
	label$96:;
	int64 vr$0 = LEXGETCLASS( 0ll );
	if( vr$0 == 3ll ) goto label$99;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
	}
	goto label$98;
	label$99:;
	{
		uint8* vr$1 = LEXGETTEXT(  );
		FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
		int32 vr$3 = fb_VALINT( (FBSTRING*)vr$2 );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8552ll) = (int64)vr$3;
		LEXSKIPTOKEN( 0ll );
		int64 vr$6 = LEXGETCLASS( 0ll );
		if( vr$6 != 4ll ) goto label$101;
		{
			uint8* vr$7 = LEXGETTEXT(  );
			FBOVERRIDEFILENAME( vr$7 );
			LEXSKIPTOKEN( 0ll );
		}
		label$101:;
		label$100:;
	}
	label$98:;
	label$97:;
}

static void PPLANG( void )
{
	label$102:;
	$7FB_LANG ID$1;
	int64 vr$0 = LEXGETCLASS( 0ll );
	if( vr$0 == 4ll ) goto label$105;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		LEXSKIPTOKEN( 0ll );
		goto label$103;
	}
	label$105:;
	label$104:;
	uint8* vr$1 = LEXGETTEXT(  );
	$7FB_LANG vr$2 = FBGETLANGID( vr$1 );
	ID$1 = vr$2;
	if( ID$1 != -1ll ) goto label$107;
	{
		ERRREPORT( 279ll, 0ll, (uint8*)0ull );
		LEXSKIPTOKEN( 0ll );
		goto label$103;
	}
	label$107:;
	label$106:;
	if( *(int64*)((uint8*)&ENV$ + 1144ll) <= 0ll ) goto label$109;
	{
		FBSTRING TMP$127$2;
		FBSTRING TMP$128$2;
		FBSTRING TMP$129$2;
		__builtin_memset( &TMP$129$2, 0, 24ll );
		FBSTRING* vr$4 = FBGETLANGNAME( ID$1 );
		__builtin_memset( &TMP$127$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$127$2, (void*)"#lang \x22", 8ll, (void*)vr$4, -1ll );
		__builtin_memset( &TMP$128$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$128$2, (void*)vr$7, -1ll, (void*)"\x22", 2ll );
		fb_StrAssign( (void*)&TMP$129$2, -1ll, (void*)vr$10, -1ll, 0 );
		LEXPPONLYEMITTEXT( &TMP$129$2 );
		fb_StrDelete( (FBSTRING*)&TMP$129$2 );
	}
	label$109:;
	label$108:;
	FBCHANGEOPTION( 10ll, ID$1 );
	LEXSKIPTOKEN( 0ll );
	label$103:;
}

static void PPDUMPTREE( int64 OPTIMIZE$1 )
{
	label$110:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$0 = CEXPRESSION(  );
	EXPR$1 = vr$0;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$113;
	{
		if( OPTIMIZE$1 == 0ll ) goto label$115;
		{
			struct $7ASTNODE* vr$1 = ASTOPTIMIZETREE( EXPR$1 );
			EXPR$1 = vr$1;
		}
		label$115:;
		label$114:;
		ASTDUMPTREE( EXPR$1, 0ll );
		ASTDELTREE( EXPR$1 );
	}
	goto label$112;
	label$113:;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
	}
	label$112:;
	label$111:;
}

static void HRTRIMMACROTEXT( struct $8DZSTRING* TEXT$1 )
{
	label$116:;
	static uint8* P$1;
	if( TEXT$1 != (struct $8DZSTRING*)0ull ) goto label$119;
	{
		goto label$117;
	}
	goto label$118;
	label$119:;
	if( *(uint8**)TEXT$1 != (uint8*)0ull ) goto label$120;
	{
		goto label$117;
	}
	label$120:;
	label$118:;
	P$1 = (uint8*)((uint8*)((uint8*)*(uint8**)TEXT$1 + *(int64*)((uint8*)TEXT$1 + 8ll)) + -1ll);
	label$121:;
	if( P$1 <= *(uint8**)TEXT$1 ) goto label$122;
	{
		{
			uint64 TMP$130$3;
			TMP$130$3 = (uint64)*(uint8*)P$1;
			goto label$124;
			label$125:;
			{
				*(int64*)((uint8*)TEXT$1 + 8ll) = *(int64*)((uint8*)TEXT$1 + 8ll) + -1ll;
				*P$1 = (uint8)0u;
			}
			goto label$123;
			label$126:;
			{
				goto label$122;
			}
			goto label$123;
			label$124:;
			static const void* tmp$146[24ll] = {
				&&label$125,
				&&label$125,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$126,
				&&label$125,
			};
			if( (TMP$130$3 - 9ull) > 23ull ) goto label$126;
			goto *tmp$146[TMP$130$3 - 9ull];
			label$123:;
		}
		P$1 = (uint8*)((uint8*)P$1 + -1ll);
	}
	goto label$121;
	label$122:;
	label$117:;
}

static void HRTRIMMACROTEXTW( struct $8DWSTRING* TEXT$1 )
{
	label$170:;
	static uint16* P$1;
	P$1 = (uint16*)((uint8*)((uint8*)*(uint16**)TEXT$1 + (*(int64*)((uint8*)TEXT$1 + 8ll) << (1ll & 63ll))) + -2ll);
	label$172:;
	if( P$1 <= *(uint16**)TEXT$1 ) goto label$173;
	{
		{
			uint64 TMP$138$3;
			TMP$138$3 = (uint64)*(uint16*)P$1;
			goto label$175;
			label$176:;
			{
				*(int64*)((uint8*)TEXT$1 + 8ll) = *(int64*)((uint8*)TEXT$1 + 8ll) + -1ll;
				*P$1 = (uint16)(uint16)0u;
			}
			goto label$174;
			label$177:;
			{
				goto label$173;
			}
			goto label$174;
			label$175:;
			static const void* tmp$147[24ll] = {
				&&label$176,
				&&label$176,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$176,
			};
			if( (TMP$138$3 - 9ull) > 23ull ) goto label$177;
			goto *tmp$147[TMP$138$3 - 9ull];
			label$174:;
		}
		P$1 = (uint16*)((uint8*)P$1 + -2ll);
	}
	goto label$172;
	label$173:;
	label$171:;
}
