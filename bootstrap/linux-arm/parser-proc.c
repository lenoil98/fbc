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
typedef int32 $10FB_PROCOPT;
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
typedef int32 $16FB_SYMBLOOKUPOPT;
typedef int32 $9FB_ERRMSG;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzproc( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int32, uint8*, int32 );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void FBSETOPTION( int32, int32 );
int32 ASTISEQUALPARAMINIT( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTPROCBEGIN( struct $8FBSYMBOL*, int32 );
int32 ASTPROCEND( int32 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $16FB_SYMBLOOKUPOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCTORPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL*, int32 );
struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL*, $6AST_OP, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL*, uint8*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int32 );
void SYMBNESTEND( int32 );
uint8* SYMBUNIQUELABEL( void );
void SYMBSETNAME( struct $8FBSYMBOL*, uint8* );
int32 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* );
void FBADDLIB( uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $14FB_SYMBTYPEOPT;
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
typedef int32 $8FB_IDOPT;
struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT );
struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32*, $10FB_PROCOPT, int32 );
void CPARAMETERS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, int32 );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int32 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWCONSTCTORDTOR( int32, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
int32 COPERATOR( int32 );
uint8* CALIASATTRIBUTE( void );
void CLIBATTRIBUTE( void );
void CMETHODATTRIBUTES( struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void CPROCRETTYPE( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, struct $8FBSYMBOL*, int32, int32*, struct $8FBSYMBOL** );
$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE );
$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE );
void CBYREFATTRIBUTE( $13FB_PROCATTRIB*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HSKIPCOMPOUND( int32, int32, $8LEXCHECK );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
static void HPARAMERROR( struct $8FBSYMBOL*, int32, int32 );
static void HCHECKPROTOTYPE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32 );
static void HCHECKATTRIBS( struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
static int32 HCHECKIDTOKEN( int32 );
static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL*, uint8*, int32*, int32 );
static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* );
static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* );
static void HCHECKATTRIB( int32*, int32, int32 );
static int32 HCHECKOPOVLPARAMS( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
static int32 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32 );
static void HCHECKPROPPARAMS( struct $8FBSYMBOL*, int32 );
static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL*, int32, int32 );
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 12 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 32 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int32 CTORCNT;
	int32 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 40 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 16 );
struct $23AST_DTORLIST_SCOPESTACK {
	int32* COOKIES;
	int32 COUNT;
	int32 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 12 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int32 DOEMIT;
	int32 TYPEINICOUNT;
	int32 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int32 DTORLISTCOOKIES;
	int32 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int32 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 236 );
extern struct $6ASTCTX AST$;
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
extern struct $10AST_OPINFO AST_OPTB$[121];
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

uint8* CALIASATTRIBUTE( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	static uint8 ALIASID$1[129];
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 384 ) goto label$13;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$2 = LEXGETCLASS( 0 );
		if( vr$2 != 4 ) goto label$15;
		{
			uint8* vr$3 = LEXGETTEXT(  );
			fb_StrAssign( (void*)ALIASID$1, 129, (void*)vr$3, 0, 0 );
			LEXSKIPTOKEN( 0 );
			int32 vr$4 = fb_StrLen( (void*)ALIASID$1, 129 );
			if( vr$4 <= 0 ) goto label$17;
			{
				fb$result$1 = (uint8*)ALIASID$1;
			}
			goto label$16;
			label$17:;
			{
				ERRREPORT( 304, 0, (uint8*)0u );
			}
			label$16:;
		}
		goto label$14;
		label$15:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$14:;
	}
	label$13:;
	label$12:;
	label$11:;
	return fb$result$1;
}

void CLIBATTRIBUTE( void )
{
	label$18:;
	uint8* LIBNAME$1;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 385 ) goto label$21;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$1 = LEXGETCLASS( 0 );
		if( vr$1 != 4 ) goto label$23;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			LIBNAME$1 = vr$2;
			int32 vr$3 = fb_StrLen( (void*)LIBNAME$1, 0 );
			if( vr$3 <= 0 ) goto label$25;
			{
				FBADDLIB( LIBNAME$1 );
			}
			goto label$24;
			label$25:;
			{
				ERRREPORT( 305, 0, (uint8*)0u );
			}
			label$24:;
			LEXSKIPTOKEN( 0 );
		}
		goto label$22;
		label$23:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$22:;
	}
	label$21:;
	label$20:;
	label$19:;
}

void CMETHODATTRIBUTES( struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$26:;
	int32 vr$0 = HMATCH( 307, 2048 );
	if( vr$0 == 0 ) goto label$29;
	{
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 2;
		goto label$27;
	}
	label$29:;
	label$28:;
	int32 vr$4 = HMATCH( 335, 2048 );
	if( vr$4 == 0 ) goto label$31;
	{
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 2048;
	}
	label$31:;
	label$30:;
	{
		int32 TMP$94$2;
		int32 vr$8 = LEXGETTOKEN( 0 );
		TMP$94$2 = vr$8;
		if( TMP$94$2 != 355 ) goto label$33;
		label$34:;
		{
			*PATTRIB$1 = *(int32*)PATTRIB$1 | 768;
			if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$36;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 12) & 4194304) != 0 ) goto label$38;
				{
					ERRREPORT( 222, 0, (uint8*)0u );
					*PATTRIB$1 = *(int32*)PATTRIB$1 & -769;
				}
				label$38:;
				label$37:;
			}
			label$36:;
			label$35:;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$32;
		label$33:;
		if( TMP$94$2 != 354 ) goto label$39;
		label$40:;
		{
			*PATTRIB$1 = *(int32*)PATTRIB$1 | 256;
			if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$42;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 12) & 4194304) != 0 ) goto label$44;
				{
					ERRREPORT( 221, 0, (uint8*)0u );
					*PATTRIB$1 = *(int32*)PATTRIB$1 & -257;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			LEXSKIPTOKEN( 2048 );
		}
		label$39:;
		label$32:;
	}
	label$27:;
}

void CPROCRETTYPE( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, struct $8FBSYMBOL* PROC$1, int32 IS_PROTO$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int64 TMP$101$1;
	int32 TMP$102$1;
	label$132:;
	int32 OPTIONS$1;
	LEXSKIPTOKEN( 2048 );
	OPTIONS$1 = 1;
	if( (PATTRIB$1 & 2048) == 0 ) goto label$135;
	{
		if( IS_PROTO$1 == 0 ) goto label$137;
		{
			OPTIONS$1 = OPTIONS$1 | 2;
		}
		label$137:;
		label$136:;
		OPTIONS$1 = OPTIONS$1 & -2;
		OPTIONS$1 = OPTIONS$1 | 4;
	}
	label$135:;
	label$134:;
	if( IS_PROTO$1 == 0 ) goto label$139;
	{
		OPTIONS$1 = OPTIONS$1 & -2;
	}
	label$139:;
	label$138:;
	TMP$102$1 = 0;
	TMP$101$1 = 0ll;
	int32 vr$7 = CSYMBOLTYPE( DTYPE$1, SUBTYPE$1, &TMP$101$1, &TMP$102$1, OPTIONS$1 );
	if( vr$7 != 0 ) goto label$141;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		*DTYPE$1 = 8;
		*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$140;
	label$141:;
	{
		{
			int32 TMP$103$3;
			TMP$103$3 = *DTYPE$1 & 511;
			if( TMP$103$3 != 7 ) goto label$143;
			label$144:;
			{
				if( (-((PATTRIB$1 & 2048) == 0) & -(IS_PROTO$1 == 0)) == 0 ) goto label$146;
				{
					ERRREPORT( 55, 0, (uint8*)0u );
					*DTYPE$1 = 17;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$146:;
				label$145:;
			}
			goto label$142;
			label$143:;
			if( TMP$103$3 == 18 ) goto label$148;
			label$149:;
			if( TMP$103$3 != 4 ) goto label$147;
			label$148:;
			{
				if( (-((PATTRIB$1 & 2048) == 0) | -((*DTYPE$1 & 511) == 18)) == 0 ) goto label$151;
				{
					ERRREPORT( 55, 0, (uint8*)0u );
					*DTYPE$1 = 17;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$151:;
				label$150:;
			}
			goto label$142;
			label$147:;
			if( TMP$103$3 != 0 ) goto label$152;
			label$153:;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
				*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			}
			goto label$142;
			label$152:;
			if( TMP$103$3 != 20 ) goto label$154;
			label$155:;
			{
				if( *SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$157;
				{
					{
						int32 TMP$104$6;
						TMP$104$6 = (*(int32*)((uint8*)*SUBTYPE$1 + 120) & 15728640) >> (20 & 31);
						if( TMP$104$6 != 3 ) goto label$159;
						label$160:;
						{
							if( (-((PATTRIB$1 & 2048) == 0) & -((*DTYPE$1 & 480) == 0)) == 0 ) goto label$162;
							{
								ERRREPORT( 24, 0, (uint8*)0u );
								*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
								*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
							}
							label$162:;
							label$161:;
						}
						label$159:;
						label$158:;
					}
				}
				label$157:;
				label$156:;
			}
			label$154:;
			label$142:;
		}
		if( (PATTRIB$1 & 2048) != 0 ) goto label$164;
		{
			HCOMPLAINIFABSTRACTCLASS( *DTYPE$1, *SUBTYPE$1 );
		}
		label$164:;
		label$163:;
	}
	label$140:;
	$21FB_PROC_RETURN_METHOD vr$71 = CPROCRETURNMETHOD( *($11FB_DATATYPE*)DTYPE$1 );
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 96) = vr$71;
	label$133:;
}

$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE DTYPE$1 )
{
	int32 TMP$105$1;
	$21FB_PROC_RETURN_METHOD fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$165:;
	FBSTRING RETURNMETHOD$1;
	__builtin_memset( &RETURNMETHOD$1, 0, 12 );
	fb$result$1 = 2;
	if( (DTYPE$1 & 480) == 0 ) goto label$167;
	TMP$105$1 = 24;
	goto label$181;
	label$167:;
	TMP$105$1 = DTYPE$1 & 31;
	label$181:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$105$1 * 28)) == 1 ) goto label$169;
	{
		fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
		goto label$166;
		label$169:;
	}
	int32 vr$6 = LEXGETTOKEN( 0 );
	if( vr$6 != 343 ) goto label$171;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$7 = LEXGETTOKEN( 0 );
		if( vr$7 == 40 ) goto label$173;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$172;
		label$173:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$172:;
		int32 vr$8 = LEXGETCLASS( 0 );
		if( vr$8 == 4 ) goto label$175;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$174;
		label$175:;
		{
			uint8* vr$9 = LEXGETTEXT(  );
			FBSTRING* vr$10 = fb_StrAllocTempDescZ( (uint8*)vr$9 );
			FBSTRING* vr$11 = fb_StrUcase2( (FBSTRING*)vr$10, 0 );
			FBSTRING* vr$12 = fb_TRIM( (FBSTRING*)vr$11 );
			fb_StrAssign( (void*)&RETURNMETHOD$1, -1, (void*)vr$12, -1, 0 );
			int32 vr$15 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1, (void*)"SSE", 4 );
			if( vr$15 != 0 ) goto label$177;
			{
				fb$result$1 = 1;
			}
			goto label$176;
			label$177:;
			int32 vr$17 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1, (void*)"FPU", 4 );
			if( vr$17 != 0 ) goto label$178;
			{
				fb$result$1 = 0;
			}
			label$178:;
			label$176:;
			LEXSKIPTOKEN( 0 );
		}
		label$174:;
		int32 vr$18 = LEXGETTOKEN( 0 );
		if( vr$18 == 41 ) goto label$180;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$179;
		label$180:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$179:;
	}
	label$171:;
	label$170:;
	fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
	label$166:;
	return fb$result$1;
}

$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE DEFAULT$1 )
{
	$11FB_FUNCMODE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$182:;
	if( DEFAULT$1 != -1 ) goto label$185;
	{
		DEFAULT$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 252);
	}
	label$185:;
	label$184:;
	{
		uint32 TMP$108$2;
		int32 vr$1 = LEXGETTOKEN( 0 );
		TMP$108$2 = (uint32)vr$1;
		goto label$187;
		label$188:;
		{
			fb$result$1 = 3;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$186;
		label$189:;
		{
			fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 256);
			LEXSKIPTOKEN( 2048 );
		}
		goto label$186;
		label$190:;
		{
			fb$result$1 = 4;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$186;
		label$191:;
		{
			{
				uint32 TMP$109$4;
				TMP$109$4 = *(uint32*)((uint8*)&PARSER$ + 100);
				goto label$193;
				label$194:;
				{
					fb$result$1 = DEFAULT$1;
				}
				goto label$192;
				label$195:;
				{
					fb$result$1 = 3;
				}
				goto label$192;
				label$196:;
				{
					fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 256);
				}
				goto label$192;
				label$197:;
				{
					fb$result$1 = 2;
				}
				goto label$192;
				label$193:;
				static const void* tmp$110[7] = {
					&&label$194,
					&&label$195,
					&&label$196,
					&&label$197,
					&&label$195,
					&&label$192,
					&&label$194,
				};
				if( TMP$109$4 > 6u ) goto label$192;
				goto *tmp$110[TMP$109$4 - 0u];
				label$192:;
			}
		}
		goto label$186;
		label$187:;
		static const void* tmp$111[3] = {
			&&label$190,
			&&label$188,
			&&label$189,
		};
		if( (TMP$108$2 - 381u) > 2u ) goto label$191;
		goto *tmp$111[TMP$108$2 - 381u];
		label$186:;
	}
	label$183:;
	return fb$result$1;
}

void CBYREFATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1, int32 IS_FUNC$1 )
{
	label$210:;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 320 ) goto label$213;
	{
		if( IS_FUNC$1 != 0 ) goto label$215;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$215:;
		label$214:;
		LEXSKIPTOKEN( 2048 );
		*PATTRIB$1 = *(int32*)PATTRIB$1 | 2048;
	}
	label$213:;
	label$212:;
	label$211:;
}

struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32* IS_NESTED$1, $10FB_PROCOPT OPTIONS$1, int32 TK$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$408:;
	static uint8 ID$1[129];
	uint8* PALIAS$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* PARAM$1;
	int32 DTYPE$1;
	int32 IS_OUTSIDE$1;
	int32 IS_MEMBERPROC$1;
	int32 MODE$1;
	int32 STATS$1;
	int32 OP$1;
	int32 IS_GET$1;
	int32 IS_INDEXED$1;
	int32 PRIORITY$1;
	int32 IDOPT$1;
	*IS_NESTED$1 = 0;
	IS_OUTSIDE$1 = 0;
	IS_MEMBERPROC$1 = 0;
	IS_GET$1 = 0;
	IS_INDEXED$1 = 0;
	DTYPE$1 = -2147483648u;
	SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	STATS$1 = 0;
	PRIORITY$1 = 0;
	{
		if( TK$1 == 347 ) goto label$412;
		label$413:;
		if( TK$1 != 348 ) goto label$411;
		label$412:;
		{
			PATTRIB$1 = PATTRIB$1 | 2;
			if( TK$1 != 347 ) goto label$415;
			{
				PATTRIB$1 = PATTRIB$1 | 5;
			}
			goto label$414;
			label$415:;
			{
				PATTRIB$1 = PATTRIB$1 | 8;
			}
			label$414:;
		}
		goto label$410;
		label$411:;
		if( TK$1 != 349 ) goto label$416;
		label$417:;
		{
			PATTRIB$1 = PATTRIB$1 | 17;
		}
		goto label$410;
		label$416:;
		if( TK$1 != 350 ) goto label$418;
		label$419:;
		{
			PATTRIB$1 = PATTRIB$1 | 35;
		}
		label$418:;
		label$410:;
	}
	if( (OPTIONS$1 & 2) == 0 ) goto label$421;
	{
		PARENT$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$420;
	label$421:;
	{
		IDOPT$1 = 22;
		{
			if( TK$1 != 349 ) goto label$423;
			label$424:;
			{
				IDOPT$1 = IDOPT$1 | 8;
			}
			goto label$422;
			label$423:;
			if( TK$1 == 347 ) goto label$426;
			label$427:;
			if( TK$1 != 348 ) goto label$425;
			label$426:;
			{
				IDOPT$1 = IDOPT$1 | 1;
			}
			label$425:;
			label$422:;
		}
		struct $8FBSYMBOL* vr$10 = CPARENTID( IDOPT$1 );
		PARENT$1 = vr$10;
	}
	label$420:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$429;
	{
		if( (OPTIONS$1 & 1) == 0 ) goto label$431;
		{
			ERRREPORT( 158, 0, (uint8*)0u );
			PARENT$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$430;
		label$431:;
		{
			IS_OUTSIDE$1 = -1;
		}
		label$430:;
	}
	goto label$428;
	label$429:;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$433;
		{
			PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
		}
		label$433:;
		label$432:;
	}
	label$428:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$435;
	{
		IS_MEMBERPROC$1 = -(*(int32*)PARENT$1 == 10);
	}
	label$435:;
	label$434:;
	if( IS_MEMBERPROC$1 == 0 ) goto label$437;
	{
		if( (-((OPTIONS$1 & 1) != 0) & -((ATTRIB$1 & 2) == 0)) == 0 ) goto label$439;
		{
			PATTRIB$1 = PATTRIB$1 | 2;
		}
		label$439:;
		label$438:;
	}
	goto label$436;
	label$437:;
	{
		{
			if( TK$1 == 347 ) goto label$442;
			label$443:;
			if( TK$1 == 348 ) goto label$442;
			label$444:;
			if( TK$1 != 350 ) goto label$441;
			label$442:;
			{
				if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$446;
				{
					ERRREPORT( 160, 0, (uint8*)0u );
				}
				goto label$445;
				label$446:;
				if( *(int32*)PARENT$1 == 10 ) goto label$447;
				{
					ERRREPORT( 168, 0, (uint8*)0u );
				}
				label$447:;
				label$445:;
				if( (OPTIONS$1 & 1) == 0 ) goto label$449;
				{
					HSKIPUNTIL( -1, 0, 0, 0 );
				}
				goto label$448;
				label$449:;
				{
					HSKIPCOMPOUND( TK$1, -1, 0 );
				}
				label$448:;
				goto label$409;
			}
			label$441:;
			label$440:;
		}
		HCHECKATTRIB( (int32*)&ATTRIB$1, 2, 258 );
		HCHECKATTRIB( (int32*)&ATTRIB$1, 2048, 259 );
		HCHECKATTRIB( (int32*)&PATTRIB$1, 512, 260 );
		HCHECKATTRIB( (int32*)&PATTRIB$1, 256, 261 );
	}
	label$436:;
	{
		if( TK$1 == 347 ) goto label$452;
		label$453:;
		if( TK$1 != 348 ) goto label$451;
		label$452:;
		{
			struct $8FBSYMBOL* vr$27 = SYMBPREADDPROC( (uint8*)0u );
			PROC$1 = vr$27;
		}
		goto label$450;
		label$451:;
		if( TK$1 != 349 ) goto label$454;
		label$455:;
		{
			int32 vr$28 = COPERATOR( -1 );
			OP$1 = vr$28;
			{
				if( OP$1 == -1 ) goto label$458;
				label$459:;
				if( OP$1 == 36 ) goto label$458;
				label$460:;
				if( OP$1 == 9 ) goto label$458;
				label$461:;
				if( OP$1 == 37 ) goto label$458;
				label$462:;
				if( OP$1 != 10 ) goto label$457;
				label$458:;
				{
					ERRREPORT( 157, 0, (uint8*)0u );
					OP$1 = 28;
				}
				label$457:;
				label$456:;
			}
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$464;
			{
				if( IS_MEMBERPROC$1 != 0 ) goto label$466;
				{
					ERRREPORT( 152, -1, (uint8*)0u );
					OP$1 = 28;
				}
				label$466:;
				label$465:;
			}
			goto label$463;
			label$464:;
			{
				if( IS_MEMBERPROC$1 == 0 ) goto label$468;
				{
					ERRREPORT( 153, -1, (uint8*)" (TODO)" );
				}
				label$468:;
				label$467:;
			}
			label$463:;
			{
				uint32 TMP$133$4;
				TMP$133$4 = (uint32)OP$1;
				goto label$470;
				label$471:;
				{
					if( (PATTRIB$1 & 768) == 0 ) goto label$473;
					{
						ERRREPORT( 233, -1, (uint8*)0u );
						PATTRIB$1 = PATTRIB$1 & -769;
					}
					label$473:;
					label$472:;
					if( (ATTRIB$1 & 2048) == 0 ) goto label$475;
					{
						ERRREPORT( 234, -1, (uint8*)0u );
						ATTRIB$1 = ATTRIB$1 & -2049;
					}
					label$475:;
					label$474:;
					ATTRIB$1 = ATTRIB$1 | 2;
					PATTRIB$1 = PATTRIB$1 & -3;
				}
				goto label$469;
				label$476:;
				{
					if( IS_MEMBERPROC$1 == 0 ) goto label$478;
					{
						if( (ATTRIB$1 & 2) == 0 ) goto label$480;
						{
							ERRREPORT( 232, -1, (uint8*)0u );
							ATTRIB$1 = ATTRIB$1 & -3;
						}
						label$480:;
						label$479:;
						PATTRIB$1 = PATTRIB$1 | 2;
					}
					label$478:;
					label$477:;
				}
				goto label$469;
				label$470:;
				static const void* tmp$137[4] = {
					&&label$471,
					&&label$471,
					&&label$471,
					&&label$471,
				};
				if( (TMP$133$4 - 18u) > 3u ) goto label$476;
				goto *tmp$137[TMP$133$4 - 18u];
				label$469:;
			}
			struct $8FBSYMBOL* vr$40 = SYMBPREADDPROC( (uint8*)0u );
			PROC$1 = vr$40;
		}
		goto label$450;
		label$454:;
		{
			struct $8FBSYMBOL* vr$45 = HGETID( PARENT$1, (uint8*)ID$1, &DTYPE$1, -(TK$1 == 345) | -(TK$1 == 350) );
			HEAD_PROC$1 = vr$45;
			struct $8FBSYMBOL* vr$46 = SYMBPREADDPROC( (uint8*)ID$1 );
			PROC$1 = vr$46;
		}
		label$481:;
		label$450:;
	}
	CNAKEDATTRIBUTE( &PATTRIB$1 );
	{
		if( TK$1 == 347 ) goto label$484;
		label$485:;
		if( TK$1 != 348 ) goto label$483;
		label$484:;
		{
			MODE$1 = 3;
		}
		goto label$482;
		label$483:;
		{
			MODE$1 = -1;
		}
		label$486:;
		label$482:;
	}
	$11FB_FUNCMODE vr$48 = CPROCCALLINGCONV( MODE$1 );
	MODE$1 = vr$48;
	int32 vr$49 = LEXGETTOKEN( 0 );
	if( vr$49 != 386 ) goto label$488;
	{
		if( (*(int32*)((uint8*)&ENV$ + 888) & 16) != 0 ) goto label$490;
		{
			ERRREPORTNOTALLOWED( 16, 146, (uint8*)0u );
		}
		goto label$489;
		label$490:;
		{
			PATTRIB$1 = PATTRIB$1 | 1;
		}
		label$489:;
		LEXSKIPTOKEN( 2048 );
	}
	label$488:;
	label$487:;
	if( (OPTIONS$1 & 1) == 0 ) goto label$492;
	{
		CLIBATTRIBUTE(  );
	}
	label$492:;
	label$491:;
	uint8* vr$53 = CALIASATTRIBUTE(  );
	PALIAS$1 = vr$53;
	if( (-((OPTIONS$1 & 1) == 0) & -(PARENT$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$494;
	{
		if( PARENT$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$496;
		{
			SYMBNESTBEGIN( PARENT$1, -1 );
			*IS_NESTED$1 = -1;
		}
		label$496:;
		label$495:;
	}
	label$494:;
	label$493:;
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 4) = ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = PATTRIB$1;
	CPARAMETERS( PARENT$1, PROC$1, MODE$1, -((OPTIONS$1 & 1) != 0) );
	{
		if( TK$1 != 348 ) goto label$498;
		label$499:;
		{
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 1 ) goto label$501;
			{
				ERRREPORT( 159, 0, (uint8*)0u );
			}
			label$501:;
			label$500:;
			DTYPE$1 = 0;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$497;
		label$498:;
		if( TK$1 != 347 ) goto label$502;
		label$503:;
		{
			int32 vr$65 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
			if( vr$65 == 0 ) goto label$505;
			{
				ERRREPORT( 271, -1, (uint8*)0u );
				goto label$409;
			}
			label$505:;
			label$504:;
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) + 56) != 4 ) goto label$507;
			{
				HPARAMERROR( PROC$1, 0, 143 );
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
				*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172) == (struct $8FBSYMBOL*)0u ) goto label$509;
				{
					*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172) + 176) = (struct $8FBSYMBOL*)0u;
				}
				label$509:;
				label$508:;
				*(int16*)((uint8*)PROC$1 + 68) = (int16)((int32)*(int16*)((uint8*)PROC$1 + 68) + -1);
				SYMBFREESYMBOL( PARAM$1 );
			}
			label$507:;
			label$506:;
			DTYPE$1 = 0;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$497;
		label$502:;
		if( TK$1 != 349 ) goto label$510;
		label$511:;
		{
			{
				if( OP$1 != 29 ) goto label$513;
				label$514:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$516;
					{
						OP$1 = 54;
					}
					label$516:;
					label$515:;
				}
				goto label$512;
				label$513:;
				if( OP$1 != 28 ) goto label$517;
				label$518:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$520;
					{
						OP$1 = 53;
					}
					label$520:;
					label$519:;
				}
				goto label$512;
				label$517:;
				if( OP$1 != 30 ) goto label$521;
				label$522:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$524;
					{
						OP$1 = 76;
					}
					label$524:;
					label$523:;
				}
				label$521:;
				label$512:;
			}
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 4) == 0 ) goto label$526;
			{
				DTYPE$1 = 0;
			}
			goto label$525;
			label$526:;
			{
				CBYREFATTRIBUTE( &PATTRIB$1, -1 );
				int32 vr$88 = LEXGETTOKEN( 0 );
				if( vr$88 != 376 ) goto label$528;
				{
					CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
				}
				goto label$527;
				label$528:;
				{
					ERRREPORT( 68, 0, (uint8*)0u );
					DTYPE$1 = 8;
				}
				label$527:;
			}
			label$525:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = SUBTYPE$1;
			SYMBPROCALLOCEXT( PROC$1 );
			*($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40) = OP$1;
			if( OP$1 != 0 ) goto label$530;
			{
				int32 vr$97 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
				if( vr$97 == 0 ) goto label$532;
				{
					ERRREPORT( 271, -1, (uint8*)0u );
					goto label$409;
				}
				label$532:;
				label$531:;
			}
			label$530:;
			label$529:;
			int32 vr$98 = HCHECKOPOVLPARAMS( PARENT$1, OP$1, PROC$1 );
			if( vr$98 != 0 ) goto label$534;
			{
				goto label$409;
			}
			label$534:;
			label$533:;
		}
		goto label$497;
		label$510:;
		if( TK$1 != 350 ) goto label$535;
		label$536:;
		{
			CBYREFATTRIBUTE( &PATTRIB$1, -1 );
			int32 vr$100 = LEXGETTOKEN( 0 );
			if( vr$100 != 376 ) goto label$538;
			{
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
				IS_INDEXED$1 = -((int32)*(int16*)((uint8*)PROC$1 + 68) == 2);
				IS_GET$1 = -1;
			}
			goto label$537;
			label$538:;
			{
				if( (PATTRIB$1 & 2048) == 0 ) goto label$540;
				{
					ERRREPORT( 68, 0, (uint8*)0u );
					PATTRIB$1 = PATTRIB$1 & -2049;
				}
				label$540:;
				label$539:;
				DTYPE$1 = 0;
				IS_INDEXED$1 = -((int32)*(int16*)((uint8*)PROC$1 + 68) == 3);
			}
			label$537:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = SUBTYPE$1;
			HCHECKPROPPARAMS( PROC$1, IS_GET$1 );
		}
		goto label$497;
		label$535:;
		{
			if( IS_MEMBERPROC$1 == 0 ) goto label$543;
			{
				int32 TMP$134$4;
				if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 0 ) goto label$544;
				TMP$134$4 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) + 56) != 4);
				goto label$654;
				label$544:;
				TMP$134$4 = -1;
				label$654:;
				if( TMP$134$4 == 0 ) goto label$546;
				{
					PATTRIB$1 = PATTRIB$1 | 1;
				}
				label$546:;
				label$545:;
			}
			label$543:;
			label$542:;
			CBYREFATTRIBUTE( &PATTRIB$1, -(TK$1 == 346) );
			int32 vr$123 = LEXGETTOKEN( 0 );
			if( vr$123 != 376 ) goto label$548;
			{
				if( (-(DTYPE$1 != -2147483648u) | -(TK$1 == 345)) == 0 ) goto label$550;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
				}
				label$550:;
				label$549:;
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
			}
			goto label$547;
			label$548:;
			{
				if( TK$1 != 346 ) goto label$552;
				{
					if( (*(int32*)((uint8*)&ENV$ + 888) & 4194304) == 0 ) goto label$554;
					{
						if( DTYPE$1 != -2147483648u ) goto label$556;
						{
							int32 vr$132 = SYMBGETDEFTYPE( (uint8*)ID$1 );
							DTYPE$1 = vr$132;
						}
						label$556:;
						label$555:;
					}
					goto label$553;
					label$554:;
					{
						ERRREPORTNOTALLOWED( 4194304, 147, (uint8*)0u );
						DTYPE$1 = 8;
					}
					label$553:;
				}
				goto label$551;
				label$552:;
				{
					DTYPE$1 = 0;
				}
				label$551:;
			}
			label$547:;
		}
		label$541:;
		label$497:;
	}
	if( (OPTIONS$1 & 1) == 0 ) goto label$558;
	{
		{
			if( TK$1 == 347 ) goto label$561;
			label$562:;
			if( TK$1 != 348 ) goto label$560;
			label$561:;
			{
				struct $8FBSYMBOL* vr$134 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$134;
			}
			goto label$559;
			label$560:;
			if( TK$1 != 349 ) goto label$563;
			label$564:;
			{
				struct $8FBSYMBOL* vr$135 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$135;
			}
			goto label$559;
			label$563:;
			{
				struct $8FBSYMBOL* vr$136 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$136;
			}
			label$565:;
			label$559:;
		}
		if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$567;
		{
			ERRREPORT( 4, 0, (uint8*)0u );
			goto label$409;
		}
		label$567:;
		label$566:;
		if( (-((OPTIONS$1 & 2) != 0) & -(TK$1 != 347)) == 0 ) goto label$569;
		{
			COVERRIDEATTRIBUTE( PROC$1 );
		}
		label$569:;
		label$568:;
		if( TK$1 != 350 ) goto label$571;
		{
			HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
		}
		label$571:;
		label$570:;
		fb$result$1 = PROC$1;
		goto label$409;
	}
	label$558:;
	label$557:;
	{
		int32 TMP$135$2;
		int32 vr$141 = LEXGETTOKEN( 0 );
		TMP$135$2 = vr$141;
		if( TMP$135$2 == 347 ) goto label$574;
		label$575:;
		if( TMP$135$2 != 348 ) goto label$573;
		label$574:;
		{
			if( (-((PATTRIB$1 & 2) != 0) | -(TK$1 == 346)) == 0 ) goto label$577;
			{
				ERRREPORT( 17, -1, (uint8*)0u );
			}
			goto label$576;
			label$577:;
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) == 0 ) goto label$578;
			{
				ERRREPORT( 1, -1, (uint8*)0u );
			}
			goto label$576;
			label$578:;
			{
				int32 vr$148 = LEXGETTOKEN( 0 );
				if( vr$148 != 347 ) goto label$580;
				{
					STATS$1 = STATS$1 | 65536;
				}
				goto label$579;
				label$580:;
				{
					STATS$1 = STATS$1 | 131072;
				}
				label$579:;
			}
			label$576:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$151 = LEXGETCLASS( 0 );
			if( vr$151 != 3 ) goto label$582;
			{
				if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) == 8 ) goto label$584;
				{
					ERRREPORT( 189, 0, (uint8*)0u );
					LEXSKIPTOKEN( 0 );
				}
				goto label$583;
				label$584:;
				{
					uint8* vr$154 = LEXGETTEXT(  );
					FBSTRING* vr$155 = fb_StrAllocTempDescZ( (uint8*)vr$154 );
					int32 vr$156 = fb_VALINT( (FBSTRING*)vr$155 );
					PRIORITY$1 = vr$156;
					if( (-(PRIORITY$1 < 101) | -(PRIORITY$1 > 65535)) == 0 ) goto label$586;
					{
						ERRREPORT( 189, 0, (uint8*)0u );
						LEXSKIPTOKEN( 0 );
					}
					goto label$585;
					label$586:;
					{
						PRIORITY$1 = PRIORITY$1 & 65535;
						LEXSKIPTOKEN( 0 );
					}
					label$585:;
				}
				label$583:;
			}
			label$582:;
			label$581:;
		}
		label$573:;
		label$572:;
	}
	int32 vr$161 = HMATCH( 307, 2048 );
	if( vr$161 == 0 ) goto label$588;
	{
		PATTRIB$1 = PATTRIB$1 | 64;
	}
	label$588:;
	label$587:;
	int32 vr$163 = LEXGETTOKEN( 0 );
	if( vr$163 != 341 ) goto label$590;
	{
		if( (STATS$1 & 196608) == 0 ) goto label$592;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$592:;
		label$591:;
		if( (ATTRIB$1 & 64) == 0 ) goto label$594;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			ATTRIB$1 = ATTRIB$1 & -65;
		}
		label$594:;
		label$593:;
		LEXSKIPTOKEN( 2048 );
		FBSETOPTION( 28, -1 );
		ATTRIB$1 = ATTRIB$1 | 288;
	}
	label$590:;
	label$589:;
	{
		if( TK$1 != 347 ) goto label$596;
		label$597:;
		{
			struct $8FBSYMBOL* vr$168 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			HEAD_PROC$1 = vr$168;
		}
		goto label$595;
		label$596:;
		if( TK$1 != 348 ) goto label$598;
		label$599:;
		{
			struct $8FBSYMBOL* vr$169 = SYMBGETCOMPDTOR( PARENT$1 );
			HEAD_PROC$1 = vr$169;
		}
		goto label$595;
		label$598:;
		if( TK$1 != 349 ) goto label$600;
		label$601:;
		{
			struct $8FBSYMBOL* vr$170 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$1 );
			HEAD_PROC$1 = vr$170;
		}
		label$600:;
		label$595:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$603;
	{
		if( IS_OUTSIDE$1 == 0 ) goto label$605;
		{
			ERRREPORT( 158, 0, (uint8*)0u );
		}
		label$605:;
		label$604:;
		{
			if( TK$1 == 347 ) goto label$608;
			label$609:;
			if( TK$1 != 348 ) goto label$607;
			label$608:;
			{
				struct $8FBSYMBOL* vr$171 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$171;
			}
			goto label$606;
			label$607:;
			if( TK$1 != 349 ) goto label$610;
			label$611:;
			{
				struct $8FBSYMBOL* vr$172 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$172;
			}
			goto label$606;
			label$610:;
			{
				struct $8FBSYMBOL* vr$173 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$173;
			}
			label$612:;
			label$606:;
		}
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$614;
		{
			ERRREPORT( 4, -1, (uint8*)0u );
			uint8* vr$174 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$175 = SYMBADDPROC( PROC$1, (uint8*)vr$174, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
			PROC$1 = vr$175;
		}
		goto label$613;
		label$614:;
		{
			PROC$1 = HEAD_PROC$1;
		}
		label$613:;
	}
	goto label$602;
	label$603:;
	{
		if( -((*(int32*)((uint8*)HEAD_PROC$1 + 8) & 32) != 0) == -(TK$1 == 350) ) goto label$616;
		{
			ERRREPORT( 4, -1, (uint8*)0u );
			uint8* vr$180 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$181 = SYMBADDPROC( PROC$1, (uint8*)vr$180, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
			fb$result$1 = vr$181;
			goto label$409;
		}
		label$616:;
		label$615:;
		if( (*(int32*)((uint8*)HEAD_PROC$1 + 8) & 1) <= 0 ) goto label$618;
		{
			{
				if( TK$1 != 347 ) goto label$620;
				label$621:;
				{
					struct $8FBSYMBOL* vr$184 = SYMBFINDCTORPROC( HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$184;
				}
				goto label$619;
				label$620:;
				if( TK$1 != 349 ) goto label$622;
				label$623:;
				{
					struct $8FBSYMBOL* vr$185 = SYMBFINDOPOVLPROC( OP$1, HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$185;
				}
				goto label$619;
				label$622:;
				{
					$16FB_SYMBLOOKUPOPT TMP$136$5;
					if( IS_GET$1 == 0 ) goto label$625;
					TMP$136$5 = 1;
					goto label$655;
					label$625:;
					TMP$136$5 = 0;
					label$655:;
					struct $8FBSYMBOL* vr$186 = SYMBFINDOVERLOADPROC( HEAD_PROC$1, PROC$1, TMP$136$5 );
					HEAD_PROC$1 = vr$186;
				}
				label$624:;
				label$619:;
			}
			PATTRIB$1 = PATTRIB$1 | 1;
		}
		label$618:;
		label$617:;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$627;
		{
			if( IS_OUTSIDE$1 == 0 ) goto label$629;
			{
				ERRREPORT( 158, 0, (uint8*)0u );
			}
			label$629:;
			label$628:;
			{
				if( TK$1 == 347 ) goto label$632;
				label$633:;
				if( TK$1 != 348 ) goto label$631;
				label$632:;
				{
					struct $8FBSYMBOL* vr$188 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$188;
				}
				goto label$630;
				label$631:;
				if( TK$1 != 349 ) goto label$634;
				label$635:;
				{
					struct $8FBSYMBOL* vr$189 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$189;
				}
				goto label$630;
				label$634:;
				{
					struct $8FBSYMBOL* vr$190 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$190;
				}
				label$636:;
				label$630:;
			}
			if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$638;
			{
				ERRREPORT( 4, -1, (uint8*)0u );
				uint8* vr$191 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$192 = SYMBADDPROC( PROC$1, (uint8*)vr$191, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				fb$result$1 = vr$192;
				goto label$409;
			}
			label$638:;
			label$637:;
			PROC$1 = HEAD_PROC$1;
		}
		goto label$626;
		label$627:;
		{
			if( (*(int32*)((uint8*)HEAD_PROC$1 + 12) & 8) == 0 ) goto label$640;
			{
				ERRREPORT( 4, -1, (uint8*)0u );
				uint8* vr$195 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$196 = SYMBADDPROC( PROC$1, (uint8*)vr$195, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				fb$result$1 = vr$196;
				goto label$409;
			}
			label$640:;
			label$639:;
			HCHECKPROTOTYPE( HEAD_PROC$1, PROC$1, PALIAS$1, DTYPE$1, SUBTYPE$1, MODE$1 );
			PROC$1 = HEAD_PROC$1;
			HCHECKATTRIBS( PROC$1, ATTRIB$1, PATTRIB$1 );
			if( (STATS$1 & 196608) == 0 ) goto label$642;
			{
				if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$644;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
				}
				label$644:;
				label$643:;
			}
			label$642:;
			label$641:;
			*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | 8;
		}
		label$626:;
	}
	label$602:;
	if( (STATS$1 & 65536) == 0 ) goto label$646;
	{
		if( (*(int32*)((uint8*)PROC$1 + 4) & 6291456) == 0 ) goto label$648;
		{
			ERRREPORT( 205, -1, (uint8*)0u );
		}
		label$648:;
		label$647:;
		SYMBADDGLOBALCTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56) = PRIORITY$1;
	}
	goto label$645;
	label$646:;
	if( (STATS$1 & 131072) == 0 ) goto label$649;
	{
		if( (*(int32*)((uint8*)PROC$1 + 4) & 6291456) == 0 ) goto label$651;
		{
			ERRREPORT( 206, -1, (uint8*)0u );
		}
		label$651:;
		label$650:;
		SYMBADDGLOBALDTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56) = PRIORITY$1;
	}
	label$649:;
	label$645:;
	if( TK$1 != 350 ) goto label$653;
	{
		HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
	}
	label$653:;
	label$652:;
	fb$result$1 = PROC$1;
	label$409:;
	return fb$result$1;
}

void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$656:;
	if( (*(int32*)ATTRIB$1 & 2) == 0 ) goto label$659;
	{
		ERRREPORT( 213, 0, (uint8*)0u );
		*ATTRIB$1 = *(int32*)ATTRIB$1 & -3;
	}
	label$659:;
	label$658:;
	label$657:;
}

void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$660:;
	if( (*(int32*)PATTRIB$1 & 768) == 0 ) goto label$663;
	{
		if( (*(int32*)PATTRIB$1 & 512) == 0 ) goto label$665;
		{
			ERRREPORT( 210, 0, (uint8*)0u );
		}
		goto label$664;
		label$665:;
		{
			ERRREPORT( 211, 0, (uint8*)0u );
		}
		label$664:;
		*PATTRIB$1 = *(int32*)PATTRIB$1 & -724;
	}
	label$663:;
	label$662:;
	label$661:;
}

void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$666:;
	if( (*(int32*)PATTRIB$1 & 512) == 0 ) goto label$669;
	{
		ERRREPORT( 212, 0, (uint8*)0u );
		*PATTRIB$1 = *(int32*)PATTRIB$1 & -513;
	}
	label$669:;
	label$668:;
	label$667:;
}

void HDISALLOWCONSTCTORDTOR( int32 TK$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$670:;
	if( (*(int32*)ATTRIB$1 & 2048) == 0 ) goto label$673;
	{
		$9FB_ERRMSG TMP$138$2;
		if( TK$1 != 347 ) goto label$674;
		TMP$138$2 = 314;
		goto label$675;
		label$674:;
		TMP$138$2 = 315;
		label$675:;
		ERRREPORT( TMP$138$2, 0, (uint8*)0u );
		*ATTRIB$1 = *(int32*)ATTRIB$1 & -2049;
	}
	label$673:;
	label$672:;
	label$671:;
}

void CPROCSTMTBEGIN( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$676:;
	int32 TKN$1;
	int32 IS_NESTED$1;
	struct $8FBSYMBOL* PROC$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	if( (ATTRIB$1 & 96) != 0 ) goto label$679;
	{
		if( *(int32*)((uint8*)&ENV$ + 936) == 0 ) goto label$681;
		{
			ATTRIB$1 = ATTRIB$1 | 32;
		}
		goto label$680;
		label$681:;
		{
			ATTRIB$1 = ATTRIB$1 | 64;
		}
		label$680:;
	}
	label$679:;
	label$678:;
	CMETHODATTRIBUTES( (struct $8FBSYMBOL*)0u, &ATTRIB$1, &PATTRIB$1 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	TKN$1 = vr$5;
	{
		uint32 TMP$139$2;
		TMP$139$2 = (uint32)TKN$1;
		goto label$683;
		label$684:;
		{
		}
		goto label$682;
		label$685:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 64) != 0 ) goto label$687;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			goto label$686;
			label$687:;
			{
				PATTRIB$1 = PATTRIB$1 | 4;
			}
			label$686:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWVIRTUALCTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$682;
		label$688:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 64) != 0 ) goto label$690;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			goto label$689;
			label$690:;
			{
				PATTRIB$1 = PATTRIB$1 | 8;
			}
			label$689:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWABSTRACTDTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$682;
		label$691:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 32) != 0 ) goto label$693;
			{
				ERRREPORTNOTALLOWED( 32, 146, (uint8*)0u );
			}
			label$693:;
			label$692:;
		}
		goto label$682;
		label$694:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 64) != 0 ) goto label$696;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			label$696:;
			label$695:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$682;
		label$697:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$677;
		}
		goto label$682;
		label$683:;
		static const void* tmp$140[6] = {
			&&label$684,
			&&label$684,
			&&label$685,
			&&label$688,
			&&label$691,
			&&label$694,
		};
		if( (TMP$139$2 - 345u) > 5u ) goto label$697;
		goto *tmp$140[TMP$139$2 - 345u];
		label$682:;
	}
	int32 vr$26 = CCOMPSTMTISALLOWED( 2 );
	if( vr$26 != 0 ) goto label$699;
	{
		HSKIPCOMPOUND( TKN$1, -1, 0 );
		goto label$677;
	}
	label$699:;
	label$698:;
	LEXSKIPTOKEN( 2048 );
	struct $8FBSYMBOL* vr$28 = CPROCHEADER( ATTRIB$1, PATTRIB$1, &IS_NESTED$1, 0, TKN$1 );
	PROC$1 = vr$28;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$701;
	{
		if( IS_NESTED$1 == 0 ) goto label$703;
		{
			SYMBNESTEND( -1 );
		}
		label$703:;
		label$702:;
		HSKIPCOMPOUND( TKN$1, -1, 0 );
		goto label$677;
	}
	label$701:;
	label$700:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$705;
	{
		ERRREPORT( 224, 0, (uint8*)0u );
	}
	label$705:;
	label$704:;
	ASTPROCBEGIN( PROC$1, 0 );
	struct $13FB_CMPSTMTSTK* vr$31 = CCOMPSTMTPUSH( 346, 33 );
	STK$1 = vr$31;
	*($8FB_TOKEN*)((uint8*)STK$1 + 16) = TKN$1;
	*(int32*)((uint8*)STK$1 + 20) = IS_NESTED$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 40) + 40);
	label$677:;
}

void CPROCSTMTEND( void )
{
	label$706:;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $8FBSYMBOL* PROC_RES$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 346, -1 );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$709;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$707;
	}
	label$709:;
	label$708:;
	LEXSKIPTOKEN( 2048 );
	int32 vr$2 = HMATCH( *(int32*)((uint8*)STK$1 + 16), 2048 );
	if( vr$2 != 0 ) goto label$711;
	{
		{
			$8FB_TOKEN TMP$141$3;
			TMP$141$3 = *($8FB_TOKEN*)((uint8*)STK$1 + 16);
			if( TMP$141$3 != 345 ) goto label$713;
			label$714:;
			{
				ERRREPORT( 125, 0, (uint8*)0u );
			}
			goto label$712;
			label$713:;
			if( TMP$141$3 != 346 ) goto label$715;
			label$716:;
			{
				ERRREPORT( 126, 0, (uint8*)0u );
			}
			goto label$712;
			label$715:;
			if( TMP$141$3 != 347 ) goto label$717;
			label$718:;
			{
				ERRREPORT( 127, 0, (uint8*)0u );
			}
			goto label$712;
			label$717:;
			if( TMP$141$3 != 348 ) goto label$719;
			label$720:;
			{
				ERRREPORT( 128, 0, (uint8*)0u );
			}
			goto label$712;
			label$719:;
			if( TMP$141$3 != 349 ) goto label$721;
			label$722:;
			{
				ERRREPORT( 129, 0, (uint8*)0u );
			}
			goto label$712;
			label$721:;
			if( TMP$141$3 != 350 ) goto label$723;
			label$724:;
			{
				ERRREPORT( 130, 0, (uint8*)0u );
			}
			label$723:;
			label$712:;
		}
	}
	label$711:;
	label$710:;
	struct $8FBSYMBOL* vr$4 = SYMBGETPROCRESULT( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) );
	PROC_RES$1 = vr$4;
	if( PROC_RES$1 == (struct $8FBSYMBOL*)0u ) goto label$726;
	{
		if( (*(int32*)((uint8*)PROC_RES$1 + 12) & 2) != 0 ) goto label$728;
		{
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 8) & 128) != 0 ) goto label$730;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 8) & 2048) == 0 ) goto label$732;
				{
					ERRREPORT( 316, 0, (uint8*)0u );
				}
				goto label$731;
				label$732:;
				{
					ERRREPORTWARN( 13, (uint8*)0u, 1, (uint8*)0u );
				}
				label$731:;
			}
			label$730:;
			label$729:;
		}
		label$728:;
		label$727:;
	}
	label$726:;
	label$725:;
	ASTPROCEND( 0 );
	if( *(int32*)((uint8*)STK$1 + 20) == 0 ) goto label$734;
	{
		SYMBNESTEND( -1 );
	}
	label$734:;
	label$733:;
	CCOMPSTMTPOP( STK$1 );
	label$707:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static void HPARAMERROR( struct $8FBSYMBOL* PROC$1, int32 ARGNUM$1, int32 ERRNUM$1 )
{
	label$45:;
	ERRREPORTPARAM( PROC$1, ARGNUM$1, (uint8*)0u, ERRNUM$1 );
	label$46:;
}

static void HCHECKPROTOTYPE( struct $8FBSYMBOL* PROTO$1, struct $8FBSYMBOL* PROC$1, uint8* PALIAS$1, int32 PROC_DTYPE$1, struct $8FBSYMBOL* PROC_SUBTYPE$1, int32 MODE$1 )
{
	label$47:;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* PROTO_PARAM$1;
	int32 PARAMS$1;
	int32 PROTO_PARAMS$1;
	int32 I$1;
	if( (-(PALIAS$1 != (uint8*)0u) & -((*(int32*)((uint8*)PROTO$1 + 12) & 512) != 0)) == 0 ) goto label$50;
	{
		int32 vr$6 = fb_StrCompare( (void*)PALIAS$1, 0, *(void**)((uint8*)PROTO$1 + 20), 0 );
		if( vr$6 == 0 ) goto label$52;
		{
			FBSTRING TMP$96$3;
			FBSTRING TMP$97$3;
			FBSTRING TMP$98$3;
			__builtin_memset( &TMP$98$3, 0, 12 );
			__builtin_memset( &TMP$96$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$96$3, (void*)"\x22", 2, (void*)PALIAS$1, 0 );
			__builtin_memset( &TMP$97$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$97$3, (void*)vr$10, -1, (void*)"\x22", 2 );
			fb_StrAssign( (void*)&TMP$98$3, -1, (void*)vr$13, -1, 0 );
			ERRREPORTEX( 311, (uint8*)*(uint8**)&TMP$98$3, 0, 1, (uint8*)0u );
			fb_StrDelete( (FBSTRING*)&TMP$98$3 );
		}
		label$52:;
		label$51:;
	}
	label$50:;
	label$49:;
	if( (-(*(int32*)((uint8*)PROTO$1 + 28) != PROC_DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 32) != PROC_SUBTYPE$1)) == 0 ) goto label$54;
	{
		ERRREPORT( 40, -1, (uint8*)0u );
	}
	label$54:;
	label$53:;
	if( (-(*(int32*)((uint8*)PROC$1 + 96) != 2) & -(*(int32*)((uint8*)PROTO$1 + 96) != *(int32*)((uint8*)PROC$1 + 96))) == 0 ) goto label$56;
	{
		ERRREPORTWARN( 28, (uint8*)0u, 1, (uint8*)0u );
	}
	label$56:;
	label$55:;
	if( *(int32*)((uint8*)PROTO$1 + 84) == MODE$1 ) goto label$58;
	{
		ERRREPORT( 41, -1, (uint8*)0u );
	}
	label$58:;
	label$57:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$60;
	{
		PARAMS$1 = PARAMS$1 + -1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$60:;
	label$59:;
	PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 76);
	PROTO_PARAMS$1 = (int32)*(int16*)((uint8*)PROTO$1 + 68);
	if( (*(int32*)((uint8*)PROTO$1 + 8) & 2) == 0 ) goto label$62;
	{
		PROTO_PARAMS$1 = PROTO_PARAMS$1 + -1;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 176);
	}
	label$62:;
	label$61:;
	if( PROTO_PARAMS$1 == PARAMS$1 ) goto label$64;
	{
		ERRREPORT( 1, -1, (uint8*)0u );
	}
	label$64:;
	label$63:;
	I$1 = 1;
	label$65:;
	if( (-(I$1 <= PROTO_PARAMS$1) & -(I$1 <= PARAMS$1)) == 0 ) goto label$66;
	{
		int32 TMP$99$2;
		int32 DTYPE$2;
		DTYPE$2 = *(int32*)((uint8*)PROTO_PARAM$1 + 28);
		if( (DTYPE$2 & 480) == 0 ) goto label$67;
		TMP$99$2 = 24;
		goto label$735;
		label$67:;
		TMP$99$2 = DTYPE$2 & 31;
		label$735:;
		if( TMP$99$2 != 0 ) goto label$69;
		{
			*($11FB_DATATYPE*)((uint8*)PROTO_PARAM$1 + 28) = *($11FB_DATATYPE*)((uint8*)PARAM$1 + 28);
			*(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
		}
		goto label$68;
		label$69:;
		{
			if( *(int32*)((uint8*)PARAM$1 + 28) == DTYPE$2 ) goto label$71;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			goto label$70;
			label$71:;
			if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 32) ) goto label$72;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			label$72:;
			label$70:;
		}
		label$68:;
		if( *(int32*)((uint8*)PARAM$1 + 56) == *(int32*)((uint8*)PROTO_PARAM$1 + 56) ) goto label$74;
		{
			HPARAMERROR( PROC$1, I$1, 58 );
		}
		label$74:;
		label$73:;
		if( *(int32*)((uint8*)PARAM$1 + 56) != 3 ) goto label$76;
		{
			if( *(int32*)((uint8*)PARAM$1 + 68) == *(int32*)((uint8*)PROTO_PARAM$1 + 68) ) goto label$78;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			label$78:;
			label$77:;
		}
		label$76:;
		label$75:;
		if( *(int32*)((uint8*)PARAM$1 + 56) == 4 ) goto label$80;
		{
			SYMBSETNAME( PROTO_PARAM$1, *(uint8**)((uint8*)PARAM$1 + 16) );
			if( (*(int32*)((uint8*)PARAM$1 + 4) & 1048576) == 0 ) goto label$82;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 4) = *(int32*)((uint8*)PROTO_PARAM$1 + 4) | 1048576;
			}
			goto label$81;
			label$82:;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 4) = *(int32*)((uint8*)PROTO_PARAM$1 + 4) & -1048577;
			}
			label$81:;
		}
		label$80:;
		label$79:;
		if( (-(*(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 64) != (struct $7ASTNODE*)0u) & -(*(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u)) == 0 ) goto label$84;
		{
			int32 vr$77 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 64), *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) );
			if( vr$77 != 0 ) goto label$86;
			{
				ERRREPORTPARAMWARN( PROC$1, I$1, (uint8*)0u, 36 );
			}
			label$86:;
			label$85:;
		}
		label$84:;
		label$83:;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 176);
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		I$1 = I$1 + 1;
	}
	goto label$65;
	label$66:;
	label$48:;
}

static void HCHECKATTRIBS( struct $8FBSYMBOL* PROTO$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$87:;
	if( -((PATTRIB$1 & 2048) != 0) == -((*(int32*)((uint8*)PROTO$1 + 8) & 2048) != 0) ) goto label$90;
	{
		ERRREPORT( 20, -1, (uint8*)0u );
		if( (*(int32*)((uint8*)PROTO$1 + 8) & 2048) == 0 ) goto label$92;
		{
			PATTRIB$1 = PATTRIB$1 | 2048;
		}
		goto label$91;
		label$92:;
		{
			PATTRIB$1 = PATTRIB$1 & -2049;
		}
		label$91:;
	}
	label$90:;
	label$89:;
	if( ((ATTRIB$1 & 2) & -((*(int32*)((uint8*)PROTO$1 + 4) & 2) == 0)) == 0 ) goto label$94;
	{
		ERRREPORT( 217, 0, (uint8*)0u );
	}
	label$94:;
	label$93:;
	if( ((ATTRIB$1 & 2048) & -((*(int32*)((uint8*)PROTO$1 + 4) & 2048) == 0)) == 0 ) goto label$96;
	{
		ERRREPORT( 218, 0, (uint8*)0u );
	}
	label$96:;
	label$95:;
	if( ((PATTRIB$1 & 512) & -((*(int32*)((uint8*)PROTO$1 + 8) & 512) == 0)) == 0 ) goto label$98;
	{
		ERRREPORT( 220, 0, (uint8*)0u );
	}
	goto label$97;
	label$98:;
	if( ((PATTRIB$1 & 256) & -((*(int32*)((uint8*)PROTO$1 + 8) & 256) == 0)) == 0 ) goto label$99;
	{
		ERRREPORT( 219, 0, (uint8*)0u );
	}
	label$99:;
	label$97:;
	*($13FB_SYMBATTRIB*)((uint8*)PROTO$1 + 4) = *(int32*)((uint8*)PROTO$1 + 4) | ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROTO$1 + 8) = *(int32*)((uint8*)PROTO$1 + 8) | PATTRIB$1;
	label$88:;
}

static int32 HCHECKIDTOKEN( int32 HAS_PARENT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$100:;
	fb$result$1 = 0;
	{
		uint32 TMP$100$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$100$2 = (uint32)vr$1;
		goto label$103;
		label$104:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 888) & 524288) == 0 ) goto label$106;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$108;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4120) <= 0 ) goto label$110;
					{
						ERRREPORT( 90, 0, (uint8*)0u );
					}
					label$110:;
					label$109:;
				}
				label$108:;
				label$107:;
			}
			label$106:;
			label$105:;
		}
		goto label$102;
		label$111:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$113;
			{
				if( (~HAS_PARENT$1 | -(*(uint32*)((uint8*)&PARSER$ + 96) > 0u)) == 0 ) goto label$115;
				{
					ERRREPORT( 4, 0, (uint8*)0u );
					goto label$101;
				}
				label$115:;
				label$114:;
			}
			label$113:;
			label$112:;
		}
		goto label$102;
		label$116:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$118;
			{
				ERRREPORT( 4, 0, (uint8*)0u );
				goto label$101;
			}
			label$118:;
			label$117:;
		}
		goto label$102;
		label$119:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			goto label$101;
		}
		goto label$102;
		label$103:;
		static const void* tmp$142[6] = {
			&&label$104,
			&&label$116,
			&&label$111,
			&&label$119,
			&&label$119,
			&&label$116,
		};
		if( TMP$100$2 > 5u ) goto label$119;
		goto *tmp$142[TMP$100$2 - 0u];
		label$102:;
	}
	fb$result$1 = -1;
	label$101:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int32* DTYPE$1, int32 IS_SUB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$120:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$123;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4116);
	}
	goto label$122;
	label$123:;
	{
		uint8* vr$3 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$4 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$3, 0, 0 );
		CHAIN_$1 = vr$4;
	}
	label$122:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$125;
	{
		struct $8FBSYMBOL* vr$5 = SYMBFINDBYCLASS( CHAIN_$1, 3 );
		SYM$1 = vr$5;
	}
	goto label$124;
	label$125:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0u;
	}
	label$124:;
	int32 vr$7 = HCHECKIDTOKEN( -(PARENT$1 != (struct $8FBSYMBOL*)0u) );
	if( vr$7 != 0 ) goto label$127;
	{
		uint8* vr$8 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)ID$1, 0, (void*)vr$8, 0, 0 );
		*DTYPE$1 = -2147483648u;
		HSKIPUNTIL( 40, 0, 0, 0 );
		goto label$121;
	}
	label$127:;
	label$126:;
	uint8* vr$10 = LEXGETTEXT(  );
	fb_StrAssign( (void*)ID$1, 0, (void*)vr$10, 0, 0 );
	*DTYPE$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8);
	if( IS_SUB$1 == 0 ) goto label$129;
	{
		if( *DTYPE$1 == -2147483648u ) goto label$131;
		{
			ERRREPORT( 25, 0, (uint8*)0u );
			*DTYPE$1 = -2147483648u;
			*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) = -2147483648u;
			*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4124) = 0;
		}
		label$131:;
		label$130:;
	}
	label$129:;
	label$128:;
	LEXSKIPTOKEN( 4096 );
	fb$result$1 = SYM$1;
	label$121:;
	return fb$result$1;
}

static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$198:;
	uint8* vr$0 = LEXGETTEXT(  );
	FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)vr$0 );
	FBSTRING* vr$2 = fb_StrUcase2( (FBSTRING*)vr$1, 0 );
	int32 vr$3 = fb_StrCompare( (void*)vr$2, -1, (void*)"NAKED", 6 );
	if( vr$3 != 0 ) goto label$201;
	{
		LEXSKIPTOKEN( 2048 );
		*PATTRIB$1 = *(int32*)PATTRIB$1 | 128;
	}
	label$201:;
	label$200:;
	label$199:;
}

static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* PROC$1 )
{
	label$202:;
	SYMBPROCCHECKOVERRIDDEN( PROC$1, 0 );
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 257 ) goto label$205;
	{
		goto label$203;
	}
	label$205:;
	label$204:;
	uint8* vr$1 = LEXGETTEXT(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
	FBSTRING* vr$3 = fb_StrUcase2( (FBSTRING*)vr$2, 0 );
	int32 vr$4 = fb_StrCompare( (void*)vr$3, -1, (void*)"OVERRIDE", 9 );
	if( vr$4 != 0 ) goto label$207;
	{
		struct $8FBSYMBOL* vr$5 = SYMBPROCGETOVERRIDDEN( PROC$1 );
		if( vr$5 != (struct $8FBSYMBOL*)0u ) goto label$209;
		{
			ERRREPORT( 223, 0, (uint8*)0u );
		}
		label$209:;
		label$208:;
		LEXSKIPTOKEN( 2048 );
	}
	label$207:;
	label$206:;
	label$203:;
}

static void HCHECKATTRIB( int32* ATTRIB$1, int32 ATTR$1, int32 ERRMSG$1 )
{
	label$216:;
	if( (*ATTRIB$1 & ATTR$1) == 0 ) goto label$219;
	{
		ERRREPORT( ERRMSG$1, -1, (uint8*)0u );
		*ATTRIB$1 = *ATTRIB$1 & ~ATTR$1;
	}
	label$219:;
	label$218:;
	label$217:;
}

static int32 HCHECKOPOVLPARAMS( struct $8FBSYMBOL* PARENT$1, int32 OP$1, struct $8FBSYMBOL* PROC$1 )
{
	int32 TMP$117$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$220:;
	int32 FOUND_MISMATCH$1;
	int32 IS_METHOD$1;
	IS_METHOD$1 = -((*(int32*)((uint8*)PROC$1 + 8) & 2) != 0);
	fb$result$1 = 0;
	int32 MIN_PARAMS$1;
	int32 MAX_PARAMS$1;
	{
		uint32 TMP$114$2;
		TMP$114$2 = *(uint32*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31)));
		goto label$223;
		label$224:;
		{
			int32 TMP$115$3;
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$225;
			TMP$115$3 = 0;
			goto label$736;
			label$225:;
			TMP$115$3 = 1;
			label$736:;
			MIN_PARAMS$1 = TMP$115$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$222;
		label$226:;
		{
			MIN_PARAMS$1 = 0;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$222;
		label$227:;
		{
			MIN_PARAMS$1 = 1;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$222;
		label$228:;
		{
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$230;
			{
				MIN_PARAMS$1 = 0;
				MAX_PARAMS$1 = 1;
				if( OP$1 != 26 ) goto label$232;
				{
					MIN_PARAMS$1 = MIN_PARAMS$1 + 1;
					MAX_PARAMS$1 = MAX_PARAMS$1 + 1;
				}
				label$232:;
				label$231:;
			}
			goto label$229;
			label$230:;
			{
				MIN_PARAMS$1 = 2;
				MAX_PARAMS$1 = MIN_PARAMS$1;
			}
			label$229:;
		}
		goto label$222;
		label$233:;
		{
			int32 TMP$116$3;
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$234;
			TMP$116$3 = 1;
			goto label$737;
			label$234:;
			TMP$116$3 = 2;
			label$737:;
			MIN_PARAMS$1 = TMP$116$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$222;
		label$223:;
		static const void* tmp$143[13] = {
			&&label$227,
			&&label$233,
			&&label$224,
			&&label$226,
			&&label$224,
			&&label$233,
			&&label$233,
			&&label$233,
			&&label$233,
			&&label$233,
			&&label$227,
			&&label$233,
			&&label$228,
		};
		if( (TMP$114$2 - 2u) > 12u ) goto label$233;
		goto *tmp$143[TMP$114$2 - 2u];
		label$222:;
	}
	int32 PARAMS$1;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	int32 REAL_PARAMS$1;
	if( IS_METHOD$1 == 0 ) goto label$235;
	TMP$117$1 = 1;
	goto label$738;
	label$235:;
	TMP$117$1 = 0;
	label$738:;
	REAL_PARAMS$1 = PARAMS$1 - TMP$117$1;
	if( (-(REAL_PARAMS$1 < MIN_PARAMS$1) | -(REAL_PARAMS$1 > MAX_PARAMS$1)) == 0 ) goto label$237;
	{
		ERRREPORT( 1, -1, (uint8*)0u );
		goto label$221;
	}
	label$237:;
	label$236:;
	if( PARAMS$1 <= 0 ) goto label$239;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
		if( *(int32*)((uint8*)PARAM$2 + 56) != 4 ) goto label$241;
		{
			HPARAMERROR( PROC$1, 1, 143 );
			goto label$221;
		}
		label$241:;
		label$240:;
		if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 64) == (struct $7ASTNODE*)0u ) goto label$243;
		{
			HPARAMERROR( PROC$1, 1, 145 );
			goto label$221;
		}
		label$243:;
		label$242:;
		{
			uint32 TMP$118$3;
			TMP$118$3 = *(uint32*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31)));
			goto label$245;
			label$246:;
			{
				{
					int32 TMP$119$5;
					TMP$119$5 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
					if( TMP$119$5 == 20 ) goto label$249;
					label$250:;
					if( TMP$119$5 != 10 ) goto label$248;
					label$249:;
					{
					}
					goto label$247;
					label$248:;
					{
						HPARAMERROR( PROC$1, 1, 137 );
						goto label$221;
					}
					label$251:;
					label$247:;
				}
			}
			goto label$244;
			label$252:;
			{
				if( PARAMS$1 <= 1 ) goto label$254;
				{
					struct $8FBSYMBOL* NXTPARAM$5;
					NXTPARAM$5 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
					if( *(int32*)((uint8*)NXTPARAM$5 + 56) != 4 ) goto label$256;
					{
						HPARAMERROR( PROC$1, 2, 143 );
						goto label$221;
					}
					label$256:;
					label$255:;
					if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$5 + 64) == (struct $7ASTNODE*)0u ) goto label$258;
					{
						HPARAMERROR( PROC$1, 2, 145 );
						goto label$221;
					}
					label$258:;
					label$257:;
					{
						int32 TMP$120$6;
						TMP$120$6 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
						if( TMP$120$6 == 20 ) goto label$261;
						label$262:;
						if( TMP$120$6 != 10 ) goto label$260;
						label$261:;
						{
						}
						goto label$259;
						label$260:;
						{
							{
								int32 TMP$121$8;
								TMP$121$8 = *(int32*)((uint8*)NXTPARAM$5 + 28) & 511;
								if( TMP$121$8 == 20 ) goto label$266;
								label$267:;
								if( TMP$121$8 != 10 ) goto label$265;
								label$266:;
								{
								}
								goto label$264;
								label$265:;
								{
									HPARAMERROR( PROC$1, 2, 137 );
									goto label$221;
								}
								label$268:;
								label$264:;
							}
						}
						label$263:;
						label$259:;
					}
				}
				label$254:;
				label$253:;
			}
			goto label$244;
			label$269:;
			{
				{
					if( OP$1 == 18 ) goto label$272;
					label$273:;
					if( OP$1 != 19 ) goto label$271;
					label$272:;
					{
						int32 TMP$122$6;
						if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$274;
						TMP$122$6 = 24;
						goto label$739;
						label$274:;
						TMP$122$6 = (*(int32*)((uint8*)PARAM$2 + 28) & 511) & 31;
						label$739:;
						if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$122$6 * 28)) != 0 ) goto label$276;
						{
							int32 IS_INTEGER$7;
							IS_INTEGER$7 = -1;
							if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$278;
							{
								IS_INTEGER$7 = 0;
							}
							label$278:;
							label$277:;
							{
								int32 TMP$123$8;
								TMP$123$8 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
								if( TMP$123$8 == 4 ) goto label$281;
								label$282:;
								if( TMP$123$8 != 7 ) goto label$280;
								label$281:;
								{
									IS_INTEGER$7 = 0;
								}
								label$280:;
								label$279:;
							}
							if( IS_INTEGER$7 != 0 ) goto label$284;
							{
								HPARAMERROR( PROC$1, 1, 235 );
								goto label$221;
							}
							label$284:;
							label$283:;
						}
						goto label$275;
						label$276:;
						{
							HPARAMERROR( PROC$1, 1, 235 );
							goto label$221;
						}
						label$275:;
					}
					goto label$270;
					label$271:;
					{
						int32 TMP$124$6;
						if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$286;
						TMP$124$6 = 24;
						goto label$740;
						label$286:;
						TMP$124$6 = (*(int32*)((uint8*)PARAM$2 + 28) & 511) & 31;
						label$740:;
						if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$124$6 * 28)) != 0 ) goto label$288;
						{
							if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) != 0 ) goto label$290;
							{
								HPARAMERROR( PROC$1, 1, 236 );
								goto label$221;
							}
							label$290:;
							label$289:;
						}
						goto label$287;
						label$288:;
						{
							HPARAMERROR( PROC$1, 1, 236 );
							goto label$221;
						}
						label$287:;
					}
					label$285:;
					label$270:;
				}
			}
			goto label$244;
			label$291:;
			{
				{
					uint32 TMP$125$5;
					TMP$125$5 = (uint32)OP$1;
					goto label$293;
					label$294:;
					{
						if( PARAMS$1 <= 1 ) goto label$296;
						{
							struct $8FBSYMBOL* NXTPARAM$7;
							NXTPARAM$7 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
							if( *(int32*)((uint8*)NXTPARAM$7 + 56) != 4 ) goto label$298;
							{
								HPARAMERROR( PROC$1, 2, 143 );
								goto label$221;
							}
							label$298:;
							label$297:;
							if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$7 + 64) == (struct $7ASTNODE*)0u ) goto label$300;
							{
								HPARAMERROR( PROC$1, 2, 145 );
								goto label$221;
							}
							label$300:;
							label$299:;
							{
								int32 TMP$126$8;
								TMP$126$8 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
								if( TMP$126$8 == 20 ) goto label$303;
								label$304:;
								if( TMP$126$8 != 10 ) goto label$302;
								label$303:;
								{
								}
								goto label$301;
								label$302:;
								{
									{
										int32 TMP$127$10;
										TMP$127$10 = *(int32*)((uint8*)NXTPARAM$7 + 28) & 511;
										if( TMP$127$10 == 20 ) goto label$308;
										label$309:;
										if( TMP$127$10 != 10 ) goto label$307;
										label$308:;
										{
										}
										goto label$306;
										label$307:;
										{
											HPARAMERROR( PROC$1, 2, 137 );
											goto label$221;
										}
										label$310:;
										label$306:;
									}
								}
								label$305:;
								label$301:;
							}
						}
						label$296:;
						label$295:;
					}
					goto label$292;
					label$311:;
					{
						if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$313;
						{
							if( PARAMS$1 <= 1 ) goto label$315;
							{
								if( IS_METHOD$1 == 0 ) goto label$317;
								{
									PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
								}
								label$317:;
								label$316:;
								if( (-(PARAM$2 == (struct $8FBSYMBOL*)0u) | -(PARENT$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$319;
								{
									HPARAMERROR( PROC$1, 1, 142 );
									goto label$221;
								}
								label$319:;
								label$318:;
								if( *(int32*)((uint8*)PARAM$2 + 56) != 4 ) goto label$321;
								{
									HPARAMERROR( PROC$1, 1, 143 );
									goto label$221;
								}
								label$321:;
								label$320:;
								if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 64) == (struct $7ASTNODE*)0u ) goto label$323;
								{
									HPARAMERROR( PROC$1, 1, 145 );
									goto label$221;
								}
								label$323:;
								label$322:;
								if( (-((*(int32*)((uint8*)PARAM$2 + 28) & 511) != (*(int32*)((uint8*)PARENT$1 + 28) & 511)) | -(*(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 32) != PARENT$1)) == 0 ) goto label$325;
								{
									HPARAMERROR( PROC$1, 1, 142 );
									goto label$221;
								}
								label$325:;
								label$324:;
							}
							label$315:;
							label$314:;
						}
						label$313:;
						label$312:;
					}
					goto label$292;
					label$326:;
					{
					}
					goto label$292;
					label$293:;
					static const void* tmp$144[27] = {
						&&label$311,
						&&label$311,
						&&label$311,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$326,
						&&label$294,
						&&label$294,
						&&label$294,
						&&label$294,
						&&label$294,
						&&label$294,
					};
					if( (TMP$125$5 - 24u) > 26u ) goto label$326;
					goto *tmp$144[TMP$125$5 - 24u];
					label$292:;
				}
			}
			goto label$244;
			label$245:;
			static const void* tmp$145[12] = {
				&&label$252,
				&&label$246,
				&&label$246,
				&&label$246,
				&&label$244,
				&&label$244,
				&&label$244,
				&&label$244,
				&&label$244,
				&&label$269,
				&&label$244,
				&&label$291,
			};
			if( (TMP$118$3 - 3u) > 11u ) goto label$244;
			goto *tmp$145[TMP$118$3 - 3u];
			label$244:;
		}
	}
	label$239:;
	label$238:;
	FOUND_MISMATCH$1 = 0;
	{
		$13AST_NODECLASS TMP$128$2;
		TMP$128$2 = *($13AST_NODECLASS*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31)));
		if( TMP$128$2 != 5 ) goto label$328;
		label$329:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) != PARENT$1 ) goto label$331;
			{
				ERRREPORT( 140, -1, (uint8*)0u );
				goto label$221;
			}
			label$331:;
			label$330:;
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
		}
		goto label$327;
		label$328:;
		if( TMP$128$2 != 4 ) goto label$332;
		label$333:;
		{
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
		}
		goto label$327;
		label$332:;
		if( TMP$128$2 != 2 ) goto label$334;
		label$335:;
		{
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
		}
		goto label$327;
		label$334:;
		if( TMP$128$2 != 6 ) goto label$336;
		label$337:;
		{
			{
				if( OP$1 != 22 ) goto label$339;
				label$340:;
				{
					FOUND_MISMATCH$1 = -(((*(int32*)((uint8*)PROC$1 + 28) & 511) & 480) == 0);
				}
				goto label$338;
				label$339:;
				if( OP$1 != 77 ) goto label$341;
				label$342:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 20);
				}
				goto label$338;
				label$341:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
				}
				label$343:;
				label$338:;
			}
		}
		goto label$327;
		label$336:;
		if( TMP$128$2 != 12 ) goto label$344;
		label$345:;
		{
			{
				if( OP$1 == 18 ) goto label$348;
				label$349:;
				if( OP$1 != 19 ) goto label$347;
				label$348:;
				{
					FOUND_MISMATCH$1 = -(((*(int32*)((uint8*)PROC$1 + 28) & 511) & 480) == 0);
				}
				goto label$346;
				label$347:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
				}
				label$350:;
				label$346:;
			}
		}
		goto label$327;
		label$344:;
		if( TMP$128$2 != 3 ) goto label$351;
		label$352:;
		{
			{
				uint32 TMP$129$4;
				TMP$129$4 = (uint32)OP$1;
				goto label$354;
				label$355:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 8);
				}
				goto label$353;
				label$356:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
				}
				goto label$353;
				label$357:;
				{
					if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$359;
					{
						FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
					}
					goto label$358;
					label$359:;
					{
						FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
					}
					label$358:;
				}
				goto label$353;
				label$354:;
				static const void* tmp$146[28] = {
					&&label$356,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$355,
					&&label$355,
					&&label$355,
					&&label$355,
					&&label$355,
					&&label$355,
				};
				if( (TMP$129$4 - 23u) > 27u ) goto label$357;
				goto *tmp$146[TMP$129$4 - 23u];
				label$353:;
			}
		}
		goto label$327;
		label$351:;
		if( TMP$128$2 != 14 ) goto label$360;
		label$361:;
		{
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$363;
			{
				if( OP$1 != 26 ) goto label$365;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 8);
				}
				goto label$364;
				label$365:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
				}
				label$364:;
			}
			goto label$362;
			label$363:;
			{
				FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
			}
			label$362:;
		}
		label$360:;
		label$327:;
	}
	if( FOUND_MISMATCH$1 == 0 ) goto label$367;
	{
		ERRREPORT( 141, -1, (uint8*)0u );
		goto label$221;
	}
	label$367:;
	label$366:;
	fb$result$1 = -1;
	label$221:;
	return fb$result$1;
}

static int32 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1, int32 OPTIONS$1 )
{
	int32 TMP$130$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$368:;
	fb$result$1 = 0;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	if( (OPTIONS$1 & 1) == 0 ) goto label$371;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$371:;
	label$370:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$373;
	{
		goto label$369;
	}
	label$373:;
	label$372:;
	if( (*(int32*)((uint8*)PARAM$1 + 28) & 511) == 20 ) goto label$375;
	{
		goto label$369;
	}
	label$375:;
	label$374:;
	if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == PARENT$1 ) goto label$377;
	{
		goto label$369;
	}
	label$377:;
	label$376:;
	if( *(int32*)((uint8*)PARAM$1 + 56) == 1 ) goto label$379;
	{
		goto label$369;
	}
	label$379:;
	label$378:;
	if( ((*(int32*)((uint8*)PARAM$1 + 28) & 511) & 480) == 0 ) goto label$380;
	TMP$130$1 = 24;
	goto label$741;
	label$380:;
	TMP$130$1 = (*(int32*)((uint8*)PARAM$1 + 28) & 511) & 31;
	label$741:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$130$1 * 28)) != 0 ) goto label$382;
	{
		if( ((*(int32*)((uint8*)PARAM$1 + 28) & 511) & 480) == 0 ) goto label$384;
		{
			goto label$369;
		}
		label$384:;
		label$383:;
	}
	label$382:;
	label$381:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	label$385:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$386;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u ) goto label$388;
		{
			goto label$369;
		}
		label$388:;
		label$387:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$385;
	label$386:;
	fb$result$1 = -1;
	label$369:;
	return fb$result$1;
}

static void HCHECKPROPPARAMS( struct $8FBSYMBOL* PROC$1, int32 IS_GET$1 )
{
	label$389:;
	int32 MIN_PARAMS$1;
	int32 MAX_PARAMS$1;
	int32 I$1;
	struct $8FBSYMBOL* PARAM$1;
	if( IS_GET$1 == 0 ) goto label$392;
	{
		MIN_PARAMS$1 = 0;
		MAX_PARAMS$1 = 1;
	}
	goto label$391;
	label$392:;
	{
		MIN_PARAMS$1 = 1;
		MAX_PARAMS$1 = 2;
	}
	label$391:;
	if( (-((int32)*(int16*)((uint8*)PROC$1 + 68) < (MIN_PARAMS$1 + 1)) | -((int32)*(int16*)((uint8*)PROC$1 + 68) > (MAX_PARAMS$1 + 1))) == 0 ) goto label$394;
	{
		$9FB_ERRMSG TMP$131$2;
		if( IS_GET$1 == 0 ) goto label$395;
		TMP$131$2 = 190;
		goto label$742;
		label$395:;
		TMP$131$2 = 191;
		label$742:;
		ERRREPORT( TMP$131$2, -1, (uint8*)0u );
	}
	label$394:;
	label$393:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	I$1 = 0;
	label$396:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$397;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) == (struct $7ASTNODE*)0u ) goto label$399;
		{
			HPARAMERROR( PROC$1, I$1 + 1, 145 );
		}
		label$399:;
		label$398:;
		I$1 = I$1 + 1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$396;
	label$397:;
	label$390:;
}

static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL* PARENT$1, int32 IS_INDEXED$1, int32 IS_GET$1 )
{
	label$400:;
	if( IS_INDEXED$1 == 0 ) goto label$403;
	{
		if( IS_GET$1 != 0 ) goto label$405;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 1024;
		}
		goto label$404;
		label$405:;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 512;
		}
		label$404:;
	}
	goto label$402;
	label$403:;
	{
		if( IS_GET$1 != 0 ) goto label$407;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 256;
		}
		goto label$406;
		label$407:;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 128;
		}
		label$406:;
	}
	label$402:;
	label$401:;
}
