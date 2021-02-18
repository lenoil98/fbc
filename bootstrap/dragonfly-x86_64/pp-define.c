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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
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
		uint32* LITTEXTW;
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
typedef int64 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint32* DATA;
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
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int64* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
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
		uint32 TEXTW[1025];
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
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4176 );
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
			uint32* DEFPTRW;
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
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49664 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
uint32* fb_WstrConcat( uint32*, uint32* );
int32 fb_StrCompare( void*, int64, void*, int64 );
int32 fb_WstrCompare( uint32*, uint32* );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( uint8* );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_TRIM( FBSTRING* );
uint32* fb_WstrTrim( uint32* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__ppzdefine( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int64, int64, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEW( uint8*, uint32*, int64, int64, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int64, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK*, $14FB_DEFTOK_TYPE );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
int64 HISVALIDSYMBOLNAME( uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRCONCATASSIGN( uint8**, uint8* );
void WSTRASSIGN( uint32**, uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint32* HREPLACEW( uint32*, uint32*, uint32* );
void DZSTRZERO( struct $8DZSTRING* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRASSIGNW( struct $8DZSTRING*, uint32* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNW( struct $8DZSTRING*, uint32* );
void DWSTRZERO( struct $8DWSTRING* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRASSIGNA( struct $8DWSTRING*, uint8* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint64 LEXCURRENTCHAR( int64 );
void LEXEATCHAR( void );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
uint8* PPREADLITERAL( int64 );
uint32* PPREADLITERALW( int64 );
static void HREPORTMACROERROR( struct $8FBSYMBOL*, int64 );
static int64 ISMACROALLOWED( struct $8FBSYMBOL* );
static int64 HLOADMACRO( struct $8FBSYMBOL* );
static int64 HLOADDEFINE( struct $8FBSYMBOL* );
static int64 HLOADMACROW( struct $8FBSYMBOL* );
static int64 HLOADDEFINEW( struct $8FBSYMBOL* );
static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK*, struct $9FB_DEFTOK* );
static struct $9FB_DEFTOK* HREADMACROTEXT( int64, struct $11FB_DEFPARAM*, int64 );
static void HREADDEFINETEXT( struct $8FBSYMBOL*, uint8*, int64, int64, int64 );
static int64 HMATCHPARAMELLIPSIS( void );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
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
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 844304 );
extern struct $7LEX_CTX LEX$;
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int64 LEVEL;
	int64 SKIPPING;
	int64 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 408 );
extern struct $6PP_CTX PP$;

void PPDEFINEINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PP$ + 320ll), 8ll, 776ll, 6ll );
	label$11:;
}

void PPDEFINEEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
	label$13:;
}

int64 PPDEFINELOAD( struct $8FBSYMBOL* S$1, struct $8FBSYMBOL* CURRMACRO$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$282:;
	if( S$1 != CURRMACRO$1 ) goto label$285;
	{
		ERRREPORT( 89ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 62ll, 0ll );
		fb$result$1 = -1ll;
		goto label$283;
	}
	label$285:;
	label$284:;
	if( *(int64*)((uint8*)&ENV$ + 840ll) != 0ll ) goto label$287;
	{
		int64 vr$1 = HLOADDEFINE( S$1 );
		fb$result$1 = vr$1;
	}
	goto label$286;
	label$287:;
	{
		int64 vr$2 = HLOADDEFINEW( S$1 );
		fb$result$1 = vr$2;
	}
	label$286:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) <= 0ll ) goto label$289;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16768ll) != (struct $8FBSYMBOL*)0ull ) goto label$291;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16768ll) = S$1;
		}
		label$291:;
		label$290:;
	}
	label$289:;
	label$288:;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16728ll) = 18446744073709551615ull;
	label$283:;
	return fb$result$1;
}

void PPDEFINE( int64 ISMULTILINE$1 )
{
	label$391:;
	static uint8 DEFNAME$1[129];
	int64 PARAMS$1;
	int64 ISARGLESS$1;
	int64 FLAGS$1;
	struct $11FB_DEFPARAM* PARAMHEAD$1;
	struct $11FB_DEFPARAM* LASTPARAM$1;
	struct $8FBSYMBOL* SYM$1;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $9FB_DEFTOK* TOKHEAD$1;
	$15FB_DEFINE_FLAGS DEFINE_FLAGS$1;
	struct $10FBSYMCHAIN* vr$1 = CIDENTIFIER( &BASE_PARENT$1, 38ll );
	CHAIN_$1 = vr$1;
	FLAGS$1 = 62ll;
	if( ISMULTILINE$1 == 0ll ) goto label$394;
	{
		FLAGS$1 = FLAGS$1 & -5ll;
	}
	label$394:;
	label$393:;
	LEXEATTOKEN( (uint8*)DEFNAME$1, FLAGS$1 );
	int64 vr$3 = HISVALIDSYMBOLNAME( (uint8*)DEFNAME$1 );
	if( vr$3 != 0ll ) goto label$396;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		goto label$392;
	}
	label$396:;
	label$395:;
	int64 vr$4 = LEXGETTOKEN( FLAGS$1 );
	if( vr$4 != 46ll ) goto label$398;
	{
		ERRREPORT( 90ll, 0ll, (uint8*)0ull );
	}
	label$398:;
	label$397:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$400;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		if( *(int64*)SYM$1 == 5ll ) goto label$402;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 1048576ll) == 0ll ) goto label$404;
			{
				ERRREPORTWARN( 39ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				SYMBDELFROMHASH( SYM$1 );
				SYM$1 = (struct $8FBSYMBOL*)0ull;
			}
			goto label$403;
			label$404:;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
				uint8* vr$9 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)DEFNAME$1, 129ll, (void*)vr$9, 0ll, 0 );
			}
			label$403:;
		}
		label$402:;
		label$401:;
	}
	goto label$399;
	label$400:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$399:;
	PARAMS$1 = 0ll;
	PARAMHEAD$1 = (struct $11FB_DEFPARAM*)0ull;
	ISARGLESS$1 = 0ll;
	DEFINE_FLAGS$1 = 8ll;
	if( ISMULTILINE$1 == 0ll ) goto label$406;
	{
		int64 vr$10 = LEXGETTOKEN( FLAGS$1 );
		if( vr$10 != 63ll ) goto label$408;
		{
			LEXSKIPTOKEN( 2ll );
			DEFINE_FLAGS$1 = DEFINE_FLAGS$1 & -9ll;
		}
		label$408:;
		label$407:;
	}
	label$406:;
	label$405:;
	int64 vr$12 = LEXGETTOKEN( FLAGS$1 );
	if( vr$12 != 40ll ) goto label$410;
	{
		LEXSKIPTOKEN( 34ll );
		int64 vr$13 = LEXGETTOKEN( 34ll );
		if( vr$13 == 41ll ) goto label$412;
		{
			LASTPARAM$1 = (struct $11FB_DEFPARAM*)0ull;
			label$413:;
			{
				{
					uint64 TMP$144$5;
					int64 vr$14 = LEXGETCLASS( 0ll );
					TMP$144$5 = (uint64)vr$14;
					goto label$417;
					label$418:;
					{
						uint8* vr$15 = LEXGETTEXT(  );
						struct $11FB_DEFPARAM* vr$16 = SYMBADDDEFINEPARAM( LASTPARAM$1, (uint8*)vr$15 );
						LASTPARAM$1 = vr$16;
					}
					goto label$416;
					label$419:;
					{
						ERRREPORT( 14ll, 0ll, (uint8*)0ull );
						uint8* vr$17 = SYMBUNIQUELABEL(  );
						struct $11FB_DEFPARAM* vr$18 = SYMBADDDEFINEPARAM( LASTPARAM$1, (uint8*)vr$17 );
						LASTPARAM$1 = vr$18;
					}
					goto label$416;
					label$417:;
					static const void* tmp$145[3ll] = {
						&&label$418,
						&&label$418,
						&&label$418,
					};
					if( TMP$144$5 > 2ull ) goto label$419;
					goto *tmp$145[TMP$144$5 - 0ull];
					label$416:;
				}
				if( LASTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$421;
				{
					ERRREPORT( 4ll, 0ll, (uint8*)0ull );
				}
				label$421:;
				label$420:;
				LEXSKIPTOKEN( 34ll );
				PARAMS$1 = PARAMS$1 + 1ll;
				if( PARAMS$1 < 32ll ) goto label$423;
				{
					ERRREPORT( 79ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
					goto label$392;
				}
				label$423:;
				label$422:;
				if( PARAMHEAD$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$425;
				{
					PARAMHEAD$1 = LASTPARAM$1;
				}
				label$425:;
				label$424:;
				int64 vr$20 = LEXGETTOKEN( 34ll );
				if( vr$20 == 44ll ) goto label$427;
				{
					goto label$414;
				}
				label$427:;
				label$426:;
				LEXSKIPTOKEN( 34ll );
			}
			label$415:;
			goto label$413;
			label$414:;
			int64 vr$21 = HMATCHPARAMELLIPSIS(  );
			if( vr$21 == 0ll ) goto label$429;
			{
				DEFINE_FLAGS$1 = DEFINE_FLAGS$1 | 4ll;
			}
			label$429:;
			label$428:;
		}
		goto label$411;
		label$412:;
		{
			ISARGLESS$1 = -1ll;
		}
		label$411:;
		int64 vr$23 = LEXGETTOKEN( 62ll );
		if( vr$23 == 41ll ) goto label$431;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
		}
		goto label$430;
		label$431:;
		{
			LEXSKIPTOKEN( 58ll );
		}
		label$430:;
	}
	goto label$409;
	label$410:;
	{
		if( ISMULTILINE$1 != 0ll ) goto label$433;
		{
			int64 vr$24 = LEXGETTOKEN( 62ll );
			if( vr$24 != 32ll ) goto label$435;
			{
				LEXSKIPTOKEN( 58ll );
			}
			label$435:;
			label$434:;
		}
		label$433:;
		label$432:;
	}
	label$409:;
	if( PARAMS$1 != 0ll ) goto label$437;
	{
		HREADDEFINETEXT( SYM$1, (uint8*)DEFNAME$1, ISARGLESS$1, ISMULTILINE$1, DEFINE_FLAGS$1 );
		goto label$392;
	}
	label$437:;
	label$436:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$439;
	{
		ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
	}
	goto label$438;
	label$439:;
	{
		struct $9FB_DEFTOK* vr$25 = HREADMACROTEXT( PARAMS$1, PARAMHEAD$1, ISMULTILINE$1 );
		TOKHEAD$1 = vr$25;
		SYMBADDDEFINEMACRO( (uint8*)DEFNAME$1, TOKHEAD$1, PARAMS$1, PARAMHEAD$1, DEFINE_FLAGS$1 );
	}
	label$438:;
	label$392:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static void HREPORTMACROERROR( struct $8FBSYMBOL* S$1, int64 ERRNUM$1 )
{
	FBSTRING TMP$94$1;
	FBSTRING TMP$95$1;
	label$14:;
	__builtin_memset( &TMP$95$1, 0, 24ll );
	__builtin_memset( &TMP$94$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$94$1, (void*)"expanding: ", 12ll, *(void**)((uint8*)S$1 + 32ll), 0ll );
	fb_StrAssign( (void*)&TMP$95$1, -1ll, (void*)vr$4, -1ll, 0 );
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&TMP$95$1, 0ll, 1ll, (uint8*)0ull );
	fb_StrDelete( (FBSTRING*)&TMP$95$1 );
	label$15:;
}

static int64 ISMACROALLOWED( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	if( *(int64*)((uint8*)&PP$ + 392ll) != 0ll ) goto label$19;
	{
		if( (*(int64*)((uint8*)S$1 + 128ll) & 2ll) == 0ll ) goto label$21;
		{
			if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$23;
			{
				ERRREPORT( 286ll, 0ll, (uint8*)0ull );
				fb$result$1 = 0ll;
				goto label$17;
			}
			label$23:;
			label$22:;
		}
		label$21:;
		label$20:;
	}
	label$19:;
	label$18:;
	fb$result$1 = -1ll;
	goto label$17;
	label$17:;
	return fb$result$1;
}

static int64 HLOADMACRO( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int64 PRNTCNT$1;
	int64 NUM$1;
	int64 REACHED_VARARG$1;
	int64 IS_VARIADIC$1;
	uint8* ARGTEXT$1;
	static FBSTRING TEXT$1;
	fb$result$1 = -1ll;
	int64 HASPARENS$1;
	HASPARENS$1 = 0ll;
	uint64 vr$1 = LEXCURRENTCHAR( -1ll );
	if( vr$1 != 40ull ) goto label$27;
	{
		HASPARENS$1 = -1ll;
	}
	goto label$26;
	label$27:;
	{
		if( ((int64)-(*(int64*)((uint8*)&PP$ + 400ll) > 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll)) == 0ll ) goto label$29;
		{
			goto label$25;
		}
		label$29:;
		label$28:;
	}
	label$26:;
	int64 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0ll ) goto label$31;
	{
		goto label$25;
	}
	label$31:;
	label$30:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + 1ll;
	if( HASPARENS$1 == 0ll ) goto label$33;
	{
		LEXEATCHAR(  );
	}
	label$33:;
	label$32:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$35;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$34;
	label$35:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0ull;
	}
	label$34:;
	PRNTCNT$1 = 1ll;
	REACHED_VARARG$1 = 0ll;
	IS_VARIADIC$1 = (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 4ll) != 0ll);
	int64 READDCHAR$1;
	READDCHAR$1 = -1ll;
	NUM$1 = 0ll;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$37;
	{
		*(int64*)((uint8*)ARGTB$1 + 768ll) = 0ll;
	}
	label$37:;
	label$36:;
	label$38:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$42;
		{
			DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
		}
		label$42:;
		label$41:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$44;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$44:;
		label$43:;
		label$45:;
		{
			LEXNEXTTOKEN( &T$1, 92ll );
			{
				uint64 TMP$96$4;
				TMP$96$4 = *(uint64*)&T$1;
				goto label$49;
				label$50:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1ll;
				}
				goto label$48;
				label$51:;
				{
					if( PRNTCNT$1 <= 0ll ) goto label$53;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1ll;
						if( PRNTCNT$1 != 0ll ) goto label$55;
						{
							goto label$46;
						}
						label$55:;
						label$54:;
					}
					label$53:;
					label$52:;
				}
				goto label$48;
				label$56:;
				{
					if( PRNTCNT$1 != 1ll ) goto label$58;
					{
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$60;
						{
							if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$62;
							{
								*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
							}
							label$62:;
							label$61:;
							*(int64*)((uint8*)ARGTB$1 + 768ll) = *(int64*)((uint8*)ARGTB$1 + 768ll) + 1ll;
						}
						label$60:;
						label$59:;
						if( REACHED_VARARG$1 != 0ll ) goto label$64;
						{
							goto label$46;
						}
						label$64:;
						label$63:;
					}
					label$58:;
					label$57:;
				}
				goto label$48;
				label$65:;
				{
					if( ~HASPARENS$1 == 0ll ) goto label$67;
					{
						READDCHAR$1 = 58ll;
						PRNTCNT$1 = 0ll;
						goto label$46;
					}
					label$67:;
					label$66:;
				}
				goto label$48;
				label$68:;
				{
					if( HASPARENS$1 == 0ll ) goto label$70;
					{
						HREPORTMACROERROR( S$1, 7ll );
					}
					goto label$69;
					label$70:;
					{
						int64 TMP$97$6;
						if( *(int64*)&T$1 != 256ll ) goto label$71;
						TMP$97$6 = 0ll;
						goto label$440;
						label$71:;
						TMP$97$6 = 10ll;
						label$440:;
						READDCHAR$1 = TMP$97$6;
					}
					label$69:;
					PRNTCNT$1 = 0ll;
					goto label$46;
				}
				goto label$48;
				label$72:;
				{
				}
				goto label$48;
				label$73:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$75;
					{
						if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$77;
						{
							*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
						}
						label$77:;
						label$76:;
					}
					label$75:;
					label$74:;
				}
				goto label$48;
				label$49:;
				static const void* tmp$146[250ll] = {
					&&label$72,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$72,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$50,
					&&label$51,
					&&label$73,
					&&label$73,
					&&label$56,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$73,
					&&label$68,
					&&label$68,
					&&label$65,
				};
				if( (TMP$96$4 - 9ull) > 249ull ) goto label$73;
				goto *tmp$146[TMP$96$4 - 9ull];
				label$48:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$79;
			{
				if( *(int64*)((uint8*)&T$1 + 16ll) == 7ll ) goto label$81;
				{
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)((uint8*)&T$1 + 24ll) );
				}
				goto label$80;
				label$81:;
				{
					DZSTRCONCATASSIGNW( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)((uint8*)&T$1 + 24ll) );
				}
				label$80:;
			}
			label$79:;
			label$78:;
		}
		label$47:;
		goto label$45;
		label$46:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$83;
		{
			{
				struct $9LEXPP_ARG* TMP$98$4;
				TMP$98$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
				if( *(uint8**)TMP$98$4 == (uint8*)0ull ) goto label$85;
				{
					int64 vr$49 = fb_StrLen( *(void**)TMP$98$4, 0ll );
					if( ((int64)-((int64)*(uint8*)*(uint8**)TMP$98$4 == 32ll) | (int64)-((int64)*(uint8*)((uint8*)((uint8*)*(uint8**)TMP$98$4 + vr$49) + -1ll) == 32ll)) == 0ll ) goto label$87;
					{
						FBSTRING TMP$99$6;
						__builtin_memset( &TMP$99$6, 0, 24ll );
						FBSTRING* vr$56 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)TMP$98$4 );
						FBSTRING* vr$57 = fb_TRIM( (FBSTRING*)vr$56 );
						fb_StrAssign( (void*)&TMP$99$6, -1ll, (void*)vr$57, -1ll, 0 );
						DZSTRASSIGN( (struct $8DZSTRING*)TMP$98$4, (uint8*)*(uint8**)&TMP$99$6 );
						fb_StrDelete( (FBSTRING*)&TMP$99$6 );
					}
					label$87:;
					label$86:;
				}
				label$85:;
				label$84:;
			}
		}
		label$83:;
		label$82:;
		if( PRNTCNT$1 != 0ll ) goto label$89;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$91;
			{
				if( ((int64)-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 16ll) != (struct $11FB_DEFPARAM*)0ull) | ~IS_VARIADIC$1) == 0ll ) goto label$93;
				{
					HREPORTMACROERROR( S$1, 1ll );
				}
				label$93:;
				label$92:;
				label$94:;
				{
					NUM$1 = NUM$1 + 1ll;
					DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
				}
				label$96:;
				if( NUM$1 < (*(int64*)((uint8*)S$1 + 96ll) + -1ll) ) goto label$94;
				label$95:;
			}
			label$91:;
			label$90:;
			goto label$39;
		}
		label$89:;
		label$88:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$98;
		{
			HREPORTMACROERROR( S$1, 1ll );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
			goto label$39;
		}
		label$98:;
		label$97:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1ll;
	}
	label$40:;
	goto label$38;
	label$39:;
	fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)"", 1ll, 0 );
	if( *(tmp$28*)((uint8*)S$1 + 136ll) == (tmp$28)0ull ) goto label$100;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0ll;
		FBSTRING RES$2;
		FBSTRING* vr$75 = (*(tmp$28*)((uint8*)S$1 + 136ll))( ARGTB$1, (int64*)&ERRNUM$2 );
		fb_StrInit( (void*)&RES$2, -1ll, (void*)vr$75, -1ll, 0 );
		if( ERRNUM$2 != 0ll ) goto label$102;
		{
			fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)&RES$2, -1ll, 0 );
		}
		goto label$101;
		label$102:;
		{
			HREPORTMACROERROR( S$1, ERRNUM$2 );
		}
		label$101:;
		fb_StrDelete( (FBSTRING*)&RES$2 );
	}
	goto label$99;
	label$100:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$104;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
			label$105:;
			if( DT$1 == (struct $9FB_DEFTOK*)0ull ) goto label$106;
			{
				{
					uint64 TMP$100$5;
					TMP$100$5 = *(uint64*)DT$1;
					goto label$108;
					label$109:;
					{
						ARGTEXT$1 = *(uint8**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint8*)0ull ) goto label$111;
						{
							FBSTRING TMP$101$7;
							__builtin_memset( &TMP$101$7, 0, 24ll );
							FBSTRING* vr$87 = fb_StrConcat( &TMP$101$7, (void*)&TEXT$1, -1ll, (void*)ARGTEXT$1, 0ll );
							fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$87, -1ll, 0 );
						}
						label$111:;
						label$110:;
					}
					goto label$107;
					label$112:;
					{
						ARGTEXT$1 = *(uint8**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint8*)0ull ) goto label$114;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"$\x22", 3ll, 0 );
							FBSTRING* vr$91 = HREPLACE( ARGTEXT$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)vr$91, -1ll, 0 );
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"\x22", 2ll, 0 );
						}
						goto label$113;
						label$114:;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"\x22\x22", 3ll, 0 );
						}
						label$113:;
					}
					goto label$107;
					label$115:;
					{
						FBSTRING TMP$106$6;
						__builtin_memset( &TMP$106$6, 0, 24ll );
						FBSTRING* vr$95 = fb_StrConcat( &TMP$106$6, (void*)&TEXT$1, -1ll, *(void**)((uint8*)DT$1 + 8ll), 0ll );
						fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$95, -1ll, 0 );
					}
					goto label$107;
					label$116:;
					{
						FBSTRING TMP$107$6;
						FBSTRING* vr$97 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)DT$1 + 8ll) );
						__builtin_memset( &TMP$107$6, 0, 24ll );
						FBSTRING* vr$100 = fb_StrConcat( &TMP$107$6, (void*)&TEXT$1, -1ll, (void*)vr$97, -1ll );
						fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$100, -1ll, 0 );
					}
					goto label$107;
					label$108:;
					static const void* tmp$147[4ll] = {
						&&label$109,
						&&label$112,
						&&label$115,
						&&label$116,
					};
					if( TMP$100$5 > 3ull ) goto label$107;
					goto *tmp$147[TMP$100$5 - 0ull];
					label$107:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 24ll);
			}
			goto label$105;
			label$106:;
			label$117:;
			if( NUM$1 <= 0ll ) goto label$118;
			{
				NUM$1 = NUM$1 + -1ll;
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)0ull );
			}
			goto label$117;
			label$118:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll), (void*)ARGTB$1 );
		}
		label$104:;
		label$103:;
		if( READDCHAR$1 == -1ll ) goto label$120;
		{
			FBSTRING* vr$107 = fb_CHR( 1, READDCHAR$1 );
			fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)vr$107, -1ll, 0 );
		}
		label$120:;
		label$119:;
	}
	label$99:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$122;
	{
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TEXT$1 );
	}
	goto label$121;
	label$122:;
	{
		FBSTRING TMP$108$2;
		FBSTRING TMP$109$2;
		__builtin_memset( &TMP$109$2, 0, 24ll );
		__builtin_memset( &TMP$108$2, 0, 24ll );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$108$2, (void*)&TEXT$1, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll), 0ll );
		fb_StrAssign( (void*)&TMP$109$2, -1ll, (void*)vr$115, -1ll, 0 );
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TMP$109$2 );
		fb_StrDelete( (FBSTRING*)&TMP$109$2 );
	}
	label$121:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + -1ll;
	int64 vr$121 = fb_StrLen( (void*)&TEXT$1, -1ll );
	fb$result$1 = vr$121;
	label$25:;
	return fb$result$1;
}

static int64 HLOADDEFINE( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$123:;
	static FBSTRING TEXT$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)S$1 + 96ll) <= 0ll ) goto label$126;
	{
		int64 vr$2 = HLOADMACRO( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1ll ) goto label$128;
		{
			goto label$124;
		}
		label$128:;
		label$127:;
	}
	goto label$125;
	label$126:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 136ll) == (tmp$27)0ull ) goto label$130;
		{
			if( (*(int64*)((uint8*)S$1 + 128ll) & 1ll) == 0ll ) goto label$132;
			{
				FBSTRING TMP$110$4;
				FBSTRING TMP$111$4;
				FBSTRING* vr$6 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				__builtin_memset( &TMP$110$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$110$4, (void*)"$\x22", 3ll, (void*)vr$6, -1ll );
				__builtin_memset( &TMP$111$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$111$4, (void*)vr$10, -1ll, (void*)"\x22", 2ll );
				fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$13, -1ll, 0 );
			}
			goto label$131;
			label$132:;
			{
				FBSTRING* vr$14 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$14, -1ll, 0 );
			}
			label$131:;
			if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$134;
			{
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TEXT$1 );
			}
			goto label$133;
			label$134:;
			{
				FBSTRING TMP$112$4;
				FBSTRING TMP$113$4;
				__builtin_memset( &TMP$113$4, 0, 24ll );
				__builtin_memset( &TMP$112$4, 0, 24ll );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$112$4, (void*)&TEXT$1, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll), 0ll );
				fb_StrAssign( (void*)&TMP$113$4, -1ll, (void*)vr$23, -1ll, 0 );
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TMP$113$4 );
				fb_StrDelete( (FBSTRING*)&TMP$113$4 );
			}
			label$133:;
			int64 vr$28 = fb_StrLen( (void*)&TEXT$1, -1ll );
			LGT$1 = vr$28;
		}
		goto label$129;
		label$130:;
		{
			if( *(int64*)((uint8*)S$1 + 120ll) == 0ll ) goto label$136;
			{
				int64 HASPARENS$4;
				HASPARENS$4 = 0ll;
				uint64 vr$30 = LEXCURRENTCHAR( -1ll );
				if( vr$30 != 40ull ) goto label$138;
				{
					HASPARENS$4 = -1ll;
				}
				goto label$137;
				label$138:;
				{
					if( ((int64)-(*(int64*)((uint8*)&PP$ + 400ll) > 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll)) == 0ll ) goto label$140;
					{
						goto label$124;
					}
					label$140:;
					label$139:;
				}
				label$137:;
				if( HASPARENS$4 == 0ll ) goto label$142;
				{
					LEXEATCHAR(  );
					uint64 vr$36 = LEXCURRENTCHAR( -1ll );
					if( vr$36 == 41ull ) goto label$144;
					{
						ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					}
					goto label$143;
					label$144:;
					{
						LEXEATCHAR(  );
					}
					label$143:;
				}
				label$142:;
				label$141:;
			}
			label$136:;
			label$135:;
			if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$146;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$148;
				{
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint8**)((uint8*)S$1 + 112ll) );
				}
				goto label$147;
				label$148:;
				{
					FBSTRING TMP$114$5;
					FBSTRING TMP$115$5;
					__builtin_memset( &TMP$115$5, 0, 24ll );
					__builtin_memset( &TMP$114$5, 0, 24ll );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$114$5, *(void**)((uint8*)S$1 + 112ll), 0ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll), 0ll );
					fb_StrAssign( (void*)&TMP$115$5, -1ll, (void*)vr$48, -1ll, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TMP$115$5 );
					fb_StrDelete( (FBSTRING*)&TMP$115$5 );
				}
				label$147:;
			}
			goto label$145;
			label$146:;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$150;
				{
					DZSTRASSIGNW( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint32**)((uint8*)S$1 + 112ll) );
				}
				goto label$149;
				label$150:;
				{
					FBSTRING TMP$116$5;
					FBSTRING TMP$117$5;
					__builtin_memset( &TMP$117$5, 0, 24ll );
					FBSTRING* vr$60 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)S$1 + 112ll) );
					__builtin_memset( &TMP$116$5, 0, 24ll );
					FBSTRING* vr$63 = fb_StrConcat( &TMP$116$5, (void*)vr$60, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll), 0ll );
					fb_StrAssign( (void*)&TMP$117$5, -1ll, (void*)vr$63, -1ll, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), (uint8*)*(uint8**)&TMP$117$5 );
					fb_StrDelete( (FBSTRING*)&TMP$117$5 );
				}
				label$149:;
			}
			label$145:;
			LGT$1 = *(int64*)((uint8*)S$1 + 80ll);
		}
		label$129:;
	}
	label$125:;
	*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll);
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) + LGT$1;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16728ll) = 18446744073709551615ull;
	fb$result$1 = -1ll;
	label$124:;
	return fb$result$1;
}

static int64 HLOADMACROW( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$151:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int64 PRNTCNT$1;
	int64 LGT$1;
	int64 NUM$1;
	int64 REACHED_VARARG$1;
	int64 IS_VARIADIC$1;
	uint32* ARGTEXT$1;
	static struct $8DWSTRING TEXT$1;
	fb$result$1 = -1ll;
	int64 HASPARENS$1;
	HASPARENS$1 = 0ll;
	uint64 vr$1 = LEXCURRENTCHAR( -1ll );
	if( vr$1 != 40ull ) goto label$154;
	{
		HASPARENS$1 = -1ll;
	}
	goto label$153;
	label$154:;
	{
		if( ((int64)-(*(int64*)((uint8*)&PP$ + 400ll) > 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll)) == 0ll ) goto label$156;
		{
			goto label$152;
		}
		label$156:;
		label$155:;
	}
	label$153:;
	int64 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0ll ) goto label$158;
	{
		goto label$152;
	}
	label$158:;
	label$157:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + 1ll;
	if( HASPARENS$1 == 0ll ) goto label$160;
	{
		LEXEATCHAR(  );
	}
	label$160:;
	label$159:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$162;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$161;
	label$162:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0ull;
	}
	label$161:;
	PRNTCNT$1 = 1ll;
	REACHED_VARARG$1 = 0ll;
	IS_VARIADIC$1 = (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 4ll) != 0ll);
	int64 READDCHAR$1;
	READDCHAR$1 = -1ll;
	NUM$1 = 0ll;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$164;
	{
		*(int64*)((uint8*)ARGTB$1 + 768ll) = 0ll;
	}
	label$164:;
	label$163:;
	label$165:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$169;
		{
			DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
		}
		label$169:;
		label$168:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$171;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$171:;
		label$170:;
		label$172:;
		{
			LEXNEXTTOKEN( &T$1, 92ll );
			{
				uint64 TMP$118$4;
				TMP$118$4 = *(uint64*)&T$1;
				goto label$176;
				label$177:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1ll;
				}
				goto label$175;
				label$178:;
				{
					if( PRNTCNT$1 <= 0ll ) goto label$180;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1ll;
						if( PRNTCNT$1 != 0ll ) goto label$182;
						{
							goto label$173;
						}
						label$182:;
						label$181:;
					}
					label$180:;
					label$179:;
				}
				goto label$175;
				label$183:;
				{
					if( PRNTCNT$1 != 1ll ) goto label$185;
					{
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$187;
						{
							if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$189;
							{
								*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
							}
							label$189:;
							label$188:;
							*(int64*)((uint8*)ARGTB$1 + 768ll) = *(int64*)((uint8*)ARGTB$1 + 768ll) + 1ll;
						}
						label$187:;
						label$186:;
						if( REACHED_VARARG$1 != 0ll ) goto label$191;
						{
							goto label$173;
						}
						label$191:;
						label$190:;
					}
					label$185:;
					label$184:;
				}
				goto label$175;
				label$192:;
				{
					if( ~HASPARENS$1 == 0ll ) goto label$194;
					{
						READDCHAR$1 = 58ll;
						PRNTCNT$1 = 0ll;
						goto label$173;
					}
					label$194:;
					label$193:;
				}
				goto label$175;
				label$195:;
				{
					if( HASPARENS$1 == 0ll ) goto label$197;
					{
						HREPORTMACROERROR( S$1, 7ll );
					}
					goto label$196;
					label$197:;
					{
						int64 TMP$119$6;
						if( *(int64*)&T$1 != 256ll ) goto label$198;
						TMP$119$6 = 0ll;
						goto label$441;
						label$198:;
						TMP$119$6 = 10ll;
						label$441:;
						READDCHAR$1 = TMP$119$6;
					}
					label$196:;
					PRNTCNT$1 = 0ll;
					goto label$173;
				}
				goto label$175;
				label$199:;
				{
				}
				goto label$175;
				label$200:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$202;
					{
						if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$204;
						{
							*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
						}
						label$204:;
						label$203:;
					}
					label$202:;
					label$201:;
				}
				goto label$175;
				label$176:;
				static const void* tmp$148[250ll] = {
					&&label$199,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$199,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$177,
					&&label$178,
					&&label$200,
					&&label$200,
					&&label$183,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$200,
					&&label$195,
					&&label$195,
					&&label$192,
				};
				if( (TMP$118$4 - 9ull) > 249ull ) goto label$200;
				goto *tmp$148[TMP$118$4 - 9ull];
				label$175:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$206;
			{
				if( *(int64*)((uint8*)&T$1 + 16ll) == 7ll ) goto label$208;
				{
					DWSTRCONCATASSIGNA( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)((uint8*)&T$1 + 24ll) );
				}
				goto label$207;
				label$208:;
				{
					DWSTRCONCATASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)((uint8*)&T$1 + 24ll) );
				}
				label$207:;
			}
			label$206:;
			label$205:;
		}
		label$174:;
		goto label$172;
		label$173:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$210;
		{
			{
				struct $9LEXPP_ARG* TMP$120$4;
				TMP$120$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
				if( *(uint32**)TMP$120$4 == (uint32*)0ull ) goto label$212;
				{
					int64 vr$49 = fb_WstrLen( (uint32*)*(uint32**)TMP$120$4 );
					if( ((int64)-((int64)*(uint32*)*(uint32**)TMP$120$4 == 32ll) | (int64)-((int64)*(uint32*)((uint8*)((uint8*)*(uint32**)TMP$120$4 + (vr$49 << (2ll & 63ll))) + -4ll) == 32ll)) == 0ll ) goto label$214;
					{
						uint32* TMP$121$6;
						uint32* vr$56 = fb_WstrTrim( (uint32*)*(uint32**)TMP$120$4 );
						TMP$121$6 = vr$56;
						DWSTRASSIGN( (struct $8DWSTRING*)TMP$120$4, TMP$121$6 );
						fb_WstrDelete( (uint32*)TMP$121$6 );
					}
					label$214:;
					label$213:;
				}
				label$212:;
				label$211:;
			}
		}
		label$210:;
		label$209:;
		if( PRNTCNT$1 != 0ll ) goto label$216;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$218;
			{
				if( ((int64)-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 16ll) != (struct $11FB_DEFPARAM*)0ull) | ~IS_VARIADIC$1) == 0ll ) goto label$220;
				{
					HREPORTMACROERROR( S$1, 1ll );
				}
				label$220:;
				label$219:;
				label$221:;
				{
					NUM$1 = NUM$1 + 1ll;
					DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
				}
				label$223:;
				if( NUM$1 < (*(int64*)((uint8*)S$1 + 96ll) + -1ll) ) goto label$221;
				label$222:;
			}
			label$218:;
			label$217:;
			goto label$166;
		}
		label$216:;
		label$215:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$225;
		{
			HREPORTMACROERROR( S$1, 1ll );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
			goto label$166;
		}
		label$225:;
		label$224:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1ll;
	}
	label$167:;
	goto label$165;
	label$166:;
	DWSTRASSIGN( &TEXT$1, (uint32*)0ull );
	if( *(tmp$28*)((uint8*)S$1 + 136ll) == (tmp$28)0ull ) goto label$227;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0ll;
		if( *(tmp$29*)((uint8*)S$1 + 144ll) == (tmp$29)0ull ) goto label$229;
		{
			uint32* RES$3;
			uint32* vr$73 = (*(tmp$29*)((uint8*)S$1 + 144ll))( ARGTB$1, (int64*)&ERRNUM$2 );
			RES$3 = vr$73;
			if( ERRNUM$2 != 0ll ) goto label$231;
			{
				DWSTRASSIGN( &TEXT$1, RES$3 );
			}
			goto label$230;
			label$231:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$230:;
		}
		goto label$228;
		label$229:;
		{
			FBSTRING RES$3;
			FBSTRING* vr$76 = (*(tmp$28*)((uint8*)S$1 + 136ll))( ARGTB$1, (int64*)&ERRNUM$2 );
			fb_StrInit( (void*)&RES$3, -1ll, (void*)vr$76, -1ll, 0 );
			if( ERRNUM$2 != 0ll ) goto label$233;
			{
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&RES$3 );
			}
			goto label$232;
			label$233:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$232:;
			fb_StrDelete( (FBSTRING*)&RES$3 );
		}
		label$228:;
	}
	goto label$226;
	label$227:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$235;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
			label$236:;
			if( DT$1 == (struct $9FB_DEFTOK*)0ull ) goto label$237;
			{
				{
					uint64 TMP$122$5;
					TMP$122$5 = *(uint64*)DT$1;
					goto label$239;
					label$240:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint32*)0ull ) goto label$242;
						{
							DWSTRCONCATASSIGN( &TEXT$1, ARGTEXT$1 );
						}
						label$242:;
						label$241:;
					}
					goto label$238;
					label$243:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint32*)0ull ) goto label$245;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"$\x00000022" );
							uint32* vr$88 = HREPLACEW( ARGTEXT$1, (uint32*)L"\x00000022", (uint32*)L"\x00000022\x00000022" );
							DWSTRCONCATASSIGN( &TEXT$1, vr$88 );
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022" );
						}
						goto label$244;
						label$245:;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022\x00000022" );
						}
						label$244:;
					}
					goto label$238;
					label$246:;
					{
						DWSTRCONCATASSIGNA( &TEXT$1, *(uint8**)((uint8*)DT$1 + 8ll) );
					}
					goto label$238;
					label$247:;
					{
						DWSTRCONCATASSIGN( &TEXT$1, *(uint32**)((uint8*)DT$1 + 8ll) );
					}
					goto label$238;
					label$239:;
					static const void* tmp$149[4ll] = {
						&&label$240,
						&&label$243,
						&&label$246,
						&&label$247,
					};
					if( TMP$122$5 > 3ull ) goto label$238;
					goto *tmp$149[TMP$122$5 - 0ull];
					label$238:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 24ll);
			}
			goto label$236;
			label$237:;
			label$248:;
			if( NUM$1 <= 0ll ) goto label$249;
			{
				NUM$1 = NUM$1 + -1ll;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)0ull );
			}
			goto label$248;
			label$249:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll), (void*)ARGTB$1 );
		}
		label$235:;
		label$234:;
	}
	label$226:;
	if( READDCHAR$1 == -1ll ) goto label$251;
	{
		FBSTRING TMP$126$2;
		__builtin_memset( &TMP$126$2, 0, 24ll );
		FBSTRING* vr$98 = fb_CHR( 1, READDCHAR$1 );
		fb_StrAssign( (void*)&TMP$126$2, -1ll, (void*)vr$98, -1ll, 0 );
		DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$126$2 );
		fb_StrDelete( (FBSTRING*)&TMP$126$2 );
	}
	label$251:;
	label$250:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$253;
	{
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint32**)&TEXT$1 );
	}
	goto label$252;
	label$253:;
	{
		uint32* TMP$127$2;
		uint32* vr$105 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) );
		TMP$127$2 = vr$105;
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), TMP$127$2 );
		fb_WstrDelete( (uint32*)TMP$127$2 );
	}
	label$252:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + -1ll;
	int64 vr$109 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
	fb$result$1 = vr$109;
	label$152:;
	return fb$result$1;
}

static int64 HLOADDEFINEW( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$254:;
	static struct $8DWSTRING TEXT$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)S$1 + 96ll) <= 0ll ) goto label$257;
	{
		int64 vr$2 = HLOADMACROW( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1ll ) goto label$259;
		{
			goto label$255;
		}
		label$259:;
		label$258:;
	}
	goto label$256;
	label$257:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 136ll) == (tmp$27)0ull ) goto label$261;
		{
			if( (*(int64*)((uint8*)S$1 + 128ll) & 1ll) == 0ll ) goto label$263;
			{
				FBSTRING TMP$128$4;
				FBSTRING TMP$129$4;
				FBSTRING TMP$130$4;
				__builtin_memset( &TMP$130$4, 0, 24ll );
				FBSTRING* vr$7 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				__builtin_memset( &TMP$128$4, 0, 24ll );
				FBSTRING* vr$11 = fb_StrConcat( &TMP$128$4, (void*)"$\x22", 3ll, (void*)vr$7, -1ll );
				__builtin_memset( &TMP$129$4, 0, 24ll );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$129$4, (void*)vr$11, -1ll, (void*)"\x22", 2ll );
				fb_StrAssign( (void*)&TMP$130$4, -1ll, (void*)vr$14, -1ll, 0 );
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$130$4 );
				fb_StrDelete( (FBSTRING*)&TMP$130$4 );
			}
			goto label$262;
			label$263:;
			{
				FBSTRING TMP$131$4;
				__builtin_memset( &TMP$131$4, 0, 24ll );
				FBSTRING* vr$18 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				fb_StrAssign( (void*)&TMP$131$4, -1ll, (void*)vr$18, -1ll, 0 );
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$131$4 );
				fb_StrDelete( (FBSTRING*)&TMP$131$4 );
			}
			label$262:;
			if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$265;
			{
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint32**)&TEXT$1 );
			}
			goto label$264;
			label$265:;
			{
				uint32* TMP$132$4;
				uint32* vr$26 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) );
				TMP$132$4 = vr$26;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), TMP$132$4 );
				fb_WstrDelete( (uint32*)TMP$132$4 );
			}
			label$264:;
			int64 vr$29 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
			LGT$1 = vr$29;
		}
		goto label$260;
		label$261:;
		{
			if( *(int64*)((uint8*)S$1 + 120ll) == 0ll ) goto label$267;
			{
				int64 HASPARENS$4;
				HASPARENS$4 = 0ll;
				uint64 vr$31 = LEXCURRENTCHAR( -1ll );
				if( vr$31 != 40ull ) goto label$269;
				{
					HASPARENS$4 = -1ll;
				}
				goto label$268;
				label$269:;
				{
					if( ((int64)-(*(int64*)((uint8*)&PP$ + 400ll) > 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll)) == 0ll ) goto label$271;
					{
						goto label$255;
					}
					label$271:;
					label$270:;
				}
				label$268:;
				if( HASPARENS$4 == 0ll ) goto label$273;
				{
					LEXEATCHAR(  );
					uint64 vr$37 = LEXCURRENTCHAR( -1ll );
					if( vr$37 == 41ull ) goto label$275;
					{
						ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					}
					goto label$274;
					label$275:;
					{
						LEXEATCHAR(  );
					}
					label$274:;
				}
				label$273:;
				label$272:;
			}
			label$267:;
			label$266:;
			if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$277;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$279;
				{
					DWSTRASSIGNA( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint8**)((uint8*)S$1 + 112ll) );
				}
				goto label$278;
				label$279:;
				{
					uint32* TMP$133$5;
					uint32* TMP$134$5;
					uint32* vr$46 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)S$1 + 112ll) );
					TMP$133$5 = vr$46;
					uint32* vr$47 = fb_WstrConcat( (uint32*)TMP$133$5, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) );
					TMP$134$5 = vr$47;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), TMP$134$5 );
					fb_WstrDelete( (uint32*)TMP$134$5 );
					fb_WstrDelete( (uint32*)TMP$133$5 );
				}
				label$278:;
			}
			goto label$276;
			label$277:;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) != 0ll ) goto label$281;
				{
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), *(uint32**)((uint8*)S$1 + 112ll) );
				}
				goto label$280;
				label$281:;
				{
					uint32* TMP$135$5;
					uint32* vr$56 = fb_WstrConcat( (uint32*)*(uint32**)((uint8*)S$1 + 112ll), (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) );
					TMP$135$5 = vr$56;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll), TMP$135$5 );
					fb_WstrDelete( (uint32*)TMP$135$5 );
				}
				label$280:;
			}
			label$276:;
			LGT$1 = *(int64*)((uint8*)S$1 + 80ll);
		}
		label$260:;
	}
	label$256:;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16792ll) = *(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16800ll);
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16784ll) + LGT$1;
	fb$result$1 = -1ll;
	label$255:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK* TOKHEAD$1, struct $9FB_DEFTOK* TOKTAIL$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$292:;
	label$294:;
	if( TOKTAIL$1 == (struct $9FB_DEFTOK*)0ull ) goto label$295;
	{
		if( *(int64*)TOKTAIL$1 == 2ll ) goto label$297;
		{
			goto label$295;
		}
		label$297:;
		label$296:;
		{
			uint64 TMP$136$3;
			TMP$136$3 = (uint64)*(uint8*)*(uint8**)((uint8*)TOKTAIL$1 + 8ll);
			goto label$299;
			label$300:;
			{
				struct $9FB_DEFTOK* vr$5 = SYMBDELDEFINETOK( TOKTAIL$1 );
				TOKTAIL$1 = vr$5;
			}
			goto label$298;
			label$301:;
			{
				goto label$295;
			}
			goto label$298;
			label$299:;
			static const void* tmp$150[24ll] = {
				&&label$300,
				&&label$300,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$301,
				&&label$300,
			};
			if( (TMP$136$3 - 9ull) > 23ull ) goto label$301;
			goto *tmp$150[TMP$136$3 - 9ull];
			label$298:;
		}
	}
	goto label$294;
	label$295:;
	if( TOKTAIL$1 != (struct $9FB_DEFTOK*)0ull ) goto label$303;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	}
	goto label$302;
	label$303:;
	{
		fb$result$1 = TOKHEAD$1;
	}
	label$302:;
	label$293:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HREADMACROTEXT( int64 ARGS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, int64 ISMULTILINE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$304:;
	static uint8 ARG$1[129];
	struct $11FB_DEFPARAM* PARAM$1;
	struct $9FB_DEFTOK* TOKTAIL$1;
	TOKTAIL$1 = (struct $9FB_DEFTOK*)0ull;
	struct $9FB_DEFTOK* TOKHEAD$1;
	TOKHEAD$1 = (struct $9FB_DEFTOK*)0ull;
	int64 ADDQUOTES$1;
	int64 NESTEDCNT$1;
	NESTEDCNT$1 = 0ll;
	label$306:;
	{
		ADDQUOTES$1 = 0ll;
		{
			uint64 TMP$137$3;
			int64 vr$1 = LEXGETTOKEN( 62ll );
			TMP$137$3 = (uint64)vr$1;
			goto label$310;
			label$311:;
			{
				if( ISMULTILINE$1 == 0ll ) goto label$313;
				{
					ERRREPORT( 134ll, 0ll, (uint8*)0ull );
				}
				label$313:;
				label$312:;
				goto label$307;
			}
			goto label$309;
			label$314:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$316;
				{
					goto label$307;
				}
				label$316:;
				label$315:;
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0ull ) goto label$318;
				{
					struct $9FB_DEFTOK* vr$2 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$2;
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)"\x0A" );
				}
				label$318:;
				label$317:;
				LEXSKIPTOKEN( 62ll );
				goto label$308;
			}
			goto label$309;
			label$319:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$321;
				{
					goto label$307;
				}
				label$321:;
				label$320:;
				label$322:;
				{
					LEXSKIPTOKEN( 62ll );
					{
						int64 TMP$139$6;
						int64 vr$5 = LEXGETTOKEN( 62ll );
						TMP$139$6 = vr$5;
						if( TMP$139$6 == 257ll ) goto label$327;
						label$328:;
						if( TMP$139$6 != 256ll ) goto label$326;
						label$327:;
						{
							goto label$323;
						}
						label$326:;
						label$325:;
					}
				}
				label$324:;
				goto label$322;
				label$323:;
				goto label$308;
			}
			goto label$309;
			label$329:;
			{
				{
					int64 TMP$140$5;
					int64 vr$6 = LEXGETLOOKAHEAD( 1ll, 314ll );
					TMP$140$5 = vr$6;
					if( TMP$140$5 != 35ll ) goto label$331;
					label$332:;
					{
						LEXSKIPTOKEN( 62ll );
						LEXSKIPTOKEN( 62ll );
						goto label$308;
					}
					goto label$330;
					label$331:;
					if( TMP$140$5 != 274ll ) goto label$333;
					label$334:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$336;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1ll;
						}
						label$336:;
						label$335:;
					}
					goto label$330;
					label$333:;
					if( TMP$140$5 != 275ll ) goto label$337;
					label$338:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$340;
						{
							if( NESTEDCNT$1 != 0ll ) goto label$342;
							{
								LEXSKIPTOKEN( 62ll );
								LEXSKIPTOKEN( 0ll );
								struct $9FB_DEFTOK* vr$8 = HRTRIMMACROTEXT( TOKHEAD$1, TOKTAIL$1 );
								TOKHEAD$1 = vr$8;
								goto label$307;
							}
							label$342:;
							label$341:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1ll;
						}
						label$340:;
						label$339:;
					}
					goto label$330;
					label$337:;
					if( TMP$140$5 != 265ll ) goto label$343;
					label$344:;
					{
						LEXSKIPTOKEN( 62ll );
						ADDQUOTES$1 = -1ll;
					}
					label$343:;
					label$330:;
				}
			}
			goto label$309;
			label$345:;
			{
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0ull ) goto label$347;
				{
					struct $9FB_DEFTOK* vr$10 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$10;
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)" " );
				}
				label$347:;
				label$346:;
				LEXSKIPTOKEN( 62ll );
				goto label$308;
			}
			goto label$309;
			label$310:;
			static const void* tmp$151[252ll] = {
				&&label$345,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$345,
				&&label$309,
				&&label$309,
				&&label$329,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$309,
				&&label$311,
				&&label$314,
				&&label$309,
				&&label$319,
				&&label$319,
			};
			if( (TMP$137$3 - 9ull) > 251ull ) goto label$309;
			goto *tmp$151[TMP$137$3 - 9ull];
			label$309:;
		}
		{
			uint64 TMP$142$3;
			int64 vr$13 = LEXGETCLASS( 62ll );
			TMP$142$3 = (uint64)vr$13;
			goto label$349;
			label$350:;
			{
				if( *(int64*)((uint8*)&ENV$ + 840ll) != 0ll ) goto label$352;
				{
					struct $9FB_DEFTOK* vr$14 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$14;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$354;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$354:;
					label$353:;
					uint8* vr$15 = LEXGETTEXT(  );
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$15 );
				}
				goto label$351;
				label$352:;
				{
					struct $9FB_DEFTOK* vr$18 = SYMBADDDEFINETOK( TOKTAIL$1, 3ll );
					TOKTAIL$1 = vr$18;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$356;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$356:;
					label$355:;
					WSTRASSIGN( (uint32**)((uint8*)TOKTAIL$1 + 8ll), (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16712ll) + 24ll) );
				}
				label$351:;
				LEXSKIPTOKEN( 62ll );
			}
			goto label$348;
			label$357:;
			{
				struct $9FB_DEFTOK* vr$24 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
				TOKTAIL$1 = vr$24;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$359;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$359:;
				label$358:;
				uint8* vr$25 = LEXGETTEXT(  );
				FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)vr$25 );
				FBSTRING* vr$27 = fb_StrUcase2( (FBSTRING*)vr$26, 0 );
				fb_StrAssign( (void*)ARG$1, 129ll, (void*)vr$27, -1ll, 0 );
				void* vr$29 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)ARG$1 );
				PARAM$1 = (struct $11FB_DEFPARAM*)vr$29;
				if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$361;
				{
					if( ADDQUOTES$1 != 0ll ) goto label$363;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 0ll;
					}
					goto label$362;
					label$363:;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 1ll;
					}
					label$362:;
					*(int64*)((uint8*)TOKTAIL$1 + 8ll) = *(int64*)((uint8*)PARAM$1 + 8ll);
				}
				goto label$360;
				label$361:;
				{
					if( ADDQUOTES$1 == 0ll ) goto label$365;
					{
						ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)"#" );
						uint8* vr$36 = LEXGETTEXT(  );
						ZSTRCONCATASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$36 );
					}
					goto label$364;
					label$365:;
					{
						uint8* vr$39 = LEXGETTEXT(  );
						ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$39 );
					}
					label$364:;
				}
				label$360:;
				LEXSKIPTOKEN( 62ll );
			}
			goto label$348;
			label$366:;
			{
				struct $9FB_DEFTOK* vr$42 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
				TOKTAIL$1 = vr$42;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$368;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$368:;
				label$367:;
				uint8* vr$43 = LEXGETTEXT(  );
				ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$43 );
				LEXSKIPTOKEN( 62ll );
			}
			goto label$348;
			label$349:;
			static const void* tmp$152[5ll] = {
				&&label$357,
				&&label$357,
				&&label$357,
				&&label$366,
				&&label$350,
			};
			if( TMP$142$3 > 4ull ) goto label$366;
			goto *tmp$152[TMP$142$3 - 0ull];
			label$348:;
		}
	}
	label$308:;
	goto label$306;
	label$307:;
	fb$result$1 = TOKHEAD$1;
	label$305:;
	return fb$result$1;
}

static void HREADDEFINETEXT( struct $8FBSYMBOL* SYM$1, uint8* DEFNAME$1, int64 ISARGLESS$1, int64 ISMULTILINE$1, int64 FLAGS$1 )
{
	label$369:;
	uint8* TEXT$1;
	uint32* TEXTW$1;
	if( *(int64*)((uint8*)&ENV$ + 840ll) != 0ll ) goto label$372;
	{
		uint8* vr$0 = PPREADLITERAL( ISMULTILINE$1 );
		TEXT$1 = vr$0;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$374;
		{
			if( ((int64)-(*(int64*)((uint8*)SYM$1 + 96ll) > 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 4ll)) == 0ll ) goto label$376;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			goto label$375;
			label$376:;
			int32 vr$8 = fb_StrCompare( *(void**)((uint8*)SYM$1 + 112ll), 0ll, (void*)TEXT$1, 0ll );
			if( (int64)vr$8 == 0ll ) goto label$377;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			label$377:;
			label$375:;
		}
		goto label$373;
		label$374:;
		{
			int64 vr$10 = fb_StrLen( (void*)TEXT$1, 0ll );
			SYMBADDDEFINE( (uint8*)DEFNAME$1, TEXT$1, vr$10, ISARGLESS$1, (tmp$27)0ull, FLAGS$1 );
		}
		label$373:;
	}
	goto label$371;
	label$372:;
	{
		uint32* vr$11 = PPREADLITERALW( ISMULTILINE$1 );
		TEXTW$1 = vr$11;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$379;
		{
			if( ((int64)-(*(int64*)((uint8*)SYM$1 + 96ll) > 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 7ll)) == 0ll ) goto label$381;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			goto label$380;
			label$381:;
			int32 vr$19 = fb_WstrCompare( (uint32*)*(uint32**)((uint8*)SYM$1 + 112ll), (uint32*)TEXTW$1 );
			if( (int64)vr$19 == 0ll ) goto label$382;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			label$382:;
			label$380:;
		}
		goto label$378;
		label$379:;
		{
			int64 vr$21 = fb_WstrLen( (uint32*)TEXTW$1 );
			SYMBADDDEFINEW( DEFNAME$1, TEXTW$1, vr$21, ISARGLESS$1, (tmp$27)0ull, FLAGS$1 );
		}
		label$378:;
	}
	label$371:;
	label$370:;
}

static int64 HMATCHPARAMELLIPSIS( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$383:;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 34ll );
	if( vr$1 != 46ll ) goto label$386;
	{
		int64 vr$2 = LEXGETLOOKAHEAD( 1ll, 34ll );
		if( vr$2 != 46ll ) goto label$388;
		{
			int64 vr$3 = LEXGETLOOKAHEAD( 2ll, 34ll );
			if( vr$3 != 46ll ) goto label$390;
			{
				LEXSKIPTOKEN( 34ll );
				LEXSKIPTOKEN( 34ll );
				LEXSKIPTOKEN( 34ll );
				fb$result$1 = -1ll;
			}
			label$390:;
			label$389:;
		}
		label$388:;
		label$387:;
	}
	label$386:;
	label$385:;
	label$384:;
	return fb$result$1;
}
