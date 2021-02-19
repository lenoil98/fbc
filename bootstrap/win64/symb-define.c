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
typedef FBSTRING* (*tmp$28)( void );
typedef int64 $15FB_DEFINE_FLAGS;
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int64 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 24 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
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
typedef int64 $7FB_LANG;
typedef int64 $10FB_BACKEND;
typedef int64 $12FB_ASMSYNTAX;
struct $21SYMB_DEF_UNIQUEID_ELM;
struct $21SYMB_DEF_UNIQUEID_ELM {
	uint8* NAME;
	struct $21SYMB_DEF_UNIQUEID_ELM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $21SYMB_DEF_UNIQUEID_ELM ) == 16 );
struct $23SYMB_DEF_UNIQUEID_STACK {
	struct $21SYMB_DEF_UNIQUEID_ELM* TOP;
};
__FB_STATIC_ASSERT( sizeof( struct $23SYMB_DEF_UNIQUEID_STACK ) == 8 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 240 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 240 );
typedef int64 $9FB_ERRMSG;
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
void* malloc( uint64 );
void* calloc( uint64, uint64 );
void free( void* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_LongintToStr( int64 );
uint16* fb_StrToWstr( uint8* );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
uint16* fb_WstrMid( uint16*, int64, int64 );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint16* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
FBSTRING* fb_Time( void );
FBSTRING* fb_Date( void );
static void fb_ctor__symbzdefine( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
uint64 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint64 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint64 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
int64 FBGETOPTION( int64 );
int64 FBIS64BIT( void );
int64 FBGETCPUFAMILY( void );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTISCONSTANT( struct $7ASTNODE* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int64, int64, tmp$28, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int64, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRASSIGNW( uint8**, uint16* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint16* HREPLACEW( uint16*, uint16*, uint16* );
void HSPLITSTR( FBSTRING*, FBSTRING*, struct $7FBARRAYI8FBSTRINGE* );
int64 HSTR2TOK( uint8*, struct $7FBARRAYI8FBSTRINGE* );
FBSTRING* FBGETINPUTFILEPARENTDIR( void );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DWSTRASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint16* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
void LEXINIT( int64, int64 );
void LEXPUSHCTX( void );
void LEXPOPCTX( void );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
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
static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB*, int64 );
static uint16* HMACRO_GETARGW( struct $11LEXPP_ARGTB*, int64 );
static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFJOINW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB*, int64* );
static uint16* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB*, int64* );
static FBSTRING* HDEFEVAL_CB( struct $11LEXPP_ARGTB*, int64* );
static void HRESETDEFHASH( void );
static void HDELDEFINEPARAMS( struct $8FBSYMBOL* );
static void HDELDEFINETOKENS( struct $8FBSYMBOL* );
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
typedef int64 $13FB_COMPTARGET;
typedef int64 $10FB_CPUTYPE;
typedef int64 $10FB_FPUTYPE;
typedef int64 $9FB_FPMODE;
typedef int64 $17FB_VECTORIZELEVEL;
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
struct $7SYMBDEF {
	uint8* NAME;
	uint8* VALUE;
	int64 FLAGS;
	tmp$28 PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBDEF ) == 32 );
static struct $7SYMBDEF DEFTB$[35] = { { (uint8*)"__FB_VERSION__", (uint8*)"1.08.0", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_DATE__", (uint8*)"02-18-2021", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_DATE_ISO__", (uint8*)"2021-02-18", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_MAJOR__", (uint8*)"1", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_MINOR__", (uint8*)"08", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_VER_PATCH__", (uint8*)"0", 0ll, (tmp$28)0ull }, { (uint8*)"__FB_SIGNATURE__", (uint8*)"FreeBASIC 1.08.0", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_BUILD_SHA1__", (uint8*)"", 1ll, (tmp$28)0ull }, { (uint8*)"__FB_MT__", (uint8*)0ull, 0ll, (tmp$28)&HDEFMULTITHREAD_CB }, { (uint8*)"__FILE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFILE_CB }, { (uint8*)"__FILE_NQ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFFILE_CB }, { (uint8*)"__FUNCTION__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFUNCTION_CB }, { (uint8*)"__FUNCTION_NQ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFFUNCTION_CB }, { (uint8*)"__LINE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFLINE_CB }, { (uint8*)"__DATE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFDATE_CB }, { (uint8*)"__DATE_ISO__", (uint8*)0ull, 1ll, (tmp$28)&HDEFDATEISO_CB }, { (uint8*)"__TIME__", (uint8*)0ull, 1ll, (tmp$28)&HDEFTIME_CB }, { (uint8*)"__PATH__", (uint8*)0ull, 1ll, (tmp$28)&HDEFPATH_CB }, { (uint8*)"__FB_OPTION_BYVAL__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTBYVAL_CB }, { (uint8*)"__FB_OPTION_DYNAMIC__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTDYNAMIC_CB }, { (uint8*)"__FB_OPTION_ESCAPE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTESCAPE_CB }, { (uint8*)"__FB_OPTION_EXPLICIT__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTEXPLICIT_CB }, { (uint8*)"__FB_OPTION_PRIVATE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTPRIVATE_CB }, { (uint8*)"__FB_OPTION_GOSUB__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOPTGOSUB_CB }, { (uint8*)"__FB_OUT_EXE__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTEXE_CB }, { (uint8*)"__FB_OUT_LIB__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTLIB_CB }, { (uint8*)"__FB_OUT_DLL__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTDLL_CB }, { (uint8*)"__FB_OUT_OBJ__", (uint8*)0ull, 0ll, (tmp$28)&HDEFOUTOBJ_CB }, { (uint8*)"__FB_DEBUG__", (uint8*)0ull, 0ll, (tmp$28)&HDEFDEBUG_CB }, { (uint8*)"__FB_ERR__", (uint8*)0ull, 0ll, (tmp$28)&HDEFERR_CB }, { (uint8*)"__FB_LANG__", (uint8*)0ull, 1ll, (tmp$28)&HDEFLANG_CB }, { (uint8*)"__FB_BACKEND__", (uint8*)0ull, 1ll, (tmp$28)&HDEFBACKEND_CB }, { (uint8*)"__FB_FPU__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFPU_CB }, { (uint8*)"__FB_FPMODE__", (uint8*)0ull, 1ll, (tmp$28)&HDEFFPMODE_CB }, { (uint8*)"__FB_GCC__", (uint8*)0ull, 0ll, (tmp$28)&HDEFGCC_CB } };
struct $9SYMBMACRO {
	uint8* NAME;
	$15FB_DEFINE_FLAGS FLAGS;
	tmp$29 PROCZ;
	tmp$30 PROCW;
	int64 NPARAMS;
	uint8* PARAMS[5];
};
__FB_STATIC_ASSERT( sizeof( struct $9SYMBMACRO ) == 80 );
static struct $9SYMBMACRO MACROTB$[11] = { { (uint8*)"__FB_UNIQUEID_PUSH__", 0ll, (tmp$29)&HDEFUNIQUEIDPUSH_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID__", 0ll, (tmp$29)&HDEFUNIQUEID_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_UNIQUEID_POP__", 0ll, (tmp$29)&HDEFUNIQUEIDPOP_CB, (tmp$30)0ull, 1ll, { (uint8*)"ID" } }, { (uint8*)"__FB_ARG_COUNT__", 4ll, (tmp$29)&HDEFARGCOUNT_CB, (tmp$30)0ull, 1ll, { (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_EXTRACT__", 4ll, (tmp$29)&HDEFARGEXTRACT_CB, (tmp$30)0ull, 2ll, { (uint8*)"ARGNUM", (uint8*)"ARGS" } }, { (uint8*)"__FB_ARG_LEFTOF__", 4ll, (tmp$29)&HDEFARGLEFT_CB, (tmp$30)0ull, 3ll, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_ARG_RIGHTOF__", 4ll, (tmp$29)&HDEFARGRIGHT_CB, (tmp$30)0ull, 3ll, { (uint8*)"ARG", (uint8*)"SEP", (uint8*)"RET" } }, { (uint8*)"__FB_JOIN__", 0ll, (tmp$29)&HDEFJOINZ_CB, (tmp$30)&HDEFJOINW_CB, 2ll, { (uint8*)"L", (uint8*)"R" } }, { (uint8*)"__FB_QUOTE__", 0ll, (tmp$29)&HDEFQUOTEZ_CB, (tmp$30)&HDEFQUOTEW_CB, 1ll, { (uint8*)"ARG" } }, { (uint8*)"__FB_UNQUOTE__", 0ll, (tmp$29)&HDEFUNQUOTEZ_CB, (tmp$30)&HDEFUNQUOTEW_CB, 1ll, { (uint8*)"ARG" } }, { (uint8*)"__FB_EVAL__", 0ll, (tmp$29)&HDEFEVAL_CB, (tmp$30)0ull, 1ll, { (uint8*)"ARG" } } };

void SYMBDEFINEINIT( int64 ISMAIN$1 )
{
	FBSTRING TMP$204$1;
	FBSTRING TMP$205$1;
	FBSTRING TMP$206$1;
	label$286:;
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 24ll );
	uint8* DEF$1;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), 500ll, 24ll, 6ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll), 1000ll, 32ll, 6ll );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), 16ll, -1ll );
	{
		int64 I$2;
		I$2 = 0ll;
		label$291:;
		{
			fb_StrAssign( (void*)&VALUE$1, -1ll, *(void**)(((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))) + 8ll), 0ll, 0 );
			if( *(uint8**)(((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))) + 8ll) == (uint8*)0ull ) goto label$293;
			{
				if( (*(int64*)(((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))) + 16ll) & 1ll) == 0ll ) goto label$295;
				{
					FBSTRING TMP$200$5;
					FBSTRING TMP$201$5;
					__builtin_memset( &TMP$200$5, 0, 24ll );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$200$5, (void*)"\x22", 2ll, (void*)&VALUE$1, -1ll );
					__builtin_memset( &TMP$201$5, 0, 24ll );
					FBSTRING* vr$15 = fb_StrConcat( &TMP$201$5, (void*)vr$12, -1ll, (void*)"\x22", 2ll );
					fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$15, -1ll, 0 );
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
			int64 vr$20 = fb_StrLen( (void*)&VALUE$1, -1ll );
			SYMBADDDEFINE( *(uint8**)((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))), (uint8*)*(uint8**)&VALUE$1, vr$20, 0ll, *(tmp$28*)(((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))) + 24ll), *($15FB_DEFINE_FLAGS*)(((uint8*)DEFTB$ + (I$2 << (5ll & 63ll))) + 16ll) );
		}
		label$289:;
		I$2 = I$2 + 1ll;
		label$288:;
		if( I$2 <= 34ll ) goto label$291;
		label$290:;
	}
	__builtin_memset( &TMP$206$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((uint8*)&ENV$ + 488ll) );
	FBSTRING* vr$25 = fb_StrUcase2( (FBSTRING*)vr$24, 0 );
	__builtin_memset( &TMP$204$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$204$1, (void*)"__FB_", 6ll, (void*)vr$25, -1ll );
	__builtin_memset( &TMP$205$1, 0, 24ll );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$205$1, (void*)vr$28, -1ll, (void*)"__", 3ll );
	fb_StrAssign( (void*)&TMP$206$1, -1ll, (void*)vr$31, -1ll, 0 );
	SYMBADDDEFINE( (uint8*)*(uint8**)&TMP$206$1, (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$206$1 );
	if( *(int64*)((uint8*)&ENV$ + 216ll) != 11ll ) goto label$297;
	{
		SYMBADDDEFINE( (uint8*)"__FB_LINUX__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$297:;
	label$296:;
	if( (*(int64*)((uint8*)&ENV$ + 520ll) & 1ll) == 0ll ) goto label$299;
	{
		SYMBADDDEFINE( (uint8*)"__FB_UNIX__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	goto label$298;
	label$299:;
	{
		SYMBADDDEFINE( (uint8*)"__FB_PCOS__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$298:;
	int64 vr$35 = FBIS64BIT(  );
	if( vr$35 == 0ll ) goto label$301;
	{
		SYMBADDDEFINE( (uint8*)"__FB_64BIT__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$301:;
	label$300:;
	{
		int64 TMP$211$2;
		int64 vr$36 = FBGETCPUFAMILY(  );
		TMP$211$2 = vr$36;
		if( TMP$211$2 == 2ll ) goto label$304;
		label$305:;
		if( TMP$211$2 != 3ll ) goto label$303;
		label$304:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_ARM__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
		}
		goto label$302;
		label$303:;
		if( TMP$211$2 == 0ll ) goto label$307;
		label$308:;
		if( TMP$211$2 != 1ll ) goto label$306;
		label$307:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_X86__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
			SYMBADDDEFINE( (uint8*)"__FB_ASM__", (uint8*)0ull, 0ll, 0ll, (tmp$28)&HDEFASM_CB, 1ll );
		}
		goto label$302;
		label$306:;
		if( TMP$211$2 == 4ll ) goto label$310;
		label$311:;
		if( TMP$211$2 != 5ll ) goto label$309;
		label$310:;
		{
			SYMBADDDEFINE( (uint8*)"__FB_PPC__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
		}
		label$309:;
		label$302:;
	}
	if( ISMAIN$1 == 0ll ) goto label$313;
	{
		SYMBADDDEFINE( (uint8*)"__FB_MAIN__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$313:;
	label$312:;
	if( *(int64*)((uint8*)&ENV$ + 232ll) < 1ll ) goto label$315;
	{
		SYMBADDDEFINE( (uint8*)"__FB_SSE__", (uint8*)0ull, 0ll, 0ll, (tmp$28)0ull, 0ll );
	}
	label$315:;
	label$314:;
	FBSTRING* vr$37 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 248ll) );
	fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$37, -1ll, 0 );
	int64 vr$40 = fb_StrLen( (void*)&VALUE$1, -1ll );
	SYMBADDDEFINE( (uint8*)"__FB_VECTORIZE__", (uint8*)*(uint8**)&VALUE$1, vr$40, 0ll, (tmp$28)0ull, 0ll );
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), 32ll, 0ll );
	{
		int64 I$2;
		I$2 = 0ll;
		label$319:;
		{
			struct $11FB_DEFPARAM* FIRSTPARAM$3;
			struct $11FB_DEFPARAM* vr$43 = SYMBADDDEFINEPARAM( (struct $11FB_DEFPARAM*)0ull, *(uint8**)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 40ll) );
			FIRSTPARAM$3 = vr$43;
			struct $11FB_DEFPARAM* LASTPARAM$3;
			LASTPARAM$3 = FIRSTPARAM$3;
			{
				int64 J$4;
				J$4 = 1ll;
				int64 TMP$219$4;
				TMP$219$4 = *(int64*)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 32ll) + -1ll;
				goto label$320;
				label$323:;
				{
					struct $11FB_DEFPARAM* vr$50 = SYMBADDDEFINEPARAM( LASTPARAM$3, *(uint8**)((uint8*)((uint8*)((uint8*)MACROTB$ + (I$2 * 80ll)) + (J$4 << (3ll & 63ll))) + 40ll) );
					LASTPARAM$3 = vr$50;
				}
				label$321:;
				J$4 = J$4 + 1ll;
				label$320:;
				if( J$4 <= TMP$219$4 ) goto label$323;
				label$322:;
			}
			struct $8FBSYMBOL* SYM$3;
			struct $8FBSYMBOL* vr$56 = SYMBADDDEFINEMACRO( *(uint8**)((uint8*)MACROTB$ + (I$2 * 80ll)), (struct $9FB_DEFTOK*)0ull, *(int64*)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 32ll), FIRSTPARAM$3, *(int64*)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 8ll) | 8ll );
			SYM$3 = vr$56;
			*(tmp$29*)((uint8*)SYM$3 + 136ll) = *(tmp$29*)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 16ll);
			*(tmp$30*)((uint8*)SYM$3 + 144ll) = *(tmp$30*)(((uint8*)MACROTB$ + (I$2 * 80ll)) + 24ll);
		}
		label$317:;
		I$2 = I$2 + 1ll;
		label$316:;
		if( I$2 <= 10ll ) goto label$319;
		label$318:;
	}
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	label$287:;
}

void SYMBDEFINEEND( void )
{
	label$324:;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll) );
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll) );
	label$325:;
}

struct $8FBSYMBOL* SYMBADDDEFINE( uint8* SYMBOL$1, uint8* TEXT$1, int64 LGT$1, int64 ISARGLESS$1, tmp$28 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$326:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, SYMBOL$1, (uint8*)0ull, 4ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$329;
	{
		goto label$327;
	}
	label$329:;
	label$328:;
	void* vr$5 = XALLOCATE( (int32)(LGT$1 + 1ll) );
	*(uint8**)((uint8*)SYM$1 + 112ll) = (uint8*)vr$5;
	fb_StrAssign( *(void**)((uint8*)SYM$1 + 112ll), 0ll, (void*)TEXT$1, 0ll, 0 );
	*(int64*)((uint8*)SYM$1 + 80ll) = LGT$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = 0ll;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)SYM$1 + 120ll) = ISARGLESS$1;
	*(tmp$28*)((uint8*)SYM$1 + 136ll) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$327:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEW( uint8* SYMBOL$1, uint16* TEXT$1, int64 LGT$1, int64 ISARGLESS$1, tmp$28 PROC$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$330:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, (uint8*)SYMBOL$1, (uint8*)0ull, 7ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$333;
	{
		goto label$331;
	}
	label$333:;
	label$332:;
	void* vr$6 = XALLOCATE( (int32)((LGT$1 << (1ll & 63ll)) + 2ll) );
	*(uint16**)((uint8*)SYM$1 + 112ll) = (uint16*)vr$6;
	fb_WstrAssign( *(uint16**)((uint8*)SYM$1 + 112ll), 0ll, (uint16*)TEXT$1 );
	*(int64*)((uint8*)SYM$1 + 80ll) = LGT$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = 0ll;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)SYM$1 + 120ll) = ISARGLESS$1;
	*(tmp$28*)((uint8*)SYM$1 + 136ll) = PROC$1;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$331:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8* SYMBOL$1, struct $9FB_DEFTOK* TOKHEAD$1, int64 PARAMS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, $15FB_DEFINE_FLAGS FLAGS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$334:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	struct $8FBSYMBOL* vr$2 = SYMBNEWSYMBOL( 32ll, (struct $8FBSYMBOL*)0ull, (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll), 5ll, SYMBOL$1, (uint8*)0ull, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
	SYM$1 = vr$2;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$337;
	{
		goto label$335;
	}
	label$337:;
	label$336:;
	*(struct $9FB_DEFTOK**)((uint8*)SYM$1 + 112ll) = TOKHEAD$1;
	*(int64*)((uint8*)SYM$1 + 96ll) = PARAMS$1;
	*(struct $11FB_DEFPARAM**)((uint8*)SYM$1 + 104ll) = PARAMHEAD$1;
	*(int64*)((uint8*)SYM$1 + 120ll) = 0ll;
	*(tmp$29*)((uint8*)SYM$1 + 136ll) = (tmp$29)0ull;
	*(tmp$30*)((uint8*)SYM$1 + 144ll) = (tmp$30)0ull;
	*($15FB_DEFINE_FLAGS*)((uint8*)SYM$1 + 128ll) = FLAGS$1;
	fb$result$1 = SYM$1;
	label$335:;
	return fb$result$1;
}

struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM* LASTPARAM$1, uint8* ID$1 )
{
	struct $11FB_DEFPARAM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$344:;
	static struct $11FB_DEFPARAM* PARAM$1;
	static uint64 INDEX$1;
	fb$result$1 = (struct $11FB_DEFPARAM*)0ull;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll) );
	PARAM$1 = (struct $11FB_DEFPARAM*)vr$2;
	if( LASTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$347;
	{
		*(struct $11FB_DEFPARAM**)((uint8*)LASTPARAM$1 + 16ll) = PARAM$1;
	}
	goto label$346;
	label$347:;
	{
		if( *(int64*)((uint8*)&SYMB$ + 197496ll) <= 0ll ) goto label$349;
		{
			HRESETDEFHASH(  );
		}
		label$349:;
		label$348:;
	}
	label$346:;
	int64 vr$4 = fb_StrLen( (void*)ID$1, 0ll );
	void* vr$7 = XALLOCATE( (int32)(vr$4 + 1ll) );
	*(uint8**)PARAM$1 = (uint8*)vr$7;
	HUCASE( ID$1, *(uint8**)PARAM$1 );
	uint64 vr$11 = HASHHASH( (uint8*)*(uint8**)PARAM$1 );
	INDEX$1 = vr$11;
	void* vr$14 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)*(uint8**)PARAM$1, INDEX$1 );
	if( vr$14 == (void*)0ull ) goto label$351;
	{
		if( *(uint8**)PARAM$1 == (uint8*)0ull ) goto label$353;
		{
			free( *(void**)PARAM$1 );
		}
		label$353:;
		label$352:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), (void*)PARAM$1 );
		fb$result$1 = (struct $11FB_DEFPARAM*)0ull;
		goto label$345;
	}
	label$351:;
	label$350:;
	struct $8HASHITEM* vr$20 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)*(uint8**)PARAM$1, (void*)PARAM$1, INDEX$1 );
	*(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (*(int64*)((uint8*)&SYMB$ + 197496ll) << (4ll & 63ll))) + 184ll) = vr$20;
	*(uint64*)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (*(int64*)((uint8*)&SYMB$ + 197496ll) << (4ll & 63ll))) + 192ll) = INDEX$1;
	*(int64*)((uint8*)PARAM$1 + 8ll) = *(int64*)((uint8*)&SYMB$ + 197496ll);
	*(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll) = (struct $11FB_DEFPARAM*)0ull;
	*(int64*)((uint8*)&SYMB$ + 197496ll) = *(int64*)((uint8*)&SYMB$ + 197496ll) + 1ll;
	fb$result$1 = PARAM$1;
	label$345:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK* LASTTOK$1, $14FB_DEFTOK_TYPE DTYPE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$354:;
	static struct $9FB_DEFTOK* T$1;
	fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll) );
	T$1 = (struct $9FB_DEFTOK*)vr$2;
	if( LASTTOK$1 == (struct $9FB_DEFTOK*)0ull ) goto label$357;
	{
		*(struct $9FB_DEFTOK**)((uint8*)LASTTOK$1 + 24ll) = T$1;
	}
	label$357:;
	label$356:;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 16ll) = LASTTOK$1;
	*(struct $9FB_DEFTOK**)((uint8*)T$1 + 24ll) = (struct $9FB_DEFTOK*)0ull;
	*($14FB_DEFTOK_TYPE*)T$1 = DTYPE$1;
	{
		uint64 TMP$221$2;
		TMP$221$2 = (uint64)DTYPE$1;
		goto label$359;
		label$360:;
		{
			*(uint8**)((uint8*)T$1 + 8ll) = (uint8*)0ull;
		}
		goto label$358;
		label$361:;
		{
			*(uint16**)((uint8*)T$1 + 8ll) = (uint16*)0ull;
		}
		goto label$358;
		label$359:;
		static const void* tmp$222[2ll] = {
			&&label$360,
			&&label$361,
		};
		if( (TMP$221$2 - 2ull) > 1ull ) goto label$358;
		goto *tmp$222[TMP$221$2 - 2ull];
		label$358:;
	}
	fb$result$1 = T$1;
	label$355:;
	return fb$result$1;
}

struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* TOK$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$362:;
	if( *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll) == (struct $9FB_DEFTOK*)0ull ) goto label$365;
	{
		*(struct $9FB_DEFTOK**)((uint8*)*(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll) + 24ll) = (struct $9FB_DEFTOK*)0ull;
		fb$result$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 16ll);
	}
	goto label$364;
	label$365:;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	}
	label$364:;
	{
		$14FB_DEFTOK_TYPE TMP$223$2;
		TMP$223$2 = *($14FB_DEFTOK_TYPE*)TOK$1;
		if( TMP$223$2 != 2ll ) goto label$367;
		label$368:;
		{
			if( *(uint8**)((uint8*)TOK$1 + 8ll) == (uint8*)0ull ) goto label$370;
			{
				free( *(void**)((uint8*)TOK$1 + 8ll) );
			}
			label$370:;
			label$369:;
		}
		goto label$366;
		label$367:;
		if( TMP$223$2 != 3ll ) goto label$371;
		label$372:;
		{
			if( *(uint16**)((uint8*)TOK$1 + 8ll) == (uint16*)0ull ) goto label$374;
			{
				free( *(void**)((uint8*)TOK$1 + 8ll) );
			}
			label$374:;
			label$373:;
		}
		label$371:;
		label$366:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197408ll), (void*)TOK$1 );
	label$363:;
	return fb$result$1;
}

int64 SYMBDELDEFINE( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$385:;
	fb$result$1 = 0ll;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$388;
	{
		goto label$386;
	}
	label$388:;
	label$387:;
	if( *(int64*)((uint8*)S$1 + 96ll) != 0ll ) goto label$390;
	{
		if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$392;
		{
			if( *(uint8**)((uint8*)S$1 + 112ll) == (uint8*)0ull ) goto label$394;
			{
				free( *(void**)((uint8*)S$1 + 112ll) );
			}
			label$394:;
			label$393:;
		}
		goto label$391;
		label$392:;
		{
			if( *(uint16**)((uint8*)S$1 + 112ll) == (uint16*)0ull ) goto label$396;
			{
				free( *(void**)((uint8*)S$1 + 112ll) );
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
	fb$result$1 = -1ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static FBSTRING* HDEFFILE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$10:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)((uint8*)&ENV$ + 560ll), 261ll, 0 );
	label$11:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFPATH_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$12:;
	FBSTRING* vr$1 = FBGETINPUTFILEPARENTDIR(  );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$13:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFUNCTION_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$14:;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) + 24ll) & 4096ll) == 0ll ) goto label$17;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"__FB_MAINPROC__", 16ll, 0 );
	}
	goto label$16;
	label$17:;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) + 24ll) & 8192ll) == 0ll ) goto label$18;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"__FB_MODLEVELPROC__", 20ll, 0 );
	}
	goto label$16;
	label$18:;
	{
		uint8* vr$7 = SYMBGETFULLPROCNAME( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) );
		fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$7, 0ll, 0 );
	}
	label$16:;
	label$15:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static FBSTRING* HDEFLINE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$19:;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8552ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$20:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$21:;
	FBSTRING* vr$1 = fb_Date(  );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$22:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFDATEISO_CB( void )
{
	FBSTRING TMP$97$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$23:;
	__builtin_memset( &TMP$97$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$97$1, -1ll, (void*)"yyyy-mm-dd", 11ll, 0 );
	double vr$4 = fb_Now(  );
	FBSTRING* vr$5 = fb_StrFormat( vr$4, (FBSTRING*)&TMP$97$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$5, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$97$1 );
	label$24:;
	FBSTRING* vr$9 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$9;
}

static FBSTRING* HDEFTIME_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$25:;
	FBSTRING* vr$1 = fb_Time(  );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$26:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFMULTITHREAD_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$27:;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 432ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$28:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFOPTBYVAL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$29:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1328ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$30:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTDYNAMIC_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$31:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1360ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$32:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTESCAPE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$33:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1352ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$34:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTEXPLICIT_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$35:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1336ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$36:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTPRIVATE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$37:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1344ll) == 0ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$38:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOPTGOSUB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$39:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 1368ll) == -1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$40:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTEXE_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$43:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 0ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$44:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTLIB_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$45:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$46:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTDLL_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$47:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 2ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$48:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFOUTOBJ_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$49:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) == 3ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$50:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFDEBUG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$51:;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)&ENV$ + 288ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$52:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFERR_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$53:;
	int64 RES$1;
	RES$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 312ll) == 0ll ) goto label$56;
	{
		RES$1 = 1ll;
	}
	label$56:;
	label$55:;
	if( *(int64*)((uint8*)&ENV$ + 320ll) == 0ll ) goto label$58;
	{
		RES$1 = RES$1 | 2ll;
	}
	label$58:;
	label$57:;
	if( *(int64*)((uint8*)&ENV$ + 328ll) == 0ll ) goto label$60;
	{
		RES$1 = RES$1 | 4ll;
	}
	label$60:;
	label$59:;
	if( *(int64*)((uint8*)&ENV$ + 344ll) == 0ll ) goto label$62;
	{
		RES$1 = RES$1 | 8ll;
	}
	label$62:;
	label$61:;
	if( *(int64*)((uint8*)&ENV$ + 352ll) == 0ll ) goto label$64;
	{
		RES$1 = RES$1 | 16ll;
	}
	label$64:;
	label$63:;
	if( *(int64*)((uint8*)&ENV$ + 304ll) == 0ll ) goto label$66;
	{
		RES$1 = RES$1 | 32ll;
	}
	label$66:;
	label$65:;
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$68;
	{
		RES$1 = RES$1 | 64ll;
	}
	label$68:;
	label$67:;
	if( *(int64*)((uint8*)&ENV$ + 288ll) == 0ll ) goto label$70;
	{
		RES$1 = RES$1 | 128ll;
	}
	label$70:;
	label$69:;
	if( *(int64*)((uint8*)&ENV$ + 336ll) == 0ll ) goto label$72;
	{
		RES$1 = RES$1 | 256ll;
	}
	label$72:;
	label$71:;
	FBSTRING* vr$9 = fb_LongintToStr( RES$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$9, -1ll, 0 );
	label$54:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* HDEFLANG_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$73:;
	FBSTRING* vr$1 = FBGETLANGNAME( *($7FB_LANG*)((uint8*)&ENV$ + 272ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$74:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFBACKEND_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$75:;
	FBSTRING* vr$1 = FBGETBACKENDNAME( *($10FB_BACKEND*)((uint8*)&ENV$ + 208ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$76:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HDEFFPU_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$77:;
	{
		int64 TMP$98$2;
		int64 vr$1 = FBGETOPTION( 5ll );
		TMP$98$2 = vr$1;
		if( TMP$98$2 != 0ll ) goto label$80;
		label$81:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"x87", 4ll, 0 );
			goto label$78;
		}
		goto label$79;
		label$80:;
		if( TMP$98$2 != 1ll ) goto label$82;
		label$83:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"sse", 4ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$85:;
	{
		int64 TMP$101$2;
		int64 vr$1 = FBGETOPTION( 6ll );
		TMP$101$2 = vr$1;
		if( TMP$101$2 != 0ll ) goto label$88;
		label$89:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"precise", 8ll, 0 );
			goto label$86;
		}
		goto label$87;
		label$88:;
		if( TMP$101$2 != 1ll ) goto label$90;
		label$91:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"fast", 5ll, 0 );
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
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$93:;
	FBSTRING* vr$2 = fb_LongintToStr( (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 1ll) );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$94:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HDEFASM_CB( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$95:;
	{
		$12FB_ASMSYNTAX TMP$104$2;
		TMP$104$2 = *($12FB_ASMSYNTAX*)((uint8*)&ENV$ + 264ll);
		if( TMP$104$2 != 0ll ) goto label$98;
		label$99:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"intel", 6ll, 0 );
		}
		goto label$97;
		label$98:;
		if( TMP$104$2 != 1ll ) goto label$100;
		label$101:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"att", 4ll, 0 );
		}
		label$100:;
		label$97:;
	}
	label$96:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static uint8* HMACRO_GETARGZ( struct $11LEXPP_ARGTB* ARGTB$1, int64 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$102:;
	uint8* RES$1;
	RES$1 = (uint8*)0ull;
	if( *(int64*)((uint8*)&ENV$ + 840ll) != 0ll ) goto label$105;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint8*)0ull ) goto label$107;
		{
			fb$result$1 = (uint8*)0ull;
			goto label$103;
		}
		label$107:;
		label$106:;
		ZSTRASSIGN( &RES$1, DT$2 );
	}
	goto label$104;
	label$105:;
	{
		uint16* DT$2;
		DT$2 = *(uint16**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint16*)0ull ) goto label$109;
		{
			fb$result$1 = (uint8*)0ull;
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

static uint16* HMACRO_GETARGW( struct $11LEXPP_ARGTB* ARGTB$1, int64 NUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$110:;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( *(int64*)((uint8*)&ENV$ + 840ll) != 0ll ) goto label$113;
	{
		uint8* DT$2;
		DT$2 = *(uint8**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint8*)0ull ) goto label$115;
		{
			fb$result$1 = (uint16*)0ull;
			goto label$111;
		}
		label$115:;
		label$114:;
		DWSTRCONCATASSIGNA( &RES$1, DT$2 );
	}
	goto label$112;
	label$113:;
	{
		uint16* DT$2;
		DT$2 = *(uint16**)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
		if( DT$2 != (uint16*)0ull ) goto label$117;
		{
			fb$result$1 = (uint16*)0ull;
			goto label$111;
		}
		label$117:;
		label$116:;
		DWSTRCONCATASSIGN( &RES$1, DT$2 );
	}
	label$112:;
	fb$result$1 = *(uint16**)&RES$1;
	label$111:;
	return fb$result$1;
}

static FBSTRING* HDEFUNIQUEIDPUSH_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$118:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$121;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$119;
	}
	label$121:;
	label$120:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$123;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$119;
	}
	label$123:;
	label$122:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( STK$1 != (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$125;
	{
		void* vr$7 = calloc( 8ull, 1ull );
		STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$7;
		HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), (uint8*)ID$1, (void*)STK$1, 18446744073709551615ull );
	}
	goto label$124;
	label$125:;
	{
		if( ID$1 == (uint8*)0ull ) goto label$127;
		{
			free( (void*)ID$1 );
		}
		label$127:;
		label$126:;
	}
	label$124:;
	struct $21SYMB_DEF_UNIQUEID_ELM* ELM$1;
	void* vr$9 = malloc( 16ull );
	ELM$1 = (struct $21SYMB_DEF_UNIQUEID_ELM*)vr$9;
	uint8* UID$1;
	uint8* vr$10 = SYMBUNIQUEID( (boolean)1ll );
	UID$1 = vr$10;
	int64 vr$11 = fb_StrLen( (void*)UID$1, 0ll );
	void* vr$13 = malloc( (uint64)(vr$11 + 1ll) );
	*(uint8**)ELM$1 = (uint8*)vr$13;
	fb_StrAssign( *(void**)ELM$1, 0ll, (void*)UID$1, 0ll, 0 );
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)ELM$1 + 8ll) = *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1;
	*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = ELM$1;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$119:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HDEFUNIQUEID_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$128:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$131;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$129;
	}
	label$131:;
	label$130:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$133;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$129;
	}
	label$133:;
	label$132:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0ull ) goto label$135;
	{
		free( (void*)ID$1 );
	}
	label$135:;
	label$134:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$137;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0ull ) goto label$139;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1, 0ll, 0 );
			goto label$129;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$129:;
	FBSTRING* vr$13 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$13;
}

static FBSTRING* HDEFUNIQUEIDPOP_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$140:;
	if( *(int64*)((uint8*)&PP$ + 392ll) == 0ll ) goto label$143;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$141;
	}
	label$143:;
	label$142:;
	uint8* ID$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ID$1 = vr$2;
	if( ID$1 != (uint8*)0ull ) goto label$145;
	{
		*ERRNUM$1 = 1ll;
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
		goto label$141;
	}
	label$145:;
	label$144:;
	struct $23SYMB_DEF_UNIQUEID_STACK* STK$1;
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197472ll), ID$1 );
	STK$1 = (struct $23SYMB_DEF_UNIQUEID_STACK*)vr$6;
	if( ID$1 == (uint8*)0ull ) goto label$147;
	{
		free( (void*)ID$1 );
	}
	label$147:;
	label$146:;
	if( STK$1 == (struct $23SYMB_DEF_UNIQUEID_STACK*)0ull ) goto label$149;
	{
		if( *(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 == (struct $21SYMB_DEF_UNIQUEID_ELM*)0ull ) goto label$151;
		{
			free( *(void**)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 );
			*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 = *(struct $21SYMB_DEF_UNIQUEID_ELM**)((uint8*)*(struct $21SYMB_DEF_UNIQUEID_ELM**)STK$1 + 8ll);
		}
		goto label$150;
		label$151:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$150:;
	}
	goto label$148;
	label$149:;
	{
		*ERRNUM$1 = 17ll;
	}
	label$148:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	label$141:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

static FBSTRING* HDEFARGCOUNT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$152:;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$155;
	{
		FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)ARGTB$1 + 768ll) );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
		goto label$153;
	}
	label$155:;
	label$154:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"0", 2ll, 0 );
	label$153:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HDEFARGEXTRACT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$156:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* NUMSTR$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	NUMSTR$1 = vr$2;
	if( NUMSTR$1 == (uint8*)0ull ) goto label$159;
	{
		int32 NUMARGLEN$2;
		int64 vr$3 = fb_StrLen( (void*)NUMSTR$1, 0ll );
		NUMARGLEN$2 = (int32)vr$3;
		int32 I$2;
		__builtin_memset( &I$2, 0, 4ll );
		uint32 INDEX$2;
		INDEX$2 = 0u;
		uint32 ZEROVAL$2;
		ZEROVAL$2 = 48u;
		{
			I$2 = 0;
			int32 TMP$107$3;
			TMP$107$3 = (int32)((int64)NUMARGLEN$2 + -1ll);
			goto label$160;
			label$163:;
			{
				int64 TMP$109$4;
				if( (uint64)(int64)*(uint8*)((uint8*)NUMSTR$1 + (int64)I$2) > 57ull ) goto label$164;
				TMP$109$4 = (int64)-((uint64)(int64)*(uint8*)((uint8*)NUMSTR$1 + (int64)I$2) >= 48ull);
				goto label$397;
				label$164:;
				TMP$109$4 = 0ll;
				label$397:;
				if( ~TMP$109$4 == 0ll ) goto label$166;
				{
					goto label$162;
				}
				label$166:;
				label$165:;
				INDEX$2 = (uint32)((int64)INDEX$2 * 10ll);
				INDEX$2 = (uint32)(((int64)INDEX$2 + (int64)*(uint8*)((uint8*)NUMSTR$1 + (int64)I$2)) - (int64)ZEROVAL$2);
			}
			label$161:;
			I$2 = (int32)((int64)I$2 + 1ll);
			label$160:;
			if( (int64)I$2 <= (int64)TMP$107$3 ) goto label$163;
			label$162:;
		}
		if( (int64)I$2 != (int64)NUMARGLEN$2 ) goto label$168;
		{
			uint32 NUMVARARGS$3;
			NUMVARARGS$3 = (uint32)(*(int64*)((uint8*)ARGTB$1 + 768ll) + -1ll);
			if( (int64)INDEX$2 >= (int64)NUMVARARGS$3 ) goto label$170;
			{
				FBSTRING TMP$110$4;
				FBSTRING TMP$112$4;
				uint8* ARGSTRING$4;
				uint8* vr$40 = HMACRO_GETARGZ( ARGTB$1, 1ll );
				ARGSTRING$4 = vr$40;
				struct $7FBARRAYI8FBSTRINGE VARARGS$4;
				*(FBSTRING**)&VARARGS$4 = (FBSTRING*)0ull;
				*(FBSTRING**)((uint8*)&VARARGS$4 + 8ll) = (FBSTRING*)0ull;
				*(int64*)((uint8*)&VARARGS$4 + 16ll) = 0ll;
				*(int64*)((uint8*)&VARARGS$4 + 24ll) = 24ll;
				*(int64*)((uint8*)&VARARGS$4 + 32ll) = 0ll;
				*(int64*)((uint8*)&VARARGS$4 + 40ll) = 8ll;
				__builtin_memset( (void*)((uint8*)&VARARGS$4 + 48ll), 0, 192ll );
				__builtin_memset( &TMP$112$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$112$4, -1ll, (void*)",", 2ll, 0 );
				__builtin_memset( &TMP$110$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$110$4, -1ll, (void*)ARGSTRING$4, 0ll, 0 );
				HSPLITSTR( &TMP$110$4, &TMP$112$4, &VARARGS$4 );
				fb_StrDelete( (FBSTRING*)&TMP$112$4 );
				fb_StrDelete( (FBSTRING*)&TMP$110$4 );
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)(((int64)INDEX$2 * 24ll) + *(int64*)&VARARGS$4), -1ll, 0 );
				if( ARGSTRING$4 == (uint8*)0ull ) goto label$172;
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
			*ERRNUM$1 = 17ll;
		}
		label$167:;
		if( NUMSTR$1 == (uint8*)0ull ) goto label$174;
		{
			free( (void*)NUMSTR$1 );
		}
		label$174:;
		label$173:;
	}
	goto label$158;
	label$159:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$158:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$157;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$157:;
	FBSTRING* vr$64 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$64;
}

static FBSTRING* HDEFARGLEFT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$175:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2ll );
	RET$1 = vr$4;
	if( ((int64)-(ARG$1 != (uint8*)0ull) & (int64)-(SEP$1 != (uint8*)0ull)) == 0ll ) goto label$178;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0ull;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 8ll) = (FBSTRING*)0ull;
		*(int64*)((uint8*)&TOKENS$2 + 16ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 24ll) = 24ll;
		*(int64*)((uint8*)&TOKENS$2 + 32ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 40ll) = 8ll;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 48ll), 0, 192ll );
		int64 NUMTOKS$2;
		int64 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0ll ) goto label$180;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$113$4;
				TMP$113$4 = NUMTOKS$2 + -1ll;
				goto label$181;
				label$184:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 24ll) + *(int64*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1ll, (void*)SEP$1, 0ll );
					if( (int64)vr$16 != 0ll ) goto label$186;
					{
						{
							int64 J$7;
							J$7 = 0ll;
							int64 TMP$114$7;
							TMP$114$7 = I$4 + -1ll;
							goto label$187;
							label$190:;
							{
								if( J$7 <= 0ll ) goto label$192;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)" ", 2ll, 0 );
								}
								label$192:;
								label$191:;
								fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)((J$7 * 24ll) + *(int64*)&TOKENS$2), -1ll, 0 );
							}
							label$188:;
							J$7 = J$7 + 1ll;
							label$187:;
							if( J$7 <= TMP$114$7 ) goto label$190;
							label$189:;
						}
						goto label$183;
					}
					label$186:;
					label$185:;
				}
				label$182:;
				I$4 = I$4 + 1ll;
				label$181:;
				if( I$4 <= TMP$113$4 ) goto label$184;
				label$183:;
			}
			int64 vr$27 = fb_StrLen( (void*)&RES$1, -1ll );
			if( vr$27 != 0ll ) goto label$194;
			{
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)RET$1, 0ll, 0 );
			}
			label$194:;
			label$193:;
		}
		goto label$179;
		label$180:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$179:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$177;
	label$178:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$177:;
	if( RET$1 == (uint8*)0ull ) goto label$196;
	{
		free( (void*)RET$1 );
	}
	label$196:;
	label$195:;
	if( SEP$1 == (uint8*)0ull ) goto label$198;
	{
		free( (void*)SEP$1 );
	}
	label$198:;
	label$197:;
	if( ARG$1 == (uint8*)0ull ) goto label$200;
	{
		free( (void*)ARG$1 );
	}
	label$200:;
	label$199:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	goto label$176;
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$176:;
	FBSTRING* vr$37 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$37;
}

static FBSTRING* HDEFARGRIGHT_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$201:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* ARG$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$2;
	uint8* SEP$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	SEP$1 = vr$3;
	uint8* RET$1;
	uint8* vr$4 = HMACRO_GETARGZ( ARGTB$1, 2ll );
	RET$1 = vr$4;
	if( ((int64)-(ARG$1 != (uint8*)0ull) & (int64)-(SEP$1 != (uint8*)0ull)) == 0ll ) goto label$204;
	{
		struct $7FBARRAYI8FBSTRINGE TOKENS$2;
		*(FBSTRING**)&TOKENS$2 = (FBSTRING*)0ull;
		*(FBSTRING**)((uint8*)&TOKENS$2 + 8ll) = (FBSTRING*)0ull;
		*(int64*)((uint8*)&TOKENS$2 + 16ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 24ll) = 24ll;
		*(int64*)((uint8*)&TOKENS$2 + 32ll) = 0ll;
		*(int64*)((uint8*)&TOKENS$2 + 40ll) = 8ll;
		__builtin_memset( (void*)((uint8*)&TOKENS$2 + 48ll), 0, 192ll );
		int64 NUMTOKS$2;
		int64 vr$10 = HSTR2TOK( (uint8*)ARG$1, &TOKENS$2 );
		NUMTOKS$2 = vr$10;
		if( NUMTOKS$2 <= 0ll ) goto label$206;
		{
			HUCASE( (uint8*)SEP$1, SEP$1 );
			{
				int64 I$4;
				I$4 = 0ll;
				int64 TMP$116$4;
				TMP$116$4 = NUMTOKS$2 + -1ll;
				goto label$207;
				label$210:;
				{
					FBSTRING* vr$15 = fb_StrUcase2( (FBSTRING*)((I$4 * 24ll) + *(int64*)&TOKENS$2), 0 );
					int32 vr$16 = fb_StrCompare( (void*)vr$15, -1ll, (void*)SEP$1, 0ll );
					if( (int64)vr$16 != 0ll ) goto label$212;
					{
						{
							int64 J$7;
							J$7 = I$4 + 1ll;
							int64 TMP$117$7;
							TMP$117$7 = NUMTOKS$2 + -1ll;
							goto label$213;
							label$216:;
							{
								int64 vr$21 = fb_StrLen( (void*)&RES$1, -1ll );
								if( vr$21 <= 0ll ) goto label$218;
								{
									fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)" ", 2ll, 0 );
								}
								label$218:;
								label$217:;
								fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)((J$7 * 24ll) + *(int64*)&TOKENS$2), -1ll, 0 );
							}
							label$214:;
							J$7 = J$7 + 1ll;
							label$213:;
							if( J$7 <= TMP$117$7 ) goto label$216;
							label$215:;
						}
						goto label$209;
					}
					label$212:;
					label$211:;
				}
				label$208:;
				I$4 = I$4 + 1ll;
				label$207:;
				if( I$4 <= TMP$116$4 ) goto label$210;
				label$209:;
			}
			int64 vr$30 = fb_StrLen( (void*)&RES$1, -1ll );
			if( vr$30 != 0ll ) goto label$220;
			{
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)RET$1, 0ll, 0 );
			}
			label$220:;
			label$219:;
		}
		goto label$205;
		label$206:;
		{
			*ERRNUM$1 = 17ll;
		}
		label$205:;
		fb_ArrayStrErase( (struct $7FBARRAYIvE*)&TOKENS$2 );
	}
	goto label$203;
	label$204:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$203:;
	if( RET$1 == (uint8*)0ull ) goto label$222;
	{
		free( (void*)RET$1 );
	}
	label$222:;
	label$221:;
	if( SEP$1 == (uint8*)0ull ) goto label$224;
	{
		free( (void*)SEP$1 );
	}
	label$224:;
	label$223:;
	if( ARG$1 == (uint8*)0ull ) goto label$226;
	{
		free( (void*)ARG$1 );
	}
	label$226:;
	label$225:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$202:;
	FBSTRING* vr$39 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$39;
}

static FBSTRING* HDEFJOINZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$227:;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	uint8* L$1;
	uint8* vr$2 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	L$1 = vr$2;
	uint8* R$1;
	uint8* vr$3 = HMACRO_GETARGZ( ARGTB$1, 1ll );
	R$1 = vr$3;
	if( ((int64)-(L$1 != (uint8*)0ull) & (int64)-(R$1 != (uint8*)0ull)) == 0ll ) goto label$230;
	{
		FBSTRING TMP$118$2;
		__builtin_memset( &TMP$118$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$118$2, (void*)L$1, 0ll, (void*)R$1, 0ll );
		fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$9, -1ll, 0 );
	}
	goto label$229;
	label$230:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$229:;
	if( L$1 == (uint8*)0ull ) goto label$232;
	{
		free( (void*)L$1 );
	}
	label$232:;
	label$231:;
	if( R$1 == (uint8*)0ull ) goto label$234;
	{
		free( (void*)R$1 );
	}
	label$234:;
	label$233:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$228:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static uint16* HDEFJOINW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$235:;
	uint16* L$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	L$1 = vr$1;
	uint16* R$1;
	uint16* vr$2 = HMACRO_GETARGW( ARGTB$1, 1ll );
	R$1 = vr$2;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ((int64)-(L$1 != (uint16*)0ull) & (int64)-(R$1 != (uint16*)0ull)) == 0ll ) goto label$238;
	{
		DWSTRCONCATASSIGN( &RES$1, L$1 );
		DWSTRCONCATASSIGN( &RES$1, R$1 );
	}
	goto label$237;
	label$238:;
	{
		*ERRNUM$1 = 1ll;
	}
	label$237:;
	fb$result$1 = *(uint16**)&RES$1;
	label$236:;
	return fb$result$1;
}

static FBSTRING* HDEFQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$239:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$242;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"$\x22", 3ll, 0 );
		FBSTRING* vr$4 = HREPLACE( ARG$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)vr$4, -1ll, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"\x22", 2ll, 0 );
	}
	goto label$241;
	label$242:;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)"\x22\x22", 3ll, 0 );
	}
	label$241:;
	if( ARG$1 == (uint8*)0ull ) goto label$244;
	{
		free( (void*)ARG$1 );
	}
	label$244:;
	label$243:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$240:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static uint16* HDEFQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$245:;
	uint16* ARG$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ARG$1 == (uint16*)0ull ) goto label$248;
	{
		uint16* TMP$123$2;
		uint16* TMP$124$2;
		uint16* TMP$125$2;
		uint16* TMP$126$2;
		uint16* vr$2 = fb_StrToWstr( (uint8*)"$\x22" );
		TMP$123$2 = vr$2;
		DWSTRCONCATASSIGN( &RES$1, TMP$123$2 );
		fb_WstrDelete( (uint16*)TMP$123$2 );
		uint16* vr$3 = fb_StrToWstr( (uint8*)"\x22\x22" );
		TMP$125$2 = vr$3;
		uint16* vr$4 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$124$2 = vr$4;
		uint16* vr$5 = HREPLACEW( ARG$1, TMP$124$2, TMP$125$2 );
		DWSTRCONCATASSIGN( &RES$1, vr$5 );
		fb_WstrDelete( (uint16*)TMP$125$2 );
		fb_WstrDelete( (uint16*)TMP$124$2 );
		uint16* vr$6 = fb_StrToWstr( (uint8*)"\x22" );
		TMP$126$2 = vr$6;
		DWSTRCONCATASSIGN( &RES$1, TMP$126$2 );
		fb_WstrDelete( (uint16*)TMP$126$2 );
	}
	goto label$247;
	label$248:;
	{
		uint16* TMP$127$2;
		uint16* vr$7 = fb_StrToWstr( (uint8*)"\x22\x22" );
		TMP$127$2 = vr$7;
		DWSTRCONCATASSIGN( &RES$1, TMP$127$2 );
		fb_WstrDelete( (uint16*)TMP$127$2 );
	}
	label$247:;
	fb$result$1 = *(uint16**)&RES$1;
	label$246:;
	return fb$result$1;
}

static FBSTRING* HDEFUNQUOTEZ_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$249:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$252;
	{
		int64 TMP$128$2;
		int64 TMP$130$2;
		int64 LENGTH$2;
		int64 vr$3 = fb_StrLen( (void*)ARG$1, 0ll );
		LENGTH$2 = vr$3;
		if( LENGTH$2 < 3ll ) goto label$253;
		TMP$128$2 = (int64)-((((int64)-((uint64)(int64)*ARG$1 == 36ull) & (int64)-((uint64)(int64)*(uint8*)((uint8*)ARG$1 + 1ll) == 34ull)) & (int64)-((uint64)(int64)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1ll) == 34ull)) != 0ll);
		goto label$398;
		label$253:;
		TMP$128$2 = 0ll;
		label$398:;
		if( TMP$128$2 == 0ll ) goto label$255;
		{
			FBSTRING TMP$129$3;
			__builtin_memset( &TMP$129$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$19 = fb_StrMid( (FBSTRING*)vr$18, 3ll, LENGTH$2 + -3ll );
			fb_StrAssign( (void*)&TMP$129$3, -1ll, (void*)vr$19, -1ll, 0 );
			FBSTRING* vr$21 = HREPLACE( (uint8*)*(uint8**)&TMP$129$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$21, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$129$3 );
		}
		goto label$254;
		label$255:;
		if( LENGTH$2 < 2ll ) goto label$257;
		TMP$130$2 = (int64)-(((int64)-((uint64)(int64)*ARG$1 == 34ull) & (int64)-((uint64)(int64)*(uint8*)((uint8*)((uint8*)ARG$1 + LENGTH$2) + -1ll) == 34ull)) != 0ll);
		goto label$399;
		label$257:;
		TMP$130$2 = 0ll;
		label$399:;
		if( TMP$130$2 == 0ll ) goto label$256;
		{
			FBSTRING TMP$131$3;
			__builtin_memset( &TMP$131$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)ARG$1 );
			FBSTRING* vr$35 = fb_StrMid( (FBSTRING*)vr$34, 2ll, LENGTH$2 + -2ll );
			fb_StrAssign( (void*)&TMP$131$3, -1ll, (void*)vr$35, -1ll, 0 );
			FBSTRING* vr$37 = HREPLACE( (uint8*)*(uint8**)&TMP$131$3, (uint8*)"\x22\x22", (uint8*)"\x22" );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$37, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$131$3 );
		}
		goto label$254;
		label$256:;
		{
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)ARG$1, 0ll, 0 );
		}
		label$254:;
	}
	label$252:;
	label$251:;
	if( ARG$1 == (uint8*)0ull ) goto label$259;
	{
		free( (void*)ARG$1 );
	}
	label$259:;
	label$258:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$250:;
	FBSTRING* vr$45 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$45;
}

static uint16* HDEFUNQUOTEW_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	uint16* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$260:;
	uint16* ARG$1;
	uint16* vr$1 = HMACRO_GETARGW( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	static struct $8DWSTRING RES$1;
	DWSTRASSIGN( &RES$1, (uint16*)0ull );
	if( ARG$1 == (uint16*)0ull ) goto label$263;
	{
		int64 TMP$132$2;
		int64 TMP$136$2;
		int64 LENGTH$2;
		int64 vr$2 = fb_WstrLen( (uint16*)ARG$1 );
		LENGTH$2 = vr$2;
		if( LENGTH$2 < 3ll ) goto label$264;
		TMP$132$2 = (int64)-((((int64)-((uint64)(int64)*ARG$1 == 36ull) & (int64)-((uint64)(int64)*(uint16*)((uint8*)ARG$1 + 2ll) == 34ull)) & (int64)-((uint64)(int64)*(uint16*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (1ll & 63ll))) + -2ll) == 34ull)) != 0ll);
		goto label$400;
		label$264:;
		TMP$132$2 = 0ll;
		label$400:;
		if( TMP$132$2 == 0ll ) goto label$266;
		{
			uint16* TMP$133$3;
			uint16* TMP$134$3;
			uint16* TMP$135$3;
			uint16* vr$16 = fb_StrToWstr( (uint8*)"\x22" );
			TMP$135$3 = vr$16;
			uint16* vr$17 = fb_StrToWstr( (uint8*)"\x22\x22" );
			TMP$134$3 = vr$17;
			uint16* vr$19 = fb_WstrMid( (uint16*)ARG$1, 3ll, LENGTH$2 + -3ll );
			TMP$133$3 = vr$19;
			uint16* vr$20 = HREPLACEW( TMP$133$3, TMP$134$3, TMP$135$3 );
			DWSTRASSIGN( &RES$1, vr$20 );
			fb_WstrDelete( (uint16*)TMP$135$3 );
			fb_WstrDelete( (uint16*)TMP$134$3 );
			fb_WstrDelete( (uint16*)TMP$133$3 );
		}
		goto label$265;
		label$266:;
		if( LENGTH$2 < 2ll ) goto label$268;
		TMP$136$2 = (int64)-(((int64)-((uint64)(int64)*ARG$1 == 34ull) & (int64)-((uint64)(int64)*(uint16*)((uint8*)((uint8*)ARG$1 + (LENGTH$2 << (1ll & 63ll))) + -2ll) == 34ull)) != 0ll);
		goto label$401;
		label$268:;
		TMP$136$2 = 0ll;
		label$401:;
		if( TMP$136$2 == 0ll ) goto label$267;
		{
			uint16* TMP$137$3;
			uint16* TMP$138$3;
			uint16* TMP$139$3;
			uint16* vr$30 = fb_StrToWstr( (uint8*)"\x22" );
			TMP$139$3 = vr$30;
			uint16* vr$31 = fb_StrToWstr( (uint8*)"\x22\x22" );
			TMP$138$3 = vr$31;
			uint16* vr$33 = fb_WstrMid( (uint16*)ARG$1, 2ll, LENGTH$2 + -2ll );
			TMP$137$3 = vr$33;
			uint16* vr$34 = HREPLACEW( TMP$137$3, TMP$138$3, TMP$139$3 );
			DWSTRASSIGN( &RES$1, vr$34 );
			fb_WstrDelete( (uint16*)TMP$139$3 );
			fb_WstrDelete( (uint16*)TMP$138$3 );
			fb_WstrDelete( (uint16*)TMP$137$3 );
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
	fb$result$1 = *(uint16**)&RES$1;
	label$261:;
	return fb$result$1;
}

static FBSTRING* HDEFEVAL_CB( struct $11LEXPP_ARGTB* ARGTB$1, int64* ERRNUM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$269:;
	uint8* ARG$1;
	uint8* vr$1 = HMACRO_GETARGZ( ARGTB$1, 0ll );
	ARG$1 = vr$1;
	FBSTRING RES$1;
	fb_StrInit( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	if( ARG$1 == (uint8*)0ull ) goto label$272;
	{
		LEXPUSHCTX(  );
		LEXINIT( 0ll, -1ll );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) + 1ll;
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8608ll), ARG$1 );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8600ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8608ll);
		int64 vr$11 = fb_StrLen( (void*)ARG$1, 0ll );
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8592ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8592ll) + vr$11;
		DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8608ll), (uint8*)"\x0A" );
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8600ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8608ll);
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8592ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8592ll) + 1ll;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$21 = CEXPRESSION(  );
		EXPR$2 = vr$21;
		$9FB_ERRMSG ERRMSG$2;
		ERRMSG$2 = 0ll;
		if( EXPR$2 == (struct $7ASTNODE*)0ull ) goto label$274;
		{
			struct $7ASTNODE* vr$22 = ASTOPTIMIZETREE( EXPR$2 );
			EXPR$2 = vr$22;
			if( *(int64*)EXPR$2 != 16ll ) goto label$276;
			{
				FBSTRING* vr$24 = ASTCONSTFLUSHTOSTR( EXPR$2 );
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$24, -1ll, 0 );
				int64 vr$26 = LEXGETTOKEN( 0ll );
				if( vr$26 == 257ll ) goto label$278;
				{
					ERRMSG$2 = 17ll;
				}
				label$278:;
				label$277:;
			}
			goto label$275;
			label$276:;
			int64 vr$27 = ASTISCONSTANT( EXPR$2 );
			if( vr$27 == 0ll ) goto label$279;
			{
				FBSTRING TMP$142$4;
				FBSTRING TMP$143$4;
				FBSTRING* vr$30 = HREPLACE( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 24ll) + 96ll), (uint8*)"\x22", (uint8*)"\x22\x22" );
				__builtin_memset( &TMP$142$4, 0, 24ll );
				FBSTRING* vr$33 = fb_StrConcat( &TMP$142$4, (void*)"\x22", 2ll, (void*)vr$30, -1ll );
				__builtin_memset( &TMP$143$4, 0, 24ll );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$143$4, (void*)vr$33, -1ll, (void*)"\x22", 2ll );
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$36, -1ll, 0 );
				int64 vr$38 = LEXGETTOKEN( 0ll );
				if( vr$38 == 257ll ) goto label$281;
				{
					ERRMSG$2 = 17ll;
				}
				label$281:;
				label$280:;
			}
			goto label$275;
			label$279:;
			{
				ASTDELTREE( EXPR$2 );
				ERRMSG$2 = 11ll;
				fb_StrAssign( (void*)&RES$1, -1ll, (void*)"0", 2ll, 0 );
			}
			label$275:;
		}
		goto label$273;
		label$274:;
		{
			ERRMSG$2 = 17ll;
		}
		label$273:;
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8568ll) + -1ll;
		LEXPOPCTX(  );
		if( ERRMSG$2 == 0ll ) goto label$283;
		{
			ERRREPORTEX( ERRMSG$2, (uint8*)ARG$1, 0ll, 1ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, -1ll, 0ll, 0ll );
		}
		label$283:;
		label$282:;
	}
	label$272:;
	label$271:;
	if( ARG$1 == (uint8*)0ull ) goto label$285;
	{
		free( (void*)ARG$1 );
	}
	label$285:;
	label$284:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$270:;
	FBSTRING* vr$47 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$47;
}

static void HRESETDEFHASH( void )
{
	label$338:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	{
		I$1 = 0ll;
		int64 TMP$220$2;
		TMP$220$2 = *(int64*)((uint8*)&SYMB$ + 197496ll) + -1ll;
		goto label$340;
		label$343:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), *(struct $8HASHITEM**)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (I$1 << (4ll & 63ll))) + 184ll), *(uint64*)((uint8*)((uint8*)((uint8*)&SYMB$ + 197344ll) + (I$1 << (4ll & 63ll))) + 192ll) );
		}
		label$341:;
		I$1 = I$1 + 1ll;
		label$340:;
		if( I$1 <= TMP$220$2 ) goto label$343;
		label$342:;
	}
	*(int64*)((uint8*)&SYMB$ + 197496ll) = 0ll;
	label$339:;
}

static void HDELDEFINEPARAMS( struct $8FBSYMBOL* S$1 )
{
	label$375:;
	struct $11FB_DEFPARAM* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 8ll );
	struct $11FB_DEFPARAM* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	label$377:;
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$378;
	{
		NXT$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( *(uint8**)PARAM$1 == (uint8*)0ull ) goto label$380;
		{
			free( *(void**)PARAM$1 );
		}
		label$380:;
		label$379:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197344ll), (void*)PARAM$1 );
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
	__builtin_memset( &TOK$1, 0, 8ll );
	struct $9FB_DEFTOK* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	TOK$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
	label$383:;
	if( TOK$1 == (struct $9FB_DEFTOK*)0ull ) goto label$384;
	{
		NXT$1 = *(struct $9FB_DEFTOK**)((uint8*)TOK$1 + 24ll);
		SYMBDELDEFINETOK( TOK$1 );
		TOK$1 = NXT$1;
	}
	goto label$383;
	label$384:;
	label$382:;
}
