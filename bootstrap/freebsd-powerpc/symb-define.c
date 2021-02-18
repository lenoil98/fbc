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
typedef FBSTRING* (*tmp$27)( void );
typedef int32 $15FB_DEFINE_FLAGS;
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
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
typedef int32 $7FB_LANG;
typedef int32 $10FB_BACKEND;
typedef int32 $12FB_ASMSYNTAX;
struct $21SYMB_DEF_UNIQUEID_ELM;
struct $21SYMB_DEF_UNIQUEID_ELM {
	uint8* NAME;
	struct $21SYMB_DEF_UNIQUEID_ELM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $21SYMB_DEF_UNIQUEID_ELM ) == 8 );
struct $23SYMB_DEF_UNIQUEID_STACK {
	struct $21SYMB_DEF_UNIQUEID_ELM* TOP;
};
__FB_STATIC_ASSERT( sizeof( struct $23SYMB_DEF_UNIQUEID_STACK ) == 4 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 120 );
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
typedef int32 $9FB_ERRMSG;
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
void* malloc( uint32 );
void* calloc( uint32, uint32 );
void free( void* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
uint32* fb_WstrMid( uint32*, int32, int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
FBSTRING* fb_Time( void );
FBSTRING* fb_Date( void );
static void fb_ctor__symbzdefine( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
int32 FBIS64BIT( void );
int32 FBGETCPUFAMILY( void );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int32, int32, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int32, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRASSIGNW( uint8**, uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint32* HREPLACEW( uint32*, uint32*, uint32* );
void HSPLITSTR( FBSTRING*, FBSTRING*, struct $7FBARRAYI8FBSTRINGE* );
int32 HSTR2TOK( uint8*, struct $7FBARRAYI8FBSTRINGE* );
FBSTRING* FBGETINPUTFILEPARENTDIR( void );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
void LEXINIT( int32, int32 );
void LEXPUSHCTX( void );
void LEXPOPCTX( void );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
double fb_Now( void );
FBSTRING* fb_StrFormat( double, FBSTRING* );
static FBSTRING* HDEFFILE_CB( void );
static FBSTRING* HDEFPATH_CB( void );
static FBSTRING* HDEFFUNCTION_CB( void );
static FBSTRING* HDEFLINE_CB( void );
static FBSTRING* HDEFDATE_CB( void );
static FBSTRING* HDEFDATEISO_CB( void );
static FBSTRING* HDEFTIME_CB( void );
static FBSTRING* HDEFMULTITHREAD_CB( void );
static FBSTRING* HDEFOPTBYVAL_CB( void );
static FBSTRING* HDEFOPTDYNAMIC_CB( void );
static FBSTRING* HDEFOPTESCAPE_CB( void );
static FBSTRING* HDEFOPTEXPLICIT_CB( void );
static FBSTRING* HDEFOPTPRIVATE_CB( void );
static FBSTRING* HDEFOPTGOSUB_CB( void );
static FBSTRING* HDEFOUTEXE_CB( void );
static FBSTRING* HDEFOUTLIB_CB( void );
static FBSTRING* HDEFOUTDLL_CB( void );
static FBSTRING* HDEFOUTOBJ_CB( void );
static FBSTRING* HDEFDEBUG_CB( void );
static FBSTRING* HDEFERR_CB( void );
static FBSTRING* HDEFLANG_CB( void );
static FBSTRING* HDEFBACKEND_CB( void );
static FBSTRING* HDEFFPU_CB( void );
static FBSTRING* HDEFFPMODE_CB( void );
static FBSTRING* HDEFGCC_CB( void );
static FBSTRING* HDEFASM_CB( void );
static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB*, int32 );
static uint32* HMACRO_GETARGW( struct $11LEXPP_ARGTB*, int32 );
static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFJOINW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB*, int32* );
static uint32* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB*, int32* );
static FBSTRING* HDEFEVAL_CB( struct $11LEXPP_ARGTB*, int32* );
static void HRESETDEFHASH( void );
static void HDELDEFINEPARAMS( struct $8FBSYMBOL* );
static void HDELDEFINETOKENS( struct $8FBSYMBOL* );
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
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int32 LEVEL;
	int32 SKIPPING;
	int32 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 232 );
extern struct $6PP_CTX PP$;
struct $7SYMBDEF {
	uint8* NAME;
	uint8* VALUE;
	int32 FLAGS;
	tmp$27 PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBDEF ) == 16 );
static struct $7SYMBDEF DEFTB$[35] = { { (uint8*)"__FB_VERSION__", (uint8*)"1.08.0", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_DATE__", (uint8*)"02-17-2021", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_DATE_ISO__", (uint8*)"2021-02-17", 1, (tmp$27)0u }, { (uint8*)"__FB_VER_MAJOR__", (uint8*)"1", 0, (tmp$27)0u }, { (uint8*)"__FB_VER_MINOR__", (uint8*)"08", 0, (tmp$27)0u }, { (uint8*)"__FB_VER_PATCH__", (uint8*)"0", 0, (tmp$27)0u }, { (uint8*)"__FB_SIGNATURE__", (uint8*)"FreeBASIC 1.08.0", 1, (tmp$27)0u }, { (uint8*)"__FB_BUILD_SHA1__", (uint8*)"", 1, (tmp$27)0u }, { (uint8*)"__FB_MT__", (uint8*)0u, 0, (tmp$27)&HDEFMULTITHREAD_CB }, { (uint8*)"__FILE__", (uint8*)0u, 1, (tmp$27)&HDEFFILE_CB }, { (uint8*)"__FILE_NQ__", (uint8*)0u, 0, (tmp$27)&HDEFFILE_CB }, { (uint8*)"__FUNCTION__", (uint8*)0u, 1, (tmp$27)&HDEFFUNCTION_CB }, { (uint8*)"__FUNCTION_NQ__", (uint8*)0u, 0, (tmp$27)&HDEFFUNCTION_CB }, { (uint8*)"__LINE__", (uint8*)0u, 0, (tmp$27)&HDEFLINE_CB }, { (uint8*)"__DATE__", (uint8*)0u, 1, (tmp$27)&HDEFDATE_CB }, { (uint8*)"__DATE_ISO__", (uint8*)0u, 1, (tmp$27)&HDEFDATEISO_CB }, { (uint8*)"__TIME__", (uint8*)0u, 1, (tmp$27)&HDEFTIME_CB }, { (uint8*)"__PATH__", (uint8*)0u, 1, (tmp$27)&HDEFPATH_CB }, { (uint8*)"__FB_OPTION_BYVAL__", (uint8*)0u, 0, (tmp$27)&HDEFOPTBYVAL_CB }, { (uint8*)"__FB_OPTION_DYNAMIC__", (uint8*)0u, 0, (tmp$27)&HDEFOPTDYNAMIC_CB }, { (uint8*)"__FB_OPTION_ESCAPE__", (uint8*)0u, 0, (tmp$27)&HDEFOPTESCAPE_CB }, { (uint8*)"__FB_OPTION_EXPLICIT__", (uint8*)0u, 0, (tmp$27)&HDEFOPTEXPLICIT_CB }, { (uint8*)"__FB_OPTION_PRIVATE__", (uint8*)0u, 0, (tmp$27)&HDEFOPTPRIVATE_CB }, { (uint8*)"__FB_OPTION_GOSUB__", (uint8*)0u, 0, (tmp$27)&HDEFOPTGOSUB_CB }, { (uint8*)"__FB_OUT_EXE__", (uint8*)0u, 0, (tmp$27)&HDEFOUTEXE_CB }, { (uint8*)"__FB_OUT_LIB__", (uint8*)0u, 0, (tmp$27)&HDEFOUTLIB_CB }, { (uint8*)"__FB_OUT_DLL__", (uint8*)0u, 0, (tmp$27)&HDEFOUTDLL_CB }, { (uint8*)"__FB_OUT_OBJ__", (uint8*)0u, 0, (tmp$27)&HDEFOUTOBJ_CB }, { (uint8*)"__FB_DEBUG__", (uint8*)0u, 0, (tmp$27)&HDEFDEBUG_CB }, { (uint8*)"__FB_ERR__", (uint8*)0u, 0, (tmp$27)&HDEFERR_CB }, { (uint8*)"__FB_LANG__", (uint8*)0u, 1, (tmp$27)&HDEFLANG_CB }, { (uint8*)"__FB_BACKEND__", (uint8*)0u, 1, (tmp$27)&HDEFBACKEND_CB }, { (uint8*)"__FB_FPU__", (uint8*)0u, 1, (tmp$27)&HDEFFPU_CB }, { (uint8*)"__FB_FPMODE__", (uint8*)0u, 1, (tmp$27)&HDEFFPMODE_CB }, { (uint8*)"__FB_GCC__", (uint8*)0u, 0, (tmp$27)&HDEFGCC_CB } };
struct $9SYMBMACRO {
	uint8* NAME;
	$15FB_DEFINE_FLAGS FLAGS;
	tmp$28 PROCZ;
	tmp$29 PROCW;
	int32 NPARAMS;
	uint8* PARAMS[5];
};
__FB_STATIC_ASSERT( sizeof( struct $9SYMBMACRO ) == 40 );
static struct $9SYMBMACRO MACROTB$[11] = { { (uint8*)"__FB_UNIQUEID_PUSH__", 0, (tmp$28)&HDEFUNIQUEIDPUSH_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID__", 0, (tmp$28)&HDEFUNIQUEID_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID_POP__", 0, (tmp$28)&HDEFUNIQUEIDPOP_CB, (tmp$29)0u, 1, { (uint8*)"ID" } }, { (uint8*)"__FB_ARG_COUNT__", 4, (tmp$28)&HDEFARGCOUNT_CB, (tmp$29)0u, 1, { (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_EXTRACT__", 4, (tmp$28)&HDEFARGEXTRACT_CB, (tmp$29)0u, 2, { (uint8*)"ARGNUM", (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_LEFTOF__", 4, (tmp$28)&HDEFARGLEFT_CB, (tmp$29)0u, 3, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_ARG_RIGHTOF__", 4, (tmp$28)&HDEFARGRIGHT_CB, (tmp$29)0u, 3, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_JOIN__", 0, (tmp$28)&HDEFJOINZ_CB, (tmp$29)&HDEFJOINW_CB, 2, { (uint8*)"L", (uint8*)"R" } }, { (uint8*)"__FB_QUOTE__", 0, (tmp$28)&HDEFQUOTEZ_CB, (tmp$29)&HDEFQUOTEW_CB, 1, { (uint8*)"ARG" } }, { (uint8*)"__FB_UNQUOTE__", 0, (tmp$28)&HDEFUNQUOTEZ_CB, (tmp$29)&HDEFUNQUOTEW_CB, 1, { (uint8*)"ARG" } }, { (uint8*)"__FB_EVAL__", 0, (tmp$28)&HDEFEVAL_CB, (tmp$29)0u, 1, { (uint8*)"ARG" } } };

void SYMBDEFINEINIT( int32 ISMAIN$1 )
{
	FBSTRING TMP$197$1;
	FBSTRING TMP$198$1;
	FBSTRING TMP$199$1;
	label$286:;
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	uint8* DEF$1;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), 500, 12, 6 );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98728), 1000, 16, 6 );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 98760), 16, -1 );
	{
		int32 I$2;
		I$2 = 0;
		label$291:;
		{
			fb_StrAssign( (void*)&VALUE$1, -1, *(void**)(((uint8*)DEFTB$ + (I$2 << (4 & 31))) + 4), 0, 0 );
			if( *(uint8**)(((uint8*)DEFTB$ + (I$2 << (4 & 31))) + 4) == (uint8*)0u ) goto label$293;
			{
				if( (*(int32*)(((uint8*)DEFTB$ + (I$2 << (4 & 31))) + 8) & 1) == 0 ) goto label$295;
				{
					FBSTRING TMP$193$5;
					FBSTRING TMP$194$5;
					__builtin_memset( &TMP$193$5, 0, 12 );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$193$5, (void*)"\x22", 2, (void*)&VALUE$1, -1 );
					__builtin_memset( &TMP$194$5, 0, 12 );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$194$5, (void*)vr$12, -1, (void*)"\x22", 2 );
					fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$15, -1, 0 );
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
			int32 vr$20 = fb_StrLen( (void*)&VALUE$1, -1 );
			SYMBADDDEFINE( *(uint8**)((uint8*)DEFTB$ + (I$2 << (4 & 31))), (uint8*)*(uint8**)&VALUE$1, vr$20, 0, *(tmp$27*)(((uint8*)DEFTB$ + (I$2 << (4 & 31))) + 12), *($15FB_DEFINE_FLAGS*)(((uint8*)DEFTB$ + (I$2 << (4 & 31))) + 8) );
		}
		label$289:;
		I$2 = I$2 + 1;
		label$288:;
		if( I$2 <= 34 ) goto label$291;
		label$290:;
	}
	__builtin_memset( &TMP$199$1, 0, 12 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)&ENV$ + 244) );
	FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)vr$24, 0 );
	__builtin_memset( &TMP$197$1, 0, 12 );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$197$1, (void*)"__FB_", 6, (void*)vr$25, -1 );
	__builtin_memset( &TMP$198$1, 0, 12 );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$198$1, (void*)vr$28, -1, (void*)"__", 3 );
	fb_StrAssign( (void*)&TMP$199$1, -1, (void*)vr$31, -1, 0 );
	SYMBADDDEFINE( (uint8*)*(uint8**)&TMP$199$1, (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$199$1 );
	if( *(int32*)((uint8*)&ENV$ + 108) != 11 ) goto label$297;
	{
		SYMBADDDEFINE( (uint8*)"__FB_LINUX__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$297:;
	label$296:;
	if( (*(int32*)((uint8*)&ENV$ + 260) & 1) == 0 ) goto label$299;
	{
		SYMBADDDEFINE( (uint8*)"__FB_UNIX__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	goto label$298;
	label$299:;
	{
		SYMBADDDEFINE( (uint8*)"__FB_PCOS__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$298:;
	int32 vr$35 = FBIS64BIT(  );
	if( vr$35 == 0 ) goto label$301;
	{
		SYMBADDDEFINE( (uint8*)"__FB_64BIT__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$301:;
	label$300:;
	{
		int32 TMP$204$2;
		int32 vr$36 = FBGETCPUFAMILY(  );
		TMP$204$2 = vr$36;
		if( TMP$204$2 == 2 ) goto label$304;
		label$305:;
		if( TMP$204$2 != 3 ) goto label$303;
		label$304:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_ARM__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
		}
		goto label$302;
		label$303:;
		if( TMP$204$2 == 0 ) goto label$307;
		label$308:;
		if( TMP$204$2 != 1 ) goto label$306;
		label$307:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_X86__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
			SYMBADDDEFINE( (uint8*)"__FB_ASM__", (uint8*)0u, 0, 0, (tmp$27)&HDEFASM_CB, 1 );
		}
		goto label$302;
		label$306:;
		if( TMP$204$2 == 4 ) goto label$310;
		label$311:;
		if( TMP$204$2 != 5 ) goto label$309;
		label$310:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_PPC__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
		}
		label$309:;
		label$302:;
	}
	if( ISMAIN$1 == 0 ) goto label$313;
	{
		SYMBADDDEFINE( (uint8*)"__FB_MAIN__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$313:;
	label$312:;
	if( *(int32*)((uint8*)&ENV$ + 116) < 1 ) goto label$315;
	{
		SYMBADDDEFINE( (uint8*)"__FB_SSE__", (uint8*)0u, 0, 0, (tmp$27)0u, 0 );
	}
	label$315:;
	label$314:;
	FBSTRING* vr$37 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 124) );
	fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$37, -1, 0 );
	int32 vr$40 = fb_StrLen( (void*)&VALUE$1, -1 );
	SYMBADDDEFINE( (uint8*)"__FB_VECTORIZE__", (uint8*)*(uint8**)&VALUE$1, vr$40, 0, (tmp$27)0u, 0 );
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 98776), 32, 0 );
	{
		int32 I$2;
		I$2 = 0;
		label$319:;
		{
			struct $11FB_DEFPARAM* FIRSTPARAM$3;
			struct $11FB_DEFPARAM* vr$43 = SYMBADDDEFINEPARAM( (struct $11FB_DEFPARAM*)0u, *(uint8**)(((uint8*)MACROTB$ + (I$2 * 40)) + 20) );
			FIRSTPARAM$3 = vr$43;
			struct $11FB_DEFPARAM* LASTPARAM$3;
			LASTPARAM$3 = FIRSTPARAM$3;
			{
				int32 J$4;
				J$4 = 1;
				int32 TMP$212$4;
				TMP$212$4 = *(int32*)(((uint8*)MACROTB$ + (I$2 * 40)) + 16) + -1;
				goto label$320;
				label$323:;
				{
					struct $11FB_DEFPARAM* vr$50 = SYMBADDDEFINEPARAM( LASTPARAM$3, *(uint8**)((uint8*)((uint8*)((uint8*)MACROTB$ + (I$2 * 40)) + (J$4 << (2 & 31))) + 20) );
					LASTPARAM$3 = vr$50;
				}
				label$321:;
				J$4 = J$4 + 1;
				label$320:;
				if( J$4 <= TMP$212$4 ) goto label$323;
				label$322:;
			}
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$56 = SYMBADDDEFINEMACRO( *(uint8**)((uint8*)MACROTB$ + (I$2 * 40)), (struct $9FB_DEFTOK*)0u, *(int32*)(((uint8*)MACROTB$ + (I$2 * 40)) + 16), FIRSTPARAM$3, *(int32*)(((uint8*)MACROTB$ + (I$2 * 40)) + 4) | 8 );
			SYM$3 = vr$56;
			*(tmp$28*)((uint8*)SYM$3 + 76) = *(tmp$28*)(((uint8*)MACROTB$ + (I$2 * 40)) + 8);
			*(tmp$29*)((uint8*)SYM$3 + 80) = *(tmp$29*)(((uint8*)MACROTB$ + (I$2 * 40)) + 12);
		}
		label$317:;
		I$2 = I$2 + 1;
		label$316:;
		if( I$2 <= 10 ) goto label$319;
		label$318:;
	}
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	label$287:;
}

void SYMBDEFINEEND( void )
{
	label$324:;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98776) );
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98760) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98696) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98728) );
	label$325:;
}

struct $8FBSYMBOL* SYMBADDDEFINE( uint8* SYMBOL$1, uint8* TEXT$1, int32 LGT$1, int32 ISARGLESS$1, tmp$27 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$326:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, SYMBOL$1, (uint8*)0u, 4, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$329;
	{
		goto label$327;
	}
	label$329:;
	label$328:;
	void* vr$4 = XALLOCATE( LGT$1 + 1 );
	*(uint8**)((uint8*)SYM$1 + 64) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 64), 0, (void*)TEXT$1, 0, 0 );
	*(int64*)((uint8*)SYM$1 + 40) = (int64)LGT$1;
	*(int32*)((uint8*)SYM$1 + 56) = 0;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)SYM$1 + 68) = ISARGLESS$1;
	*(tmp$27*)((uint8*)SYM$1 + 76) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$327:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEW( uint8* SYMBOL$1, uint32* TEXT$1, int32 LGT$1, int32 ISARGLESS$1, tmp$27 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$330:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, (uint8*)SYMBOL$1, (uint8*)0u, 7, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$333;
	{
		goto label$331;
	}
	label$333:;
	label$332:;
	void* vr$5 = XALLOCATE( (LGT$1 << (2 & 31)) + 4 );
	*(uint32**)((uint8*)SYM$1 + 64) = (uint32*)vr$5;
	fb_WstrAssign( *(uint32**)((uint8*)SYM$1 + 64), 0, (uint32*)TEXT$1 );
	*(int64*)((uint8*)SYM$1 + 40) = (int64)LGT$1;
	*(int32*)((uint8*)SYM$1 + 56) = 0;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)SYM$1 + 68) = ISARGLESS$1;
	*(tmp$27*)((uint8*)SYM$1 + 76) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$331:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8* SYMBOL$1, struct $9FB_DEFTOK* TOKHEAD$1, int32 PARAMS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$334:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420), 5, SYMBOL$1, (uint8*)0u, -2147483648u, (struct $8FBSYMBOL*)0u, 0, 0 );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$337;
	{
		goto label$335;
	}
	label$337:;
	label$336:;
	*(struct $9FB_DEFTOK**)((uint8*)SYM$1 + 64) = TOKHEAD$1;
	*(int32*)((uint8*)SYM$1 + 56) = PARAMS$1;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 60) = PARAMHEAD$1;
	*(int32*)((uint8*)SYM$1 + 68) = 0;
	*(tmp$28*)((uint8*)SYM$1 + 76) = (tmp$28)0u;
	*(tmp$29*)((uint8*)SYM$1 + 80) = (tmp$29)0u;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 72) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$335:;
	return fb$result$1;
}

struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM* LASTPARAM$1, uint8* ID$1 )
{
	struct $11FB_DEFPARAM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$344:;
	static struct $11FB_DEFPARAM* PARAM$1;
	static uint32 INDEX$1;
	fb$result$1 = (struct $11FB_DEFPARAM*)0u;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696) );
	PARAM$1 = (struct $11FB_DEFPARAM*)vr$2;
	if( LASTPARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$347;
	{
		*(struct $11FB_DEFPARAM**)((uint8*)LASTPARAM$1 + 8) = PARAM$1;
	}
	goto label$346;
	label$347:;
	{
		if( *(int32*)((uint8*)&SYMB$ + 98772) <= 0 ) goto label$349;
		{
			HRESETDEFHASH(  );
		}
		label$349:;
		label$348:;
	}
	label$346:;
	int32 vr$4 = fb_StrLen( (void*)ID$1, 0 );
	void* vr$6 = XALLOCATE( vr$4 + 1 );
	*(uint8**)PARAM$1 = (uint8*)vr$6;
	HUCASE( ID$1, *(uint8**)PARAM$1 );
	uint32 vr$10 = HASHHASH( (uint8*)*(uint8**)PARAM$1 );
	INDEX$1 = vr$10;
	void* vr$13 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98776), (uint8*)*(uint8**)PARAM$1, INDEX$1 );
	if( vr$13 == (void*)0u ) goto label$351;
	{
		if( *(uint8**)PARAM$1 == (uint8*)0u ) goto label$353;
		{
			free( *(void**)PARAM$1 );
		}
		label$353:;
		label$352:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), (void*)PARAM$1 );
		fb$result$1 = (struct $11FB_DEFPARAM*)0u;
		goto label$345;
	}
	label$351:;
	label$350:;
	struct $8HASHITEM* vr$19 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 98776), (uint8*)*(uint8**)PARAM$1, (void*)PARAM$1, INDEX$1 );
	*(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (*(int32*)((uint8*)&SYMB$ + 98772) << (3 & 31))) + 92) = vr$19;
	*(uint32*)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (*(int32*)((uint8*)&SYMB$ + 98772) << (3 & 31))) + 96) = INDEX$1;
	*(int32*)((uint8*)PARAM$1 + 4) = *(int32*)((uint8*)&SYMB$ + 98772);
	*(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8) = (struct $11FB_DEFPARAM*)0u;
	*(int32*)((uint8*)&SYMB$ + 98772) = *(int32*)((uint8*)&SYMB$ + 98772) + 1;
	fb$result$1 = PARAM$1;
	label$345:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK* LASTTOK$1, $14FB_DEFTOK_TYPE DTYPE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$354:;
	static struct $9FB_DEFTOK* T$1;
	fb$result$1 = (struct $9FB_DEFTOK*)0u;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98728) );
	T$1 = (struct $9FB_DEFTOK*)vr$2;
	if( LASTTOK$1 == (struct $9FB_DEFTOK*)0u ) goto label$357;
	{
		*(struct $9FB_DEFTOK**)((uint8*)LASTTOK$1 + 12) = T$1;
	}
	label$357:;
	label$356:;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 8) = LASTTOK$1;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 12) = (struct $9FB_DEFTOK*)0u;
	*($14FB_DEFTOK_TYPE*)T$1 = DTYPE$1;
	{
		uint32 TMP$214$2;
		TMP$214$2 = (uint32)DTYPE$1;
		goto label$359;
		label$360:;
		{
			*(uint8**)((uint8*)T$1 + 4) = (uint8*)0u;
		}
		goto label$358;
		label$361:;
		{
			*(uint32**)((uint8*)T$1 + 4) = (uint32*)0u;
		}
		goto label$358;
		label$359:;
		static const void* tmp$215[2] = {
			&&label$360,
			&&label$361,
		};
		if( (TMP$214$2 - 2u) > 1u ) goto label$358;
		goto *tmp$215[TMP$214$2 - 2u];
		label$358:;
	}
	fb$result$1 = T$1;
	label$355:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* TOK$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$362:;
	if( *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8) == (struct $9FB_DEFTOK*)0u ) goto label$365;
	{
		*(struct $9FB_DEFTOK**)((uint8*)*(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8) + 12) = (struct $9FB_DEFTOK*)0u;
		fb$result$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 8);
	}
	goto label$364;
	label$365:;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0u;
	}
	label$364:;
	{
		$14FB_DEFTOK_TYPE TMP$216$2;
		TMP$216$2 = *($14FB_DEFTOK_TYPE*)TOK$1;
		if( TMP$216$2 != 2 ) goto label$367;
		label$368:;
		{
			if( *(uint8**)((uint8*)TOK$1 + 4) == (uint8*)0u ) goto label$370;
			{
				free( *(void**)((uint8*)TOK$1 + 4) );
			}
			label$370:;
			label$369:;
		}
		goto label$366;
		label$367:;
		if( TMP$216$2 != 3 ) goto label$371;
		label$372:;
		{
			if( *(uint32**)((uint8*)TOK$1 + 4) == (uint32*)0u ) goto label$374;
			{
				free( *(void**)((uint8*)TOK$1 + 4) );
			}
			label$374:;
			label$373:;
		}
		label$371:;
		label$366:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98728), (void*)TOK$1 );
	label$363:;
	return fb$result$1;
}

int32 SYMBDELDEFINE( struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$385:;
	fb$result$1 = 0;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$388;
	{
		goto label$386;
	}
	label$388:;
	label$387:;
	if( *(int32*)((uint8*)S$1 + 56) != 0 ) goto label$390;
	{
		if( (*(int32*)((uint8*)S$1 + 28) & 511) == 7 ) goto label$392;
		{
			if( *(uint8**)((uint8*)S$1 + 64) == (uint8*)0u ) goto label$394;
			{
				free( *(void**)((uint8*)S$1 + 64) );
			}
			label$394:;
			label$393:;
		}
		goto label$391;
		label$392:;
		{
			if( *(uint32**)((uint8*)S$1 + 64) == (uint32*)0u ) goto label$396;
			{
				free( *(void**)((uint8*)S$1 + 64) );
			}
			label$396:;
			label$395:;
		}
		label$391:;
	}
	goto label$389;
	label$390:;
	{
		HDELDEFINETOKENS( S$1 );
	}
	label$389:;
	HDELDEFINEPARAMS( S$1 );
	SYMBFREESYMBOL( S$1 );
	fb$result$1 = -1;
	label$386:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__symbzdefine( void )
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

static FBSTRING* HDEFFILE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$10:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)((uint8*)&ENV$ + 280), 261, 0 );
	label$11:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFPATH_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$12:;
	FBSTRING* vr$1 = FBGETINPUTFILEPARENTDIR(  );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$13:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFUNCTION_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$14:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 12) & 4096) == 0 ) goto label$17;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"__FB_MAINPROC__", 16, 0 );
	}
	goto label$16;
	label$17:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 12) & 8192) == 0 ) goto label$18;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)"__FB_MODLEVELPROC__", 20, 0 );
	}
	goto label$16;
	label$18:;
	{
		uint8* vr$7 = SYMBGETFULLPROCNAME( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) );
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$7, 0, 0 );
	}
	label$16:;
	label$15:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static FBSTRING* HDEFLINE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$19:;
	FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$20:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$21:;
	FBSTRING* vr$1 = fb_Date(  );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$22:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFDATEISO_CB( void )
{
	FBSTRING TMP$96$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$23:;
	__builtin_memset( &TMP$96$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$96$1, -1, (void*)"yyyy-mm-dd", 11, 0 );
	double vr$4 = fb_Now(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$96$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$5, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$96$1 );
	label$24:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFTIME_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$25:;
	FBSTRING* vr$1 = fb_Time(  );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$26:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFMULTITHREAD_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$27:;
	FBSTRING* vr$1 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 216) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$28:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFOPTBYVAL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$29:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 928) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$30:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTDYNAMIC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$31:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 944) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$32:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTESCAPE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$33:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 940) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$34:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTEXPLICIT_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$35:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 932) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$36:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTPRIVATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$37:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 936) == 0) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$38:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTGOSUB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$39:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 948) == -1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$40:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTEXE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$43:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 0) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$44:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTLIB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$45:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$46:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTDLL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$47:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 2) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$48:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTOBJ_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$49:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 96) == 3) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$50:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDEBUG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$51:;
	FBSTRING* vr$1 = fb_IntToStr( *(int32*)((uint8*)&ENV$ + 144) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$52:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFERR_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$53:;
	int32 RES$1;
	RES$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 156) == 0 ) goto label$56;
	{
		RES$1 = 1;
	}
	label$56:;
	label$55:;
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$58;
	{
		RES$1 = RES$1 | 2;
	}
	label$58:;
	label$57:;
	if( *(int32*)((uint8*)&ENV$ + 164) == 0 ) goto label$60;
	{
		RES$1 = RES$1 | 4;
	}
	label$60:;
	label$59:;
	if( *(int32*)((uint8*)&ENV$ + 172) == 0 ) goto label$62;
	{
		RES$1 = RES$1 | 8;
	}
	label$62:;
	label$61:;
	if( *(int32*)((uint8*)&ENV$ + 176) == 0 ) goto label$64;
	{
		RES$1 = RES$1 | 16;
	}
	label$64:;
	label$63:;
	if( *(int32*)((uint8*)&ENV$ + 152) == 0 ) goto label$66;
	{
		RES$1 = RES$1 | 32;
	}
	label$66:;
	label$65:;
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$68;
	{
		RES$1 = RES$1 | 64;
	}
	label$68:;
	label$67:;
	if( *(int32*)((uint8*)&ENV$ + 144) == 0 ) goto label$70;
	{
		RES$1 = RES$1 | 128;
	}
	label$70:;
	label$69:;
	if( *(int32*)((uint8*)&ENV$ + 168) == 0 ) goto label$72;
	{
		RES$1 = RES$1 | 256;
	}
	label$72:;
	label$71:;
	FBSTRING* vr$9 = fb_IntToStr( RES$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$9, -1, 0 );
	label$54:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* HDEFLANG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$73:;
	FBSTRING* vr$1 = FBGETLANGNAME( *($7FB_LANG*)((uint8*)&ENV$ + 136) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$74:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFBACKEND_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$75:;
	FBSTRING* vr$1 = FBGETBACKENDNAME( *($10FB_BACKEND*)((uint8*)&ENV$ + 104) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$1, -1, 0 );
	label$76:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFPU_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$77:;
	{
		int32 TMP$97$2;
		int32 vr$1 = FBGETOPTION( 5 );
		TMP$97$2 = vr$1;
		if( TMP$97$2 != 0 ) goto label$80;
		label$81:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"x87", 4, 0 );
			goto label$78;
		}
		goto label$79;
		label$80:;
		if( TMP$97$2 != 1 ) goto label$82;
		label$83:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"sse", 4, 0 );
			goto label$78;
		}
		goto label$79;
		label$82:;
		{
		}
		label$84:;
		label$79:;
	}
	label$78:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFFPMODE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$85:;
	{
		int32 TMP$100$2;
		int32 vr$1 = FBGETOPTION( 6 );
		TMP$100$2 = vr$1;
		if( TMP$100$2 != 0 ) goto label$88;
		label$89:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"precise", 8, 0 );
			goto label$86;
		}
		goto label$87;
		label$88:;
		if( TMP$100$2 != 1 ) goto label$90;
		label$91:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)"fast", 5, 0 );
			goto label$86;
		}
		goto label$87;
		label$90:;
		{
		}
		label$92:;
		label$87:;
	}
	label$86:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFGCC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$93:;
	FBSTRING* vr$2 = fb_IntToStr( -(*(int32*)((uint8*)&ENV$ + 104) == 1) );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
	label$94:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFASM_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$95:;
	{
		$12FB_ASMSYNTAX TMP$103$2;
		TMP$103$2 = *($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 132);
		if( TMP$103$2 != 0 ) goto label$98;
		label$99:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"intel", 6, 0 );
		}
		goto label$97;
		label$98:;
		if( TMP$103$2 != 1 ) goto label$100;
		label$101:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"att", 4, 0 );
		}
		label$100:;
		label$97:;
	}
	label$96:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB* ARGTB$1, int32 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$102:;
	uint8* RES$1;
	RES$1 = (uint8*)0u;
	if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$105;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint8*)0u ) goto label$107;
		{
			fb$result$1 = (uint8*)0u;
			goto label$103;
		}
		label$107:;
		label$106:;
		ZSTRASSIGN( &RES$1, DT$2 );
	}
	goto label$104;
	label$105:;
	{
		uint32* DT$2;
		DT$2 = *(uint32**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint32*)0u ) goto label$109;
		{
			fb$result$1 = (uint8*)0u;
			goto label$103;
		}
		label$109:;
		label$108:;
		ZSTRASSIGNW( &RES$1, DT$2 );
	}
	label$104:;
	fb$result$1 = RES$1;
	label$103:;
	return fb$result$1;
}

static uint32* HMACRO_GETARGW( struct $11LEXPP_ARGTB* ARGTB$1, int32 NUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$110:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( *(int32*)((uint8*)&ENV$ + 552) != 0 ) goto label$113;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint8*)0u ) goto label$115;
		{
			fb$result$1 = (uint32*)0u;
			goto label$111;
		}
		label$115:;
		label$114:;
		DWSTRCONCATASSIGNA( &RES$1, DT$2 );
	}
	goto label$112;
	label$113:;
	{
		uint32* DT$2;
		DT$2 = *(uint32**)((uint8*)ARGTB$1 + (NUM$1 * 12));
		if( DT$2 != (uint32*)0u ) goto label$117;
		{
			fb$result$1 = (uint32*)0u;
			goto label$111;
		}
		label$117:;
		label$116:;
		DWSTRCONCATASSIGN( &RES$1, DT$2 );
	}
	label$112:;
	fb$result$1 = *(uint32**)&RES$1;
	label$111:;
	return fb$result$1;
}

static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$118:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$121;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$119;
	}
	label$121:;
	label$120:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$123;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$119;
	}
	label$123:;
	label$122:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( STK$1 != (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$125;
	{
		void* vr$7 = calloc( 4u, 1u );
		STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$7;
		HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 98760), (uint8*)ID$1, (void*)STK$1, 4294967295u );
	}
	goto label$124;
	label$125:;
	{
		if( ID$1 == (uint8*)0u ) goto label$127;
		{
			free( (void*)ID$1 );
		}
		label$127:;
		label$126:;
	}
	label$124:;
	struct $21SYMB_DEF_UNIQUEID_ELM* ELM$1;
	void* vr$9 = malloc( 8u );
	ELM$1 = (struct $21SYMB_DEF_UNIQUEID_ELM*)vr$9;
	uint8* UID$1;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)1 );
	UID$1 = vr$10;
	int32 vr$11 = fb_StrLen( (void*)UID$1, 0 );
	void* vr$13 = malloc( (uint32)(vr$11 + 1) );
	*(uint8**)ELM$1 = (uint8*)vr$13;
	fb_StrAssign( *(void**)ELM$1, 0, (void*)UID$1, 0, 0 );
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)ELM$1 + 4) = *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1;
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = ELM$1;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$119:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$128:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$131;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$129;
	}
	label$131:;
	label$130:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$133;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$129;
	}
	label$133:;
	label$132:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0u ) goto label$135;
	{
		free( (void*)ID$1 );
	}
	label$135:;
	label$134:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$137;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0u ) goto label$139;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1, 0, 0 );
			goto label$129;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$129:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$140:;
	if( *(int32*)((uint8*)&PP$ + 220) == 0 ) goto label$143;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$141;
	}
	label$143:;
	label$142:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0u ) goto label$145;
	{
		*ERRNUM$1 = 1;
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
		goto label$141;
	}
	label$145:;
	label$144:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 98760), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0u ) goto label$147;
	{
		free( (void*)ID$1 );
	}
	label$147:;
	label$146:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0u ) goto label$149;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0u ) goto label$151;
		{
			free( *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 );
			*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = *(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 + 4);
		}
		goto label$150;
		label$151:;
		{
			*ERRNUM$1 = 17;
		}
		label$150:;
	}
	goto label$148;
	label$149:;
	{
		*ERRNUM$1 = 17;
	}
	label$148:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	label$141:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$152:;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0u ) goto label$155;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)((uint8*)ARGTB$1 + 384) );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		goto label$153;
	}
	label$155:;
	label$154:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"0", 2, 0 );
	label$153:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$156:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* NUMSTR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	NUMSTR$1 = vr$2;
	if( NUMSTR$1 == (uint8*)0u ) goto label$159;
	{
		int32 NUMARGLEN$2;
		int32 vr$3 = fb_StrLen( (void*)NUMSTR$1, 0 );
		NUMARGLEN$2 = vr$3;
		int32 I$2;
		__builtin_memset( &I$2, 0, 4 );
		uint32 INDEX$2;
		INDEX$2 = 0u;
		uint32 ZEROVAL$2;
		ZEROVAL$2 = 48u;
		{
			I$2 = 0;
			int32 TMP$106$3;
			TMP$106$3 = NUMARGLEN$2 + -1;
			goto label$160;
			label$163:;
			{
				int32 TMP$108$4;
				if( (uint32)(int32)*(uint8*)((uint8*)NUMSTR$1 + I$2) > 57u ) goto label$164;
				TMP$108$4 = -((uint32)(int32)*(uint8*)((uint8*)NUMSTR$1 + I$2) >= 48u);
				goto label$397;
				label$164:;
				TMP$108$4 = 0;
				label$397:;
				if( ~TMP$108$4 == 0 ) goto label$166;
				{
					goto label$162;
				}
				label$166:;
				label$165:;
				INDEX$2 = INDEX$2 * 10u;
				INDEX$2 = (INDEX$2 + (uint32)(int32)*(uint8*)((uint8*)NUMSTR$1 + I$2)) - ZEROVAL$2;
			}
			label$161:;
			I$2 = I$2 + 1;
			label$160:;
			if( I$2 <= TMP$106$3 ) goto label$163;
			label$162:;
		}
		if( I$2 != NUMARGLEN$2 ) goto label$168;
		{
			uint32 NUMVARARGS$3;
			NUMVARARGS$3 = (uint32)(*(int32*)((uint8*)ARGTB$1 + 384) + -1);
			if( INDEX$2 >= NUMVARARGS$3 ) goto label$170;
			{
				FBSTRING TMP$109$4;
				FBSTRING TMP$111$4;
				uint8* ARGSTRING$4;
				uint8* vr$20 = HMACRO_GETARGZ( ARGTB$1, 1 );
				ARGSTRING$4 = vr$20;
				struct $7FBARRAYI8FBSTRINGE VARARGS$4;
				*(FBSTRING**)&VARARGS$4 = (FBSTRING*)0u;
				*(FBSTRING**)((uint8*)&VARARGS$4 + 4) = (FBSTRING*)0u;
				*(int32*)((uint8*)&VARARGS$4 + 8) = 0;
				*(int32*)((uint8*)&VARARGS$4 + 12) = 12;
				*(int32*)((uint8*)&VARARGS$4 + 16) = 0;
				*(int32*)((uint8*)&VARARGS$4 + 20) = 8;
				__builtin_memset( (void*)((uint8*)&VARARGS$4 + 24), 0, 96 );
				__builtin_memset( &TMP$111$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$111$4, -1, (void*)",", 2, 0 );
				__builtin_memset( &TMP$109$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$109$4, -1, (void*)ARGSTRING$4, 0, 0 );
				HSPLITSTR( &TMP$109$4, &TMP$111$4, &VARARGS$4 );
				fb_StrDelete( (FBSTRING*)&TMP$111$4 );
				fb_StrDelete( (FBSTRING*)&TMP$109$4 );
				fb_StrAssign( (void*)&RES$1, -1, (void*)(((int32)INDEX$2 * 12) + *(int32*)&VARARGS$4), -1, 0 );
				if( ARGSTRING$4 == (uint8*)0u ) goto label$172;
				{
					free( (void*)ARGSTRING$4 );
				}
				label$172:;
				label$171:;
				fb_ArrayStrErase( (struct $7FBARRAYIvE*)&VARARGS$4 );
			}
			label$170:;
			label$169:;
		}
		goto label$167;
		label$168:;
		{
			*ERRNUM$1 = 17;
		}
		label$167:;
		if( NUMSTR$1 == (uint8*)0u ) goto label$174;
		{
			free( (void*)NUMSTR$1 );
		}
		label$174:;
		label$173:;
	}
	goto label$158;
	label$159:;
	{
		*ERRNUM$1 = 1;
	}
	label$158:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$157;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$157:;
	FBSTRING* vr$43 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$43;
}

static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$175:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2 );
	RET$1 = vr$4;
	if( (-(ARG$1 != (uint8*)0u) & -(SEP$1 != (uint8*)0u)) == 0 ) goto label$178;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0u;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 4) = (FBSTRING*)0u;
		*(int32*)((uint8*)&TOKENS$2 + 8) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 12) = 12;
		*(int32*)((uint8*)&TOKENS$2 + 16) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 20) = 8;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 24), 0, 96 );
		int32 NUMTOKS$2;
		int32 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0 ) goto label$180;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$112$4;
				TMP$112$4 = NUMTOKS$2 + -1;
				goto label$181;
				label$184:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 12) + *(int32*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1, (void*)SEP$1, 0 );
					if( vr$16 != 0 ) goto label$186;
					{
						{
							int32 J$7;
							J$7 = 0;
							int32 TMP$113$7;
							TMP$113$7 = I$4 + -1;
							goto label$187;
							label$190:;
							{
								if( J$7 <= 0 ) goto label$192;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1, (void*)" ", 2, 0 );
								}
								label$192:;
								label$191:;
								fb_StrConcatAssign( (void*)&RES$1, -1, (void*)((J$7 * 12) + *(int32*)&TOKENS$2), -1, 0 );
							}
							label$188:;
							J$7 = J$7 + 1;
							label$187:;
							if( J$7 <= TMP$113$7 ) goto label$190;
							label$189:;
						}
						goto label$183;
					}
					label$186:;
					label$185:;
				}
				label$182:;
				I$4 = I$4 + 1;
				label$181:;
				if( I$4 <= TMP$112$4 ) goto label$184;
				label$183:;
			}
			int32 vr$26 = fb_StrLen( (void*)&RES$1, -1 );
			if( vr$26 != 0 ) goto label$194;
			{
				fb_StrAssign( (void*)&RES$1, -1, (void*)RET$1, 0, 0 );
			}
			label$194:;
			label$193:;
		}
		goto label$179;
		label$180:;
		{
			*ERRNUM$1 = 17;
		}
		label$179:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$177;
	label$178:;
	{
		*ERRNUM$1 = 1;
	}
	label$177:;
	if( RET$1 == (uint8*)0u ) goto label$196;
	{
		free( (void*)RET$1 );
	}
	label$196:;
	label$195:;
	if( SEP$1 == (uint8*)0u ) goto label$198;
	{
		free( (void*)SEP$1 );
	}
	label$198:;
	label$197:;
	if( ARG$1 == (uint8*)0u ) goto label$200;
	{
		free( (void*)ARG$1 );
	}
	label$200:;
	label$199:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$176;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$176:;
	FBSTRING* vr$36 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$36;
}

static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$201:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2 );
	RET$1 = vr$4;
	if( (-(ARG$1 != (uint8*)0u) & -(SEP$1 != (uint8*)0u)) == 0 ) goto label$204;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0u;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 4) = (FBSTRING*)0u;
		*(int32*)((uint8*)&TOKENS$2 + 8) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 12) = 12;
		*(int32*)((uint8*)&TOKENS$2 + 16) = 0;
		*(int32*)((uint8*)&TOKENS$2 + 20) = 8;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 24), 0, 96 );
		int32 NUMTOKS$2;
		int32 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0 ) goto label$206;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$115$4;
				TMP$115$4 = NUMTOKS$2 + -1;
				goto label$207;
				label$210:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 12) + *(int32*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1, (void*)SEP$1, 0 );
					if( vr$16 != 0 ) goto label$212;
					{
						{
							int32 J$7;
							J$7 = I$4 + 1;
							int32 TMP$116$7;
							TMP$116$7 = NUMTOKS$2 + -1;
							goto label$213;
							label$216:;
							{
								int32 vr$20 = fb_StrLen( (void*)&RES$1, -1 );
								if( vr$20 <= 0 ) goto label$218;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1, (void*)" ", 2, 0 );
								}
								label$218:;
								label$217:;
								fb_StrConcatAssign( (void*)&RES$1, -1, (void*)((J$7 * 12) + *(int32*)&TOKENS$2), -1, 0 );
							}
							label$214:;
							J$7 = J$7 + 1;
							label$213:;
							if( J$7 <= TMP$116$7 ) goto label$216;
							label$215:;
						}
						goto label$209;
					}
					label$212:;
					label$211:;
				}
				label$208:;
				I$4 = I$4 + 1;
				label$207:;
				if( I$4 <= TMP$115$4 ) goto label$210;
				label$209:;
			}
			int32 vr$29 = fb_StrLen( (void*)&RES$1, -1 );
			if( vr$29 != 0 ) goto label$220;
			{
				fb_StrAssign( (void*)&RES$1, -1, (void*)RET$1, 0, 0 );
			}
			label$220:;
			label$219:;
		}
		goto label$205;
		label$206:;
		{
			*ERRNUM$1 = 17;
		}
		label$205:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$203;
	label$204:;
	{
		*ERRNUM$1 = 1;
	}
	label$203:;
	if( RET$1 == (uint8*)0u ) goto label$222;
	{
		free( (void*)RET$1 );
	}
	label$222:;
	label$221:;
	if( SEP$1 == (uint8*)0u ) goto label$224;
	{
		free( (void*)SEP$1 );
	}
	label$224:;
	label$223:;
	if( ARG$1 == (uint8*)0u ) goto label$226;
	{
		free( (void*)ARG$1 );
	}
	label$226:;
	label$225:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$202:;
	FBSTRING* vr$38 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$38;
}

static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$227:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	uint8* L$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0 );
	L$1 = vr$2;
	uint8* R$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1 );
	R$1 = vr$3;
	if( (-(L$1 != (uint8*)0u) & -(R$1 != (uint8*)0u)) == 0 ) goto label$230;
	{
		FBSTRING TMP$117$2;
		__builtin_memset( &TMP$117$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$117$2, (void*)L$1, 0, (void*)R$1, 0 );
		fb_StrAssign( (void*)&RES$1, -1, (void*)vr$9, -1, 0 );
	}
	goto label$229;
	label$230:;
	{
		*ERRNUM$1 = 1;
	}
	label$229:;
	if( L$1 == (uint8*)0u ) goto label$232;
	{
		free( (void*)L$1 );
	}
	label$232:;
	label$231:;
	if( R$1 == (uint8*)0u ) goto label$234;
	{
		free( (void*)R$1 );
	}
	label$234:;
	label$233:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$228:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static uint32* HDEFJOINW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$235:;
	uint32* L$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	L$1 = vr$1;
	uint32* R$1;
	uint32* vr$2 = HMACRO_GETARGW( ARGTB$1, 1 );
	R$1 = vr$2;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( (-(L$1 != (uint32*)0u) & -(R$1 != (uint32*)0u)) == 0 ) goto label$238;
	{
		DWSTRCONCATASSIGN( &RES$1, L$1 );
		DWSTRCONCATASSIGN( &RES$1, R$1 );
	}
	goto label$237;
	label$238:;
	{
		*ERRNUM$1 = 1;
	}
	label$237:;
	fb$result$1 = *(uint32**)&RES$1;
	label$236:;
	return fb$result$1;
}

static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$239:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$242;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"$\x22", 3, 0 );
		FBSTRING* vr$4 = HREPLACE( ARG$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)vr$4, -1, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"\x22", 2, 0 );
	}
	goto label$241;
	label$242:;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"\x22\x22", 3, 0 );
	}
	label$241:;
	if( ARG$1 == (uint8*)0u ) goto label$244;
	{
		free( (void*)ARG$1 );
	}
	label$244:;
	label$243:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$240:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static uint32* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$245:;
	uint32* ARG$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( ARG$1 == (uint32*)0u ) goto label$248;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"$\x00000022" );
		uint32* vr$2 = HREPLACEW( ARG$1, (uint32*)L"\x00000022", (uint32*)L"\x00000022\x00000022" );
		DWSTRCONCATASSIGN( &RES$1, vr$2 );
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022" );
	}
	goto label$247;
	label$248:;
	{
		DWSTRCONCATASSIGN( &RES$1, (uint32*)L"\x00000022\x00000022" );
	}
	label$247:;
	fb$result$1 = *(uint32**)&RES$1;
	label$246:;
	return fb$result$1;
}

static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$249:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$252;
	{
		int32 TMP$125$2;
		int32 TMP$127$2;
		int32 LENGTH$2;
		int32 vr$3 = fb_StrLen( (void*)ARG$1, 0 );
		LENGTH$2 = vr$3;
		if( LENGTH$2 < 3 ) goto label$253;
		TMP$125$2 = -(((-((uint32)(int32)*ARG$1 == 36u) & -((uint32)(int32)*(uint8*)((uint8*)ARG$1 + 1) == 34u)) & -((uint32)(int32)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1) == 34u)) != 0);
		goto label$398;
		label$253:;
		TMP$125$2 = 0;
		label$398:;
		if( TMP$125$2 == 0 ) goto label$255;
		{
			FBSTRING TMP$126$3;
			__builtin_memset( &TMP$126$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$19 = fb_StrMid( (FBSTRING*)vr$18, 3, LENGTH$2 + -3 );
			fb_StrAssign( (void*)&TMP$126$3, -1, (void*)vr$19, -1, 0 );
			FBSTRING* vr$21 = HREPLACE( (uint8*)*(uint8**)&TMP$126$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$21, -1, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$126$3 );
		}
		goto label$254;
		label$255:;
		if( LENGTH$2 < 2 ) goto label$257;
		TMP$127$2 = -((-((uint32)(int32)*ARG$1 == 34u) & -((uint32)(int32)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1) == 34u)) != 0);
		goto label$399;
		label$257:;
		TMP$127$2 = 0;
		label$399:;
		if( TMP$127$2 == 0 ) goto label$256;
		{
			FBSTRING TMP$128$3;
			__builtin_memset( &TMP$128$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$35 = fb_StrMid( (FBSTRING*)vr$34, 2, LENGTH$2 + -2 );
			fb_StrAssign( (void*)&TMP$128$3, -1, (void*)vr$35, -1, 0 );
			FBSTRING* vr$37 = HREPLACE( (uint8*)*(uint8**)&TMP$128$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$37, -1, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$128$3 );
		}
		goto label$254;
		label$256:;
		{
			fb_StrAssign( (void*)&RES$1, -1, (void*)ARG$1, 0, 0 );
		}
		label$254:;
	}
	label$252:;
	label$251:;
	if( ARG$1 == (uint8*)0u ) goto label$259;
	{
		free( (void*)ARG$1 );
	}
	label$259:;
	label$258:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$250:;
	FBSTRING* vr$45 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$45;
}

static uint32* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$260:;
	uint32* ARG$1;
	uint32* vr$1 = HMACRO_GETARGW( ARGTB$1, 0 );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint32*)0u );
	if( ARG$1 == (uint32*)0u ) goto label$263;
	{
		int32 TMP$129$2;
		int32 TMP$131$2;
		int32 LENGTH$2;
		int32 vr$2 = fb_WstrLen( (uint32*)ARG$1 );
		LENGTH$2 = vr$2;
		if( LENGTH$2 < 3 ) goto label$264;
		TMP$129$2 = -(((-(*(uint32*)ARG$1 == 36u) & -(*(uint32*)((uint8*)ARG$1 + 4) == 34u)) & -(*(uint32*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (2 & 31))) + -4) == 34u)) != 0);
		goto label$400;
		label$264:;
		TMP$129$2 = 0;
		label$400:;
		if( TMP$129$2 == 0 ) goto label$266;
		{
			uint32* TMP$130$3;
			uint32* vr$14 = fb_WstrMid( (uint32*)ARG$1, 3, LENGTH$2 + -3 );
			TMP$130$3 = vr$14;
			uint32* vr$15 = HREPLACEW( TMP$130$3, (uint32*)L"\x00000022\x00000022", (uint32*)L"\x00000022" );
			DWSTRASSIGN( &RES$1, vr$15 );
			fb_WstrDelete( (uint32*)TMP$130$3 );
		}
		goto label$265;
		label$266:;
		if( LENGTH$2 < 2 ) goto label$268;
		TMP$131$2 = -((-(*(uint32*)ARG$1 == 34u) & -(*(uint32*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (2 & 31))) + -4) == 34u)) != 0);
		goto label$401;
		label$268:;
		TMP$131$2 = 0;
		label$401:;
		if( TMP$131$2 == 0 ) goto label$267;
		{
			uint32* TMP$132$3;
			uint32* vr$24 = fb_WstrMid( (uint32*)ARG$1, 2, LENGTH$2 + -2 );
			TMP$132$3 = vr$24;
			uint32* vr$25 = HREPLACEW( TMP$132$3, (uint32*)L"\x00000022\x00000022", (uint32*)L"\x00000022" );
			DWSTRASSIGN( &RES$1, vr$25 );
			fb_WstrDelete( (uint32*)TMP$132$3 );
		}
		goto label$265;
		label$267:;
		{
			DWSTRASSIGN( &RES$1, ARG$1 );
		}
		label$265:;
	}
	label$263:;
	label$262:;
	fb$result$1 = *(uint32**)&RES$1;
	label$261:;
	return fb$result$1;
}

static FBSTRING* HDEFEVAL_CB( struct $11LEXPP_ARGTB* ARGTB$1, int32* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$269:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0 );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1, (void*)"", 1, 0 );
	if( ARG$1 == (uint8*)0u ) goto label$272;
	{
		LEXPUSHCTX(  );
		LEXINIT( 0, -1 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) + 1;
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), ARG$1 );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592);
		int32 vr$11 = fb_StrLen( (void*)ARG$1, 0 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) + vr$11;
		DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592), (uint8*)"\x0A" );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16588) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16592);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16584) + 1;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$21 = CEXPRESSION(  );
		EXPR$2 = vr$21;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0;
		if( EXPR$2 == (struct $7ASTNODE*)0u ) goto label$274;
		{
			struct $7ASTNODE* vr$22 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$22;
			if( *(int32*)EXPR$2 != 16 ) goto label$276;
			{
				FBSTRING* vr$24 = ASTCONSTFLUSHTOSTR( EXPR$2 );
				fb_StrAssign( (void*)&RES$1, -1, (void*)vr$24, -1, 0 );
				int32 vr$26 = LEXGETTOKEN( 0 );
				if( vr$26 == 257 ) goto label$278;
				{
					ERRMSG$2 = 17;
				}
				label$278:;
				label$277:;
			}
			goto label$275;
			label$276:;
			int32 vr$27 = ASTISCONSTANT( EXPR$2 );
			if( vr$27 == 0 ) goto label$279;
			{
				FBSTRING TMP$135$4;
				FBSTRING TMP$136$4;
				FBSTRING* vr$30 = HREPLACE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 12) + 56), (uint8*)"\x22", (uint8*)"\x22\x22" );
				__builtin_memset( &TMP$135$4, 0, 12 );
				FBSTRING* vr$33 = fb_StrConcat( &TMP$135$4, (void*)"\x22", 2, (void*)vr$30, -1 );
				__builtin_memset( &TMP$136$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$136$4, (void*)vr$33, -1, (void*)"\x22", 2 );
				fb_StrAssign( (void*)&RES$1, -1, (void*)vr$36, -1, 0 );
				int32 vr$38 = LEXGETTOKEN( 0 );
				if( vr$38 == 257 ) goto label$281;
				{
					ERRMSG$2 = 17;
				}
				label$281:;
				label$280:;
			}
			goto label$275;
			label$279:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11;
				fb_StrAssign( (void*)&RES$1, -1, (void*)"0", 2, 0 );
			}
			label$275:;
		}
		goto label$273;
		label$274:;
		{
			ERRMSG$2 = 17;
		}
		label$273:;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16572) + -1;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0 ) goto label$283;
		{
			ERRREPORTEX( ERRMSG$2, (uint8*)ARG$1, 0, 1, (uint8*)0u );
			HSKIPUNTIL( 257, -1, 0, 0 );
		}
		label$283:;
		label$282:;
	}
	label$272:;
	label$271:;
	if( ARG$1 == (uint8*)0u ) goto label$285;
	{
		free( (void*)ARG$1 );
	}
	label$285:;
	label$284:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$270:;
	FBSTRING* vr$47 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$47;
}

static void HRESETDEFHASH( void )
{
	label$338:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	{
		I$1 = 0;
		int32 TMP$213$2;
		TMP$213$2 = *(int32*)((uint8*)&SYMB$ + 98772) + -1;
		goto label$340;
		label$343:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 98776), *(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (I$1 << (3 & 31))) + 92), *(uint32*)((uint8*)((uint8*)((uint8*)&SYMB$ + 98696) + (I$1 << (3 & 31))) + 96) );
		}
		label$341:;
		I$1 = I$1 + 1;
		label$340:;
		if( I$1 <= TMP$213$2 ) goto label$343;
		label$342:;
	}
	*(int32*)((uint8*)&SYMB$ + 98772) = 0;
	label$339:;
}

static void HDELDEFINEPARAMS( struct $8FBSYMBOL* S$1 )
{
	label$375:;
	struct $11FB_DEFPARAM* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	struct $11FB_DEFPARAM* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 60);
	label$377:;
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0u ) goto label$378;
	{
		NXT$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 8);
		if( *(uint8**)PARAM$1 == (uint8*)0u ) goto label$380;
		{
			free( *(void**)PARAM$1 );
		}
		label$380:;
		label$379:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98696), (void*)PARAM$1 );
		PARAM$1 = NXT$1;
	}
	goto label$377;
	label$378:;
	label$376:;
}

static void HDELDEFINETOKENS( struct $8FBSYMBOL* S$1 )
{
	label$381:;
	struct $9FB_DEFTOK* TOK$1;
	__builtin_memset( &TOK$1, 0, 4 );
	struct $9FB_DEFTOK* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	TOK$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 64);
	label$383:;
	if( TOK$1 == (struct $9FB_DEFTOK*)0u ) goto label$384;
	{
		NXT$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 12);
		SYMBDELDEFINETOK( TOK$1 );
		TOK$1 = NXT$1;
	}
	goto label$383;
	label$384:;
	label$382:;
}
