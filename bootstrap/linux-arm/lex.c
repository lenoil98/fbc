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
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int32 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 24 );
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
typedef int32 $8FB_TOKEN;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileGetStr( int32, int32, void*, int32 );
int64 fb_FileTell( int32 );
int32 fb_FileSeek( int32, int32 );
int32 fb_FileEof( int32 );
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
FBSTRING* fb_WstrToStr( uint32* );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__lex( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $10FBSYMCHAIN* SYMBLOOKUP( uint8*, $8FB_TOKEN*, $10FB_TKCLASS* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
int32 TYPETOUNSIGNED( int32 );
void DZSTRALLOCATE( struct $8DZSTRING*, int32 );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNC( struct $8DZSTRING*, uint32 );
void DWSTRALLOCATE( struct $8DWSTRING*, int32 );
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXPPONLYEMITTOKEN( void );
void LEXSKIPTOKEN( $8LEXCHECK );
void LEXREADLINE( uint32, uint8*, int32 );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint32 LEXCURRENTCHAR( int32 );
uint32 LEXGETLOOKAHEADCHAR( int32 );
void LEXEATCHAR( void );
void LEXCHECKTOKEN( $8LEXCHECK );
void PPINIT( void );
void PPEND( void );
void PPCHECK( void );
int32 PPDEFINELOAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void LEXREADUTF8( void );
void LEXREADUTF16LE( void );
void LEXREADUTF16BE( void );
void LEXREADUTF32LE( void );
void LEXREADUTF32BE( void );
static void HMULTILINECOMMENT( void );
static void HSKIPCHAR( void );
static void HCOLLECTCHARFORDEBUGOUTPUT( uint32 );
static uint32 HREADCHAR( void );
static void HREADIDENTIFIER( uint8*, int32*, int32*, int32*, $8LEXCHECK );
static uint64 HREADNONDECNUMBER( uint8**, int32*, int32*, $8LEXCHECK );
static void HREADFLOATNUMBER( uint8**, struct $7FBTOKEN*, int32, $8LEXCHECK );
static void READNUMBERCHARS( struct $7FBTOKEN*, $8LEXCHECK*, uint8**, int32*, uint64* );
static void HREADNUMBER( struct $7FBTOKEN*, $8LEXCHECK );
static void HREADSTRING( struct $7FBTOKEN*, uint8*, $8LEXCHECK );
static void HREADWSTR( struct $7FBTOKEN*, uint32*, $8LEXCHECK );
static void HCHECKPERIODS( struct $7FBTOKEN*, $8LEXCHECK, struct $10FBSYMCHAIN* );
static int32 READID( struct $7FBTOKEN*, $8LEXCHECK );
static void HMOVEKDOWN( void );
static FBSTRING* LEXGETSTRLITTEXT( int32 );
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
static FBSTRING PPONLY_LN$;
struct $7LEX_CTX LEX$;

void LEXPUSHCTX( void )
{
	label$10:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49408);
	label$11:;
}

void LEXPOPCTX( void )
{
	label$12:;
	if( *(int32*)((uint8*)&ENV$ + 876) != 0 ) goto label$15;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392), 0 );
	}
	label$15:;
	label$14:;
	if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$17;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), 0 );
	}
	goto label$16;
	label$17:;
	{
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), 0 );
	}
	label$16:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -49408);
	label$13:;
}

void LEXINIT( int32 ISINCLUDE$1, int32 IS_FB_EVAL$1 )
{
	label$18:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	struct $7FBTOKEN* N$1;
	__builtin_memset( &N$1, 0, 4 );
	if( (-(*(int32*)((uint8*)&ENV$ + 876) == 0) & -(IS_FB_EVAL$1 == 0)) == 0 ) goto label$21;
	{
		*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) = (struct $9LEX_TKCTX*)&LEX$;
	}
	label$21:;
	label$20:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) = 0;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = (struct $7FBTOKEN*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936);
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
	N$1 = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
	{
		I$1 = 0;
		label$25:;
		{
			*(struct $7FBTOKEN**)((uint8*)N$1 + 4132) = (struct $7FBTOKEN*)((uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + (I$1 * 4136)) + 4136);
			N$1 = *(struct $7FBTOKEN**)((uint8*)N$1 + 4132);
		}
		label$23:;
		I$1 = I$1 + 1;
		label$22:;
		if( I$1 <= 2 ) goto label$25;
		label$24:;
	}
	*(struct $7FBTOKEN**)((uint8*)N$1 + 4132) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
	{
		I$1 = 0;
		label$29:;
		{
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + (I$1 * 4136)) = -1;
		}
		label$27:;
		I$1 = I$1 + 1;
		label$26:;
		if( I$1 <= 3 ) goto label$29;
		label$28:;
	}
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) = 4294967295u;
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) = 4294967295u;
	if( IS_FB_EVAL$1 == 0 ) goto label$31;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -32844);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -32836);
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16576) = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -32832);
	}
	goto label$30;
	label$31:;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = 1;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) = 0;
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16576) = (struct $8FBSYMBOL*)0u;
	}
	label$30:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16568) = -1;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) = 0;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) = 0;
	if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$33;
	{
		uint8* TMP$93$2;
		if( IS_FB_EVAL$1 == 0 ) goto label$34;
		TMP$93$2 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16612);
		goto label$41;
		label$34:;
		TMP$93$2 = (uint8*)0u;
		label$41:;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) = TMP$93$2;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = (uint8*)0u;
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), 0 );
	}
	goto label$32;
	label$33:;
	{
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16612);
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = (uint32*)0u;
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), 0 );
	}
	label$32:;
	if( IS_FB_EVAL$1 == 0 ) goto label$36;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49384) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -24);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49388) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + -20);
	}
	goto label$35;
	label$36:;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49384) = 0;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49388) = 0;
	}
	label$35:;
	if( (-(*(int32*)((uint8*)&ENV$ + 876) == 0) | -(IS_FB_EVAL$1 == -1)) == 0 ) goto label$38;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392), 0 );
		*(int32*)((uint8*)&LEX$ + 839940) = 0;
	}
	label$38:;
	label$37:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49404) = 0;
	if( (-(ISINCLUDE$1 == 0) & -(IS_FB_EVAL$1 == 0)) == 0 ) goto label$40;
	{
		PPINIT(  );
	}
	label$40:;
	label$39:;
	label$19:;
}

void LEXEND( void )
{
	label$42:;
	fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)"", 1, 0 );
	PPEND(  );
	label$43:;
}

void LEXEATCHAR( void )
{
	label$90:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) != 4294967295u ) goto label$93;
	{
		HSKIPCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) = 4294967295u;
	}
	goto label$92;
	label$93:;
	{
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560);
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) = 4294967295u;
	}
	label$92:;
	label$91:;
}

uint32 LEXCURRENTCHAR( int32 SKIPWHITESPC$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$105:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) != 4294967295u ) goto label$108;
	{
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) = vr$2;
	}
	label$108:;
	label$107:;
	if( SKIPWHITESPC$1 == 0 ) goto label$110;
	{
		label$111:;
		if( (-(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) == 9u) | -(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) == 32u)) == 0 ) goto label$112;
		{
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49404) = -1;
			LEXEATCHAR(  );
			uint32 vr$10 = HREADCHAR(  );
			*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) = vr$10;
		}
		goto label$111;
		label$112:;
	}
	label$110:;
	label$109:;
	fb$result$1 = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556);
	label$106:;
	return fb$result$1;
}

uint32 LEXGETLOOKAHEADCHAR( int32 SKIPWHITESPC$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$113:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) != 4294967295u ) goto label$116;
	{
		HSKIPCHAR(  );
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) = vr$2;
	}
	label$116:;
	label$115:;
	if( SKIPWHITESPC$1 == 0 ) goto label$118;
	{
		label$119:;
		if( (-(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) == 9u) | -(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) == 32u)) == 0 ) goto label$120;
		{
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49404) = -1;
			HSKIPCHAR(  );
			uint32 vr$10 = HREADCHAR(  );
			*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560) = vr$10;
		}
		goto label$119;
		label$120:;
	}
	label$118:;
	label$117:;
	fb$result$1 = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16560);
	label$114:;
	return fb$result$1;
}

void LEXNEXTTOKEN( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	label$565:;
	uint32 CHAR$1;
	int32 ISLINECONT$1;
	int32 LGT$1;
	*(int32*)((uint8*)T$1 + 4128) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49404);
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49404) = 0;
	label$567:;
	*(uint8*)((uint8*)T$1 + 12) = (uint8)0u;
	*(int32*)((uint8*)T$1 + 4112) = 0;
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = (struct $10FBSYMCHAIN*)0u;
	ISLINECONT$1 = 0;
	label$568:;
	{
		uint32 vr$6 = LEXCURRENTCHAR( 0 );
		CHAR$1 = vr$6;
		{
			uint32 TMP$120$3;
			TMP$120$3 = CHAR$1;
			goto label$572;
			label$573:;
			{
				*(int32*)T$1 = 256;
				*(int32*)((uint8*)T$1 + 4) = 6;
				*(int32*)((uint8*)T$1 + 8) = -2147483648u;
				*(int32*)((uint8*)T$1 + 4124) = 0;
				goto label$566;
			}
			goto label$571;
			label$574:;
			{
				if( ISLINECONT$1 == 0 ) goto label$576;
				{
					LEXEATCHAR(  );
					goto label$570;
				}
				label$576:;
				label$575:;
				if( (FLAGS$1 & 1) != 0 ) goto label$578;
				{
					{
						uint32 TMP$121$6;
						uint32 vr$12 = LEXGETLOOKAHEADCHAR( 0 );
						TMP$121$6 = vr$12;
						goto label$580;
						label$581:;
						{
							goto label$569;
						}
						goto label$579;
						label$582:;
						{
							LEXEATCHAR(  );
							ISLINECONT$1 = -1;
							goto label$570;
						}
						goto label$579;
						label$580:;
						static const void* tmp$130[75] = {
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$582,
							&&label$581,
							&&label$582,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
							&&label$581,
						};
						if( (TMP$121$6 - 48u) > 74u ) goto label$582;
						goto *tmp$130[TMP$121$6 - 48u];
						label$579:;
					}
				}
				goto label$577;
				label$578:;
				{
					goto label$569;
				}
				label$577:;
			}
			goto label$571;
			label$583:;
			{
				LEXEATCHAR(  );
				if( CHAR$1 != 13u ) goto label$585;
				{
					uint32 vr$13 = LEXCURRENTCHAR( 0 );
					if( vr$13 != 10u ) goto label$587;
					{
						LEXEATCHAR(  );
					}
					label$587:;
					label$586:;
				}
				label$585:;
				label$584:;
				if( ISLINECONT$1 != 0 ) goto label$589;
				{
					*(int32*)T$1 = 257;
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)((uint8*)T$1 + 8) = -2147483648u;
					*(int32*)((uint8*)T$1 + 4124) = 0;
					*(int32*)((uint8*)T$1 + 4112) = 1;
					*(uint8*)((uint8*)T$1 + 12) = (uint8)10u;
					*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
					goto label$566;
				}
				goto label$588;
				label$589:;
				{
					*(int32*)((uint8*)T$1 + 4128) = -1;
					if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) != 0 ) goto label$591;
					{
						*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) + 1;
					}
					label$591:;
					label$590:;
					ISLINECONT$1 = 0;
					goto label$570;
				}
				label$588:;
			}
			goto label$571;
			label$592:;
			{
				*(int32*)((uint8*)T$1 + 4128) = -1;
				if( ISLINECONT$1 != 0 ) goto label$594;
				{
					if( (FLAGS$1 & 4) == 0 ) goto label$596;
					{
						goto label$569;
					}
					label$596:;
					label$595:;
				}
				label$594:;
				label$593:;
				LEXEATCHAR(  );
			}
			goto label$571;
			label$597:;
			{
				if( ISLINECONT$1 != 0 ) goto label$599;
				{
					goto label$569;
				}
				label$599:;
				label$598:;
				LEXEATCHAR(  );
			}
			goto label$571;
			label$572:;
			static const void* tmp$131[96] = {
				&&label$573,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$592,
				&&label$583,
				&&label$597,
				&&label$597,
				&&label$583,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$592,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$597,
				&&label$574,
			};
			if( TMP$120$3 > 95u ) goto label$597;
			goto *tmp$131[TMP$120$3 - 0u];
			label$571:;
		}
	}
	label$570:;
	goto label$568;
	label$569:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49388) = (*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49384) + (*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) - (int32)(uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16612))) + -1;
	{
		uint32 TMP$122$2;
		TMP$122$2 = CHAR$1;
		goto label$601;
		label$602:;
		{
			if( (FLAGS$1 & 9) != 0 ) goto label$604;
			{
				uint32 LACHAR$4;
				uint32 vr$37 = LEXGETLOOKAHEADCHAR( -1 );
				LACHAR$4 = vr$37;
				if( (-(LACHAR$4 >= 48u) & -(LACHAR$4 <= 57u)) == 0 ) goto label$606;
				{
					HREADNUMBER( T$1, FLAGS$1 );
					goto label$600;
				}
				label$606:;
				label$605:;
			}
			label$604:;
			label$603:;
			goto label$607;
		}
		goto label$600;
		label$608:;
		{
			{
				uint32 TMP$123$4;
				uint32 vr$41 = LEXGETLOOKAHEADCHAR( 0 );
				TMP$123$4 = vr$41;
				if( TMP$123$4 == 72u ) goto label$611;
				label$612:;
				if( TMP$123$4 == 104u ) goto label$611;
				label$613:;
				if( TMP$123$4 == 79u ) goto label$611;
				label$614:;
				if( TMP$123$4 == 111u ) goto label$611;
				label$615:;
				if( TMP$123$4 == 66u ) goto label$611;
				label$616:;
				if( TMP$123$4 != 98u ) goto label$610;
				label$611:;
				{
					HREADNUMBER( T$1, FLAGS$1 );
				}
				goto label$609;
				label$610:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					*(int32*)T$1 = 38;
					*(int32*)((uint8*)T$1 + 8) = *(int32*)T$1;
					*(int32*)((uint8*)T$1 + 4112) = 1;
					*(uint8*)((uint8*)T$1 + 12) = (uint8)38u;
					*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
					LEXEATCHAR(  );
				}
				label$617:;
				label$609:;
			}
		}
		goto label$600;
		label$618:;
		{
			HREADNUMBER( T$1, FLAGS$1 );
		}
		goto label$600;
		label$619:;
		{
			int32 vr$49 = READID( T$1, FLAGS$1 );
			if( ~vr$49 == 0 ) goto label$621;
			{
				goto label$567;
			}
			label$621:;
			label$620:;
		}
		goto label$600;
		label$622:;
		{
			$8FB_TOKEN TMP$124$3;
			*(int32*)((uint8*)T$1 + 4) = 4;
			if( *(int32*)((uint8*)&ENV$ + 940) == 0 ) goto label$623;
			TMP$124$3 = 263;
			goto label$679;
			label$623:;
			TMP$124$3 = 262;
			label$679:;
			*(int32*)T$1 = TMP$124$3;
			*(int32*)((uint8*)T$1 + 8) = -2147483648u;
			if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$625;
			{
				HREADSTRING( T$1, (uint8*)((uint8*)T$1 + 12), FLAGS$1 );
			}
			goto label$624;
			label$625:;
			{
				HREADWSTR( T$1, (uint32*)((uint8*)T$1 + 12), FLAGS$1 );
			}
			label$624:;
		}
		goto label$600;
		label$626:;
		{
			$8FB_TOKEN TMP$125$3;
			uint32 vr$58 = LEXGETLOOKAHEADCHAR( 0 );
			if( vr$58 == 34u ) goto label$628;
			{
				goto label$607;
			}
			label$628:;
			label$627:;
			LEXEATCHAR(  );
			*(int32*)((uint8*)T$1 + 4) = 4;
			if( CHAR$1 != 33u ) goto label$629;
			TMP$125$3 = 263;
			goto label$680;
			label$629:;
			TMP$125$3 = 264;
			label$680:;
			*(int32*)T$1 = TMP$125$3;
			*(int32*)((uint8*)T$1 + 8) = -2147483648u;
			if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$631;
			{
				uint8* PS$4;
				if( (FLAGS$1 & 16) != 0 ) goto label$633;
				{
					PS$4 = (uint8*)((uint8*)T$1 + 12);
				}
				goto label$632;
				label$633:;
				{
					*(uint8*)((uint8*)T$1 + 12) = (uint8)CHAR$1;
					PS$4 = (uint8*)((uint8*)T$1 + 13);
				}
				label$632:;
				HREADSTRING( T$1, PS$4, FLAGS$1 );
			}
			goto label$630;
			label$631:;
			{
				uint32* PS$4;
				if( (FLAGS$1 & 16) != 0 ) goto label$635;
				{
					PS$4 = (uint32*)((uint8*)T$1 + 12);
				}
				goto label$634;
				label$635:;
				{
					*(uint32*)((uint8*)T$1 + 12) = CHAR$1;
					PS$4 = (uint32*)((uint8*)T$1 + 16);
				}
				label$634:;
				HREADWSTR( T$1, PS$4, FLAGS$1 );
			}
			label$630:;
		}
		goto label$600;
		label$636:;
		{
			label$607:;
			*(int32*)T$1 = (int32)CHAR$1;
			*(int32*)((uint8*)T$1 + 8) = *(int32*)T$1;
			*(int32*)((uint8*)T$1 + 4124) = 0;
			*(int32*)((uint8*)T$1 + 4112) = 1;
			*(uint8*)((uint8*)T$1 + 12) = (uint8)CHAR$1;
			*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
			LEXEATCHAR(  );
			{
				uint32 TMP$126$4;
				TMP$126$4 = CHAR$1;
				goto label$638;
				label$639:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					{
						if( CHAR$1 != 60u ) goto label$641;
						label$642:;
						{
							{
								uint32 TMP$127$8;
								uint32 vr$84 = LEXCURRENTCHAR( -1 );
								TMP$127$8 = vr$84;
								if( TMP$127$8 != 61u ) goto label$644;
								label$645:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)61u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
									*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
									*(int32*)T$1 = 303;
									LEXEATCHAR(  );
								}
								goto label$643;
								label$644:;
								if( TMP$127$8 != 62u ) goto label$646;
								label$647:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
									*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
									*(int32*)T$1 = 302;
									LEXEATCHAR(  );
								}
								goto label$643;
								label$646:;
								{
									*(int32*)T$1 = 301;
								}
								label$648:;
								label$643:;
							}
						}
						goto label$640;
						label$641:;
						if( CHAR$1 != 62u ) goto label$649;
						label$650:;
						{
							int32 TMP$128$7;
							if( (*(int32*)((uint8*)&PARSER$ + 148) & 512) != 0 ) goto label$651;
							uint32 vr$111 = LEXCURRENTCHAR( -1 );
							TMP$128$7 = -(vr$111 == 61u);
							goto label$681;
							label$651:;
							TMP$128$7 = 0;
							label$681:;
							if( TMP$128$7 == 0 ) goto label$653;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)61u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
								*(int32*)T$1 = 304;
								LEXEATCHAR(  );
							}
							goto label$652;
							label$653:;
							{
								*(int32*)T$1 = 300;
							}
							label$652:;
						}
						goto label$640;
						label$649:;
						if( CHAR$1 != 61u ) goto label$654;
						label$655:;
						{
							uint32 vr$126 = LEXCURRENTCHAR( -1 );
							if( vr$126 != 62u ) goto label$657;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
								*(int32*)T$1 = 305;
								LEXEATCHAR(  );
							}
							goto label$656;
							label$657:;
							{
								*(int32*)T$1 = 299;
							}
							label$656:;
						}
						label$654:;
						label$640:;
					}
				}
				goto label$637;
				label$658:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
				}
				goto label$637;
				label$659:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					uint32 vr$142 = LEXCURRENTCHAR( -1 );
					if( vr$142 != 62u ) goto label$661;
					{
						*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
						*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
						*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
						*(int32*)T$1 = 398;
						LEXEATCHAR(  );
					}
					label$661:;
					label$660:;
				}
				goto label$637;
				label$662:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					if( (FLAGS$1 & 512) != 0 ) goto label$664;
					{
						uint32 vr$157 = LEXCURRENTCHAR( 0 );
						if( vr$157 != 39u ) goto label$666;
						{
							HMULTILINECOMMENT(  );
							*(int32*)((uint8*)T$1 + 4128) = -1;
							goto label$567;
						}
						label$666:;
						label$665:;
					}
					label$664:;
					label$663:;
				}
				goto label$637;
				label$667:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 259;
				}
				goto label$637;
				label$668:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 258;
				}
				goto label$637;
				label$669:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
				}
				goto label$637;
				label$670:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 32;
					label$671:;
					{
						{
							uint32 TMP$129$7;
							uint32 vr$166 = LEXCURRENTCHAR( 0 );
							TMP$129$7 = vr$166;
							goto label$675;
							label$676:;
							{
								LEXEATCHAR(  );
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)32u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
							}
							goto label$674;
							label$677:;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)0u;
								goto label$672;
							}
							goto label$674;
							label$675:;
							static const void* tmp$132[24] = {
								&&label$676,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$677,
								&&label$676,
							};
							if( (TMP$129$7 - 9u) > 23u ) goto label$677;
							goto *tmp$132[TMP$129$7 - 9u];
							label$674:;
						}
					}
					label$673:;
					goto label$671;
					label$672:;
				}
				goto label$637;
				label$678:;
				{
					*(int32*)((uint8*)T$1 + 4) = 7;
				}
				goto label$637;
				label$638:;
				static const void* tmp$133[117] = {
					&&label$670,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$670,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$667,
					&&label$669,
					&&label$669,
					&&label$658,
					&&label$658,
					&&label$669,
					&&label$659,
					&&label$669,
					&&label$662,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$668,
					&&label$669,
					&&label$639,
					&&label$639,
					&&label$639,
					&&label$678,
					&&label$658,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$669,
					&&label$658,
					&&label$669,
					&&label$658,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$678,
					&&label$669,
					&&label$678,
					&&label$669,
				};
				if( (TMP$126$4 - 9u) > 116u ) goto label$678;
				goto *tmp$133[TMP$126$4 - 9u];
				label$637:;
			}
		}
		goto label$600;
		label$601:;
		static const void* tmp$134[90] = {
			&&label$626,
			&&label$622,
			&&label$636,
			&&label$626,
			&&label$636,
			&&label$608,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$602,
			&&label$636,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$618,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$636,
			&&label$619,
			&&label$636,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
			&&label$619,
		};
		if( (TMP$122$2 - 33u) > 89u ) goto label$636;
		goto *tmp$134[TMP$122$2 - 33u];
		label$600:;
	}
	label$566:;
}

int32 LEXGETTOKEN( $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$707:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) != -1 ) goto label$710;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548), FLAGS$1 );
		PPCHECK(  );
	}
	label$710:;
	label$709:;
	fb$result$1 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
	label$708:;
	return fb$result$1;
}

int32 LEXGETCLASS( $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$711:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) != -1 ) goto label$714;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548), FLAGS$1 );
		PPCHECK(  );
	}
	label$714:;
	label$713:;
	fb$result$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4);
	label$712:;
	return fb$result$1;
}

int32 LEXGETLOOKAHEAD( int32 K$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$715:;
	if( K$1 <= 3 ) goto label$718;
	{
		goto label$716;
	}
	label$718:;
	label$717:;
	if( K$1 <= *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) ) goto label$720;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) + 4132);
	}
	label$720:;
	label$719:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) != -1 ) goto label$722;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552), FLAGS$1 );
	}
	label$722:;
	label$721:;
	fb$result$1 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552);
	label$716:;
	return fb$result$1;
}

int32 LEXGETLOOKAHEADCLASS( int32 K$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$723:;
	if( K$1 <= 3 ) goto label$726;
	{
		goto label$724;
	}
	label$726:;
	label$725:;
	if( K$1 <= *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) ) goto label$728;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) + 4132);
	}
	label$728:;
	label$727:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) != -1 ) goto label$730;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552), FLAGS$1 );
	}
	label$730:;
	label$729:;
	fb$result$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16552) + 4);
	label$724:;
	return fb$result$1;
}

void LEXPPONLYEMITTOKEN( void )
{
	label$755:;
	{
		int32 TMP$143$2;
		int32 vr$0 = LEXGETTOKEN( 0 );
		TMP$143$2 = vr$0;
		if( TMP$143$2 == 259 ) goto label$759;
		label$760:;
		if( TMP$143$2 != 260 ) goto label$758;
		label$759:;
		{
			goto label$756;
		}
		goto label$757;
		label$758:;
		if( TMP$143$2 == 256 ) goto label$762;
		label$763:;
		if( TMP$143$2 != 257 ) goto label$761;
		label$762:;
		{
			int32 vr$1 = fb_StrLen( (void*)&PPONLY_LN$, -1 );
			if( vr$1 <= 0 ) goto label$765;
			{
				int32 TMP$144$4;
				TMP$144$4 = *(int32*)((uint8*)&ENV$ + 836);
				fb_PrintString( TMP$144$4, (FBSTRING*)&PPONLY_LN$, 1 );
				fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)"", 1, 0 );
			}
			goto label$764;
			label$765:;
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 != 257 ) goto label$766;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16568) != 257 ) goto label$768;
				{
					int32 TMP$145$5;
					TMP$145$5 = *(int32*)((uint8*)&ENV$ + 836);
					FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"", 0 );
					fb_PrintString( TMP$145$5, (FBSTRING*)vr$4, 1 );
				}
				label$768:;
				label$767:;
			}
			label$766:;
			label$764:;
			goto label$756;
		}
		label$761:;
		label$757:;
	}
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4128) == 0 ) goto label$770;
	{
		fb_StrConcatAssign( (void*)&PPONLY_LN$, -1, (void*)" ", 2, 0 );
	}
	label$770:;
	label$769:;
	{
		int32 TMP$147$2;
		int32 vr$7 = LEXGETTOKEN( 0 );
		TMP$147$2 = vr$7;
		if( TMP$147$2 == 262 ) goto label$773;
		label$774:;
		if( TMP$147$2 == 263 ) goto label$773;
		label$775:;
		if( TMP$147$2 != 264 ) goto label$772;
		label$773:;
		{
			int32 vr$8 = LEXGETTOKEN( 0 );
			FBSTRING* vr$9 = LEXGETSTRLITTEXT( vr$8 );
			fb_StrConcatAssign( (void*)&PPONLY_LN$, -1, (void*)vr$9, -1, 0 );
		}
		goto label$771;
		label$772:;
		{
			FBSTRING TMP$148$3;
			uint8* vr$10 = LEXGETTEXT(  );
			__builtin_memset( &TMP$148$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$148$3, (void*)&PPONLY_LN$, -1, (void*)vr$10, 0 );
			fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)vr$13, -1, 0 );
		}
		label$776:;
		label$771:;
	}
	label$756:;
}

void LEXPPONLYEMITTEXT( FBSTRING* S$1 )
{
	FBSTRING TMP$149$1;
	label$777:;
	__builtin_memset( &TMP$149$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$149$1, (void*)&PPONLY_LN$, -1, (void*)S$1, -1 );
	fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)vr$2, -1, 0 );
	label$778:;
}

void LEXSKIPTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$779:;
	LEXCHECKTOKEN( FLAGS$1 );
	FLAGS$1 = FLAGS$1 & -14337;
	if( *(int32*)((uint8*)&ENV$ + 836) <= 0 ) goto label$782;
	{
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) != 0 ) goto label$784;
		{
			LEXPPONLYEMITTOKEN(  );
		}
		label$784:;
		label$783:;
	}
	label$782:;
	label$781:;
	{
		int32 TMP$150$2;
		TMP$150$2 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
		if( TMP$150$2 != 257 ) goto label$786;
		label$787:;
		{
			if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) != 0 ) goto label$789;
			{
				*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) + 1;
			}
			label$789:;
			label$788:;
		}
		label$786:;
		label$785:;
	}
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16568) = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) != 0 ) goto label$791;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548), FLAGS$1 );
	}
	goto label$790;
	label$791:;
	{
		HMOVEKDOWN(  );
	}
	label$790:;
	PPCHECK(  );
	label$780:;
}

void LEXEATTOKEN( uint8* TOKEN$1, $8LEXCHECK FLAGS$1 )
{
	label$792:;
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) == 7 ) goto label$795;
	{
		fb_StrAssign( (void*)TOKEN$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12), 1025, 0 );
	}
	goto label$794;
	label$795:;
	{
		FBSTRING* vr$8 = fb_WstrToStr( (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12) );
		fb_StrAssign( (void*)TOKEN$1, 0, (void*)vr$8, -1, 0 );
	}
	label$794:;
	LEXSKIPTOKEN( FLAGS$1 );
	label$793:;
}

uint8* LEXGETTEXT( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$796:;
	static uint8 TMPSTR$1[1025];
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) == 7 ) goto label$799;
	{
		fb$result$1 = (uint8*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12);
	}
	goto label$798;
	label$799:;
	{
		FBSTRING* vr$9 = fb_WstrToStr( (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12) );
		fb_StrAssign( (void*)TMPSTR$1, 1025, (void*)vr$9, -1, 0 );
		fb$result$1 = (uint8*)TMPSTR$1;
	}
	label$798:;
	label$797:;
	return fb$result$1;
}

void LEXREADLINE( uint32 ENDCHAR$1, uint8* DST$1, int32 SKIPLINE$1 )
{
	label$800:;
	static uint32 CHAR$1;
	if( SKIPLINE$1 != 0 ) goto label$803;
	{
		fb_StrAssign( (void*)DST$1, 0, (void*)"", 1, 0 );
	}
	label$803:;
	label$802:;
	label$804:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) <= 0 ) goto label$805;
	{
		{
			int32 TMP$151$3;
			TMP$151$3 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
			if( TMP$151$3 == 256 ) goto label$808;
			label$809:;
			if( TMP$151$3 == 257 ) goto label$808;
			label$810:;
			if( (uint32)TMP$151$3 != ENDCHAR$1 ) goto label$807;
			label$808:;
			{
				goto label$801;
			}
			goto label$806;
			label$807:;
			{
				if( SKIPLINE$1 != 0 ) goto label$813;
				{
					FBSTRING TMP$152$5;
					__builtin_memset( &TMP$152$5, 0, 12 );
					FBSTRING* vr$8 = fb_StrConcat( &TMP$152$5, (void*)DST$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12), 1025 );
					fb_StrAssign( (void*)DST$1, 0, (void*)vr$8, -1, 0 );
				}
				label$813:;
				label$812:;
			}
			label$811:;
			label$806:;
		}
		HMOVEKDOWN(  );
	}
	goto label$804;
	label$805:;
	{
		int32 TMP$153$2;
		TMP$153$2 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548);
		if( TMP$153$2 == 256 ) goto label$816;
		label$817:;
		if( TMP$153$2 == 257 ) goto label$816;
		label$818:;
		if( (uint32)TMP$153$2 != ENDCHAR$1 ) goto label$815;
		label$816:;
		{
			goto label$801;
		}
		goto label$814;
		label$815:;
		{
			if( SKIPLINE$1 != 0 ) goto label$821;
			{
				FBSTRING TMP$154$4;
				__builtin_memset( &TMP$154$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$154$4, (void*)DST$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 12), 1025 );
				fb_StrAssign( (void*)DST$1, 0, (void*)vr$16, -1, 0 );
			}
			label$821:;
			label$820:;
		}
		label$819:;
		label$814:;
	}
	label$822:;
	{
		uint32 vr$17 = LEXCURRENTCHAR( 0 );
		CHAR$1 = vr$17;
		{
			uint32 TMP$155$3;
			TMP$155$3 = CHAR$1;
			goto label$826;
			label$827:;
			{
				*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = 256;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4) = 6;
				goto label$801;
			}
			goto label$825;
			label$828:;
			{
				LEXEATCHAR(  );
				if( CHAR$1 != 13u ) goto label$830;
				{
					uint32 vr$22 = LEXCURRENTCHAR( 0 );
					if( vr$22 != 10u ) goto label$832;
					{
						LEXEATCHAR(  );
					}
					label$832:;
					label$831:;
				}
				label$830:;
				label$829:;
				*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = 257;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4) = 6;
				goto label$801;
			}
			goto label$825;
			label$833:;
			{
				if( CHAR$1 != ENDCHAR$1 ) goto label$835;
				{
					*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = (int32)ENDCHAR$1;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4) = 6;
					goto label$801;
				}
				label$835:;
				label$834:;
			}
			goto label$825;
			label$826:;
			static const void* tmp$157[14] = {
				&&label$827,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$833,
				&&label$828,
				&&label$833,
				&&label$833,
				&&label$828,
			};
			if( TMP$155$3 > 13u ) goto label$833;
			goto *tmp$157[TMP$155$3 - 0u];
			label$825:;
		}
		LEXEATCHAR(  );
		if( SKIPLINE$1 != 0 ) goto label$837;
		{
			FBSTRING TMP$156$3;
			FBSTRING* vr$31 = fb_CHR( 1, (int32)CHAR$1 );
			__builtin_memset( &TMP$156$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$156$3, (void*)DST$1, 0, (void*)vr$31, -1 );
			fb_StrAssign( (void*)DST$1, 0, (void*)vr$34, -1, 0 );
		}
		label$837:;
		label$836:;
	}
	label$824:;
	goto label$822;
	label$823:;
	label$801:;
}

void LEXSKIPLINE( void )
{
	label$838:;
	LEXREADLINE( 4294967295u, (uint8*)0u, -1 );
	label$839:;
}

FBSTRING* LEXPEEKCURRENTLINE( FBSTRING* TOKEN_POS$1, int32 DO_TRIM$1 )
{
	FBSTRING TMP$165$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$840:;
	static uint8 BUFFER$1[1025];
	FBSTRING RES$1;
	__builtin_memset( &RES$1, 0, 12 );
	int32 P$1;
	__builtin_memset( &P$1, 0, 4 );
	int32 OLD_P$1;
	__builtin_memset( &OLD_P$1, 0, 4 );
	int32 START$1;
	__builtin_memset( &START$1, 0, 4 );
	int32 TOKEN_LEN$1;
	__builtin_memset( &TOKEN_LEN$1, 0, 4 );
	uint8* C$1;
	__builtin_memset( &C$1, 0, 4 );
	uint32 CHAR$1;
	__builtin_memset( &CHAR$1, 0, 4 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	if( *(int32*)((uint8*)&ENV$ + 552) == 0 ) goto label$843;
	{
		fb_StrDelete( (FBSTRING*)&RES$1 );
		goto label$841;
	}
	label$843:;
	label$842:;
	int64 vr$10 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 276) );
	OLD_P$1 = (int32)vr$10;
	P$1 = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49388) + -512;
	START$1 = 512;
	if( P$1 >= 0 ) goto label$845;
	{
		START$1 = START$1 + P$1;
		P$1 = 0;
	}
	label$845:;
	label$844:;
	int32 vr$16 = fb_FileGetStr( *(int32*)((uint8*)&ENV$ + 276), P$1 + 1, (void*)BUFFER$1, 1025 );
	if( vr$16 == 0 ) goto label$846;
	void* vr$17 = fb_ErrorThrowAt( 2369, (uint8*)"src/compiler/lex.bas", (void*)0u, (void*)0u );
	goto *vr$17;
	label$846:;
	int32 vr$18 = fb_FileSeek( *(int32*)((uint8*)&ENV$ + 276), OLD_P$1 );
	if( vr$18 == 0 ) goto label$847;
	void* vr$19 = fb_ErrorThrowAt( 2370, (uint8*)"src/compiler/lex.bas", (void*)0u, (void*)0u );
	goto *vr$19;
	label$847:;
	C$1 = (uint8*)((uint8*)BUFFER$1 + START$1);
	TOKEN_LEN$1 = 0;
	if( START$1 <= 0 ) goto label$849;
	{
		C$1 = (uint8*)(C$1 + -1);
		label$850:;
		{
			CHAR$1 = (uint32)*C$1;
			{
				if( CHAR$1 == 13u ) goto label$855;
				label$856:;
				if( CHAR$1 != 10u ) goto label$854;
				label$855:;
				{
					goto label$851;
				}
				label$854:;
				label$853:;
			}
			if( START$1 > 0 ) goto label$858;
			{
				goto label$851;
			}
			label$858:;
			label$857:;
			TOKEN_LEN$1 = TOKEN_LEN$1 + 1;
			C$1 = (uint8*)(C$1 + -1);
			START$1 = START$1 + -1;
		}
		label$852:;
		goto label$850;
		label$851:;
		C$1 = (uint8*)(C$1 + 1);
	}
	label$849:;
	label$848:;
	fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)TOKEN_POS$1, -1, (void*)"", 1, 0 );
	label$859:;
	{
		CHAR$1 = (uint32)*C$1;
		{
			if( CHAR$1 == 0u ) goto label$864;
			label$865:;
			if( CHAR$1 == 13u ) goto label$864;
			label$866:;
			if( CHAR$1 != 10u ) goto label$863;
			label$864:;
			{
				goto label$860;
			}
			label$863:;
			label$862:;
		}
		FBSTRING* vr$31 = fb_CHR( 1, (int32)CHAR$1 );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)vr$31, -1, 0 );
		if( TOKEN_LEN$1 <= 0 ) goto label$868;
		{
			int32 TMP$159$3;
			FBSTRING TMP$160$3;
			if( CHAR$1 != 9u ) goto label$869;
			TMP$159$3 = 9;
			goto label$894;
			label$869:;
			TMP$159$3 = 32;
			label$894:;
			FBSTRING* vr$33 = fb_CHR( 1, TMP$159$3 );
			__builtin_memset( &TMP$160$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$160$3, (void*)TOKEN_POS$1, -1, (void*)vr$33, -1 );
			fb_StrAssign( (void*)TOKEN_POS$1, -1, (void*)vr$36, -1, 0 );
			TOKEN_LEN$1 = TOKEN_LEN$1 + -1;
		}
		label$868:;
		label$867:;
		C$1 = (uint8*)(C$1 + 1);
	}
	label$861:;
	goto label$859;
	label$860:;
	if( DO_TRIM$1 == 0 ) goto label$871;
	{
		int32 I$2;
		__builtin_memset( &I$2, 0, 4 );
		{
			I$2 = 0;
			int32 TMP$161$3;
			int32 vr$41 = fb_StrLen( (void*)&RES$1, -1 );
			TMP$161$3 = vr$41 + -1;
			goto label$872;
			label$875:;
			{
				{
					uint8 TMP$162$5;
					TMP$162$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int32)TMP$162$5 == 9 ) goto label$878;
					label$879:;
					if( (int32)TMP$162$5 != 32 ) goto label$877;
					label$878:;
					{
					}
					goto label$876;
					label$877:;
					{
						goto label$874;
					}
					label$880:;
					label$876:;
				}
			}
			label$873:;
			I$2 = I$2 + 1;
			label$872:;
			if( I$2 <= TMP$161$3 ) goto label$875;
			label$874:;
		}
		int32 vr$48 = fb_StrLen( (void*)&RES$1, -1 );
		if( I$2 >= vr$48 ) goto label$882;
		{
			FBSTRING* vr$51 = fb_StrMid( (FBSTRING*)&RES$1, I$2 + 1, -1 );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$51, -1, 0 );
		}
		goto label$881;
		label$882:;
		{
			fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
		}
		label$881:;
		{
			int32 vr$55 = fb_StrLen( (void*)&RES$1, -1 );
			I$2 = vr$55 + -1;
			goto label$883;
			label$886:;
			{
				{
					uint8 TMP$163$5;
					TMP$163$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int32)TMP$163$5 == 9 ) goto label$889;
					label$890:;
					if( (int32)TMP$163$5 != 32 ) goto label$888;
					label$889:;
					{
					}
					goto label$887;
					label$888:;
					{
						goto label$885;
					}
					label$891:;
					label$887:;
				}
			}
			label$884:;
			I$2 = I$2 + -1;
			label$883:;
			if( I$2 >= 0 ) goto label$886;
			label$885:;
		}
		if( I$2 <= 0 ) goto label$893;
		{
			FBSTRING* vr$63 = fb_LEFT( (FBSTRING*)&RES$1, I$2 + 1 );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$63, -1, 0 );
		}
		label$893:;
		label$892:;
	}
	label$871:;
	label$870:;
	__builtin_memset( &TMP$165$1, 0, 12 );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$165$1, (void*)TOKEN_POS$1, -1, (void*)"^", 2 );
	fb_StrAssign( (void*)TOKEN_POS$1, -1, (void*)vr$67, -1, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$841:;
	FBSTRING* vr$72 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$72;
}

void LEXCHECKTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$895:;
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$898;
	{
		if( (FLAGS$1 & 14336) == 0 ) goto label$900;
		{
			if( (FLAGS$1 & 2048) == 0 ) goto label$902;
			{
				FBSTRING TMP$167$4;
				FBSTRING TMP$169$4;
				FBSTRING TMP$170$4;
				FBSTRING TMP$171$4;
				FBSTRING TMP$172$4;
				__builtin_memset( &TMP$172$4, 0, 12 );
				if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$903;
				FBSTRING* vr$9 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) );
				fb_StrInit( (void*)&TMP$167$4, -1, (void*)vr$9, -1, 0 );
				goto label$920;
				label$903:;
				fb_StrInit( (void*)&TMP$167$4, -1, (void*)"", 1, 0 );
				label$920:;
				uint8* vr$13 = LEXGETTEXT(  );
				__builtin_memset( &TMP$169$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$169$4, (void*)"in '", 5, (void*)vr$13, 0 );
				__builtin_memset( &TMP$170$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$170$4, (void*)vr$16, -1, (void*)&TMP$167$4, -1 );
				__builtin_memset( &TMP$171$4, 0, 12 );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$171$4, (void*)vr$19, -1, (void*)"'", 2 );
				fb_StrAssign( (void*)&TMP$172$4, -1, (void*)vr$22, -1, 0 );
				ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$172$4, 0, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$172$4 );
				fb_StrDelete( (FBSTRING*)&TMP$167$4 );
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) = -2147483648u;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) = 0;
			}
			goto label$901;
			label$902:;
			if( (FLAGS$1 & 4096) == 0 ) goto label$904;
			{
				if( (*(int32*)((uint8*)&ENV$ + 888) & 8388608) != 0 ) goto label$906;
				{
					FBSTRING TMP$173$5;
					FBSTRING TMP$174$5;
					FBSTRING TMP$175$5;
					FBSTRING TMP$176$5;
					FBSTRING TMP$177$5;
					__builtin_memset( &TMP$177$5, 0, 12 );
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$907;
					FBSTRING* vr$37 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) );
					fb_StrInit( (void*)&TMP$173$5, -1, (void*)vr$37, -1, 0 );
					goto label$921;
					label$907:;
					fb_StrInit( (void*)&TMP$173$5, -1, (void*)"", 1, 0 );
					label$921:;
					uint8* vr$41 = LEXGETTEXT(  );
					__builtin_memset( &TMP$174$5, 0, 12 );
					FBSTRING* vr$44 = fb_StrConcat( &TMP$174$5, (void*)"in '", 5, (void*)vr$41, 0 );
					__builtin_memset( &TMP$175$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$175$5, (void*)vr$44, -1, (void*)&TMP$173$5, -1 );
					__builtin_memset( &TMP$176$5, 0, 12 );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$176$5, (void*)vr$47, -1, (void*)"'", 2 );
					fb_StrAssign( (void*)&TMP$177$5, -1, (void*)vr$50, -1, 0 );
					ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$177$5, 0, (uint8*)0u );
					fb_StrDelete( (FBSTRING*)&TMP$177$5 );
					fb_StrDelete( (FBSTRING*)&TMP$173$5 );
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) = -2147483648u;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) = 0;
				}
				label$906:;
				label$905:;
			}
			goto label$901;
			label$904:;
			if( (FLAGS$1 & 8192) == 0 ) goto label$908;
			{
				if( (*(int32*)((uint8*)&ENV$ + 888) & 8388608) == 0 ) goto label$910;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 36 ) goto label$912;
					{
						FBSTRING TMP$178$6;
						FBSTRING TMP$179$6;
						FBSTRING TMP$180$6;
						FBSTRING TMP$181$6;
						FBSTRING TMP$182$6;
						__builtin_memset( &TMP$182$6, 0, 12 );
						if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$913;
						FBSTRING* vr$67 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) );
						fb_StrInit( (void*)&TMP$178$6, -1, (void*)vr$67, -1, 0 );
						goto label$922;
						label$913:;
						fb_StrInit( (void*)&TMP$178$6, -1, (void*)"", 1, 0 );
						label$922:;
						uint8* vr$71 = LEXGETTEXT(  );
						__builtin_memset( &TMP$179$6, 0, 12 );
						FBSTRING* vr$74 = fb_StrConcat( &TMP$179$6, (void*)"in '", 5, (void*)vr$71, 0 );
						__builtin_memset( &TMP$180$6, 0, 12 );
						FBSTRING* vr$77 = fb_StrConcat( &TMP$180$6, (void*)vr$74, -1, (void*)&TMP$178$6, -1 );
						__builtin_memset( &TMP$181$6, 0, 12 );
						FBSTRING* vr$80 = fb_StrConcat( &TMP$181$6, (void*)vr$77, -1, (void*)"'", 2 );
						fb_StrAssign( (void*)&TMP$182$6, -1, (void*)vr$80, -1, 0 );
						ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$182$6, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$182$6 );
						fb_StrDelete( (FBSTRING*)&TMP$178$6 );
						*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) = -2147483648u;
						*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) = 0;
					}
					label$912:;
					label$911:;
				}
				goto label$909;
				label$910:;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) != 36 ) goto label$915;
					{
						if( (*(int32*)((uint8*)&ENV$ + 196) & 256) == 0 ) goto label$917;
						{
							FBSTRING TMP$183$7;
							FBSTRING TMP$184$7;
							FBSTRING TMP$185$7;
							FBSTRING TMP$186$7;
							FBSTRING TMP$187$7;
							__builtin_memset( &TMP$187$7, 0, 12 );
							if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$918;
							FBSTRING* vr$96 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) );
							fb_StrInit( (void*)&TMP$183$7, -1, (void*)vr$96, -1, 0 );
							goto label$923;
							label$918:;
							fb_StrInit( (void*)&TMP$183$7, -1, (void*)"", 1, 0 );
							label$923:;
							uint8* vr$100 = LEXGETTEXT(  );
							__builtin_memset( &TMP$184$7, 0, 12 );
							FBSTRING* vr$103 = fb_StrConcat( &TMP$184$7, (void*)"in '", 5, (void*)vr$100, 0 );
							__builtin_memset( &TMP$185$7, 0, 12 );
							FBSTRING* vr$106 = fb_StrConcat( &TMP$185$7, (void*)vr$103, -1, (void*)&TMP$183$7, -1 );
							__builtin_memset( &TMP$186$7, 0, 12 );
							FBSTRING* vr$109 = fb_StrConcat( &TMP$186$7, (void*)vr$106, -1, (void*)"'", 2 );
							fb_StrAssign( (void*)&TMP$187$7, -1, (void*)vr$109, -1, 0 );
							ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$187$7, 0, (uint8*)0u );
							fb_StrDelete( (FBSTRING*)&TMP$187$7 );
							fb_StrDelete( (FBSTRING*)&TMP$183$7 );
						}
						label$917:;
						label$916:;
					}
					goto label$914;
					label$915:;
					{
						FBSTRING TMP$188$6;
						FBSTRING TMP$189$6;
						FBSTRING TMP$190$6;
						FBSTRING TMP$191$6;
						FBSTRING TMP$192$6;
						__builtin_memset( &TMP$192$6, 0, 12 );
						if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) == 0 ) goto label$919;
						FBSTRING* vr$118 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) );
						fb_StrInit( (void*)&TMP$188$6, -1, (void*)vr$118, -1, 0 );
						goto label$924;
						label$919:;
						fb_StrInit( (void*)&TMP$188$6, -1, (void*)"", 1, 0 );
						label$924:;
						uint8* vr$122 = LEXGETTEXT(  );
						__builtin_memset( &TMP$189$6, 0, 12 );
						FBSTRING* vr$125 = fb_StrConcat( &TMP$189$6, (void*)"in '", 5, (void*)vr$122, 0 );
						__builtin_memset( &TMP$190$6, 0, 12 );
						FBSTRING* vr$128 = fb_StrConcat( &TMP$190$6, (void*)vr$125, -1, (void*)&TMP$188$6, -1 );
						__builtin_memset( &TMP$191$6, 0, 12 );
						FBSTRING* vr$131 = fb_StrConcat( &TMP$191$6, (void*)vr$128, -1, (void*)"'", 2 );
						fb_StrAssign( (void*)&TMP$192$6, -1, (void*)vr$131, -1, 0 );
						ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$192$6, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$192$6 );
						fb_StrDelete( (FBSTRING*)&TMP$188$6 );
					}
					label$914:;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) = -2147483648u;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) = 0;
				}
				label$909:;
			}
			label$908:;
			label$901:;
		}
		label$900:;
		label$899:;
	}
	label$898:;
	label$897:;
	label$896:;
}

int32 HMATCHIDORKW( uint8* TXT$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$925:;
	{
		int32 TMP$193$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$193$2 = vr$1;
		if( TMP$193$2 == 0 ) goto label$929;
		label$930:;
		if( TMP$193$2 == 2 ) goto label$929;
		label$931:;
		if( TMP$193$2 != 1 ) goto label$928;
		label$929:;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)vr$2 );
			FBSTRING* vr$4 = fb_StrUcase2( (FBSTRING*)vr$3, 0 );
			int32 vr$5 = fb_StrCompare( (void*)vr$4, -1, (void*)TXT$1, 0 );
			if( vr$5 != 0 ) goto label$933;
			{
				LEXSKIPTOKEN( FLAGS$1 );
				fb$result$1 = -1;
				goto label$926;
			}
			label$933:;
			label$932:;
		}
		label$928:;
		label$927:;
	}
	fb$result$1 = 0;
	goto label$926;
	label$926:;
	return fb$result$1;
}

int32 HMATCH( int32 TOKEN$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$934:;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != TOKEN$1 ) goto label$937;
	{
		LEXSKIPTOKEN( FLAGS$1 );
		fb$result$1 = -1;
	}
	goto label$936;
	label$937:;
	{
		fb$result$1 = 0;
	}
	label$936:;
	label$935:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__lex( void )
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

static void HCOLLECTCHARFORDEBUGOUTPUT( uint32 CHAR$1 )
{
	label$44:;
	if( CHAR$1 >= 32u ) goto label$47;
	{
		{
			uint32 TMP$94$3;
			TMP$94$3 = CHAR$1;
			goto label$49;
			label$50:;
			{
				goto label$45;
			}
			goto label$48;
			label$51:;
			{
			}
			goto label$48;
			label$52:;
			{
				CHAR$1 = 63u;
			}
			goto label$48;
			label$49:;
			static const void* tmp$194[14] = {
				&&label$50,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$51,
				&&label$50,
				&&label$51,
				&&label$51,
				&&label$50,
			};
			if( TMP$94$3 > 13u ) goto label$52;
			goto *tmp$194[TMP$94$3 - 0u];
			label$48:;
		}
	}
	goto label$46;
	label$47:;
	if( CHAR$1 <= 255u ) goto label$53;
	{
		CHAR$1 = 63u;
	}
	label$53:;
	label$46:;
	DZSTRCONCATASSIGNC( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392), CHAR$1 );
	label$45:;
}

static uint32 HREADCHAR( void )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	uint32 CHAR$1;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) <= 0 ) goto label$57;
	{
		if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$59;
		{
			CHAR$1 = (uint32)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588));
		}
		goto label$58;
		label$59:;
		{
			CHAR$1 = *(uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588);
		}
		label$58:;
		if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$61;
		{
			if( *(int32*)((uint8*)&ENV$ + 876) != 0 ) goto label$63;
			{
				if( *(int32*)((uint8*)&LEX$ + 839940) != 0 ) goto label$65;
				{
					*(int32*)((uint8*)&LEX$ + 839940) = -1;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392), (uint8*)" [Macro Expansion: " );
				}
				label$65:;
				label$64:;
				HCOLLECTCHARFORDEBUGOUTPUT( CHAR$1 );
			}
			label$63:;
			label$62:;
		}
		label$61:;
		label$60:;
	}
	goto label$56;
	label$57:;
	{
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) != 0 ) goto label$67;
		{
			int32 vr$10 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 276) );
			if( vr$10 != 0 ) goto label$69;
			{
				int64 vr$11 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 276) );
				*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49384) = (int32)vr$11;
				{
					uint32 TMP$97$5;
					TMP$97$5 = *(uint32*)((uint8*)&ENV$ + 552);
					goto label$71;
					label$72:;
					{
						int32 vr$16 = fb_FileGetStr( *(int32*)((uint8*)&ENV$ + 276), 0, (void*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16612), 8193 );
						if( vr$16 != 0 ) goto label$74;
						{
							int64 vr$17 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 276) );
							*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) = (int32)(vr$17 - (int64)*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49384));
							*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16612);
						}
						label$74:;
						label$73:;
					}
					goto label$70;
					label$75:;
					{
						LEXREADUTF8(  );
					}
					goto label$70;
					label$76:;
					{
						LEXREADUTF16LE(  );
					}
					goto label$70;
					label$77:;
					{
						LEXREADUTF16BE(  );
					}
					goto label$70;
					label$78:;
					{
						LEXREADUTF32LE(  );
					}
					goto label$70;
					label$79:;
					{
						LEXREADUTF32BE(  );
					}
					goto label$70;
					label$71:;
					static const void* tmp$195[6] = {
						&&label$72,
						&&label$75,
						&&label$76,
						&&label$77,
						&&label$78,
						&&label$79,
					};
					if( TMP$97$5 > 5u ) goto label$70;
					goto *tmp$195[TMP$97$5 - 0u];
					label$70:;
				}
			}
			label$69:;
			label$68:;
		}
		label$67:;
		label$66:;
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) <= 0 ) goto label$81;
		{
			if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$83;
			{
				CHAR$1 = (uint32)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608));
			}
			goto label$82;
			label$83:;
			{
				CHAR$1 = *(uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608);
			}
			label$82:;
		}
		goto label$80;
		label$81:;
		{
			CHAR$1 = 0u;
		}
		label$80:;
		if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$85;
		{
			if( *(int32*)((uint8*)&ENV$ + 876) != 0 ) goto label$87;
			{
				if( *(int32*)((uint8*)&LEX$ + 839940) == 0 ) goto label$89;
				{
					*(int32*)((uint8*)&LEX$ + 839940) = 0;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392), (uint8*)" ] " );
				}
				label$89:;
				label$88:;
				HCOLLECTCHARFORDEBUGOUTPUT( CHAR$1 );
			}
			label$87:;
			label$86:;
		}
		label$85:;
		label$84:;
	}
	label$56:;
	fb$result$1 = CHAR$1;
	label$55:;
	return fb$result$1;
}

static void HSKIPCHAR( void )
{
	label$94:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) <= 0 ) goto label$97;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) + -1;
		if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$99;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) + 1);
		}
		goto label$98;
		label$99:;
		{
			*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = (uint32*)((uint8*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) + 4);
		}
		label$98:;
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) != 0 ) goto label$101;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16576) = (struct $8FBSYMBOL*)0u;
		}
		label$101:;
		label$100:;
	}
	goto label$96;
	label$97:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16556) == 0u ) goto label$102;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16604) + -1;
		if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$104;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) + 1);
		}
		goto label$103;
		label$104:;
		{
			*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) = (uint32*)((uint8*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16608) + 4);
		}
		label$103:;
	}
	label$102:;
	label$96:;
	label$95:;
}

static void HREADIDENTIFIER( uint8* PID$1, int32* TLEN$1, int32* DTYPE$1, int32* SUFFIXCHAR$1, $8LEXCHECK FLAGS$1 )
{
	label$121:;
	int32 SKIPCHAR$1;
	uint32 vr$0 = LEXCURRENTCHAR( 0 );
	*PID$1 = (uint8)vr$0;
	PID$1 = (uint8*)((uint8*)PID$1 + 1);
	*TLEN$1 = *TLEN$1 + 1;
	*SUFFIXCHAR$1 = 0;
	LEXEATCHAR(  );
	SKIPCHAR$1 = 0;
	label$123:;
	{
		uint32 C$2;
		uint32 vr$8 = LEXCURRENTCHAR( 0 );
		C$2 = vr$8;
		{
			uint32 TMP$99$3;
			TMP$99$3 = C$2;
			goto label$127;
			label$128:;
			{
			}
			goto label$126;
			label$129:;
			{
				if( (FLAGS$1 & 128) != 0 ) goto label$131;
				{
					goto label$124;
				}
				label$131:;
				label$130:;
			}
			goto label$126;
			label$132:;
			{
				goto label$124;
			}
			goto label$126;
			label$127:;
			static const void* tmp$196[77] = {
				&&label$129,
				&&label$132,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$132,
				&&label$128,
				&&label$132,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
			};
			if( (TMP$99$3 - 46u) > 76u ) goto label$132;
			goto *tmp$196[TMP$99$3 - 46u];
			label$126:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$134;
		{
			if( *TLEN$1 != 128 ) goto label$136;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$138;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 7, (uint8*)0u, 1, (uint8*)0u );
				}
				label$138:;
				label$137:;
				SKIPCHAR$1 = -1;
			}
			goto label$135;
			label$136:;
			{
				*PID$1 = (uint8)C$2;
				PID$1 = (uint8*)((uint8*)PID$1 + 1);
				*TLEN$1 = *TLEN$1 + 1;
			}
			label$135:;
		}
		label$134:;
		label$133:;
	}
	label$125:;
	goto label$123;
	label$124:;
	*PID$1 = (uint8)0u;
	*DTYPE$1 = -2147483648u;
	if( (FLAGS$1 & 8) != 0 ) goto label$140;
	{
		{
			uint32 TMP$100$3;
			uint32 vr$22 = LEXCURRENTCHAR( 0 );
			TMP$100$3 = vr$22;
			goto label$142;
			label$143:;
			{
				*DTYPE$1 = *(int32*)((uint8*)&ENV$ + 892);
				*SUFFIXCHAR$1 = 37;
				LEXEATCHAR(  );
			}
			goto label$141;
			label$144:;
			{
				*DTYPE$1 = 11;
				*SUFFIXCHAR$1 = 38;
				LEXEATCHAR(  );
			}
			goto label$141;
			label$145:;
			{
				*DTYPE$1 = 15;
				*SUFFIXCHAR$1 = 33;
				LEXEATCHAR(  );
			}
			goto label$141;
			label$146:;
			{
				uint32 vr$29 = LEXGETLOOKAHEADCHAR( 0 );
				if( vr$29 == 35u ) goto label$148;
				{
					*DTYPE$1 = 16;
					*SUFFIXCHAR$1 = 35;
					LEXEATCHAR(  );
				}
				label$148:;
				label$147:;
			}
			goto label$141;
			label$149:;
			{
				*DTYPE$1 = 17;
				*SUFFIXCHAR$1 = 36;
				LEXEATCHAR(  );
			}
			goto label$141;
			label$142:;
			static const void* tmp$197[6] = {
				&&label$145,
				&&label$141,
				&&label$146,
				&&label$149,
				&&label$143,
				&&label$144,
			};
			if( (TMP$100$3 - 33u) > 5u ) goto label$141;
			goto *tmp$197[TMP$100$3 - 33u];
			label$141:;
		}
	}
	label$140:;
	label$139:;
	label$122:;
}

static uint64 HREADNONDECNUMBER( uint8** PNUM$1, int32* TLEN$1, int32* DTYPE$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$104$1;
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$150:;
	uint32 VALUE$1;
	uint32 C$1;
	uint32 FIRST_C$1;
	uint64 VALUE64$1;
	int32 LGT$1;
	int32 SKIPCHAR$1;
	VALUE$1 = 0u;
	LGT$1 = 0;
	SKIPCHAR$1 = 0;
	uint32 vr$1 = LEXCURRENTCHAR( 0 );
	C$1 = vr$1;
	{
		uint32 TMP$101$2;
		TMP$101$2 = C$1;
		goto label$153;
		label$154:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$156;
			{
				label$157:;
				uint32 vr$14 = LEXCURRENTCHAR( 0 );
				if( vr$14 != 48u ) goto label$158;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
				}
				goto label$157;
				label$158:;
			}
			label$156:;
			label$155:;
			label$159:;
			{
				uint32 vr$23 = LEXCURRENTCHAR( 0 );
				C$1 = vr$23;
				{
					if( C$1 < 97u ) goto label$165;
					if( C$1 <= 102u ) goto label$164;
					label$165:;
					if( C$1 < 65u ) goto label$166;
					if( C$1 <= 70u ) goto label$164;
					label$166:;
					if( C$1 < 48u ) goto label$163;
					if( C$1 > 57u ) goto label$163;
					label$164:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0 ) goto label$168;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							if( C$1 <= 9u ) goto label$170;
							{
								C$1 = C$1 + 4294967289u;
							}
							label$170:;
							label$169:;
							if( C$1 <= 16u ) goto label$172;
							{
								C$1 = C$1 + 4294967264u;
							}
							label$172:;
							label$171:;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 8 ) goto label$174;
							{
								if( LGT$1 != 9 ) goto label$176;
								{
									*DTYPE$1 = 13;
									VALUE64$1 = ((uint64)VALUE$1 << (4ull & 63)) + (uint64)C$1;
								}
								goto label$175;
								label$176:;
								if( LGT$1 != 17 ) goto label$177;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$179;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$179:;
									label$178:;
									SKIPCHAR$1 = -1;
								}
								goto label$175;
								label$177:;
								{
									VALUE64$1 = (VALUE64$1 << (4ull & 63)) + (uint64)C$1;
								}
								label$175:;
							}
							goto label$173;
							label$174:;
							{
								if( LGT$1 != 5 ) goto label$181;
								{
									*DTYPE$1 = 11;
								}
								label$181:;
								label$180:;
								VALUE$1 = (VALUE$1 << (4u & 31)) + C$1;
							}
							label$173:;
						}
						label$168:;
						label$167:;
					}
					goto label$162;
					label$163:;
					{
						goto label$160;
					}
					label$182:;
					label$162:;
				}
			}
			label$161:;
			goto label$159;
			label$160:;
		}
		goto label$152;
		label$183:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$185;
			{
				label$186:;
				uint32 vr$61 = LEXCURRENTCHAR( 0 );
				if( vr$61 != 48u ) goto label$187;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
				}
				goto label$186;
				label$187:;
			}
			label$185:;
			label$184:;
			uint32 vr$70 = LEXCURRENTCHAR( 0 );
			FIRST_C$1 = vr$70;
			label$188:;
			{
				uint32 vr$71 = LEXCURRENTCHAR( 0 );
				C$1 = vr$71;
				{
					if( C$1 < 48u ) goto label$192;
					if( C$1 > 55u ) goto label$192;
					label$193:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0 ) goto label$195;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 10 ) goto label$197;
							{
								{
									uint32 TMP$102$9;
									TMP$102$9 = (uint32)LGT$1;
									goto label$199;
									label$200:;
									{
										if( FIRST_C$1 <= 51u ) goto label$202;
										{
											*DTYPE$1 = 13;
											VALUE64$1 = ((uint64)VALUE$1 << (3ull & 63)) + (uint64)C$1;
										}
										goto label$201;
										label$202:;
										{
											VALUE$1 = (VALUE$1 << (3u & 31)) + C$1;
										}
										label$201:;
									}
									goto label$198;
									label$203:;
									{
										int32 TMP$103$10;
										if( (*DTYPE$1 & 480) == 0 ) goto label$204;
										TMP$103$10 = 24;
										goto label$938;
										label$204:;
										TMP$103$10 = *DTYPE$1 & 31;
										label$938:;
										if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$103$10 * 28)) + 4) >= 8 ) goto label$206;
										{
											*DTYPE$1 = 13;
											VALUE64$1 = (uint64)VALUE$1;
										}
										label$206:;
										label$205:;
										VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
									}
									goto label$198;
									label$207:;
									{
										if( FIRST_C$1 <= 49u ) goto label$209;
										{
											if( (FLAGS$1 & 1) != 0 ) goto label$211;
											{
												ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
											}
											label$211:;
											label$210:;
											SKIPCHAR$1 = -1;
										}
										goto label$208;
										label$209:;
										{
											VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
										}
										label$208:;
									}
									goto label$198;
									label$212:;
									{
										if( (FLAGS$1 & 1) != 0 ) goto label$214;
										{
											ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
										}
										label$214:;
										label$213:;
										SKIPCHAR$1 = -1;
									}
									goto label$198;
									label$215:;
									{
										VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
									}
									goto label$198;
									label$199:;
									static const void* tmp$198[13] = {
										&&label$200,
										&&label$203,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$215,
										&&label$207,
										&&label$212,
									};
									if( (TMP$102$9 - 11u) > 12u ) goto label$215;
									goto *tmp$198[TMP$102$9 - 11u];
									label$198:;
								}
							}
							goto label$196;
							label$197:;
							{
								if( LGT$1 != 6 ) goto label$217;
								{
									if( FIRST_C$1 <= 49u ) goto label$219;
									{
										*DTYPE$1 = 11;
									}
									label$219:;
									label$218:;
								}
								goto label$216;
								label$217:;
								if( LGT$1 != 7 ) goto label$220;
								{
									*DTYPE$1 = 11;
								}
								label$220:;
								label$216:;
								VALUE$1 = (VALUE$1 << (3u & 31)) + C$1;
							}
							label$196:;
						}
						label$195:;
						label$194:;
					}
					goto label$191;
					label$192:;
					{
						goto label$189;
					}
					label$221:;
					label$191:;
				}
			}
			label$190:;
			goto label$188;
			label$189:;
		}
		goto label$152;
		label$222:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$224;
			{
				label$225:;
				uint32 vr$124 = LEXCURRENTCHAR( 0 );
				if( vr$124 != 48u ) goto label$226;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
				}
				goto label$225;
				label$226:;
			}
			label$224:;
			label$223:;
			label$227:;
			{
				uint32 vr$133 = LEXCURRENTCHAR( 0 );
				C$1 = vr$133;
				{
					if( C$1 == 48u ) goto label$232;
					label$233:;
					if( C$1 != 49u ) goto label$231;
					label$232:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0 ) goto label$235;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 32 ) goto label$237;
							{
								if( LGT$1 != 33 ) goto label$239;
								{
									*DTYPE$1 = 13;
									VALUE64$1 = ((uint64)VALUE$1 << (1ull & 63)) + (uint64)C$1;
								}
								goto label$238;
								label$239:;
								if( LGT$1 != 65 ) goto label$240;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$242;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$242:;
									label$241:;
									SKIPCHAR$1 = -1;
								}
								goto label$238;
								label$240:;
								{
									VALUE64$1 = (VALUE64$1 << (1ull & 63)) + (uint64)C$1;
								}
								label$238:;
							}
							goto label$236;
							label$237:;
							{
								if( LGT$1 != 17 ) goto label$244;
								{
									*DTYPE$1 = 11;
								}
								label$244:;
								label$243:;
								VALUE$1 = (VALUE$1 << (1u & 31)) + C$1;
							}
							label$236:;
						}
						label$235:;
						label$234:;
					}
					goto label$230;
					label$231:;
					{
						goto label$228;
					}
					label$245:;
					label$230:;
				}
			}
			label$229:;
			goto label$227;
			label$228:;
		}
		goto label$152;
		label$246:;
		{
			goto label$151;
		}
		goto label$152;
		label$153:;
		static const void* tmp$199[46] = {
			&&label$222,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$154,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$183,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$222,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$154,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$246,
			&&label$183,
		};
		if( (TMP$101$2 - 66u) > 45u ) goto label$246;
		goto *tmp$199[TMP$101$2 - 66u];
		label$152:;
	}
	if( LGT$1 != 0 ) goto label$248;
	{
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
		*TLEN$1 = *TLEN$1 + 1;
	}
	label$248:;
	label$247:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$249;
	TMP$104$1 = 24;
	goto label$939;
	label$249:;
	TMP$104$1 = *DTYPE$1 & 31;
	label$939:;
	if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$104$1 * 28)) + 4) >= 8 ) goto label$251;
	{
		fb$result$1 = (uint64)VALUE$1;
	}
	goto label$250;
	label$251:;
	{
		fb$result$1 = VALUE64$1;
	}
	label$250:;
	label$151:;
	return fb$result$1;
}

static void HREADFLOATNUMBER( uint8** PNUM$1, struct $7FBTOKEN* T$1, int32 HASDOT$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$105$1;
	label$252:;
	uint32 C$1;
	int32 LLEN$1;
	int32 SKIPCHAR$1;
	*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 920);
	LLEN$1 = *(int32*)((uint8*)T$1 + 4112);
	SKIPCHAR$1 = 0;
	label$254:;
	{
		uint32 vr$2 = LEXCURRENTCHAR( 0 );
		C$1 = vr$2;
		{
			if( C$1 < 48u ) goto label$258;
			if( C$1 > 57u ) goto label$258;
			label$259:;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$261;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
				}
				label$261:;
				label$260:;
			}
			goto label$257;
			label$258:;
			{
				goto label$255;
			}
			label$262:;
			label$257:;
		}
		if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$264;
		{
			if( SKIPCHAR$1 != 0 ) goto label$266;
			{
				SKIPCHAR$1 = -1;
			}
			goto label$265;
			label$266:;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$268;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
				}
				label$268:;
				label$267:;
			}
			label$265:;
		}
		label$264:;
		label$263:;
	}
	label$256:;
	goto label$254;
	label$255:;
	if( HASDOT$1 == 0 ) goto label$269;
	TMP$105$1 = 1;
	goto label$940;
	label$269:;
	TMP$105$1 = 0;
	label$940:;
	if( *(int32*)((uint8*)T$1 + 4112) <= (TMP$105$1 + 7) ) goto label$271;
	{
		*(int32*)((uint8*)T$1 + 8) = 16;
	}
	label$271:;
	label$270:;
	uint32 vr$18 = LEXCURRENTCHAR( 0 );
	C$1 = vr$18;
	{
		uint32 TMP$106$2;
		TMP$106$2 = C$1;
		goto label$273;
		label$274:;
		{
			if( (-(C$1 == 100u) | -(C$1 == 68u)) == 0 ) goto label$276;
			{
				*(int32*)((uint8*)T$1 + 8) = 16;
			}
			label$276:;
			label$275:;
			if( SKIPCHAR$1 != 0 ) goto label$278;
			{
				if( FLAGS$1 != 0 ) goto label$280;
				{
					C$1 = 101u;
				}
				label$280:;
				label$279:;
				*(*PNUM$1) = (uint8)C$1;
				*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
				*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
			}
			label$278:;
			label$277:;
			LEXEATCHAR(  );
			uint32 vr$32 = LEXCURRENTCHAR( 0 );
			C$1 = vr$32;
			if( (-(C$1 == 43u) | -(C$1 == 45u)) == 0 ) goto label$282;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$284;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
				}
				label$284:;
				label$283:;
			}
			label$282:;
			label$281:;
			label$285:;
			{
				uint32 vr$45 = LEXCURRENTCHAR( 0 );
				C$1 = vr$45;
				{
					uint32 TMP$107$5;
					TMP$107$5 = C$1;
					goto label$289;
					label$290:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0 ) goto label$292;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
						}
						label$292:;
						label$291:;
					}
					goto label$288;
					label$293:;
					{
						goto label$286;
					}
					goto label$288;
					label$289:;
					static const void* tmp$200[10] = {
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
						&&label$290,
					};
					if( (TMP$107$5 - 48u) > 9u ) goto label$293;
					goto *tmp$200[TMP$107$5 - 48u];
					label$288:;
				}
				if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$295;
				{
					if( SKIPCHAR$1 != 0 ) goto label$297;
					{
						SKIPCHAR$1 = -1;
					}
					goto label$296;
					label$297:;
					{
						if( (FLAGS$1 & 1) != 0 ) goto label$299;
						{
							FLAGS$1 = FLAGS$1 | 1;
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
						}
						label$299:;
						label$298:;
					}
					label$296:;
				}
				label$295:;
				label$294:;
			}
			label$287:;
			goto label$285;
			label$286:;
		}
		goto label$272;
		label$273:;
		static const void* tmp$201[34] = {
			&&label$274,
			&&label$274,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$272,
			&&label$274,
			&&label$274,
		};
		if( (TMP$106$2 - 68u) > 33u ) goto label$272;
		goto *tmp$201[TMP$106$2 - 68u];
		label$272:;
	}
	{
		uint32 TMP$108$2;
		uint32 vr$58 = LEXCURRENTCHAR( 0 );
		TMP$108$2 = vr$58;
		goto label$301;
		label$302:;
		{
			*(int32*)((uint8*)T$1 + 8) = 15;
			if( (FLAGS$1 & 1032) != 0 ) goto label$304;
			{
				LEXEATCHAR(  );
			}
			label$304:;
			label$303:;
		}
		goto label$300;
		label$305:;
		{
			*(int32*)((uint8*)T$1 + 8) = 15;
			if( (FLAGS$1 & 8) != 0 ) goto label$307;
			{
				LEXEATCHAR(  );
			}
			label$307:;
			label$306:;
		}
		goto label$300;
		label$308:;
		{
			*(int32*)((uint8*)T$1 + 8) = 16;
			if( (FLAGS$1 & 8) != 0 ) goto label$310;
			{
				LEXEATCHAR(  );
			}
			label$310:;
			label$309:;
		}
		goto label$300;
		label$301:;
		static const void* tmp$202[70] = {
			&&label$305,
			&&label$300,
			&&label$308,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$302,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$300,
			&&label$302,
		};
		if( (TMP$108$2 - 33u) > 69u ) goto label$300;
		goto *tmp$202[TMP$108$2 - 33u];
		label$300:;
	}
	if( FLAGS$1 != 0 ) goto label$312;
	{
		if( (*(int32*)((uint8*)T$1 + 4112) - LLEN$1) != 0 ) goto label$314;
		{
			*(*PNUM$1) = (uint8)48u;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
			*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
		}
		label$314:;
		label$313:;
	}
	label$312:;
	label$311:;
	label$253:;
}

static void READNUMBERCHARS( struct $7FBTOKEN* T$1, $8LEXCHECK* FLAGS$1, uint8** PNUM$1, int32* SKIPCHAR$1, uint64* VALUE$1 )
{
	label$315:;
	int32 SAVE_FIRST_LEADING_ZERO$1;
	SAVE_FIRST_LEADING_ZERO$1 = -((*(int32*)FLAGS$1 & 9) != 0);
	uint64 VALUE_PREV$1;
	__builtin_memset( &VALUE_PREV$1, 0, 8 );
	label$317:;
	{
		uint32 C$2;
		uint32 vr$4 = LEXCURRENTCHAR( 0 );
		C$2 = vr$4;
		{
			uint32 TMP$109$3;
			TMP$109$3 = C$2;
			goto label$321;
			label$322:;
			{
				LEXEATCHAR(  );
				if( (((-(C$2 != 48u) | -(*(int32*)((uint8*)T$1 + 4112) > 0)) | SAVE_FIRST_LEADING_ZERO$1) & ~(*SKIPCHAR$1)) == 0 ) goto label$324;
				{
					*(*PNUM$1) = (uint8)C$2;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
					*VALUE$1 = ((*VALUE$1 << (3 & 63)) + (*VALUE$1 << (1 & 63))) + (uint64)(C$2 + 4294967248u);
				}
				label$324:;
				label$323:;
			}
			goto label$320;
			label$325:;
			{
				int32 HASDOT$4;
				HASDOT$4 = 0;
				if( C$2 != 46u ) goto label$327;
				{
					LEXEATCHAR(  );
					if( *SKIPCHAR$1 != 0 ) goto label$329;
					{
						*(*PNUM$1) = (uint8)46u;
						*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
						*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
					}
					label$329:;
					label$328:;
					HASDOT$4 = -1;
				}
				label$327:;
				label$326:;
				HREADFLOATNUMBER( PNUM$1, T$1, HASDOT$4, *FLAGS$1 );
				goto label$318;
			}
			goto label$320;
			label$330:;
			{
				goto label$318;
			}
			goto label$320;
			label$321:;
			static const void* tmp$203[56] = {
				&&label$325,
				&&label$330,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$322,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$325,
				&&label$325,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$330,
				&&label$325,
				&&label$325,
			};
			if( (TMP$109$3 - 46u) > 55u ) goto label$330;
			goto *tmp$203[TMP$109$3 - 46u];
			label$320:;
		}
		if( (*(int32*)FLAGS$1 & 8) != 0 ) goto label$332;
		{
			if( *SKIPCHAR$1 != 0 ) goto label$334;
			{
				{
					uint32 TMP$110$5;
					TMP$110$5 = *(uint32*)((uint8*)T$1 + 4112);
					goto label$336;
					label$337:;
					{
						if( *VALUE$1 <= 32767ull ) goto label$339;
						{
							*(int32*)((uint8*)T$1 + 8) = 11;
						}
						label$339:;
						label$338:;
					}
					goto label$335;
					label$340:;
					{
						*(int32*)((uint8*)T$1 + 8) = 11;
					}
					goto label$335;
					label$341:;
					{
						if( *VALUE$1 <= 2147483647ull ) goto label$343;
						{
							if( *VALUE$1 <= 4294967295ull ) goto label$345;
							{
								*(int32*)((uint8*)T$1 + 8) = 13;
							}
							goto label$344;
							label$345:;
							{
								*(int32*)((uint8*)T$1 + 8) = 12;
							}
							label$344:;
						}
						label$343:;
						label$342:;
					}
					goto label$335;
					label$346:;
					{
						*(int32*)((uint8*)T$1 + 8) = 13;
					}
					goto label$335;
					label$347:;
					{
						if( *VALUE$1 <= 9223372036854775807ull ) goto label$349;
						{
							*(int32*)((uint8*)T$1 + 8) = 14;
						}
						label$349:;
						label$348:;
						VALUE_PREV$1 = *VALUE$1;
					}
					goto label$335;
					label$350:;
					{
						*(int32*)((uint8*)T$1 + 8) = 14;
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$352;
						{
							if( (-(VALUE_PREV$1 > 1844674407370955161ull) | -((*VALUE$1 & 9223372036854775808ull) == 0ull)) == 0 ) goto label$354;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
								*SKIPCHAR$1 = -1;
							}
							label$354:;
							label$353:;
						}
						label$352:;
						label$351:;
					}
					goto label$335;
					label$355:;
					{
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$357;
						{
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							*SKIPCHAR$1 = -1;
						}
						label$357:;
						label$356:;
					}
					goto label$335;
					label$336:;
					static const void* tmp$204[17] = {
						&&label$337,
						&&label$340,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$341,
						&&label$346,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$335,
						&&label$347,
						&&label$350,
						&&label$355,
					};
					if( (TMP$110$5 - 5u) > 16u ) goto label$335;
					goto *tmp$204[TMP$110$5 - 5u];
					label$335:;
				}
				if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$359;
				{
					if( *SKIPCHAR$1 != 0 ) goto label$361;
					{
						*SKIPCHAR$1 = -1;
					}
					goto label$360;
					label$361:;
					{
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$363;
						{
							*FLAGS$1 = *(int32*)FLAGS$1 | 1;
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
						}
						label$363:;
						label$362:;
					}
					label$360:;
				}
				label$359:;
				label$358:;
			}
			label$334:;
			label$333:;
		}
		label$332:;
		label$331:;
	}
	label$319:;
	goto label$317;
	label$318:;
	if( *(int32*)((uint8*)T$1 + 4112) != 0 ) goto label$365;
	{
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
		*(int32*)((uint8*)T$1 + 4112) = 1;
	}
	label$365:;
	label$364:;
	label$316:;
}

static void HREADNUMBER( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$113$1;
	label$366:;
	*(int32*)((uint8*)T$1 + 8) = 5;
	int32 HAVE_U_SUFFIX$1;
	HAVE_U_SUFFIX$1 = 0;
	int32 SKIPCHAR$1;
	SKIPCHAR$1 = 0;
	uint64 VALUE$1;
	__builtin_memset( &VALUE$1, 0, 8 );
	uint8* PNUM$1;
	PNUM$1 = (uint8*)((uint8*)T$1 + 12);
	*PNUM$1 = (uint8)0u;
	*(int32*)((uint8*)T$1 + 4112) = 0;
	{
		uint32 TMP$111$2;
		uint32 vr$6 = LEXCURRENTCHAR( 0 );
		TMP$111$2 = vr$6;
		goto label$369;
		label$370:;
		{
			READNUMBERCHARS( T$1, &FLAGS$1, (uint8**)&PNUM$1, &SKIPCHAR$1, &VALUE$1 );
		}
		goto label$368;
		label$371:;
		{
			LEXEATCHAR(  );
			*PNUM$1 = (uint8)46u;
			PNUM$1 = (uint8*)(PNUM$1 + 1);
			*(int32*)((uint8*)T$1 + 4112) = 1;
			HREADFLOATNUMBER( (uint8**)&PNUM$1, T$1, -1, FLAGS$1 );
		}
		goto label$368;
		label$372:;
		{
			LEXEATCHAR(  );
			*(int32*)((uint8*)T$1 + 4112) = 0;
			uint64 vr$21 = HREADNONDECNUMBER( (uint8**)&PNUM$1, (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), FLAGS$1 );
			VALUE$1 = vr$21;
		}
		goto label$368;
		label$369:;
		static const void* tmp$205[20] = {
			&&label$372,
			&&label$368,
			&&label$368,
			&&label$368,
			&&label$368,
			&&label$368,
			&&label$368,
			&&label$368,
			&&label$371,
			&&label$368,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
			&&label$370,
		};
		if( (TMP$111$2 - 38u) > 19u ) goto label$368;
		goto *tmp$205[TMP$111$2 - 38u];
		label$368:;
	}
	*PNUM$1 = (uint8)0u;
	{
		int32 TMP$112$2;
		TMP$112$2 = *(int32*)((uint8*)T$1 + 8);
		if( TMP$112$2 != 5 ) goto label$374;
		label$375:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 896);
		}
		goto label$373;
		label$374:;
		if( TMP$112$2 != 6 ) goto label$376;
		label$377:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 900);
		}
		goto label$373;
		label$376:;
		if( TMP$112$2 != 11 ) goto label$378;
		label$379:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 904);
		}
		goto label$373;
		label$378:;
		if( TMP$112$2 != 12 ) goto label$380;
		label$381:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 908);
		}
		goto label$373;
		label$380:;
		if( TMP$112$2 != 13 ) goto label$382;
		label$383:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 912);
		}
		goto label$373;
		label$382:;
		if( TMP$112$2 != 14 ) goto label$384;
		label$385:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 916);
		}
		label$384:;
		label$373:;
	}
	if( (*(int32*)((uint8*)T$1 + 8) & 480) == 0 ) goto label$386;
	TMP$113$1 = 24;
	goto label$941;
	label$386:;
	TMP$113$1 = *(int32*)((uint8*)T$1 + 8) & 31;
	label$941:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$113$1 * 28)) == 1 ) goto label$388;
	{
		if( (FLAGS$1 & 8) != 0 ) goto label$390;
		{
			if( (FLAGS$1 & 1024) != 0 ) goto label$392;
			{
				{
					uint32 TMP$114$5;
					uint32 vr$37 = LEXCURRENTCHAR( 0 );
					TMP$114$5 = vr$37;
					if( TMP$114$5 == 85u ) goto label$395;
					label$396:;
					if( TMP$114$5 != 117u ) goto label$394;
					label$395:;
					{
						LEXEATCHAR(  );
						int32 vr$39 = TYPETOUNSIGNED( *(int32*)((uint8*)T$1 + 8) );
						*(int32*)((uint8*)T$1 + 8) = vr$39;
						HAVE_U_SUFFIX$1 = -1;
					}
					label$394:;
					label$393:;
				}
			}
			label$392:;
			label$391:;
			{
				uint32 TMP$115$4;
				uint32 vr$41 = LEXCURRENTCHAR( 0 );
				TMP$115$4 = vr$41;
				goto label$398;
				label$399:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$401;
					{
						LEXEATCHAR(  );
						uint32 C$6;
						uint32 vr$43 = LEXCURRENTCHAR( 0 );
						C$6 = vr$43;
						if( (-(C$6 == 76u) | -(C$6 == 108u)) == 0 ) goto label$403;
						{
							$11FB_DATATYPE TMP$116$7;
							LEXEATCHAR(  );
							if( HAVE_U_SUFFIX$1 == 0 ) goto label$404;
							TMP$116$7 = 14;
							goto label$942;
							label$404:;
							TMP$116$7 = 13;
							label$942:;
							*(int32*)((uint8*)T$1 + 8) = TMP$116$7;
						}
						goto label$402;
						label$403:;
						{
							$11FB_DATATYPE TMP$117$7;
							if( VALUE$1 <= 4294967295ull ) goto label$406;
							{
								if( SKIPCHAR$1 != 0 ) goto label$408;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$410;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$410:;
									label$409:;
								}
								label$408:;
								label$407:;
							}
							label$406:;
							label$405:;
							if( HAVE_U_SUFFIX$1 == 0 ) goto label$411;
							TMP$117$7 = 12;
							goto label$943;
							label$411:;
							TMP$117$7 = 11;
							label$943:;
							*(int32*)((uint8*)T$1 + 8) = TMP$117$7;
						}
						label$402:;
					}
					label$401:;
					label$400:;
				}
				goto label$397;
				label$412:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$414;
					{
						if( HAVE_U_SUFFIX$1 != 0 ) goto label$416;
						{
							*(int32*)((uint8*)T$1 + 8) = 15;
							LEXEATCHAR(  );
						}
						label$416:;
						label$415:;
					}
					label$414:;
					label$413:;
				}
				goto label$397;
				label$417:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$419;
					{
						if( HAVE_U_SUFFIX$1 != 0 ) goto label$421;
						{
							*(int32*)((uint8*)T$1 + 8) = 16;
							LEXEATCHAR(  );
						}
						label$421:;
						label$420:;
					}
					label$419:;
					label$418:;
				}
				goto label$397;
				label$422:;
				{
					int32 WARN$5;
					WARN$5 = 0;
					{
						int32 TMP$118$6;
						int32 TMP$119$6;
						if( (*(int32*)((uint8*)&ENV$ + 892) & 480) == 0 ) goto label$423;
						TMP$118$6 = 24;
						goto label$944;
						label$423:;
						TMP$118$6 = *(int32*)((uint8*)&ENV$ + 892) & 31;
						label$944:;
						TMP$119$6 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$118$6 * 28)) + 4);
						if( TMP$119$6 != 2 ) goto label$425;
						label$426:;
						{
							WARN$5 = -(VALUE$1 > 65535ull);
						}
						goto label$424;
						label$425:;
						if( TMP$119$6 != 4 ) goto label$427;
						label$428:;
						{
							WARN$5 = -(VALUE$1 > 4294967295ull);
						}
						label$427:;
						label$424:;
					}
					if( WARN$5 == 0 ) goto label$430;
					{
						if( SKIPCHAR$1 != 0 ) goto label$432;
						{
							if( (FLAGS$1 & 1) != 0 ) goto label$434;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							}
							label$434:;
							label$433:;
						}
						label$432:;
						label$431:;
					}
					label$430:;
					label$429:;
					*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 892);
					LEXEATCHAR(  );
				}
				goto label$397;
				label$435:;
				{
					if( VALUE$1 <= 4294967295ull ) goto label$437;
					{
						if( SKIPCHAR$1 != 0 ) goto label$439;
						{
							if( (FLAGS$1 & 1) != 0 ) goto label$441;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							}
							label$441:;
							label$440:;
						}
						label$439:;
						label$438:;
					}
					label$437:;
					label$436:;
					*(int32*)((uint8*)T$1 + 8) = 11;
					LEXEATCHAR(  );
				}
				goto label$397;
				label$442:;
				{
					if( HAVE_U_SUFFIX$1 != 0 ) goto label$444;
					{
						*(int32*)((uint8*)T$1 + 8) = 15;
						LEXEATCHAR(  );
					}
					label$444:;
					label$443:;
				}
				goto label$397;
				label$445:;
				{
					if( HAVE_U_SUFFIX$1 != 0 ) goto label$447;
					{
						uint32 vr$64 = LEXGETLOOKAHEADCHAR( 0 );
						if( vr$64 == 35u ) goto label$449;
						{
							*(int32*)((uint8*)T$1 + 8) = 16;
							LEXEATCHAR(  );
						}
						label$449:;
						label$448:;
					}
					label$447:;
					label$446:;
				}
				goto label$397;
				label$398:;
				static const void* tmp$206[76] = {
					&&label$442,
					&&label$397,
					&&label$445,
					&&label$397,
					&&label$422,
					&&label$435,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$417,
					&&label$397,
					&&label$412,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$399,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$417,
					&&label$397,
					&&label$412,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$397,
					&&label$399,
				};
				if( (TMP$115$4 - 33u) > 75u ) goto label$397;
				goto *tmp$206[TMP$115$4 - 33u];
				label$397:;
			}
		}
		label$390:;
		label$389:;
	}
	label$388:;
	label$387:;
	*(int32*)((uint8*)T$1 + 4) = 3;
	*(int32*)T$1 = *(int32*)((uint8*)T$1 + 8);
	label$367:;
}

static void HREADSTRING( struct $7FBTOKEN* TK$1, uint8* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$450:;
	int32 LGT$1;
	int32 HASESC$1;
	int32 ESCAPED$1;
	int32 SKIPCHAR$1;
	uint32 CHAR$1;
	*PS$1 = (uint8)0u;
	LGT$1 = 0;
	HASESC$1 = 0;
	ESCAPED$1 = -(*(int32*)TK$1 == 263);
	SKIPCHAR$1 = 0;
	if( (FLAGS$1 & 16) == 0 ) goto label$453;
	{
		uint32 vr$4 = LEXCURRENTCHAR( 0 );
		*PS$1 = (uint8)vr$4;
		PS$1 = (uint8*)((uint8*)PS$1 + 1);
		LGT$1 = LGT$1 + 1;
	}
	label$453:;
	label$452:;
	LEXEATCHAR(  );
	label$454:;
	{
		uint32 vr$9 = LEXCURRENTCHAR( 0 );
		CHAR$1 = vr$9;
		if( CHAR$1 != 34u ) goto label$458;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16) == 0 ) goto label$460;
			{
				if( SKIPCHAR$1 != 0 ) goto label$462;
				{
					*PS$1 = (uint8)34u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$462:;
				label$461:;
			}
			label$460:;
			label$459:;
			uint32 vr$14 = LEXCURRENTCHAR( 0 );
			CHAR$1 = vr$14;
			if( CHAR$1 == 34u ) goto label$464;
			{
				goto label$455;
				label$464:;
			}
		}
		goto label$457;
		label$458:;
		if( CHAR$1 != 27u ) goto label$465;
		{
			if( (FLAGS$1 & 16) != 0 ) goto label$467;
			{
				if( SKIPCHAR$1 != 0 ) goto label$469;
				{
					*PS$1 = (uint8)27u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$469:;
				label$468:;
			}
			label$467:;
			label$466:;
		}
		goto label$457;
		label$465:;
		if( CHAR$1 != 92u ) goto label$470;
		{
			HASESC$1 = -1;
			if( ESCAPED$1 == 0 ) goto label$472;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$474;
				{
					*PS$1 = (uint8)92u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$474:;
				label$473:;
				uint32 vr$22 = LEXCURRENTCHAR( 0 );
				CHAR$1 = vr$22;
			}
			label$472:;
			label$471:;
		}
		label$470:;
		label$457:;
		{
			if( CHAR$1 == 0u ) goto label$477;
			label$478:;
			if( CHAR$1 == 13u ) goto label$477;
			label$479:;
			if( CHAR$1 != 10u ) goto label$476;
			label$477:;
			{
				if( (FLAGS$1 & 9) != 0 ) goto label$481;
				{
					ERRREPORTWARN( 12, (uint8*)0u, 1, (uint8*)0u );
				}
				label$481:;
				label$480:;
				goto label$455;
			}
			label$476:;
			label$475:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$483;
		{
			if( LGT$1 != 1024 ) goto label$485;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$487;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
				}
				label$487:;
				label$486:;
				SKIPCHAR$1 = -1;
			}
			goto label$484;
			label$485:;
			{
				*PS$1 = (uint8)CHAR$1;
				PS$1 = (uint8*)((uint8*)PS$1 + 1);
				LGT$1 = LGT$1 + 1;
			}
			label$484:;
		}
		label$483:;
		label$482:;
	}
	label$456:;
	goto label$454;
	label$455:;
	*PS$1 = (uint8)0u;
	*(int32*)((uint8*)TK$1 + 8) = 4;
	*(int32*)((uint8*)TK$1 + 4112) = LGT$1;
	*(int32*)((uint8*)TK$1 + 4120) = HASESC$1;
	label$451:;
}

static void HREADWSTR( struct $7FBTOKEN* TK$1, uint32* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$488:;
	int32 LGT$1;
	int32 HASESC$1;
	int32 ESCAPED$1;
	int32 SKIPCHAR$1;
	uint32 CHAR$1;
	*PS$1 = (uint32)0u;
	LGT$1 = 0;
	HASESC$1 = 0;
	ESCAPED$1 = -(*(int32*)TK$1 == 263);
	SKIPCHAR$1 = 0;
	if( (FLAGS$1 & 16) == 0 ) goto label$491;
	{
		uint32 vr$4 = LEXCURRENTCHAR( 0 );
		*PS$1 = (uint32)vr$4;
		PS$1 = (uint32*)((uint8*)PS$1 + 4);
		LGT$1 = LGT$1 + 1;
	}
	label$491:;
	label$490:;
	LEXEATCHAR(  );
	label$492:;
	{
		uint32 vr$8 = LEXCURRENTCHAR( 0 );
		CHAR$1 = vr$8;
		if( CHAR$1 != 34u ) goto label$496;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16) == 0 ) goto label$498;
			{
				if( SKIPCHAR$1 != 0 ) goto label$500;
				{
					*PS$1 = (uint32)34u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$500:;
				label$499:;
			}
			label$498:;
			label$497:;
			uint32 vr$13 = LEXCURRENTCHAR( 0 );
			CHAR$1 = vr$13;
			if( CHAR$1 == 34u ) goto label$502;
			{
				goto label$493;
				label$502:;
			}
		}
		goto label$495;
		label$496:;
		if( CHAR$1 != 27u ) goto label$503;
		{
			if( (FLAGS$1 & 16) != 0 ) goto label$505;
			{
				if( SKIPCHAR$1 != 0 ) goto label$507;
				{
					*PS$1 = (uint32)27u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$507:;
				label$506:;
			}
			label$505:;
			label$504:;
		}
		goto label$495;
		label$503:;
		if( CHAR$1 != 92u ) goto label$508;
		{
			HASESC$1 = -1;
			if( ESCAPED$1 == 0 ) goto label$510;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$512;
				{
					*PS$1 = (uint32)92u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$512:;
				label$511:;
				uint32 vr$21 = LEXCURRENTCHAR( 0 );
				CHAR$1 = vr$21;
			}
			label$510:;
			label$509:;
		}
		label$508:;
		label$495:;
		{
			if( CHAR$1 == 0u ) goto label$515;
			label$516:;
			if( CHAR$1 == 13u ) goto label$515;
			label$517:;
			if( CHAR$1 != 10u ) goto label$514;
			label$515:;
			{
				if( (FLAGS$1 & 9) != 0 ) goto label$519;
				{
					ERRREPORTWARN( 12, (uint8*)0u, 1, (uint8*)0u );
				}
				label$519:;
				label$518:;
				goto label$493;
			}
			label$514:;
			label$513:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$521;
		{
			if( LGT$1 != 1024 ) goto label$523;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$525;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
				}
				label$525:;
				label$524:;
				SKIPCHAR$1 = -1;
			}
			goto label$522;
			label$523:;
			{
				*PS$1 = (uint32)CHAR$1;
				PS$1 = (uint32*)((uint8*)PS$1 + 4);
				LGT$1 = LGT$1 + 1;
			}
			label$522:;
		}
		label$521:;
		label$520:;
	}
	label$494:;
	goto label$492;
	label$493:;
	*PS$1 = (uint32)0u;
	*(int32*)((uint8*)TK$1 + 8) = 7;
	*(int32*)((uint8*)TK$1 + 4112) = LGT$1;
	*(int32*)((uint8*)TK$1 + 4120) = HASESC$1;
	label$489:;
}

static void HCHECKPERIODS( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	label$526:;
	int32 READFULLID$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$529;
	{
		READFULLID$1 = 0;
		uint32 vr$0 = LEXCURRENTCHAR( 0 );
		if( vr$0 != 46u ) goto label$531;
		{
			if( *(int32*)*(struct $8FBSYMBOL**)CHAIN_$1 == 8 ) goto label$533;
			{
				READFULLID$1 = -1;
				label$534:;
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$535;
				{
					struct $8FBSYMBOL* SYM$5;
					SYM$5 = *(struct $8FBSYMBOL**)CHAIN_$1;
					label$536:;
					{
						if( *(int32*)SYM$5 != 1 ) goto label$540;
						{
							if( (*(int32*)((uint8*)SYM$5 + 28) & 511) != 20 ) goto label$542;
							{
								goto label$527;
							}
							label$542:;
							label$541:;
						}
						label$540:;
						label$539:;
						SYM$5 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 160);
					}
					label$538:;
					if( SYM$5 != (struct $8FBSYMBOL*)0u ) goto label$536;
					label$537:;
					CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
				}
				goto label$534;
				label$535:;
			}
			label$533:;
			label$532:;
		}
		label$531:;
		label$530:;
	}
	goto label$528;
	label$529:;
	{
		uint32 vr$9 = LEXCURRENTCHAR( 0 );
		READFULLID$1 = -(vr$9 == 46u);
	}
	label$528:;
	if( READFULLID$1 == 0 ) goto label$544;
	{
		*(int32*)((uint8*)T$1 + 4120) = *(int32*)((uint8*)T$1 + 4112);
		HREADIDENTIFIER( (uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)), (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), (int32*)((uint8*)T$1 + 4124), FLAGS$1 | 128 );
		struct $10FBSYMCHAIN* vr$30 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 12), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 4) );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$30;
	}
	label$544:;
	label$543:;
	label$527:;
}

static int32 READID( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$545:;
	struct $8FBSYMBOL* CURRMACRO$1;
	CURRMACRO$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16576);
	*(int32*)((uint8*)T$1 + 4112) = 0;
	*(int32*)((uint8*)T$1 + 4120) = 0;
	HREADIDENTIFIER( (uint8*)((uint8*)T$1 + 12), (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), (int32*)((uint8*)T$1 + 4124), FLAGS$1 );
	if( (FLAGS$1 & 256) == 0 ) goto label$548;
	{
		struct $10FBSYMCHAIN* vr$16 = SYMBLOOKUPAT( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16580), (uint8*)((uint8*)T$1 + 12), 0, 0 );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$16;
		if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$550;
		{
			*(int32*)T$1 = 265;
			*(int32*)((uint8*)T$1 + 4) = 0;
		}
		goto label$549;
		label$550:;
		{
			*(int32*)T$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) + 56);
			*(int32*)((uint8*)T$1 + 4) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) + 60);
		}
		label$549:;
		fb$result$1 = -1;
		goto label$546;
	}
	label$548:;
	label$547:;
	if( (FLAGS$1 & 32) == 0 ) goto label$552;
	{
		*(int32*)T$1 = 265;
		*(int32*)((uint8*)T$1 + 4) = 0;
		fb$result$1 = -1;
		goto label$546;
	}
	label$552:;
	label$551:;
	struct $10FBSYMCHAIN* vr$38 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 12), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 4) );
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$38;
	if( (FLAGS$1 & 2) == 0 ) goto label$554;
	{
		fb$result$1 = -1;
		goto label$546;
	}
	label$554:;
	label$553:;
	if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) == (struct $10FBSYMCHAIN*)0u ) goto label$556;
	{
		if( *(int32*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) != 5 ) goto label$558;
		{
			int32 vr$47 = PPDEFINELOAD( *(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116), CURRMACRO$1 );
			if( vr$47 == 0 ) goto label$560;
			{
				*(int32*)((uint8*)T$1 + 4128) = -1;
				fb$result$1 = 0;
				goto label$546;
			}
			label$560:;
			label$559:;
		}
		label$558:;
		label$557:;
	}
	label$556:;
	label$555:;
	if( (*(int32*)((uint8*)&ENV$ + 888) & 524288) == 0 ) goto label$562;
	{
		if( (FLAGS$1 & 64) != 0 ) goto label$564;
		{
			HCHECKPERIODS( T$1, FLAGS$1, *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) );
		}
		label$564:;
		label$563:;
	}
	label$562:;
	label$561:;
	fb$result$1 = -1;
	goto label$546;
	label$546:;
	return fb$result$1;
}

static void HMULTILINECOMMENT( void )
{
	label$682:;
	static int32 CNT$1;
	LEXEATCHAR(  );
	CNT$1 = 0;
	label$684:;
	{
		{
			uint32 TMP$135$3;
			uint32 vr$0 = LEXCURRENTCHAR( -1 );
			TMP$135$3 = vr$0;
			goto label$688;
			label$689:;
			{
				ERRREPORTEX( 132, (uint8*)0u, 0, 1, (uint8*)0u );
				goto label$683;
			}
			goto label$687;
			label$690:;
			{
				LEXEATCHAR(  );
				uint32 vr$1 = LEXCURRENTCHAR( 0 );
				if( vr$1 != 10u ) goto label$692;
				{
					LEXEATCHAR(  );
				}
				label$692:;
				label$691:;
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) != 0 ) goto label$694;
				{
					*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) + 1;
				}
				label$694:;
				label$693:;
			}
			goto label$687;
			label$695:;
			{
				LEXEATCHAR(  );
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) != 0 ) goto label$697;
				{
					*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) + 1;
				}
				label$697:;
				label$696:;
			}
			goto label$687;
			label$698:;
			{
				LEXEATCHAR(  );
				uint32 vr$10 = LEXCURRENTCHAR( 0 );
				if( vr$10 != 39u ) goto label$700;
				{
					LEXEATCHAR(  );
					CNT$1 = CNT$1 + 1;
				}
				label$700:;
				label$699:;
			}
			goto label$687;
			label$701:;
			{
				LEXEATCHAR(  );
				uint32 vr$12 = LEXCURRENTCHAR( 0 );
				if( vr$12 != 47u ) goto label$703;
				{
					LEXEATCHAR(  );
					if( CNT$1 != 0 ) goto label$705;
					{
						goto label$685;
					}
					label$705:;
					label$704:;
					CNT$1 = CNT$1 + -1;
				}
				label$703:;
				label$702:;
			}
			goto label$687;
			label$706:;
			{
				LEXEATCHAR(  );
			}
			goto label$687;
			label$688:;
			static const void* tmp$207[48] = {
				&&label$689,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$695,
				&&label$706,
				&&label$706,
				&&label$690,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$701,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$706,
				&&label$698,
			};
			if( TMP$135$3 > 47u ) goto label$706;
			goto *tmp$207[TMP$135$3 - 0u];
			label$687:;
		}
	}
	label$686:;
	goto label$684;
	label$685:;
	label$683:;
}

static void HMOVEKDOWN( void )
{
	label$731:;
	*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = -1;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16544) + -1;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4132);
	label$732:;
}

static FBSTRING* LEXGETSTRLITTEXT( int32 TK$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$733:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 IS_ESCAPED$1;
	int32 SAW_BACKSLASH$1;
	uint8* P$1;
	{
		if( TK$1 != 262 ) goto label$736;
		label$737:;
		{
			IS_ESCAPED$1 = 0;
		}
		goto label$735;
		label$736:;
		if( TK$1 != 263 ) goto label$738;
		label$739:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"!", 2, 0 );
			IS_ESCAPED$1 = -1;
		}
		goto label$735;
		label$738:;
		if( TK$1 != 264 ) goto label$740;
		label$741:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"$", 2, 0 );
			IS_ESCAPED$1 = 0;
		}
		label$740:;
		label$735:;
	}
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
	SAW_BACKSLASH$1 = 0;
	uint8* vr$5 = LEXGETTEXT(  );
	P$1 = (uint8*)vr$5;
	label$742:;
	{
		{
			uint8 TMP$139$3;
			TMP$139$3 = *P$1;
			if( (int32)TMP$139$3 != 0 ) goto label$746;
			label$747:;
			{
				goto label$743;
			}
			goto label$745;
			label$746:;
			if( (uint32)(int32)TMP$139$3 != 34u ) goto label$748;
			label$749:;
			{
				if( SAW_BACKSLASH$1 == 0 ) goto label$751;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
				}
				goto label$750;
				label$751:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22\x22", 3, 0 );
				}
				label$750:;
				SAW_BACKSLASH$1 = 0;
			}
			goto label$745;
			label$748:;
			if( (uint32)(int32)TMP$139$3 != 92u ) goto label$752;
			label$753:;
			{
				SAW_BACKSLASH$1 = IS_ESCAPED$1;
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x5C", 2, 0 );
			}
			goto label$745;
			label$752:;
			{
				FBSTRING TMP$142$4;
				SAW_BACKSLASH$1 = 0;
				FBSTRING* vr$15 = fb_CHR( 1, (int32)*P$1 );
				__builtin_memset( &TMP$142$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$142$4, (void*)&S$1, -1, (void*)vr$15, -1 );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$19, -1, 0 );
			}
			label$754:;
			label$745:;
		}
		P$1 = (uint8*)(P$1 + 1);
	}
	label$744:;
	goto label$742;
	label$743:;
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$734:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}
