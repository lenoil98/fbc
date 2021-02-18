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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
struct $14ASM64_SAVEDREG {
	int32 ID;
	int32 SDVREG;
	int32 SDOFFSET;
	int32 SPILBRANCH1;
};
__FB_STATIC_ASSERT( sizeof( struct $14ASM64_SAVEDREG ) == 16 );
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
struct $6TFLIST {
	int32 TOTITEMS;
	int32 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int32 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 56 );
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
typedef int32 $13FB_COMPTARGET;
struct $13ASM64_CONTEXT {
	int32 INDENT;
	int32 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
	FBSTRING PROLOG_TXT;
	FBSTRING PROC_TXT;
	FBSTRING EPILOG_TXT;
	int32 ARGCPTMAX;
	int32 ARGINTEG;
	int32 ARGFLOAT;
	int32 OFS;
	int32 STK;
	int32 STKMAX;
	int32 STKSPIL;
	int32 STKCOPY;
	int32 USEDREG;
	int32 JMPREG;
	int32 JMPVREG;
	int32 JMPPASS;
	int32 CTORCOUNT;
	int32 DTORCOUNT;
	boolean ROUNDFLOAT;
	boolean PROCCALLING;
	struct $6TFLIST SPILLVREGS;
	int32 VREG_COUNT;
	struct $8FBSYMBOL* LABELBRANCH2;
	struct $8FBSYMBOL* LABELJUMP;
	boolean VARIADIC;
	$13FB_COMPTARGET TARGET;
	int32 OPEREG;
	int32 OPEPASS;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_CONTEXT ) == 224 );
struct $6DBGCTX {
	uint32 TYPECNT;
	int32 LNUM;
	FBSTRING PREVFILENAME;
	FBSTRING LINEFILENAME;
	struct $8FBSYMBOL* PROC;
	int32 STRNB;
	int32 STRMAX;
	int32 STABNB;
	int32 STABMAX;
	int32 OFFST;
};
__FB_STATIC_ASSERT( sizeof( struct $6DBGCTX ) == 56 );
struct $7TDBGSTR {
	int32 OFFST;
	FBSTRING TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7TDBGSTR ) == 16 );
struct $8TDBGSTAB {
	int32 STAB;
	FBSTRING VALUE;
};
__FB_STATIC_ASSERT( sizeof( struct $8TDBGSTAB ) == 16 );
union $5USTAB {
	int64 FULL;
	struct {
		int32 OFFST;
		int16 COD;
		int16 DESC;
	};
};
__FB_STATIC_ASSERT( sizeof( union $5USTAB ) == 8 );
struct $7FBARRAYIKvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 120 );
typedef int32 $6IR_OPT;
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef int32 $14IR_OPTIONVALUE;
struct $7FBARRAYIiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIiE ) == 120 );
typedef int32 $19FB_CVA_LIST_TYPEDEF;
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int32 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 12 );
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayRedimObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
int32 fb_ArrayRedimPresvObj( struct $7FBARRAYIvE*, uint32, void*, void*, uint32, ... );
void fb_ArrayDestructStr( struct $7FBARRAYIvE* );
int32 fb_ArrayEraseObj( struct $7FBARRAYIvE*, void*, void* );
int32 fb_ArrayUBound( struct $7FBARRAYIKvE*, int32 );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
double pow( double, double );
double fb_FRACd( double );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
void fb_StrAssignMid( FBSTRING*, int32, int32, FBSTRING* );
FBSTRING* fb_StrFill1( int32, int32 );
int32 fb_StrLen( void*, int32 );
uint32 fb_ASC( FBSTRING*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_RTRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_HEX_i( uint32 );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_HEXEx_i( uint32, int32 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
static void fb_ctor__irzgas64( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
int32 FBGETOPTION( int32 );
FBSTRING* FBGETENTRYPOINT( void );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBISDATADESC( struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32, struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMFIRSTELM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMNEXTELM( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int32, tmp$41 );
int32 HFILEEXISTS( uint8* );
int32 PATHISABSOLUTE( uint8* );
FBSTRING* HCURDIR( void );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
void IRHLINIT( void );
void IRHLEND( void );
void IRHLEMITPROCBEGIN( void );
void IRHLEMITPROCEND( void );
void IRHLEMITPUSHARG( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32 );
struct $6IRVREG* IRHLALLOCVREG( int32, struct $8FBSYMBOL* );
struct $6IRVREG* IRHLALLOCVRIMM( int32, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIMMF( int32, struct $8FBSYMBOL*, double );
struct $6IRVREG* IRHLALLOCVRVAR( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIDX( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVRPTR( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVROFS( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
void IRFOREACHDATASTMT( tmp$41 );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT*, struct $13ASM64_CONTEXT* );
static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* );
static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* );
static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX*, struct $6DBGCTX* );
static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* );
static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* );
static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR*, struct $7TDBGSTR* );
static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* );
static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* );
static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB*, struct $8TDBGSTAB* );
static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static void CHECK_OPTIM( FBSTRING* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL*, int32 );
static void HWRITEASM64( FBSTRING*, int32 );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int32 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFEND( void );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
void SAVE_CALL( FBSTRING*, struct $6IRVREG*, int32 );
int32 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* );
static void DBG_ADDSTAB( FBSTRING*, uint8, int16, FBSTRING* );
static void REG_FREEABLE( FBSTRING* );
static int32 PW2( int32 );
static void ASM_SECTION( FBSTRING* );
static void EMITOP3_OP4( FBSTRING* );
void DBG_FILENAME( FBSTRING* );
static FBSTRING* HFLOATTOHEX_ASM64( double, int32, int8 );
static int32 DBG_ADDSTR( FBSTRING*, int32 );
static void DBG_EMITSTR( void );
static void DBG_EMITSTAB( void );
void EDBGEMITHEADER_ASM64( uint8* );
void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL*, int32 );
void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL*, int32 );
void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* );
void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* );
static FBSTRING* HDECLPOINTER_ASM64( int32* );
static void HDECLUDT_ASM64( struct $8FBSYMBOL*, int32 );
static void HDECLENUM_ASM64( struct $8FBSYMBOL* );
static void REG_MARK( struct $8FBSYMBOL* );
static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 );
static void REG_SPILLING( int32 );
static void REG_SAVE( void );
static void REG_ALLOWED( boolean );
static int32 REG_FINDFREE( int32, int32 );
static void REG_CALLPTR( FBSTRING*, FBSTRING* );
static void REG_BRANCH( struct $8FBSYMBOL* );
int32 REG_FINDREAL( int32 );
uint8* REG_TEMPO( void );
static void REG_TRANSFER( int32, int32 );
static void MEMCLEAR( int32, FBSTRING*, int32 );
static void MEMCOPY( int32, FBSTRING*, FBSTRING*, int32, int32 );
static void _INIT( void );
static void _END( void );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void NO_ROUNDSD( uint8* );
static int32 _EMITBEGIN( void );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int32 _SUPPORTSOP( int32, int32 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static int32 PARAM_ANALYZE( $11FB_DATATYPE, struct $8FBSYMBOL*, int32*, int32*, int32* );
static void REG_FILLM( int32, struct $7FBARRAYIiE*, int32, int32, int32 );
static void REG_FILLR( int32, FBSTRING*, int32, struct $7FBARRAYIiE*, int32 );
static void REG_FILLX( int32, FBSTRING*, int32 );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void PREPARE_IDX( struct $6IRVREG*, FBSTRING*, FBSTRING* );
static uint8* HGETBOPCODE( int32 );
static void RESTORE_VRREG( struct $6IRVREG*, int32 );
static void BOP_FLOAT( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, struct $8FBSYMBOL* );
static void HLOADOPERANDSANDWRITEBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HEMITROUNDFLOAT( $11FB_DATATYPE, $11FB_DATATYPE );
static void EMITSTORESTRUCT( struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING* );
static int32 HISSTRUCTIN2REGS( struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( struct $8FBSYMBOL*, FBSTRING*, FBSTRING*, struct $6IRVREG*, int32, boolean, boolean );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITRETURN( int32 );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITCOMMENT( uint8* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITFBCTINFSTRING( uint8* );
static void _EMITVARINISTR( int64, uint8*, int64 );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32 );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( int32, struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$56)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int32, struct $8FBSYMBOL*, int32, uint8* );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint32*, int64 );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int32 );
typedef void (*tmp$68)( uint8* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$76)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$53 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$54 EMITCALL;
	tmp$55 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$56 EMITBRANCH;
	tmp$57 EMITJMPTB;
	tmp$58 EMITMEM;
	tmp$59 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$60 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$61 EMITVARINII;
	tmp$62 EMITVARINIF;
	tmp$63 EMITVARINIOFS;
	tmp$64 EMITVARINISTR;
	tmp$65 EMITVARINIWSTR;
	tmp$66 EMITVARINIPAD;
	tmp$67 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$68 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$69 ALLOCVREG;
	tmp$70 ALLOCVRIMM;
	tmp$71 ALLOCVRIMMF;
	tmp$72 ALLOCVRVAR;
	tmp$73 ALLOCVRIDX;
	tmp$74 ALLOCVRPTR;
	tmp$72 ALLOCVROFS;
	tmp$75 SETVREGDATATYPE;
	tmp$76 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
extern struct $7IR_VTBL IRGAS64_VTBL$;
struct $5IRCTX {
	int32 INITED;
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 280 );
extern struct $5IRCTX IR$;
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
struct $11IRHLCONTEXT {
	int32 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 92 );
extern struct $11IRHLCONTEXT IRHL$;
static struct $6DBGCTX CTXDBG$;
static int32 REGHANDLE$[18];
struct $13ASM64_REGROOM {
	int32 STATUS;
	struct $14ASM64_SAVEDREG* VREG;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_REGROOM ) == 8 );
static struct $13ASM64_REGROOM REGROOM$[18];
static struct $13ASM64_CONTEXT CTX$;
struct $7FBARRAYI7TDBGSTRE {
	struct $7TDBGSTR* DATA;
	struct $7TDBGSTR* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI7TDBGSTRE ) == 120 );
static struct $7FBARRAYI7TDBGSTRE DBGSTR$ = { (struct $7TDBGSTR*)0u, (struct $7TDBGSTR*)0u, 0, 16, 0, 8, {  } };
struct $7FBARRAYI8TDBGSTABE {
	struct $8TDBGSTAB* DATA;
	struct $8TDBGSTAB* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8TDBGSTABE ) == 120 );
static struct $7FBARRAYI8TDBGSTABE DBGSTAB$ = { (struct $8TDBGSTAB*)0u, (struct $8TDBGSTAB*)0u, 0, 16, 0, 8, {  } };
static int32 REMAPTB$[26] = { 7, 16, 2, 3, 4, 5, 6, 6, 9, 10, 9, 1, 8, 9, 10, 11, 12, 13, 14, 17 };
static uint8* STABSTB$[17] = { (uint8*)"integer:t1=-1", (uint8*)"void:t7=-11", (uint8*)"byte:t2=-6", (uint8*)"ubyte:t3=-5", (uint8*)"char:t4=-2", (uint8*)"short:t5=-3", (uint8*)"ushort:t6=-7", (uint8*)"uinteger:t8=-8", (uint8*)"longint:t9=-31", (uint8*)"ulongint:t10=-32", (uint8*)"single:t11=-12", (uint8*)"double:t12=-13", (uint8*)"string:t13=s12data:*2,0,64;len:1,64,64;size:1,128,64;;", (uint8*)"fixstr:t14=-2", (uint8*)"pchar:t15=*4;", (uint8*)"boolean:t16=@s8;-16", (uint8*)"va_list:t17=-11" };
static uint8* REGSTRQ$[18] = { (uint8*)"rax", (uint8*)"rbx", (uint8*)"rcx", (uint8*)"rdx", (uint8*)"rsi", (uint8*)"rdi", (uint8*)"rbp", (uint8*)"rsp", (uint8*)"r8", (uint8*)"r9", (uint8*)"r10", (uint8*)"r11", (uint8*)"r12", (uint8*)"r13", (uint8*)"r14", (uint8*)"r15", (uint8*)"rip", (uint8*)"* X_Q" };
static uint8* REGSTRD$[18] = { (uint8*)"eax", (uint8*)"ebx", (uint8*)"ecx", (uint8*)"edx", (uint8*)"esi", (uint8*)"edi", (uint8*)"ebp", (uint8*)"esp", (uint8*)"r8d", (uint8*)"r9d", (uint8*)"r10d", (uint8*)"r11d", (uint8*)"r12d", (uint8*)"r13d", (uint8*)"r14d", (uint8*)"r15d", (uint8*)"", (uint8*)"* X_D" };
static uint8* REGSTRW$[18] = { (uint8*)"ax", (uint8*)"bx", (uint8*)"cx", (uint8*)"dx", (uint8*)"si", (uint8*)"di", (uint8*)"bp", (uint8*)"sp", (uint8*)"r8w", (uint8*)"r9w", (uint8*)"r10w", (uint8*)"r11w", (uint8*)"r12w", (uint8*)"r13w", (uint8*)"r14w", (uint8*)"r15w", (uint8*)"", (uint8*)"* X_W" };
static uint8* REGSTRB$[18] = { (uint8*)"al", (uint8*)"bl", (uint8*)"cl", (uint8*)"dl", (uint8*)"sil", (uint8*)"dil", (uint8*)"bpl", (uint8*)"spl", (uint8*)"r8b", (uint8*)"r9b", (uint8*)"r10b", (uint8*)"r11b", (uint8*)"r12b", (uint8*)"r13b", (uint8*)"r14b", (uint8*)"r15b", (uint8*)"", (uint8*)"* X_B" };
static int8 REG_PRIO$[13] = { (int8)11, (int8)10, (int8)8, (int8)9, (int8)3, (int8)2, (int8)12, (int8)13, (int8)14, (int8)15, (int8)1, (int8)5, (int8)4 };
struct $8FBARRAY1IiE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IiE ) == 36 );
static struct $8FBARRAY1IiE LISTREG$ = { (int32*)0u, (int32*)0u, 0, 4, 1, 17, {  } };
struct $7IR_VTBL IRGAS64_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)0u, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)&_EMITRETURN, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$53)0u, (tmp$51)&_EMITADDR, (tmp$54)&_EMITCALL, (tmp$55)&_EMITCALLPTR, (tmp$45)0u, (tmp$52)&_EMITJUMPPTR, (tmp$56)&_EMITBRANCH, (tmp$57)&_EMITJMPTB, (tmp$58)&_EMITMEM, (tmp$59)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$60)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$61)&_EMITVARINII, (tmp$62)&_EMITVARINIF, (tmp$63)&_EMITVARINIOFS, (tmp$64)&_EMITVARINISTR, (tmp$65)&_EMITVARINIWSTR, (tmp$66)&_EMITVARINIPAD, (tmp$67)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$68)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$69)&IRHLALLOCVREG, (tmp$70)&IRHLALLOCVRIMM, (tmp$71)&IRHLALLOCVRIMMF, (tmp$72)&IRHLALLOCVRVAR, (tmp$73)&IRHLALLOCVRIDX, (tmp$74)&IRHLALLOCVRPTR, (tmp$72)&IRHLALLOCVROFS, (tmp$75)&_SETVREGDATATYPE, (tmp$76)0u, (tmp$51)0u, (tmp$44)0u, (tmp$45)0u };

void DBG_FILENAME( FBSTRING* FILENAME$1 )
{
	label$165:;
	int32 vr$1 = fb_StrCompare( (void*)FILENAME$1, -1, (void*)((uint8*)&CTXDBG$ + 8), -1 );
	if( vr$1 == 0 ) goto label$168;
	{
		FBSTRING TMP$315$2;
		__builtin_memset( &TMP$315$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$315$2, -1, (void*)"0", 2, 0 );
		DBG_ADDSTAB( FILENAME$1, (uint8)132u, (int16)0, &TMP$315$2 );
		fb_StrDelete( (FBSTRING*)&TMP$315$2 );
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 8), -1, (void*)FILENAME$1, -1, 0 );
	}
	label$168:;
	label$167:;
	label$166:;
}

void EDBGEMITHEADER_ASM64( uint8* FILENAME$1 )
{
	FBSTRING TMP$374$1;
	FBSTRING TMP$375$1;
	FBSTRING TMP$376$1;
	FBSTRING TMP$378$1;
	FBSTRING TMP$379$1;
	FBSTRING TMP$380$1;
	FBSTRING TMP$381$1;
	FBSTRING TMP$384$1;
	FBSTRING TMP$385$1;
	FBSTRING TMP$386$1;
	label$242:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	*(uint32*)&CTXDBG$ = 1u;
	*(int32*)((uint8*)&CTXDBG$ + 36) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 40) = 1000;
	int32 vr$1 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 16u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
	if( vr$1 == 0 ) goto label$244;
	void* vr$2 = fb_ErrorThrowAt( 866, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$2;
	label$244:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = -1;
	*(int32*)((uint8*)&CTXDBG$ + 48) = 1000;
	int32 vr$3 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 16u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
	if( vr$3 == 0 ) goto label$245;
	void* vr$4 = fb_ErrorThrowAt( 869, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
	goto *vr$4;
	label$245:;
	*(int32*)((uint8*)&CTXDBG$ + 52) = 1;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	__builtin_memset( &TMP$376$1, 0, 12 );
	uint8* vr$6 = HESCAPE( (uint8*)FILENAME$1 );
	__builtin_memset( &TMP$374$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$374$1, (void*)".file \x22", 8, (void*)vr$6, 0 );
	__builtin_memset( &TMP$375$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$375$1, (void*)vr$9, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$376$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$376$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$376$1 );
	uint8* vr$16 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$16, 0, 0 );
	__builtin_memset( &TMP$379$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$379$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$378$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$378$1, -1, (void*)"DUMMY", 6, 0 );
	DBG_ADDSTAB( &TMP$378$1, (uint8)0u, (int16)0, &TMP$379$1 );
	fb_StrDelete( (FBSTRING*)&TMP$379$1 );
	fb_StrDelete( (FBSTRING*)&TMP$378$1 );
	__builtin_memset( &TMP$381$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$381$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$380$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$380$1, -1, (void*)"FreeBASIC 1.08.0", 17, 0 );
	DBG_ADDSTAB( &TMP$380$1, (uint8)255u, (int16)0, &TMP$381$1 );
	fb_StrDelete( (FBSTRING*)&TMP$381$1 );
	fb_StrDelete( (FBSTRING*)&TMP$380$1 );
	int32 vr$34 = PATHISABSOLUTE( FILENAME$1 );
	if( vr$34 != 0 ) goto label$247;
	{
		FBSTRING TMP$382$2;
		FBSTRING TMP$383$2;
		__builtin_memset( &TMP$383$2, 0, 12 );
		FBSTRING* vr$37 = HCURDIR(  );
		__builtin_memset( &TMP$382$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$382$2, (void*)vr$37, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)&TMP$383$2, -1, (void*)vr$40, -1, 0 );
		DBG_ADDSTAB( &TMP$383$2, (uint8)100u, (int16)0, &LNAME$1 );
		fb_StrDelete( (FBSTRING*)&TMP$383$2 );
	}
	label$247:;
	label$246:;
	__builtin_memset( &TMP$384$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$384$1, -1, (void*)FILENAME$1, 0, 0 );
	DBG_ADDSTAB( &TMP$384$1, (uint8)100u, (int16)0, &LNAME$1 );
	fb_StrDelete( (FBSTRING*)&TMP$384$1 );
	__builtin_memset( &TMP$386$1, 0, 12 );
	__builtin_memset( &TMP$385$1, 0, 12 );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$385$1, (void*)&LNAME$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$386$1, -1, (void*)vr$53, -1, 0 );
	HWRITEASM64( &TMP$386$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$386$1 );
	{
		int32 I$2;
		I$2 = 0;
		label$251:;
		{
			FBSTRING TMP$387$3;
			FBSTRING STRG$3;
			fb_StrInit( (void*)&STRG$3, -1, *(void**)((uint8*)STABSTB$ + (I$2 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$387$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$387$3, -1, (void*)"0", 2, 0 );
			DBG_ADDSTAB( &STRG$3, (uint8)128u, (int16)0, &TMP$387$3 );
			fb_StrDelete( (FBSTRING*)&TMP$387$3 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			fb_StrDelete( (FBSTRING*)&STRG$3 );
		}
		label$249:;
		I$2 = I$2 + 1;
		label$248:;
		if( I$2 <= 16 ) goto label$251;
		label$250:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$243:;
}

void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 SECTION$1 )
{
	FBSTRING TMP$390$1;
	label$252:;
	int32 T$1;
	int32 ATTRIB$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$255;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$253;
	}
	label$255:;
	label$254:;
	{
		if( SECTION$1 != 0 ) goto label$257;
		label$258:;
		{
			T$1 = 36;
		}
		goto label$256;
		label$257:;
		if( SECTION$1 != 2 ) goto label$259;
		label$260:;
		{
			T$1 = 40;
		}
		goto label$256;
		label$259:;
		{
			T$1 = 38;
		}
		label$261:;
		label$256:;
	}
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0)) == 0 ) goto label$263;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":G", 3, 0 );
	}
	goto label$262;
	label$263:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$264;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":S", 3, 0 );
	}
	goto label$262;
	label$264:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
	}
	label$262:;
	FBSTRING* vr$18 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	__builtin_memset( &TMP$390$1, 0, 12 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&TMP$390$1, -1, (void*)vr$21, 0, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &TMP$390$1 );
	fb_StrDelete( (FBSTRING*)&TMP$390$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$253:;
}

void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int32 ISSTATIC$1 )
{
	label$265:;
	int32 T$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	fb_StrAssign( (void*)&DESC$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
	if( ISSTATIC$1 == 0 ) goto label$268;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$270;
		{
			fb_StrDelete( (FBSTRING*)&VALUE$1 );
			fb_StrDelete( (FBSTRING*)&DESC$1 );
			goto label$266;
		}
		label$270:;
		label$269:;
		if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 56) == (struct $7ASTNODE*)0u ) goto label$272;
		{
			T$1 = 38;
		}
		goto label$271;
		label$272:;
		{
			T$1 = 40;
		}
		label$271:;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":V", 3, 0 );
		uint8* vr$10 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$10, 0, 0 );
	}
	goto label$267;
	label$268:;
	{
		T$1 = 128;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
		FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$14, -1, 0 );
	}
	label$267:;
	FBSTRING* vr$16 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$16, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &VALUE$1 );
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$266:;
}

void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING TMP$396$1;
	FBSTRING TMP$397$1;
	label$273:;
	static FBSTRING DESC$1;
	static FBSTRING PROCNAME$1;
	static FBSTRING FILENAME$1;
	fb_StrAssign( (void*)&FILENAME$1, -1, (void*)((uint8*)&ENV$ + 280), 261, 0 );
	DBG_FILENAME( &FILENAME$1 );
	if( (*(int32*)((uint8*)PROC$1 + 12) & 4096) == 0 ) goto label$276;
	{
		FBSTRING TMP$392$2;
		FBSTRING TMP$393$2;
		__builtin_memset( &TMP$393$2, 0, 12 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( PROC$1 );
		fb_StrAssign( (void*)&TMP$393$2, -1, (void*)vr$4, 0, 0 );
		__builtin_memset( &TMP$392$2, 0, 12 );
		FBSTRING* vr$8 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&TMP$392$2, -1, (void*)vr$8, -1, 0 );
		DBG_ADDSTAB( &TMP$392$2, (uint8)42u, (int16)1, &TMP$393$2 );
		fb_StrDelete( (FBSTRING*)&TMP$393$2 );
		fb_StrDelete( (FBSTRING*)&TMP$392$2 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = 1;
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564);
		FBSTRING* vr$18 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	}
	goto label$275;
	label$276:;
	{
		uint8* vr$19 = SYMBGETDBGNAME( PROC$1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$19, 0, 0 );
	}
	label$275:;
	uint8* vr$20 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1, (void*)vr$20, 0, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) = PROC$1;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 32) == 0 ) goto label$278;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":F", 3, 0 );
	}
	goto label$277;
	label$278:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":f", 3, 0 );
	}
	label$277:;
	FBSTRING* vr$23 = HGETDATATYPE_ASM64( PROC$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$23, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)36u, (int16)*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16), &PROCNAME$1 );
	__builtin_memset( &TMP$397$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$397$1, -1, (void*)"0", 2, 0 );
	__builtin_memset( &TMP$396$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$396$1, -1, (void*)"", 1, 0 );
	DBG_ADDSTAB( &TMP$396$1, (uint8)68u, (int16)1, &TMP$397$1 );
	fb_StrDelete( (FBSTRING*)&TMP$397$1 );
	fb_StrDelete( (FBSTRING*)&TMP$396$1 );
	label$274:;
}

void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$398$1;
	FBSTRING TMP$401$1;
	label$279:;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	__builtin_memset( &TMP$398$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$398$1, *(void**)((uint8*)SYM$1 + 16), 0, (void*)":", 2 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, -1, 0 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$282;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"p", 2, 0 );
	}
	goto label$281;
	label$282:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"v", 2, 0 );
	}
	label$281:;
	FBSTRING* vr$10 = HGETDATATYPE_ASM64( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$10, -1, 0 );
	__builtin_memset( &TMP$401$1, 0, 12 );
	FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
	fb_StrAssign( (void*)&TMP$401$1, -1, (void*)vr$14, -1, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)160u, (int16)0, &TMP$401$1 );
	fb_StrDelete( (FBSTRING*)&TMP$401$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$280:;
}

int32 REG_FINDREAL( int32 VREG$1 )
{
	FBSTRING TMP$506$1;
	FBSTRING TMP$507$1;
	FBSTRING TMP$508$1;
	FBSTRING TMP$509$1;
	FBSTRING TMP$510$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$460:;
	int32 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$465:;
		{
			if( *(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2 & 31))) != VREG$1 ) goto label$467;
			{
				fb$result$1 = IREG$2;
				goto label$461;
			}
			label$467:;
			label$466:;
		}
		label$463:;
		IREG$2 = IREG$2 + 1;
		label$462:;
		if( IREG$2 <= 15 ) goto label$465;
		label$464:;
	}
	struct $14ASM64_SAVEDREG* V$1;
	V$1 = (struct $14ASM64_SAVEDREG*)0u;
	if( *(int32*)((uint8*)&CTX$ + 196) <= 0 ) goto label$469;
	{
		void* vr$5 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$5;
		label$470:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$471;
		{
			if( *(int32*)((uint8*)V$1 + 4) != VREG$1 ) goto label$473;
			{
				goto label$471;
			}
			label$473:;
			label$472:;
			void* vr$7 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$7;
		}
		goto label$470;
		label$471:;
	}
	label$469:;
	label$468:;
	if( V$1 != (struct $14ASM64_SAVEDREG*)0u ) goto label$475;
	{
		FBSTRING TMP$498$2;
		FBSTRING TMP$502$2;
		FBSTRING TMP$503$2;
		FBSTRING TMP$504$2;
		FBSTRING TMP$505$2;
		__builtin_memset( &TMP$498$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$498$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$498$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$498$2 );
		__builtin_memset( &TMP$504$2, 0, 12 );
		FBSTRING* vr$13 = fb_IntToStr( VREG$1 );
		__builtin_memset( &TMP$502$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$502$2, (void*)"FOUND AN ERROR : virtual register=", 35, (void*)vr$13, -1 );
		__builtin_memset( &TMP$503$2, 0, 12 );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$503$2, (void*)vr$16, -1, (void*)" no real register corresponding, using KREG_XXX", 48 );
		fb_StrAssign( (void*)&TMP$504$2, -1, (void*)vr$19, -1, 0 );
		HWRITEASM64( &TMP$504$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$504$2 );
		__builtin_memset( &TMP$505$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$505$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$505$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$505$2 );
		fb$result$1 = 17;
		goto label$461;
	}
	label$475:;
	label$474:;
	int32 vr$27 = REG_FINDFREE( VREG$1, -1 );
	REALREG$1 = vr$27;
	__builtin_memset( &TMP$510$1, 0, 12 );
	FBSTRING* vr$30 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$506$1, 0, 12 );
	FBSTRING* vr$34 = fb_StrConcat( &TMP$506$1, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REALREG$1 << (2 & 31))), 0 );
	__builtin_memset( &TMP$507$1, 0, 12 );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$507$1, (void*)vr$34, -1, (void*)", QWORD PTR ", 13 );
	__builtin_memset( &TMP$508$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$508$1, (void*)vr$37, -1, (void*)vr$30, -1 );
	__builtin_memset( &TMP$509$1, 0, 12 );
	FBSTRING* vr$43 = fb_StrConcat( &TMP$509$1, (void*)vr$40, -1, (void*)"[rbp]", 6 );
	fb_StrAssign( (void*)&TMP$510$1, -1, (void*)vr$43, -1, 0 );
	HWRITEASM64( &TMP$510$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$510$1 );
	*(int32*)((uint8*)V$1 + 4) = -2;
	fb$result$1 = REALREG$1;
	goto label$461;
	label$461:;
	return fb$result$1;
}

uint8* REG_TEMPO( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$476:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	static int32 COUNTER$1 = 9999999;
	COUNTER$1 = COUNTER$1 + 1;
	int32 vr$3 = REG_FINDFREE( COUNTER$1, -1 );
	REG$1 = vr$3;
	fb$result$1 = *(uint8**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31)));
	goto label$477;
	label$477:;
	return fb$result$1;
}

void SAVE_CALL( FBSTRING* FUNC$1, struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	int32 TMP$2838$1;
	label$2203:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2206;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = -2;
		label$2206:;
	}
	REG_SAVE(  );
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2207;
	int32 vr$1 = FBGETOPTION( 0 );
	TMP$2838$1 = -(vr$1 == 2);
	goto label$2212;
	label$2207:;
	TMP$2838$1 = 0;
	label$2212:;
	if( TMP$2838$1 == 0 ) goto label$2209;
	{
		FBSTRING TMP$2841$2;
		FBSTRING TMP$2842$2;
		FBSTRING TMP$2843$2;
		__builtin_memset( &TMP$2843$2, 0, 12 );
		__builtin_memset( &TMP$2841$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$2841$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		__builtin_memset( &TMP$2842$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$2842$2, (void*)vr$6, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$2843$2, -1, (void*)vr$9, -1, 0 );
		HWRITEASM64( &TMP$2843$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2843$2 );
	}
	goto label$2208;
	label$2209:;
	{
		FBSTRING TMP$2844$2;
		FBSTRING TMP$2845$2;
		__builtin_memset( &TMP$2845$2, 0, 12 );
		__builtin_memset( &TMP$2844$2, 0, 12 );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$2844$2, (void*)"call ", 6, (void*)FUNC$1, -1 );
		fb_StrAssign( (void*)&TMP$2845$2, -1, (void*)vr$16, -1, 0 );
		HWRITEASM64( &TMP$2845$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2845$2 );
	}
	label$2208:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2211;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
		label$2211:;
	}
	label$2204:;
}

__attribute__(( constructor )) static void fb_ctor__irzgas64( void )
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

static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 32), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 44), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 56), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 68), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 80), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 84), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 88), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 92), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 96), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 100), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 104), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 108), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 112), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 116), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 120), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 124), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 128), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 132), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 136), 0, 1 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 137), 0, 1 );
	__builtin_memset( (struct $6TFLIST*)((uint8*)THIS$1 + 140), 0, 56 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 196), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 200), 0, 4 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 204), 0, 4 );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 208), 0, 1 );
	__builtin_memset( ($13FB_COMPTARGET*)((uint8*)THIS$1 + 212), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 216), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 220), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT* THIS$1, struct $13ASM64_CONTEXT* __FB_RHS__$1 )
{
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 32), -1, (void*)((uint8*)__FB_RHS__$1 + 32), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 44), -1, (void*)((uint8*)__FB_RHS__$1 + 44), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 56), -1, (void*)((uint8*)__FB_RHS__$1 + 56), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 68), -1, (void*)((uint8*)__FB_RHS__$1 + 68), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 80) = *(int32*)((uint8*)__FB_RHS__$1 + 80);
	*(int32*)((uint8*)THIS$1 + 84) = *(int32*)((uint8*)__FB_RHS__$1 + 84);
	*(int32*)((uint8*)THIS$1 + 88) = *(int32*)((uint8*)__FB_RHS__$1 + 88);
	*(int32*)((uint8*)THIS$1 + 92) = *(int32*)((uint8*)__FB_RHS__$1 + 92);
	*(int32*)((uint8*)THIS$1 + 96) = *(int32*)((uint8*)__FB_RHS__$1 + 96);
	*(int32*)((uint8*)THIS$1 + 100) = *(int32*)((uint8*)__FB_RHS__$1 + 100);
	*(int32*)((uint8*)THIS$1 + 104) = *(int32*)((uint8*)__FB_RHS__$1 + 104);
	*(int32*)((uint8*)THIS$1 + 108) = *(int32*)((uint8*)__FB_RHS__$1 + 108);
	*(int32*)((uint8*)THIS$1 + 112) = *(int32*)((uint8*)__FB_RHS__$1 + 112);
	*(int32*)((uint8*)THIS$1 + 116) = *(int32*)((uint8*)__FB_RHS__$1 + 116);
	*(int32*)((uint8*)THIS$1 + 120) = *(int32*)((uint8*)__FB_RHS__$1 + 120);
	*(int32*)((uint8*)THIS$1 + 124) = *(int32*)((uint8*)__FB_RHS__$1 + 124);
	*(int32*)((uint8*)THIS$1 + 128) = *(int32*)((uint8*)__FB_RHS__$1 + 128);
	*(int32*)((uint8*)THIS$1 + 132) = *(int32*)((uint8*)__FB_RHS__$1 + 132);
	*(boolean*)((uint8*)THIS$1 + 136) = *(boolean*)((uint8*)__FB_RHS__$1 + 136);
	*(boolean*)((uint8*)THIS$1 + 137) = *(boolean*)((uint8*)__FB_RHS__$1 + 137);
	__builtin_memcpy( (struct $6TFLIST*)((uint8*)THIS$1 + 140), (struct $6TFLIST*)((uint8*)__FB_RHS__$1 + 140), 56 );
	*(int32*)((uint8*)THIS$1 + 196) = *(int32*)((uint8*)__FB_RHS__$1 + 196);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 200) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 200);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 204) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 204);
	*(boolean*)((uint8*)THIS$1 + 208) = *(boolean*)((uint8*)__FB_RHS__$1 + 208);
	*($13FB_COMPTARGET*)((uint8*)THIS$1 + 212) = *($13FB_COMPTARGET*)((uint8*)__FB_RHS__$1 + 212);
	*(int32*)((uint8*)THIS$1 + 216) = *(int32*)((uint8*)__FB_RHS__$1 + 216);
	*(int32*)((uint8*)THIS$1 + 220) = *(int32*)((uint8*)__FB_RHS__$1 + 220);
	label$13:;
}

static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 68) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 56) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 44) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 32) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* THIS$1 )
{
	__builtin_memset( (uint32*)THIS$1, 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 20), 0, 12 );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 32), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 36), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 40), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 44), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 48), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 52), 0, 4 );
	label$18:;
	label$19:;
}

static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX* THIS$1, struct $6DBGCTX* __FB_RHS__$1 )
{
	label$20:;
	*(uint32*)THIS$1 = *(uint32*)__FB_RHS__$1;
	*(int32*)((uint8*)THIS$1 + 4) = *(int32*)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 20), -1, (void*)((uint8*)__FB_RHS__$1 + 20), -1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 32);
	*(int32*)((uint8*)THIS$1 + 36) = *(int32*)((uint8*)__FB_RHS__$1 + 36);
	*(int32*)((uint8*)THIS$1 + 40) = *(int32*)((uint8*)__FB_RHS__$1 + 40);
	*(int32*)((uint8*)THIS$1 + 44) = *(int32*)((uint8*)__FB_RHS__$1 + 44);
	*(int32*)((uint8*)THIS$1 + 48) = *(int32*)((uint8*)__FB_RHS__$1 + 48);
	*(int32*)((uint8*)THIS$1 + 52) = *(int32*)((uint8*)__FB_RHS__$1 + 52);
	label$21:;
}

static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 20) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 4), 0, 12 );
	label$26:;
	label$27:;
}

static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR* THIS$1, struct $7TDBGSTR* __FB_RHS__$1 )
{
	label$28:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 4), -1, (void*)((uint8*)__FB_RHS__$1 + 4), -1, 0 );
	label$29:;
}

static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* THIS$1 )
{
	label$32:;
	label$33:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 4) );
}

static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 4), 0, 12 );
	label$34:;
	label$35:;
}

static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB* THIS$1, struct $8TDBGSTAB* __FB_RHS__$1 )
{
	label$36:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 4), -1, (void*)((uint8*)__FB_RHS__$1 + 4), -1, 0 );
	label$37:;
}

static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* THIS$1 )
{
	label$40:;
	label$41:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 4) );
}

static void CHECK_OPTIM( FBSTRING* CODE$1 )
{
	label$42:;
	FBSTRING PART1$1;
	__builtin_memset( &PART1$1, 0, 12 );
	FBSTRING PART2$1;
	__builtin_memset( &PART2$1, 0, 12 );
	FBSTRING MOV$1;
	__builtin_memset( &MOV$1, 0, 12 );
	FBSTRING NEWCODE$1;
	__builtin_memset( &NEWCODE$1, 0, 12 );
	static FBSTRING PREVPART1$1;
	static FBSTRING PREVPART2$1;
	static FBSTRING PREVMOV$1;
	static int32 PREVWPOS$1;
	static int32 FLAG$1;
	int32 POSCHAR1$1;
	__builtin_memset( &POSCHAR1$1, 0, 4 );
	int32 POSCHAR2$1;
	__builtin_memset( &POSCHAR2$1, 0, 4 );
	int32 WRITEPOS$1;
	__builtin_memset( &WRITEPOS$1, 0, 4 );
	int32 vr$7 = fb_StrLen( (void*)CODE$1, -1 );
	if( vr$7 != 0 ) goto label$45;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$45:;
	label$44:;
	if( FLAG$1 != 2 ) goto label$47;
	{
		FBSTRING TMP$191$2;
		__builtin_memset( &TMP$191$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$191$2, (void*)&PREVPART1$1, -1, (void*)":", 2 );
		int32 vr$15 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$14 );
		if( vr$15 == 0 ) goto label$49;
		{
			FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"#O9", 3 );
			fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$16 );
		}
		label$49:;
		label$48:;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$47:;
	label$46:;
	FBSTRING* vr$22 = fb_LEFT( (FBSTRING*)CODE$1, 3 );
	int32 vr$23 = fb_StrCompare( (void*)vr$22, -1, (void*)"mov", 4 );
	FBSTRING* vr$25 = fb_LEFT( (FBSTRING*)CODE$1, 3 );
	int32 vr$26 = fb_StrCompare( (void*)vr$25, -1, (void*)"lea", 4 );
	FBSTRING* vr$29 = fb_LEFT( (FBSTRING*)CODE$1, 3 );
	int32 vr$30 = fb_StrCompare( (void*)vr$29, -1, (void*)"jmp", 4 );
	if( ((-(vr$23 != 0) & -(vr$26 != 0)) & -(vr$30 != 0)) == 0 ) goto label$51;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$51:;
	label$50:;
	FBSTRING* vr$37 = fb_LEFT( (FBSTRING*)CODE$1, 6 );
	int32 vr$38 = fb_StrCompare( (void*)vr$37, -1, (void*)"movsxd", 7 );
	if( vr$38 != 0 ) goto label$53;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$53:;
	}
	FBSTRING* vr$43 = fb_LEFT( (FBSTRING*)CODE$1, 5 );
	int32 vr$44 = fb_StrCompare( (void*)vr$43, -1, (void*)"movsx", 6 );
	if( vr$44 != 0 ) goto label$55;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$55:;
	}
	FBSTRING* vr$49 = fb_LEFT( (FBSTRING*)CODE$1, 5 );
	int32 vr$50 = fb_StrCompare( (void*)vr$49, -1, (void*)"movzx", 6 );
	if( vr$50 != 0 ) goto label$57;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$57:;
	}
	int32 vr$56 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
	WRITEPOS$1 = vr$56 + 1;
	FBSTRING* vr$58 = fb_StrAllocTempDescZEx( (uint8*)" ", 1 );
	int32 vr$59 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$58 );
	POSCHAR1$1 = vr$59;
	FBSTRING* vr$61 = fb_LEFT( (FBSTRING*)CODE$1, POSCHAR1$1 + -1 );
	fb_StrAssign( (void*)&MOV$1, -1, (void*)vr$61, -1, 0 );
	FBSTRING* vr$63 = fb_StrAllocTempDescZEx( (uint8*)",", 1 );
	int32 vr$64 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$63 );
	POSCHAR2$1 = vr$64;
	FBSTRING* vr$68 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR1$1 + 1, (POSCHAR2$1 - POSCHAR1$1) + -1 );
	fb_StrAssign( (void*)&PART1$1, -1, (void*)vr$68, -1, 0 );
	FBSTRING* vr$70 = fb_StrAllocTempDescZEx( (uint8*)"#", 1 );
	int32 vr$71 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$70 );
	POSCHAR1$1 = vr$71;
	if( POSCHAR1$1 != 0 ) goto label$59;
	{
		int32 vr$72 = fb_StrLen( (void*)CODE$1, -1 );
		POSCHAR1$1 = vr$72 + 1;
	}
	goto label$58;
	label$59:;
	{
		POSCHAR1$1 = POSCHAR1$1 + -1;
	}
	label$58:;
	FBSTRING* vr$78 = fb_StrMid( (FBSTRING*)CODE$1, POSCHAR2$1 + 2, (POSCHAR1$1 - POSCHAR2$1) + -2 );
	FBSTRING* vr$79 = fb_RTRIM( (FBSTRING*)vr$78 );
	fb_StrAssign( (void*)&PART2$1, -1, (void*)vr$79, -1, 0 );
	int32 vr$82 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"mov", 4 );
	if( vr$82 != 0 ) goto label$61;
	{
		int32 vr$85 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PART2$1, -1 );
		if( vr$85 != 0 ) goto label$63;
		{
			FBSTRING* vr$87 = fb_StrAllocTempDescZEx( (uint8*)"rsi rdi rcx rdx rbx rax r8 r9 r10 r11 r12 r13 r14 r15", 53 );
			int32 vr$88 = fb_StrInstr( 1, (FBSTRING*)vr$87, (FBSTRING*)&PART1$1 );
			if( vr$88 == 0 ) goto label$65;
			{
				FBSTRING TMP$204$4;
				__builtin_memset( &TMP$204$4, 0, 12 );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$204$4, (void*)"#O0", 4, (void*)CODE$1, -1 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$91, -1, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
				fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
				FLAG$1 = 0;
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&MOV$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$65:;
			label$64:;
		}
		label$63:;
		label$62:;
	}
	label$61:;
	label$60:;
	int32 vr$97 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"lea", 4 );
	if( vr$97 != 0 ) goto label$67;
	{
		FBSTRING* vr$98 = fb_StrAllocTempDescZEx( (uint8*)"   add ", 7 );
		int32 vr$99 = fb_StrInstr( 1, (FBSTRING*)CODE$1, (FBSTRING*)vr$98 );
		if( vr$99 == 0 ) goto label$69;
		{
			fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&MOV$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
			label$69:;
		}
		FLAG$1 = 1;
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
		PREVWPOS$1 = WRITEPOS$1;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$67:;
	label$66:;
	int32 vr$111 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"jmp", 4 );
	if( vr$111 != 0 ) goto label$71;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
		FLAG$1 = 2;
		PREVWPOS$1 = WRITEPOS$1;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$71:;
	label$70:;
	if( FLAG$1 != 1 ) goto label$73;
	{
		FBSTRING TMP$208$2;
		FBSTRING TMP$209$2;
		__builtin_memset( &TMP$208$2, 0, 12 );
		FBSTRING* vr$119 = fb_StrConcat( &TMP$208$2, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
		__builtin_memset( &TMP$209$2, 0, 12 );
		FBSTRING* vr$122 = fb_StrConcat( &TMP$209$2, (void*)vr$119, -1, (void*)"]", 2 );
		int32 vr$124 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$122 );
		if( vr$124 == 0 ) goto label$75;
		{
			FBSTRING* vr$133 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$134 = fb_ASC( (FBSTRING*)vr$133, 1 );
			FBSTRING* vr$137 = fb_RIGHT( (FBSTRING*)&PART2$1, 1 );
			uint32 vr$138 = fb_ASC( (FBSTRING*)vr$137, 1 );
			if( ((-((uint32)(int32)*(uint8*)*(uint8**)&PART2$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART2$1 == 101u)) | (-(vr$134 >= 48u) & -(vr$138 <= 57u))) == 0 ) goto label$77;
			{
				FBSTRING TMP$216$4;
				FBSTRING TMP$217$4;
				FBSTRING TMP$218$4;
				FBSTRING TMP$219$4;
				FBSTRING TMP$220$4;
				FBSTRING* vr$142 = fb_StrAllocTempDescZEx( (uint8*)"#O4", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$142 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&MOV$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
				FBSTRING* vr$147 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$149 = fb_StrInstr( 1, (FBSTRING*)&PART1$1, (FBSTRING*)vr$147 );
				FBSTRING* vr$152 = fb_StrMid( (FBSTRING*)&PART1$1, 1, vr$149 + -1 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)vr$152, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART2$1, -1, 0 );
				int32 vr$159 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$160 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$159 + vr$160) + 9;
				FBSTRING* vr$165 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$216$4, 0, 12 );
				FBSTRING* vr$168 = fb_StrConcat( &TMP$216$4, (void*)"#O4", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$217$4, 0, 12 );
				FBSTRING* vr$171 = fb_StrConcat( &TMP$217$4, (void*)vr$168, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$218$4, 0, 12 );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$218$4, (void*)vr$171, -1, (void*)vr$165, -1 );
				__builtin_memset( &TMP$219$4, 0, 12 );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$219$4, (void*)vr$174, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$220$4, 0, 12 );
				FBSTRING* vr$180 = fb_StrConcat( &TMP$220$4, (void*)vr$177, -1, (void*)" #Optim 4", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$180, -1, 0 );
			}
			label$77:;
			label$76:;
		}
		goto label$74;
		label$75:;
		{
			int32 vr$182 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
			if( (-(vr$182 == 0) & -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u)) == 0 ) goto label$79;
			{
				FBSTRING TMP$224$4;
				FBSTRING TMP$225$4;
				FBSTRING TMP$226$4;
				FBSTRING TMP$227$4;
				FBSTRING TMP$228$4;
				FBSTRING* vr$188 = fb_StrAllocTempDescZEx( (uint8*)"#O5", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$188 );
				fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)"lea ", 5, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
				int32 vr$196 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$197 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$196 + vr$197) + 9;
				FBSTRING* vr$202 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$224$4, 0, 12 );
				FBSTRING* vr$205 = fb_StrConcat( &TMP$224$4, (void*)"#O5", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$225$4, 0, 12 );
				FBSTRING* vr$208 = fb_StrConcat( &TMP$225$4, (void*)vr$205, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$226$4, 0, 12 );
				FBSTRING* vr$211 = fb_StrConcat( &TMP$226$4, (void*)vr$208, -1, (void*)vr$202, -1 );
				__builtin_memset( &TMP$227$4, 0, 12 );
				FBSTRING* vr$214 = fb_StrConcat( &TMP$227$4, (void*)vr$211, -1, (void*)&NEWCODE$1, -1 );
				__builtin_memset( &TMP$228$4, 0, 12 );
				FBSTRING* vr$217 = fb_StrConcat( &TMP$228$4, (void*)vr$214, -1, (void*)" #Optim 5", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$217, -1, 0 );
			}
			goto label$78;
			label$79:;
			{
				FBSTRING TMP$229$4;
				FBSTRING TMP$230$4;
				int32 TMP$231$4;
				if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 114u ) goto label$80;
				__builtin_memset( &TMP$229$4, 0, 12 );
				FBSTRING* vr$222 = fb_StrConcat( &TMP$229$4, (void*)"[", 2, (void*)&PREVPART1$1, -1 );
				__builtin_memset( &TMP$230$4, 0, 12 );
				FBSTRING* vr$225 = fb_StrConcat( &TMP$230$4, (void*)vr$222, -1, (void*)"]", 2 );
				int32 vr$227 = fb_StrCompare( (void*)&PART2$1, -1, (void*)vr$225, -1 );
				TMP$231$4 = -(vr$227 == 0);
				goto label$2978;
				label$80:;
				TMP$231$4 = 0;
				label$2978:;
				if( TMP$231$4 == 0 ) goto label$82;
				{
					FBSTRING TMP$234$5;
					FBSTRING TMP$235$5;
					FBSTRING TMP$236$5;
					FBSTRING TMP$237$5;
					FBSTRING TMP$238$5;
					FBSTRING* vr$229 = fb_StrAllocTempDescZEx( (uint8*)"#O7", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$229 );
					fb_StrAssign( (void*)&NEWCODE$1, -1, (void*)&MOV$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)" ", 2, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PART1$1, -1, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)", ", 3, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1, (void*)&PREVPART2$1, -1, 0 );
					int32 vr$239 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
					int32 vr$240 = fb_StrLen( (void*)CODE$1, -1 );
					WRITEPOS$1 = (vr$239 + vr$240) + 9;
					FBSTRING* vr$245 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
					__builtin_memset( &TMP$234$5, 0, 12 );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$234$5, (void*)"#O7", 4, (void*)CODE$1, -1 );
					__builtin_memset( &TMP$235$5, 0, 12 );
					FBSTRING* vr$251 = fb_StrConcat( &TMP$235$5, (void*)vr$248, -1, (void*)"\x0A", 2 );
					__builtin_memset( &TMP$236$5, 0, 12 );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$236$5, (void*)vr$251, -1, (void*)vr$245, -1 );
					__builtin_memset( &TMP$237$5, 0, 12 );
					FBSTRING* vr$257 = fb_StrConcat( &TMP$237$5, (void*)vr$254, -1, (void*)&NEWCODE$1, -1 );
					__builtin_memset( &TMP$238$5, 0, 12 );
					FBSTRING* vr$260 = fb_StrConcat( &TMP$238$5, (void*)vr$257, -1, (void*)" #Optim 7", 10 );
					fb_StrAssign( (void*)CODE$1, -1, (void*)vr$260, -1, 0 );
				}
				goto label$81;
				label$82:;
				{
					fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)"", 1, 0 );
					fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)"", 1, 0 );
					fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"", 1, 0 );
				}
				label$81:;
			}
			label$78:;
		}
		label$74:;
		fb_StrAssign( (void*)&PART1$1, -1, (void*)"", 1, 0 );
		fb_StrAssign( (void*)&PART2$1, -1, (void*)"", 1, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$73:;
	label$72:;
	int32 vr$268 = fb_StrCompare( (void*)&PART2$1, -1, (void*)&PREVPART1$1, -1 );
	if( vr$268 != 0 ) goto label$84;
	{
		int32 vr$270 = fb_StrCompare( (void*)&PART1$1, -1, (void*)&PREVPART2$1, -1 );
		if( vr$270 != 0 ) goto label$86;
		{
			FBSTRING TMP$240$3;
			__builtin_memset( &TMP$240$3, 0, 12 );
			FBSTRING* vr$273 = fb_StrConcat( &TMP$240$3, (void*)"#O1 ", 5, (void*)CODE$1, -1 );
			fb_StrAssign( (void*)CODE$1, -1, (void*)vr$273, -1, 0 );
		}
		goto label$85;
		label$86:;
		{
			int32 vr$274 = fb_StrCompare( (void*)&PREVPART2$1, -1, (void*)"", 1 );
			if( vr$274 != 0 ) goto label$88;
			{
				FBSTRING TMP$241$4;
				FBSTRING TMP$245$4;
				FBSTRING TMP$246$4;
				__builtin_memset( &TMP$241$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$241$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$241$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$241$4 );
				__builtin_memset( &TMP$245$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$245$4, -1, (void*)"FOUND AN ERROR : prevpart empty ????????", 41, 0 );
				HWRITEASM64( &TMP$245$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$245$4 );
				__builtin_memset( &TMP$246$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$246$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$246$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$246$4 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&MOV$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$88:;
			label$87:;
			if( (uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 != 114u ) goto label$90;
			{
				FBSTRING TMP$253$4;
				FBSTRING TMP$254$4;
				FBSTRING TMP$255$4;
				FBSTRING TMP$256$4;
				FBSTRING TMP$257$4;
				FBSTRING TMP$258$4;
				FBSTRING TMP$259$4;
				FBSTRING TMP$260$4;
				FBSTRING TMP$261$4;
				FBSTRING* vr$293 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$294 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$293 );
				if( vr$294 == 0 ) goto label$92;
				{
					if( (uint32)(int32)*(uint8*)*(uint8**)&PART1$1 != 120u ) goto label$94;
					{
						int32 vr$298 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"movss", 6 );
						if( vr$298 != 0 ) goto label$96;
						{
							fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$95;
						label$96:;
						{
							fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)"movq", 5, 0 );
						}
						label$95:;
					}
					label$94:;
					label$93:;
				}
				goto label$91;
				label$92:;
				{
					FBSTRING* vr$299 = fb_StrAllocTempDescZEx( (uint8*)"#O2", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$299 );
					int32 vr$302 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"movq", 5 );
					int32 vr$305 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"movd", 5 );
					if( (-(vr$302 == 0) | -(vr$305 == 0)) == 0 ) goto label$98;
					{
						fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)&MOV$1, -1, 0 );
					}
					goto label$97;
					label$98:;
					int32 vr$310 = fb_StrCompare( (void*)&MOV$1, -1, (void*)"movsx", 6 );
					if( vr$310 != 0 ) goto label$99;
					{
						fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)&MOV$1, -1, 0 );
					}
					label$99:;
					label$97:;
				}
				label$91:;
				int32 vr$313 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$314 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$313 + vr$314) + 9;
				FBSTRING* vr$319 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$253$4, 0, 12 );
				FBSTRING* vr$322 = fb_StrConcat( &TMP$253$4, (void*)"#O2", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$254$4, 0, 12 );
				FBSTRING* vr$325 = fb_StrConcat( &TMP$254$4, (void*)vr$322, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$255$4, 0, 12 );
				FBSTRING* vr$328 = fb_StrConcat( &TMP$255$4, (void*)vr$325, -1, (void*)vr$319, -1 );
				__builtin_memset( &TMP$256$4, 0, 12 );
				FBSTRING* vr$331 = fb_StrConcat( &TMP$256$4, (void*)vr$328, -1, (void*)&PREVMOV$1, -1 );
				__builtin_memset( &TMP$257$4, 0, 12 );
				FBSTRING* vr$334 = fb_StrConcat( &TMP$257$4, (void*)vr$331, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$258$4, 0, 12 );
				FBSTRING* vr$337 = fb_StrConcat( &TMP$258$4, (void*)vr$334, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$259$4, 0, 12 );
				FBSTRING* vr$340 = fb_StrConcat( &TMP$259$4, (void*)vr$337, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$260$4, 0, 12 );
				FBSTRING* vr$343 = fb_StrConcat( &TMP$260$4, (void*)vr$340, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$261$4, 0, 12 );
				FBSTRING* vr$346 = fb_StrConcat( &TMP$261$4, (void*)vr$343, -1, (void*)" #Optim 2", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$346, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$89;
			label$90:;
			if( (uint32)(int32)*(uint8*)*(uint8**)&PREVPART2$1 != 120u ) goto label$100;
			{
				FBSTRING TMP$271$4;
				FBSTRING TMP$272$4;
				FBSTRING TMP$273$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$275$4;
				FBSTRING TMP$276$4;
				FBSTRING TMP$277$4;
				FBSTRING TMP$278$4;
				FBSTRING TMP$279$4;
				FBSTRING* vr$350 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$351 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$350 );
				if( vr$351 == 0 ) goto label$102;
				{
					int32 vr$352 = fb_StrCompare( (void*)&PREVMOV$1, -1, (void*)"movss", 6 );
					if( vr$352 != 0 ) goto label$104;
					{
						fb_StrAssign( (void*)&MOV$1, -1, (void*)"movd", 5, 0 );
					}
					goto label$103;
					label$104:;
					{
						fb_StrAssign( (void*)&MOV$1, -1, (void*)"movq", 5, 0 );
					}
					label$103:;
				}
				goto label$101;
				label$102:;
				{
					FBSTRING* vr$355 = fb_StrAllocTempDescZEx( (uint8*)"#O3", 3 );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$355 );
					int32 vr$357 = fb_StrCompare( (void*)&PREVMOV$1, -1, (void*)"movq", 5 );
					if( vr$357 != 0 ) goto label$106;
					{
						FBSTRING* vr$358 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
						int32 vr$360 = fb_StrInstr( 1, (FBSTRING*)&PART2$1, (FBSTRING*)vr$358 );
						if( vr$360 == 0 ) goto label$108;
						{
							fb_StrAssign( (void*)&MOV$1, -1, (void*)"movsd", 6, 0 );
						}
						goto label$107;
						label$108:;
						{
							fb_StrAssign( (void*)&MOV$1, -1, (void*)"movq", 5, 0 );
						}
						label$107:;
					}
					goto label$105;
					label$106:;
					int32 vr$363 = fb_StrCompare( (void*)&PREVMOV$1, -1, (void*)"movd", 5 );
					if( vr$363 != 0 ) goto label$109;
					{
						if( (-((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 101u)) == 0 ) goto label$111;
						{
							fb_StrAssign( (void*)&MOV$1, -1, (void*)"movd", 5, 0 );
						}
						goto label$110;
						label$111:;
						{
							fb_StrAssign( (void*)&MOV$1, -1, (void*)"movss", 6, 0 );
						}
						label$110:;
					}
					goto label$105;
					label$109:;
					{
						FBSTRING TMP$264$6;
						FBSTRING TMP$267$6;
						FBSTRING TMP$268$6;
						FBSTRING TMP$269$6;
						__builtin_memset( &TMP$264$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$264$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$264$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$264$6 );
						__builtin_memset( &TMP$268$6, 0, 12 );
						__builtin_memset( &TMP$267$6, 0, 12 );
						FBSTRING* vr$381 = fb_StrConcat( &TMP$267$6, (void*)"FOUND AN ERROR : in check_optim 3-2 mov unknown=", 49, (void*)&MOV$1, -1 );
						fb_StrAssign( (void*)&TMP$268$6, -1, (void*)vr$381, -1, 0 );
						HWRITEASM64( &TMP$268$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$268$6 );
						__builtin_memset( &TMP$269$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$269$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$269$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$269$6 );
					}
					label$105:;
				}
				label$101:;
				int32 vr$390 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$391 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$390 + vr$391) + 9;
				FBSTRING* vr$397 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$271$4, 0, 12 );
				FBSTRING* vr$400 = fb_StrConcat( &TMP$271$4, (void*)"#O3", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$272$4, 0, 12 );
				FBSTRING* vr$403 = fb_StrConcat( &TMP$272$4, (void*)vr$400, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$273$4, 0, 12 );
				FBSTRING* vr$406 = fb_StrConcat( &TMP$273$4, (void*)vr$403, -1, (void*)vr$397, -1 );
				__builtin_memset( &TMP$274$4, 0, 12 );
				FBSTRING* vr$409 = fb_StrConcat( &TMP$274$4, (void*)vr$406, -1, (void*)&MOV$1, -1 );
				__builtin_memset( &TMP$275$4, 0, 12 );
				FBSTRING* vr$412 = fb_StrConcat( &TMP$275$4, (void*)vr$409, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$276$4, 0, 12 );
				FBSTRING* vr$415 = fb_StrConcat( &TMP$276$4, (void*)vr$412, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$277$4, 0, 12 );
				FBSTRING* vr$418 = fb_StrConcat( &TMP$277$4, (void*)vr$415, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$278$4, 0, 12 );
				FBSTRING* vr$421 = fb_StrConcat( &TMP$278$4, (void*)vr$418, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$279$4, 0, 12 );
				FBSTRING* vr$424 = fb_StrConcat( &TMP$279$4, (void*)vr$421, -1, (void*)" #Optim 3", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$424, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			goto label$89;
			label$100:;
			int32 vr$434 = fb_StrCompare( (void*)&PREVPART1$1, -1, (void*)&PART2$1, -1 );
			FBSTRING* vr$437 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
			int32 vr$438 = fb_StrInstr( 1, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$437 );
			if( (((-((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 114u) | -((uint32)(int32)*(uint8*)*(uint8**)&PART1$1 == 101u)) & -(vr$434 == 0)) & -(vr$438 == 0)) == 0 ) goto label$112;
			{
				FBSTRING TMP$282$4;
				FBSTRING TMP$283$4;
				FBSTRING TMP$284$4;
				FBSTRING TMP$285$4;
				FBSTRING TMP$286$4;
				FBSTRING TMP$287$4;
				FBSTRING TMP$288$4;
				FBSTRING TMP$289$4;
				FBSTRING TMP$290$4;
				FBSTRING* vr$441 = fb_StrAllocTempDescZEx( (uint8*)"#O6", 3 );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 56), PREVWPOS$1, -1, (FBSTRING*)vr$441 );
				int32 vr$444 = fb_StrLen( (void*)((uint8*)&CTX$ + 56), -1 );
				int32 vr$445 = fb_StrLen( (void*)CODE$1, -1 );
				WRITEPOS$1 = (vr$444 + vr$445) + 9;
				FBSTRING* vr$450 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$282$4, 0, 12 );
				FBSTRING* vr$453 = fb_StrConcat( &TMP$282$4, (void*)"#O6", 4, (void*)CODE$1, -1 );
				__builtin_memset( &TMP$283$4, 0, 12 );
				FBSTRING* vr$456 = fb_StrConcat( &TMP$283$4, (void*)vr$453, -1, (void*)"\x0A", 2 );
				__builtin_memset( &TMP$284$4, 0, 12 );
				FBSTRING* vr$459 = fb_StrConcat( &TMP$284$4, (void*)vr$456, -1, (void*)vr$450, -1 );
				__builtin_memset( &TMP$285$4, 0, 12 );
				FBSTRING* vr$462 = fb_StrConcat( &TMP$285$4, (void*)vr$459, -1, (void*)&PREVMOV$1, -1 );
				__builtin_memset( &TMP$286$4, 0, 12 );
				FBSTRING* vr$465 = fb_StrConcat( &TMP$286$4, (void*)vr$462, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$287$4, 0, 12 );
				FBSTRING* vr$468 = fb_StrConcat( &TMP$287$4, (void*)vr$465, -1, (void*)&PART1$1, -1 );
				__builtin_memset( &TMP$288$4, 0, 12 );
				FBSTRING* vr$471 = fb_StrConcat( &TMP$288$4, (void*)vr$468, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$289$4, 0, 12 );
				FBSTRING* vr$474 = fb_StrConcat( &TMP$289$4, (void*)vr$471, -1, (void*)&PREVPART2$1, -1 );
				__builtin_memset( &TMP$290$4, 0, 12 );
				FBSTRING* vr$477 = fb_StrConcat( &TMP$290$4, (void*)vr$474, -1, (void*)" #Optim 6", 10 );
				fb_StrAssign( (void*)CODE$1, -1, (void*)vr$477, -1, 0 );
				fb_StrAssign( (void*)&PART2$1, -1, (void*)&PREVPART2$1, -1, 0 );
			}
			label$112:;
			label$89:;
		}
		label$85:;
	}
	label$84:;
	label$83:;
	fb_StrAssign( (void*)&PREVPART1$1, -1, (void*)&PART1$1, -1, 0 );
	fb_StrAssign( (void*)&PREVPART2$1, -1, (void*)&PART2$1, -1, 0 );
	fb_StrAssign( (void*)&PREVMOV$1, -1, (void*)&MOV$1, -1, 0 );
	PREVWPOS$1 = WRITEPOS$1;
	fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
	fb_StrDelete( (FBSTRING*)&MOV$1 );
	fb_StrDelete( (FBSTRING*)&PART2$1 );
	fb_StrDelete( (FBSTRING*)&PART1$1 );
	label$43:;
}

static void REG_FREEABLE( FBSTRING* LINEASM$1 )
{
	int32 TMP$293$1;
	int32 TMP$295$1;
	int32 TMP$297$1;
	label$113:;
	int32 REGFOUND1$1;
	__builtin_memset( &REGFOUND1$1, 0, 4 );
	int32 REGFOUND2$1;
	__builtin_memset( &REGFOUND2$1, 0, 4 );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 12 );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)LINEASM$1 );
	FBSTRING* vr$4 = fb_LEFT( (FBSTRING*)vr$3, 3 );
	fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)vr$4, -1, 0 );
	int32 vr$7 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"inc", 4 );
	if( vr$7 == 0 ) goto label$115;
	int32 vr$9 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"dec", 4 );
	TMP$293$1 = -(vr$9 == 0);
	goto label$2979;
	label$115:;
	TMP$293$1 = -1;
	label$2979:;
	if( TMP$293$1 != 0 ) goto label$116;
	int32 vr$12 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"not", 4 );
	TMP$295$1 = -(vr$12 == 0);
	goto label$2980;
	label$116:;
	TMP$295$1 = -1;
	label$2980:;
	if( TMP$295$1 != 0 ) goto label$117;
	int32 vr$15 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"neg", 4 );
	TMP$297$1 = -(vr$15 == 0);
	goto label$2981;
	label$117:;
	TMP$297$1 = -1;
	label$2981:;
	if( TMP$297$1 == 0 ) goto label$119;
	{
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
		int32 vr$18 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$17 );
		if( vr$18 != 0 ) goto label$121;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$114;
		}
		label$121:;
		label$120:;
	}
	goto label$118;
	label$119:;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"mov lea cmp add sub imu idiv div shl shr sar and xor or call jmp push test cvt ", 79 );
		int32 vr$22 = fb_StrInstr( 1, (FBSTRING*)vr$21, (FBSTRING*)&INSTRUC$1 );
		if( vr$22 != 0 ) goto label$123;
		{
			fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
			goto label$114;
			label$123:;
		}
	}
	label$118:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$127:;
		{
			FBSTRING TMP$299$3;
			FBSTRING TMP$300$3;
			FBSTRING TMP$301$3;
			FBSTRING TMP$302$3;
			if( *(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3 ) goto label$129;
			{
				goto label$125;
				label$129:;
			}
			REGFOUND1$1 = -1;
			REGFOUND2$1 = -1;
			__builtin_memset( &TMP$299$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$299$3, *(void**)((uint8*)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$29 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$28 );
			if( vr$29 == 0 ) goto label$131;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$131:;
			__builtin_memset( &TMP$300$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$300$3, *(void**)((uint8*)REGSTRD$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$34 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$33 );
			if( vr$34 == 0 ) goto label$132;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$132:;
			__builtin_memset( &TMP$301$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$301$3, *(void**)((uint8*)REGSTRW$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$39 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$38 );
			if( vr$39 == 0 ) goto label$133;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$133:;
			__builtin_memset( &TMP$302$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$302$3, *(void**)((uint8*)REGSTRB$ + (IREG$2 << (2 & 31))), 0, (void*)",", 2 );
			int32 vr$44 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$43 );
			if( vr$44 == 0 ) goto label$134;
			{
				REGFOUND1$1 = IREG$2;
			}
			label$134:;
			label$130:;
			if( REGFOUND1$1 == -1 ) goto label$136;
			{
				int32 TMP$305$4;
				int32 TMP$307$4;
				int32 vr$46 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"add", 4 );
				if( vr$46 == 0 ) goto label$137;
				int32 vr$48 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"sub", 4 );
				TMP$305$4 = -(vr$48 == 0);
				goto label$2982;
				label$137:;
				TMP$305$4 = -1;
				label$2982:;
				if( TMP$305$4 != 0 ) goto label$138;
				int32 vr$51 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"imu", 4 );
				TMP$307$4 = -(vr$51 == 0);
				goto label$2983;
				label$138:;
				TMP$307$4 = -1;
				label$2983:;
				if( TMP$307$4 == 0 ) goto label$140;
				{
					goto label$125;
				}
				goto label$139;
				label$140:;
				int32 vr$54 = fb_StrCompare( (void*)&INSTRUC$1, -1, (void*)"cmp", 4 );
				if( vr$54 != 0 ) goto label$141;
				{
					*(int32*)((uint8*)&CTX$ + 116) = REGFOUND1$1;
					*(int32*)((uint8*)&CTX$ + 120) = *(int32*)((uint8*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31)));
					*(int32*)((uint8*)&CTX$ + 124) = 2;
					*(int32*)((uint8*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
					goto label$125;
				}
				goto label$139;
				label$141:;
				{
					FBSTRING TMP$309$5;
					FBSTRING TMP$310$5;
					__builtin_memset( &TMP$309$5, 0, 12 );
					FBSTRING* vr$61 = fb_StrConcat( &TMP$309$5, *(void**)((uint8*)REGSTRQ$ + (IREG$2 << (2 & 31))), 0, (void*)", ", 3 );
					__builtin_memset( &TMP$310$5, 0, 12 );
					FBSTRING* vr$64 = fb_StrConcat( &TMP$310$5, (void*)vr$61, -1, *(void**)((uint8*)REGSTRQ$ + (IREG$2 << (2 & 31))), 0 );
					int32 vr$65 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$64 );
					if( vr$65 == 0 ) goto label$143;
					{
						*(int32*)((uint8*)REGHANDLE$ + (REGFOUND1$1 << (2 & 31))) = -2;
						fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
						goto label$114;
					}
					label$143:;
					label$142:;
				}
				label$139:;
			}
			label$136:;
			label$135:;
			if( REGFOUND1$1 != -1 ) goto label$145;
			{
				FBSTRING* vr$69 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + (IREG$2 << (2 & 31))) );
				int32 vr$70 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$69 );
				if( vr$70 == 0 ) goto label$147;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$147:;
				FBSTRING* vr$72 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRD$ + (IREG$2 << (2 & 31))) );
				int32 vr$73 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$72 );
				if( vr$73 == 0 ) goto label$148;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$148:;
				FBSTRING* vr$75 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRW$ + (IREG$2 << (2 & 31))) );
				int32 vr$76 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$75 );
				if( vr$76 == 0 ) goto label$149;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$149:;
				FBSTRING* vr$78 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRB$ + (IREG$2 << (2 & 31))) );
				int32 vr$79 = fb_StrInstr( 1, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$78 );
				if( vr$79 == 0 ) goto label$150;
				{
					REGFOUND2$1 = IREG$2;
				}
				label$150:;
				label$146:;
			}
			label$145:;
			label$144:;
			if( REGFOUND2$1 == -1 ) goto label$152;
			{
				*(int32*)((uint8*)REGHANDLE$ + (REGFOUND2$1 << (2 & 31))) = -2;
			}
			label$152:;
			label$151:;
		}
		label$125:;
		IREG$2 = IREG$2 + 1;
		label$124:;
		if( IREG$2 <= 15 ) goto label$127;
		label$126:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	label$114:;
}

static int32 PW2( int32 NUM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$153:;
	double A$1;
	A$1 = __builtin_log( (double)NUM$1 ) / 0x1.62E42FEFA39EFp-1;
	double vr$4 = fb_FRACd( A$1 );
	if( vr$4 != 0x0p+0 ) goto label$156;
	{
		double vr$5 = pow( 0x1.p+1, A$1 );
		fb$result$1 = fb_D2I( vr$5 );
		goto label$154;
	}
	goto label$155;
	label$156:;
	{
		double vr$9 = pow( 0x1.p+1, __builtin_floor( A$1 ) + 0x1.p+0 );
		fb$result$1 = fb_D2I( vr$9 );
		goto label$154;
	}
	label$155:;
	label$154:;
	return fb$result$1;
}

static void ASM_SECTION( FBSTRING* SECTION$1 )
{
	label$157:;
	static FBSTRING SECTION_CURRENT$1;
	int32 vr$0 = fb_StrCompare( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1 );
	if( vr$0 == 0 ) goto label$160;
	{
		FBSTRING TMP$312$2;
		FBSTRING TMP$313$2;
		__builtin_memset( &TMP$313$2, 0, 12 );
		__builtin_memset( &TMP$312$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$312$2, (void*)".section ", 10, (void*)SECTION$1, -1 );
		fb_StrAssign( (void*)&TMP$313$2, -1, (void*)vr$4, -1, 0 );
		HWRITEASM64( &TMP$313$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$313$2 );
		fb_StrAssign( (void*)&SECTION_CURRENT$1, -1, (void*)SECTION$1, -1, 0 );
	}
	label$160:;
	label$159:;
	label$158:;
}

static void EMITOP3_OP4( FBSTRING* OP$1 )
{
	label$161:;
	FBSTRING* vr$0 = fb_RIGHT( (FBSTRING*)OP$1, 3 );
	int32 vr$1 = fb_StrCompare( (void*)vr$0, -1, (void*)"#NO", 4 );
	if( vr$1 != 0 ) goto label$164;
	{
		HWRITEASM64( OP$1, 3 );
	}
	goto label$163;
	label$164:;
	{
		HWRITEASM64( OP$1, 0 );
	}
	label$163:;
	label$162:;
}

static void HWRITEASM64( FBSTRING* LN2$1, int32 OPT$1 )
{
	FBSTRING TMP$324$1;
	label$169:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)LN2$1, -1, 0 );
	if( *(int32*)((uint8*)&CTX$ + 216) == 0 ) goto label$172;
	{
		if( *(int32*)((uint8*)&CTX$ + 220) != 1 ) goto label$174;
		{
			*(int32*)((uint8*)&CTX$ + 220) = 2;
		}
		goto label$173;
		label$174:;
		{
			*(int32*)((uint8*)&CTX$ + 216) = 0;
		}
		label$173:;
	}
	label$172:;
	label$171:;
	if( *(int32*)((uint8*)&CTX$ + 124) == 0 ) goto label$176;
	{
		*(int32*)((uint8*)&CTX$ + 124) = *(int32*)((uint8*)&CTX$ + 124) + -1;
		if( *(int32*)((uint8*)&CTX$ + 124) != 0 ) goto label$178;
		{
			*(int32*)((uint8*)&CTX$ + 120) = -2;
		}
		label$178:;
		label$177:;
	}
	label$176:;
	label$175:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$180;
	{
		if( *(int32*)((uint8*)&CTXDBG$ + 4) == -1 ) goto label$182;
		{
			FBSTRING TMP$316$3;
			FBSTRING TMP$318$3;
			FBSTRING TMP$319$3;
			FBSTRING TMP$320$3;
			FBSTRING TMP$321$3;
			FBSTRING TMP$322$3;
			DBG_FILENAME( (FBSTRING*)((uint8*)&CTXDBG$ + 20) );
			uint8* vr$5 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$5, 0, 0 );
			__builtin_memset( &TMP$320$3, 0, 12 );
			uint8* vr$8 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
			__builtin_memset( &TMP$318$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$318$3, (void*)&LNAME$1, -1, (void*)"-", 2 );
			__builtin_memset( &TMP$319$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$319$3, (void*)vr$12, -1, (void*)vr$8, 0 );
			fb_StrAssign( (void*)&TMP$320$3, -1, (void*)vr$15, -1, 0 );
			__builtin_memset( &TMP$316$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$316$3, -1, (void*)"", 1, 0 );
			DBG_ADDSTAB( &TMP$316$3, (uint8)68u, (int16)*(int32*)((uint8*)&CTXDBG$ + 4), &TMP$320$3 );
			fb_StrDelete( (FBSTRING*)&TMP$320$3 );
			fb_StrDelete( (FBSTRING*)&TMP$316$3 );
			*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
			__builtin_memset( &TMP$322$3, 0, 12 );
			__builtin_memset( &TMP$321$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$321$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$322$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$322$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$322$3 );
		}
		label$182:;
		label$181:;
	}
	label$180:;
	label$179:;
	if( (-(OPT$1 != 2) & -(OPT$1 != 1)) == 0 ) goto label$184;
	{
		REG_FREEABLE( &LN$1 );
		label$184:;
	}
	if( (-(OPT$1 == 3) | -(OPT$1 == 1)) == 0 ) goto label$186;
	{
		FBSTRING TMP$323$2;
		__builtin_memset( &TMP$323$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$323$2, -1, (void*)"", 1, 0 );
		CHECK_OPTIM( &TMP$323$2 );
		fb_StrDelete( (FBSTRING*)&TMP$323$2 );
	}
	goto label$185;
	label$186:;
	{
		CHECK_OPTIM( &LN$1 );
	}
	label$185:;
	FBSTRING* vr$46 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
	__builtin_memset( &TMP$324$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$324$1, (void*)vr$46, -1, (void*)&LN$1, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$49, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x0A", 2, 0 );
	{
		uint32 TMP$325$2;
		TMP$325$2 = *(uint32*)((uint8*)&CTX$ + 4);
		goto label$188;
		label$189:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 56), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$190:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 44), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$191:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 68), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$192:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$193:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 32), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$194:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)&LN$1, -1, 0 );
		}
		goto label$187;
		label$188:;
		static const void* tmp$3846[6] = {
			&&label$192,
			&&label$194,
			&&label$193,
			&&label$190,
			&&label$189,
			&&label$191,
		};
		if( TMP$325$2 > 5u ) goto label$194;
		goto *tmp$3846[TMP$325$2 - 0u];
		label$187:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$170:;
}

static FBSTRING* HFLOATTOHEX_ASM64( double VALUE$1, int32 DTYPE$1, int8 FULL$1 )
{
	int32 TMP$326$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$195:;
	FBSTRING RAWBYTES$1;
	__builtin_memset( &RAWBYTES$1, 0, 12 );
	float SINGLEVALUE$1;
	SINGLEVALUE$1 = (float)VALUE$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$197;
	TMP$326$1 = 24;
	goto label$2984;
	label$197:;
	TMP$326$1 = DTYPE$1 & 31;
	label$2984:;
	if( TMP$326$1 != 16 ) goto label$199;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$6 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$6, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # DBL=", 8, 0 );
		FBSTRING* vr$9 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$9, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$201;
		{
			FBSTRING TMP$330$3;
			__builtin_memset( &TMP$330$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$330$3, (void*)".quad ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$15, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		goto label$200;
		label$201:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		label$200:;
	}
	goto label$198;
	label$199:;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1, (void*)"0x", 3, 0 );
		FBSTRING* vr$22 = fb_HEXEx_i( *(uint32*)&SINGLEVALUE$1, 8 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$22, -1, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)" # SNG=", 8, 0 );
		FBSTRING* vr$25 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1, (void*)vr$25, -1, 0 );
		if( (int32)FULL$1 == 0 ) goto label$203;
		{
			FBSTRING TMP$333$3;
			__builtin_memset( &TMP$333$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$333$3, (void*)".long ", 7, (void*)&RAWBYTES$1, -1 );
			fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$31, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		goto label$202;
		label$203:;
		{
			fb_StrInit( (void*)&fb$result$1, -1, (void*)&RAWBYTES$1, -1, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		label$202:;
	}
	label$198:;
	fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
	label$196:;
	FBSTRING* vr$39 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$39;
}

static int32 DBG_ADDSTR( FBSTRING* STRG$1, int32 NOSEARCH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$204:;
	if( NOSEARCH$1 != 0 ) goto label$207;
	{
		{
			int32 ISTR$3;
			ISTR$3 = 0;
			int32 TMP$334$3;
			TMP$334$3 = *(int32*)((uint8*)&CTXDBG$ + 36);
			goto label$208;
			label$211:;
			{
				int32 vr$4 = fb_StrCompare( (void*)STRG$1, -1, (void*)((uint8*)((ISTR$3 << (4 & 31)) + *(int32*)&DBGSTR$) + 4), -1 );
				if( vr$4 != 0 ) goto label$213;
				{
					fb$result$1 = *(int32*)((ISTR$3 << (4 & 31)) + *(int32*)&DBGSTR$);
					goto label$205;
				}
				label$213:;
				label$212:;
			}
			label$209:;
			ISTR$3 = ISTR$3 + 1;
			label$208:;
			if( ISTR$3 <= TMP$334$3 ) goto label$211;
			label$210:;
		}
	}
	label$207:;
	label$206:;
	*(int32*)((uint8*)&CTXDBG$ + 36) = *(int32*)((uint8*)&CTXDBG$ + 36) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 36) <= *(int32*)((uint8*)&CTXDBG$ + 40) ) goto label$215;
	{
		*(int32*)((uint8*)&CTXDBG$ + 40) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 40) * 0x1.4CCCCCCCCCCCDp+0 );
		int32 vr$12 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTR$, 16u, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 40) );
		if( vr$12 == 0 ) goto label$216;
		void* vr$13 = fb_ErrorThrowAt( 808, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$13;
		label$216:;
	}
	label$215:;
	label$214:;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 36) << (4 & 31)) + *(int32*)&DBGSTR$) + 4), -1, (void*)STRG$1, -1, 0 );
	*(int32*)((*(int32*)((uint8*)&CTXDBG$ + 36) << (4 & 31)) + *(int32*)&DBGSTR$) = *(int32*)((uint8*)&CTXDBG$ + 52);
	fb$result$1 = *(int32*)((uint8*)&CTXDBG$ + 52);
	int32 vr$19 = fb_StrLen( (void*)STRG$1, -1 );
	*(int32*)((uint8*)&CTXDBG$ + 52) = (*(int32*)((uint8*)&CTXDBG$ + 52) + vr$19) + 1;
	label$205:;
	return fb$result$1;
}

static void DBG_ADDSTAB( FBSTRING* TXT$1, uint8 COD$1, int16 DESC$1, FBSTRING* VALUE$1 )
{
	label$217:;
	int32 OFFST$1;
	__builtin_memset( &OFFST$1, 0, 4 );
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	int32 vr$2 = fb_StrCompare( (void*)TXT$1, -1, (void*)"", 1 );
	if( vr$2 == 0 ) goto label$220;
	{
		if( (-((int32)COD$1 == 100) | -((int32)COD$1 == 132)) == 0 ) goto label$222;
		{
			int32 vr$8 = DBG_ADDSTR( TXT$1, 0 );
			OFFST$1 = vr$8;
		}
		goto label$221;
		label$222:;
		{
			int32 vr$9 = DBG_ADDSTR( TXT$1, 1 );
			OFFST$1 = vr$9;
		}
		label$221:;
	}
	label$220:;
	label$219:;
	*(int32*)((uint8*)&CTXDBG$ + 44) = *(int32*)((uint8*)&CTXDBG$ + 44) + 1;
	if( *(int32*)((uint8*)&CTXDBG$ + 44) <= *(int32*)((uint8*)&CTXDBG$ + 48) ) goto label$224;
	{
		*(int32*)((uint8*)&CTXDBG$ + 48) = fb_D2I( (double)*(int32*)((uint8*)&CTXDBG$ + 48) * 0x1.8p+0 );
		int32 vr$14 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 16u, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1u, 0, *(int32*)((uint8*)&CTXDBG$ + 48) );
		if( vr$14 == 0 ) goto label$225;
		void* vr$15 = fb_ErrorThrowAt( 828, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$15;
		label$225:;
	}
	label$224:;
	label$223:;
	*(int32*)&STAB$1 = OFFST$1;
	*(int16*)((uint8*)&STAB$1 + 4) = (int16)COD$1;
	*(int16*)((uint8*)&STAB$1 + 6) = DESC$1;
	*(int32*)((*(int32*)((uint8*)&CTXDBG$ + 44) << (4 & 31)) + *(int32*)&DBGSTAB$) = (int32)*(int64*)&STAB$1;
	fb_StrAssign( (void*)((uint8*)((*(int32*)((uint8*)&CTXDBG$ + 44) << (4 & 31)) + *(int32*)&DBGSTAB$) + 4), -1, (void*)VALUE$1, -1, 0 );
	label$218:;
}

static void DBG_EMITSTR( void )
{
	FBSTRING TMP$343$1;
	label$226:;
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$229;
	{
		FBSTRING TMP$339$2;
		__builtin_memset( &TMP$339$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$339$2, -1, (void*)".dbgstr,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$339$2 );
		fb_StrDelete( (FBSTRING*)&TMP$339$2 );
	}
	goto label$228;
	label$229:;
	{
		FBSTRING TMP$341$2;
		__builtin_memset( &TMP$341$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$341$2, -1, (void*)".dbgstr,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$341$2 );
		fb_StrDelete( (FBSTRING*)&TMP$341$2 );
	}
	label$228:;
	__builtin_memset( &TMP$343$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$343$1, -1, (void*)".byte 0", 8, 0 );
	HWRITEASM64( &TMP$343$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$343$1 );
	{
		int32 ISTR$2;
		ISTR$2 = 0;
		int32 TMP$344$2;
		TMP$344$2 = *(int32*)((uint8*)&CTXDBG$ + 36);
		goto label$230;
		label$233:;
		{
			FBSTRING TMP$349$3;
			FBSTRING TMP$350$3;
			FBSTRING TMP$351$3;
			__builtin_memset( &TMP$351$3, 0, 12 );
			FBSTRING* vr$15 = HREPLACE( (uint8*)*(uint8**)((uint8*)((ISTR$2 << (4 & 31)) + *(int32*)&DBGSTR$) + 4), (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			__builtin_memset( &TMP$349$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$349$3, (void*)".ascii \x22", 9, (void*)vr$15, -1 );
			__builtin_memset( &TMP$350$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$350$3, (void*)vr$18, -1, (void*)"\x5C" "0\x22", 4 );
			fb_StrAssign( (void*)&TMP$351$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$351$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$351$3 );
		}
		label$231:;
		ISTR$2 = ISTR$2 + 1;
		label$230:;
		if( ISTR$2 <= TMP$344$2 ) goto label$233;
		label$232:;
	}
	label$227:;
}

static void DBG_EMITSTAB( void )
{
	label$234:;
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8 );
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$237;
	{
		FBSTRING TMP$353$2;
		__builtin_memset( &TMP$353$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$353$2, -1, (void*)".dbgdat,\x22" "a\x22", 12, 0 );
		ASM_SECTION( &TMP$353$2 );
		fb_StrDelete( (FBSTRING*)&TMP$353$2 );
	}
	goto label$236;
	label$237:;
	{
		FBSTRING TMP$355$2;
		__builtin_memset( &TMP$355$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$355$2, -1, (void*)".dbgdat,\x22" "dr\x22", 13, 0 );
		ASM_SECTION( &TMP$355$2 );
		fb_StrDelete( (FBSTRING*)&TMP$355$2 );
	}
	label$236:;
	{
		int32 ISTAB$2;
		ISTAB$2 = 0;
		int32 TMP$356$2;
		TMP$356$2 = *(int32*)((uint8*)&CTXDBG$ + 44);
		goto label$238;
		label$241:;
		{
			FBSTRING TMP$359$3;
			FBSTRING TMP$360$3;
			FBSTRING TMP$361$3;
			FBSTRING TMP$362$3;
			FBSTRING TMP$363$3;
			FBSTRING TMP$364$3;
			FBSTRING TMP$365$3;
			FBSTRING TMP$366$3;
			FBSTRING TMP$367$3;
			FBSTRING TMP$368$3;
			*(int64*)&STAB$1 = (int64)*(int32*)((ISTAB$2 << (4 & 31)) + *(int32*)&DBGSTAB$);
			__builtin_memset( &TMP$366$3, 0, 12 );
			FBSTRING* vr$13 = fb_IntToStr( *(int32*)&STAB$1 );
			FBSTRING* vr$15 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 6) );
			FBSTRING* vr$17 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 4) );
			FBSTRING* vr$20 = fb_HEX_i( *(uint32*)((ISTAB$2 << (4 & 31)) + *(int32*)&DBGSTAB$) );
			__builtin_memset( &TMP$359$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$359$3, (void*)".quad 0x", 9, (void*)vr$20, -1 );
			__builtin_memset( &TMP$360$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$360$3, (void*)vr$23, -1, (void*)" # ", 4 );
			__builtin_memset( &TMP$361$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$361$3, (void*)vr$26, -1, (void*)vr$17, -1 );
			__builtin_memset( &TMP$362$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$362$3, (void*)vr$29, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$363$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$363$3, (void*)vr$32, -1, (void*)vr$15, -1 );
			__builtin_memset( &TMP$364$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$364$3, (void*)vr$35, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$365$3, 0, 12 );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$365$3, (void*)vr$38, -1, (void*)vr$13, -1 );
			fb_StrAssign( (void*)&TMP$366$3, -1, (void*)vr$41, -1, 0 );
			HWRITEASM64( &TMP$366$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$366$3 );
			__builtin_memset( &TMP$368$3, 0, 12 );
			__builtin_memset( &TMP$367$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$367$3, (void*)".quad ", 7, (void*)((uint8*)((ISTAB$2 << (4 & 31)) + *(int32*)&DBGSTAB$) + 4), -1 );
			fb_StrAssign( (void*)&TMP$368$3, -1, (void*)vr$51, -1, 0 );
			HWRITEASM64( &TMP$368$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$368$3 );
		}
		label$239:;
		ISTAB$2 = ISTAB$2 + 1;
		label$238:;
		if( ISTAB$2 <= TMP$356$2 ) goto label$241;
		label$240:;
	}
	label$235:;
}

static FBSTRING* HDECLPOINTER_ASM64( int32* DTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$283:;
	static FBSTRING DESC$1;
	fb_StrAssign( (void*)&DESC$1, -1, (void*)"", 1, 0 );
	label$285:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$286;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + -32)) | (((*DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (*DTYPE$1 & 32505856);
		FBSTRING* vr$18 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=*", 3, 0 );
		*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	}
	goto label$285;
	label$286:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	label$284:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static void HDECLUDT_ASM64( struct $8FBSYMBOL* SYM$1, int32 DIMTBELEMENTS$1 )
{
	FBSTRING TMP$405$1;
	FBSTRING TMP$406$1;
	FBSTRING TMP$407$1;
	FBSTRING TMP$408$1;
	FBSTRING TMP$419$1;
	label$287:;
	struct $8FBSYMBOL* FLD$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 136) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	uint8* vr$3 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$3, 0, 0 );
	FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 40) );
	FBSTRING* vr$8 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
	__builtin_memset( &TMP$405$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$405$1, (void*)":Tt", 4, (void*)vr$8, -1 );
	__builtin_memset( &TMP$406$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$406$1, (void*)vr$11, -1, (void*)"=s", 3 );
	__builtin_memset( &TMP$407$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$407$1, (void*)vr$14, -1, (void*)vr$6, -1 );
	__builtin_memset( &TMP$408$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$408$1, (void*)&DESC$1, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$21, -1, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$23;
	label$289:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$290;
	{
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) != 0 ) goto label$292;
		{
			FBSTRING TMP$409$3;
			FBSTRING TMP$410$3;
			FBSTRING TMP$411$3;
			int32 TMP$412$3;
			FBSTRING TMP$413$3;
			FBSTRING TMP$414$3;
			int64 TMP$415$3;
			FBSTRING TMP$416$3;
			FBSTRING TMP$417$3;
			FBSTRING* vr$26 = HGETDATATYPE_ASM64( FLD$1, DIMTBELEMENTS$1 );
			__builtin_memset( &TMP$409$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$409$3, *(void**)((uint8*)FLD$1 + 16), 0, (void*)":", 2 );
			__builtin_memset( &TMP$410$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$410$3, (void*)vr$30, -1, (void*)vr$26, -1 );
			__builtin_memset( &TMP$411$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$411$3, (void*)&DESC$1, -1, (void*)vr$33, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$37, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$293;
			TMP$412$3 = *(int32*)((uint8*)FLD$1 + 112);
			goto label$2985;
			label$293:;
			TMP$412$3 = 0;
			label$2985:;
			FBSTRING* vr$45 = fb_LongintToStr( (*(int64*)((uint8*)FLD$1 + 48) << (3ll & 63)) + (int64)TMP$412$3 );
			__builtin_memset( &TMP$413$3, 0, 12 );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$413$3, (void*)",", 2, (void*)vr$45, -1 );
			__builtin_memset( &TMP$414$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$414$3, (void*)&DESC$1, -1, (void*)vr$48, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$294;
			TMP$415$3 = (int64)*(int32*)((uint8*)FLD$1 + 116);
			goto label$2986;
			label$294:;
			int64 vr$57 = SYMBGETREALSIZE( FLD$1 );
			TMP$415$3 = vr$57 << (3ll & 63);
			label$2986:;
			FBSTRING* vr$59 = fb_LongintToStr( TMP$415$3 );
			__builtin_memset( &TMP$416$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$416$3, (void*)",", 2, (void*)vr$59, -1 );
			__builtin_memset( &TMP$417$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$417$3, (void*)&DESC$1, -1, (void*)vr$62, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$66, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
		}
		label$292:;
		label$291:;
		struct $8FBSYMBOL* vr$69 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$69;
	}
	goto label$289;
	label$290:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$419$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$419$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$419$1 );
	fb_StrDelete( (FBSTRING*)&TMP$419$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$288:;
}

static void HDECLENUM_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$422$1;
	FBSTRING TMP$423$1;
	FBSTRING TMP$424$1;
	FBSTRING TMP$429$1;
	label$295:;
	struct $8FBSYMBOL* E$1;
	__builtin_memset( &E$1, 0, 4 );
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 100) = *(int32*)&CTXDBG$;
	*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	FBSTRING* vr$7 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 100) );
	__builtin_memset( &TMP$422$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$422$1, (void*)":T", 3, (void*)vr$7, -1 );
	__builtin_memset( &TMP$423$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$423$1, (void*)vr$10, -1, (void*)"=e", 3 );
	__builtin_memset( &TMP$424$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$424$1, (void*)&DESC$1, -1, (void*)vr$13, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$17, -1, 0 );
	struct $8FBSYMBOL* vr$19 = SYMBGETENUMFIRSTELM( SYM$1 );
	E$1 = vr$19;
	label$297:;
	if( E$1 == (struct $8FBSYMBOL*)0u ) goto label$298;
	{
		FBSTRING TMP$425$2;
		FBSTRING TMP$426$2;
		FBSTRING TMP$427$2;
		FBSTRING TMP$428$2;
		FBSTRING* vr$21 = fb_LongintToStr( *(int64*)((uint8*)E$1 + 56) );
		__builtin_memset( &TMP$425$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$425$2, *(void**)((uint8*)E$1 + 16), 0, (void*)":", 2 );
		__builtin_memset( &TMP$426$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$426$2, (void*)vr$25, -1, (void*)vr$21, -1 );
		__builtin_memset( &TMP$427$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$427$2, (void*)vr$28, -1, (void*)",", 2 );
		__builtin_memset( &TMP$428$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$428$2, (void*)&DESC$1, -1, (void*)vr$31, -1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$35, -1, 0 );
		struct $8FBSYMBOL* vr$37 = SYMBGETENUMNEXTELM( E$1 );
		E$1 = vr$37;
	}
	goto label$297;
	label$298:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	__builtin_memset( &TMP$429$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$429$1, -1, (void*)"0", 2, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$429$1 );
	fb_StrDelete( (FBSTRING*)&TMP$429$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$296:;
}

static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL* SYM$1, int32 REQUESTEDDIMTBELEMENTS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$299:;
	int32 DTYPE$1;
	int32 DIMTBELEMENTS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$302;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)REMAPTB$ );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$300;
	}
	label$302:;
	label$301:;
	DIMTBELEMENTS$1 = 0;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$304;
	{
		DTYPE$1 = 20;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92);
		DIMTBELEMENTS$1 = *(int32*)((uint8*)SYM$1 + 64);
	}
	goto label$303;
	label$304:;
	{
		DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
		if( (-(*(int32*)SYM$1 == 1) | -(*(int32*)SYM$1 == 12)) == 0 ) goto label$306;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$308;
			{
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			label$308:;
			label$307:;
			if( *(int32*)((uint8*)SYM$1 + 64) <= 0 ) goto label$310;
			{
				FBSTRING* vr$29 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$29, -1, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=", 2, 0 );
				*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
				if( REQUESTEDDIMTBELEMENTS$1 <= 0 ) goto label$312;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"0;", 3, 0 );
					FBSTRING* vr$36 = fb_IntToStr( REQUESTEDDIMTBELEMENTS$1 + -1 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$36, -1, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
				}
				goto label$311;
				label$312:;
				{
					{
						int32 I$6;
						I$6 = 0;
						int32 TMP$433$6;
						TMP$433$6 = *(int32*)((uint8*)SYM$1 + 64) + -1;
						goto label$313;
						label$316:;
						{
							FBSTRING TMP$434$7;
							FBSTRING TMP$435$7;
							FBSTRING TMP$436$7;
							FBSTRING TMP$437$7;
							fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
							FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) );
							__builtin_memset( &TMP$434$7, 0, 12 );
							FBSTRING* vr$48 = fb_StrConcat( &TMP$434$7, (void*)vr$45, -1, (void*)";", 2 );
							__builtin_memset( &TMP$435$7, 0, 12 );
							FBSTRING* vr$52 = fb_StrConcat( &TMP$435$7, (void*)&DESC$1, -1, (void*)vr$48, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
							FBSTRING* vr$57 = fb_LongintToStr( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) + 8) );
							__builtin_memset( &TMP$436$7, 0, 12 );
							FBSTRING* vr$60 = fb_StrConcat( &TMP$436$7, (void*)vr$57, -1, (void*)";", 2 );
							__builtin_memset( &TMP$437$7, 0, 12 );
							FBSTRING* vr$64 = fb_StrConcat( &TMP$437$7, (void*)&DESC$1, -1, (void*)vr$60, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$64, -1, 0 );
						}
						label$314:;
						I$6 = I$6 + 1;
						label$313:;
						if( I$6 <= TMP$433$6 ) goto label$316;
						label$315:;
					}
				}
				label$311:;
			}
			label$310:;
			label$309:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 8192) == 0 ) goto label$318;
			{
				DIMTBELEMENTS$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) + 64);
			}
			label$318:;
			label$317:;
		}
		label$306:;
		label$305:;
	}
	label$303:;
	if( DIMTBELEMENTS$1 >= 0 ) goto label$320;
	{
		DIMTBELEMENTS$1 = 1;
	}
	label$320:;
	label$319:;
	if( (DTYPE$1 & 480) == 0 ) goto label$322;
	{
		FBSTRING* vr$73 = HDECLPOINTER_ASM64( &DTYPE$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$73, -1, 0 );
	}
	label$322:;
	label$321:;
	DTYPE$1 = DTYPE$1 & -513;
	{
		uint32 TMP$438$2;
		TMP$438$2 = (uint32)DTYPE$1;
		goto label$324;
		label$325:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$327;
			{
				FBSTRING TMP$439$4;
				if( *(int32*)((uint8*)SUBTYPE$1 + 136) != -1 ) goto label$329;
				{
					HDECLUDT_ASM64( SUBTYPE$1, DIMTBELEMENTS$1 );
					label$329:;
				}
				FBSTRING* vr$78 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 136) );
				__builtin_memset( &TMP$439$4, 0, 12 );
				FBSTRING* vr$82 = fb_StrConcat( &TMP$439$4, (void*)&DESC$1, -1, (void*)vr$78, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$82, -1, 0 );
			}
			goto label$326;
			label$327:;
			{
				FBSTRING TMP$440$4;
				if( *(int32*)((uint8*)SYM$1 + 136) != -1 ) goto label$331;
				{
					HDECLUDT_ASM64( SYM$1, DIMTBELEMENTS$1 );
					label$331:;
				}
				FBSTRING* vr$86 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
				__builtin_memset( &TMP$440$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$440$4, (void*)&DESC$1, -1, (void*)vr$86, -1 );
				fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$90, -1, 0 );
			}
			label$326:;
		}
		goto label$323;
		label$332:;
		{
			FBSTRING TMP$441$3;
			if( *(int32*)((uint8*)SUBTYPE$1 + 100) != -1 ) goto label$334;
			{
				HDECLENUM_ASM64( SUBTYPE$1 );
			}
			label$334:;
			label$333:;
			FBSTRING* vr$94 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 100) );
			__builtin_memset( &TMP$441$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$441$3, (void*)&DESC$1, -1, (void*)vr$94, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$98, -1, 0 );
		}
		goto label$323;
		label$335:;
		{
			FBSTRING* vr$100 = fb_UIntToStr( *(uint32*)&CTXDBG$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$100, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=f", 3, 0 );
			*(uint32*)&CTXDBG$ = *(uint32*)&CTXDBG$ + 1u;
			FBSTRING* vr$104 = HGETDATATYPE_ASM64( SUBTYPE$1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$104, -1, 0 );
		}
		goto label$323;
		label$336:;
		{
			FBSTRING* vr$106 = fb_IntToStr( *(int32*)REMAPTB$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$106, -1, 0 );
		}
		goto label$323;
		label$337:;
		{
			FBSTRING* vr$109 = fb_IntToStr( *(int32*)((uint8*)REMAPTB$ + (DTYPE$1 << (2 & 31))) );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$109, -1, 0 );
		}
		goto label$323;
		label$324:;
		static const void* tmp$3847[14] = {
			&&label$332,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$337,
			&&label$325,
			&&label$337,
			&&label$335,
			&&label$336,
		};
		if( (TMP$438$2 - 10u) > 13u ) goto label$337;
		goto *tmp$3847[TMP$438$2 - 10u];
		label$323:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$300:;
	FBSTRING* vr$115 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$115;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	label$338:;
	if( OP$1 != 113 ) goto label$341;
	{
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 20), -1, (void*)FILENAME$1, 0, 0 );
		*(int32*)((uint8*)&CTXDBG$ + 4) = LNUM$1;
	}
	goto label$340;
	label$341:;
	{
		if( OP$1 != 114 ) goto label$343;
		{
		}
		goto label$342;
		label$343:;
		if( OP$1 != 115 ) goto label$344;
		{
		}
		goto label$342;
		label$344:;
		if( OP$1 != 116 ) goto label$345;
		{
		}
		goto label$342;
		label$345:;
		{
			FBSTRING TMP$443$3;
			FBSTRING TMP$448$3;
			FBSTRING TMP$449$3;
			FBSTRING TMP$450$3;
			FBSTRING TMP$451$3;
			FBSTRING TMP$452$3;
			__builtin_memset( &TMP$443$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$443$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$443$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$443$3 );
			__builtin_memset( &TMP$451$3, 0, 12 );
			FBSTRING* vr$6 = fb_IntToStr( OP$1 );
			__builtin_memset( &TMP$448$3, 0, 12 );
			FBSTRING* vr$9 = fb_StrConcat( &TMP$448$3, (void*)"FOUND AN ERROR : Other emitdbg not handled=", 44, (void*)vr$6, -1 );
			__builtin_memset( &TMP$449$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$449$3, (void*)vr$9, -1, (void*)"for ref AST_OP_DBG_LINEEND=", 28 );
			__builtin_memset( &TMP$450$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$450$3, (void*)vr$12, -1, (void*)"114", 4 );
			fb_StrAssign( (void*)&TMP$451$3, -1, (void*)vr$15, -1, 0 );
			HWRITEASM64( &TMP$451$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$451$3 );
			__builtin_memset( &TMP$452$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$452$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$452$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$452$3 );
		}
		label$342:;
	}
	label$340:;
	label$339:;
}

static void REG_MARK( struct $8FBSYMBOL* LABELPTR$1 )
{
	label$346:;
	boolean FLAGMARK$1;
	FLAGMARK$1 = (boolean)0;
	{
		int32 IREG$2;
		IREG$2 = 1;
		label$351:;
		{
			if( (-(*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -2) & -(*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2 & 31))) != -3)) == 0 ) goto label$353;
			{
				*(int32*)((uint8*)REGROOM$ + (IREG$2 << (3 & 31))) = -2;
				FLAGMARK$1 = (boolean)1;
			}
			label$353:;
			label$352:;
		}
		label$349:;
		IREG$2 = IREG$2 + 1;
		label$348:;
		if( IREG$2 <= 15 ) goto label$351;
		label$350:;
	}
	if( FLAGMARK$1 == (boolean)0 ) goto label$355;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) = LABELPTR$1;
		label$355:;
	}
	label$347:;
}

static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 REGSPILLED$1 )
{
	struct $14ASM64_SAVEDREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$356:;
	struct $14ASM64_SAVEDREG* V$1;
	if( *(int32*)((uint8*)&CTX$ + 196) <= 0 ) goto label$359;
	{
		void* vr$2 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$2;
		label$360:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0u ) goto label$361;
		{
			if( *(int32*)((uint8*)V$1 + 4) != -2 ) goto label$363;
			{
				*(int32*)((uint8*)V$1 + 4) = *(int32*)((uint8*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
				fb$result$1 = V$1;
				goto label$357;
			}
			label$363:;
			label$362:;
			void* vr$6 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$6;
		}
		goto label$360;
		label$361:;
	}
	label$359:;
	label$358:;
	*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 96) + 8;
	if( *(int32*)((uint8*)&CTX$ + 104) == 0 ) goto label$365;
	{
		if( *(int32*)((uint8*)&CTX$ + 96) != *(int32*)((uint8*)&CTX$ + 104) ) goto label$367;
		{
			FBSTRING TMP$453$3;
			FBSTRING TMP$456$3;
			FBSTRING TMP$457$3;
			__builtin_memset( &TMP$453$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$453$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$453$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$453$3 );
			__builtin_memset( &TMP$456$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$456$3, -1, (void*)"FOUND AN ERROR : Spilling overflow when proc calling", 53, 0 );
			HWRITEASM64( &TMP$456$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$456$3 );
			__builtin_memset( &TMP$457$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$457$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$457$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$457$3 );
		}
		label$367:;
		label$366:;
	}
	label$365:;
	label$364:;
	void* vr$21 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
	V$1 = (struct $14ASM64_SAVEDREG*)vr$21;
	*(int32*)((uint8*)&CTX$ + 196) = *(int32*)((uint8*)&CTX$ + 196) + 1;
	*(int32*)V$1 = *(int32*)((uint8*)&CTX$ + 196);
	*(int32*)((uint8*)V$1 + 8) = -(*(int32*)((uint8*)&CTX$ + 96));
	*(int32*)((uint8*)V$1 + 4) = *(int32*)((uint8*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31)));
	fb$result$1 = V$1;
	goto label$357;
	label$357:;
	return fb$result$1;
}

static void REG_SPILLING( int32 REGSPILLED$1 )
{
	FBSTRING TMP$460$1;
	FBSTRING TMP$461$1;
	FBSTRING TMP$462$1;
	FBSTRING TMP$463$1;
	int32 TMP$464$1;
	label$368:;
	struct $14ASM64_SAVEDREG* V$1;
	struct $14ASM64_SAVEDREG* vr$0 = ASM64_SPILLREG( REGSPILLED$1 );
	V$1 = vr$0;
	__builtin_memset( &TMP$463$1, 0, 12 );
	FBSTRING* vr$4 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8) );
	__builtin_memset( &TMP$460$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$460$1, (void*)"mov QWORD PTR ", 15, (void*)vr$4, -1 );
	__builtin_memset( &TMP$461$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$461$1, (void*)vr$7, -1, (void*)"[rbp], ", 8 );
	__builtin_memset( &TMP$462$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$462$1, (void*)vr$10, -1, *(void**)((uint8*)REGSTRQ$ + (REGSPILLED$1 << (2 & 31))), 0 );
	fb_StrAssign( (void*)&TMP$463$1, -1, (void*)vr$13, -1, 0 );
	HWRITEASM64( &TMP$463$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$463$1 );
	*(int32*)((uint8*)REGHANDLE$ + (REGSPILLED$1 << (2 & 31))) = -2;
	if( *(int32*)((uint8*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) != -2 ) goto label$371;
	{
		*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) + 4) = V$1;
		*(int32*)((uint8*)REGROOM$ + (REGSPILLED$1 << (3 & 31))) = -3;
	}
	label$371:;
	label$370:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) == (struct $8FBSYMBOL*)0u ) goto label$372;
	TMP$464$1 = -1;
	goto label$2987;
	label$372:;
	TMP$464$1 = 0;
	label$2987:;
	*(int32*)((uint8*)V$1 + 12) = TMP$464$1;
	label$369:;
}

static void REG_SAVE( void )
{
	label$373:;
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$465$2;
		int32 vr$0 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$465$2 = vr$0;
		goto label$375;
		label$378:;
		{
			if( *(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) == -2 ) goto label$380;
			{
				REG_SPILLING( *(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) );
			}
			label$380:;
			label$379:;
		}
		label$376:;
		IREG$2 = IREG$2 + 1;
		label$375:;
		if( IREG$2 <= TMP$465$2 ) goto label$378;
		label$377:;
	}
	label$374:;
}

static void REG_ALLOWED( boolean ALLOWED$1 )
{
	label$381:;
	if( -ALLOWED$1 != 0 ) goto label$384;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$466$3;
			int32 vr$1 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$466$3 = vr$1 + -2;
			goto label$385;
			label$388:;
			{
				if( *(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -2 ) goto label$390;
				{
					*(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				}
				label$390:;
				label$389:;
			}
			label$386:;
			IREG$3 = IREG$3 + 1;
			label$385:;
			if( IREG$3 <= TMP$466$3 ) goto label$388;
			label$387:;
		}
	}
	goto label$383;
	label$384:;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$467$3;
			int32 vr$10 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$467$3 = vr$10 + -2;
			goto label$391;
			label$394:;
			{
				if( *(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) != -4 ) goto label$396;
				{
					*(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -2;
				}
				label$396:;
				label$395:;
			}
			label$392:;
			IREG$3 = IREG$3 + 1;
			label$391:;
			if( IREG$3 <= TMP$467$3 ) goto label$394;
			label$393:;
		}
	}
	label$383:;
	label$382:;
}

static int32 REG_FINDFREE( int32 VREG$1, int32 REGPARAM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$397:;
	int32 REGFREE$1;
	REGFREE$1 = -1;
	int32 NUMROOM$1;
	__builtin_memset( &NUMROOM$1, 0, 4 );
	static int32 REGSPILL$1 = -1;
	if( *(boolean*)((uint8*)&CTX$ + 137) == (boolean)0 ) goto label$400;
	{
		REG_ALLOWED( (boolean)0 );
		label$400:;
	}
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$404:;
		{
			if( *(int32*)((uint8*)REGHANDLE$ + ((int32)*(int8*)((uint8*)REG_PRIO$ + IREG$2) << (2 & 31))) != -2 ) goto label$406;
			{
				REGFREE$1 = (int32)*(int8*)((uint8*)REG_PRIO$ + IREG$2);
				goto label$403;
				label$406:;
			}
		}
		label$402:;
		IREG$2 = IREG$2 + 1;
		label$401:;
		if( IREG$2 <= 12 ) goto label$404;
		label$403:;
	}
	if( REGFREE$1 != -1 ) goto label$408;
	{
		if( REGPARAM$1 != -1 ) goto label$410;
		{
			REGSPILL$1 = REGSPILL$1 + 1;
			if( REGSPILL$1 != 6 ) goto label$412;
			{
				REGSPILL$1 = 0;
				label$412:;
			}
			label$413:;
			if( *(int32*)((uint8*)REGHANDLE$ + (REGSPILL$1 << (2 & 31))) != -4 ) goto label$414;
			{
				REGSPILL$1 = REGSPILL$1 + 1;
				if( REGSPILL$1 != 6 ) goto label$416;
				{
					REGSPILL$1 = 0;
					label$416:;
				}
			}
			goto label$413;
			label$414:;
			REGFREE$1 = (int32)*(int8*)((uint8*)REG_PRIO$ + REGSPILL$1);
		}
		goto label$409;
		label$410:;
		{
			REGFREE$1 = REGPARAM$1;
		}
		label$409:;
		REG_SPILLING( REGFREE$1 );
	}
	label$408:;
	label$407:;
	if( REGPARAM$1 == REGFREE$1 ) goto label$418;
	{
		*(int32*)((uint8*)REGHANDLE$ + (REGFREE$1 << (2 & 31))) = VREG$1;
		*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | (1 << (REGFREE$1 & 31));
	}
	label$418:;
	label$417:;
	if( *(boolean*)((uint8*)&CTX$ + 137) == (boolean)0 ) goto label$420;
	{
		REG_ALLOWED( (boolean)1 );
		label$420:;
	}
	fb$result$1 = REGFREE$1;
	goto label$398;
	label$398:;
	return fb$result$1;
}

static void REG_CALLPTR( FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	label$421:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	int32 P$1;
	__builtin_memset( &P$1, 0, 4 );
	{
		int32 IREG$2;
		IREG$2 = 1;
		int32 TMP$468$2;
		int32 vr$2 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
		TMP$468$2 = vr$2 + -2;
		goto label$423;
		label$426:;
		{
			FBSTRING TMP$470$3;
			FBSTRING TMP$471$3;
			FBSTRING TMP$472$3;
			FBSTRING TMP$473$3;
			FBSTRING* vr$7 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
			int32 vr$8 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$7 );
			P$1 = vr$8;
			if( P$1 != 0 ) goto label$428;
			{
				goto label$424;
				label$428:;
			}
			int32 vr$12 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
			REGFREE$1 = vr$12;
			__builtin_memset( &TMP$473$3, 0, 12 );
			__builtin_memset( &TMP$470$3, 0, 12 );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$470$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$471$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$471$3, (void*)vr$20, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$472$3, 0, 12 );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$472$3, (void*)vr$23, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$473$3, -1, (void*)vr$26, -1, 0 );
			HWRITEASM64( &TMP$473$3, 3 );
			fb_StrDelete( (FBSTRING*)&TMP$473$3 );
			*(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
			int32 vr$34 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
			int32 vr$38 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$2 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
			if( vr$34 != vr$38 ) goto label$430;
			{
				FBSTRING* vr$40 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
				fb_StrAssignMid( OP1$1, P$1, -1, (FBSTRING*)vr$40 );
			}
			goto label$429;
			label$430:;
			{
				FBSTRING TMP$474$4;
				FBSTRING TMP$475$4;
				FBSTRING* vr$42 = fb_StrMid( (FBSTRING*)OP1$1, P$1 + 2, -1 );
				FBSTRING* vr$45 = fb_LEFT( (FBSTRING*)OP1$1, P$1 + -1 );
				__builtin_memset( &TMP$474$4, 0, 12 );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$474$4, (void*)vr$45, -1, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$475$4, 0, 12 );
				FBSTRING* vr$51 = fb_StrConcat( &TMP$475$4, (void*)vr$48, -1, (void*)vr$42, -1 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$51, -1, 0 );
			}
			label$429:;
		}
		label$424:;
		IREG$2 = IREG$2 + 1;
		label$423:;
		if( IREG$2 <= TMP$468$2 ) goto label$426;
		label$425:;
	}
	int32 vr$53 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$53 == 0 ) goto label$432;
	{
		{
			int32 IREG$3;
			IREG$3 = 1;
			int32 TMP$476$3;
			int32 vr$54 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1 );
			TMP$476$3 = vr$54 + -2;
			goto label$433;
			label$436:;
			{
				FBSTRING TMP$477$4;
				FBSTRING TMP$478$4;
				FBSTRING TMP$479$4;
				FBSTRING TMP$480$4;
				FBSTRING* vr$59 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) );
				int32 vr$60 = fb_StrInstr( 1, (FBSTRING*)OP3$1, (FBSTRING*)vr$59 );
				P$1 = vr$60;
				if( P$1 != 0 ) goto label$438;
				{
					goto label$434;
					label$438:;
				}
				int32 vr$64 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), -1 );
				REGFREE$1 = vr$64;
				__builtin_memset( &TMP$480$4, 0, 12 );
				__builtin_memset( &TMP$477$4, 0, 12 );
				FBSTRING* vr$72 = fb_StrConcat( &TMP$477$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$478$4, 0, 12 );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$478$4, (void*)vr$72, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$479$4, 0, 12 );
				FBSTRING* vr$78 = fb_StrConcat( &TMP$479$4, (void*)vr$75, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$480$4, -1, (void*)vr$78, -1, 0 );
				HWRITEASM64( &TMP$480$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$480$4 );
				*(int32*)((uint8*)REGHANDLE$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))) = -4;
				int32 vr$86 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
				int32 vr$90 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + (*(int32*)((IREG$3 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				if( vr$86 != vr$90 ) goto label$440;
				{
					FBSTRING* vr$92 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))) );
					fb_StrAssignMid( OP3$1, P$1, -1, (FBSTRING*)vr$92 );
				}
				goto label$439;
				label$440:;
				{
					FBSTRING TMP$481$5;
					FBSTRING TMP$482$5;
					FBSTRING* vr$94 = fb_StrMid( (FBSTRING*)OP3$1, P$1 + 2, -1 );
					FBSTRING* vr$97 = fb_LEFT( (FBSTRING*)OP3$1, P$1 + -1 );
					__builtin_memset( &TMP$481$5, 0, 12 );
					FBSTRING* vr$100 = fb_StrConcat( &TMP$481$5, (void*)vr$97, -1, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$482$5, 0, 12 );
					FBSTRING* vr$103 = fb_StrConcat( &TMP$482$5, (void*)vr$100, -1, (void*)vr$94, -1 );
					fb_StrAssign( (void*)OP3$1, -1, (void*)vr$103, -1, 0 );
				}
				label$439:;
			}
			label$434:;
			IREG$3 = IREG$3 + 1;
			label$433:;
			if( IREG$3 <= TMP$476$3 ) goto label$436;
			label$435:;
		}
	}
	label$432:;
	label$431:;
	label$422:;
}

static void REG_BRANCH( struct $8FBSYMBOL* LABEL$1 )
{
	label$441:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) ) goto label$444;
	{
		FBSTRING TMP$483$2;
		FBSTRING TMP$484$2;
		__builtin_memset( &TMP$484$2, 0, 12 );
		uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$483$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$483$2, (void*)vr$2, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$484$2, -1, (void*)vr$5, -1, 0 );
		HWRITEASM64( &TMP$484$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$484$2 );
		{
			int32 IREG$3;
			IREG$3 = 1;
			label$448:;
			{
				if( *(int32*)((uint8*)REGROOM$ + (IREG$3 << (3 & 31))) != -3 ) goto label$450;
				{
					FBSTRING TMP$485$5;
					FBSTRING TMP$486$5;
					FBSTRING TMP$487$5;
					FBSTRING TMP$488$5;
					__builtin_memset( &TMP$488$5, 0, 12 );
					FBSTRING* vr$14 = fb_IntToStr( *(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 8) );
					__builtin_memset( &TMP$485$5, 0, 12 );
					FBSTRING* vr$17 = fb_StrConcat( &TMP$485$5, (void*)"mov QWORD PTR ", 15, (void*)vr$14, -1 );
					__builtin_memset( &TMP$486$5, 0, 12 );
					FBSTRING* vr$20 = fb_StrConcat( &TMP$486$5, (void*)vr$17, -1, (void*)"[rbp], ", 8 );
					__builtin_memset( &TMP$487$5, 0, 12 );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$487$5, (void*)vr$20, -1, *(void**)((uint8*)REGSTRQ$ + (IREG$3 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$488$5, -1, (void*)vr$23, -1, 0 );
					HWRITEASM64( &TMP$488$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$488$5 );
					*(int32*)((uint8*)REGHANDLE$ + (IREG$3 << (2 & 31))) = -2;
					*(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) + 12) = 0;
				}
				label$450:;
				label$449:;
				*(int32*)((uint8*)REGROOM$ + (IREG$3 << (3 & 31))) = -1;
				*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
			}
			label$446:;
			IREG$3 = IREG$3 + 1;
			label$445:;
			if( IREG$3 <= 15 ) goto label$448;
			label$447:;
		}
		if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) != (struct $8FBSYMBOL*)0u ) goto label$452;
		{
			*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) = (struct $8FBSYMBOL*)0u;
		}
		label$452:;
		label$451:;
	}
	goto label$443;
	label$444:;
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) ) goto label$453;
	{
		FBSTRING TMP$496$2;
		FBSTRING TMP$497$2;
		if( *(int32*)((uint8*)&CTX$ + 196) <= 0 ) goto label$455;
		{
			struct $14ASM64_SAVEDREG* V$3;
			void* vr$34 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
			V$3 = (struct $14ASM64_SAVEDREG*)vr$34;
			label$456:;
			if( V$3 == (struct $14ASM64_SAVEDREG*)0u ) goto label$457;
			{
				if( *(int32*)((uint8*)V$3 + 12) == 0 ) goto label$459;
				{
					FBSTRING TMP$491$5;
					FBSTRING TMP$492$5;
					FBSTRING TMP$493$5;
					FBSTRING TMP$494$5;
					FBSTRING TMP$495$5;
					int32 vr$37 = REG_FINDFREE( *(int32*)((uint8*)V$3 + 4), -1 );
					REGFREE$1 = vr$37;
					*(int32*)((uint8*)V$3 + 4) = -2;
					__builtin_memset( &TMP$495$5, 0, 12 );
					FBSTRING* vr$41 = fb_IntToStr( *(int32*)((uint8*)V$3 + 8) );
					__builtin_memset( &TMP$491$5, 0, 12 );
					FBSTRING* vr$45 = fb_StrConcat( &TMP$491$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$492$5, 0, 12 );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$492$5, (void*)vr$45, -1, (void*)", QWORD PTR ", 13 );
					__builtin_memset( &TMP$493$5, 0, 12 );
					FBSTRING* vr$51 = fb_StrConcat( &TMP$493$5, (void*)vr$48, -1, (void*)vr$41, -1 );
					__builtin_memset( &TMP$494$5, 0, 12 );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$494$5, (void*)vr$51, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$495$5, -1, (void*)vr$54, -1, 0 );
					HWRITEASM64( &TMP$495$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$495$5 );
				}
				label$459:;
				label$458:;
				void* vr$58 = FLISTGETNEXT( (void*)V$3 );
				V$3 = (struct $14ASM64_SAVEDREG*)vr$58;
			}
			goto label$456;
			label$457:;
		}
		label$455:;
		label$454:;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) = (struct $8FBSYMBOL*)0u;
		__builtin_memset( &TMP$497$2, 0, 12 );
		uint8* vr$60 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$496$2, 0, 12 );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$496$2, (void*)vr$60, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$497$2, -1, (void*)vr$63, -1, 0 );
		HWRITEASM64( &TMP$497$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$497$2 );
	}
	label$453:;
	label$443:;
	label$442:;
}

static void REG_TRANSFER( int32 REGTRANS$1, int32 REGSOURCE$1 )
{
	label$478:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4 );
	if( (-(*(int32*)((uint8*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -2) | -(*(int32*)((uint8*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) == -4)) == 0 ) goto label$481;
	{
		goto label$479;
		label$481:;
	}
	if( REGTRANS$1 != REGSOURCE$1 ) goto label$483;
	{
		*(int32*)((uint8*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))) = -2;
		goto label$479;
	}
	label$483:;
	label$482:;
	int32 vr$8 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + (REGTRANS$1 << (2 & 31))), REGTRANS$1 );
	REGFREE$1 = vr$8;
	if( REGFREE$1 == REGTRANS$1 ) goto label$485;
	{
		FBSTRING TMP$511$2;
		FBSTRING TMP$512$2;
		FBSTRING TMP$513$2;
		FBSTRING TMP$514$2;
		__builtin_memset( &TMP$514$2, 0, 12 );
		__builtin_memset( &TMP$511$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$511$2, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$512$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$512$2, (void*)vr$14, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$513$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$513$2, (void*)vr$17, -1, *(void**)((uint8*)REGSTRQ$ + (REGTRANS$1 << (2 & 31))), 0 );
		fb_StrAssign( (void*)&TMP$514$2, -1, (void*)vr$20, -1, 0 );
		HWRITEASM64( &TMP$514$2, 3 );
		fb_StrDelete( (FBSTRING*)&TMP$514$2 );
	}
	goto label$484;
	label$485:;
	{
	}
	label$484:;
	label$479:;
}

static void MEMCLEAR( int32 BYTESTOCLEAR$1, FBSTRING* DST$1, int32 DTYP$1 )
{
	label$486:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	uint32 NOOPTIM$1;
	__builtin_memset( &NOOPTIM$1, 0, 4 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$6 = fb_StrInstr( 1, (FBSTRING*)vr$5, (FBSTRING*)DST$1 );
	if( vr$6 == 0 ) goto label$489;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$488;
	label$489:;
	{
		int32 vr$8 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$8;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((uint8*)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$491;
		{
			FBSTRING TMP$516$3;
			FBSTRING TMP$517$3;
			FBSTRING TMP$518$3;
			FBSTRING TMP$519$3;
			__builtin_memset( &TMP$519$3, 0, 12 );
			__builtin_memset( &TMP$516$3, 0, 12 );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$516$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$517$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$517$3, (void*)vr$15, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$518$3, 0, 12 );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$518$3, (void*)vr$18, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$519$3, -1, (void*)vr$21, -1, 0 );
			HWRITEASM64( &TMP$519$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$519$3 );
		}
		goto label$490;
		label$491:;
		{
			FBSTRING TMP$520$3;
			FBSTRING TMP$521$3;
			FBSTRING TMP$522$3;
			FBSTRING TMP$523$3;
			__builtin_memset( &TMP$523$3, 0, 12 );
			__builtin_memset( &TMP$520$3, 0, 12 );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$520$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$521$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$521$3, (void*)vr$29, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$522$3, 0, 12 );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$522$3, (void*)vr$32, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$523$3, -1, (void*)vr$35, -1, 0 );
			HWRITEASM64( &TMP$523$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$523$3 );
		}
		label$490:;
		*(int32*)((uint8*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
	}
	label$488:;
	if( (((-(NBBYTES$1 != 1u) & -(NBBYTES$1 != 2u)) & -(NBBYTES$1 != 4u)) & -(NBBYTES$1 != 8u)) == 0 ) goto label$493;
	{
		NOOPTIM$1 = 3u;
	}
	goto label$492;
	label$493:;
	{
		NOOPTIM$1 = 0u;
	}
	label$492:;
	if( NBBYTES$1 <= 7u ) goto label$495;
	{
		NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
		if( NB8$1 <= 7 ) goto label$497;
		{
			FBSTRING TMP$525$3;
			FBSTRING TMP$526$3;
			FBSTRING TMP$527$3;
			FBSTRING TMP$528$3;
			FBSTRING TMP$531$3;
			FBSTRING TMP$532$3;
			FBSTRING TMP$533$3;
			FBSTRING TMP$536$3;
			FBSTRING TMP$537$3;
			FBSTRING TMP$538$3;
			FBSTRING TMP$540$3;
			FBSTRING TMP$542$3;
			FBSTRING TMP$543$3;
			__builtin_memset( &TMP$526$3, 0, 12 );
			FBSTRING* vr$49 = fb_IntToStr( NB8$1 );
			__builtin_memset( &TMP$525$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$525$3, (void*)"mov rax, ", 10, (void*)vr$49, -1 );
			fb_StrAssign( (void*)&TMP$526$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$526$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$526$3 );
			uint8* vr$56 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$56, 0, 0 );
			__builtin_memset( &TMP$528$3, 0, 12 );
			__builtin_memset( &TMP$527$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$527$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$528$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$528$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$528$3 );
			__builtin_memset( &TMP$533$3, 0, 12 );
			__builtin_memset( &TMP$531$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$531$3, (void*)"mov QWORD PTR [", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$532$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$532$3, (void*)vr$70, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$533$3, -1, (void*)vr$73, -1, 0 );
			HWRITEASM64( &TMP$533$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$533$3 );
			__builtin_memset( &TMP$538$3, 0, 12 );
			__builtin_memset( &TMP$536$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$536$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$537$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$537$3, (void*)vr$81, -1, (void*)", 8", 4 );
			fb_StrAssign( (void*)&TMP$538$3, -1, (void*)vr$84, -1, 0 );
			HWRITEASM64( &TMP$538$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$538$3 );
			__builtin_memset( &TMP$540$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$540$3, -1, (void*)"dec rax", 8, 0 );
			HWRITEASM64( &TMP$540$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$540$3 );
			__builtin_memset( &TMP$543$3, 0, 12 );
			__builtin_memset( &TMP$542$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$542$3, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$543$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$543$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$543$3 );
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		}
		goto label$496;
		label$497:;
		{
			{
				int32 INB8$4;
				INB8$4 = 0;
				int32 TMP$544$4;
				TMP$544$4 = NB8$1 + -1;
				goto label$498;
				label$501:;
				{
					FBSTRING TMP$545$5;
					FBSTRING TMP$546$5;
					FBSTRING TMP$547$5;
					FBSTRING TMP$548$5;
					FBSTRING TMP$549$5;
					__builtin_memset( &TMP$549$5, 0, 12 );
					FBSTRING* vr$106 = fb_IntToStr( INB8$4 << (3 & 31) );
					__builtin_memset( &TMP$545$5, 0, 12 );
					FBSTRING* vr$109 = fb_StrConcat( &TMP$545$5, (void*)"mov QWORD PTR ", 15, (void*)vr$106, -1 );
					__builtin_memset( &TMP$546$5, 0, 12 );
					FBSTRING* vr$112 = fb_StrConcat( &TMP$546$5, (void*)vr$109, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$547$5, 0, 12 );
					FBSTRING* vr$115 = fb_StrConcat( &TMP$547$5, (void*)vr$112, -1, (void*)&REGDST$1, -1 );
					__builtin_memset( &TMP$548$5, 0, 12 );
					FBSTRING* vr$118 = fb_StrConcat( &TMP$548$5, (void*)vr$115, -1, (void*)"], 0", 5 );
					fb_StrAssign( (void*)&TMP$549$5, -1, (void*)vr$118, -1, 0 );
					HWRITEASM64( &TMP$549$5, (int32)NOOPTIM$1 );
					fb_StrDelete( (FBSTRING*)&TMP$549$5 );
				}
				label$499:;
				INB8$4 = INB8$4 + 1;
				label$498:;
				if( INB8$4 <= TMP$544$4 ) goto label$501;
				label$500:;
			}
			NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
			if( NBBYTES$1 == 0u ) goto label$503;
			{
				FBSTRING TMP$550$4;
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				FBSTRING TMP$553$4;
				__builtin_memset( &TMP$553$4, 0, 12 );
				FBSTRING* vr$127 = fb_IntToStr( NB8$1 << (3 & 31) );
				__builtin_memset( &TMP$550$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$550$4, (void*)"add ", 5, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$551$4, 0, 12 );
				FBSTRING* vr$134 = fb_StrConcat( &TMP$551$4, (void*)vr$131, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$552$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$552$4, (void*)vr$134, -1, (void*)vr$127, -1 );
				fb_StrAssign( (void*)&TMP$553$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$553$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$553$4 );
			}
			label$503:;
			label$502:;
		}
		label$496:;
	}
	label$495:;
	label$494:;
	if( NBBYTES$1 <= 3u ) goto label$505;
	{
		FBSTRING TMP$555$2;
		FBSTRING TMP$556$2;
		FBSTRING TMP$557$2;
		__builtin_memset( &TMP$557$2, 0, 12 );
		__builtin_memset( &TMP$555$2, 0, 12 );
		FBSTRING* vr$145 = fb_StrConcat( &TMP$555$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$556$2, 0, 12 );
		FBSTRING* vr$148 = fb_StrConcat( &TMP$556$2, (void*)vr$145, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$557$2, -1, (void*)vr$148, -1, 0 );
		HWRITEASM64( &TMP$557$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$557$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$507;
		{
			FBSTRING TMP$559$3;
			FBSTRING TMP$560$3;
			FBSTRING TMP$561$3;
			__builtin_memset( &TMP$561$3, 0, 12 );
			__builtin_memset( &TMP$559$3, 0, 12 );
			FBSTRING* vr$157 = fb_StrConcat( &TMP$559$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$560$3, 0, 12 );
			FBSTRING* vr$160 = fb_StrConcat( &TMP$560$3, (void*)vr$157, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$561$3, -1, (void*)vr$160, -1, 0 );
			HWRITEASM64( &TMP$561$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$561$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$509;
			{
				FBSTRING TMP$563$4;
				FBSTRING TMP$564$4;
				FBSTRING TMP$565$4;
				__builtin_memset( &TMP$565$4, 0, 12 );
				__builtin_memset( &TMP$563$4, 0, 12 );
				FBSTRING* vr$169 = fb_StrConcat( &TMP$563$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$564$4, 0, 12 );
				FBSTRING* vr$172 = fb_StrConcat( &TMP$564$4, (void*)vr$169, -1, (void*)"], 0", 5 );
				fb_StrAssign( (void*)&TMP$565$4, -1, (void*)vr$172, -1, 0 );
				HWRITEASM64( &TMP$565$4, (int32)NOOPTIM$1 );
				fb_StrDelete( (FBSTRING*)&TMP$565$4 );
			}
			label$509:;
			label$508:;
		}
		goto label$506;
		label$507:;
		if( NBBYTES$1 <= 0u ) goto label$510;
		{
			FBSTRING TMP$567$3;
			FBSTRING TMP$568$3;
			FBSTRING TMP$569$3;
			__builtin_memset( &TMP$569$3, 0, 12 );
			__builtin_memset( &TMP$567$3, 0, 12 );
			FBSTRING* vr$180 = fb_StrConcat( &TMP$567$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$568$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$568$3, (void*)vr$180, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$569$3, -1, (void*)vr$183, -1, 0 );
			HWRITEASM64( &TMP$569$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$569$3 );
		}
		label$510:;
		label$506:;
	}
	goto label$504;
	label$505:;
	if( NBBYTES$1 <= 1u ) goto label$511;
	{
		FBSTRING TMP$571$2;
		FBSTRING TMP$572$2;
		FBSTRING TMP$573$2;
		__builtin_memset( &TMP$573$2, 0, 12 );
		__builtin_memset( &TMP$571$2, 0, 12 );
		FBSTRING* vr$191 = fb_StrConcat( &TMP$571$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$572$2, 0, 12 );
		FBSTRING* vr$194 = fb_StrConcat( &TMP$572$2, (void*)vr$191, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$573$2, -1, (void*)vr$194, -1, 0 );
		HWRITEASM64( &TMP$573$2, (int32)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$573$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$513;
		{
			FBSTRING TMP$575$3;
			FBSTRING TMP$576$3;
			FBSTRING TMP$577$3;
			__builtin_memset( &TMP$577$3, 0, 12 );
			__builtin_memset( &TMP$575$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$575$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$576$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$576$3, (void*)vr$203, -1, (void*)"], 0", 5 );
			fb_StrAssign( (void*)&TMP$577$3, -1, (void*)vr$206, -1, 0 );
			HWRITEASM64( &TMP$577$3, (int32)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$577$3 );
		}
		label$513:;
		label$512:;
	}
	goto label$504;
	label$511:;
	if( NBBYTES$1 <= 0u ) goto label$514;
	{
		FBSTRING TMP$579$2;
		FBSTRING TMP$580$2;
		FBSTRING TMP$581$2;
		__builtin_memset( &TMP$581$2, 0, 12 );
		__builtin_memset( &TMP$579$2, 0, 12 );
		FBSTRING* vr$214 = fb_StrConcat( &TMP$579$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$580$2, 0, 12 );
		FBSTRING* vr$217 = fb_StrConcat( &TMP$580$2, (void*)vr$214, -1, (void*)"], 0", 5 );
		fb_StrAssign( (void*)&TMP$581$2, -1, (void*)vr$217, -1, 0 );
		HWRITEASM64( &TMP$581$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$581$2 );
	}
	label$514:;
	label$504:;
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$487:;
}

static void MEMCOPY( int32 BYTESTOCLEAR$1, FBSTRING* SRC$1, FBSTRING* DST$1, int32 STYP$1, int32 DTYP$1 )
{
	label$515:;
	uint32 NBBYTES$1;
	NBBYTES$1 = (uint32)BYTESTOCLEAR$1;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 12 );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 12 );
	FBSTRING REGNBB$1;
	__builtin_memset( &REGNBB$1, 0, 12 );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4 );
	int32 RSRC$1;
	__builtin_memset( &RSRC$1, 0, 4 );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4 );
	int32 RNBB$1;
	__builtin_memset( &RNBB$1, 0, 4 );
	if( BYTESTOCLEAR$1 != 0 ) goto label$518;
	{
		fb_StrDelete( (FBSTRING*)&REGNBB$1 );
		fb_StrDelete( (FBSTRING*)&REGDST$1 );
		fb_StrDelete( (FBSTRING*)&REGSRC$1 );
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$516;
	}
	label$518:;
	label$517:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$13 = fb_StrInstr( 1, (FBSTRING*)vr$12, (FBSTRING*)SRC$1 );
	if( vr$13 == 0 ) goto label$520;
	{
		fb_StrAssign( (void*)&REGSRC$1, -1, (void*)SRC$1, -1, 0 );
	}
	goto label$519;
	label$520:;
	{
		int32 vr$15 = REG_FINDFREE( 999998, -1 );
		RSRC$1 = vr$15;
		fb_StrAssign( (void*)&REGSRC$1, -1, *(void**)((uint8*)REGSTRQ$ + (RSRC$1 << (2 & 31))), 0, 0 );
		if( STYP$1 != 1 ) goto label$522;
		{
			FBSTRING TMP$582$3;
			FBSTRING TMP$583$3;
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			__builtin_memset( &TMP$585$3, 0, 12 );
			__builtin_memset( &TMP$582$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$582$3, (void*)"lea ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$583$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$583$3, (void*)vr$22, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$584$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$584$3, (void*)vr$25, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$585$3, -1, (void*)vr$28, -1, 0 );
			HWRITEASM64( &TMP$585$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$585$3 );
		}
		goto label$521;
		label$522:;
		{
			FBSTRING TMP$586$3;
			FBSTRING TMP$587$3;
			FBSTRING TMP$588$3;
			FBSTRING TMP$589$3;
			__builtin_memset( &TMP$589$3, 0, 12 );
			__builtin_memset( &TMP$586$3, 0, 12 );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$586$3, (void*)"mov ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$587$3, 0, 12 );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$587$3, (void*)vr$36, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$588$3, 0, 12 );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$588$3, (void*)vr$39, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$589$3, -1, (void*)vr$42, -1, 0 );
			HWRITEASM64( &TMP$589$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$589$3 );
		}
		label$521:;
	}
	label$519:;
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49 );
	int32 vr$47 = fb_StrInstr( 1, (FBSTRING*)vr$46, (FBSTRING*)DST$1 );
	if( vr$47 == 0 ) goto label$524;
	{
		fb_StrAssign( (void*)&REGDST$1, -1, (void*)DST$1, -1, 0 );
	}
	goto label$523;
	label$524:;
	{
		int32 vr$49 = REG_FINDFREE( 999997, -1 );
		RDST$1 = vr$49;
		fb_StrAssign( (void*)&REGDST$1, -1, *(void**)((uint8*)REGSTRQ$ + (RDST$1 << (2 & 31))), 0, 0 );
		if( DTYP$1 != 1 ) goto label$526;
		{
			FBSTRING TMP$590$3;
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			FBSTRING TMP$593$3;
			__builtin_memset( &TMP$593$3, 0, 12 );
			__builtin_memset( &TMP$590$3, 0, 12 );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$590$3, (void*)"lea ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$591$3, 0, 12 );
			FBSTRING* vr$59 = fb_StrConcat( &TMP$591$3, (void*)vr$56, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$592$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$592$3, (void*)vr$59, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$593$3, -1, (void*)vr$62, -1, 0 );
			HWRITEASM64( &TMP$593$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$593$3 );
		}
		goto label$525;
		label$526:;
		{
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$597$3;
			__builtin_memset( &TMP$597$3, 0, 12 );
			__builtin_memset( &TMP$594$3, 0, 12 );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$594$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$595$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$595$3, (void*)vr$70, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$596$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$596$3, (void*)vr$73, -1, (void*)DST$1, -1 );
			fb_StrAssign( (void*)&TMP$597$3, -1, (void*)vr$76, -1, 0 );
			HWRITEASM64( &TMP$597$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$597$3 );
		}
		label$525:;
	}
	label$523:;
	NB8$1 = (int32)(NBBYTES$1 >> (3u & 31));
	if( NB8$1 <= 7 ) goto label$528;
	{
		FBSTRING TMP$598$2;
		FBSTRING TMP$599$2;
		FBSTRING TMP$600$2;
		FBSTRING TMP$601$2;
		FBSTRING TMP$602$2;
		FBSTRING TMP$603$2;
		FBSTRING TMP$605$2;
		FBSTRING TMP$606$2;
		FBSTRING TMP$607$2;
		FBSTRING TMP$610$2;
		FBSTRING TMP$611$2;
		FBSTRING TMP$612$2;
		FBSTRING TMP$613$2;
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		FBSTRING TMP$616$2;
		FBSTRING TMP$617$2;
		FBSTRING TMP$618$2;
		FBSTRING TMP$620$2;
		FBSTRING TMP$621$2;
		FBSTRING TMP$622$2;
		FBSTRING TMP$623$2;
		int32 vr$81 = REG_FINDFREE( 999996, -1 );
		RNBB$1 = vr$81;
		fb_StrAssign( (void*)&REGNBB$1, -1, *(void**)((uint8*)REGSTRQ$ + (RNBB$1 << (2 & 31))), 0, 0 );
		*(int32*)((uint8*)REGHANDLE$ + (RNBB$1 << (2 & 31))) = -2;
		__builtin_memset( &TMP$601$2, 0, 12 );
		FBSTRING* vr$86 = fb_IntToStr( NB8$1 );
		__builtin_memset( &TMP$598$2, 0, 12 );
		FBSTRING* vr$90 = fb_StrConcat( &TMP$598$2, (void*)"mov ", 5, (void*)&REGNBB$1, -1 );
		__builtin_memset( &TMP$599$2, 0, 12 );
		FBSTRING* vr$93 = fb_StrConcat( &TMP$599$2, (void*)vr$90, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$600$2, 0, 12 );
		FBSTRING* vr$96 = fb_StrConcat( &TMP$600$2, (void*)vr$93, -1, (void*)vr$86, -1 );
		fb_StrAssign( (void*)&TMP$601$2, -1, (void*)vr$96, -1, 0 );
		HWRITEASM64( &TMP$601$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$601$2 );
		uint8* vr$100 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$100, 0, 0 );
		__builtin_memset( &TMP$603$2, 0, 12 );
		__builtin_memset( &TMP$602$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$602$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$603$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$603$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$603$2 );
		__builtin_memset( &TMP$607$2, 0, 12 );
		__builtin_memset( &TMP$605$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$605$2, (void*)"mov rax, [", 11, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$606$2, 0, 12 );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$606$2, (void*)vr$114, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$607$2, -1, (void*)vr$117, -1, 0 );
		HWRITEASM64( &TMP$607$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$607$2 );
		__builtin_memset( &TMP$612$2, 0, 12 );
		__builtin_memset( &TMP$610$2, 0, 12 );
		FBSTRING* vr$125 = fb_StrConcat( &TMP$610$2, (void*)"mov [", 6, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$611$2, 0, 12 );
		FBSTRING* vr$128 = fb_StrConcat( &TMP$611$2, (void*)vr$125, -1, (void*)"], rax", 7 );
		fb_StrAssign( (void*)&TMP$612$2, -1, (void*)vr$128, -1, 0 );
		HWRITEASM64( &TMP$612$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$612$2 );
		__builtin_memset( &TMP$615$2, 0, 12 );
		__builtin_memset( &TMP$613$2, 0, 12 );
		FBSTRING* vr$136 = fb_StrConcat( &TMP$613$2, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$614$2, 0, 12 );
		FBSTRING* vr$139 = fb_StrConcat( &TMP$614$2, (void*)vr$136, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$615$2, -1, (void*)vr$139, -1, 0 );
		HWRITEASM64( &TMP$615$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$615$2 );
		__builtin_memset( &TMP$618$2, 0, 12 );
		__builtin_memset( &TMP$616$2, 0, 12 );
		FBSTRING* vr$147 = fb_StrConcat( &TMP$616$2, (void*)"add ", 5, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$617$2, 0, 12 );
		FBSTRING* vr$150 = fb_StrConcat( &TMP$617$2, (void*)vr$147, -1, (void*)", 8", 4 );
		fb_StrAssign( (void*)&TMP$618$2, -1, (void*)vr$150, -1, 0 );
		HWRITEASM64( &TMP$618$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$618$2 );
		__builtin_memset( &TMP$621$2, 0, 12 );
		__builtin_memset( &TMP$620$2, 0, 12 );
		FBSTRING* vr$158 = fb_StrConcat( &TMP$620$2, (void*)"dec ", 5, (void*)&REGNBB$1, -1 );
		fb_StrAssign( (void*)&TMP$621$2, -1, (void*)vr$158, -1, 0 );
		HWRITEASM64( &TMP$621$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$621$2 );
		__builtin_memset( &TMP$623$2, 0, 12 );
		__builtin_memset( &TMP$622$2, 0, 12 );
		FBSTRING* vr$166 = fb_StrConcat( &TMP$622$2, (void*)"jnz ", 5, (void*)&LNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$623$2, -1, (void*)vr$166, -1, 0 );
		HWRITEASM64( &TMP$623$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$623$2 );
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
	}
	goto label$527;
	label$528:;
	if( NB8$1 <= 0 ) goto label$529;
	{
		{
			int32 INB8$3;
			INB8$3 = 0;
			int32 TMP$624$3;
			TMP$624$3 = NB8$1 + -1;
			goto label$530;
			label$533:;
			{
				FBSTRING TMP$625$4;
				FBSTRING TMP$626$4;
				FBSTRING TMP$627$4;
				FBSTRING TMP$628$4;
				FBSTRING TMP$629$4;
				FBSTRING TMP$630$4;
				FBSTRING TMP$631$4;
				FBSTRING TMP$632$4;
				FBSTRING TMP$633$4;
				FBSTRING TMP$634$4;
				__builtin_memset( &TMP$629$4, 0, 12 );
				FBSTRING* vr$176 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$625$4, 0, 12 );
				FBSTRING* vr$179 = fb_StrConcat( &TMP$625$4, (void*)"mov rax, ", 10, (void*)vr$176, -1 );
				__builtin_memset( &TMP$626$4, 0, 12 );
				FBSTRING* vr$182 = fb_StrConcat( &TMP$626$4, (void*)vr$179, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$627$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$627$4, (void*)vr$182, -1, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$628$4, 0, 12 );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$628$4, (void*)vr$185, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$629$4, -1, (void*)vr$188, -1, 0 );
				HWRITEASM64( &TMP$629$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$629$4 );
				__builtin_memset( &TMP$634$4, 0, 12 );
				FBSTRING* vr$195 = fb_IntToStr( INB8$3 << (3 & 31) );
				__builtin_memset( &TMP$630$4, 0, 12 );
				FBSTRING* vr$198 = fb_StrConcat( &TMP$630$4, (void*)"mov ", 5, (void*)vr$195, -1 );
				__builtin_memset( &TMP$631$4, 0, 12 );
				FBSTRING* vr$201 = fb_StrConcat( &TMP$631$4, (void*)vr$198, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$632$4, 0, 12 );
				FBSTRING* vr$204 = fb_StrConcat( &TMP$632$4, (void*)vr$201, -1, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$633$4, 0, 12 );
				FBSTRING* vr$207 = fb_StrConcat( &TMP$633$4, (void*)vr$204, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$634$4, -1, (void*)vr$207, -1, 0 );
				HWRITEASM64( &TMP$634$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$634$4 );
			}
			label$531:;
			INB8$3 = INB8$3 + 1;
			label$530:;
			if( INB8$3 <= TMP$624$3 ) goto label$533;
			label$532:;
		}
		NBBYTES$1 = NBBYTES$1 - (uint32)(NB8$1 << (3 & 31));
		if( NBBYTES$1 == 0u ) goto label$535;
		{
			FBSTRING TMP$635$3;
			FBSTRING TMP$636$3;
			FBSTRING TMP$637$3;
			FBSTRING TMP$638$3;
			FBSTRING TMP$639$3;
			FBSTRING TMP$640$3;
			FBSTRING TMP$641$3;
			FBSTRING TMP$642$3;
			__builtin_memset( &TMP$638$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$635$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$635$3, (void*)"add ", 5, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$636$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$636$3, (void*)vr$220, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$637$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$637$3, (void*)vr$223, -1, (void*)vr$216, -1 );
			fb_StrAssign( (void*)&TMP$638$3, -1, (void*)vr$226, -1, 0 );
			HWRITEASM64( &TMP$638$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$638$3 );
			__builtin_memset( &TMP$642$3, 0, 12 );
			FBSTRING* vr$232 = fb_IntToStr( NB8$1 << (3 & 31) );
			__builtin_memset( &TMP$639$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$639$3, (void*)"add ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$640$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$640$3, (void*)vr$236, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$641$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$641$3, (void*)vr$239, -1, (void*)vr$232, -1 );
			fb_StrAssign( (void*)&TMP$642$3, -1, (void*)vr$242, -1, 0 );
			HWRITEASM64( &TMP$642$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$642$3 );
		}
		label$535:;
		label$534:;
	}
	label$529:;
	label$527:;
	if( NBBYTES$1 <= 3u ) goto label$537;
	{
		FBSTRING TMP$644$2;
		FBSTRING TMP$645$2;
		FBSTRING TMP$646$2;
		FBSTRING TMP$648$2;
		FBSTRING TMP$649$2;
		FBSTRING TMP$650$2;
		__builtin_memset( &TMP$646$2, 0, 12 );
		__builtin_memset( &TMP$644$2, 0, 12 );
		FBSTRING* vr$250 = fb_StrConcat( &TMP$644$2, (void*)"mov eax, dword ptr [", 21, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$645$2, 0, 12 );
		FBSTRING* vr$253 = fb_StrConcat( &TMP$645$2, (void*)vr$250, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$646$2, -1, (void*)vr$253, -1, 0 );
		HWRITEASM64( &TMP$646$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$646$2 );
		__builtin_memset( &TMP$650$2, 0, 12 );
		__builtin_memset( &TMP$648$2, 0, 12 );
		FBSTRING* vr$261 = fb_StrConcat( &TMP$648$2, (void*)"mov dword ptr [", 16, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$649$2, 0, 12 );
		FBSTRING* vr$264 = fb_StrConcat( &TMP$649$2, (void*)vr$261, -1, (void*)"], eax", 7 );
		fb_StrAssign( (void*)&TMP$650$2, -1, (void*)vr$264, -1, 0 );
		HWRITEASM64( &TMP$650$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$650$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967292u;
		if( NBBYTES$1 <= 1u ) goto label$539;
		{
			FBSTRING TMP$652$3;
			FBSTRING TMP$653$3;
			FBSTRING TMP$654$3;
			FBSTRING TMP$656$3;
			FBSTRING TMP$657$3;
			FBSTRING TMP$658$3;
			__builtin_memset( &TMP$654$3, 0, 12 );
			__builtin_memset( &TMP$652$3, 0, 12 );
			FBSTRING* vr$273 = fb_StrConcat( &TMP$652$3, (void*)"mov ax, word ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$653$3, 0, 12 );
			FBSTRING* vr$276 = fb_StrConcat( &TMP$653$3, (void*)vr$273, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$654$3, -1, (void*)vr$276, -1, 0 );
			HWRITEASM64( &TMP$654$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$654$3 );
			__builtin_memset( &TMP$658$3, 0, 12 );
			__builtin_memset( &TMP$656$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$656$3, (void*)"mov word ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$657$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$657$3, (void*)vr$284, -1, (void*)"], ax", 6 );
			fb_StrAssign( (void*)&TMP$658$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$658$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$658$3 );
			NBBYTES$1 = NBBYTES$1 + 4294967294u;
			if( NBBYTES$1 <= 0u ) goto label$541;
			{
				FBSTRING TMP$660$4;
				FBSTRING TMP$661$4;
				FBSTRING TMP$662$4;
				FBSTRING TMP$664$4;
				FBSTRING TMP$665$4;
				FBSTRING TMP$666$4;
				__builtin_memset( &TMP$662$4, 0, 12 );
				__builtin_memset( &TMP$660$4, 0, 12 );
				FBSTRING* vr$296 = fb_StrConcat( &TMP$660$4, (void*)"mov al, byte ptr 6[", 20, (void*)&REGSRC$1, -1 );
				__builtin_memset( &TMP$661$4, 0, 12 );
				FBSTRING* vr$299 = fb_StrConcat( &TMP$661$4, (void*)vr$296, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$662$4, -1, (void*)vr$299, -1, 0 );
				HWRITEASM64( &TMP$662$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$662$4 );
				__builtin_memset( &TMP$666$4, 0, 12 );
				__builtin_memset( &TMP$664$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$664$4, (void*)"mov byte ptr 6[", 16, (void*)&REGDST$1, -1 );
				__builtin_memset( &TMP$665$4, 0, 12 );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$665$4, (void*)vr$307, -1, (void*)"], al", 6 );
				fb_StrAssign( (void*)&TMP$666$4, -1, (void*)vr$310, -1, 0 );
				HWRITEASM64( &TMP$666$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$666$4 );
			}
			label$541:;
			label$540:;
		}
		goto label$538;
		label$539:;
		if( NBBYTES$1 <= 0u ) goto label$542;
		{
			FBSTRING TMP$668$3;
			FBSTRING TMP$669$3;
			FBSTRING TMP$670$3;
			FBSTRING TMP$671$3;
			FBSTRING TMP$672$3;
			FBSTRING TMP$673$3;
			__builtin_memset( &TMP$670$3, 0, 12 );
			__builtin_memset( &TMP$668$3, 0, 12 );
			FBSTRING* vr$318 = fb_StrConcat( &TMP$668$3, (void*)"mov al, byte ptr 4[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$669$3, 0, 12 );
			FBSTRING* vr$321 = fb_StrConcat( &TMP$669$3, (void*)vr$318, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$670$3, -1, (void*)vr$321, -1, 0 );
			HWRITEASM64( &TMP$670$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$670$3 );
			__builtin_memset( &TMP$673$3, 0, 12 );
			__builtin_memset( &TMP$671$3, 0, 12 );
			FBSTRING* vr$329 = fb_StrConcat( &TMP$671$3, (void*)"mov byte ptr 4[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$672$3, 0, 12 );
			FBSTRING* vr$332 = fb_StrConcat( &TMP$672$3, (void*)vr$329, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$673$3, -1, (void*)vr$332, -1, 0 );
			HWRITEASM64( &TMP$673$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$673$3 );
		}
		label$542:;
		label$538:;
	}
	goto label$536;
	label$537:;
	if( NBBYTES$1 <= 1u ) goto label$543;
	{
		FBSTRING TMP$675$2;
		FBSTRING TMP$676$2;
		FBSTRING TMP$677$2;
		FBSTRING TMP$678$2;
		FBSTRING TMP$679$2;
		FBSTRING TMP$680$2;
		__builtin_memset( &TMP$677$2, 0, 12 );
		__builtin_memset( &TMP$675$2, 0, 12 );
		FBSTRING* vr$340 = fb_StrConcat( &TMP$675$2, (void*)"mov ax, word ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$676$2, 0, 12 );
		FBSTRING* vr$343 = fb_StrConcat( &TMP$676$2, (void*)vr$340, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$677$2, -1, (void*)vr$343, -1, 0 );
		HWRITEASM64( &TMP$677$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$677$2 );
		__builtin_memset( &TMP$680$2, 0, 12 );
		__builtin_memset( &TMP$678$2, 0, 12 );
		FBSTRING* vr$351 = fb_StrConcat( &TMP$678$2, (void*)"mov word ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$679$2, 0, 12 );
		FBSTRING* vr$354 = fb_StrConcat( &TMP$679$2, (void*)vr$351, -1, (void*)"], ax", 6 );
		fb_StrAssign( (void*)&TMP$680$2, -1, (void*)vr$354, -1, 0 );
		HWRITEASM64( &TMP$680$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$680$2 );
		NBBYTES$1 = NBBYTES$1 + 4294967294u;
		if( NBBYTES$1 <= 0u ) goto label$545;
		{
			FBSTRING TMP$682$3;
			FBSTRING TMP$683$3;
			FBSTRING TMP$684$3;
			FBSTRING TMP$685$3;
			FBSTRING TMP$686$3;
			FBSTRING TMP$687$3;
			__builtin_memset( &TMP$684$3, 0, 12 );
			__builtin_memset( &TMP$682$3, 0, 12 );
			FBSTRING* vr$363 = fb_StrConcat( &TMP$682$3, (void*)"mov al, byte ptr 2[", 20, (void*)&REGSRC$1, -1 );
			__builtin_memset( &TMP$683$3, 0, 12 );
			FBSTRING* vr$366 = fb_StrConcat( &TMP$683$3, (void*)vr$363, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$684$3, -1, (void*)vr$366, -1, 0 );
			HWRITEASM64( &TMP$684$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$684$3 );
			__builtin_memset( &TMP$687$3, 0, 12 );
			__builtin_memset( &TMP$685$3, 0, 12 );
			FBSTRING* vr$374 = fb_StrConcat( &TMP$685$3, (void*)"mov byte ptr 2[", 16, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$686$3, 0, 12 );
			FBSTRING* vr$377 = fb_StrConcat( &TMP$686$3, (void*)vr$374, -1, (void*)"], al", 6 );
			fb_StrAssign( (void*)&TMP$687$3, -1, (void*)vr$377, -1, 0 );
			HWRITEASM64( &TMP$687$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$687$3 );
		}
		label$545:;
		label$544:;
	}
	goto label$536;
	label$543:;
	if( NBBYTES$1 <= 0u ) goto label$546;
	{
		FBSTRING TMP$689$2;
		FBSTRING TMP$690$2;
		FBSTRING TMP$691$2;
		FBSTRING TMP$692$2;
		FBSTRING TMP$693$2;
		FBSTRING TMP$694$2;
		__builtin_memset( &TMP$691$2, 0, 12 );
		__builtin_memset( &TMP$689$2, 0, 12 );
		FBSTRING* vr$385 = fb_StrConcat( &TMP$689$2, (void*)"mov al, byte ptr [", 19, (void*)&REGSRC$1, -1 );
		__builtin_memset( &TMP$690$2, 0, 12 );
		FBSTRING* vr$388 = fb_StrConcat( &TMP$690$2, (void*)vr$385, -1, (void*)"]", 2 );
		fb_StrAssign( (void*)&TMP$691$2, -1, (void*)vr$388, -1, 0 );
		HWRITEASM64( &TMP$691$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$691$2 );
		__builtin_memset( &TMP$694$2, 0, 12 );
		__builtin_memset( &TMP$692$2, 0, 12 );
		FBSTRING* vr$396 = fb_StrConcat( &TMP$692$2, (void*)"mov byte ptr [", 15, (void*)&REGDST$1, -1 );
		__builtin_memset( &TMP$693$2, 0, 12 );
		FBSTRING* vr$399 = fb_StrConcat( &TMP$693$2, (void*)vr$396, -1, (void*)"], al", 6 );
		fb_StrAssign( (void*)&TMP$694$2, -1, (void*)vr$399, -1, 0 );
		HWRITEASM64( &TMP$694$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$694$2 );
	}
	label$546:;
	label$536:;
	int32 vr$404 = fb_StrCompare( (void*)&REGSRC$1, -1, (void*)SRC$1, -1 );
	if( vr$404 == 0 ) goto label$548;
	{
		*(int32*)((uint8*)REGHANDLE$ + (RSRC$1 << (2 & 31))) = -2;
		label$548:;
	}
	int32 vr$407 = fb_StrCompare( (void*)&REGDST$1, -1, (void*)DST$1, -1 );
	if( vr$407 == 0 ) goto label$550;
	{
		*(int32*)((uint8*)REGHANDLE$ + (RDST$1 << (2 & 31))) = -2;
		label$550:;
	}
	fb_StrDelete( (FBSTRING*)&REGNBB$1 );
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&REGSRC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$516:;
}

static void _INIT( void )
{
	label$551:;
	FLISTINIT( (struct $6TFLIST*)((uint8*)&CTX$ + 140), 256, 16 );
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 276) = *(int32*)((uint8*)&IR$ + 276) | 131840;
	label$552:;
}

static void _END( void )
{
	label$553:;
	IRHLEND(  );
	FLISTEND( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
	label$554:;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$555:;
	int32 IS_GLOBAL$1;
	int32 LENGTH$1;
	int32 LGT$1;
	FBSTRING STRG$1;
	__builtin_memset( &STRG$1, 0, 12 );
	FBSTRING NEWSTRG$1;
	__builtin_memset( &NEWSTRG$1, 0, 12 );
	int32 PNEW$1;
	__builtin_memset( &PNEW$1, 0, 4 );
	int32 POLD$1;
	__builtin_memset( &POLD$1, 0, 4 );
	int32 LENSTRG$1;
	__builtin_memset( &LENSTRG$1, 0, 4 );
	int32 vr$5 = SYMBISARRAY( SYM$1 );
	if( vr$5 == 0 ) goto label$558;
	{
	}
	label$558:;
	label$557:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 1024) == 0 ) goto label$560;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$562;
		{
			fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
			fb_StrDelete( (FBSTRING*)&STRG$1 );
			goto label$556;
		}
		label$562:;
		label$561:;
		{
			int32 TMP$695$3;
			TMP$695$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$695$3 == 4 ) goto label$565;
			label$566:;
			if( TMP$695$3 != 7 ) goto label$564;
			label$565:;
			{
				FBSTRING TMP$697$4;
				FBSTRING TMP$699$4;
				FBSTRING TMP$703$4;
				FBSTRING TMP$704$4;
				__builtin_memset( &TMP$697$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$697$4, -1, (void*)".data", 6, 0 );
				ASM_SECTION( &TMP$697$4 );
				fb_StrDelete( (FBSTRING*)&TMP$697$4 );
				__builtin_memset( &TMP$699$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$699$4, -1, (void*)".align 8", 9, 0 );
				HWRITEASM64( &TMP$699$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$699$4 );
				if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$568;
				{
					FBSTRING TMP$701$5;
					FBSTRING TMP$702$5;
					__builtin_memset( &TMP$702$5, 0, 12 );
					uint8* vr$25 = SYMBGETMANGLEDNAME( SYM$1 );
					__builtin_memset( &TMP$701$5, 0, 12 );
					FBSTRING* vr$28 = fb_StrConcat( &TMP$701$5, (void*)".globl ", 8, (void*)vr$25, 0 );
					fb_StrAssign( (void*)&TMP$702$5, -1, (void*)vr$28, -1, 0 );
					HWRITEASM64( &TMP$702$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$702$5 );
				}
				label$568:;
				label$567:;
				__builtin_memset( &TMP$704$4, 0, 12 );
				uint8* vr$33 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$703$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$703$4, (void*)vr$33, 0, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$704$4, -1, (void*)vr$36, -1, 0 );
				HWRITEASM64( &TMP$704$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$704$4 );
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 7 ) goto label$570;
				{
					FBSTRING TMP$707$5;
					FBSTRING TMP$708$5;
					FBSTRING TMP$709$5;
					FBSTRING TMP$710$5;
					uint8* vr$43 = HESCAPEW( *(uint32**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$43, 0, 0 );
					__builtin_memset( &TMP$710$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
					FBSTRING* vr$48 = fb_LEFT( (FBSTRING*)vr$47, *(int32*)((uint8*)SYMB_DTYPETB$ + 200) << (1 & 31) );
					__builtin_memset( &TMP$707$5, 0, 12 );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$707$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$708$5, 0, 12 );
					FBSTRING* vr$55 = fb_StrConcat( &TMP$708$5, (void*)vr$52, -1, (void*)vr$48, -1 );
					__builtin_memset( &TMP$709$5, 0, 12 );
					FBSTRING* vr$58 = fb_StrConcat( &TMP$709$5, (void*)vr$55, -1, (void*)"\x22", 2 );
					fb_StrAssign( (void*)&TMP$710$5, -1, (void*)vr$58, -1, 0 );
					HWRITEASM64( &TMP$710$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$710$5 );
				}
				goto label$569;
				label$570:;
				{
					FBSTRING TMP$711$5;
					FBSTRING TMP$712$5;
					FBSTRING TMP$713$5;
					uint8* vr$63 = HESCAPE( (uint8*)*(uint8**)((uint8*)SYM$1 + 56) );
					fb_StrAssign( (void*)&STRG$1, -1, (void*)vr$63, 0, 0 );
					__builtin_memset( &TMP$713$5, 0, 12 );
					__builtin_memset( &TMP$711$5, 0, 12 );
					FBSTRING* vr$69 = fb_StrConcat( &TMP$711$5, (void*)".ascii \x22", 9, (void*)&STRG$1, -1 );
					__builtin_memset( &TMP$712$5, 0, 12 );
					FBSTRING* vr$72 = fb_StrConcat( &TMP$712$5, (void*)vr$69, -1, (void*)"\x5C" "0\x22", 4 );
					fb_StrAssign( (void*)&TMP$713$5, -1, (void*)vr$72, -1, 0 );
					HWRITEASM64( &TMP$713$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$713$5 );
				}
				label$569:;
			}
			label$564:;
			label$563:;
		}
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$556;
	}
	label$560:;
	label$559:;
	if( (-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) != (struct $7ASTNODE*)0u) & (-((*(int32*)((uint8*)SYM$1 + 4) & 128) == 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0))) == 0 ) goto label$572;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$574;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 32) != 0 ) goto label$576;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$556;
			}
			label$576:;
			label$575:;
		}
		label$574:;
		label$573:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$556;
	}
	label$572:;
	label$571:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16388) == 0 ) goto label$578;
	{
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$556;
	}
	label$578:;
	label$577:;
	IS_GLOBAL$1 = *(int32*)((uint8*)SYM$1 + 4) & 59;
	if( IS_GLOBAL$1 == 0 ) goto label$580;
	{
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$582;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 16) == 0 ) goto label$584;
			{
				fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
				fb_StrDelete( (FBSTRING*)&STRG$1 );
				goto label$556;
			}
			label$584:;
			label$583:;
		}
		goto label$581;
		label$582:;
		{
			if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$586;
			{
				EDBGEMITGLOBALVAR_ASM64( SYM$1, 2 );
				label$586:;
			}
		}
		label$581:;
	}
	goto label$579;
	label$580:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$588;
		{
			LGT$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 368);
		}
		goto label$587;
		label$588:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$587:;
		{
			$12FB_SYMBCLASS TMP$714$3;
			TMP$714$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$714$3 == 1 ) goto label$591;
			label$592:;
			if( TMP$714$3 != 12 ) goto label$590;
			label$591:;
			{
				int32 NBELEMENTS$4;
				NBELEMENTS$4 = 1;
				{
					int32 I$5;
					I$5 = *(int32*)((uint8*)SYM$1 + 64) + -1;
					goto label$593;
					label$596:;
					{
						NBELEMENTS$4 = (int32)((int64)NBELEMENTS$4 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$5 << (4 & 31)))) + 1ll));
					}
					label$594:;
					I$5 = I$5 + -1;
					label$593:;
					if( I$5 >= 0 ) goto label$596;
					label$595:;
				}
				LENGTH$1 = LGT$1 * NBELEMENTS$4;
				if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$598;
				{
					*(int32*)((uint8*)&CTX$ + 96) = (((LENGTH$1 + *(int32*)((uint8*)&CTX$ + 96)) + *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104)) + -1) & ~(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104) + -1);
				}
				goto label$597;
				label$598:;
				{
					*(int32*)((uint8*)&CTX$ + 96) = (((LENGTH$1 + *(int32*)((uint8*)&CTX$ + 96)) + LGT$1) + -1) & ~(LGT$1 + -1);
				}
				label$597:;
				*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
			}
			label$590:;
			label$589:;
		}
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$600;
		{
			EDBGEMITLOCALVAR_ASM64( SYM$1, -((*(int32*)((uint8*)SYM$1 + 4) & 2) != 0) );
			label$600:;
		}
	}
	label$579:;
	if( IS_GLOBAL$1 == 0 ) goto label$602;
	{
		FBSTRING TMP$716$2;
		*(int32*)((uint8*)&CTX$ + 4) = 2;
		__builtin_memset( &TMP$716$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$716$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$716$2 );
		fb_StrDelete( (FBSTRING*)&TMP$716$2 );
		int32 SIZE$2;
		__builtin_memset( &SIZE$2, 0, 4 );
		int32 ALIGN$2;
		__builtin_memset( &ALIGN$2, 0, 4 );
		int32 NBELEMENTS$2;
		__builtin_memset( &NBELEMENTS$2, 0, 4 );
		NBELEMENTS$2 = 1;
		{
			int32 I$3;
			I$3 = *(int32*)((uint8*)SYM$1 + 64) + -1;
			goto label$603;
			label$606:;
			{
				NBELEMENTS$2 = (int32)((int64)NBELEMENTS$2 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$3 << (4 & 31)))) + 1ll));
			}
			label$604:;
			I$3 = I$3 + -1;
			label$603:;
			if( I$3 >= 0 ) goto label$606;
			label$605:;
		}
		LENGTH$1 = (int32)(*(int64*)((uint8*)SYM$1 + 40) * (int64)NBELEMENTS$2);
		if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$608;
		{
			ALIGN$2 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
		}
		goto label$607;
		label$608:;
		{
			ALIGN$2 = (int32)*(int64*)((uint8*)SYM$1 + 40);
		}
		label$607:;
		int32 vr$188 = PW2( ALIGN$2 );
		ALIGN$2 = vr$188;
		if( ALIGN$2 <= 8 ) goto label$610;
		{
			ALIGN$2 = 8;
			label$610:;
		}
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0)) == 0 ) goto label$612;
		{
			FBSTRING TMP$718$3;
			FBSTRING TMP$719$3;
			FBSTRING TMP$720$3;
			FBSTRING TMP$721$3;
			FBSTRING TMP$722$3;
			FBSTRING TMP$723$3;
			__builtin_memset( &TMP$723$3, 0, 12 );
			FBSTRING* vr$197 = fb_IntToStr( ALIGN$2 );
			FBSTRING* vr$198 = fb_IntToStr( LENGTH$1 );
			uint8* vr$199 = SYMBGETMANGLEDNAME( SYM$1 );
			__builtin_memset( &TMP$718$3, 0, 12 );
			FBSTRING* vr$202 = fb_StrConcat( &TMP$718$3, (void*)".comm ", 7, (void*)vr$199, 0 );
			__builtin_memset( &TMP$719$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$719$3, (void*)vr$202, -1, (void*)",", 2 );
			__builtin_memset( &TMP$720$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$720$3, (void*)vr$205, -1, (void*)vr$198, -1 );
			__builtin_memset( &TMP$721$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$721$3, (void*)vr$208, -1, (void*)",", 2 );
			__builtin_memset( &TMP$722$3, 0, 12 );
			FBSTRING* vr$214 = fb_StrConcat( &TMP$722$3, (void*)vr$211, -1, (void*)vr$197, -1 );
			fb_StrAssign( (void*)&TMP$723$3, -1, (void*)vr$214, -1, 0 );
			HWRITEASM64( &TMP$723$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$723$3 );
		}
		goto label$611;
		label$612:;
		{
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$614;
			{
				FBSTRING TMP$725$4;
				FBSTRING TMP$726$4;
				FBSTRING TMP$727$4;
				FBSTRING TMP$728$4;
				FBSTRING TMP$729$4;
				FBSTRING TMP$730$4;
				FBSTRING TMP$731$4;
				FBSTRING TMP$732$4;
				__builtin_memset( &TMP$726$4, 0, 12 );
				uint8* vr$219 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$725$4, 0, 12 );
				FBSTRING* vr$222 = fb_StrConcat( &TMP$725$4, (void*)".local ", 8, (void*)vr$219, 0 );
				fb_StrAssign( (void*)&TMP$726$4, -1, (void*)vr$222, -1, 0 );
				HWRITEASM64( &TMP$726$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$726$4 );
				__builtin_memset( &TMP$732$4, 0, 12 );
				FBSTRING* vr$227 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$228 = fb_IntToStr( LENGTH$1 );
				uint8* vr$229 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$727$4, 0, 12 );
				FBSTRING* vr$232 = fb_StrConcat( &TMP$727$4, (void*)".comm ", 7, (void*)vr$229, 0 );
				__builtin_memset( &TMP$728$4, 0, 12 );
				FBSTRING* vr$235 = fb_StrConcat( &TMP$728$4, (void*)vr$232, -1, (void*)",", 2 );
				__builtin_memset( &TMP$729$4, 0, 12 );
				FBSTRING* vr$238 = fb_StrConcat( &TMP$729$4, (void*)vr$235, -1, (void*)vr$228, -1 );
				__builtin_memset( &TMP$730$4, 0, 12 );
				FBSTRING* vr$241 = fb_StrConcat( &TMP$730$4, (void*)vr$238, -1, (void*)",", 2 );
				__builtin_memset( &TMP$731$4, 0, 12 );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$731$4, (void*)vr$241, -1, (void*)vr$227, -1 );
				fb_StrAssign( (void*)&TMP$732$4, -1, (void*)vr$244, -1, 0 );
				HWRITEASM64( &TMP$732$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$732$4 );
			}
			goto label$613;
			label$614:;
			{
				FBSTRING TMP$734$4;
				FBSTRING TMP$735$4;
				FBSTRING TMP$736$4;
				FBSTRING TMP$737$4;
				FBSTRING TMP$738$4;
				FBSTRING TMP$739$4;
				__builtin_memset( &TMP$739$4, 0, 12 );
				FBSTRING* vr$249 = fb_IntToStr( ALIGN$2 );
				FBSTRING* vr$250 = fb_IntToStr( LENGTH$1 );
				uint8* vr$251 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$734$4, 0, 12 );
				FBSTRING* vr$254 = fb_StrConcat( &TMP$734$4, (void*)".lcomm ", 8, (void*)vr$251, 0 );
				__builtin_memset( &TMP$735$4, 0, 12 );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$735$4, (void*)vr$254, -1, (void*)",", 2 );
				__builtin_memset( &TMP$736$4, 0, 12 );
				FBSTRING* vr$260 = fb_StrConcat( &TMP$736$4, (void*)vr$257, -1, (void*)vr$250, -1 );
				__builtin_memset( &TMP$737$4, 0, 12 );
				FBSTRING* vr$263 = fb_StrConcat( &TMP$737$4, (void*)vr$260, -1, (void*)",", 2 );
				__builtin_memset( &TMP$738$4, 0, 12 );
				FBSTRING* vr$266 = fb_StrConcat( &TMP$738$4, (void*)vr$263, -1, (void*)vr$249, -1 );
				fb_StrAssign( (void*)&TMP$739$4, -1, (void*)vr$266, -1, 0 );
				HWRITEASM64( &TMP$739$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$739$4 );
			}
			label$613:;
		}
		label$611:;
	}
	label$602:;
	label$601:;
	fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
	fb_StrDelete( (FBSTRING*)&STRG$1 );
	label$556:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$615:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	int32 vr$1 = SYMBISDATADESC( SYM$1 );
	if( vr$1 != 0 ) goto label$618;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$618:;
	label$617:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	label$616:;
}

static void NO_ROUNDSD( uint8* SIZE$1 )
{
	FBSTRING TMP$741$1;
	FBSTRING TMP$743$1;
	FBSTRING TMP$745$1;
	FBSTRING TMP$747$1;
	FBSTRING TMP$750$1;
	FBSTRING TMP$751$1;
	FBSTRING TMP$752$1;
	FBSTRING TMP$754$1;
	FBSTRING TMP$755$1;
	label$619:;
	__builtin_memset( &TMP$741$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$741$1, -1, (void*)"stmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$741$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$741$1 );
	__builtin_memset( &TMP$743$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$743$1, -1, (void*)"push $mxcsr[rip]", 17, 0 );
	HWRITEASM64( &TMP$743$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$743$1 );
	__builtin_memset( &TMP$745$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$745$1, -1, (void*)"and dword ptr $mxcsr[rip], 0xFFFF9FFF", 38, 0 );
	HWRITEASM64( &TMP$745$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$745$1 );
	__builtin_memset( &TMP$747$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$747$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$747$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$747$1 );
	__builtin_memset( &TMP$752$1, 0, 12 );
	__builtin_memset( &TMP$750$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$750$1, (void*)"cvts", 5, (void*)SIZE$1, 0 );
	__builtin_memset( &TMP$751$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$751$1, (void*)vr$19, -1, (void*)"2si rax, xmm0", 14 );
	fb_StrAssign( (void*)&TMP$752$1, -1, (void*)vr$22, -1, 0 );
	HWRITEASM64( &TMP$752$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$752$1 );
	__builtin_memset( &TMP$754$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$754$1, -1, (void*)"pop $mxcsr[rip]", 16, 0 );
	HWRITEASM64( &TMP$754$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$754$1 );
	__builtin_memset( &TMP$755$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$755$1, -1, (void*)"ldmxcsr $mxcsr[rip]", 20, 0 );
	HWRITEASM64( &TMP$755$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$755$1 );
	label$620:;
}

static int32 _EMITBEGIN( void )
{
	FBSTRING TMP$757$1;
	FBSTRING TMP$759$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$621:;
	int32 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 560) );
	if( vr$2 == 0 ) goto label$624;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 560) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$624:;
	label$623:;
	int32 vr$5 = fb_FileFree(  );
	*(int32*)((uint8*)&ENV$ + 556) = vr$5;
	FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 560) );
	int32 vr$8 = fb_FileOpen( (FBSTRING*)vr$7, 0u, 3u, 0u, *(int32*)((uint8*)&ENV$ + 556), 0 );
	if( vr$8 == 0 ) goto label$626;
	{
		fb$result$1 = 0;
		goto label$622;
	}
	label$626:;
	label$625:;
	*(int32*)&CTX$ = 0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 8), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 32), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	*(int32*)((uint8*)&CTX$ + 128) = 0;
	*(int32*)((uint8*)&CTX$ + 132) = 0;
	*(boolean*)((uint8*)&CTX$ + 136) = (boolean)0;
	int32 vr$12 = FBGETOPTION( 3 );
	*($13FB_COMPTARGET*)((uint8*)&CTX$ + 212) = vr$12;
	*(int32*)((uint8*)&CTX$ + 216) = 0;
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$630:;
		{
			*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2 & 31))) = -2;
			*(int32*)((uint8*)REGROOM$ + (IREG$2 << (3 & 31))) = -1;
			*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$2 << (3 & 31))) + 4) = (struct $14ASM64_SAVEDREG*)0u;
		}
		label$628:;
		IREG$2 = IREG$2 + 1;
		label$627:;
		if( IREG$2 <= 15 ) goto label$630;
		label$629:;
	}
	*(int32*)((uint8*)REGHANDLE$ + 24) = -3;
	*(int32*)((uint8*)REGHANDLE$ + 28) = -3;
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$632;
	{
		int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 8 );
		if( vr$17 == 0 ) goto label$633;
		void* vr$18 = fb_ErrorThrowAt( 2110, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$633:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 5;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 4;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 28) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 32) = 11;
	}
	goto label$631;
	label$632:;
	{
		int32 vr$19 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4u, -1, 0, 1u, 1, 6 );
		if( vr$19 == 0 ) goto label$634;
		void* vr$20 = fb_ErrorThrowAt( 2113, (uint8*)"src/compiler/ir-gas64.bas", (void*)0u, (void*)0u );
		goto *vr$20;
		label$634:;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 4) = 2;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 8) = 3;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 12) = 8;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 16) = 9;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 20) = 10;
		*(int32*)((uint8*)*(int32*)&LISTREG$ + 24) = 11;
	}
	label$631:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$636;
	{
		EDBGEMITHEADER_ASM64( (uint8*)((uint8*)&ENV$ + 280) );
		label$636:;
	}
	__builtin_memset( &TMP$757$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$757$1, -1, (void*)".intel_syntax noprefix", 23, 0 );
	HWRITEASM64( &TMP$757$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$757$1 );
	__builtin_memset( &TMP$759$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$759$1, -1, (void*)".text", 6, 0 );
	ASM_SECTION( &TMP$759$1 );
	fb_StrDelete( (FBSTRING*)&TMP$759$1 );
	fb$result$1 = -1;
	label$622:;
	return fb$result$1;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$637:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 16384) == 0 ) goto label$640;
	{
		goto label$638;
	}
	label$640:;
	label$639:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 65536) == 0 ) goto label$642;
	{
		if( (*(int32*)((uint8*)PROC$1 + 12) & 16777216) == 0 ) goto label$644;
		{
			int32 TMP$760$3;
			FBSTRING TMP$765$3;
			FBSTRING TMP$766$3;
			FBSTRING TMP$767$3;
			FBSTRING TMP$768$3;
			*(int32*)((uint8*)&CTX$ + 128) = *(int32*)((uint8*)&CTX$ + 128) + 1;
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$645;
			int32 vr$7 = FBGETOPTION( 0 );
			TMP$760$3 = -(vr$7 == 2);
			goto label$2988;
			label$645:;
			TMP$760$3 = 0;
			label$2988:;
			if( TMP$760$3 == 0 ) goto label$647;
			{
				FBSTRING TMP$762$4;
				__builtin_memset( &TMP$762$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$762$4, -1, (void*)".init_array", 12, 0 );
				ASM_SECTION( &TMP$762$4 );
				fb_StrDelete( (FBSTRING*)&TMP$762$4 );
			}
			goto label$646;
			label$647:;
			{
				FBSTRING TMP$764$4;
				__builtin_memset( &TMP$764$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$764$4, -1, (void*)".ctors", 7, 0 );
				ASM_SECTION( &TMP$764$4 );
				fb_StrDelete( (FBSTRING*)&TMP$764$4 );
			}
			label$646:;
			__builtin_memset( &TMP$765$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$765$3, -1, (void*)".align 8", 9, 0 );
			HWRITEASM64( &TMP$765$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$765$3 );
			__builtin_memset( &TMP$767$3, 0, 12 );
			uint8* vr$22 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$766$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$766$3, (void*)".quad ", 7, (void*)vr$22, 0 );
			fb_StrAssign( (void*)&TMP$767$3, -1, (void*)vr$25, -1, 0 );
			HWRITEASM64( &TMP$767$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$767$3 );
			__builtin_memset( &TMP$768$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$768$3, -1, (void*)".text", 6, 0 );
			ASM_SECTION( &TMP$768$3 );
			fb_StrDelete( (FBSTRING*)&TMP$768$3 );
		}
		label$644:;
		label$643:;
	}
	goto label$641;
	label$642:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 131072) == 0 ) goto label$648;
	{
		int32 TMP$769$2;
		FBSTRING TMP$774$2;
		FBSTRING TMP$775$2;
		FBSTRING TMP$776$2;
		FBSTRING TMP$777$2;
		*(int32*)((uint8*)&CTX$ + 132) = *(int32*)((uint8*)&CTX$ + 132) + 1;
		if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$649;
		int32 vr$36 = FBGETOPTION( 0 );
		TMP$769$2 = -(vr$36 == 2);
		goto label$2989;
		label$649:;
		TMP$769$2 = 0;
		label$2989:;
		if( TMP$769$2 == 0 ) goto label$651;
		{
			FBSTRING TMP$771$3;
			__builtin_memset( &TMP$771$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$771$3, -1, (void*)".fini_array", 12, 0 );
			ASM_SECTION( &TMP$771$3 );
			fb_StrDelete( (FBSTRING*)&TMP$771$3 );
		}
		goto label$650;
		label$651:;
		{
			FBSTRING TMP$773$3;
			__builtin_memset( &TMP$773$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$773$3, -1, (void*)".dtors", 7, 0 );
			ASM_SECTION( &TMP$773$3 );
			fb_StrDelete( (FBSTRING*)&TMP$773$3 );
		}
		label$650:;
		__builtin_memset( &TMP$774$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$774$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$774$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$774$2 );
		__builtin_memset( &TMP$776$2, 0, 12 );
		uint8* vr$51 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$775$2, 0, 12 );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$775$2, (void*)".quad ", 7, (void*)vr$51, 0 );
		fb_StrAssign( (void*)&TMP$776$2, -1, (void*)vr$54, -1, 0 );
		HWRITEASM64( &TMP$776$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$776$2 );
		__builtin_memset( &TMP$777$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$777$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$777$2 );
		fb_StrDelete( (FBSTRING*)&TMP$777$2 );
	}
	label$648:;
	label$641:;
	label$638:;
}

static void _EMITEND( void )
{
	label$652:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	SYMBFOREACHGLOBAL( 1, (tmp$41)&HMAYBEEMITGLOBALVAR );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	IRFOREACHDATASTMT( (tmp$41)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3, (tmp$41)&HADDGLOBALCTORDTOR );
	if( -(*(boolean*)((uint8*)&CTX$ + 136)) != -1 ) goto label$655;
	{
		FBSTRING TMP$778$2;
		int32 TMP$791$2;
		FBSTRING TMP$794$2;
		FBSTRING TMP$796$2;
		FBSTRING TMP$797$2;
		FBSTRING TMP$799$2;
		FBSTRING TMP$801$2;
		FBSTRING TMP$803$2;
		FBSTRING TMP$805$2;
		FBSTRING TMP$807$2;
		FBSTRING TMP$809$2;
		FBSTRING TMP$811$2;
		FBSTRING TMP$813$2;
		FBSTRING TMP$815$2;
		FBSTRING TMP$817$2;
		FBSTRING TMP$819$2;
		FBSTRING TMP$821$2;
		__builtin_memset( &TMP$778$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$778$2, -1, (void*)".bss", 5, 0 );
		ASM_SECTION( &TMP$778$2 );
		fb_StrDelete( (FBSTRING*)&TMP$778$2 );
		if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$657;
		{
			FBSTRING TMP$780$3;
			FBSTRING TMP$782$3;
			FBSTRING TMP$784$3;
			FBSTRING TMP$786$3;
			__builtin_memset( &TMP$780$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$780$3, -1, (void*)".local $mxcsr", 14, 0 );
			HWRITEASM64( &TMP$780$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$780$3 );
			__builtin_memset( &TMP$782$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$782$3, -1, (void*)".comm $mxcsr,8,8", 17, 0 );
			HWRITEASM64( &TMP$782$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$782$3 );
			__builtin_memset( &TMP$784$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$784$3, -1, (void*)".local $sse41", 14, 0 );
			HWRITEASM64( &TMP$784$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$784$3 );
			__builtin_memset( &TMP$786$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$786$3, -1, (void*)".comm $sse41,4,8", 17, 0 );
			HWRITEASM64( &TMP$786$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$786$3 );
		}
		goto label$656;
		label$657:;
		{
			FBSTRING TMP$788$3;
			FBSTRING TMP$790$3;
			__builtin_memset( &TMP$788$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$788$3, -1, (void*)".lcomm $mxcsr,8,8", 18, 0 );
			HWRITEASM64( &TMP$788$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$788$3 );
			__builtin_memset( &TMP$790$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$790$3, -1, (void*)".lcomm $sse41,4,8", 18, 0 );
			HWRITEASM64( &TMP$790$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$790$3 );
		}
		label$656:;
		if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$658;
		int32 vr$32 = FBGETOPTION( 0 );
		TMP$791$2 = -(vr$32 == 2);
		goto label$2990;
		label$658:;
		TMP$791$2 = 0;
		label$2990:;
		if( TMP$791$2 == 0 ) goto label$660;
		{
			FBSTRING TMP$792$3;
			__builtin_memset( &TMP$792$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$792$3, -1, (void*)".init_array", 12, 0 );
			ASM_SECTION( &TMP$792$3 );
			fb_StrDelete( (FBSTRING*)&TMP$792$3 );
		}
		goto label$659;
		label$660:;
		{
			FBSTRING TMP$793$3;
			__builtin_memset( &TMP$793$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$793$3, -1, (void*)".ctors", 7, 0 );
			ASM_SECTION( &TMP$793$3 );
			fb_StrDelete( (FBSTRING*)&TMP$793$3 );
		}
		label$659:;
		__builtin_memset( &TMP$794$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$794$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$794$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$794$2 );
		__builtin_memset( &TMP$796$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$796$2, -1, (void*)".quad $sse41_test", 18, 0 );
		HWRITEASM64( &TMP$796$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$796$2 );
		__builtin_memset( &TMP$797$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$797$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$797$2 );
		fb_StrDelete( (FBSTRING*)&TMP$797$2 );
		__builtin_memset( &TMP$799$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$799$2, -1, (void*)"$sse41_test:", 13, 0 );
		HWRITEASM64( &TMP$799$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$799$2 );
		__builtin_memset( &TMP$801$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$801$2, -1, (void*)"push rbx", 9, 0 );
		HWRITEASM64( &TMP$801$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$801$2 );
		__builtin_memset( &TMP$803$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$803$2, -1, (void*)"push rcx", 9, 0 );
		HWRITEASM64( &TMP$803$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$803$2 );
		__builtin_memset( &TMP$805$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$805$2, -1, (void*)"push rdx", 9, 0 );
		HWRITEASM64( &TMP$805$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$805$2 );
		__builtin_memset( &TMP$807$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$807$2, -1, (void*)"mov  eax, 1", 12, 0 );
		HWRITEASM64( &TMP$807$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$807$2 );
		__builtin_memset( &TMP$809$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$809$2, -1, (void*)"cpuid", 6, 0 );
		HWRITEASM64( &TMP$809$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$809$2 );
		__builtin_memset( &TMP$811$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$811$2, -1, (void*)"and ecx, 0b10000000000000000000", 32, 0 );
		HWRITEASM64( &TMP$811$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$811$2 );
		__builtin_memset( &TMP$813$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$813$2, -1, (void*)"mov $sse41[rip], ecx", 21, 0 );
		HWRITEASM64( &TMP$813$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$813$2 );
		__builtin_memset( &TMP$815$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$815$2, -1, (void*)"pop rdx", 8, 0 );
		HWRITEASM64( &TMP$815$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$815$2 );
		__builtin_memset( &TMP$817$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$817$2, -1, (void*)"pop rcx", 8, 0 );
		HWRITEASM64( &TMP$817$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$817$2 );
		__builtin_memset( &TMP$819$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$819$2, -1, (void*)"pop rbx", 8, 0 );
		HWRITEASM64( &TMP$819$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$819$2 );
		__builtin_memset( &TMP$821$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$821$2, -1, (void*)"ret", 4, 0 );
		HWRITEASM64( &TMP$821$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$821$2 );
	}
	label$655:;
	label$654:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$662;
	{
		FBSTRING TMP$822$2;
		FBSTRING TMP$823$2;
		FBSTRING TMP$824$2;
		FBSTRING TMP$825$2;
		FBSTRING LNAME$2;
		uint8* vr$102 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$102, 0, 0 );
		__builtin_memset( &TMP$822$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$822$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$822$2, (uint8)100u, (int16)0, &LNAME$2 );
		fb_StrDelete( (FBSTRING*)&TMP$822$2 );
		__builtin_memset( &TMP$823$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$823$2, -1, (void*)".text", 6, 0 );
		HWRITEASM64( &TMP$823$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$823$2 );
		__builtin_memset( &TMP$825$2, 0, 12 );
		__builtin_memset( &TMP$824$2, 0, 12 );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$824$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$825$2, -1, (void*)vr$117, -1, 0 );
		HWRITEASM64( &TMP$825$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$825$2 );
		DBG_EMITSTAB(  );
		DBG_EMITSTR(  );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$662:;
	label$661:;
	int32 vr$123 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 556), 0, (void*)((uint8*)&CTX$ + 8), -1 );
	if( vr$123 == 0 ) goto label$664;
	{
	}
	label$664:;
	label$663:;
	int32 vr$125 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 556), 0, (void*)((uint8*)&CTX$ + 20), -1 );
	if( vr$125 == 0 ) goto label$666;
	{
	}
	label$666:;
	label$665:;
	int32 vr$127 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 556), 0, (void*)((uint8*)&CTX$ + 32), -1 );
	if( vr$127 == 0 ) goto label$668;
	{
	}
	label$668:;
	label$667:;
	int32 vr$128 = fb_FileClose( *(int32*)((uint8*)&ENV$ + 556) );
	if( vr$128 == 0 ) goto label$670;
	{
	}
	label$670:;
	label$669:;
	*(int32*)((uint8*)&ENV$ + 556) = 0;
	label$653:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$671:;
	{
		if( OPT$1 != 1 ) goto label$674;
		label$675:;
		{
			fb$result$1 = 0;
			goto label$672;
		}
		goto label$673;
		label$674:;
		{
			ERRREPORTEX( 21, (uint8*)"_GETOPTIONVALUE", 0, 1, (uint8*)0u );
		}
		label$676:;
		label$673:;
	}
	label$672:;
	return fb$result$1;
}

static int32 _SUPPORTSOP( int32 OP$1, int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$677:;
	{
		uint32 TMP$827$2;
		TMP$827$2 = (uint32)OP$1;
		goto label$680;
		label$681:;
		{
			fb$result$1 = 0;
			goto label$678;
		}
		goto label$679;
		label$682:;
		{
			fb$result$1 = -1;
			goto label$678;
		}
		goto label$679;
		label$683:;
		{
			fb$result$1 = -1;
		}
		goto label$679;
		label$680:;
		static const void* tmp$3848[16] = {
			&&label$682,
			&&label$683,
			&&label$682,
			&&label$683,
			&&label$682,
			&&label$681,
			&&label$683,
			&&label$683,
			&&label$683,
			&&label$683,
			&&label$683,
			&&label$683,
			&&label$683,
			&&label$682,
			&&label$681,
			&&label$681,
		};
		if( (TMP$827$2 - 52u) > 15u ) goto label$683;
		goto *tmp$3848[TMP$827$2 - 52u];
		label$679:;
	}
	label$678:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$684:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564);
	label$685:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$686:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564);
	label$687:;
}

static int32 PARAM_ANALYZE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* STRUC$1, int32* CPTARG$1, int32* CPTINT$1, int32* CPTFLOAT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$688:;
	struct $8FBSYMBOL* FLD$1;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 INTCPT$1;
	__builtin_memset( &INTCPT$1, 0, 4 );
	int32 FLOATCPT$1;
	__builtin_memset( &FLOATCPT$1, 0, 4 );
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$691;
	{
		if( DTYPE$1 == 20 ) goto label$693;
		{
			int32 TMP$828$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$694;
			TMP$828$3 = 24;
			goto label$2991;
			label$694:;
			TMP$828$3 = DTYPE$1 & 31;
			label$2991:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$828$3 * 28)) != 1 ) goto label$696;
			{
				if( *CPTFLOAT$1 >= 8 ) goto label$698;
				{
					*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
					fb$result$1 = 1;
					goto label$689;
				}
				goto label$697;
				label$698:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$689;
				}
				label$697:;
			}
			goto label$695;
			label$696:;
			{
				if( *CPTINT$1 >= 6 ) goto label$700;
				{
					*CPTINT$1 = *CPTINT$1 + 1;
					fb$result$1 = 0;
					goto label$689;
				}
				goto label$699;
				label$700:;
				{
					*CPTARG$1 = *CPTARG$1 + 1;
					fb$result$1 = 10;
					goto label$689;
				}
				label$699:;
			}
			label$695:;
		}
		goto label$692;
		label$693:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( LGT$1 > (*(int32*)((uint8*)SYMB_DTYPETB$ + 368) << (1 & 31)) ) goto label$702;
			{
				{
					uint32 TMP$829$5;
					int32 vr$24 = HGETMAGICSTRUCTNUMBER( STRUC$1 );
					TMP$829$5 = (uint32)vr$24;
					goto label$704;
					label$705:;
					{
						if( *CPTINT$1 >= 6 ) goto label$707;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 0;
							goto label$689;
						}
						label$707:;
						label$706:;
					}
					goto label$703;
					label$708:;
					{
						if( *CPTFLOAT$1 >= 8 ) goto label$710;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 1;
							goto label$689;
						}
						label$710:;
						label$709:;
					}
					goto label$703;
					label$711:;
					{
						if( *CPTINT$1 >= 5 ) goto label$713;
						{
							*CPTINT$1 = *CPTINT$1 + 2;
							fb$result$1 = 2;
							goto label$689;
						}
						label$713:;
						label$712:;
					}
					goto label$703;
					label$714:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$716;
						{
							*CPTINT$1 = *CPTINT$1 + 1;
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							fb$result$1 = 3;
							goto label$689;
						}
						label$716:;
						label$715:;
					}
					goto label$703;
					label$717:;
					{
						if( (-(*CPTINT$1 < 6) & -(*CPTFLOAT$1 < 8)) == 0 ) goto label$719;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1;
							*CPTINT$1 = *CPTINT$1 + 1;
							fb$result$1 = 4;
							goto label$689;
						}
						label$719:;
						label$718:;
					}
					goto label$703;
					label$720:;
					{
						if( *CPTFLOAT$1 >= 7 ) goto label$722;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 2;
							fb$result$1 = 5;
							goto label$689;
						}
						label$722:;
						label$721:;
					}
					goto label$703;
					label$704:;
					static const void* tmp$3849[10] = {
						&&label$705,
						&&label$708,
						&&label$703,
						&&label$703,
						&&label$711,
						&&label$717,
						&&label$703,
						&&label$703,
						&&label$714,
						&&label$720,
					};
					if( (TMP$829$5 - 1u) > 9u ) goto label$703;
					goto *tmp$3849[TMP$829$5 - 1u];
					label$703:;
				}
			}
			label$702:;
			label$701:;
			fb$result$1 = 10;
			goto label$689;
		}
		label$692:;
	}
	goto label$690;
	label$691:;
	{
		*CPTARG$1 = *CPTARG$1 + 1;
		*CPTINT$1 = *CPTARG$1;
		*CPTFLOAT$1 = *CPTARG$1;
		if( DTYPE$1 == 20 ) goto label$724;
		{
			int32 TMP$830$3;
			if( *CPTARG$1 <= 4 ) goto label$726;
			{
				fb$result$1 = 10;
				goto label$689;
				label$726:;
			}
			if( (DTYPE$1 & 480) == 0 ) goto label$727;
			TMP$830$3 = 24;
			goto label$2992;
			label$727:;
			TMP$830$3 = DTYPE$1 & 31;
			label$2992:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$830$3 * 28)) != 1 ) goto label$729;
			{
				fb$result$1 = 1;
				goto label$689;
			}
			goto label$728;
			label$729:;
			{
				fb$result$1 = 0;
				goto label$689;
			}
			label$728:;
		}
		goto label$723;
		label$724:;
		{
			LGT$1 = (int32)*(int64*)((uint8*)STRUC$1 + 40);
			if( ((((-(LGT$1 > *(int32*)((uint8*)SYMB_DTYPETB$ + 368)) | -(LGT$1 == 3)) | -(LGT$1 == 5)) | -(LGT$1 == 6)) | -(LGT$1 == 7)) == 0 ) goto label$731;
			{
				if( *CPTARG$1 <= 4 ) goto label$733;
				{
					fb$result$1 = 13;
					goto label$689;
				}
				goto label$732;
				label$733:;
				{
					fb$result$1 = 12;
					goto label$689;
				}
				label$732:;
			}
			label$731:;
			label$730:;
			struct $8FBSYMBOL* vr$86 = SYMBUDTGETFIRSTFIELD( STRUC$1 );
			FLD$1 = vr$86;
			label$734:;
			if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$735;
			{
				int32 TMP$831$4;
				if( (*(int32*)((uint8*)FLD$1 + 28) & 480) == 0 ) goto label$736;
				TMP$831$4 = 24;
				goto label$2993;
				label$736:;
				TMP$831$4 = *(int32*)((uint8*)FLD$1 + 28) & 31;
				label$2993:;
				if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$831$4 * 28)) != 1 ) goto label$738;
				{
					FLOATCPT$1 = FLOATCPT$1 + 1;
				}
				goto label$737;
				label$738:;
				{
					INTCPT$1 = INTCPT$1 + 1;
				}
				label$737:;
				struct $8FBSYMBOL* vr$94 = SYMBUDTGETNEXTFIELD( FLD$1 );
				FLD$1 = vr$94;
			}
			goto label$734;
			label$735:;
			if( (-(FLOATCPT$1 == 1) & -(INTCPT$1 == 0)) == 0 ) goto label$740;
			{
				if( *CPTARG$1 <= 4 ) goto label$742;
				{
					fb$result$1 = 11;
					goto label$689;
				}
				goto label$741;
				label$742:;
				{
					fb$result$1 = 1;
					goto label$689;
				}
				label$741:;
			}
			goto label$739;
			label$740:;
			{
				if( *CPTARG$1 <= 4 ) goto label$744;
				{
					fb$result$1 = 11;
					goto label$689;
				}
				goto label$743;
				label$744:;
				{
					fb$result$1 = 0;
					goto label$689;
				}
				label$743:;
			}
			label$739:;
		}
		label$723:;
	}
	label$690:;
	label$689:;
	return fb$result$1;
}

static void REG_FILLM( int32 OFS$1, struct $7FBARRAYIiE* LISTREG$1, int32 LGT$1, int32 PREV$1, int32 OFFST$1 )
{
	label$745:;
	{
		uint32 TMP$832$2;
		TMP$832$2 = (uint32)(LGT$1 - OFFST$1);
		goto label$748;
		label$749:;
		{
			FBSTRING TMP$833$3;
			FBSTRING TMP$834$3;
			FBSTRING TMP$835$3;
			FBSTRING TMP$836$3;
			__builtin_memset( &TMP$836$3, 0, 12 );
			FBSTRING* vr$8 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$833$3, 0, 12 );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$833$3, (void*)"mov ", 5, (void*)vr$8, -1 );
			__builtin_memset( &TMP$834$3, 0, 12 );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$834$3, (void*)vr$11, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$835$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$835$3, (void*)vr$14, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$836$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$836$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$836$3 );
		}
		goto label$747;
		label$750:;
		{
			FBSTRING TMP$837$3;
			FBSTRING TMP$838$3;
			FBSTRING TMP$839$3;
			FBSTRING TMP$840$3;
			__builtin_memset( &TMP$840$3, 0, 12 );
			FBSTRING* vr$28 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$837$3, 0, 12 );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$837$3, (void*)"mov ", 5, (void*)vr$28, -1 );
			__builtin_memset( &TMP$838$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$838$3, (void*)vr$31, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$839$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$839$3, (void*)vr$34, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$840$3, -1, (void*)vr$37, -1, 0 );
			HWRITEASM64( &TMP$840$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$840$3 );
		}
		goto label$747;
		label$751:;
		{
			FBSTRING TMP$841$3;
			FBSTRING TMP$842$3;
			FBSTRING TMP$843$3;
			FBSTRING TMP$844$3;
			FBSTRING TMP$847$3;
			FBSTRING TMP$848$3;
			FBSTRING TMP$849$3;
			FBSTRING TMP$850$3;
			FBSTRING TMP$851$3;
			FBSTRING TMP$852$3;
			FBSTRING TMP$853$3;
			__builtin_memset( &TMP$844$3, 0, 12 );
			FBSTRING* vr$48 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$841$3, 0, 12 );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$841$3, (void*)"mov ", 5, (void*)vr$48, -1 );
			__builtin_memset( &TMP$842$3, 0, 12 );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$842$3, (void*)vr$51, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$843$3, 0, 12 );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$843$3, (void*)vr$54, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$844$3, -1, (void*)vr$57, -1, 0 );
			HWRITEASM64( &TMP$844$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$844$3 );
			__builtin_memset( &TMP$849$3, 0, 12 );
			__builtin_memset( &TMP$847$3, 0, 12 );
			FBSTRING* vr$69 = fb_StrConcat( &TMP$847$3, (void*)"shr ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$848$3, 0, 12 );
			FBSTRING* vr$72 = fb_StrConcat( &TMP$848$3, (void*)vr$69, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$849$3, -1, (void*)vr$72, -1, 0 );
			HWRITEASM64( &TMP$849$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$849$3 );
			__builtin_memset( &TMP$853$3, 0, 12 );
			FBSTRING* vr$84 = fb_IntToStr( (OFS$1 + OFFST$1) + 2 );
			__builtin_memset( &TMP$850$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$850$3, (void*)"mov ", 5, (void*)vr$84, -1 );
			__builtin_memset( &TMP$851$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$851$3, (void*)vr$87, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$852$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$852$3, (void*)vr$90, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$853$3, -1, (void*)vr$93, -1, 0 );
			HWRITEASM64( &TMP$853$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$853$3 );
		}
		goto label$747;
		label$752:;
		{
			FBSTRING TMP$854$3;
			FBSTRING TMP$855$3;
			FBSTRING TMP$856$3;
			FBSTRING TMP$857$3;
			__builtin_memset( &TMP$857$3, 0, 12 );
			FBSTRING* vr$104 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$854$3, 0, 12 );
			FBSTRING* vr$107 = fb_StrConcat( &TMP$854$3, (void*)"mov ", 5, (void*)vr$104, -1 );
			__builtin_memset( &TMP$855$3, 0, 12 );
			FBSTRING* vr$110 = fb_StrConcat( &TMP$855$3, (void*)vr$107, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$856$3, 0, 12 );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$856$3, (void*)vr$110, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$857$3, -1, (void*)vr$113, -1, 0 );
			HWRITEASM64( &TMP$857$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$857$3 );
		}
		goto label$747;
		label$753:;
		{
			FBSTRING TMP$858$3;
			FBSTRING TMP$859$3;
			FBSTRING TMP$860$3;
			FBSTRING TMP$861$3;
			FBSTRING TMP$863$3;
			FBSTRING TMP$864$3;
			FBSTRING TMP$865$3;
			FBSTRING TMP$866$3;
			FBSTRING TMP$867$3;
			FBSTRING TMP$868$3;
			FBSTRING TMP$869$3;
			__builtin_memset( &TMP$861$3, 0, 12 );
			FBSTRING* vr$124 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$858$3, 0, 12 );
			FBSTRING* vr$127 = fb_StrConcat( &TMP$858$3, (void*)"mov ", 5, (void*)vr$124, -1 );
			__builtin_memset( &TMP$859$3, 0, 12 );
			FBSTRING* vr$130 = fb_StrConcat( &TMP$859$3, (void*)vr$127, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$860$3, 0, 12 );
			FBSTRING* vr$133 = fb_StrConcat( &TMP$860$3, (void*)vr$130, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$861$3, -1, (void*)vr$133, -1, 0 );
			HWRITEASM64( &TMP$861$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$861$3 );
			__builtin_memset( &TMP$865$3, 0, 12 );
			__builtin_memset( &TMP$863$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$863$3, (void*)"shr ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$864$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$864$3, (void*)vr$145, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$865$3, -1, (void*)vr$148, -1, 0 );
			HWRITEASM64( &TMP$865$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$865$3 );
			__builtin_memset( &TMP$869$3, 0, 12 );
			FBSTRING* vr$160 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$866$3, 0, 12 );
			FBSTRING* vr$163 = fb_StrConcat( &TMP$866$3, (void*)"mov ", 5, (void*)vr$160, -1 );
			__builtin_memset( &TMP$867$3, 0, 12 );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$867$3, (void*)vr$163, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$868$3, 0, 12 );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$868$3, (void*)vr$166, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$869$3, -1, (void*)vr$169, -1, 0 );
			HWRITEASM64( &TMP$869$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$869$3 );
		}
		goto label$747;
		label$754:;
		{
			FBSTRING TMP$870$3;
			FBSTRING TMP$871$3;
			FBSTRING TMP$872$3;
			FBSTRING TMP$873$3;
			FBSTRING TMP$874$3;
			FBSTRING TMP$875$3;
			FBSTRING TMP$876$3;
			FBSTRING TMP$877$3;
			FBSTRING TMP$878$3;
			FBSTRING TMP$879$3;
			FBSTRING TMP$880$3;
			__builtin_memset( &TMP$873$3, 0, 12 );
			FBSTRING* vr$180 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$870$3, 0, 12 );
			FBSTRING* vr$183 = fb_StrConcat( &TMP$870$3, (void*)"mov ", 5, (void*)vr$180, -1 );
			__builtin_memset( &TMP$871$3, 0, 12 );
			FBSTRING* vr$186 = fb_StrConcat( &TMP$871$3, (void*)vr$183, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$872$3, 0, 12 );
			FBSTRING* vr$189 = fb_StrConcat( &TMP$872$3, (void*)vr$186, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$873$3, -1, (void*)vr$189, -1, 0 );
			HWRITEASM64( &TMP$873$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$873$3 );
			__builtin_memset( &TMP$876$3, 0, 12 );
			__builtin_memset( &TMP$874$3, 0, 12 );
			FBSTRING* vr$201 = fb_StrConcat( &TMP$874$3, (void*)"shr ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$875$3, 0, 12 );
			FBSTRING* vr$204 = fb_StrConcat( &TMP$875$3, (void*)vr$201, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$876$3, -1, (void*)vr$204, -1, 0 );
			HWRITEASM64( &TMP$876$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$876$3 );
			__builtin_memset( &TMP$880$3, 0, 12 );
			FBSTRING* vr$216 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$877$3, 0, 12 );
			FBSTRING* vr$219 = fb_StrConcat( &TMP$877$3, (void*)"mov ", 5, (void*)vr$216, -1 );
			__builtin_memset( &TMP$878$3, 0, 12 );
			FBSTRING* vr$222 = fb_StrConcat( &TMP$878$3, (void*)vr$219, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$879$3, 0, 12 );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$879$3, (void*)vr$222, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$880$3, -1, (void*)vr$225, -1, 0 );
			HWRITEASM64( &TMP$880$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$880$3 );
		}
		goto label$747;
		label$755:;
		{
			FBSTRING TMP$881$3;
			FBSTRING TMP$882$3;
			FBSTRING TMP$883$3;
			FBSTRING TMP$884$3;
			FBSTRING TMP$885$3;
			FBSTRING TMP$886$3;
			FBSTRING TMP$887$3;
			FBSTRING TMP$888$3;
			FBSTRING TMP$889$3;
			FBSTRING TMP$890$3;
			FBSTRING TMP$891$3;
			FBSTRING TMP$892$3;
			FBSTRING TMP$893$3;
			FBSTRING TMP$894$3;
			FBSTRING TMP$895$3;
			FBSTRING TMP$896$3;
			FBSTRING TMP$897$3;
			FBSTRING TMP$898$3;
			__builtin_memset( &TMP$884$3, 0, 12 );
			FBSTRING* vr$236 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$881$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$881$3, (void*)"mov ", 5, (void*)vr$236, -1 );
			__builtin_memset( &TMP$882$3, 0, 12 );
			FBSTRING* vr$242 = fb_StrConcat( &TMP$882$3, (void*)vr$239, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$883$3, 0, 12 );
			FBSTRING* vr$245 = fb_StrConcat( &TMP$883$3, (void*)vr$242, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$884$3, -1, (void*)vr$245, -1, 0 );
			HWRITEASM64( &TMP$884$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$884$3 );
			__builtin_memset( &TMP$887$3, 0, 12 );
			__builtin_memset( &TMP$885$3, 0, 12 );
			FBSTRING* vr$257 = fb_StrConcat( &TMP$885$3, (void*)"shr ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$886$3, 0, 12 );
			FBSTRING* vr$260 = fb_StrConcat( &TMP$886$3, (void*)vr$257, -1, (void*)", 32", 5 );
			fb_StrAssign( (void*)&TMP$887$3, -1, (void*)vr$260, -1, 0 );
			HWRITEASM64( &TMP$887$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$887$3 );
			__builtin_memset( &TMP$891$3, 0, 12 );
			FBSTRING* vr$272 = fb_IntToStr( (OFS$1 + OFFST$1) + 4 );
			__builtin_memset( &TMP$888$3, 0, 12 );
			FBSTRING* vr$275 = fb_StrConcat( &TMP$888$3, (void*)"mov ", 5, (void*)vr$272, -1 );
			__builtin_memset( &TMP$889$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$889$3, (void*)vr$275, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$890$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$890$3, (void*)vr$278, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$891$3, -1, (void*)vr$281, -1, 0 );
			HWRITEASM64( &TMP$891$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$891$3 );
			__builtin_memset( &TMP$894$3, 0, 12 );
			__builtin_memset( &TMP$892$3, 0, 12 );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$892$3, (void*)"shr ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$893$3, 0, 12 );
			FBSTRING* vr$296 = fb_StrConcat( &TMP$893$3, (void*)vr$293, -1, (void*)", 16", 5 );
			fb_StrAssign( (void*)&TMP$894$3, -1, (void*)vr$296, -1, 0 );
			HWRITEASM64( &TMP$894$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$894$3 );
			__builtin_memset( &TMP$898$3, 0, 12 );
			FBSTRING* vr$308 = fb_IntToStr( (OFS$1 + OFFST$1) + 6 );
			__builtin_memset( &TMP$895$3, 0, 12 );
			FBSTRING* vr$311 = fb_StrConcat( &TMP$895$3, (void*)"mov ", 5, (void*)vr$308, -1 );
			__builtin_memset( &TMP$896$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$896$3, (void*)vr$311, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$897$3, 0, 12 );
			FBSTRING* vr$317 = fb_StrConcat( &TMP$897$3, (void*)vr$314, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$898$3, -1, (void*)vr$317, -1, 0 );
			HWRITEASM64( &TMP$898$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$898$3 );
		}
		goto label$747;
		label$756:;
		{
			FBSTRING TMP$899$3;
			FBSTRING TMP$900$3;
			FBSTRING TMP$901$3;
			FBSTRING TMP$902$3;
			__builtin_memset( &TMP$902$3, 0, 12 );
			FBSTRING* vr$328 = fb_IntToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$899$3, 0, 12 );
			FBSTRING* vr$331 = fb_StrConcat( &TMP$899$3, (void*)"mov ", 5, (void*)vr$328, -1 );
			__builtin_memset( &TMP$900$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$900$3, (void*)vr$331, -1, (void*)"[rbp], ", 8 );
			__builtin_memset( &TMP$901$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$901$3, (void*)vr$334, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)(((*(int32*)((uint8*)&CTX$ + 84) - PREV$1) << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			fb_StrAssign( (void*)&TMP$902$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$902$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$902$3 );
		}
		goto label$747;
		label$748:;
		static const void* tmp$3850[8] = {
			&&label$749,
			&&label$750,
			&&label$751,
			&&label$752,
			&&label$753,
			&&label$754,
			&&label$755,
			&&label$756,
		};
		if( (TMP$832$2 - 1u) > 7u ) goto label$747;
		goto *tmp$3850[TMP$832$2 - 1u];
		label$747:;
	}
	label$746:;
}

static void REG_FILLR( int32 LGT$1, FBSTRING* SRC$1, int32 CPTINT$1, struct $7FBARRAYIiE* LISTREG$1, int32 REG2$1 )
{
	label$757:;
	uint8* REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	FBSTRING REGDST$1;
	fb_StrInit( (void*)&REGDST$1, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0, 0 );
	if( LGT$1 <= 8 ) goto label$760;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(uint8**)SRC$1 != 45u ) goto label$762;
		{
			FBSTRING TMP$903$3;
			FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
			int32 vr$11 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$10 );
			FBSTRING* vr$13 = fb_LEFT( (FBSTRING*)SRC$1, vr$11 + -1 );
			int32 vr$14 = fb_VALINT( (FBSTRING*)vr$13 );
			FBSTRING* vr$16 = fb_IntToStr( vr$14 + 8 );
			__builtin_memset( &TMP$903$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$903$3, (void*)vr$16, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$19, -1, 0 );
		}
		goto label$761;
		label$762:;
		{
			FBSTRING TMP$905$3;
			FBSTRING TMP$906$3;
			FBSTRING TMP$908$3;
			__builtin_memset( &TMP$906$3, 0, 12 );
			__builtin_memset( &TMP$905$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$905$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$906$3, -1, (void*)vr$23, -1, 0 );
			HWRITEASM64( &TMP$906$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$906$3 );
			__builtin_memset( &TMP$908$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$908$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$908$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$908$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$761:;
	}
	label$760:;
	label$759:;
	if( (((-(LGT$1 != 1) & -(LGT$1 != 2)) & -(LGT$1 != 4)) & -(LGT$1 != 8)) == 0 ) goto label$764;
	{
		uint8* vr$38 = REG_TEMPO(  );
		REGSRC$1 = vr$38;
	}
	label$764:;
	label$763:;
	REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1), REG2$1 );
	{
		uint32 TMP$910$2;
		TMP$910$2 = (uint32)LGT$1;
		goto label$766;
		label$767:;
		{
			FBSTRING TMP$913$3;
			FBSTRING TMP$914$3;
			FBSTRING TMP$915$3;
			FBSTRING TMP$916$3;
			__builtin_memset( &TMP$916$3, 0, 12 );
			__builtin_memset( &TMP$913$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$913$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$914$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$914$3, (void*)vr$46, -1, (void*)", BYTE PTR ", 12 );
			__builtin_memset( &TMP$915$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$915$3, (void*)vr$49, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$916$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$916$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$916$3 );
		}
		goto label$765;
		label$768:;
		{
			FBSTRING TMP$918$3;
			FBSTRING TMP$919$3;
			FBSTRING TMP$920$3;
			FBSTRING TMP$921$3;
			__builtin_memset( &TMP$921$3, 0, 12 );
			__builtin_memset( &TMP$918$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$918$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$919$3, 0, 12 );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$919$3, (void*)vr$60, -1, (void*)", WORD PTR ", 12 );
			__builtin_memset( &TMP$920$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$920$3, (void*)vr$63, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$921$3, -1, (void*)vr$66, -1, 0 );
			HWRITEASM64( &TMP$921$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$921$3 );
		}
		goto label$765;
		label$769:;
		{
			FBSTRING TMP$922$3;
			FBSTRING TMP$923$3;
			FBSTRING TMP$924$3;
			FBSTRING TMP$925$3;
			FBSTRING TMP$927$3;
			FBSTRING TMP$928$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$933$3;
			FBSTRING TMP$934$3;
			FBSTRING TMP$935$3;
			FBSTRING TMP$937$3;
			FBSTRING TMP$940$3;
			FBSTRING TMP$941$3;
			FBSTRING TMP$942$3;
			__builtin_memset( &TMP$925$3, 0, 12 );
			__builtin_memset( &TMP$922$3, 0, 12 );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$922$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$923$3, 0, 12 );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$923$3, (void*)vr$73, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$924$3, 0, 12 );
			FBSTRING* vr$79 = fb_StrConcat( &TMP$924$3, (void*)vr$76, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$925$3, -1, (void*)vr$79, -1, 0 );
			HWRITEASM64( &TMP$925$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$925$3 );
			__builtin_memset( &TMP$931$3, 0, 12 );
			__builtin_memset( &TMP$927$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$927$3, (void*)"movzx ", 7, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$928$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$928$3, (void*)vr$87, -1, (void*)", WORD PTR [", 13 );
			__builtin_memset( &TMP$929$3, 0, 12 );
			FBSTRING* vr$93 = fb_StrConcat( &TMP$929$3, (void*)vr$90, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$930$3, 0, 12 );
			FBSTRING* vr$96 = fb_StrConcat( &TMP$930$3, (void*)vr$93, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$931$3, -1, (void*)vr$96, -1, 0 );
			HWRITEASM64( &TMP$931$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$931$3 );
			__builtin_memset( &TMP$935$3, 0, 12 );
			__builtin_memset( &TMP$933$3, 0, 12 );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$933$3, (void*)"movzx eax, BYTE PTR 2[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$934$3, 0, 12 );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$934$3, (void*)vr$103, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$935$3, -1, (void*)vr$106, -1, 0 );
			HWRITEASM64( &TMP$935$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$935$3 );
			__builtin_memset( &TMP$937$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$937$3, -1, (void*)"shl rax, 16", 12, 0 );
			HWRITEASM64( &TMP$937$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$937$3 );
			__builtin_memset( &TMP$942$3, 0, 12 );
			__builtin_memset( &TMP$940$3, 0, 12 );
			FBSTRING* vr$118 = fb_StrConcat( &TMP$940$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$941$3, 0, 12 );
			FBSTRING* vr$121 = fb_StrConcat( &TMP$941$3, (void*)vr$118, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$942$3, -1, (void*)vr$121, -1, 0 );
			HWRITEASM64( &TMP$942$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$942$3 );
		}
		goto label$765;
		label$770:;
		{
			FBSTRING TMP$944$3;
			FBSTRING TMP$945$3;
			FBSTRING TMP$946$3;
			FBSTRING TMP$947$3;
			__builtin_memset( &TMP$947$3, 0, 12 );
			__builtin_memset( &TMP$944$3, 0, 12 );
			FBSTRING* vr$132 = fb_StrConcat( &TMP$944$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$945$3, 0, 12 );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$945$3, (void*)vr$132, -1, (void*)", DWORD PTR ", 13 );
			__builtin_memset( &TMP$946$3, 0, 12 );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$946$3, (void*)vr$135, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$947$3, -1, (void*)vr$138, -1, 0 );
			HWRITEASM64( &TMP$947$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$947$3 );
		}
		goto label$765;
		label$771:;
		{
			FBSTRING TMP$948$3;
			FBSTRING TMP$949$3;
			FBSTRING TMP$950$3;
			FBSTRING TMP$951$3;
			FBSTRING TMP$953$3;
			FBSTRING TMP$954$3;
			FBSTRING TMP$955$3;
			FBSTRING TMP$956$3;
			FBSTRING TMP$957$3;
			FBSTRING TMP$959$3;
			FBSTRING TMP$960$3;
			FBSTRING TMP$961$3;
			FBSTRING TMP$963$3;
			FBSTRING TMP$964$3;
			FBSTRING TMP$965$3;
			FBSTRING TMP$966$3;
			__builtin_memset( &TMP$951$3, 0, 12 );
			__builtin_memset( &TMP$948$3, 0, 12 );
			FBSTRING* vr$145 = fb_StrConcat( &TMP$948$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$949$3, 0, 12 );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$949$3, (void*)vr$145, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$950$3, 0, 12 );
			FBSTRING* vr$151 = fb_StrConcat( &TMP$950$3, (void*)vr$148, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$951$3, -1, (void*)vr$151, -1, 0 );
			HWRITEASM64( &TMP$951$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$951$3 );
			__builtin_memset( &TMP$957$3, 0, 12 );
			__builtin_memset( &TMP$953$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$953$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$954$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$954$3, (void*)vr$162, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$955$3, 0, 12 );
			FBSTRING* vr$168 = fb_StrConcat( &TMP$955$3, (void*)vr$165, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$956$3, 0, 12 );
			FBSTRING* vr$171 = fb_StrConcat( &TMP$956$3, (void*)vr$168, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$957$3, -1, (void*)vr$171, -1, 0 );
			HWRITEASM64( &TMP$957$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$957$3 );
			__builtin_memset( &TMP$961$3, 0, 12 );
			__builtin_memset( &TMP$959$3, 0, 12 );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$959$3, (void*)"movzx eax, BYTE PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$960$3, 0, 12 );
			FBSTRING* vr$181 = fb_StrConcat( &TMP$960$3, (void*)vr$178, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$961$3, -1, (void*)vr$181, -1, 0 );
			HWRITEASM64( &TMP$961$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$961$3 );
			__builtin_memset( &TMP$963$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$963$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$963$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$963$3 );
			__builtin_memset( &TMP$966$3, 0, 12 );
			__builtin_memset( &TMP$964$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$964$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$965$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$965$3, (void*)vr$193, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$966$3, -1, (void*)vr$196, -1, 0 );
			HWRITEASM64( &TMP$966$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$966$3 );
		}
		goto label$765;
		label$772:;
		{
			FBSTRING TMP$967$3;
			FBSTRING TMP$968$3;
			FBSTRING TMP$969$3;
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			FBSTRING TMP$973$3;
			FBSTRING TMP$974$3;
			FBSTRING TMP$975$3;
			FBSTRING TMP$977$3;
			FBSTRING TMP$978$3;
			FBSTRING TMP$979$3;
			FBSTRING TMP$980$3;
			FBSTRING TMP$981$3;
			FBSTRING TMP$982$3;
			FBSTRING TMP$983$3;
			__builtin_memset( &TMP$970$3, 0, 12 );
			__builtin_memset( &TMP$967$3, 0, 12 );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$967$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$968$3, 0, 12 );
			FBSTRING* vr$206 = fb_StrConcat( &TMP$968$3, (void*)vr$203, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$969$3, 0, 12 );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$969$3, (void*)vr$206, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$970$3, -1, (void*)vr$209, -1, 0 );
			HWRITEASM64( &TMP$970$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$970$3 );
			__builtin_memset( &TMP$975$3, 0, 12 );
			__builtin_memset( &TMP$971$3, 0, 12 );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$971$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$972$3, 0, 12 );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$972$3, (void*)vr$220, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$973$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$973$3, (void*)vr$223, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$974$3, 0, 12 );
			FBSTRING* vr$229 = fb_StrConcat( &TMP$974$3, (void*)vr$226, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$975$3, -1, (void*)vr$229, -1, 0 );
			HWRITEASM64( &TMP$975$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$975$3 );
			__builtin_memset( &TMP$979$3, 0, 12 );
			__builtin_memset( &TMP$977$3, 0, 12 );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$977$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$978$3, 0, 12 );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$978$3, (void*)vr$236, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$979$3, -1, (void*)vr$239, -1, 0 );
			HWRITEASM64( &TMP$979$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$979$3 );
			__builtin_memset( &TMP$980$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$980$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$980$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$980$3 );
			__builtin_memset( &TMP$983$3, 0, 12 );
			__builtin_memset( &TMP$981$3, 0, 12 );
			FBSTRING* vr$251 = fb_StrConcat( &TMP$981$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$982$3, 0, 12 );
			FBSTRING* vr$254 = fb_StrConcat( &TMP$982$3, (void*)vr$251, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$983$3, -1, (void*)vr$254, -1, 0 );
			HWRITEASM64( &TMP$983$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$983$3 );
		}
		goto label$765;
		label$773:;
		{
			FBSTRING TMP$984$3;
			FBSTRING TMP$985$3;
			FBSTRING TMP$986$3;
			FBSTRING TMP$987$3;
			FBSTRING TMP$988$3;
			FBSTRING TMP$989$3;
			FBSTRING TMP$990$3;
			FBSTRING TMP$991$3;
			FBSTRING TMP$992$3;
			FBSTRING TMP$993$3;
			FBSTRING TMP$994$3;
			FBSTRING TMP$995$3;
			FBSTRING TMP$996$3;
			FBSTRING TMP$997$3;
			FBSTRING TMP$998$3;
			FBSTRING TMP$999$3;
			FBSTRING TMP$1001$3;
			FBSTRING TMP$1002$3;
			FBSTRING TMP$1003$3;
			FBSTRING TMP$1005$3;
			FBSTRING TMP$1006$3;
			FBSTRING TMP$1007$3;
			FBSTRING TMP$1008$3;
			__builtin_memset( &TMP$987$3, 0, 12 );
			__builtin_memset( &TMP$984$3, 0, 12 );
			FBSTRING* vr$261 = fb_StrConcat( &TMP$984$3, (void*)"lea ", 5, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$985$3, 0, 12 );
			FBSTRING* vr$264 = fb_StrConcat( &TMP$985$3, (void*)vr$261, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$986$3, 0, 12 );
			FBSTRING* vr$267 = fb_StrConcat( &TMP$986$3, (void*)vr$264, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$987$3, -1, (void*)vr$267, -1, 0 );
			HWRITEASM64( &TMP$987$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$987$3 );
			__builtin_memset( &TMP$992$3, 0, 12 );
			__builtin_memset( &TMP$988$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$988$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)LISTREG$1) << (2 & 31))), 0 );
			__builtin_memset( &TMP$989$3, 0, 12 );
			FBSTRING* vr$281 = fb_StrConcat( &TMP$989$3, (void*)vr$278, -1, (void*)", DWORD PTR [", 14 );
			__builtin_memset( &TMP$990$3, 0, 12 );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$990$3, (void*)vr$281, -1, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$991$3, 0, 12 );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$991$3, (void*)vr$284, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$992$3, -1, (void*)vr$287, -1, 0 );
			HWRITEASM64( &TMP$992$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$992$3 );
			__builtin_memset( &TMP$995$3, 0, 12 );
			__builtin_memset( &TMP$993$3, 0, 12 );
			FBSTRING* vr$294 = fb_StrConcat( &TMP$993$3, (void*)"movzx eax, WORD PTR 4[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$994$3, 0, 12 );
			FBSTRING* vr$297 = fb_StrConcat( &TMP$994$3, (void*)vr$294, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$995$3, -1, (void*)vr$297, -1, 0 );
			HWRITEASM64( &TMP$995$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$995$3 );
			__builtin_memset( &TMP$996$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$996$3, -1, (void*)"shl rax, 32", 12, 0 );
			HWRITEASM64( &TMP$996$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$996$3 );
			__builtin_memset( &TMP$999$3, 0, 12 );
			__builtin_memset( &TMP$997$3, 0, 12 );
			FBSTRING* vr$309 = fb_StrConcat( &TMP$997$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$998$3, 0, 12 );
			FBSTRING* vr$312 = fb_StrConcat( &TMP$998$3, (void*)vr$309, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$999$3, -1, (void*)vr$312, -1, 0 );
			HWRITEASM64( &TMP$999$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$999$3 );
			__builtin_memset( &TMP$1003$3, 0, 12 );
			__builtin_memset( &TMP$1001$3, 0, 12 );
			FBSTRING* vr$319 = fb_StrConcat( &TMP$1001$3, (void*)"movzx eax, BYTE PTR 6[", 23, (void*)REGSRC$1, 0 );
			__builtin_memset( &TMP$1002$3, 0, 12 );
			FBSTRING* vr$322 = fb_StrConcat( &TMP$1002$3, (void*)vr$319, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&TMP$1003$3, -1, (void*)vr$322, -1, 0 );
			HWRITEASM64( &TMP$1003$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1003$3 );
			__builtin_memset( &TMP$1005$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1005$3, -1, (void*)"shl rax, 48", 12, 0 );
			HWRITEASM64( &TMP$1005$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1005$3 );
			__builtin_memset( &TMP$1008$3, 0, 12 );
			__builtin_memset( &TMP$1006$3, 0, 12 );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$1006$3, (void*)"or ", 4, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1007$3, 0, 12 );
			FBSTRING* vr$337 = fb_StrConcat( &TMP$1007$3, (void*)vr$334, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1008$3, -1, (void*)vr$337, -1, 0 );
			HWRITEASM64( &TMP$1008$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1008$3 );
		}
		goto label$765;
		label$774:;
		{
			FBSTRING TMP$1009$3;
			FBSTRING TMP$1010$3;
			FBSTRING TMP$1011$3;
			FBSTRING TMP$1012$3;
			__builtin_memset( &TMP$1012$3, 0, 12 );
			__builtin_memset( &TMP$1009$3, 0, 12 );
			FBSTRING* vr$345 = fb_StrConcat( &TMP$1009$3, (void*)"mov ", 5, (void*)&REGDST$1, -1 );
			__builtin_memset( &TMP$1010$3, 0, 12 );
			FBSTRING* vr$348 = fb_StrConcat( &TMP$1010$3, (void*)vr$345, -1, (void*)", QWORD PTR ", 13 );
			__builtin_memset( &TMP$1011$3, 0, 12 );
			FBSTRING* vr$351 = fb_StrConcat( &TMP$1011$3, (void*)vr$348, -1, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1012$3, -1, (void*)vr$351, -1, 0 );
			HWRITEASM64( &TMP$1012$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1012$3 );
		}
		goto label$765;
		label$766:;
		static const void* tmp$3851[8] = {
			&&label$767,
			&&label$768,
			&&label$769,
			&&label$770,
			&&label$771,
			&&label$772,
			&&label$773,
			&&label$774,
		};
		if( (TMP$910$2 - 1u) > 7u ) goto label$765;
		goto *tmp$3851[TMP$910$2 - 1u];
		label$765:;
	}
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	label$758:;
}

static void REG_FILLX( int32 LGT$1, FBSTRING* SRC$1, int32 CPTFLOAT$1 )
{
	label$775:;
	if( LGT$1 <= 8 ) goto label$778;
	{
		LGT$1 = LGT$1 + -8;
		if( (uint32)(int32)*(uint8*)*(uint8**)SRC$1 != 45u ) goto label$780;
		{
			FBSTRING TMP$1013$3;
			FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
			int32 vr$5 = fb_StrInstr( 1, (FBSTRING*)SRC$1, (FBSTRING*)vr$4 );
			FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)SRC$1, vr$5 + -1 );
			int32 vr$8 = fb_VALINT( (FBSTRING*)vr$7 );
			FBSTRING* vr$10 = fb_IntToStr( vr$8 + 8 );
			__builtin_memset( &TMP$1013$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$1013$3, (void*)vr$10, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)vr$13, -1, 0 );
		}
		goto label$779;
		label$780:;
		{
			FBSTRING TMP$1014$3;
			FBSTRING TMP$1015$3;
			FBSTRING TMP$1016$3;
			__builtin_memset( &TMP$1015$3, 0, 12 );
			__builtin_memset( &TMP$1014$3, 0, 12 );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$1014$3, (void*)"lea rax, ", 10, (void*)SRC$1, -1 );
			fb_StrAssign( (void*)&TMP$1015$3, -1, (void*)vr$17, -1, 0 );
			HWRITEASM64( &TMP$1015$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1015$3 );
			__builtin_memset( &TMP$1016$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1016$3, -1, (void*)"add rax, 8", 11, 0 );
			HWRITEASM64( &TMP$1016$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1016$3 );
			fb_StrAssign( (void*)SRC$1, -1, (void*)"[rax]", 6, 0 );
		}
		label$779:;
	}
	label$778:;
	label$777:;
	if( LGT$1 != 4 ) goto label$782;
	{
		FBSTRING TMP$1018$2;
		FBSTRING TMP$1019$2;
		FBSTRING TMP$1020$2;
		FBSTRING TMP$1021$2;
		__builtin_memset( &TMP$1021$2, 0, 12 );
		FBSTRING* vr$27 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1018$2, 0, 12 );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$1018$2, (void*)"movd xmm", 9, (void*)vr$27, -1 );
		__builtin_memset( &TMP$1019$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$1019$2, (void*)vr$30, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1020$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$1020$2, (void*)vr$33, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1021$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$1021$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1021$2 );
	}
	goto label$781;
	label$782:;
	{
		FBSTRING TMP$1023$2;
		FBSTRING TMP$1024$2;
		FBSTRING TMP$1025$2;
		FBSTRING TMP$1026$2;
		__builtin_memset( &TMP$1026$2, 0, 12 );
		FBSTRING* vr$42 = fb_IntToStr( CPTFLOAT$1 + -1 );
		__builtin_memset( &TMP$1023$2, 0, 12 );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$1023$2, (void*)"movq xmm", 9, (void*)vr$42, -1 );
		__builtin_memset( &TMP$1024$2, 0, 12 );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$1024$2, (void*)vr$45, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1025$2, 0, 12 );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1025$2, (void*)vr$48, -1, (void*)SRC$1, -1 );
		fb_StrAssign( (void*)&TMP$1026$2, -1, (void*)vr$51, -1, 0 );
		HWRITEASM64( &TMP$1026$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1026$2 );
	}
	label$781:;
	label$776:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$783:;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	FBSTRING REGSTR$1;
	__builtin_memset( &REGSTR$1, 0, 12 );
	FBSTRING REGX$1;
	__builtin_memset( &REGX$1, 0, 12 );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$786;
	{
		$19FB_CVA_LIST_TYPEDEF vr$11 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
		if( (-((DTYPE$1 & 480) == 0) & -(vr$11 == 3)) == 0 ) goto label$788;
		{
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) ^ 32768;
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 4) = *(int32*)((uint8*)SYM$1 + 4) | 65536;
		}
		label$788:;
		label$787:;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$790;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$792;
			{
				int32 TMP$1027$4;
				TMP$1027$4 = 0;
				int32 vr$27 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), &TMP$1027$4, (int32*)((uint8*)&CTX$ + 84), (int32*)((uint8*)&CTX$ + 88) );
				PARAMTYPE$1 = vr$27;
				if( PARAMTYPE$1 != 10 ) goto label$794;
				{
					*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					*(int32*)((uint8*)&CTX$ + 92) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 92) + *(int64*)((uint8*)SYM$1 + 40));
				}
				goto label$793;
				label$794:;
				{
					LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
					*(int32*)((uint8*)&CTX$ + 96) = (((LGT$1 + *(int32*)((uint8*)&CTX$ + 96)) + LGT$1) + -1) & ~(LGT$1 + -1);
					*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
					{
						uint32 TMP$1028$6;
						TMP$1028$6 = (uint32)PARAMTYPE$1;
						goto label$796;
						label$797:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 0 );
						}
						goto label$795;
						label$798:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 1, 0 );
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$795;
						label$799:;
						{
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, 8, 0, 0 );
							if( LGT$1 >= 13 ) goto label$801;
							{
								FBSTRING TMP$1031$8;
								FBSTRING TMP$1032$8;
								FBSTRING TMP$1033$8;
								FBSTRING TMP$1034$8;
								__builtin_memset( &TMP$1034$8, 0, 12 );
								FBSTRING* vr$55 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$58 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1031$8, 0, 12 );
								FBSTRING* vr$61 = fb_StrConcat( &TMP$1031$8, (void*)"movd ", 6, (void*)vr$58, -1 );
								__builtin_memset( &TMP$1032$8, 0, 12 );
								FBSTRING* vr$64 = fb_StrConcat( &TMP$1032$8, (void*)vr$61, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1033$8, 0, 12 );
								FBSTRING* vr$67 = fb_StrConcat( &TMP$1033$8, (void*)vr$64, -1, (void*)vr$55, -1 );
								fb_StrAssign( (void*)&TMP$1034$8, -1, (void*)vr$67, -1, 0 );
								HWRITEASM64( &TMP$1034$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1034$8 );
							}
							goto label$800;
							label$801:;
							{
								FBSTRING TMP$1036$8;
								FBSTRING TMP$1037$8;
								FBSTRING TMP$1038$8;
								FBSTRING TMP$1039$8;
								__builtin_memset( &TMP$1039$8, 0, 12 );
								FBSTRING* vr$73 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$76 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1036$8, 0, 12 );
								FBSTRING* vr$79 = fb_StrConcat( &TMP$1036$8, (void*)"movq ", 6, (void*)vr$76, -1 );
								__builtin_memset( &TMP$1037$8, 0, 12 );
								FBSTRING* vr$82 = fb_StrConcat( &TMP$1037$8, (void*)vr$79, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1038$8, 0, 12 );
								FBSTRING* vr$85 = fb_StrConcat( &TMP$1038$8, (void*)vr$82, -1, (void*)vr$73, -1 );
								fb_StrAssign( (void*)&TMP$1039$8, -1, (void*)vr$85, -1, 0 );
								HWRITEASM64( &TMP$1039$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1039$8 );
							}
							label$800:;
						}
						goto label$795;
						label$802:;
						{
							if( LGT$1 != 4 ) goto label$804;
							{
								FBSTRING TMP$1040$8;
								FBSTRING TMP$1041$8;
								FBSTRING TMP$1042$8;
								FBSTRING TMP$1043$8;
								__builtin_memset( &TMP$1043$8, 0, 12 );
								FBSTRING* vr$91 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$93 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1040$8, 0, 12 );
								FBSTRING* vr$96 = fb_StrConcat( &TMP$1040$8, (void*)"movd ", 6, (void*)vr$93, -1 );
								__builtin_memset( &TMP$1041$8, 0, 12 );
								FBSTRING* vr$99 = fb_StrConcat( &TMP$1041$8, (void*)vr$96, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1042$8, 0, 12 );
								FBSTRING* vr$102 = fb_StrConcat( &TMP$1042$8, (void*)vr$99, -1, (void*)vr$91, -1 );
								fb_StrAssign( (void*)&TMP$1043$8, -1, (void*)vr$102, -1, 0 );
								HWRITEASM64( &TMP$1043$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1043$8 );
							}
							goto label$803;
							label$804:;
							{
								FBSTRING TMP$1044$8;
								FBSTRING TMP$1045$8;
								FBSTRING TMP$1046$8;
								FBSTRING TMP$1047$8;
								__builtin_memset( &TMP$1047$8, 0, 12 );
								FBSTRING* vr$108 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$110 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1044$8, 0, 12 );
								FBSTRING* vr$113 = fb_StrConcat( &TMP$1044$8, (void*)"movq ", 6, (void*)vr$110, -1 );
								__builtin_memset( &TMP$1045$8, 0, 12 );
								FBSTRING* vr$116 = fb_StrConcat( &TMP$1045$8, (void*)vr$113, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1046$8, 0, 12 );
								FBSTRING* vr$119 = fb_StrConcat( &TMP$1046$8, (void*)vr$116, -1, (void*)vr$108, -1 );
								fb_StrAssign( (void*)&TMP$1047$8, -1, (void*)vr$119, -1, 0 );
								HWRITEASM64( &TMP$1047$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1047$8 );
							}
							label$803:;
							REG_FILLM( (int32)*(int64*)((uint8*)SYM$1 + 48), (struct $7FBARRAYIiE*)&LISTREG$, LGT$1, 0, 8 );
						}
						goto label$795;
						label$805:;
						{
							if( LGT$1 != 4 ) goto label$807;
							{
								FBSTRING TMP$1048$8;
								FBSTRING TMP$1049$8;
								FBSTRING TMP$1050$8;
								FBSTRING TMP$1051$8;
								__builtin_memset( &TMP$1051$8, 0, 12 );
								FBSTRING* vr$127 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$129 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1048$8, 0, 12 );
								FBSTRING* vr$132 = fb_StrConcat( &TMP$1048$8, (void*)"movd ", 6, (void*)vr$129, -1 );
								__builtin_memset( &TMP$1049$8, 0, 12 );
								FBSTRING* vr$135 = fb_StrConcat( &TMP$1049$8, (void*)vr$132, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1050$8, 0, 12 );
								FBSTRING* vr$138 = fb_StrConcat( &TMP$1050$8, (void*)vr$135, -1, (void*)vr$127, -1 );
								fb_StrAssign( (void*)&TMP$1051$8, -1, (void*)vr$138, -1, 0 );
								HWRITEASM64( &TMP$1051$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1051$8 );
							}
							goto label$806;
							label$807:;
							{
								FBSTRING TMP$1052$8;
								FBSTRING TMP$1053$8;
								FBSTRING TMP$1054$8;
								FBSTRING TMP$1055$8;
								__builtin_memset( &TMP$1055$8, 0, 12 );
								FBSTRING* vr$144 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$146 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1052$8, 0, 12 );
								FBSTRING* vr$149 = fb_StrConcat( &TMP$1052$8, (void*)"movq ", 6, (void*)vr$146, -1 );
								__builtin_memset( &TMP$1053$8, 0, 12 );
								FBSTRING* vr$152 = fb_StrConcat( &TMP$1053$8, (void*)vr$149, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1054$8, 0, 12 );
								FBSTRING* vr$155 = fb_StrConcat( &TMP$1054$8, (void*)vr$152, -1, (void*)vr$144, -1 );
								fb_StrAssign( (void*)&TMP$1055$8, -1, (void*)vr$155, -1, 0 );
								HWRITEASM64( &TMP$1055$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1055$8 );
							}
							label$806:;
						}
						goto label$795;
						label$808:;
						{
							FBSTRING TMP$1056$7;
							FBSTRING TMP$1057$7;
							FBSTRING TMP$1058$7;
							FBSTRING TMP$1059$7;
							__builtin_memset( &TMP$1059$7, 0, 12 );
							FBSTRING* vr$161 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -2 );
							FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1056$7, 0, 12 );
							FBSTRING* vr$166 = fb_StrConcat( &TMP$1056$7, (void*)"movq ", 6, (void*)vr$163, -1 );
							__builtin_memset( &TMP$1057$7, 0, 12 );
							FBSTRING* vr$169 = fb_StrConcat( &TMP$1057$7, (void*)vr$166, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1058$7, 0, 12 );
							FBSTRING* vr$172 = fb_StrConcat( &TMP$1058$7, (void*)vr$169, -1, (void*)vr$161, -1 );
							fb_StrAssign( (void*)&TMP$1059$7, -1, (void*)vr$172, -1, 0 );
							HWRITEASM64( &TMP$1059$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1059$7 );
							if( LGT$1 >= 13 ) goto label$810;
							{
								FBSTRING TMP$1060$8;
								FBSTRING TMP$1061$8;
								FBSTRING TMP$1062$8;
								FBSTRING TMP$1063$8;
								__builtin_memset( &TMP$1063$8, 0, 12 );
								FBSTRING* vr$178 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$181 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1060$8, 0, 12 );
								FBSTRING* vr$184 = fb_StrConcat( &TMP$1060$8, (void*)"movd ", 6, (void*)vr$181, -1 );
								__builtin_memset( &TMP$1061$8, 0, 12 );
								FBSTRING* vr$187 = fb_StrConcat( &TMP$1061$8, (void*)vr$184, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1062$8, 0, 12 );
								FBSTRING* vr$190 = fb_StrConcat( &TMP$1062$8, (void*)vr$187, -1, (void*)vr$178, -1 );
								fb_StrAssign( (void*)&TMP$1063$8, -1, (void*)vr$190, -1, 0 );
								HWRITEASM64( &TMP$1063$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1063$8 );
							}
							goto label$809;
							label$810:;
							{
								FBSTRING TMP$1064$8;
								FBSTRING TMP$1065$8;
								FBSTRING TMP$1066$8;
								FBSTRING TMP$1067$8;
								__builtin_memset( &TMP$1067$8, 0, 12 );
								FBSTRING* vr$196 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
								FBSTRING* vr$199 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) + 8ll );
								__builtin_memset( &TMP$1064$8, 0, 12 );
								FBSTRING* vr$202 = fb_StrConcat( &TMP$1064$8, (void*)"movq ", 6, (void*)vr$199, -1 );
								__builtin_memset( &TMP$1065$8, 0, 12 );
								FBSTRING* vr$205 = fb_StrConcat( &TMP$1065$8, (void*)vr$202, -1, (void*)"[rbp], xmm", 11 );
								__builtin_memset( &TMP$1066$8, 0, 12 );
								FBSTRING* vr$208 = fb_StrConcat( &TMP$1066$8, (void*)vr$205, -1, (void*)vr$196, -1 );
								fb_StrAssign( (void*)&TMP$1067$8, -1, (void*)vr$208, -1, 0 );
								HWRITEASM64( &TMP$1067$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1067$8 );
							}
							label$809:;
						}
						goto label$795;
						label$796:;
						static const void* tmp$3852[6] = {
							&&label$797,
							&&label$805,
							&&label$798,
							&&label$799,
							&&label$802,
							&&label$808,
						};
						if( TMP$1028$6 > 5u ) goto label$795;
						goto *tmp$3852[TMP$1028$6 - 0u];
						label$795:;
					}
				}
				label$793:;
			}
			goto label$791;
			label$792:;
			{
				int32 TMP$1068$4;
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				if( (DTYPE$1 & 480) == 0 ) goto label$811;
				TMP$1068$4 = 24;
				goto label$2994;
				label$811:;
				TMP$1068$4 = DTYPE$1 & 31;
				label$2994:;
				if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1068$4 * 28)) != 1 ) goto label$813;
				{
					*(int32*)((uint8*)&CTX$ + 88) = *(int32*)((uint8*)&CTX$ + 88) + 1;
					if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$815;
					{
						*(int32*)((uint8*)&CTX$ + 96) = (((LGT$1 + *(int32*)((uint8*)&CTX$ + 96)) + LGT$1) + -1) & ~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
						if( LGT$1 != 4 ) goto label$817;
						{
							FBSTRING TMP$1069$7;
							FBSTRING TMP$1070$7;
							FBSTRING TMP$1071$7;
							FBSTRING TMP$1072$7;
							__builtin_memset( &TMP$1072$7, 0, 12 );
							FBSTRING* vr$229 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$231 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1069$7, 0, 12 );
							FBSTRING* vr$234 = fb_StrConcat( &TMP$1069$7, (void*)"movd ", 6, (void*)vr$231, -1 );
							__builtin_memset( &TMP$1070$7, 0, 12 );
							FBSTRING* vr$237 = fb_StrConcat( &TMP$1070$7, (void*)vr$234, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1071$7, 0, 12 );
							FBSTRING* vr$240 = fb_StrConcat( &TMP$1071$7, (void*)vr$237, -1, (void*)vr$229, -1 );
							fb_StrAssign( (void*)&TMP$1072$7, -1, (void*)vr$240, -1, 0 );
							HWRITEASM64( &TMP$1072$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1072$7 );
						}
						goto label$816;
						label$817:;
						{
							FBSTRING TMP$1073$7;
							FBSTRING TMP$1074$7;
							FBSTRING TMP$1075$7;
							FBSTRING TMP$1076$7;
							__builtin_memset( &TMP$1076$7, 0, 12 );
							FBSTRING* vr$246 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 88) + -1 );
							FBSTRING* vr$248 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1073$7, 0, 12 );
							FBSTRING* vr$251 = fb_StrConcat( &TMP$1073$7, (void*)"movq ", 6, (void*)vr$248, -1 );
							__builtin_memset( &TMP$1074$7, 0, 12 );
							FBSTRING* vr$254 = fb_StrConcat( &TMP$1074$7, (void*)vr$251, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1075$7, 0, 12 );
							FBSTRING* vr$257 = fb_StrConcat( &TMP$1075$7, (void*)vr$254, -1, (void*)vr$246, -1 );
							fb_StrAssign( (void*)&TMP$1076$7, -1, (void*)vr$257, -1, 0 );
							HWRITEASM64( &TMP$1076$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1076$7 );
						}
						label$816:;
					}
					goto label$814;
					label$815:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$814:;
				}
				goto label$812;
				label$813:;
				{
					*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
					if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$819;
					{
						*(int32*)((uint8*)&CTX$ + 96) = (((LGT$1 + *(int32*)((uint8*)&CTX$ + 96)) + LGT$1) + -1) & ~(LGT$1 + -1);
						*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
						{
							uint32 TMP$1077$7;
							TMP$1077$7 = (uint32)LGT$1;
							goto label$821;
							label$822:;
							{
								FBSTRING TMP$1079$8;
								FBSTRING TMP$1080$8;
								FBSTRING TMP$1081$8;
								FBSTRING TMP$1082$8;
								__builtin_memset( &TMP$1082$8, 0, 12 );
								FBSTRING* vr$279 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1079$8, 0, 12 );
								FBSTRING* vr$282 = fb_StrConcat( &TMP$1079$8, (void*)"mov BYTE PTR ", 14, (void*)vr$279, -1 );
								__builtin_memset( &TMP$1080$8, 0, 12 );
								FBSTRING* vr$285 = fb_StrConcat( &TMP$1080$8, (void*)vr$282, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1081$8, 0, 12 );
								FBSTRING* vr$288 = fb_StrConcat( &TMP$1081$8, (void*)vr$285, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1082$8, -1, (void*)vr$288, -1, 0 );
								HWRITEASM64( &TMP$1082$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1082$8 );
							}
							goto label$820;
							label$823:;
							{
								FBSTRING TMP$1084$8;
								FBSTRING TMP$1085$8;
								FBSTRING TMP$1086$8;
								FBSTRING TMP$1087$8;
								__builtin_memset( &TMP$1087$8, 0, 12 );
								FBSTRING* vr$297 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1084$8, 0, 12 );
								FBSTRING* vr$300 = fb_StrConcat( &TMP$1084$8, (void*)"mov WORD PTR ", 14, (void*)vr$297, -1 );
								__builtin_memset( &TMP$1085$8, 0, 12 );
								FBSTRING* vr$303 = fb_StrConcat( &TMP$1085$8, (void*)vr$300, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1086$8, 0, 12 );
								FBSTRING* vr$306 = fb_StrConcat( &TMP$1086$8, (void*)vr$303, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1087$8, -1, (void*)vr$306, -1, 0 );
								HWRITEASM64( &TMP$1087$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1087$8 );
							}
							goto label$820;
							label$824:;
							{
								FBSTRING TMP$1089$8;
								FBSTRING TMP$1090$8;
								FBSTRING TMP$1091$8;
								FBSTRING TMP$1092$8;
								__builtin_memset( &TMP$1092$8, 0, 12 );
								FBSTRING* vr$315 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1089$8, 0, 12 );
								FBSTRING* vr$318 = fb_StrConcat( &TMP$1089$8, (void*)"mov DWORD PTR ", 15, (void*)vr$315, -1 );
								__builtin_memset( &TMP$1090$8, 0, 12 );
								FBSTRING* vr$321 = fb_StrConcat( &TMP$1090$8, (void*)vr$318, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1091$8, 0, 12 );
								FBSTRING* vr$324 = fb_StrConcat( &TMP$1091$8, (void*)vr$321, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1092$8, -1, (void*)vr$324, -1, 0 );
								HWRITEASM64( &TMP$1092$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1092$8 );
							}
							goto label$820;
							label$825:;
							{
								FBSTRING TMP$1093$8;
								FBSTRING TMP$1094$8;
								FBSTRING TMP$1095$8;
								FBSTRING TMP$1096$8;
								__builtin_memset( &TMP$1096$8, 0, 12 );
								FBSTRING* vr$333 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
								__builtin_memset( &TMP$1093$8, 0, 12 );
								FBSTRING* vr$336 = fb_StrConcat( &TMP$1093$8, (void*)"mov QWORD PTR ", 15, (void*)vr$333, -1 );
								__builtin_memset( &TMP$1094$8, 0, 12 );
								FBSTRING* vr$339 = fb_StrConcat( &TMP$1094$8, (void*)vr$336, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1095$8, 0, 12 );
								FBSTRING* vr$342 = fb_StrConcat( &TMP$1095$8, (void*)vr$339, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1096$8, -1, (void*)vr$342, -1, 0 );
								HWRITEASM64( &TMP$1096$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1096$8 );
							}
							goto label$820;
							label$821:;
							static const void* tmp$3853[8] = {
								&&label$822,
								&&label$823,
								&&label$820,
								&&label$824,
								&&label$820,
								&&label$820,
								&&label$820,
								&&label$825,
							};
							if( (TMP$1077$7 - 1u) > 7u ) goto label$820;
							goto *tmp$3853[TMP$1077$7 - 1u];
							label$820:;
						}
					}
					goto label$818;
					label$819:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
					}
					label$818:;
				}
				label$812:;
			}
			label$791:;
		}
		goto label$789;
		label$790:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			LGT$1 = 8;
			if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$827;
			{
				FBSTRING TMP$1097$4;
				FBSTRING TMP$1098$4;
				FBSTRING TMP$1099$4;
				FBSTRING TMP$1100$4;
				*(int32*)((uint8*)&CTX$ + 96) = (((LGT$1 + *(int32*)((uint8*)&CTX$ + 96)) + LGT$1) + -1) & ~(LGT$1 + -1);
				*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
				__builtin_memset( &TMP$1100$4, 0, 12 );
				FBSTRING* vr$364 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
				__builtin_memset( &TMP$1097$4, 0, 12 );
				FBSTRING* vr$367 = fb_StrConcat( &TMP$1097$4, (void*)"mov QWORD PTR ", 15, (void*)vr$364, -1 );
				__builtin_memset( &TMP$1098$4, 0, 12 );
				FBSTRING* vr$370 = fb_StrConcat( &TMP$1098$4, (void*)vr$367, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1099$4, 0, 12 );
				FBSTRING* vr$373 = fb_StrConcat( &TMP$1099$4, (void*)vr$370, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1100$4, -1, (void*)vr$373, -1, 0 );
				HWRITEASM64( &TMP$1100$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1100$4 );
			}
			goto label$826;
			label$827:;
			{
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
			}
			label$826:;
		}
		label$789:;
	}
	goto label$785;
	label$786:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = *(int32*)((uint8*)&CTX$ + 92) + 8;
		if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$829;
		{
			if( (DTYPE$1 & 511) != 20 ) goto label$831;
			{
				int32 TMP$1101$4;
				int32 TMP$1102$4;
				TMP$1102$4 = 0;
				TMP$1101$4 = 0;
				int32 vr$388 = PARAM_ANALYZE( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), (int32*)((uint8*)&CTX$ + 84), &TMP$1101$4, &TMP$1102$4 );
				PARAMTYPE$1 = vr$388;
				{
					uint32 TMP$1103$5;
					TMP$1103$5 = (uint32)PARAMTYPE$1;
					goto label$833;
					label$834:;
					{
						*(int32*)((uint8*)&CTX$ + 96) = (int32)((((*(int64*)((uint8*)SYM$1 + 40) + (int64)*(int32*)((uint8*)&CTX$ + 96)) + *(int64*)((uint8*)SYM$1 + 40)) + -1ll) & ~(*(int64*)((uint8*)SYM$1 + 40) + -1ll));
						*(int64*)((uint8*)SYM$1 + 48) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
						if( PARAMTYPE$1 != 12 ) goto label$836;
						{
							FBSTRING TMP$1104$7;
							FBSTRING TMP$1105$7;
							fb_StrAssign( (void*)&REGSTR$1, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
							__builtin_memset( &TMP$1105$7, 0, 12 );
							FBSTRING* vr$409 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1104$7, 0, 12 );
							FBSTRING* vr$412 = fb_StrConcat( &TMP$1104$7, (void*)vr$409, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1105$7, -1, (void*)vr$412, -1, 0 );
							int64 vr$416 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$416, &REGSTR$1, &TMP$1105$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1105$7 );
						}
						goto label$835;
						label$836:;
						{
							FBSTRING TMP$1106$7;
							FBSTRING TMP$1107$7;
							FBSTRING TMP$1108$7;
							FBSTRING TMP$1109$7;
							__builtin_memset( &TMP$1109$7, 0, 12 );
							FBSTRING* vr$421 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
							__builtin_memset( &TMP$1108$7, 0, 12 );
							FBSTRING* vr$424 = fb_StrConcat( &TMP$1108$7, (void*)vr$421, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1109$7, -1, (void*)vr$424, -1, 0 );
							__builtin_memset( &TMP$1107$7, 0, 12 );
							FBSTRING* vr$428 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1106$7, 0, 12 );
							FBSTRING* vr$431 = fb_StrConcat( &TMP$1106$7, (void*)vr$428, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&TMP$1107$7, -1, (void*)vr$431, -1, 0 );
							int64 vr$434 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( (int32)vr$434, &TMP$1107$7, &TMP$1109$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1109$7 );
							fb_StrDelete( (FBSTRING*)&TMP$1107$7 );
						}
						label$835:;
					}
					goto label$832;
					label$837:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
						if( -(*(boolean*)((uint8*)&CTX$ + 208)) != 0 ) goto label$839;
						{
							LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
							if( PARAMTYPE$1 != 1 ) goto label$841;
							{
								if( LGT$1 != 4 ) goto label$843;
								{
									FBSTRING TMP$1110$9;
									FBSTRING TMP$1111$9;
									FBSTRING TMP$1112$9;
									FBSTRING TMP$1113$9;
									__builtin_memset( &TMP$1113$9, 0, 12 );
									FBSTRING* vr$445 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$446 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1110$9, 0, 12 );
									FBSTRING* vr$449 = fb_StrConcat( &TMP$1110$9, (void*)"movd ", 6, (void*)vr$446, -1 );
									__builtin_memset( &TMP$1111$9, 0, 12 );
									FBSTRING* vr$452 = fb_StrConcat( &TMP$1111$9, (void*)vr$449, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1112$9, 0, 12 );
									FBSTRING* vr$455 = fb_StrConcat( &TMP$1112$9, (void*)vr$452, -1, (void*)vr$445, -1 );
									fb_StrAssign( (void*)&TMP$1113$9, -1, (void*)vr$455, -1, 0 );
									HWRITEASM64( &TMP$1113$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1113$9 );
								}
								goto label$842;
								label$843:;
								{
									FBSTRING TMP$1114$9;
									FBSTRING TMP$1115$9;
									FBSTRING TMP$1116$9;
									FBSTRING TMP$1117$9;
									__builtin_memset( &TMP$1117$9, 0, 12 );
									FBSTRING* vr$461 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
									FBSTRING* vr$462 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
									__builtin_memset( &TMP$1114$9, 0, 12 );
									FBSTRING* vr$465 = fb_StrConcat( &TMP$1114$9, (void*)"movq ", 6, (void*)vr$462, -1 );
									__builtin_memset( &TMP$1115$9, 0, 12 );
									FBSTRING* vr$468 = fb_StrConcat( &TMP$1115$9, (void*)vr$465, -1, (void*)"[rbp], xmm", 11 );
									__builtin_memset( &TMP$1116$9, 0, 12 );
									FBSTRING* vr$471 = fb_StrConcat( &TMP$1116$9, (void*)vr$468, -1, (void*)vr$461, -1 );
									fb_StrAssign( (void*)&TMP$1117$9, -1, (void*)vr$471, -1, 0 );
									HWRITEASM64( &TMP$1117$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$1117$9 );
								}
								label$842:;
							}
							goto label$840;
							label$841:;
							{
								{
									uint32 TMP$1118$9;
									TMP$1118$9 = (uint32)LGT$1;
									goto label$845;
									label$846:;
									{
										FBSTRING TMP$1119$10;
										FBSTRING TMP$1120$10;
										FBSTRING TMP$1121$10;
										FBSTRING TMP$1122$10;
										__builtin_memset( &TMP$1122$10, 0, 12 );
										FBSTRING* vr$479 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1119$10, 0, 12 );
										FBSTRING* vr$482 = fb_StrConcat( &TMP$1119$10, (void*)"mov BYTE PTR ", 14, (void*)vr$479, -1 );
										__builtin_memset( &TMP$1120$10, 0, 12 );
										FBSTRING* vr$485 = fb_StrConcat( &TMP$1120$10, (void*)vr$482, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1121$10, 0, 12 );
										FBSTRING* vr$488 = fb_StrConcat( &TMP$1121$10, (void*)vr$485, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1122$10, -1, (void*)vr$488, -1, 0 );
										HWRITEASM64( &TMP$1122$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1122$10 );
									}
									goto label$844;
									label$847:;
									{
										FBSTRING TMP$1123$10;
										FBSTRING TMP$1124$10;
										FBSTRING TMP$1125$10;
										FBSTRING TMP$1126$10;
										__builtin_memset( &TMP$1126$10, 0, 12 );
										FBSTRING* vr$496 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1123$10, 0, 12 );
										FBSTRING* vr$499 = fb_StrConcat( &TMP$1123$10, (void*)"mov WORD PTR ", 14, (void*)vr$496, -1 );
										__builtin_memset( &TMP$1124$10, 0, 12 );
										FBSTRING* vr$502 = fb_StrConcat( &TMP$1124$10, (void*)vr$499, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1125$10, 0, 12 );
										FBSTRING* vr$505 = fb_StrConcat( &TMP$1125$10, (void*)vr$502, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1126$10, -1, (void*)vr$505, -1, 0 );
										HWRITEASM64( &TMP$1126$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1126$10 );
									}
									goto label$844;
									label$848:;
									{
										FBSTRING TMP$1127$10;
										FBSTRING TMP$1128$10;
										FBSTRING TMP$1129$10;
										FBSTRING TMP$1130$10;
										__builtin_memset( &TMP$1130$10, 0, 12 );
										FBSTRING* vr$513 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1127$10, 0, 12 );
										FBSTRING* vr$516 = fb_StrConcat( &TMP$1127$10, (void*)"mov DWORD PTR ", 15, (void*)vr$513, -1 );
										__builtin_memset( &TMP$1128$10, 0, 12 );
										FBSTRING* vr$519 = fb_StrConcat( &TMP$1128$10, (void*)vr$516, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1129$10, 0, 12 );
										FBSTRING* vr$522 = fb_StrConcat( &TMP$1129$10, (void*)vr$519, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1130$10, -1, (void*)vr$522, -1, 0 );
										HWRITEASM64( &TMP$1130$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1130$10 );
									}
									goto label$844;
									label$849:;
									{
										FBSTRING TMP$1131$10;
										FBSTRING TMP$1132$10;
										FBSTRING TMP$1133$10;
										FBSTRING TMP$1134$10;
										__builtin_memset( &TMP$1134$10, 0, 12 );
										FBSTRING* vr$530 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
										__builtin_memset( &TMP$1131$10, 0, 12 );
										FBSTRING* vr$533 = fb_StrConcat( &TMP$1131$10, (void*)"mov QWORD PTR ", 15, (void*)vr$530, -1 );
										__builtin_memset( &TMP$1132$10, 0, 12 );
										FBSTRING* vr$536 = fb_StrConcat( &TMP$1132$10, (void*)vr$533, -1, (void*)"[rbp], ", 8 );
										__builtin_memset( &TMP$1133$10, 0, 12 );
										FBSTRING* vr$539 = fb_StrConcat( &TMP$1133$10, (void*)vr$536, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
										fb_StrAssign( (void*)&TMP$1134$10, -1, (void*)vr$539, -1, 0 );
										HWRITEASM64( &TMP$1134$10, 0 );
										fb_StrDelete( (FBSTRING*)&TMP$1134$10 );
									}
									goto label$844;
									label$845:;
									static const void* tmp$3854[8] = {
										&&label$846,
										&&label$847,
										&&label$844,
										&&label$848,
										&&label$844,
										&&label$844,
										&&label$844,
										&&label$849,
									};
									if( (TMP$1118$9 - 1u) > 7u ) goto label$844;
									goto *tmp$3854[TMP$1118$9 - 1u];
									label$844:;
								}
							}
							label$840:;
						}
						label$839:;
						label$838:;
					}
					goto label$832;
					label$850:;
					{
						*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
					}
					goto label$832;
					label$833:;
					static const void* tmp$3855[14] = {
						&&label$837,
						&&label$837,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$850,
						&&label$834,
						&&label$834,
					};
					if( TMP$1103$5 > 13u ) goto label$850;
					goto *tmp$3855[TMP$1103$5 - 0u];
					label$832:;
				}
			}
			goto label$830;
			label$831:;
			{
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 40);
				*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
				*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
				if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 208)) == 0)) == 0 ) goto label$852;
				{
					int32 TMP$1135$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$853;
					TMP$1135$5 = 24;
					goto label$2995;
					label$853:;
					TMP$1135$5 = DTYPE$1 & 31;
					label$2995:;
					if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1135$5 * 28)) != 1 ) goto label$855;
					{
						if( LGT$1 != 4 ) goto label$857;
						{
							FBSTRING TMP$1136$7;
							FBSTRING TMP$1137$7;
							FBSTRING TMP$1138$7;
							FBSTRING TMP$1139$7;
							__builtin_memset( &TMP$1139$7, 0, 12 );
							FBSTRING* vr$559 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$560 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1136$7, 0, 12 );
							FBSTRING* vr$563 = fb_StrConcat( &TMP$1136$7, (void*)"movd ", 6, (void*)vr$560, -1 );
							__builtin_memset( &TMP$1137$7, 0, 12 );
							FBSTRING* vr$566 = fb_StrConcat( &TMP$1137$7, (void*)vr$563, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1138$7, 0, 12 );
							FBSTRING* vr$569 = fb_StrConcat( &TMP$1138$7, (void*)vr$566, -1, (void*)vr$559, -1 );
							fb_StrAssign( (void*)&TMP$1139$7, -1, (void*)vr$569, -1, 0 );
							HWRITEASM64( &TMP$1139$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1139$7 );
						}
						goto label$856;
						label$857:;
						{
							FBSTRING TMP$1140$7;
							FBSTRING TMP$1141$7;
							FBSTRING TMP$1142$7;
							FBSTRING TMP$1143$7;
							__builtin_memset( &TMP$1143$7, 0, 12 );
							FBSTRING* vr$575 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) + -1 );
							FBSTRING* vr$576 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
							__builtin_memset( &TMP$1140$7, 0, 12 );
							FBSTRING* vr$579 = fb_StrConcat( &TMP$1140$7, (void*)"movq ", 6, (void*)vr$576, -1 );
							__builtin_memset( &TMP$1141$7, 0, 12 );
							FBSTRING* vr$582 = fb_StrConcat( &TMP$1141$7, (void*)vr$579, -1, (void*)"[rbp], xmm", 11 );
							__builtin_memset( &TMP$1142$7, 0, 12 );
							FBSTRING* vr$585 = fb_StrConcat( &TMP$1142$7, (void*)vr$582, -1, (void*)vr$575, -1 );
							fb_StrAssign( (void*)&TMP$1143$7, -1, (void*)vr$585, -1, 0 );
							HWRITEASM64( &TMP$1143$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1143$7 );
						}
						label$856:;
					}
					goto label$854;
					label$855:;
					{
						{
							uint32 TMP$1144$7;
							TMP$1144$7 = (uint32)LGT$1;
							goto label$859;
							label$860:;
							{
								FBSTRING TMP$1145$8;
								FBSTRING TMP$1146$8;
								FBSTRING TMP$1147$8;
								FBSTRING TMP$1148$8;
								__builtin_memset( &TMP$1148$8, 0, 12 );
								FBSTRING* vr$593 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1145$8, 0, 12 );
								FBSTRING* vr$596 = fb_StrConcat( &TMP$1145$8, (void*)"mov BYTE PTR ", 14, (void*)vr$593, -1 );
								__builtin_memset( &TMP$1146$8, 0, 12 );
								FBSTRING* vr$599 = fb_StrConcat( &TMP$1146$8, (void*)vr$596, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1147$8, 0, 12 );
								FBSTRING* vr$602 = fb_StrConcat( &TMP$1147$8, (void*)vr$599, -1, *(void**)((uint8*)REGSTRB$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1148$8, -1, (void*)vr$602, -1, 0 );
								HWRITEASM64( &TMP$1148$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1148$8 );
							}
							goto label$858;
							label$861:;
							{
								FBSTRING TMP$1149$8;
								FBSTRING TMP$1150$8;
								FBSTRING TMP$1151$8;
								FBSTRING TMP$1152$8;
								__builtin_memset( &TMP$1152$8, 0, 12 );
								FBSTRING* vr$610 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1149$8, 0, 12 );
								FBSTRING* vr$613 = fb_StrConcat( &TMP$1149$8, (void*)"mov WORD PTR ", 14, (void*)vr$610, -1 );
								__builtin_memset( &TMP$1150$8, 0, 12 );
								FBSTRING* vr$616 = fb_StrConcat( &TMP$1150$8, (void*)vr$613, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1151$8, 0, 12 );
								FBSTRING* vr$619 = fb_StrConcat( &TMP$1151$8, (void*)vr$616, -1, *(void**)((uint8*)REGSTRW$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1152$8, -1, (void*)vr$619, -1, 0 );
								HWRITEASM64( &TMP$1152$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1152$8 );
							}
							goto label$858;
							label$862:;
							{
								FBSTRING TMP$1153$8;
								FBSTRING TMP$1154$8;
								FBSTRING TMP$1155$8;
								FBSTRING TMP$1156$8;
								__builtin_memset( &TMP$1156$8, 0, 12 );
								FBSTRING* vr$627 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1153$8, 0, 12 );
								FBSTRING* vr$630 = fb_StrConcat( &TMP$1153$8, (void*)"mov DWORD PTR ", 15, (void*)vr$627, -1 );
								__builtin_memset( &TMP$1154$8, 0, 12 );
								FBSTRING* vr$633 = fb_StrConcat( &TMP$1154$8, (void*)vr$630, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1155$8, 0, 12 );
								FBSTRING* vr$636 = fb_StrConcat( &TMP$1155$8, (void*)vr$633, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1156$8, -1, (void*)vr$636, -1, 0 );
								HWRITEASM64( &TMP$1156$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1156$8 );
							}
							goto label$858;
							label$863:;
							{
								FBSTRING TMP$1157$8;
								FBSTRING TMP$1158$8;
								FBSTRING TMP$1159$8;
								FBSTRING TMP$1160$8;
								__builtin_memset( &TMP$1160$8, 0, 12 );
								FBSTRING* vr$644 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
								__builtin_memset( &TMP$1157$8, 0, 12 );
								FBSTRING* vr$647 = fb_StrConcat( &TMP$1157$8, (void*)"mov QWORD PTR ", 15, (void*)vr$644, -1 );
								__builtin_memset( &TMP$1158$8, 0, 12 );
								FBSTRING* vr$650 = fb_StrConcat( &TMP$1158$8, (void*)vr$647, -1, (void*)"[rbp], ", 8 );
								__builtin_memset( &TMP$1159$8, 0, 12 );
								FBSTRING* vr$653 = fb_StrConcat( &TMP$1159$8, (void*)vr$650, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								fb_StrAssign( (void*)&TMP$1160$8, -1, (void*)vr$653, -1, 0 );
								HWRITEASM64( &TMP$1160$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$1160$8 );
							}
							goto label$858;
							label$859:;
							static const void* tmp$3856[8] = {
								&&label$860,
								&&label$861,
								&&label$858,
								&&label$862,
								&&label$858,
								&&label$858,
								&&label$858,
								&&label$863,
							};
							if( (TMP$1144$7 - 1u) > 7u ) goto label$858;
							goto *tmp$3856[TMP$1144$7 - 1u];
							label$858:;
						}
					}
					label$854:;
				}
				label$852:;
				label$851:;
			}
			label$830:;
		}
		goto label$828;
		label$829:;
		{
			*(int32*)((uint8*)&CTX$ + 84) = *(int32*)((uint8*)&CTX$ + 84) + 1;
			*(int64*)((uint8*)SYM$1 + 48) = (int64)*(int32*)((uint8*)&CTX$ + 92);
			if( (-(*(int32*)((uint8*)&CTX$ + 84) <= 4) & -(-(*(boolean*)((uint8*)&CTX$ + 208)) == 0)) == 0 ) goto label$865;
			{
				FBSTRING TMP$1161$4;
				FBSTRING TMP$1162$4;
				FBSTRING TMP$1163$4;
				FBSTRING TMP$1164$4;
				__builtin_memset( &TMP$1164$4, 0, 12 );
				FBSTRING* vr$668 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 92) );
				__builtin_memset( &TMP$1161$4, 0, 12 );
				FBSTRING* vr$671 = fb_StrConcat( &TMP$1161$4, (void*)"mov QWORD PTR ", 15, (void*)vr$668, -1 );
				__builtin_memset( &TMP$1162$4, 0, 12 );
				FBSTRING* vr$674 = fb_StrConcat( &TMP$1162$4, (void*)vr$671, -1, (void*)"[rbp], ", 8 );
				__builtin_memset( &TMP$1163$4, 0, 12 );
				FBSTRING* vr$677 = fb_StrConcat( &TMP$1163$4, (void*)vr$674, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((*(int32*)((uint8*)&CTX$ + 84) << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1164$4, -1, (void*)vr$677, -1, 0 );
				HWRITEASM64( &TMP$1164$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1164$4 );
			}
			label$865:;
			label$864:;
		}
		label$828:;
	}
	label$785:;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$867;
	{
		EDBGEMITPROCARG_ASM64( SYM$1 );
		label$867:;
	}
	fb_StrDelete( (FBSTRING*)&REGX$1 );
	fb_StrDelete( (FBSTRING*)&REGSTR$1 );
	label$784:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$868:;
	HEMITVARIABLE( SYM$1 );
	label$869:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* SYM$1 )
{
	label$870:;
	*(int32*)((uint8*)&CTX$ + 4) = 2;
	label$872:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$873;
	{
		{
			$12FB_SYMBCLASS TMP$1165$3;
			TMP$1165$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$1165$3 != 15 ) goto label$875;
			label$876:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64) );
			}
			goto label$874;
			label$875:;
			if( TMP$1165$3 != 1 ) goto label$877;
			label$878:;
			{
				if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$880;
				{
					HMAYBEEMITGLOBALVAR( SYM$1 );
				}
				label$880:;
				label$879:;
			}
			label$877:;
			label$874:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$872;
	label$873:;
	label$871:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$881:;
	struct $6IRVREG* TEMP0$1;
	if( (-(*(int32*)((uint8*)V$1 + 4) != DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) != SUBTYPE$1)) == 0 ) goto label$884;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		_EMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 72 );
	}
	label$884:;
	label$883:;
	label$882:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$885:;
	if( (-(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) == LABEL$1) | -(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) == LABEL$1)) == 0 ) goto label$888;
	{
		REG_BRANCH( LABEL$1 );
	}
	goto label$887;
	label$888:;
	{
		FBSTRING TMP$1166$2;
		FBSTRING TMP$1167$2;
		__builtin_memset( &TMP$1167$2, 0, 12 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$1166$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$1166$2, (void*)vr$4, 0, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$1167$2, -1, (void*)vr$7, -1, 0 );
		HWRITEASM64( &TMP$1167$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1167$2 );
	}
	label$887:;
	if( *(boolean*)((uint8*)LABEL$1 + 68) == (boolean)0 ) goto label$890;
	{
		FBSTRING TMP$1169$2;
		__builtin_memset( &TMP$1169$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1169$2, -1, (void*)"push rax #dummy push for gosub", 31, 0 );
		HWRITEASM64( &TMP$1169$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1169$2 );
	}
	label$890:;
	label$889:;
	label$886:;
}

static void PREPARE_IDX( struct $6IRVREG* V1$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$1240$1;
	FBSTRING TMP$1243$1;
	FBSTRING TMP$1244$1;
	label$891:;
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$894;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$896;
		{
			if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) == -1 ) goto label$898;
			{
				FBSTRING TMP$1170$4;
				FBSTRING TMP$1171$4;
				FBSTRING TMP$1172$4;
				int32 vr$8 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				FBSTRING* vr$11 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1170$4, 0, 12 );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$1170$4, (void*)vr$11, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1171$4, 0, 12 );
				FBSTRING* vr$17 = fb_StrConcat( &TMP$1171$4, (void*)vr$14, -1, *(void**)((uint8*)REGSTRQ$ + (vr$8 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1172$4, 0, 12 );
				FBSTRING* vr$20 = fb_StrConcat( &TMP$1172$4, (void*)vr$17, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$20, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			goto label$897;
			label$898:;
			{
				FBSTRING TMP$1173$4;
				FBSTRING TMP$1174$4;
				FBSTRING TMP$1175$4;
				FBSTRING TMP$1176$4;
				FBSTRING TMP$1177$4;
				FBSTRING TMP$1178$4;
				FBSTRING TMP$1179$4;
				FBSTRING TMP$1180$4;
				int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 52) + 12) );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$25 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$1173$4, 0, 12 );
				FBSTRING* vr$32 = fb_StrConcat( &TMP$1173$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1174$4, 0, 12 );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$1174$4, (void*)vr$32, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1175$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$1175$4, (void*)vr$35, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1176$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$1176$4, (void*)vr$38, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1177$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$1177$4, (void*)vr$41, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$44, -1, 0 );
				FBSTRING* vr$47 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1178$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$1178$4, (void*)vr$47, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1179$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$1179$4, (void*)vr$50, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1180$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$1180$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$56, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			label$897:;
		}
		goto label$895;
		label$896:;
		{
			uint8* vr$58 = REG_TEMPO(  );
			fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$58, 0, 0 );
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$900;
			{
				FBSTRING TMP$1182$4;
				FBSTRING TMP$1183$4;
				FBSTRING TMP$1184$4;
				FBSTRING TMP$1185$4;
				FBSTRING TMP$1186$4;
				FBSTRING TMP$1187$4;
				FBSTRING TMP$1189$4;
				FBSTRING TMP$1190$4;
				FBSTRING TMP$1191$4;
				FBSTRING TMP$1192$4;
				FBSTRING TMP$1193$4;
				FBSTRING TMP$1194$4;
				FBSTRING TMP$1195$4;
				FBSTRING TMP$1196$4;
				FBSTRING TMP$1197$4;
				FBSTRING TMP$1198$4;
				FBSTRING TMP$1199$4;
				FBSTRING* vr$73 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				uint8* vr$76 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				__builtin_memset( &TMP$1182$4, 0, 12 );
				FBSTRING* vr$80 = fb_StrConcat( &TMP$1182$4, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1183$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$1183$4, (void*)vr$80, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1184$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$1184$4, (void*)vr$83, -1, (void*)vr$76, 0 );
				__builtin_memset( &TMP$1185$4, 0, 12 );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$1185$4, (void*)vr$86, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1186$4, 0, 12 );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$1186$4, (void*)vr$89, -1, (void*)vr$73, -1 );
				__builtin_memset( &TMP$1187$4, 0, 12 );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$1187$4, (void*)vr$92, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$95, -1, 0 );
				FBSTRING* vr$99 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1189$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$1189$4, (void*)"\x0A", 2, (void*)vr$99, -1 );
				__builtin_memset( &TMP$1190$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$1190$4, (void*)vr$102, -1, (void*)"mov ", 5 );
				__builtin_memset( &TMP$1191$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$1191$4, (void*)vr$105, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1192$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$1192$4, (void*)vr$108, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1193$4, 0, 12 );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$1193$4, (void*)vr$111, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1194$4, 0, 12 );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$1194$4, (void*)vr$114, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1195$4, 0, 12 );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$1195$4, (void*)vr$117, -1, (void*)"] #NO", 6 );
				__builtin_memset( &TMP$1196$4, 0, 12 );
				FBSTRING* vr$123 = fb_StrConcat( &TMP$1196$4, (void*)OP3$1, -1, (void*)vr$120, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$123, -1, 0 );
				FBSTRING* vr$126 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1197$4, 0, 12 );
				FBSTRING* vr$129 = fb_StrConcat( &TMP$1197$4, (void*)vr$126, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1198$4, 0, 12 );
				FBSTRING* vr$132 = fb_StrConcat( &TMP$1198$4, (void*)vr$129, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1199$4, 0, 12 );
				FBSTRING* vr$135 = fb_StrConcat( &TMP$1199$4, (void*)vr$132, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$135, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			goto label$899;
			label$900:;
			{
				FBSTRING TMP$1200$4;
				FBSTRING TMP$1201$4;
				FBSTRING TMP$1202$4;
				FBSTRING TMP$1203$4;
				FBSTRING TMP$1204$4;
				FBSTRING TMP$1205$4;
				FBSTRING TMP$1206$4;
				FBSTRING* vr$139 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				__builtin_memset( &TMP$1200$4, 0, 12 );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$1200$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1201$4, 0, 12 );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$1201$4, (void*)vr$143, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1202$4, 0, 12 );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$1202$4, (void*)vr$146, -1, (void*)vr$139, -1 );
				__builtin_memset( &TMP$1203$4, 0, 12 );
				FBSTRING* vr$152 = fb_StrConcat( &TMP$1203$4, (void*)vr$149, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$152, -1, 0 );
				FBSTRING* vr$155 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1204$4, 0, 12 );
				FBSTRING* vr$158 = fb_StrConcat( &TMP$1204$4, (void*)vr$155, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$1205$4, 0, 12 );
				FBSTRING* vr$161 = fb_StrConcat( &TMP$1205$4, (void*)vr$158, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1206$4, 0, 12 );
				FBSTRING* vr$164 = fb_StrConcat( &TMP$1206$4, (void*)vr$161, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)OP1$1, -1, (void*)vr$164, -1, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			label$899:;
		}
		label$895:;
	}
	goto label$893;
	label$894:;
	{
		uint8* vr$166 = REG_TEMPO(  );
		fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$166, 0, 0 );
		if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$902;
		{
			FBSTRING TMP$1207$3;
			FBSTRING TMP$1208$3;
			FBSTRING TMP$1209$3;
			FBSTRING TMP$1210$3;
			FBSTRING TMP$1211$3;
			FBSTRING TMP$1212$3;
			FBSTRING* vr$178 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$180 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1207$3, 0, 12 );
			FBSTRING* vr$184 = fb_StrConcat( &TMP$1207$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1208$3, 0, 12 );
			FBSTRING* vr$187 = fb_StrConcat( &TMP$1208$3, (void*)vr$184, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1209$3, 0, 12 );
			FBSTRING* vr$190 = fb_StrConcat( &TMP$1209$3, (void*)vr$187, -1, (void*)vr$180, 0 );
			__builtin_memset( &TMP$1210$3, 0, 12 );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$1210$3, (void*)vr$190, -1, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1211$3, 0, 12 );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$1211$3, (void*)vr$193, -1, (void*)vr$178, -1 );
			__builtin_memset( &TMP$1212$3, 0, 12 );
			FBSTRING* vr$199 = fb_StrConcat( &TMP$1212$3, (void*)vr$196, -1, (void*)"] #NO", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$199, -1, 0 );
		}
		goto label$901;
		label$902:;
		{
			FBSTRING TMP$1213$3;
			FBSTRING TMP$1214$3;
			FBSTRING TMP$1215$3;
			FBSTRING TMP$1216$3;
			FBSTRING* vr$201 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1213$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$1213$3, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1214$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$1214$3, (void*)vr$205, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1215$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$1215$3, (void*)vr$208, -1, (void*)vr$201, -1 );
			__builtin_memset( &TMP$1216$3, 0, 12 );
			FBSTRING* vr$214 = fb_StrConcat( &TMP$1216$3, (void*)vr$211, -1, (void*)"[rbp]", 6 );
			fb_StrAssign( (void*)OP3$1, -1, (void*)vr$214, -1, 0 );
		}
		label$901:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 4 ) goto label$904;
		{
			FBSTRING TMP$1218$3;
			FBSTRING TMP$1219$3;
			FBSTRING TMP$1220$3;
			FBSTRING TMP$1221$3;
			int32 vr$219 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			__builtin_memset( &TMP$1218$3, 0, 12 );
			FBSTRING* vr$224 = fb_StrConcat( &TMP$1218$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1219$3, 0, 12 );
			FBSTRING* vr$227 = fb_StrConcat( &TMP$1219$3, (void*)vr$224, -1, (void*)"+", 2 );
			__builtin_memset( &TMP$1220$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$1220$3, (void*)vr$227, -1, *(void**)((uint8*)REGSTRQ$ + (vr$219 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1221$3, 0, 12 );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$1221$3, (void*)vr$230, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$233, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$892;
		}
		goto label$903;
		label$904:;
		if( *(int32*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) != 1 ) goto label$905;
		{
			FBSTRING TMP$1238$3;
			FBSTRING TMP$1239$3;
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$907;
			{
				FBSTRING TMP$1222$4;
				FBSTRING TMP$1223$4;
				FBSTRING TMP$1224$4;
				FBSTRING TMP$1225$4;
				FBSTRING TMP$1226$4;
				FBSTRING TMP$1227$4;
				FBSTRING TMP$1228$4;
				FBSTRING TMP$1229$4;
				FBSTRING TMP$1230$4;
				FBSTRING* vr$250 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				uint8* vr$253 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 32) );
				FBSTRING* vr$256 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1222$4, 0, 12 );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$1222$4, (void*)"\x0A", 2, (void*)vr$256, -1 );
				__builtin_memset( &TMP$1223$4, 0, 12 );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$1223$4, (void*)vr$259, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1224$4, 0, 12 );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$1224$4, (void*)vr$262, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1225$4, 0, 12 );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$1225$4, (void*)vr$265, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1226$4, 0, 12 );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1226$4, (void*)vr$268, -1, (void*)vr$253, 0 );
				__builtin_memset( &TMP$1227$4, 0, 12 );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$1227$4, (void*)vr$271, -1, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1228$4, 0, 12 );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$1228$4, (void*)vr$274, -1, (void*)vr$250, -1 );
				__builtin_memset( &TMP$1229$4, 0, 12 );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$1229$4, (void*)vr$277, -1, (void*)"]", 2 );
				__builtin_memset( &TMP$1230$4, 0, 12 );
				FBSTRING* vr$283 = fb_StrConcat( &TMP$1230$4, (void*)OP3$1, -1, (void*)vr$280, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$283, -1, 0 );
			}
			goto label$906;
			label$907:;
			{
				FBSTRING TMP$1231$4;
				FBSTRING TMP$1232$4;
				FBSTRING TMP$1233$4;
				FBSTRING TMP$1234$4;
				FBSTRING TMP$1235$4;
				FBSTRING TMP$1236$4;
				FBSTRING TMP$1237$4;
				FBSTRING* vr$286 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 40) );
				FBSTRING* vr$289 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				__builtin_memset( &TMP$1231$4, 0, 12 );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$1231$4, (void*)"\x0A", 2, (void*)vr$289, -1 );
				__builtin_memset( &TMP$1232$4, 0, 12 );
				FBSTRING* vr$295 = fb_StrConcat( &TMP$1232$4, (void*)vr$292, -1, (void*)"add ", 5 );
				__builtin_memset( &TMP$1233$4, 0, 12 );
				FBSTRING* vr$298 = fb_StrConcat( &TMP$1233$4, (void*)vr$295, -1, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1234$4, 0, 12 );
				FBSTRING* vr$301 = fb_StrConcat( &TMP$1234$4, (void*)vr$298, -1, (void*)",", 2 );
				__builtin_memset( &TMP$1235$4, 0, 12 );
				FBSTRING* vr$304 = fb_StrConcat( &TMP$1235$4, (void*)vr$301, -1, (void*)vr$286, -1 );
				__builtin_memset( &TMP$1236$4, 0, 12 );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$1236$4, (void*)vr$304, -1, (void*)"[rbp]", 6 );
				__builtin_memset( &TMP$1237$4, 0, 12 );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$1237$4, (void*)OP3$1, -1, (void*)vr$307, -1 );
				fb_StrAssign( (void*)OP3$1, -1, (void*)vr$310, -1, 0 );
			}
			label$906:;
			__builtin_memset( &TMP$1238$3, 0, 12 );
			FBSTRING* vr$314 = fb_StrConcat( &TMP$1238$3, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
			__builtin_memset( &TMP$1239$3, 0, 12 );
			FBSTRING* vr$317 = fb_StrConcat( &TMP$1239$3, (void*)vr$314, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)OP1$1, -1, (void*)vr$317, -1, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$892;
		}
		label$905:;
		label$903:;
	}
	label$893:;
	__builtin_memset( &TMP$1240$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1240$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1240$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1240$1 );
	__builtin_memset( &TMP$1243$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1243$1, -1, (void*)"FOUND AN ERROR : prepare_IDX case not handled 01", 49, 0 );
	HWRITEASM64( &TMP$1243$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1243$1 );
	__builtin_memset( &TMP$1244$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1244$1, -1, (void*)"", 1, 0 );
	HWRITEASM64( &TMP$1244$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1244$1 );
	int32 vr$331 = fb_StrCompare( (void*)OP1$1, -1, (void*)"", 1 );
	if( vr$331 != 0 ) goto label$909;
	{
		fb_StrAssign( (void*)OP1$1, -1, (void*)"X X", 4, 0 );
		label$909:;
	}
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	label$892:;
}

static uint8* HGETBOPCODE( int32 OP$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$910:;
	{
		uint32 TMP$1246$2;
		TMP$1246$2 = (uint32)OP$1;
		goto label$913;
		label$914:;
		{
			fb$result$1 = (uint8*)"add";
		}
		goto label$912;
		label$915:;
		{
			fb$result$1 = (uint8*)"sub";
		}
		goto label$912;
		label$916:;
		{
			fb$result$1 = (uint8*)"mul";
		}
		goto label$912;
		label$917:;
		{
			fb$result$1 = (uint8*)"div";
		}
		goto label$912;
		label$918:;
		{
			fb$result$1 = (uint8*)"intdiv";
		}
		goto label$912;
		label$919:;
		{
			fb$result$1 = (uint8*)"mod";
		}
		goto label$912;
		label$920:;
		{
			fb$result$1 = (uint8*)"shl";
		}
		goto label$912;
		label$921:;
		{
			fb$result$1 = (uint8*)"ashr";
		}
		goto label$912;
		label$922:;
		{
			fb$result$1 = (uint8*)"and";
		}
		goto label$912;
		label$923:;
		{
			fb$result$1 = (uint8*)"or";
		}
		goto label$912;
		label$924:;
		{
			fb$result$1 = (uint8*)"xor";
		}
		goto label$912;
		label$925:;
		{
			fb$result$1 = (uint8*)"icmp eq";
		}
		goto label$912;
		label$926:;
		{
			fb$result$1 = (uint8*)"icmp ne";
		}
		goto label$912;
		label$927:;
		{
			fb$result$1 = (uint8*)"icmp sgt";
		}
		goto label$912;
		label$928:;
		{
			fb$result$1 = (uint8*)"icmp slt";
		}
		goto label$912;
		label$929:;
		{
			fb$result$1 = (uint8*)"icmp sge";
		}
		goto label$912;
		label$930:;
		{
			fb$result$1 = (uint8*)"icmp sle";
		}
		goto label$912;
		label$931:;
		{
			fb$result$1 = (uint8*)"eqv";
		}
		goto label$912;
		label$932:;
		{
			fb$result$1 = (uint8*)"imp";
		}
		goto label$912;
		label$933:;
		{
			fb$result$1 = (uint8*)"jmp";
		}
		goto label$912;
		label$934:;
		{
			fb$result$1 = (uint8*)"je";
		}
		goto label$912;
		label$935:;
		{
			fb$result$1 = (uint8*)"jgt";
		}
		goto label$912;
		label$936:;
		{
			fb$result$1 = (uint8*)"jlt";
		}
		goto label$912;
		label$937:;
		{
			fb$result$1 = (uint8*)"jne";
		}
		goto label$912;
		label$938:;
		{
			fb$result$1 = (uint8*)"jge";
		}
		goto label$912;
		label$939:;
		{
			fb$result$1 = (uint8*)"jle";
		}
		goto label$912;
		label$940:;
		{
			fb$result$1 = (uint8*)"call";
		}
		goto label$912;
		label$941:;
		{
			fb$result$1 = (uint8*)"bop unknown";
		}
		goto label$912;
		label$913:;
		static const void* tmp$3857[72] = {
			&&label$914,
			&&label$915,
			&&label$916,
			&&label$917,
			&&label$918,
			&&label$919,
			&&label$922,
			&&label$923,
			&&label$941,
			&&label$941,
			&&label$924,
			&&label$931,
			&&label$932,
			&&label$920,
			&&label$921,
			&&label$941,
			&&label$941,
			&&label$925,
			&&label$927,
			&&label$928,
			&&label$926,
			&&label$929,
			&&label$930,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$941,
			&&label$934,
			&&label$935,
			&&label$936,
			&&label$937,
			&&label$938,
			&&label$939,
			&&label$933,
			&&label$940,
		};
		if( (TMP$1246$2 - 28u) > 71u ) goto label$941;
		goto *tmp$3857[TMP$1246$2 - 28u];
		label$912:;
	}
	label$911:;
	return fb$result$1;
}

static void RESTORE_VRREG( struct $6IRVREG* VR$1, int32 VRREG$1 )
{
	label$942:;
	*(int32*)((uint8*)&CTX$ + 216) = VRREG$1;
	*(int32*)((uint8*)&CTX$ + 220) = 1;
	if( *(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2 & 31))) != -2 ) goto label$945;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2 & 31))) = *(int32*)((uint8*)VR$1 + 12);
	}
	label$945:;
	label$944:;
	label$943:;
}

static void BOP_FLOAT( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, FBSTRING* OP1$1, FBSTRING* OP2$1, FBSTRING* OP3$1, FBSTRING* OP4$1, FBSTRING* PREFIX$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$946:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING MOVREG$1;
	__builtin_memset( &MOVREG$1, 0, 12 );
	FBSTRING MOVMEM$1;
	__builtin_memset( &MOVMEM$1, 0, 12 );
	FBSTRING COMPREG$1;
	__builtin_memset( &COMPREG$1, 0, 12 );
	FBSTRING IMMREG$1;
	__builtin_memset( &IMMREG$1, 0, 12 );
	FBSTRING ADDREG$1;
	__builtin_memset( &ADDREG$1, 0, 12 );
	FBSTRING SUBREG$1;
	__builtin_memset( &SUBREG$1, 0, 12 );
	FBSTRING MULREG$1;
	__builtin_memset( &MULREG$1, 0, 12 );
	FBSTRING DIVREG$1;
	__builtin_memset( &DIVREG$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	uint8* JMPCODE$1;
	__builtin_memset( &JMPCODE$1, 0, 4 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$949;
	{
		int32 vr$14 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
		VRREG$1 = vr$14;
	}
	label$949:;
	label$948:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( V1DTYPE$1 != 16 ) goto label$951;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movq ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movsd ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomisd ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"rax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addsd ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subsd ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulsd ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divsd ", 7, 0 );
	}
	goto label$950;
	label$951:;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1, (void*)"movd ", 6, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1, (void*)"movss ", 7, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1, (void*)"ucomiss ", 9, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1, (void*)"eax", 4, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1, (void*)"addss ", 7, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1, (void*)"subss ", 7, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1, (void*)"mulss ", 7, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1, (void*)"divss ", 7, 0 );
	}
	label$950:;
	if( *(int32*)V1$1 != 4 ) goto label$953;
	{
		FBSTRING TMP$1285$2;
		FBSTRING TMP$1286$2;
		FBSTRING TMP$1287$2;
		__builtin_memset( &TMP$1287$2, 0, 12 );
		__builtin_memset( &TMP$1285$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$1285$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1286$2, 0, 12 );
		FBSTRING* vr$41 = fb_StrConcat( &TMP$1286$2, (void*)vr$38, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1287$2, -1, (void*)vr$41, -1, 0 );
		HWRITEASM64( &TMP$1287$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1287$2 );
	}
	goto label$952;
	label$953:;
	if( *(int32*)V1$1 != 0 ) goto label$954;
	{
		FBSTRING TMP$1288$2;
		FBSTRING TMP$1289$2;
		FBSTRING TMP$1290$2;
		FBSTRING TMP$1291$2;
		FBSTRING TMP$1292$2;
		FBSTRING TMP$1293$2;
		FBSTRING TMP$1294$2;
		__builtin_memset( &TMP$1291$2, 0, 12 );
		__builtin_memset( &TMP$1288$2, 0, 12 );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$1288$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1289$2, 0, 12 );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$1289$2, (void*)vr$50, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1290$2, 0, 12 );
		FBSTRING* vr$56 = fb_StrConcat( &TMP$1290$2, (void*)vr$53, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1291$2, -1, (void*)vr$56, -1, 0 );
		HWRITEASM64( &TMP$1291$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1291$2 );
		__builtin_memset( &TMP$1294$2, 0, 12 );
		__builtin_memset( &TMP$1292$2, 0, 12 );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$1292$2, (void*)&MOVREG$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1293$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$1293$2, (void*)vr$65, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1294$2, -1, (void*)vr$68, -1, 0 );
		HWRITEASM64( &TMP$1294$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1294$2 );
	}
	goto label$952;
	label$954:;
	{
		FBSTRING TMP$1295$2;
		FBSTRING TMP$1296$2;
		FBSTRING TMP$1297$2;
		__builtin_memset( &TMP$1297$2, 0, 12 );
		__builtin_memset( &TMP$1295$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$1295$2, (void*)&MOVMEM$1, -1, (void*)"xmm0, ", 7 );
		__builtin_memset( &TMP$1296$2, 0, 12 );
		FBSTRING* vr$79 = fb_StrConcat( &TMP$1296$2, (void*)vr$76, -1, (void*)OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1297$2, -1, (void*)vr$79, -1, 0 );
		HWRITEASM64( &TMP$1297$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1297$2 );
	}
	label$952:;
	if( *(int32*)V2$1 != 4 ) goto label$956;
	{
		FBSTRING TMP$1299$2;
		FBSTRING TMP$1300$2;
		FBSTRING TMP$1301$2;
		__builtin_memset( &TMP$1301$2, 0, 12 );
		__builtin_memset( &TMP$1299$2, 0, 12 );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$1299$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1300$2, 0, 12 );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$1300$2, (void*)vr$88, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1301$2, -1, (void*)vr$91, -1, 0 );
		HWRITEASM64( &TMP$1301$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1301$2 );
	}
	goto label$955;
	label$956:;
	if( *(int32*)V2$1 != 0 ) goto label$957;
	{
		FBSTRING TMP$1302$2;
		FBSTRING TMP$1303$2;
		FBSTRING TMP$1304$2;
		FBSTRING TMP$1305$2;
		FBSTRING TMP$1306$2;
		FBSTRING TMP$1307$2;
		FBSTRING TMP$1308$2;
		__builtin_memset( &TMP$1305$2, 0, 12 );
		__builtin_memset( &TMP$1302$2, 0, 12 );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$1302$2, (void*)"mov ", 5, (void*)&IMMREG$1, -1 );
		__builtin_memset( &TMP$1303$2, 0, 12 );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$1303$2, (void*)vr$100, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$1304$2, 0, 12 );
		FBSTRING* vr$106 = fb_StrConcat( &TMP$1304$2, (void*)vr$103, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1305$2, -1, (void*)vr$106, -1, 0 );
		HWRITEASM64( &TMP$1305$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1305$2 );
		__builtin_memset( &TMP$1308$2, 0, 12 );
		__builtin_memset( &TMP$1306$2, 0, 12 );
		FBSTRING* vr$115 = fb_StrConcat( &TMP$1306$2, (void*)&MOVREG$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1307$2, 0, 12 );
		FBSTRING* vr$118 = fb_StrConcat( &TMP$1307$2, (void*)vr$115, -1, (void*)&IMMREG$1, -1 );
		fb_StrAssign( (void*)&TMP$1308$2, -1, (void*)vr$118, -1, 0 );
		HWRITEASM64( &TMP$1308$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1308$2 );
	}
	goto label$955;
	label$957:;
	{
		FBSTRING TMP$1309$2;
		FBSTRING TMP$1310$2;
		FBSTRING TMP$1311$2;
		__builtin_memset( &TMP$1311$2, 0, 12 );
		__builtin_memset( &TMP$1309$2, 0, 12 );
		FBSTRING* vr$126 = fb_StrConcat( &TMP$1309$2, (void*)&MOVMEM$1, -1, (void*)"xmm1, ", 7 );
		__builtin_memset( &TMP$1310$2, 0, 12 );
		FBSTRING* vr$129 = fb_StrConcat( &TMP$1310$2, (void*)vr$126, -1, (void*)OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$1311$2, -1, (void*)vr$129, -1, 0 );
		HWRITEASM64( &TMP$1311$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1311$2 );
	}
	label$955:;
	{
		if( OP$1 == 45 ) goto label$960;
		label$961:;
		if( OP$1 == 48 ) goto label$960;
		label$962:;
		if( OP$1 == 47 ) goto label$960;
		label$963:;
		if( OP$1 == 50 ) goto label$960;
		label$964:;
		if( OP$1 == 46 ) goto label$960;
		label$965:;
		if( OP$1 != 49 ) goto label$959;
		label$960:;
		{
			FBSTRING TMP$1317$3;
			FBSTRING TMP$1318$3;
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$967;
			{
				FBSTRING TMP$1313$4;
				FBSTRING TMP$1314$4;
				FBSTRING TMP$1315$4;
				uint8* vr$133 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$133, 0, 0 );
				__builtin_memset( &TMP$1315$4, 0, 12 );
				__builtin_memset( &TMP$1313$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1313$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1314$4, 0, 12 );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$1314$4, (void*)vr$139, -1, (void*)", -1", 5 );
				fb_StrAssign( (void*)&TMP$1315$4, -1, (void*)vr$142, -1, 0 );
				HWRITEASM64( &TMP$1315$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1315$4 );
			}
			label$967:;
			label$966:;
			__builtin_memset( &TMP$1318$3, 0, 12 );
			__builtin_memset( &TMP$1317$3, 0, 12 );
			FBSTRING* vr$150 = fb_StrConcat( &TMP$1317$3, (void*)&COMPREG$1, -1, (void*)"xmm0, xmm1", 11 );
			fb_StrAssign( (void*)&TMP$1318$3, -1, (void*)vr$150, -1, 0 );
			HWRITEASM64( &TMP$1318$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1318$3 );
			if( OP$1 != 45 ) goto label$969;
			{
				FBSTRING TMP$1320$4;
				FBSTRING TMP$1321$4;
				uint8* vr$154 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$154, 0, 0 );
				__builtin_memset( &TMP$1321$4, 0, 12 );
				__builtin_memset( &TMP$1320$4, 0, 12 );
				FBSTRING* vr$160 = fb_StrConcat( &TMP$1320$4, (void*)"jp ", 4, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$1321$4, -1, (void*)vr$160, -1, 0 );
				HWRITEASM64( &TMP$1321$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1321$4 );
			}
			goto label$968;
			label$969:;
			if( OP$1 != 48 ) goto label$970;
			{
				if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$972;
				{
					FBSTRING TMP$1322$5;
					FBSTRING TMP$1323$5;
					__builtin_memset( &TMP$1323$5, 0, 12 );
					__builtin_memset( &TMP$1322$5, 0, 12 );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$1322$5, (void*)"jp ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$1323$5, -1, (void*)vr$168, -1, 0 );
					HWRITEASM64( &TMP$1323$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1323$5 );
				}
				goto label$971;
				label$972:;
				{
					FBSTRING TMP$1324$5;
					FBSTRING TMP$1325$5;
					__builtin_memset( &TMP$1325$5, 0, 12 );
					uint8* vr$173 = SYMBGETMANGLEDNAME( LABEL$1 );
					__builtin_memset( &TMP$1324$5, 0, 12 );
					FBSTRING* vr$176 = fb_StrConcat( &TMP$1324$5, (void*)"jp ", 4, (void*)vr$173, 0 );
					fb_StrAssign( (void*)&TMP$1325$5, -1, (void*)vr$176, -1, 0 );
					HWRITEASM64( &TMP$1325$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1325$5 );
				}
				label$971:;
			}
			label$970:;
			label$968:;
			{
				if( OP$1 != 45 ) goto label$974;
				label$975:;
				{
					JMPCODE$1 = (uint8*)"je ";
				}
				goto label$973;
				label$974:;
				if( OP$1 != 48 ) goto label$976;
				label$977:;
				{
					JMPCODE$1 = (uint8*)"jne ";
				}
				goto label$973;
				label$976:;
				if( OP$1 != 47 ) goto label$978;
				label$979:;
				{
					JMPCODE$1 = (uint8*)"jb ";
				}
				goto label$973;
				label$978:;
				if( OP$1 != 50 ) goto label$980;
				label$981:;
				{
					JMPCODE$1 = (uint8*)"jbe ";
				}
				goto label$973;
				label$980:;
				if( OP$1 != 46 ) goto label$982;
				label$983:;
				{
					JMPCODE$1 = (uint8*)"ja ";
				}
				goto label$973;
				label$982:;
				if( OP$1 != 49 ) goto label$984;
				label$985:;
				{
					JMPCODE$1 = (uint8*)"jae ";
				}
				label$984:;
				label$973:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$987;
			{
				FBSTRING TMP$1332$4;
				FBSTRING TMP$1333$4;
				__builtin_memset( &TMP$1333$4, 0, 12 );
				__builtin_memset( &TMP$1332$4, 0, 12 );
				FBSTRING* vr$184 = fb_StrConcat( &TMP$1332$4, (void*)JMPCODE$1, 0, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$1333$4, -1, (void*)vr$184, -1, 0 );
				HWRITEASM64( &TMP$1333$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1333$4 );
			}
			goto label$986;
			label$987:;
			{
				FBSTRING TMP$1334$4;
				FBSTRING TMP$1335$4;
				__builtin_memset( &TMP$1335$4, 0, 12 );
				uint8* vr$189 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1334$4, 0, 12 );
				FBSTRING* vr$192 = fb_StrConcat( &TMP$1334$4, (void*)JMPCODE$1, 0, (void*)vr$189, 0 );
				fb_StrAssign( (void*)&TMP$1335$4, -1, (void*)vr$192, -1, 0 );
				HWRITEASM64( &TMP$1335$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1335$4 );
				REG_MARK( LABEL$1 );
			}
			label$986:;
			if( OP$1 != 45 ) goto label$989;
			{
				FBSTRING TMP$1336$4;
				FBSTRING TMP$1337$4;
				__builtin_memset( &TMP$1337$4, 0, 12 );
				__builtin_memset( &TMP$1336$4, 0, 12 );
				FBSTRING* vr$200 = fb_StrConcat( &TMP$1336$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1337$4, -1, (void*)vr$200, -1, 0 );
				HWRITEASM64( &TMP$1337$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1337$4 );
				label$989:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$991;
			{
				FBSTRING TMP$1339$4;
				FBSTRING TMP$1340$4;
				FBSTRING TMP$1341$4;
				FBSTRING TMP$1342$4;
				FBSTRING TMP$1343$4;
				FBSTRING TMP$1344$4;
				__builtin_memset( &TMP$1342$4, 0, 12 );
				__builtin_memset( &TMP$1339$4, 0, 12 );
				FBSTRING* vr$209 = fb_StrConcat( &TMP$1339$4, (void*)"xor ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1340$4, 0, 12 );
				FBSTRING* vr$212 = fb_StrConcat( &TMP$1340$4, (void*)vr$209, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1341$4, 0, 12 );
				FBSTRING* vr$215 = fb_StrConcat( &TMP$1341$4, (void*)vr$212, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$1342$4, -1, (void*)vr$215, -1, 0 );
				HWRITEASM64( &TMP$1342$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1342$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
				__builtin_memset( &TMP$1344$4, 0, 12 );
				__builtin_memset( &TMP$1343$4, 0, 12 );
				FBSTRING* vr$223 = fb_StrConcat( &TMP$1343$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$1344$4, -1, (void*)vr$223, -1, 0 );
				HWRITEASM64( &TMP$1344$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1344$4 );
			}
			label$991:;
			label$990:;
		}
		goto label$958;
		label$959:;
		if( OP$1 == 28 ) goto label$993;
		label$994:;
		if( OP$1 == 29 ) goto label$993;
		label$995:;
		if( OP$1 == 30 ) goto label$993;
		label$996:;
		if( OP$1 != 31 ) goto label$992;
		label$993:;
		{
			FBSTRING TMP$1354$3;
			FBSTRING TMP$1355$3;
			FBSTRING TMP$1356$3;
			{
				if( OP$1 != 28 ) goto label$998;
				label$999:;
				{
					FBSTRING TMP$1345$5;
					FBSTRING TMP$1346$5;
					__builtin_memset( &TMP$1346$5, 0, 12 );
					__builtin_memset( &TMP$1345$5, 0, 12 );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$1345$5, (void*)&ADDREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1346$5, -1, (void*)vr$231, -1, 0 );
					HWRITEASM64( &TMP$1346$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1346$5 );
				}
				goto label$997;
				label$998:;
				if( OP$1 != 29 ) goto label$1000;
				label$1001:;
				{
					FBSTRING TMP$1347$5;
					FBSTRING TMP$1348$5;
					__builtin_memset( &TMP$1348$5, 0, 12 );
					__builtin_memset( &TMP$1347$5, 0, 12 );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$1347$5, (void*)&SUBREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1348$5, -1, (void*)vr$239, -1, 0 );
					HWRITEASM64( &TMP$1348$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1348$5 );
				}
				goto label$997;
				label$1000:;
				if( OP$1 != 30 ) goto label$1002;
				label$1003:;
				{
					FBSTRING TMP$1349$5;
					FBSTRING TMP$1350$5;
					__builtin_memset( &TMP$1350$5, 0, 12 );
					__builtin_memset( &TMP$1349$5, 0, 12 );
					FBSTRING* vr$247 = fb_StrConcat( &TMP$1349$5, (void*)&MULREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1350$5, -1, (void*)vr$247, -1, 0 );
					HWRITEASM64( &TMP$1350$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1350$5 );
				}
				goto label$997;
				label$1002:;
				if( OP$1 != 31 ) goto label$1004;
				label$1005:;
				{
					FBSTRING TMP$1351$5;
					FBSTRING TMP$1352$5;
					__builtin_memset( &TMP$1352$5, 0, 12 );
					__builtin_memset( &TMP$1351$5, 0, 12 );
					FBSTRING* vr$255 = fb_StrConcat( &TMP$1351$5, (void*)&DIVREG$1, -1, (void*)"xmm0, xmm1", 11 );
					fb_StrAssign( (void*)&TMP$1352$5, -1, (void*)vr$255, -1, 0 );
					HWRITEASM64( &TMP$1352$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1352$5 );
				}
				label$1004:;
				label$997:;
			}
			__builtin_memset( &TMP$1356$3, 0, 12 );
			__builtin_memset( &TMP$1354$3, 0, 12 );
			FBSTRING* vr$263 = fb_StrConcat( &TMP$1354$3, (void*)"movq ", 6, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1355$3, 0, 12 );
			FBSTRING* vr$266 = fb_StrConcat( &TMP$1355$3, (void*)vr$263, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$1356$3, -1, (void*)vr$266, -1, 0 );
			HWRITEASM64( &TMP$1356$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1356$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$958;
		label$992:;
		if( OP$1 != 64 ) goto label$1006;
		label$1007:;
		{
			if( V1DTYPE$1 != 16 ) goto label$1009;
			{
				FBSTRING TMP$1358$4;
				FBSTRING TMP$1359$4;
				FBSTRING TMP$1360$4;
				FBSTRING TMP$1361$4;
				__builtin_memset( &TMP$1358$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1358$4, -1, (void*)"atan2", 6, 0 );
				SAVE_CALL( &TMP$1358$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1358$4 );
				__builtin_memset( &TMP$1361$4, 0, 12 );
				__builtin_memset( &TMP$1359$4, 0, 12 );
				FBSTRING* vr$278 = fb_StrConcat( &TMP$1359$4, (void*)"movq ", 6, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1360$4, 0, 12 );
				FBSTRING* vr$281 = fb_StrConcat( &TMP$1360$4, (void*)vr$278, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1361$4, -1, (void*)vr$281, -1, 0 );
				HWRITEASM64( &TMP$1361$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1361$4 );
			}
			goto label$1008;
			label$1009:;
			{
				FBSTRING TMP$1363$4;
				FBSTRING TMP$1364$4;
				FBSTRING TMP$1365$4;
				FBSTRING TMP$1366$4;
				__builtin_memset( &TMP$1363$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1363$4, -1, (void*)"atan2f", 7, 0 );
				SAVE_CALL( &TMP$1363$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1363$4 );
				__builtin_memset( &TMP$1366$4, 0, 12 );
				__builtin_memset( &TMP$1364$4, 0, 12 );
				FBSTRING* vr$293 = fb_StrConcat( &TMP$1364$4, (void*)"movd ", 6, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1365$4, 0, 12 );
				FBSTRING* vr$296 = fb_StrConcat( &TMP$1365$4, (void*)vr$293, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$1366$4, -1, (void*)vr$296, -1, 0 );
				HWRITEASM64( &TMP$1366$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1366$4 );
			}
			label$1008:;
		}
		goto label$958;
		label$1006:;
		{
			FBSTRING TMP$1367$3;
			FBSTRING TMP$1370$3;
			FBSTRING TMP$1371$3;
			FBSTRING TMP$1372$3;
			__builtin_memset( &TMP$1367$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1367$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1367$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1367$3 );
			__builtin_memset( &TMP$1371$3, 0, 12 );
			uint8* vr$305 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1370$3, 0, 12 );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$1370$3, (void*)"FOUND AN ERROR : in bop float needs to be coded : ", 51, (void*)vr$305, 0 );
			fb_StrAssign( (void*)&TMP$1371$3, -1, (void*)vr$308, -1, 0 );
			HWRITEASM64( &TMP$1371$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1371$3 );
			__builtin_memset( &TMP$1372$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1372$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1372$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1372$3 );
		}
		label$1010:;
		label$958:;
	}
	fb_StrDelete( (FBSTRING*)&DIVREG$1 );
	fb_StrDelete( (FBSTRING*)&MULREG$1 );
	fb_StrDelete( (FBSTRING*)&SUBREG$1 );
	fb_StrDelete( (FBSTRING*)&ADDREG$1 );
	fb_StrDelete( (FBSTRING*)&IMMREG$1 );
	fb_StrDelete( (FBSTRING*)&COMPREG$1 );
	fb_StrDelete( (FBSTRING*)&MOVMEM$1 );
	fb_StrDelete( (FBSTRING*)&MOVREG$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$947:;
}

static void HLOADOPERANDSANDWRITEBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1432$1;
	int32 TMP$1433$1;
	FBSTRING TMP$1434$1;
	FBSTRING TMP$1435$1;
	label$1011:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	FBSTRING SUFFIX$1;
	__builtin_memset( &SUFFIX$1, 0, 12 );
	FBSTRING OP1PREV$1;
	__builtin_memset( &OP1PREV$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1BIS$1;
	__builtin_memset( &OP1BIS$1, 0, 12 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	$11FB_DATATYPE TEMPO2DTYPE$1;
	__builtin_memset( &TEMPO2DTYPE$1, 0, 4 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 VRREG2$1;
	__builtin_memset( &VRREG2$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	struct $6IRVREG* VRTEMPO$1;
	__builtin_memset( &VRTEMPO$1, 0, 4 );
	TEMPODTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1014;
	{
		TEMPODTYPE$1 = 8;
		label$1014:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1017;
		label$1018:;
		if( TEMPODTYPE$1 == 9 ) goto label$1017;
		label$1019:;
		if( TEMPODTYPE$1 == 13 ) goto label$1017;
		label$1020:;
		if( TEMPODTYPE$1 == 14 ) goto label$1017;
		label$1021:;
		if( TEMPODTYPE$1 == 10 ) goto label$1017;
		label$1022:;
		if( TEMPODTYPE$1 != 16 ) goto label$1016;
		label$1017:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1015;
		label$1016:;
		if( TEMPODTYPE$1 == 11 ) goto label$1024;
		label$1025:;
		if( TEMPODTYPE$1 == 12 ) goto label$1024;
		label$1026:;
		if( TEMPODTYPE$1 != 15 ) goto label$1023;
		label$1024:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1015;
		label$1023:;
		if( TEMPODTYPE$1 == 5 ) goto label$1028;
		label$1029:;
		if( TEMPODTYPE$1 != 6 ) goto label$1027;
		label$1028:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1015;
		label$1027:;
		if( TEMPODTYPE$1 == 2 ) goto label$1031;
		label$1032:;
		if( TEMPODTYPE$1 == 3 ) goto label$1031;
		label$1033:;
		if( TEMPODTYPE$1 == 1 ) goto label$1031;
		label$1034:;
		if( TEMPODTYPE$1 != 4 ) goto label$1030;
		label$1031:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1015;
		label$1030:;
		{
			FBSTRING TMP$1377$3;
			FBSTRING TMP$1381$3;
			FBSTRING TMP$1382$3;
			FBSTRING TMP$1383$3;
			__builtin_memset( &TMP$1377$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1377$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1377$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1377$3 );
			__builtin_memset( &TMP$1382$3, 0, 12 );
			FBSTRING* vr$29 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1381$3, 0, 12 );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$1381$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48, (void*)vr$29, -1 );
			fb_StrAssign( (void*)&TMP$1382$3, -1, (void*)vr$32, -1, 0 );
			HWRITEASM64( &TMP$1382$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1382$3 );
			__builtin_memset( &TMP$1383$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1383$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1383$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1383$3 );
		}
		label$1035:;
		label$1015:;
	}
	fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)&PREFIX1$1, -1, 0 );
	{
		$15IRVREGTYPE_ENUM TMP$1384$2;
		TMP$1384$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1384$2 != 4 ) goto label$1037;
		label$1038:;
		{
			int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$44;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1041;
				label$1042:;
				if( TEMPODTYPE$1 == 9 ) goto label$1041;
				label$1043:;
				if( TEMPODTYPE$1 == 13 ) goto label$1041;
				label$1044:;
				if( TEMPODTYPE$1 == 14 ) goto label$1041;
				label$1045:;
				if( TEMPODTYPE$1 == 10 ) goto label$1041;
				label$1046:;
				if( TEMPODTYPE$1 != 16 ) goto label$1040;
				label$1041:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1039;
				label$1040:;
				if( TEMPODTYPE$1 == 11 ) goto label$1048;
				label$1049:;
				if( TEMPODTYPE$1 == 12 ) goto label$1048;
				label$1050:;
				if( TEMPODTYPE$1 != 15 ) goto label$1047;
				label$1048:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1039;
				label$1047:;
				if( TEMPODTYPE$1 == 5 ) goto label$1052;
				label$1053:;
				if( TEMPODTYPE$1 != 6 ) goto label$1051;
				label$1052:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1039;
				label$1051:;
				if( TEMPODTYPE$1 == 2 ) goto label$1055;
				label$1056:;
				if( TEMPODTYPE$1 == 3 ) goto label$1055;
				label$1057:;
				if( TEMPODTYPE$1 == 1 ) goto label$1055;
				label$1058:;
				if( TEMPODTYPE$1 != 4 ) goto label$1054;
				label$1055:;
				{
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1039;
				label$1054:;
				{
					FBSTRING TMP$1385$5;
					FBSTRING TMP$1389$5;
					FBSTRING TMP$1390$5;
					FBSTRING TMP$1391$5;
					__builtin_memset( &TMP$1385$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1385$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1385$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1385$5 );
					__builtin_memset( &TMP$1390$5, 0, 12 );
					FBSTRING* vr$59 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1389$5, 0, 12 );
					FBSTRING* vr$62 = fb_StrConcat( &TMP$1389$5, (void*)"FOUND AN ERROR : BOP datatype not handled 010 ", 47, (void*)vr$59, -1 );
					fb_StrAssign( (void*)&TMP$1390$5, -1, (void*)vr$62, -1, 0 );
					HWRITEASM64( &TMP$1390$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1390$5 );
					__builtin_memset( &TMP$1391$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1391$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1391$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1391$5 );
				}
				label$1059:;
				label$1039:;
			}
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1036;
		label$1037:;
		if( TMP$1384$2 != 2 ) goto label$1060;
		label$1061:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1036;
		label$1060:;
		if( TMP$1384$2 != 3 ) goto label$1062;
		label$1063:;
		{
			FBSTRING TMP$1392$3;
			FBSTRING TMP$1393$3;
			FBSTRING TMP$1394$3;
			int32 vr$75 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1392$3, 0, 12 );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$1392$3, (void*)vr$78, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1393$3, 0, 12 );
			FBSTRING* vr$84 = fb_StrConcat( &TMP$1393$3, (void*)vr$81, -1, *(void**)((uint8*)REGSTRQ$ + (vr$75 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1394$3, 0, 12 );
			FBSTRING* vr$87 = fb_StrConcat( &TMP$1394$3, (void*)vr$84, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$87, -1, 0 );
		}
		goto label$1036;
		label$1062:;
		if( TMP$1384$2 != 5 ) goto label$1064;
		label$1065:;
		{
			FBSTRING TMP$1395$3;
			FBSTRING TMP$1396$3;
			FBSTRING TMP$1397$3;
			FBSTRING* vr$90 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$92 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1395$3, 0, 12 );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$1395$3, (void*)vr$92, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1396$3, 0, 12 );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$1396$3, (void*)vr$95, -1, (void*)vr$90, -1 );
			__builtin_memset( &TMP$1397$3, 0, 12 );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$1397$3, (void*)vr$98, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$101, -1, 0 );
		}
		goto label$1036;
		label$1064:;
		if( TMP$1384$2 != 0 ) goto label$1066;
		label$1067:;
		{
			int32 TMP$1398$3;
			if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1068;
			TMP$1398$3 = 24;
			goto label$2996;
			label$1068:;
			TMP$1398$3 = *(int32*)((uint8*)V1$1 + 4) & 31;
			label$2996:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1398$3 * 28)) != 1 ) goto label$1070;
			{
				FBSTRING* vr$110 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V1$1 + 24), *(int32*)((uint8*)V1$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$110, -1, 0 );
			}
			goto label$1069;
			label$1070:;
			{
				if( TEMPODTYPE$1 != 1 ) goto label$1072;
				{
					if( *(int64*)((uint8*)V1$1 + 24) == 0ll ) goto label$1074;
					{
						*(int64*)((uint8*)V1$1 + 24) = 1ll;
					}
					label$1074:;
					label$1073:;
				}
				label$1072:;
				label$1071:;
				FBSTRING* vr$115 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$115, -1, 0 );
			}
			label$1069:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		goto label$1036;
		label$1066:;
		if( TMP$1384$2 != 1 ) goto label$1075;
		label$1076:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1078;
			{
				FBSTRING TMP$1399$4;
				FBSTRING TMP$1400$4;
				FBSTRING TMP$1401$4;
				FBSTRING* vr$128 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$130 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1399$4, 0, 12 );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$1399$4, (void*)vr$130, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1400$4, 0, 12 );
				FBSTRING* vr$136 = fb_StrConcat( &TMP$1400$4, (void*)vr$133, -1, (void*)vr$128, -1 );
				__builtin_memset( &TMP$1401$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1401$4, (void*)vr$136, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$139, -1, 0 );
			}
			goto label$1077;
			label$1078:;
			{
				FBSTRING TMP$1402$4;
				FBSTRING* vr$142 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1402$4, 0, 12 );
				FBSTRING* vr$145 = fb_StrConcat( &TMP$1402$4, (void*)vr$142, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$145, -1, 0 );
			}
			label$1077:;
		}
		goto label$1036;
		label$1075:;
		{
			FBSTRING TMP$1403$3;
			FBSTRING TMP$1406$3;
			FBSTRING TMP$1407$3;
			__builtin_memset( &TMP$1403$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1403$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1403$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1403$3 );
			__builtin_memset( &TMP$1406$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1406$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$1406$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1406$3 );
			__builtin_memset( &TMP$1407$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1407$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1407$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1407$3 );
		}
		label$1079:;
		label$1036:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1408$2;
		TMP$1408$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$1408$2 != 4 ) goto label$1081;
		label$1082:;
		{
			int32 vr$161 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			TEMPO$1 = vr$161;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1085;
				label$1086:;
				if( TEMPODTYPE$1 == 9 ) goto label$1085;
				label$1087:;
				if( TEMPODTYPE$1 == 13 ) goto label$1085;
				label$1088:;
				if( TEMPODTYPE$1 == 14 ) goto label$1085;
				label$1089:;
				if( TEMPODTYPE$1 == 10 ) goto label$1085;
				label$1090:;
				if( TEMPODTYPE$1 != 16 ) goto label$1084;
				label$1085:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1083;
				label$1084:;
				if( TEMPODTYPE$1 == 11 ) goto label$1092;
				label$1093:;
				if( TEMPODTYPE$1 == 12 ) goto label$1092;
				label$1094:;
				if( TEMPODTYPE$1 != 15 ) goto label$1091;
				label$1092:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRD$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1083;
				label$1091:;
				if( TEMPODTYPE$1 == 5 ) goto label$1096;
				label$1097:;
				if( TEMPODTYPE$1 != 6 ) goto label$1095;
				label$1096:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRW$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1083;
				label$1095:;
				if( TEMPODTYPE$1 == 2 ) goto label$1099;
				label$1100:;
				if( TEMPODTYPE$1 == 3 ) goto label$1099;
				label$1101:;
				if( TEMPODTYPE$1 == 1 ) goto label$1099;
				label$1102:;
				if( TEMPODTYPE$1 != 4 ) goto label$1098;
				label$1099:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRB$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				}
				goto label$1083;
				label$1098:;
				{
					FBSTRING TMP$1409$5;
					FBSTRING TMP$1413$5;
					FBSTRING TMP$1414$5;
					FBSTRING TMP$1415$5;
					__builtin_memset( &TMP$1409$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1409$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1409$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1409$5 );
					__builtin_memset( &TMP$1414$5, 0, 12 );
					FBSTRING* vr$176 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1413$5, 0, 12 );
					FBSTRING* vr$179 = fb_StrConcat( &TMP$1413$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 ", 47, (void*)vr$176, -1 );
					fb_StrAssign( (void*)&TMP$1414$5, -1, (void*)vr$179, -1, 0 );
					HWRITEASM64( &TMP$1414$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1414$5 );
					__builtin_memset( &TMP$1415$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1415$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1415$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1415$5 );
				}
				label$1103:;
				label$1083:;
			}
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
		}
		goto label$1080;
		label$1081:;
		if( TMP$1408$2 != 0 ) goto label$1104;
		label$1105:;
		{
			int32 TMP$1416$3;
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1106;
			TMP$1416$3 = 24;
			goto label$2997;
			label$1106:;
			TMP$1416$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$2997:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1416$3 * 28)) != 1 ) goto label$1108;
			{
				FBSTRING* vr$196 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$196, -1, 0 );
			}
			goto label$1107;
			label$1108:;
			{
				if( *(int32*)((uint8*)V2$1 + 4) != 1 ) goto label$1110;
				{
					if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$1112;
					{
						*(int64*)((uint8*)V2$1 + 24) = 1ll;
					}
					label$1112:;
					label$1111:;
				}
				label$1110:;
				label$1109:;
				FBSTRING* vr$202 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$202, -1, 0 );
			}
			label$1107:;
		}
		goto label$1080;
		label$1104:;
		if( TMP$1408$2 != 3 ) goto label$1113;
		label$1114:;
		{
			FBSTRING TMP$1417$3;
			FBSTRING TMP$1418$3;
			FBSTRING TMP$1419$3;
			int32 vr$206 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$209 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$1417$3, 0, 12 );
			FBSTRING* vr$212 = fb_StrConcat( &TMP$1417$3, (void*)vr$209, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1418$3, 0, 12 );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$1418$3, (void*)vr$212, -1, *(void**)((uint8*)REGSTRQ$ + (vr$206 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1419$3, 0, 12 );
			FBSTRING* vr$218 = fb_StrConcat( &TMP$1419$3, (void*)vr$215, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$218, -1, 0 );
		}
		goto label$1080;
		label$1113:;
		if( TMP$1408$2 != 5 ) goto label$1115;
		label$1116:;
		{
			FBSTRING TMP$1420$3;
			FBSTRING TMP$1421$3;
			FBSTRING TMP$1422$3;
			FBSTRING* vr$221 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$223 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$1420$3, 0, 12 );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$1420$3, (void*)vr$223, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1421$3, 0, 12 );
			FBSTRING* vr$229 = fb_StrConcat( &TMP$1421$3, (void*)vr$226, -1, (void*)vr$221, -1 );
			__builtin_memset( &TMP$1422$3, 0, 12 );
			FBSTRING* vr$232 = fb_StrConcat( &TMP$1422$3, (void*)vr$229, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$232, -1, 0 );
		}
		goto label$1080;
		label$1115:;
		if( TMP$1408$2 != 2 ) goto label$1117;
		label$1118:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1080;
		label$1117:;
		if( TMP$1408$2 != 1 ) goto label$1119;
		label$1120:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1122;
			{
				FBSTRING TMP$1423$4;
				FBSTRING TMP$1424$4;
				FBSTRING TMP$1425$4;
				FBSTRING* vr$246 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$248 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$1423$4, 0, 12 );
				FBSTRING* vr$251 = fb_StrConcat( &TMP$1423$4, (void*)vr$248, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1424$4, 0, 12 );
				FBSTRING* vr$254 = fb_StrConcat( &TMP$1424$4, (void*)vr$251, -1, (void*)vr$246, -1 );
				__builtin_memset( &TMP$1425$4, 0, 12 );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$1425$4, (void*)vr$254, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$257, -1, 0 );
			}
			goto label$1121;
			label$1122:;
			{
				FBSTRING TMP$1426$4;
				FBSTRING* vr$260 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$1426$4, 0, 12 );
				FBSTRING* vr$263 = fb_StrConcat( &TMP$1426$4, (void*)vr$260, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$263, -1, 0 );
			}
			label$1121:;
		}
		goto label$1080;
		label$1119:;
		{
			FBSTRING TMP$1427$3;
			FBSTRING TMP$1430$3;
			FBSTRING TMP$1431$3;
			__builtin_memset( &TMP$1427$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1427$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1427$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1427$3 );
			__builtin_memset( &TMP$1430$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1430$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v2", 51, 0 );
			HWRITEASM64( &TMP$1430$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1430$3 );
			__builtin_memset( &TMP$1431$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1431$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1431$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1431$3 );
		}
		label$1123:;
		label$1080:;
	}
	int32 vr$278 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$278 == 0 ) goto label$1125;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1125:;
	}
	int32 vr$281 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$281 == 0 ) goto label$1127;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1127:;
	}
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1128;
	TMP$1432$1 = 24;
	goto label$2998;
	label$1128:;
	TMP$1432$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$2998:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1129;
	TMP$1433$1 = 24;
	goto label$2999;
	label$1129:;
	TMP$1433$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$2999:;
	if( (-(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1432$1 * 28)) == 1) | -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1433$1 * 28)) == 1)) == 0 ) goto label$1131;
	{
		BOP_FLOAT( OP$1, V1$1, V2$1, VR$1, &OP1$1, &OP2$1, &OP3$1, &OP4$1, &PREFIX1$1, LABEL$1 );
		fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
		fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1012;
	}
	label$1131:;
	label$1130:;
	__builtin_memset( &TMP$1434$1, 0, 12 );
	FBSTRING* vr$315 = fb_StrConcat( &TMP$1434$1, (void*)&PREFIX1$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$315, -1, 0 );
	__builtin_memset( &TMP$1435$1, 0, 12 );
	FBSTRING* vr$321 = fb_StrConcat( &TMP$1435$1, (void*)&PREFIX2$1, -1, (void*)&OP2$1, -1 );
	fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$321, -1, 0 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1133;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1135;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
		}
		goto label$1134;
		label$1135:;
		{
			int32 vr$327 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
			VRREG$1 = vr$327;
			if( *(int32*)V1$1 != 5 ) goto label$1137;
			{
				FBSTRING TMP$1436$4;
				FBSTRING TMP$1437$4;
				FBSTRING TMP$1438$4;
				FBSTRING TMP$1439$4;
				__builtin_memset( &TMP$1439$4, 0, 12 );
				__builtin_memset( &TMP$1436$4, 0, 12 );
				FBSTRING* vr$334 = fb_StrConcat( &TMP$1436$4, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1437$4, 0, 12 );
				FBSTRING* vr$337 = fb_StrConcat( &TMP$1437$4, (void*)vr$334, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1438$4, 0, 12 );
				FBSTRING* vr$340 = fb_StrConcat( &TMP$1438$4, (void*)vr$337, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1439$4, -1, (void*)vr$340, -1, 0 );
				HWRITEASM64( &TMP$1439$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1439$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			goto label$1136;
			label$1137:;
			{
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1140;
					label$1141:;
					if( TEMPODTYPE$1 == 9 ) goto label$1140;
					label$1142:;
					if( TEMPODTYPE$1 == 13 ) goto label$1140;
					label$1143:;
					if( TEMPODTYPE$1 == 14 ) goto label$1140;
					label$1144:;
					if( TEMPODTYPE$1 != 10 ) goto label$1139;
					label$1140:;
					{
						FBSTRING TMP$1440$6;
						FBSTRING TMP$1441$6;
						FBSTRING TMP$1442$6;
						FBSTRING TMP$1443$6;
						__builtin_memset( &TMP$1443$6, 0, 12 );
						__builtin_memset( &TMP$1440$6, 0, 12 );
						FBSTRING* vr$351 = fb_StrConcat( &TMP$1440$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1441$6, 0, 12 );
						FBSTRING* vr$354 = fb_StrConcat( &TMP$1441$6, (void*)vr$351, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1442$6, 0, 12 );
						FBSTRING* vr$357 = fb_StrConcat( &TMP$1442$6, (void*)vr$354, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1443$6, -1, (void*)vr$357, -1, 0 );
						HWRITEASM64( &TMP$1443$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1443$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1138;
					label$1139:;
					if( TEMPODTYPE$1 == 11 ) goto label$1146;
					label$1147:;
					if( TEMPODTYPE$1 != 12 ) goto label$1145;
					label$1146:;
					{
						FBSTRING TMP$1444$6;
						FBSTRING TMP$1445$6;
						FBSTRING TMP$1446$6;
						FBSTRING TMP$1447$6;
						__builtin_memset( &TMP$1447$6, 0, 12 );
						__builtin_memset( &TMP$1444$6, 0, 12 );
						FBSTRING* vr$368 = fb_StrConcat( &TMP$1444$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1445$6, 0, 12 );
						FBSTRING* vr$371 = fb_StrConcat( &TMP$1445$6, (void*)vr$368, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1446$6, 0, 12 );
						FBSTRING* vr$374 = fb_StrConcat( &TMP$1446$6, (void*)vr$371, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1447$6, -1, (void*)vr$374, -1, 0 );
						HWRITEASM64( &TMP$1447$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1447$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1138;
					label$1145:;
					if( TEMPODTYPE$1 == 5 ) goto label$1149;
					label$1150:;
					if( TEMPODTYPE$1 != 6 ) goto label$1148;
					label$1149:;
					{
						FBSTRING TMP$1448$6;
						FBSTRING TMP$1449$6;
						FBSTRING TMP$1450$6;
						FBSTRING TMP$1451$6;
						__builtin_memset( &TMP$1451$6, 0, 12 );
						__builtin_memset( &TMP$1448$6, 0, 12 );
						FBSTRING* vr$385 = fb_StrConcat( &TMP$1448$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1449$6, 0, 12 );
						FBSTRING* vr$388 = fb_StrConcat( &TMP$1449$6, (void*)vr$385, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1450$6, 0, 12 );
						FBSTRING* vr$391 = fb_StrConcat( &TMP$1450$6, (void*)vr$388, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1451$6, -1, (void*)vr$391, -1, 0 );
						HWRITEASM64( &TMP$1451$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1451$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1138;
					label$1148:;
					if( TEMPODTYPE$1 == 2 ) goto label$1152;
					label$1153:;
					if( TEMPODTYPE$1 == 3 ) goto label$1152;
					label$1154:;
					if( TEMPODTYPE$1 == 1 ) goto label$1152;
					label$1155:;
					if( TEMPODTYPE$1 != 4 ) goto label$1151;
					label$1152:;
					{
						FBSTRING TMP$1452$6;
						FBSTRING TMP$1453$6;
						FBSTRING TMP$1454$6;
						FBSTRING TMP$1455$6;
						__builtin_memset( &TMP$1455$6, 0, 12 );
						__builtin_memset( &TMP$1452$6, 0, 12 );
						FBSTRING* vr$402 = fb_StrConcat( &TMP$1452$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1453$6, 0, 12 );
						FBSTRING* vr$405 = fb_StrConcat( &TMP$1453$6, (void*)vr$402, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1454$6, 0, 12 );
						FBSTRING* vr$408 = fb_StrConcat( &TMP$1454$6, (void*)vr$405, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1455$6, -1, (void*)vr$408, -1, 0 );
						HWRITEASM64( &TMP$1455$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1455$6 );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
					}
					goto label$1138;
					label$1151:;
					{
						FBSTRING TMP$1456$6;
						FBSTRING TMP$1460$6;
						FBSTRING TMP$1461$6;
						FBSTRING TMP$1462$6;
						__builtin_memset( &TMP$1456$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1456$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1456$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1456$6 );
						__builtin_memset( &TMP$1461$6, 0, 12 );
						FBSTRING* vr$420 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1460$6, 0, 12 );
						FBSTRING* vr$423 = fb_StrConcat( &TMP$1460$6, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49, (void*)vr$420, -1 );
						fb_StrAssign( (void*)&TMP$1461$6, -1, (void*)vr$423, -1, 0 );
						HWRITEASM64( &TMP$1461$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1461$6 );
						__builtin_memset( &TMP$1462$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1462$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1462$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1462$6 );
					}
					label$1156:;
					label$1138:;
				}
			}
			label$1136:;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
		}
		label$1134:;
		if( *(int32*)V2$1 != 5 ) goto label$1158;
		{
			FBSTRING TMP$1463$3;
			FBSTRING TMP$1464$3;
			FBSTRING TMP$1465$3;
			FBSTRING TMP$1466$3;
			int32 vr$433 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$433;
			__builtin_memset( &TMP$1466$3, 0, 12 );
			__builtin_memset( &TMP$1463$3, 0, 12 );
			FBSTRING* vr$439 = fb_StrConcat( &TMP$1463$3, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1464$3, 0, 12 );
			FBSTRING* vr$442 = fb_StrConcat( &TMP$1464$3, (void*)vr$439, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1465$3, 0, 12 );
			FBSTRING* vr$445 = fb_StrConcat( &TMP$1465$3, (void*)vr$442, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1466$3, -1, (void*)vr$445, -1, 0 );
			HWRITEASM64( &TMP$1466$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1466$3 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1158:;
		label$1157:;
	}
	goto label$1132;
	label$1133:;
	{
		if( *(int32*)V1$1 != 5 ) goto label$1160;
		{
			FBSTRING TMP$1467$3;
			FBSTRING TMP$1468$3;
			FBSTRING TMP$1469$3;
			FBSTRING TMP$1470$3;
			int32 vr$452 = REG_FINDFREE( 99999, -1 );
			VRREG2$1 = vr$452;
			__builtin_memset( &TMP$1470$3, 0, 12 );
			__builtin_memset( &TMP$1467$3, 0, 12 );
			FBSTRING* vr$458 = fb_StrConcat( &TMP$1467$3, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1468$3, 0, 12 );
			FBSTRING* vr$461 = fb_StrConcat( &TMP$1468$3, (void*)vr$458, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1469$3, 0, 12 );
			FBSTRING* vr$464 = fb_StrConcat( &TMP$1469$3, (void*)vr$461, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1470$3, -1, (void*)vr$464, -1, 0 );
			HWRITEASM64( &TMP$1470$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1470$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (2 & 31))), 0, 0 );
		}
		label$1160:;
		label$1159:;
		if( OP$1 != 30 ) goto label$1162;
		{
			if( *(int32*)V1$1 == 4 ) goto label$1164;
			{
				FBSTRING TMP$1471$4;
				FBSTRING TMP$1472$4;
				FBSTRING TMP$1473$4;
				FBSTRING TMP$1474$4;
				struct $6IRVREG* vr$471 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				VR$1 = vr$471;
				int32 vr$473 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				VRREG$1 = vr$473;
				fb_StrAssign( (void*)&OP1PREV$1, -1, (void*)&OP1$1, -1, 0 );
				__builtin_memset( &TMP$1474$4, 0, 12 );
				__builtin_memset( &TMP$1471$4, 0, 12 );
				FBSTRING* vr$481 = fb_StrConcat( &TMP$1471$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1472$4, 0, 12 );
				FBSTRING* vr$484 = fb_StrConcat( &TMP$1472$4, (void*)vr$481, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1473$4, 0, 12 );
				FBSTRING* vr$487 = fb_StrConcat( &TMP$1473$4, (void*)vr$484, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1474$4, -1, (void*)vr$487, -1, 0 );
				HWRITEASM64( &TMP$1474$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1474$4 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
			}
			label$1164:;
			label$1163:;
		}
		goto label$1161;
		label$1162:;
		{
			if( (-(*(int32*)V2$1 != 4) & -(*(int32*)V2$1 != 0)) == 0 ) goto label$1166;
			{
				struct $6IRVREG* vr$498 = IRHLALLOCVREG( TEMPODTYPE$1, (struct $8FBSYMBOL*)0u );
				VRTEMPO$1 = vr$498;
				int32 vr$500 = REG_FINDFREE( *(int32*)((uint8*)VRTEMPO$1 + 12), -1 );
				VRREG$1 = vr$500;
				if( *(int32*)V2$1 != 5 ) goto label$1168;
				{
					FBSTRING TMP$1475$5;
					FBSTRING TMP$1476$5;
					FBSTRING TMP$1477$5;
					FBSTRING TMP$1478$5;
					__builtin_memset( &TMP$1478$5, 0, 12 );
					__builtin_memset( &TMP$1475$5, 0, 12 );
					FBSTRING* vr$507 = fb_StrConcat( &TMP$1475$5, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1476$5, 0, 12 );
					FBSTRING* vr$510 = fb_StrConcat( &TMP$1476$5, (void*)vr$507, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1477$5, 0, 12 );
					FBSTRING* vr$513 = fb_StrConcat( &TMP$1477$5, (void*)vr$510, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1478$5, -1, (void*)vr$513, -1, 0 );
					HWRITEASM64( &TMP$1478$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1478$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1167;
				label$1168:;
				{
					{
						if( TEMPODTYPE$1 == 8 ) goto label$1171;
						label$1172:;
						if( TEMPODTYPE$1 == 9 ) goto label$1171;
						label$1173:;
						if( TEMPODTYPE$1 == 13 ) goto label$1171;
						label$1174:;
						if( TEMPODTYPE$1 == 14 ) goto label$1171;
						label$1175:;
						if( TEMPODTYPE$1 != 10 ) goto label$1170;
						label$1171:;
						{
							FBSTRING TMP$1479$7;
							FBSTRING TMP$1480$7;
							FBSTRING TMP$1481$7;
							FBSTRING TMP$1482$7;
							__builtin_memset( &TMP$1482$7, 0, 12 );
							__builtin_memset( &TMP$1479$7, 0, 12 );
							FBSTRING* vr$524 = fb_StrConcat( &TMP$1479$7, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1480$7, 0, 12 );
							FBSTRING* vr$527 = fb_StrConcat( &TMP$1480$7, (void*)vr$524, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1481$7, 0, 12 );
							FBSTRING* vr$530 = fb_StrConcat( &TMP$1481$7, (void*)vr$527, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1482$7, -1, (void*)vr$530, -1, 0 );
							HWRITEASM64( &TMP$1482$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1482$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1169;
						label$1170:;
						if( TEMPODTYPE$1 == 11 ) goto label$1177;
						label$1178:;
						if( TEMPODTYPE$1 != 12 ) goto label$1176;
						label$1177:;
						{
							FBSTRING TMP$1483$7;
							FBSTRING TMP$1484$7;
							FBSTRING TMP$1485$7;
							FBSTRING TMP$1486$7;
							__builtin_memset( &TMP$1486$7, 0, 12 );
							__builtin_memset( &TMP$1483$7, 0, 12 );
							FBSTRING* vr$541 = fb_StrConcat( &TMP$1483$7, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1484$7, 0, 12 );
							FBSTRING* vr$544 = fb_StrConcat( &TMP$1484$7, (void*)vr$541, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1485$7, 0, 12 );
							FBSTRING* vr$547 = fb_StrConcat( &TMP$1485$7, (void*)vr$544, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1486$7, -1, (void*)vr$547, -1, 0 );
							HWRITEASM64( &TMP$1486$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1486$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1169;
						label$1176:;
						if( TEMPODTYPE$1 == 5 ) goto label$1180;
						label$1181:;
						if( TEMPODTYPE$1 != 6 ) goto label$1179;
						label$1180:;
						{
							FBSTRING TMP$1487$7;
							FBSTRING TMP$1488$7;
							FBSTRING TMP$1489$7;
							FBSTRING TMP$1490$7;
							__builtin_memset( &TMP$1490$7, 0, 12 );
							__builtin_memset( &TMP$1487$7, 0, 12 );
							FBSTRING* vr$558 = fb_StrConcat( &TMP$1487$7, (void*)"mov ", 5, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1488$7, 0, 12 );
							FBSTRING* vr$561 = fb_StrConcat( &TMP$1488$7, (void*)vr$558, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1489$7, 0, 12 );
							FBSTRING* vr$564 = fb_StrConcat( &TMP$1489$7, (void*)vr$561, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1490$7, -1, (void*)vr$564, -1, 0 );
							HWRITEASM64( &TMP$1490$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1490$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1169;
						label$1179:;
						if( TEMPODTYPE$1 == 2 ) goto label$1183;
						label$1184:;
						if( TEMPODTYPE$1 == 3 ) goto label$1183;
						label$1185:;
						if( TEMPODTYPE$1 == 1 ) goto label$1183;
						label$1186:;
						if( TEMPODTYPE$1 != 4 ) goto label$1182;
						label$1183:;
						{
							FBSTRING TMP$1491$7;
							FBSTRING TMP$1492$7;
							FBSTRING TMP$1493$7;
							FBSTRING TMP$1494$7;
							__builtin_memset( &TMP$1494$7, 0, 12 );
							__builtin_memset( &TMP$1491$7, 0, 12 );
							FBSTRING* vr$575 = fb_StrConcat( &TMP$1491$7, (void*)"mov ", 5, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$1492$7, 0, 12 );
							FBSTRING* vr$578 = fb_StrConcat( &TMP$1492$7, (void*)vr$575, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$1493$7, 0, 12 );
							FBSTRING* vr$581 = fb_StrConcat( &TMP$1493$7, (void*)vr$578, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$1494$7, -1, (void*)vr$581, -1, 0 );
							HWRITEASM64( &TMP$1494$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1494$7 );
							fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
						}
						goto label$1169;
						label$1182:;
						{
							FBSTRING TMP$1495$7;
							FBSTRING TMP$1499$7;
							FBSTRING TMP$1500$7;
							FBSTRING TMP$1501$7;
							__builtin_memset( &TMP$1495$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1495$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1495$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1495$7 );
							__builtin_memset( &TMP$1500$7, 0, 12 );
							FBSTRING* vr$593 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
							__builtin_memset( &TMP$1499$7, 0, 12 );
							FBSTRING* vr$596 = fb_StrConcat( &TMP$1499$7, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$593, -1 );
							fb_StrAssign( (void*)&TMP$1500$7, -1, (void*)vr$596, -1, 0 );
							HWRITEASM64( &TMP$1500$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1500$7 );
							__builtin_memset( &TMP$1501$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$1501$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$1501$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$1501$7 );
						}
						label$1187:;
						label$1169:;
					}
				}
				label$1167:;
			}
			label$1166:;
			label$1165:;
		}
		label$1161:;
	}
	label$1132:;
	if( *(int32*)V2$1 != 0 ) goto label$1189;
	{
		if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) >= 2147483648ll)) == 0 ) goto label$1191;
		{
			if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$1193;
			{
				FBSTRING TMP$1502$4;
				FBSTRING TMP$1503$4;
				__builtin_memset( &TMP$1503$4, 0, 12 );
				FBSTRING* vr$617 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1502$4, 0, 12 );
				FBSTRING* vr$620 = fb_StrConcat( &TMP$1502$4, (void*)"mov rax, ", 10, (void*)vr$617, -1 );
				fb_StrAssign( (void*)&TMP$1503$4, -1, (void*)vr$620, -1, 0 );
				HWRITEASM64( &TMP$1503$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1503$4 );
			}
			goto label$1192;
			label$1193:;
			{
				FBSTRING TMP$1505$4;
				FBSTRING TMP$1506$4;
				__builtin_memset( &TMP$1506$4, 0, 12 );
				FBSTRING* vr$626 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				__builtin_memset( &TMP$1505$4, 0, 12 );
				FBSTRING* vr$629 = fb_StrConcat( &TMP$1505$4, (void*)"mov eax, ", 10, (void*)vr$626, -1 );
				fb_StrAssign( (void*)&TMP$1506$4, -1, (void*)vr$629, -1, 0 );
				HWRITEASM64( &TMP$1506$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1506$4 );
			}
			label$1192:;
			fb_StrAssign( (void*)&OP2$1, -1, (void*)"rax", 4, 0 );
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1196;
				label$1197:;
				if( TEMPODTYPE$1 == 9 ) goto label$1196;
				label$1198:;
				if( TEMPODTYPE$1 == 13 ) goto label$1196;
				label$1199:;
				if( TEMPODTYPE$1 == 14 ) goto label$1196;
				label$1200:;
				if( TEMPODTYPE$1 == 10 ) goto label$1196;
				label$1201:;
				if( TEMPODTYPE$1 != 16 ) goto label$1195;
				label$1196:;
				{
				}
				goto label$1194;
				label$1195:;
				if( TEMPODTYPE$1 == 11 ) goto label$1203;
				label$1204:;
				if( TEMPODTYPE$1 == 12 ) goto label$1203;
				label$1205:;
				if( TEMPODTYPE$1 != 15 ) goto label$1202;
				label$1203:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"eax", 4, 0 );
				}
				goto label$1194;
				label$1202:;
				if( TEMPODTYPE$1 == 5 ) goto label$1207;
				label$1208:;
				if( TEMPODTYPE$1 != 6 ) goto label$1206;
				label$1207:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"ax", 3, 0 );
				}
				goto label$1194;
				label$1206:;
				if( TEMPODTYPE$1 == 2 ) goto label$1210;
				label$1211:;
				if( TEMPODTYPE$1 == 3 ) goto label$1210;
				label$1212:;
				if( TEMPODTYPE$1 == 1 ) goto label$1210;
				label$1213:;
				if( TEMPODTYPE$1 != 4 ) goto label$1209;
				label$1210:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"al", 3, 0 );
				}
				goto label$1194;
				label$1209:;
				{
					FBSTRING TMP$1507$5;
					FBSTRING TMP$1511$5;
					FBSTRING TMP$1512$5;
					FBSTRING TMP$1513$5;
					__builtin_memset( &TMP$1507$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1507$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1507$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1507$5 );
					__builtin_memset( &TMP$1512$5, 0, 12 );
					FBSTRING* vr$643 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1511$5, 0, 12 );
					FBSTRING* vr$646 = fb_StrConcat( &TMP$1511$5, (void*)"FOUND AN ERROR : BOP datatype not handled 0100 = ", 50, (void*)vr$643, -1 );
					fb_StrAssign( (void*)&TMP$1512$5, -1, (void*)vr$646, -1, 0 );
					HWRITEASM64( &TMP$1512$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1512$5 );
					__builtin_memset( &TMP$1513$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1513$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1513$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1513$5 );
				}
				label$1214:;
				label$1194:;
			}
		}
		label$1191:;
		label$1190:;
	}
	label$1189:;
	label$1188:;
	{
		uint32 TMP$1514$2;
		TMP$1514$2 = (uint32)OP$1;
		goto label$1216;
		label$1217:;
		{
			int32 vr$655 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$655 != 0 ) goto label$1219;
			{
				FBSTRING TMP$1516$4;
				FBSTRING TMP$1517$4;
				__builtin_memset( &TMP$1517$4, 0, 12 );
				__builtin_memset( &TMP$1516$4, 0, 12 );
				FBSTRING* vr$660 = fb_StrConcat( &TMP$1516$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1517$4, -1, (void*)vr$660, -1, 0 );
				HWRITEASM64( &TMP$1517$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1517$4 );
			}
			goto label$1218;
			label$1219:;
			int32 vr$665 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$665 != 0 ) goto label$1220;
			{
				FBSTRING TMP$1519$4;
				FBSTRING TMP$1520$4;
				__builtin_memset( &TMP$1520$4, 0, 12 );
				__builtin_memset( &TMP$1519$4, 0, 12 );
				FBSTRING* vr$670 = fb_StrConcat( &TMP$1519$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1520$4, -1, (void*)vr$670, -1, 0 );
				HWRITEASM64( &TMP$1520$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1520$4 );
			}
			goto label$1218;
			label$1220:;
			{
				FBSTRING TMP$1521$4;
				FBSTRING TMP$1522$4;
				FBSTRING TMP$1523$4;
				FBSTRING TMP$1524$4;
				__builtin_memset( &TMP$1524$4, 0, 12 );
				__builtin_memset( &TMP$1521$4, 0, 12 );
				FBSTRING* vr$679 = fb_StrConcat( &TMP$1521$4, (void*)"add ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1522$4, 0, 12 );
				FBSTRING* vr$682 = fb_StrConcat( &TMP$1522$4, (void*)vr$679, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1523$4, 0, 12 );
				FBSTRING* vr$685 = fb_StrConcat( &TMP$1523$4, (void*)vr$682, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1524$4, -1, (void*)vr$685, -1, 0 );
				HWRITEASM64( &TMP$1524$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1524$4 );
			}
			label$1218:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1222;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1222:;
			}
		}
		goto label$1215;
		label$1223:;
		{
			FBSTRING TMP$1526$3;
			FBSTRING TMP$1527$3;
			FBSTRING TMP$1528$3;
			FBSTRING TMP$1529$3;
			__builtin_memset( &TMP$1529$3, 0, 12 );
			__builtin_memset( &TMP$1526$3, 0, 12 );
			FBSTRING* vr$694 = fb_StrConcat( &TMP$1526$3, (void*)"and ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1527$3, 0, 12 );
			FBSTRING* vr$697 = fb_StrConcat( &TMP$1527$3, (void*)vr$694, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1528$3, 0, 12 );
			FBSTRING* vr$700 = fb_StrConcat( &TMP$1528$3, (void*)vr$697, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1529$3, -1, (void*)vr$700, -1, 0 );
			HWRITEASM64( &TMP$1529$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1529$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1225;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1225:;
			}
		}
		goto label$1215;
		label$1226:;
		{
			FBSTRING TMP$1530$3;
			FBSTRING TMP$1531$3;
			FBSTRING TMP$1532$3;
			FBSTRING TMP$1533$3;
			__builtin_memset( &TMP$1533$3, 0, 12 );
			__builtin_memset( &TMP$1530$3, 0, 12 );
			FBSTRING* vr$709 = fb_StrConcat( &TMP$1530$3, (void*)"or ", 4, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1531$3, 0, 12 );
			FBSTRING* vr$712 = fb_StrConcat( &TMP$1531$3, (void*)vr$709, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1532$3, 0, 12 );
			FBSTRING* vr$715 = fb_StrConcat( &TMP$1532$3, (void*)vr$712, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1533$3, -1, (void*)vr$715, -1, 0 );
			HWRITEASM64( &TMP$1533$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1533$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1228;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1228:;
			}
		}
		goto label$1215;
		label$1229:;
		{
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1231;
			{
				FBSTRING TMP$1561$4;
				FBSTRING TMP$1562$4;
				FBSTRING TMP$1563$4;
				FBSTRING TMP$1564$4;
				if( TEMPODTYPE$1 != 1 ) goto label$1233;
				{
					FBSTRING TMP$1535$5;
					FBSTRING TMP$1536$5;
					FBSTRING TMP$1537$5;
					__builtin_memset( &TMP$1537$5, 0, 12 );
					__builtin_memset( &TMP$1535$5, 0, 12 );
					FBSTRING* vr$723 = fb_StrConcat( &TMP$1535$5, (void*)"xor ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1536$5, 0, 12 );
					FBSTRING* vr$726 = fb_StrConcat( &TMP$1536$5, (void*)vr$723, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1537$5, -1, (void*)vr$726, -1, 0 );
					HWRITEASM64( &TMP$1537$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1537$5 );
				}
				goto label$1232;
				label$1233:;
				{
					FBSTRING TMP$1539$5;
					FBSTRING TMP$1540$5;
					__builtin_memset( &TMP$1540$5, 0, 12 );
					__builtin_memset( &TMP$1539$5, 0, 12 );
					FBSTRING* vr$734 = fb_StrConcat( &TMP$1539$5, (void*)"not ", 5, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1540$5, -1, (void*)vr$734, -1, 0 );
					HWRITEASM64( &TMP$1540$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1540$5 );
				}
				label$1232:;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1236;
					label$1237:;
					if( TEMPODTYPE$1 == 9 ) goto label$1236;
					label$1238:;
					if( TEMPODTYPE$1 == 13 ) goto label$1236;
					label$1239:;
					if( TEMPODTYPE$1 == 14 ) goto label$1236;
					label$1240:;
					if( TEMPODTYPE$1 != 10 ) goto label$1235;
					label$1236:;
					{
						FBSTRING TMP$1541$6;
						FBSTRING TMP$1542$6;
						FBSTRING TMP$1543$6;
						FBSTRING TMP$1544$6;
						__builtin_memset( &TMP$1544$6, 0, 12 );
						__builtin_memset( &TMP$1541$6, 0, 12 );
						FBSTRING* vr$742 = fb_StrConcat( &TMP$1541$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1542$6, 0, 12 );
						FBSTRING* vr$745 = fb_StrConcat( &TMP$1542$6, (void*)vr$742, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1543$6, 0, 12 );
						FBSTRING* vr$748 = fb_StrConcat( &TMP$1543$6, (void*)vr$745, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1544$6, -1, (void*)vr$748, -1, 0 );
						HWRITEASM64( &TMP$1544$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1544$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1234;
					label$1235:;
					if( TEMPODTYPE$1 == 11 ) goto label$1242;
					label$1243:;
					if( TEMPODTYPE$1 != 12 ) goto label$1241;
					label$1242:;
					{
						FBSTRING TMP$1545$6;
						FBSTRING TMP$1546$6;
						FBSTRING TMP$1547$6;
						FBSTRING TMP$1548$6;
						__builtin_memset( &TMP$1548$6, 0, 12 );
						__builtin_memset( &TMP$1545$6, 0, 12 );
						FBSTRING* vr$757 = fb_StrConcat( &TMP$1545$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1546$6, 0, 12 );
						FBSTRING* vr$760 = fb_StrConcat( &TMP$1546$6, (void*)vr$757, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1547$6, 0, 12 );
						FBSTRING* vr$763 = fb_StrConcat( &TMP$1547$6, (void*)vr$760, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1548$6, -1, (void*)vr$763, -1, 0 );
						HWRITEASM64( &TMP$1548$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1548$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1234;
					label$1241:;
					if( TEMPODTYPE$1 == 5 ) goto label$1245;
					label$1246:;
					if( TEMPODTYPE$1 != 6 ) goto label$1244;
					label$1245:;
					{
						FBSTRING TMP$1549$6;
						FBSTRING TMP$1550$6;
						FBSTRING TMP$1551$6;
						FBSTRING TMP$1552$6;
						__builtin_memset( &TMP$1552$6, 0, 12 );
						__builtin_memset( &TMP$1549$6, 0, 12 );
						FBSTRING* vr$772 = fb_StrConcat( &TMP$1549$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1550$6, 0, 12 );
						FBSTRING* vr$775 = fb_StrConcat( &TMP$1550$6, (void*)vr$772, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1551$6, 0, 12 );
						FBSTRING* vr$778 = fb_StrConcat( &TMP$1551$6, (void*)vr$775, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1552$6, -1, (void*)vr$778, -1, 0 );
						HWRITEASM64( &TMP$1552$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1552$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1234;
					label$1244:;
					if( TEMPODTYPE$1 == 2 ) goto label$1248;
					label$1249:;
					if( TEMPODTYPE$1 == 3 ) goto label$1248;
					label$1250:;
					if( TEMPODTYPE$1 == 1 ) goto label$1248;
					label$1251:;
					if( TEMPODTYPE$1 != 4 ) goto label$1247;
					label$1248:;
					{
						FBSTRING TMP$1553$6;
						FBSTRING TMP$1554$6;
						FBSTRING TMP$1555$6;
						FBSTRING TMP$1556$6;
						__builtin_memset( &TMP$1556$6, 0, 12 );
						__builtin_memset( &TMP$1553$6, 0, 12 );
						FBSTRING* vr$787 = fb_StrConcat( &TMP$1553$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1554$6, 0, 12 );
						FBSTRING* vr$790 = fb_StrConcat( &TMP$1554$6, (void*)vr$787, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1555$6, 0, 12 );
						FBSTRING* vr$793 = fb_StrConcat( &TMP$1555$6, (void*)vr$790, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$1556$6, -1, (void*)vr$793, -1, 0 );
						HWRITEASM64( &TMP$1556$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1556$6 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1234;
					label$1247:;
					{
						FBSTRING TMP$1557$6;
						FBSTRING TMP$1558$6;
						FBSTRING TMP$1559$6;
						FBSTRING TMP$1560$6;
						__builtin_memset( &TMP$1557$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1557$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1557$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1557$6 );
						__builtin_memset( &TMP$1559$6, 0, 12 );
						FBSTRING* vr$804 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1558$6, 0, 12 );
						FBSTRING* vr$807 = fb_StrConcat( &TMP$1558$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$804, -1 );
						fb_StrAssign( (void*)&TMP$1559$6, -1, (void*)vr$807, -1, 0 );
						HWRITEASM64( &TMP$1559$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1559$6 );
						__builtin_memset( &TMP$1560$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1560$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1560$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1560$6 );
					}
					label$1252:;
					label$1234:;
				}
				__builtin_memset( &TMP$1564$4, 0, 12 );
				__builtin_memset( &TMP$1561$4, 0, 12 );
				FBSTRING* vr$820 = fb_StrConcat( &TMP$1561$4, (void*)"or ", 4, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1562$4, 0, 12 );
				FBSTRING* vr$823 = fb_StrConcat( &TMP$1562$4, (void*)vr$820, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1563$4, 0, 12 );
				FBSTRING* vr$826 = fb_StrConcat( &TMP$1563$4, (void*)vr$823, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1564$4, -1, (void*)vr$826, -1, 0 );
				HWRITEASM64( &TMP$1564$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1564$4 );
			}
			goto label$1230;
			label$1231:;
			{
				FBSTRING TMP$1590$4;
				FBSTRING TMP$1591$4;
				FBSTRING TMP$1592$4;
				FBSTRING TMP$1593$4;
				FBSTRING TMP$1594$4;
				FBSTRING TMP$1595$4;
				FBSTRING TMP$1596$4;
				FBSTRING TMP$1597$4;
				{
					if( TEMPODTYPE$1 == 8 ) goto label$1255;
					label$1256:;
					if( TEMPODTYPE$1 == 9 ) goto label$1255;
					label$1257:;
					if( TEMPODTYPE$1 == 13 ) goto label$1255;
					label$1258:;
					if( TEMPODTYPE$1 == 14 ) goto label$1255;
					label$1259:;
					if( TEMPODTYPE$1 != 10 ) goto label$1254;
					label$1255:;
					{
						FBSTRING TMP$1565$6;
						FBSTRING TMP$1566$6;
						FBSTRING TMP$1567$6;
						FBSTRING TMP$1568$6;
						__builtin_memset( &TMP$1568$6, 0, 12 );
						__builtin_memset( &TMP$1565$6, 0, 12 );
						FBSTRING* vr$834 = fb_StrConcat( &TMP$1565$6, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
						__builtin_memset( &TMP$1566$6, 0, 12 );
						FBSTRING* vr$837 = fb_StrConcat( &TMP$1566$6, (void*)vr$834, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1567$6, 0, 12 );
						FBSTRING* vr$840 = fb_StrConcat( &TMP$1567$6, (void*)vr$837, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1568$6, -1, (void*)vr$840, -1, 0 );
						HWRITEASM64( &TMP$1568$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1568$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRQ$, 0, 0 );
					}
					goto label$1253;
					label$1254:;
					if( TEMPODTYPE$1 == 11 ) goto label$1261;
					label$1262:;
					if( TEMPODTYPE$1 != 12 ) goto label$1260;
					label$1261:;
					{
						FBSTRING TMP$1569$6;
						FBSTRING TMP$1570$6;
						FBSTRING TMP$1571$6;
						FBSTRING TMP$1572$6;
						__builtin_memset( &TMP$1572$6, 0, 12 );
						__builtin_memset( &TMP$1569$6, 0, 12 );
						FBSTRING* vr$849 = fb_StrConcat( &TMP$1569$6, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
						__builtin_memset( &TMP$1570$6, 0, 12 );
						FBSTRING* vr$852 = fb_StrConcat( &TMP$1570$6, (void*)vr$849, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1571$6, 0, 12 );
						FBSTRING* vr$855 = fb_StrConcat( &TMP$1571$6, (void*)vr$852, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1572$6, -1, (void*)vr$855, -1, 0 );
						HWRITEASM64( &TMP$1572$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1572$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRD$, 0, 0 );
					}
					goto label$1253;
					label$1260:;
					if( TEMPODTYPE$1 == 5 ) goto label$1264;
					label$1265:;
					if( TEMPODTYPE$1 != 6 ) goto label$1263;
					label$1264:;
					{
						FBSTRING TMP$1573$6;
						FBSTRING TMP$1574$6;
						FBSTRING TMP$1575$6;
						FBSTRING TMP$1576$6;
						__builtin_memset( &TMP$1576$6, 0, 12 );
						__builtin_memset( &TMP$1573$6, 0, 12 );
						FBSTRING* vr$864 = fb_StrConcat( &TMP$1573$6, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
						__builtin_memset( &TMP$1574$6, 0, 12 );
						FBSTRING* vr$867 = fb_StrConcat( &TMP$1574$6, (void*)vr$864, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1575$6, 0, 12 );
						FBSTRING* vr$870 = fb_StrConcat( &TMP$1575$6, (void*)vr$867, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1576$6, -1, (void*)vr$870, -1, 0 );
						HWRITEASM64( &TMP$1576$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1576$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRW$, 0, 0 );
					}
					goto label$1253;
					label$1263:;
					if( TEMPODTYPE$1 == 2 ) goto label$1267;
					label$1268:;
					if( TEMPODTYPE$1 == 3 ) goto label$1267;
					label$1269:;
					if( TEMPODTYPE$1 == 1 ) goto label$1267;
					label$1270:;
					if( TEMPODTYPE$1 != 4 ) goto label$1266;
					label$1267:;
					{
						FBSTRING TMP$1577$6;
						FBSTRING TMP$1578$6;
						FBSTRING TMP$1579$6;
						FBSTRING TMP$1580$6;
						__builtin_memset( &TMP$1580$6, 0, 12 );
						__builtin_memset( &TMP$1577$6, 0, 12 );
						FBSTRING* vr$879 = fb_StrConcat( &TMP$1577$6, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
						__builtin_memset( &TMP$1578$6, 0, 12 );
						FBSTRING* vr$882 = fb_StrConcat( &TMP$1578$6, (void*)vr$879, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1579$6, 0, 12 );
						FBSTRING* vr$885 = fb_StrConcat( &TMP$1579$6, (void*)vr$882, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$1580$6, -1, (void*)vr$885, -1, 0 );
						HWRITEASM64( &TMP$1580$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1580$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1, *(void**)REGSTRB$, 0, 0 );
					}
					goto label$1253;
					label$1266:;
					{
						FBSTRING TMP$1581$6;
						FBSTRING TMP$1582$6;
						FBSTRING TMP$1583$6;
						FBSTRING TMP$1584$6;
						__builtin_memset( &TMP$1581$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1581$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1581$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1581$6 );
						__builtin_memset( &TMP$1583$6, 0, 12 );
						FBSTRING* vr$896 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
						__builtin_memset( &TMP$1582$6, 0, 12 );
						FBSTRING* vr$899 = fb_StrConcat( &TMP$1582$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$896, -1 );
						fb_StrAssign( (void*)&TMP$1583$6, -1, (void*)vr$899, -1, 0 );
						HWRITEASM64( &TMP$1583$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1583$6 );
						__builtin_memset( &TMP$1584$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$1584$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$1584$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1584$6 );
					}
					label$1271:;
					label$1253:;
				}
				if( TEMPODTYPE$1 != 1 ) goto label$1273;
				{
					FBSTRING TMP$1585$5;
					FBSTRING TMP$1586$5;
					FBSTRING TMP$1587$5;
					__builtin_memset( &TMP$1587$5, 0, 12 );
					__builtin_memset( &TMP$1585$5, 0, 12 );
					FBSTRING* vr$911 = fb_StrConcat( &TMP$1585$5, (void*)"xor ", 5, (void*)&OP1BIS$1, -1 );
					__builtin_memset( &TMP$1586$5, 0, 12 );
					FBSTRING* vr$914 = fb_StrConcat( &TMP$1586$5, (void*)vr$911, -1, (void*)", 1", 4 );
					fb_StrAssign( (void*)&TMP$1587$5, -1, (void*)vr$914, -1, 0 );
					HWRITEASM64( &TMP$1587$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1587$5 );
				}
				goto label$1272;
				label$1273:;
				{
					FBSTRING TMP$1588$5;
					FBSTRING TMP$1589$5;
					__builtin_memset( &TMP$1589$5, 0, 12 );
					__builtin_memset( &TMP$1588$5, 0, 12 );
					FBSTRING* vr$922 = fb_StrConcat( &TMP$1588$5, (void*)"not ", 5, (void*)&OP1BIS$1, -1 );
					fb_StrAssign( (void*)&TMP$1589$5, -1, (void*)vr$922, -1, 0 );
					HWRITEASM64( &TMP$1589$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1589$5 );
				}
				label$1272:;
				__builtin_memset( &TMP$1593$4, 0, 12 );
				__builtin_memset( &TMP$1590$4, 0, 12 );
				FBSTRING* vr$931 = fb_StrConcat( &TMP$1590$4, (void*)"or ", 4, (void*)&OP1BIS$1, -1 );
				__builtin_memset( &TMP$1591$4, 0, 12 );
				FBSTRING* vr$934 = fb_StrConcat( &TMP$1591$4, (void*)vr$931, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1592$4, 0, 12 );
				FBSTRING* vr$937 = fb_StrConcat( &TMP$1592$4, (void*)vr$934, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1593$4, -1, (void*)vr$937, -1, 0 );
				HWRITEASM64( &TMP$1593$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1593$4 );
				__builtin_memset( &TMP$1597$4, 0, 12 );
				__builtin_memset( &TMP$1594$4, 0, 12 );
				FBSTRING* vr$946 = fb_StrConcat( &TMP$1594$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1595$4, 0, 12 );
				FBSTRING* vr$949 = fb_StrConcat( &TMP$1595$4, (void*)vr$946, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1596$4, 0, 12 );
				FBSTRING* vr$952 = fb_StrConcat( &TMP$1596$4, (void*)vr$949, -1, (void*)&OP1BIS$1, -1 );
				fb_StrAssign( (void*)&TMP$1597$4, -1, (void*)vr$952, -1, 0 );
				HWRITEASM64( &TMP$1597$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1597$4 );
			}
			label$1230:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1275;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1275:;
			}
		}
		goto label$1215;
		label$1276:;
		{
			FBSTRING TMP$1598$3;
			FBSTRING TMP$1599$3;
			FBSTRING TMP$1600$3;
			FBSTRING TMP$1601$3;
			__builtin_memset( &TMP$1601$3, 0, 12 );
			__builtin_memset( &TMP$1598$3, 0, 12 );
			FBSTRING* vr$961 = fb_StrConcat( &TMP$1598$3, (void*)"xor ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1599$3, 0, 12 );
			FBSTRING* vr$964 = fb_StrConcat( &TMP$1599$3, (void*)vr$961, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1600$3, 0, 12 );
			FBSTRING* vr$967 = fb_StrConcat( &TMP$1600$3, (void*)vr$964, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1601$3, -1, (void*)vr$967, -1, 0 );
			HWRITEASM64( &TMP$1601$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1601$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1278;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1278:;
			}
		}
		goto label$1215;
		label$1279:;
		{
			FBSTRING TMP$1622$3;
			FBSTRING TMP$1623$3;
			FBSTRING TMP$1624$3;
			FBSTRING TMP$1625$3;
			FBSTRING TMP$1631$3;
			FBSTRING TMP$1632$3;
			FBSTRING TMP$1633$3;
			FBSTRING TMP$1634$3;
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1282;
				label$1283:;
				if( TEMPODTYPE$1 == 9 ) goto label$1282;
				label$1284:;
				if( TEMPODTYPE$1 == 13 ) goto label$1282;
				label$1285:;
				if( TEMPODTYPE$1 == 14 ) goto label$1282;
				label$1286:;
				if( TEMPODTYPE$1 != 10 ) goto label$1281;
				label$1282:;
				{
					FBSTRING TMP$1602$5;
					FBSTRING TMP$1603$5;
					FBSTRING TMP$1604$5;
					FBSTRING TMP$1605$5;
					__builtin_memset( &TMP$1605$5, 0, 12 );
					__builtin_memset( &TMP$1602$5, 0, 12 );
					FBSTRING* vr$975 = fb_StrConcat( &TMP$1602$5, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
					__builtin_memset( &TMP$1603$5, 0, 12 );
					FBSTRING* vr$978 = fb_StrConcat( &TMP$1603$5, (void*)vr$975, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1604$5, 0, 12 );
					FBSTRING* vr$981 = fb_StrConcat( &TMP$1604$5, (void*)vr$978, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1605$5, -1, (void*)vr$981, -1, 0 );
					HWRITEASM64( &TMP$1605$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1605$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRQ$, 0, 0 );
				}
				goto label$1280;
				label$1281:;
				if( TEMPODTYPE$1 == 11 ) goto label$1288;
				label$1289:;
				if( TEMPODTYPE$1 != 12 ) goto label$1287;
				label$1288:;
				{
					FBSTRING TMP$1606$5;
					FBSTRING TMP$1607$5;
					FBSTRING TMP$1608$5;
					FBSTRING TMP$1609$5;
					__builtin_memset( &TMP$1609$5, 0, 12 );
					__builtin_memset( &TMP$1606$5, 0, 12 );
					FBSTRING* vr$990 = fb_StrConcat( &TMP$1606$5, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
					__builtin_memset( &TMP$1607$5, 0, 12 );
					FBSTRING* vr$993 = fb_StrConcat( &TMP$1607$5, (void*)vr$990, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1608$5, 0, 12 );
					FBSTRING* vr$996 = fb_StrConcat( &TMP$1608$5, (void*)vr$993, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1609$5, -1, (void*)vr$996, -1, 0 );
					HWRITEASM64( &TMP$1609$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1609$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRD$, 0, 0 );
				}
				goto label$1280;
				label$1287:;
				if( TEMPODTYPE$1 == 5 ) goto label$1291;
				label$1292:;
				if( TEMPODTYPE$1 != 6 ) goto label$1290;
				label$1291:;
				{
					FBSTRING TMP$1610$5;
					FBSTRING TMP$1611$5;
					FBSTRING TMP$1612$5;
					FBSTRING TMP$1613$5;
					__builtin_memset( &TMP$1613$5, 0, 12 );
					__builtin_memset( &TMP$1610$5, 0, 12 );
					FBSTRING* vr$1005 = fb_StrConcat( &TMP$1610$5, (void*)"mov ", 5, *(void**)REGSTRW$, 0 );
					__builtin_memset( &TMP$1611$5, 0, 12 );
					FBSTRING* vr$1008 = fb_StrConcat( &TMP$1611$5, (void*)vr$1005, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1612$5, 0, 12 );
					FBSTRING* vr$1011 = fb_StrConcat( &TMP$1612$5, (void*)vr$1008, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1613$5, -1, (void*)vr$1011, -1, 0 );
					HWRITEASM64( &TMP$1613$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1613$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRW$, 0, 0 );
				}
				goto label$1280;
				label$1290:;
				if( TEMPODTYPE$1 == 2 ) goto label$1294;
				label$1295:;
				if( TEMPODTYPE$1 == 3 ) goto label$1294;
				label$1296:;
				if( TEMPODTYPE$1 == 1 ) goto label$1294;
				label$1297:;
				if( TEMPODTYPE$1 != 4 ) goto label$1293;
				label$1294:;
				{
					FBSTRING TMP$1614$5;
					FBSTRING TMP$1615$5;
					FBSTRING TMP$1616$5;
					FBSTRING TMP$1617$5;
					__builtin_memset( &TMP$1617$5, 0, 12 );
					__builtin_memset( &TMP$1614$5, 0, 12 );
					FBSTRING* vr$1020 = fb_StrConcat( &TMP$1614$5, (void*)"mov ", 5, *(void**)REGSTRB$, 0 );
					__builtin_memset( &TMP$1615$5, 0, 12 );
					FBSTRING* vr$1023 = fb_StrConcat( &TMP$1615$5, (void*)vr$1020, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1616$5, 0, 12 );
					FBSTRING* vr$1026 = fb_StrConcat( &TMP$1616$5, (void*)vr$1023, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1617$5, -1, (void*)vr$1026, -1, 0 );
					HWRITEASM64( &TMP$1617$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1617$5 );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)REGSTRB$, 0, 0 );
				}
				goto label$1280;
				label$1293:;
				{
					FBSTRING TMP$1618$5;
					FBSTRING TMP$1619$5;
					FBSTRING TMP$1620$5;
					FBSTRING TMP$1621$5;
					__builtin_memset( &TMP$1618$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1618$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1618$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1618$5 );
					__builtin_memset( &TMP$1620$5, 0, 12 );
					FBSTRING* vr$1037 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1619$5, 0, 12 );
					FBSTRING* vr$1040 = fb_StrConcat( &TMP$1619$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49, (void*)vr$1037, -1 );
					fb_StrAssign( (void*)&TMP$1620$5, -1, (void*)vr$1040, -1, 0 );
					HWRITEASM64( &TMP$1620$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1620$5 );
					__builtin_memset( &TMP$1621$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1621$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1621$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1621$5 );
				}
				label$1298:;
				label$1280:;
			}
			__builtin_memset( &TMP$1625$3, 0, 12 );
			__builtin_memset( &TMP$1622$3, 0, 12 );
			FBSTRING* vr$1053 = fb_StrConcat( &TMP$1622$3, (void*)"xor ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$1623$3, 0, 12 );
			FBSTRING* vr$1056 = fb_StrConcat( &TMP$1623$3, (void*)vr$1053, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1624$3, 0, 12 );
			FBSTRING* vr$1059 = fb_StrConcat( &TMP$1624$3, (void*)vr$1056, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1625$3, -1, (void*)vr$1059, -1, 0 );
			HWRITEASM64( &TMP$1625$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1625$3 );
			if( TEMPODTYPE$1 != 1 ) goto label$1300;
			{
				FBSTRING TMP$1626$4;
				FBSTRING TMP$1627$4;
				FBSTRING TMP$1628$4;
				__builtin_memset( &TMP$1628$4, 0, 12 );
				__builtin_memset( &TMP$1626$4, 0, 12 );
				FBSTRING* vr$1067 = fb_StrConcat( &TMP$1626$4, (void*)"xor ", 5, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$1627$4, 0, 12 );
				FBSTRING* vr$1070 = fb_StrConcat( &TMP$1627$4, (void*)vr$1067, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$1628$4, -1, (void*)vr$1070, -1, 0 );
				HWRITEASM64( &TMP$1628$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1628$4 );
			}
			goto label$1299;
			label$1300:;
			{
				FBSTRING TMP$1629$4;
				FBSTRING TMP$1630$4;
				__builtin_memset( &TMP$1630$4, 0, 12 );
				__builtin_memset( &TMP$1629$4, 0, 12 );
				FBSTRING* vr$1078 = fb_StrConcat( &TMP$1629$4, (void*)"not ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1630$4, -1, (void*)vr$1078, -1, 0 );
				HWRITEASM64( &TMP$1630$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1630$4 );
			}
			label$1299:;
			__builtin_memset( &TMP$1634$3, 0, 12 );
			__builtin_memset( &TMP$1631$3, 0, 12 );
			FBSTRING* vr$1087 = fb_StrConcat( &TMP$1631$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1632$3, 0, 12 );
			FBSTRING* vr$1090 = fb_StrConcat( &TMP$1632$3, (void*)vr$1087, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1633$3, 0, 12 );
			FBSTRING* vr$1093 = fb_StrConcat( &TMP$1633$3, (void*)vr$1090, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1634$3, -1, (void*)vr$1093, -1, 0 );
			HWRITEASM64( &TMP$1634$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1634$3 );
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1302;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1302:;
			}
		}
		goto label$1215;
		label$1303:;
		{
			int32 vr$1098 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"1", 2 );
			if( vr$1098 != 0 ) goto label$1305;
			{
				FBSTRING TMP$1635$4;
				FBSTRING TMP$1636$4;
				__builtin_memset( &TMP$1636$4, 0, 12 );
				__builtin_memset( &TMP$1635$4, 0, 12 );
				FBSTRING* vr$1103 = fb_StrConcat( &TMP$1635$4, (void*)"dec ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1636$4, -1, (void*)vr$1103, -1, 0 );
				HWRITEASM64( &TMP$1636$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1636$4 );
			}
			goto label$1304;
			label$1305:;
			int32 vr$1108 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"-1", 3 );
			if( vr$1108 != 0 ) goto label$1306;
			{
				FBSTRING TMP$1637$4;
				FBSTRING TMP$1638$4;
				__builtin_memset( &TMP$1638$4, 0, 12 );
				__builtin_memset( &TMP$1637$4, 0, 12 );
				FBSTRING* vr$1113 = fb_StrConcat( &TMP$1637$4, (void*)"inc ", 5, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1638$4, -1, (void*)vr$1113, -1, 0 );
				HWRITEASM64( &TMP$1638$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1638$4 );
			}
			goto label$1304;
			label$1306:;
			{
				FBSTRING TMP$1640$4;
				FBSTRING TMP$1641$4;
				FBSTRING TMP$1642$4;
				FBSTRING TMP$1643$4;
				__builtin_memset( &TMP$1643$4, 0, 12 );
				__builtin_memset( &TMP$1640$4, 0, 12 );
				FBSTRING* vr$1122 = fb_StrConcat( &TMP$1640$4, (void*)"sub ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1641$4, 0, 12 );
				FBSTRING* vr$1125 = fb_StrConcat( &TMP$1641$4, (void*)vr$1122, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1642$4, 0, 12 );
				FBSTRING* vr$1128 = fb_StrConcat( &TMP$1642$4, (void*)vr$1125, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1643$4, -1, (void*)vr$1128, -1, 0 );
				HWRITEASM64( &TMP$1643$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1643$4 );
			}
			label$1304:;
			if( VR$1 == (struct $6IRVREG*)0u ) goto label$1308;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1308:;
			}
		}
		goto label$1215;
		label$1309:;
		{
			FBSTRING TMP$1645$3;
			FBSTRING TMP$1646$3;
			FBSTRING TMP$1647$3;
			FBSTRING TMP$1648$3;
			__builtin_memset( &TMP$1648$3, 0, 12 );
			__builtin_memset( &TMP$1645$3, 0, 12 );
			FBSTRING* vr$1137 = fb_StrConcat( &TMP$1645$3, (void*)"imul ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1646$3, 0, 12 );
			FBSTRING* vr$1140 = fb_StrConcat( &TMP$1646$3, (void*)vr$1137, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1647$3, 0, 12 );
			FBSTRING* vr$1143 = fb_StrConcat( &TMP$1647$3, (void*)vr$1140, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1648$3, -1, (void*)vr$1143, -1, 0 );
			HWRITEASM64( &TMP$1648$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1648$3 );
			int32 vr$1148 = fb_StrCompare( (void*)&OP1PREV$1, -1, (void*)"", 1 );
			if( vr$1148 == 0 ) goto label$1311;
			{
				FBSTRING TMP$1649$4;
				FBSTRING TMP$1650$4;
				FBSTRING TMP$1651$4;
				FBSTRING TMP$1652$4;
				__builtin_memset( &TMP$1652$4, 0, 12 );
				__builtin_memset( &TMP$1649$4, 0, 12 );
				FBSTRING* vr$1154 = fb_StrConcat( &TMP$1649$4, (void*)"mov ", 5, (void*)&OP1PREV$1, -1 );
				__builtin_memset( &TMP$1650$4, 0, 12 );
				FBSTRING* vr$1157 = fb_StrConcat( &TMP$1650$4, (void*)vr$1154, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1651$4, 0, 12 );
				FBSTRING* vr$1160 = fb_StrConcat( &TMP$1651$4, (void*)vr$1157, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$1652$4, -1, (void*)vr$1160, -1, 0 );
				HWRITEASM64( &TMP$1652$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1652$4 );
				label$1311:;
			}
		}
		goto label$1215;
		label$1312:;
		{
			int32 TMP$1664$3;
			FBSTRING TMP$1684$3;
			FBSTRING TMP$1685$3;
			FBSTRING TMP$1686$3;
			FBSTRING TMP$1687$3;
			if( (((-(*(int32*)((uint8*)V1$1 + 4) == 9) | -(*(int32*)((uint8*)V1$1 + 4) == 14)) | -(*(int32*)((uint8*)V2$1 + 4) == 9)) | -(*(int32*)((uint8*)V2$1 + 4) == 14)) == 0 ) goto label$1314;
			{
				{
					uint32 TMP$1653$5;
					TMP$1653$5 = (uint32)OP$1;
					goto label$1316;
					label$1317:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"be", 3, 0 );
					}
					goto label$1315;
					label$1318:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"b", 2, 0 );
					}
					goto label$1315;
					label$1319:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1315;
					label$1320:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"nb", 3, 0 );
					}
					goto label$1315;
					label$1321:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"a", 2, 0 );
					}
					goto label$1315;
					label$1322:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1315;
					label$1316:;
					static const void* tmp$3858[6] = {
						&&label$1322,
						&&label$1321,
						&&label$1318,
						&&label$1319,
						&&label$1320,
						&&label$1317,
					};
					if( (TMP$1653$5 - 45u) > 5u ) goto label$1315;
					goto *tmp$3858[TMP$1653$5 - 45u];
					label$1315:;
				}
			}
			goto label$1313;
			label$1314:;
			{
				{
					uint32 TMP$1659$5;
					TMP$1659$5 = (uint32)OP$1;
					goto label$1324;
					label$1325:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"le", 3, 0 );
					}
					goto label$1323;
					label$1326:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"l", 2, 0 );
					}
					goto label$1323;
					label$1327:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ne", 3, 0 );
					}
					goto label$1323;
					label$1328:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"ge", 3, 0 );
					}
					goto label$1323;
					label$1329:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"g", 2, 0 );
					}
					goto label$1323;
					label$1330:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1, (void*)"e", 2, 0 );
					}
					goto label$1323;
					label$1324:;
					static const void* tmp$3859[6] = {
						&&label$1330,
						&&label$1329,
						&&label$1326,
						&&label$1327,
						&&label$1328,
						&&label$1325,
					};
					if( (TMP$1659$5 - 45u) > 5u ) goto label$1323;
					goto *tmp$3859[TMP$1659$5 - 45u];
					label$1323:;
				}
			}
			label$1313:;
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$1331;
			int32 vr$1187 = FBGETOPTION( 0 );
			TMP$1664$3 = -(vr$1187 == 2);
			goto label$3000;
			label$1331:;
			TMP$1664$3 = 0;
			label$3000:;
			if( TMP$1664$3 == 0 ) goto label$1333;
			{
				int32 TMP$1665$4;
				int32 TMP$1678$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1334;
				TMP$1665$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3001;
				label$1334:;
				TMP$1665$4 = 0;
				label$3001:;
				if( TMP$1665$4 == 0 ) goto label$1336;
				{
					FBSTRING TMP$1667$5;
					FBSTRING TMP$1668$5;
					FBSTRING TMP$1669$5;
					FBSTRING TMP$1671$5;
					int32 TMP$1672$5;
					__builtin_memset( &TMP$1669$5, 0, 12 );
					uint8* vr$1196 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$1667$5, 0, 12 );
					FBSTRING* vr$1199 = fb_StrConcat( &TMP$1667$5, (void*)"mov rax, ", 10, (void*)vr$1196, 0 );
					__builtin_memset( &TMP$1668$5, 0, 12 );
					FBSTRING* vr$1202 = fb_StrConcat( &TMP$1668$5, (void*)vr$1199, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$1669$5, -1, (void*)vr$1202, -1, 0 );
					HWRITEASM64( &TMP$1669$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1669$5 );
					__builtin_memset( &TMP$1671$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1671$5, -1, (void*)"mov rax, [rax]", 15, 0 );
					HWRITEASM64( &TMP$1671$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1671$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"rax", 4, 0 );
					if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1337;
					TMP$1672$5 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
					goto label$3002;
					label$1337:;
					TMP$1672$5 = 0;
					label$3002:;
					if( TMP$1672$5 == 0 ) goto label$1339;
					{
						FBSTRING TMP$1673$6;
						FBSTRING TMP$1674$6;
						FBSTRING TMP$1675$6;
						FBSTRING TMP$1676$6;
						FBSTRING TMP$1677$6;
						int32 vr$1216 = REG_FINDFREE( 999999, -1 );
						TEMPO$1 = vr$1216;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
						*(int32*)((uint8*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$1677$6, 0, 12 );
						uint8* vr$1222 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$1673$6, 0, 12 );
						FBSTRING* vr$1226 = fb_StrConcat( &TMP$1673$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$1674$6, 0, 12 );
						FBSTRING* vr$1229 = fb_StrConcat( &TMP$1674$6, (void*)vr$1226, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1675$6, 0, 12 );
						FBSTRING* vr$1232 = fb_StrConcat( &TMP$1675$6, (void*)vr$1229, -1, (void*)vr$1222, 0 );
						__builtin_memset( &TMP$1676$6, 0, 12 );
						FBSTRING* vr$1235 = fb_StrConcat( &TMP$1676$6, (void*)vr$1232, -1, (void*)"@GOTPCREL[rip]", 15 );
						fb_StrAssign( (void*)&TMP$1677$6, -1, (void*)vr$1235, -1, 0 );
						HWRITEASM64( &TMP$1677$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1677$6 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)"[", 2, 0 );
						fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
						fb_StrConcatAssign( (void*)&OP2$1, -1, (void*)"]", 2, 0 );
					}
					label$1339:;
					label$1338:;
				}
				goto label$1335;
				label$1336:;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1341;
				TMP$1678$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
				goto label$3003;
				label$1341:;
				TMP$1678$4 = 0;
				label$3003:;
				if( TMP$1678$4 == 0 ) goto label$1340;
				{
					FBSTRING TMP$1679$5;
					FBSTRING TMP$1680$5;
					FBSTRING TMP$1681$5;
					FBSTRING TMP$1682$5;
					__builtin_memset( &TMP$1681$5, 0, 12 );
					uint8* vr$1250 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$1679$5, 0, 12 );
					FBSTRING* vr$1253 = fb_StrConcat( &TMP$1679$5, (void*)"mov rax, ", 10, (void*)vr$1250, 0 );
					__builtin_memset( &TMP$1680$5, 0, 12 );
					FBSTRING* vr$1256 = fb_StrConcat( &TMP$1680$5, (void*)vr$1253, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$1681$5, -1, (void*)vr$1256, -1, 0 );
					HWRITEASM64( &TMP$1681$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1681$5 );
					__builtin_memset( &TMP$1682$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1682$5, -1, (void*)"mov rax, [rax]", 15, 0 );
					HWRITEASM64( &TMP$1682$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1682$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"rax", 4, 0 );
				}
				label$1340:;
				label$1335:;
			}
			label$1333:;
			label$1332:;
			__builtin_memset( &TMP$1687$3, 0, 12 );
			__builtin_memset( &TMP$1684$3, 0, 12 );
			FBSTRING* vr$1270 = fb_StrConcat( &TMP$1684$3, (void*)"cmp ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1685$3, 0, 12 );
			FBSTRING* vr$1273 = fb_StrConcat( &TMP$1685$3, (void*)vr$1270, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1686$3, 0, 12 );
			FBSTRING* vr$1276 = fb_StrConcat( &TMP$1686$3, (void*)vr$1273, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$1687$3, -1, (void*)vr$1276, -1, 0 );
			HWRITEASM64( &TMP$1687$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1687$3 );
			if( LABEL$1 != (struct $8FBSYMBOL*)0u ) goto label$1343;
			{
				FBSTRING TMP$1690$4;
				FBSTRING TMP$1691$4;
				FBSTRING TMP$1692$4;
				FBSTRING TMP$1694$4;
				FBSTRING TMP$1695$4;
				FBSTRING TMP$1696$4;
				__builtin_memset( &TMP$1692$4, 0, 12 );
				__builtin_memset( &TMP$1690$4, 0, 12 );
				FBSTRING* vr$1284 = fb_StrConcat( &TMP$1690$4, (void*)"set", 4, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1691$4, 0, 12 );
				FBSTRING* vr$1287 = fb_StrConcat( &TMP$1691$4, (void*)vr$1284, -1, (void*)" al", 4 );
				fb_StrAssign( (void*)&TMP$1692$4, -1, (void*)vr$1287, -1, 0 );
				HWRITEASM64( &TMP$1692$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1692$4 );
				__builtin_memset( &TMP$1696$4, 0, 12 );
				__builtin_memset( &TMP$1694$4, 0, 12 );
				FBSTRING* vr$1295 = fb_StrConcat( &TMP$1694$4, (void*)"movzx ", 7, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1695$4, 0, 12 );
				FBSTRING* vr$1298 = fb_StrConcat( &TMP$1695$4, (void*)vr$1295, -1, (void*)", al", 5 );
				fb_StrAssign( (void*)&TMP$1696$4, -1, (void*)vr$1298, -1, 0 );
				HWRITEASM64( &TMP$1696$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1696$4 );
				if( TEMPODTYPE$1 == 1 ) goto label$1345;
				{
					FBSTRING TMP$1698$5;
					FBSTRING TMP$1699$5;
					__builtin_memset( &TMP$1699$5, 0, 12 );
					__builtin_memset( &TMP$1698$5, 0, 12 );
					FBSTRING* vr$1306 = fb_StrConcat( &TMP$1698$5, (void*)"neg ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					fb_StrAssign( (void*)&TMP$1699$5, -1, (void*)vr$1306, -1, 0 );
					HWRITEASM64( &TMP$1699$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1699$5 );
				}
				label$1345:;
				label$1344:;
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1342;
			label$1343:;
			{
				FBSTRING TMP$1701$4;
				FBSTRING TMP$1702$4;
				FBSTRING TMP$1703$4;
				FBSTRING TMP$1704$4;
				__builtin_memset( &TMP$1704$4, 0, 12 );
				uint8* vr$1311 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1701$4, 0, 12 );
				FBSTRING* vr$1315 = fb_StrConcat( &TMP$1701$4, (void*)"j", 2, (void*)&SUFFIX$1, -1 );
				__builtin_memset( &TMP$1702$4, 0, 12 );
				FBSTRING* vr$1318 = fb_StrConcat( &TMP$1702$4, (void*)vr$1315, -1, (void*)" ", 2 );
				__builtin_memset( &TMP$1703$4, 0, 12 );
				FBSTRING* vr$1321 = fb_StrConcat( &TMP$1703$4, (void*)vr$1318, -1, (void*)vr$1311, 0 );
				fb_StrAssign( (void*)&TMP$1704$4, -1, (void*)vr$1321, -1, 0 );
				HWRITEASM64( &TMP$1704$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1704$4 );
				REG_MARK( LABEL$1 );
			}
			label$1342:;
		}
		goto label$1215;
		label$1346:;
		{
			if( *(int32*)V2$1 == 0 ) goto label$1348;
			{
				int32 vr$1327 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + 8), 0 );
				if( vr$1327 == 0 ) goto label$1350;
				{
					FBSTRING TMP$1710$5;
					FBSTRING TMP$1711$5;
					if( *(int32*)((uint8*)REGHANDLE$ + 8) == -2 ) goto label$1352;
					{
						FBSTRING TMP$1705$6;
						FBSTRING TMP$1706$6;
						FBSTRING TMP$1707$6;
						FBSTRING TMP$1708$6;
						TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 8);
						REG_FINDFREE( TEMPO$1, -1 );
						*(int32*)((uint8*)REGHANDLE$ + 8) = -2;
						__builtin_memset( &TMP$1708$6, 0, 12 );
						int32 vr$1329 = REG_FINDREAL( TEMPO$1 );
						__builtin_memset( &TMP$1705$6, 0, 12 );
						FBSTRING* vr$1333 = fb_StrConcat( &TMP$1705$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$1329 << (2 & 31))), 0 );
						__builtin_memset( &TMP$1706$6, 0, 12 );
						FBSTRING* vr$1336 = fb_StrConcat( &TMP$1706$6, (void*)vr$1333, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$1707$6, 0, 12 );
						FBSTRING* vr$1339 = fb_StrConcat( &TMP$1707$6, (void*)vr$1336, -1, *(void**)((uint8*)REGSTRQ$ + 8), 0 );
						fb_StrAssign( (void*)&TMP$1708$6, -1, (void*)vr$1339, -1, 0 );
						HWRITEASM64( &TMP$1708$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$1708$6 );
						if( VRREG$1 != 2 ) goto label$1354;
						{
							int32 vr$1343 = REG_FINDREAL( TEMPO$1 );
							VRREG$1 = vr$1343;
							label$1354:;
						}
					}
					goto label$1351;
					label$1352:;
					{
						*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | 4;
					}
					label$1351:;
					__builtin_memset( &TMP$1711$5, 0, 12 );
					__builtin_memset( &TMP$1710$5, 0, 12 );
					FBSTRING* vr$1349 = fb_StrConcat( &TMP$1710$5, (void*)"mov rcx, ", 10, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1711$5, -1, (void*)vr$1349, -1, 0 );
					HWRITEASM64( &TMP$1711$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1711$5 );
				}
				label$1350:;
				label$1349:;
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"cl", 3, 0 );
			}
			label$1348:;
			label$1347:;
			if( OP$1 != 41 ) goto label$1356;
			{
				FBSTRING TMP$1713$4;
				FBSTRING TMP$1714$4;
				FBSTRING TMP$1715$4;
				FBSTRING TMP$1716$4;
				__builtin_memset( &TMP$1716$4, 0, 12 );
				__builtin_memset( &TMP$1713$4, 0, 12 );
				FBSTRING* vr$1359 = fb_StrConcat( &TMP$1713$4, (void*)"shl ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1714$4, 0, 12 );
				FBSTRING* vr$1362 = fb_StrConcat( &TMP$1714$4, (void*)vr$1359, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1715$4, 0, 12 );
				FBSTRING* vr$1365 = fb_StrConcat( &TMP$1715$4, (void*)vr$1362, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1716$4, -1, (void*)vr$1365, -1, 0 );
				HWRITEASM64( &TMP$1716$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1716$4 );
			}
			goto label$1355;
			label$1356:;
			{
				if( (-(TEMPODTYPE$1 == 8) | -(TEMPODTYPE$1 == 13)) == 0 ) goto label$1358;
				{
					FBSTRING TMP$1718$5;
					FBSTRING TMP$1719$5;
					FBSTRING TMP$1720$5;
					FBSTRING TMP$1721$5;
					__builtin_memset( &TMP$1721$5, 0, 12 );
					__builtin_memset( &TMP$1718$5, 0, 12 );
					FBSTRING* vr$1377 = fb_StrConcat( &TMP$1718$5, (void*)"sar ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1719$5, 0, 12 );
					FBSTRING* vr$1380 = fb_StrConcat( &TMP$1719$5, (void*)vr$1377, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1720$5, 0, 12 );
					FBSTRING* vr$1383 = fb_StrConcat( &TMP$1720$5, (void*)vr$1380, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1721$5, -1, (void*)vr$1383, -1, 0 );
					HWRITEASM64( &TMP$1721$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1721$5 );
				}
				goto label$1357;
				label$1358:;
				{
					FBSTRING TMP$1722$5;
					FBSTRING TMP$1723$5;
					FBSTRING TMP$1724$5;
					FBSTRING TMP$1725$5;
					__builtin_memset( &TMP$1725$5, 0, 12 );
					__builtin_memset( &TMP$1722$5, 0, 12 );
					FBSTRING* vr$1392 = fb_StrConcat( &TMP$1722$5, (void*)"shr ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$1723$5, 0, 12 );
					FBSTRING* vr$1395 = fb_StrConcat( &TMP$1723$5, (void*)vr$1392, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1724$5, 0, 12 );
					FBSTRING* vr$1398 = fb_StrConcat( &TMP$1724$5, (void*)vr$1395, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$1725$5, -1, (void*)vr$1398, -1, 0 );
					HWRITEASM64( &TMP$1725$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1725$5 );
				}
				label$1357:;
			}
			label$1355:;
		}
		goto label$1215;
		label$1359:;
		{
			FBSTRING TMP$1734$3;
			FBSTRING TMP$1735$3;
			if( *(int32*)((uint8*)REGHANDLE$ + 12) == -2 ) goto label$1361;
			{
				int32 vr$1403 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
				if( vr$1403 == 0 ) goto label$1363;
				{
					FBSTRING TMP$1726$5;
					FBSTRING TMP$1727$5;
					FBSTRING TMP$1728$5;
					FBSTRING TMP$1729$5;
					TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((uint8*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1729$5, 0, 12 );
					int32 vr$1405 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1726$5, 0, 12 );
					FBSTRING* vr$1409 = fb_StrConcat( &TMP$1726$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$1405 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1727$5, 0, 12 );
					FBSTRING* vr$1412 = fb_StrConcat( &TMP$1727$5, (void*)vr$1409, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1728$5, 0, 12 );
					FBSTRING* vr$1415 = fb_StrConcat( &TMP$1728$5, (void*)vr$1412, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1729$5, -1, (void*)vr$1415, -1, 0 );
					HWRITEASM64( &TMP$1729$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1729$5 );
					int32 vr$1420 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
					if( vr$1420 != 0 ) goto label$1365;
					{
						int32 vr$1421 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$1421 << (2 & 31))), 0, 0 );
					}
					label$1365:;
					label$1364:;
					if( VRREG$1 != 3 ) goto label$1367;
					{
						int32 vr$1424 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1424;
						label$1367:;
					}
				}
				label$1363:;
				label$1362:;
			}
			goto label$1360;
			label$1361:;
			{
				*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | 8;
			}
			label$1360:;
			if( *(int32*)V2$1 != 0 ) goto label$1369;
			{
				FBSTRING TMP$1730$4;
				FBSTRING TMP$1731$4;
				FBSTRING TMP$1732$4;
				FBSTRING TMP$1733$4;
				if( *(int32*)((uint8*)REGHANDLE$ + 12) != -2 ) goto label$1371;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12) = -3;
					label$1371:;
				}
				uint8* vr$1427 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1427, 0, 0 );
				if( *(int32*)((uint8*)REGHANDLE$ + 12) != -3 ) goto label$1373;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12) = -2;
					label$1373:;
				}
				__builtin_memset( &TMP$1733$4, 0, 12 );
				__builtin_memset( &TMP$1730$4, 0, 12 );
				FBSTRING* vr$1434 = fb_StrConcat( &TMP$1730$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1731$4, 0, 12 );
				FBSTRING* vr$1437 = fb_StrConcat( &TMP$1731$4, (void*)vr$1434, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1732$4, 0, 12 );
				FBSTRING* vr$1440 = fb_StrConcat( &TMP$1732$4, (void*)vr$1437, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1733$4, -1, (void*)vr$1440, -1, 0 );
				HWRITEASM64( &TMP$1733$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1733$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1369:;
			label$1368:;
			__builtin_memset( &TMP$1735$3, 0, 12 );
			__builtin_memset( &TMP$1734$3, 0, 12 );
			FBSTRING* vr$1450 = fb_StrConcat( &TMP$1734$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1735$3, -1, (void*)vr$1450, -1, 0 );
			HWRITEASM64( &TMP$1735$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1735$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1375;
			{
				TEMPO2DTYPE$1 = 8;
				label$1375:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1377;
			{
				FBSTRING TMP$1737$4;
				FBSTRING TMP$1739$4;
				FBSTRING TMP$1740$4;
				__builtin_memset( &TMP$1737$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1737$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1737$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1737$4 );
				__builtin_memset( &TMP$1740$4, 0, 12 );
				__builtin_memset( &TMP$1739$4, 0, 12 );
				FBSTRING* vr$1471 = fb_StrConcat( &TMP$1739$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1740$4, -1, (void*)vr$1471, -1, 0 );
				HWRITEASM64( &TMP$1740$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1740$4 );
			}
			goto label$1376;
			label$1377:;
			{
				FBSTRING TMP$1742$4;
				FBSTRING TMP$1744$4;
				FBSTRING TMP$1745$4;
				__builtin_memset( &TMP$1742$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1742$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1742$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1742$4 );
				__builtin_memset( &TMP$1745$4, 0, 12 );
				__builtin_memset( &TMP$1744$4, 0, 12 );
				FBSTRING* vr$1483 = fb_StrConcat( &TMP$1744$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1745$4, -1, (void*)vr$1483, -1, 0 );
				HWRITEASM64( &TMP$1745$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1745$4 );
			}
			label$1376:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1379;
			{
				FBSTRING TMP$1746$4;
				FBSTRING TMP$1747$4;
				FBSTRING TMP$1748$4;
				__builtin_memset( &TMP$1748$4, 0, 12 );
				__builtin_memset( &TMP$1746$4, 0, 12 );
				FBSTRING* vr$1491 = fb_StrConcat( &TMP$1746$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1747$4, 0, 12 );
				FBSTRING* vr$1494 = fb_StrConcat( &TMP$1747$4, (void*)vr$1491, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1748$4, -1, (void*)vr$1494, -1, 0 );
				HWRITEASM64( &TMP$1748$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1748$4 );
			}
			goto label$1378;
			label$1379:;
			{
				FBSTRING TMP$1749$4;
				FBSTRING TMP$1750$4;
				FBSTRING TMP$1751$4;
				__builtin_memset( &TMP$1751$4, 0, 12 );
				__builtin_memset( &TMP$1749$4, 0, 12 );
				FBSTRING* vr$1502 = fb_StrConcat( &TMP$1749$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1750$4, 0, 12 );
				FBSTRING* vr$1505 = fb_StrConcat( &TMP$1750$4, (void*)vr$1502, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$1751$4, -1, (void*)vr$1505, -1, 0 );
				HWRITEASM64( &TMP$1751$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1751$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1378:;
		}
		goto label$1215;
		label$1380:;
		{
			FBSTRING TMP$1760$3;
			FBSTRING TMP$1761$3;
			if( *(int32*)((uint8*)REGHANDLE$ + 12) == -2 ) goto label$1382;
			{
				int32 vr$1510 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
				if( vr$1510 == 0 ) goto label$1384;
				{
					FBSTRING TMP$1752$5;
					FBSTRING TMP$1753$5;
					FBSTRING TMP$1754$5;
					FBSTRING TMP$1755$5;
					TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 12);
					REG_FINDFREE( TEMPO$1, -1 );
					*(int32*)((uint8*)REGHANDLE$ + 12) = -2;
					__builtin_memset( &TMP$1755$5, 0, 12 );
					int32 vr$1512 = REG_FINDREAL( TEMPO$1 );
					__builtin_memset( &TMP$1752$5, 0, 12 );
					FBSTRING* vr$1516 = fb_StrConcat( &TMP$1752$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$1512 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1753$5, 0, 12 );
					FBSTRING* vr$1519 = fb_StrConcat( &TMP$1753$5, (void*)vr$1516, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1754$5, 0, 12 );
					FBSTRING* vr$1522 = fb_StrConcat( &TMP$1754$5, (void*)vr$1519, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
					fb_StrAssign( (void*)&TMP$1755$5, -1, (void*)vr$1522, -1, 0 );
					HWRITEASM64( &TMP$1755$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1755$5 );
					int32 vr$1527 = fb_StrCompare( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
					if( vr$1527 != 0 ) goto label$1386;
					{
						int32 vr$1528 = REG_FINDREAL( TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$1528 << (2 & 31))), 0, 0 );
					}
					label$1386:;
					label$1385:;
					if( VRREG$1 != 3 ) goto label$1388;
					{
						int32 vr$1531 = REG_FINDREAL( TEMPO$1 );
						VRREG$1 = vr$1531;
						label$1388:;
					}
				}
				label$1384:;
				label$1383:;
			}
			goto label$1381;
			label$1382:;
			{
				*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | 8;
			}
			label$1381:;
			if( *(int32*)V2$1 != 0 ) goto label$1390;
			{
				FBSTRING TMP$1756$4;
				FBSTRING TMP$1757$4;
				FBSTRING TMP$1758$4;
				FBSTRING TMP$1759$4;
				if( *(int32*)((uint8*)REGHANDLE$ + 12) != -2 ) goto label$1392;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12) = -3;
					label$1392:;
				}
				uint8* vr$1534 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$1534, 0, 0 );
				if( *(int32*)((uint8*)REGHANDLE$ + 12) != -3 ) goto label$1394;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12) = -2;
					label$1394:;
				}
				__builtin_memset( &TMP$1759$4, 0, 12 );
				__builtin_memset( &TMP$1756$4, 0, 12 );
				FBSTRING* vr$1541 = fb_StrConcat( &TMP$1756$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$1757$4, 0, 12 );
				FBSTRING* vr$1544 = fb_StrConcat( &TMP$1757$4, (void*)vr$1541, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1758$4, 0, 12 );
				FBSTRING* vr$1547 = fb_StrConcat( &TMP$1758$4, (void*)vr$1544, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1759$4, -1, (void*)vr$1547, -1, 0 );
				HWRITEASM64( &TMP$1759$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1759$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)&REGTEMPO$1, -1, 0 );
			}
			label$1390:;
			label$1389:;
			__builtin_memset( &TMP$1761$3, 0, 12 );
			__builtin_memset( &TMP$1760$3, 0, 12 );
			FBSTRING* vr$1557 = fb_StrConcat( &TMP$1760$3, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1761$3, -1, (void*)vr$1557, -1, 0 );
			HWRITEASM64( &TMP$1761$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1761$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (TEMPO2DTYPE$1 & 480) == 0 ) goto label$1396;
			{
				TEMPO2DTYPE$1 = 8;
				label$1396:;
			}
			if( (((-(TEMPODTYPE$1 == 9) | -(TEMPODTYPE$1 == 14)) | -(TEMPO2DTYPE$1 == 9)) | -(TEMPO2DTYPE$1 == 14)) == 0 ) goto label$1398;
			{
				FBSTRING TMP$1762$4;
				FBSTRING TMP$1763$4;
				FBSTRING TMP$1764$4;
				__builtin_memset( &TMP$1762$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1762$4, -1, (void*)"mov edx, 0", 11, 0 );
				HWRITEASM64( &TMP$1762$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1762$4 );
				__builtin_memset( &TMP$1764$4, 0, 12 );
				__builtin_memset( &TMP$1763$4, 0, 12 );
				FBSTRING* vr$1578 = fb_StrConcat( &TMP$1763$4, (void*)"div ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1764$4, -1, (void*)vr$1578, -1, 0 );
				HWRITEASM64( &TMP$1764$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1764$4 );
			}
			goto label$1397;
			label$1398:;
			{
				FBSTRING TMP$1765$4;
				FBSTRING TMP$1766$4;
				FBSTRING TMP$1767$4;
				__builtin_memset( &TMP$1765$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1765$4, -1, (void*)"cqo", 4, 0 );
				HWRITEASM64( &TMP$1765$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1765$4 );
				__builtin_memset( &TMP$1767$4, 0, 12 );
				__builtin_memset( &TMP$1766$4, 0, 12 );
				FBSTRING* vr$1590 = fb_StrConcat( &TMP$1766$4, (void*)"idiv ", 6, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$1767$4, -1, (void*)vr$1590, -1, 0 );
				HWRITEASM64( &TMP$1767$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1767$4 );
			}
			label$1397:;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$1400;
			{
				FBSTRING TMP$1769$4;
				FBSTRING TMP$1770$4;
				FBSTRING TMP$1771$4;
				__builtin_memset( &TMP$1771$4, 0, 12 );
				__builtin_memset( &TMP$1769$4, 0, 12 );
				FBSTRING* vr$1598 = fb_StrConcat( &TMP$1769$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$1770$4, 0, 12 );
				FBSTRING* vr$1601 = fb_StrConcat( &TMP$1770$4, (void*)vr$1598, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1771$4, -1, (void*)vr$1601, -1, 0 );
				HWRITEASM64( &TMP$1771$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1771$4 );
			}
			goto label$1399;
			label$1400:;
			{
				FBSTRING TMP$1772$4;
				FBSTRING TMP$1773$4;
				FBSTRING TMP$1774$4;
				__builtin_memset( &TMP$1774$4, 0, 12 );
				__builtin_memset( &TMP$1772$4, 0, 12 );
				FBSTRING* vr$1609 = fb_StrConcat( &TMP$1772$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1773$4, 0, 12 );
				FBSTRING* vr$1612 = fb_StrConcat( &TMP$1773$4, (void*)vr$1609, -1, (void*)", rdx", 6 );
				fb_StrAssign( (void*)&TMP$1774$4, -1, (void*)vr$1612, -1, 0 );
				HWRITEASM64( &TMP$1774$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1774$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1399:;
		}
		goto label$1215;
		label$1401:;
		{
			FBSTRING TMP$1775$3;
			FBSTRING TMP$1778$3;
			FBSTRING TMP$1779$3;
			FBSTRING TMP$1780$3;
			__builtin_memset( &TMP$1775$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1775$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1775$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1775$3 );
			__builtin_memset( &TMP$1779$3, 0, 12 );
			uint8* vr$1621 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1778$3, 0, 12 );
			FBSTRING* vr$1624 = fb_StrConcat( &TMP$1778$3, (void*)"FOUND AN ERROR : op int needs to be coded : ", 45, (void*)vr$1621, 0 );
			fb_StrAssign( (void*)&TMP$1779$3, -1, (void*)vr$1624, -1, 0 );
			HWRITEASM64( &TMP$1779$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1779$3 );
			__builtin_memset( &TMP$1780$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1780$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1780$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1780$3 );
		}
		goto label$1215;
		label$1216:;
		static const void* tmp$3860[23] = {
			&&label$1217,
			&&label$1303,
			&&label$1309,
			&&label$1401,
			&&label$1359,
			&&label$1380,
			&&label$1223,
			&&label$1226,
			&&label$1401,
			&&label$1401,
			&&label$1276,
			&&label$1279,
			&&label$1229,
			&&label$1346,
			&&label$1346,
			&&label$1401,
			&&label$1401,
			&&label$1312,
			&&label$1312,
			&&label$1312,
			&&label$1312,
			&&label$1312,
			&&label$1312,
		};
		if( (TMP$1514$2 - 28u) > 22u ) goto label$1401;
		goto *tmp$3860[TMP$1514$2 - 28u];
		label$1215:;
	}
	fb_StrDelete( (FBSTRING*)&OP1BIS$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP1PREV$1 );
	fb_StrDelete( (FBSTRING*)&SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1012:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 TMP$1781$1;
	int32 TMP$1782$1;
	int32 TMP$1783$1;
	int32 TMP$1784$1;
	label$1402:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( LABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$1405;
	{
	}
	goto label$1404;
	label$1405:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1406;
	{
	}
	goto label$1404;
	label$1406:;
	{
	}
	label$1404:;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1408;
	{
	}
	goto label$1407;
	label$1408:;
	{
	}
	label$1407:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1412;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1409;
	TMP$1781$1 = 24;
	goto label$3005;
	label$1409:;
	TMP$1781$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3005:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1410;
	TMP$1782$1 = 24;
	goto label$3006;
	label$1410:;
	TMP$1782$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3006:;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 480) == 0 ) goto label$1411;
	TMP$1783$1 = 24;
	goto label$3007;
	label$1411:;
	TMP$1783$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28) & 31;
	label$3007:;
	TMP$1784$1 = -(((-(*(int32*)((uint8*)V1$1 + 4) != *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28)) & -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$1781$1 * 28)) == 0)) & -(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$1782$1 * 28)) + 4) != *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$1783$1 * 28)) + 4))) != 0);
	goto label$3004;
	label$1412:;
	TMP$1784$1 = 0;
	label$3004:;
	if( TMP$1784$1 == 0 ) goto label$1414;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28);
		_SETVREGDATATYPE( V1$1, DTYPE$1, (struct $8FBSYMBOL*)0u );
	}
	label$1414:;
	label$1413:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	label$1403:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$1811$1;
	label$1415:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 4 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$1418;
	{
	}
	goto label$1417;
	label$1418:;
	{
	}
	label$1417:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$1420;
	{
		if( *(int32*)V1$1 == 4 ) goto label$1422;
		{
			{
				$15IRVREGTYPE_ENUM TMP$1785$4;
				TMP$1785$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$1785$4 != 4 ) goto label$1424;
				label$1425:;
				{
					int32 vr$9 = REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
					VRREG$1 = vr$9;
				}
				goto label$1423;
				label$1424:;
				{
					FBSTRING TMP$1786$5;
					FBSTRING TMP$1789$5;
					FBSTRING TMP$1790$5;
					__builtin_memset( &TMP$1786$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1786$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1786$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1786$5 );
					__builtin_memset( &TMP$1789$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1789$5, -1, (void*)"FOUND AN ERROR : in emituop typ not handled vr", 47, 0 );
					HWRITEASM64( &TMP$1789$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1789$5 );
					__builtin_memset( &TMP$1790$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1790$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1790$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1790$5 );
				}
				label$1426:;
				label$1423:;
			}
		}
		goto label$1421;
		label$1422:;
		{
			*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
			int32 vr$25 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			VRREG$1 = vr$25;
		}
		label$1421:;
	}
	label$1420:;
	label$1419:;
	TEMPODTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
	if( (TEMPODTYPE$1 & 480) == 0 ) goto label$1428;
	{
		TEMPODTYPE$1 = 8;
		label$1428:;
	}
	{
		if( TEMPODTYPE$1 == 8 ) goto label$1431;
		label$1432:;
		if( TEMPODTYPE$1 == 9 ) goto label$1431;
		label$1433:;
		if( TEMPODTYPE$1 == 13 ) goto label$1431;
		label$1434:;
		if( TEMPODTYPE$1 == 14 ) goto label$1431;
		label$1435:;
		if( TEMPODTYPE$1 == 16 ) goto label$1431;
		label$1436:;
		if( TEMPODTYPE$1 != 10 ) goto label$1430;
		label$1431:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1429;
		label$1430:;
		if( TEMPODTYPE$1 == 11 ) goto label$1438;
		label$1439:;
		if( TEMPODTYPE$1 == 12 ) goto label$1438;
		label$1440:;
		if( TEMPODTYPE$1 != 15 ) goto label$1437;
		label$1438:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1429;
		label$1437:;
		if( TEMPODTYPE$1 == 5 ) goto label$1442;
		label$1443:;
		if( TEMPODTYPE$1 != 6 ) goto label$1441;
		label$1442:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1429;
		label$1441:;
		if( TEMPODTYPE$1 == 2 ) goto label$1445;
		label$1446:;
		if( TEMPODTYPE$1 == 3 ) goto label$1445;
		label$1447:;
		if( TEMPODTYPE$1 == 1 ) goto label$1445;
		label$1448:;
		if( TEMPODTYPE$1 != 4 ) goto label$1444;
		label$1445:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1429;
		label$1444:;
		{
			FBSTRING TMP$1791$3;
			FBSTRING TMP$1792$3;
			FBSTRING TMP$1793$3;
			FBSTRING TMP$1794$3;
			__builtin_memset( &TMP$1791$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1791$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1791$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1791$3 );
			__builtin_memset( &TMP$1793$3, 0, 12 );
			FBSTRING* vr$38 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$1792$3, 0, 12 );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$1792$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48, (void*)vr$38, -1 );
			fb_StrAssign( (void*)&TMP$1793$3, -1, (void*)vr$41, -1, 0 );
			HWRITEASM64( &TMP$1793$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1793$3 );
			__builtin_memset( &TMP$1794$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1794$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1794$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1794$3 );
		}
		label$1449:;
		label$1429:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1795$2;
		TMP$1795$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1795$2 != 4 ) goto label$1451;
		label$1452:;
		{
			if( TEMPODTYPE$1 != 1 ) goto label$1454;
			{
				int32 vr$51 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (vr$51 << (2 & 31))), 0, 0 );
			}
			goto label$1453;
			label$1454:;
			{
				int32 vr$55 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$55 << (2 & 31))), 0, 0 );
			}
			label$1453:;
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"", 1, 0 );
		}
		goto label$1450;
		label$1451:;
		if( TMP$1795$2 != 2 ) goto label$1455;
		label$1456:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1450;
		label$1455:;
		if( TMP$1795$2 != 3 ) goto label$1457;
		label$1458:;
		{
			FBSTRING TMP$1796$3;
			FBSTRING TMP$1797$3;
			FBSTRING TMP$1798$3;
			int32 vr$63 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$66 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$1796$3, 0, 12 );
			FBSTRING* vr$69 = fb_StrConcat( &TMP$1796$3, (void*)vr$66, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$1797$3, 0, 12 );
			FBSTRING* vr$72 = fb_StrConcat( &TMP$1797$3, (void*)vr$69, -1, *(void**)((uint8*)REGSTRQ$ + (vr$63 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1798$3, 0, 12 );
			FBSTRING* vr$75 = fb_StrConcat( &TMP$1798$3, (void*)vr$72, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$75, -1, 0 );
		}
		goto label$1450;
		label$1457:;
		if( TMP$1795$2 != 5 ) goto label$1459;
		label$1460:;
		{
			FBSTRING TMP$1799$3;
			FBSTRING TMP$1800$3;
			FBSTRING TMP$1801$3;
			FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$80 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$1799$3, 0, 12 );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$1799$3, (void*)vr$80, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$1800$3, 0, 12 );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$1800$3, (void*)vr$83, -1, (void*)vr$78, -1 );
			__builtin_memset( &TMP$1801$3, 0, 12 );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$1801$3, (void*)vr$86, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$89, -1, 0 );
		}
		goto label$1450;
		label$1459:;
		if( TMP$1795$2 != 0 ) goto label$1461;
		label$1462:;
		{
		}
		goto label$1450;
		label$1461:;
		if( TMP$1795$2 != 1 ) goto label$1463;
		label$1464:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1466;
			{
				FBSTRING TMP$1802$4;
				FBSTRING TMP$1803$4;
				FBSTRING TMP$1804$4;
				FBSTRING* vr$101 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$103 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$1802$4, 0, 12 );
				FBSTRING* vr$106 = fb_StrConcat( &TMP$1802$4, (void*)vr$103, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$1803$4, 0, 12 );
				FBSTRING* vr$109 = fb_StrConcat( &TMP$1803$4, (void*)vr$106, -1, (void*)vr$101, -1 );
				__builtin_memset( &TMP$1804$4, 0, 12 );
				FBSTRING* vr$112 = fb_StrConcat( &TMP$1804$4, (void*)vr$109, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$112, -1, 0 );
			}
			goto label$1465;
			label$1466:;
			{
				FBSTRING TMP$1805$4;
				FBSTRING* vr$115 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$1805$4, 0, 12 );
				FBSTRING* vr$118 = fb_StrConcat( &TMP$1805$4, (void*)vr$115, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$118, -1, 0 );
			}
			label$1465:;
		}
		goto label$1450;
		label$1463:;
		{
			FBSTRING TMP$1806$3;
			FBSTRING TMP$1809$3;
			FBSTRING TMP$1810$3;
			__builtin_memset( &TMP$1806$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1806$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1806$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1806$3 );
			__builtin_memset( &TMP$1809$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1809$3, -1, (void*)"FOUND AN ERROR : in uop typ not handled v1", 43, 0 );
			HWRITEASM64( &TMP$1809$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1809$3 );
			__builtin_memset( &TMP$1810$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1810$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1810$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1810$3 );
		}
		label$1467:;
		label$1450:;
	}
	int32 vr$133 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
	if( vr$133 == 0 ) goto label$1469;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1469:;
	}
	__builtin_memset( &TMP$1811$1, 0, 12 );
	FBSTRING* vr$139 = fb_StrConcat( &TMP$1811$1, (void*)&PREFIX$1, -1, (void*)&OP1$1, -1 );
	fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$139, -1, 0 );
	if( OP$1 != 52 ) goto label$1471;
	{
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1473;
		{
			{
				if( TEMPODTYPE$1 == 8 ) goto label$1476;
				label$1477:;
				if( TEMPODTYPE$1 == 9 ) goto label$1476;
				label$1478:;
				if( TEMPODTYPE$1 == 13 ) goto label$1476;
				label$1479:;
				if( TEMPODTYPE$1 == 14 ) goto label$1476;
				label$1480:;
				if( TEMPODTYPE$1 != 10 ) goto label$1475;
				label$1476:;
				{
					FBSTRING TMP$1812$5;
					FBSTRING TMP$1813$5;
					FBSTRING TMP$1814$5;
					FBSTRING TMP$1815$5;
					__builtin_memset( &TMP$1815$5, 0, 12 );
					__builtin_memset( &TMP$1812$5, 0, 12 );
					FBSTRING* vr$150 = fb_StrConcat( &TMP$1812$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1813$5, 0, 12 );
					FBSTRING* vr$153 = fb_StrConcat( &TMP$1813$5, (void*)vr$150, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1814$5, 0, 12 );
					FBSTRING* vr$156 = fb_StrConcat( &TMP$1814$5, (void*)vr$153, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1815$5, -1, (void*)vr$156, -1, 0 );
					HWRITEASM64( &TMP$1815$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1815$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1474;
				label$1475:;
				if( TEMPODTYPE$1 == 11 ) goto label$1482;
				label$1483:;
				if( TEMPODTYPE$1 != 12 ) goto label$1481;
				label$1482:;
				{
					FBSTRING TMP$1816$5;
					FBSTRING TMP$1817$5;
					FBSTRING TMP$1818$5;
					FBSTRING TMP$1819$5;
					__builtin_memset( &TMP$1819$5, 0, 12 );
					__builtin_memset( &TMP$1816$5, 0, 12 );
					FBSTRING* vr$167 = fb_StrConcat( &TMP$1816$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1817$5, 0, 12 );
					FBSTRING* vr$170 = fb_StrConcat( &TMP$1817$5, (void*)vr$167, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1818$5, 0, 12 );
					FBSTRING* vr$173 = fb_StrConcat( &TMP$1818$5, (void*)vr$170, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1819$5, -1, (void*)vr$173, -1, 0 );
					HWRITEASM64( &TMP$1819$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1819$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1474;
				label$1481:;
				if( TEMPODTYPE$1 == 5 ) goto label$1485;
				label$1486:;
				if( TEMPODTYPE$1 != 6 ) goto label$1484;
				label$1485:;
				{
					FBSTRING TMP$1820$5;
					FBSTRING TMP$1821$5;
					FBSTRING TMP$1822$5;
					FBSTRING TMP$1823$5;
					__builtin_memset( &TMP$1823$5, 0, 12 );
					__builtin_memset( &TMP$1820$5, 0, 12 );
					FBSTRING* vr$184 = fb_StrConcat( &TMP$1820$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1821$5, 0, 12 );
					FBSTRING* vr$187 = fb_StrConcat( &TMP$1821$5, (void*)vr$184, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1822$5, 0, 12 );
					FBSTRING* vr$190 = fb_StrConcat( &TMP$1822$5, (void*)vr$187, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1823$5, -1, (void*)vr$190, -1, 0 );
					HWRITEASM64( &TMP$1823$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1823$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1474;
				label$1484:;
				if( TEMPODTYPE$1 == 2 ) goto label$1488;
				label$1489:;
				if( TEMPODTYPE$1 == 3 ) goto label$1488;
				label$1490:;
				if( TEMPODTYPE$1 == 1 ) goto label$1488;
				label$1491:;
				if( TEMPODTYPE$1 != 4 ) goto label$1487;
				label$1488:;
				{
					FBSTRING TMP$1824$5;
					FBSTRING TMP$1825$5;
					FBSTRING TMP$1826$5;
					FBSTRING TMP$1827$5;
					__builtin_memset( &TMP$1827$5, 0, 12 );
					__builtin_memset( &TMP$1824$5, 0, 12 );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$1824$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0 );
					__builtin_memset( &TMP$1825$5, 0, 12 );
					FBSTRING* vr$204 = fb_StrConcat( &TMP$1825$5, (void*)vr$201, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$1826$5, 0, 12 );
					FBSTRING* vr$207 = fb_StrConcat( &TMP$1826$5, (void*)vr$204, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$1827$5, -1, (void*)vr$207, -1, 0 );
					HWRITEASM64( &TMP$1827$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1827$5 );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1474;
				label$1487:;
				{
					FBSTRING TMP$1828$5;
					FBSTRING TMP$1829$5;
					FBSTRING TMP$1830$5;
					FBSTRING TMP$1831$5;
					__builtin_memset( &TMP$1828$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1828$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1828$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1828$5 );
					__builtin_memset( &TMP$1830$5, 0, 12 );
					FBSTRING* vr$219 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
					__builtin_memset( &TMP$1829$5, 0, 12 );
					FBSTRING* vr$222 = fb_StrConcat( &TMP$1829$5, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49, (void*)vr$219, -1 );
					fb_StrAssign( (void*)&TMP$1830$5, -1, (void*)vr$222, -1, 0 );
					HWRITEASM64( &TMP$1830$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1830$5 );
					__builtin_memset( &TMP$1831$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$1831$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$1831$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$1831$5 );
				}
				label$1492:;
				label$1474:;
			}
		}
		label$1473:;
		label$1472:;
		if( TEMPODTYPE$1 != 1 ) goto label$1494;
		{
			FBSTRING TMP$1833$3;
			FBSTRING TMP$1834$3;
			FBSTRING TMP$1835$3;
			FBSTRING TMP$1836$3;
			FBSTRING TMP$1838$3;
			FBSTRING TMP$1839$3;
			__builtin_memset( &TMP$1836$3, 0, 12 );
			__builtin_memset( &TMP$1833$3, 0, 12 );
			FBSTRING* vr$235 = fb_StrConcat( &TMP$1833$3, (void*)"test ", 6, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1834$3, 0, 12 );
			FBSTRING* vr$238 = fb_StrConcat( &TMP$1834$3, (void*)vr$235, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1835$3, 0, 12 );
			FBSTRING* vr$241 = fb_StrConcat( &TMP$1835$3, (void*)vr$238, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1836$3, -1, (void*)vr$241, -1, 0 );
			HWRITEASM64( &TMP$1836$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1836$3 );
			__builtin_memset( &TMP$1839$3, 0, 12 );
			__builtin_memset( &TMP$1838$3, 0, 12 );
			FBSTRING* vr$249 = fb_StrConcat( &TMP$1838$3, (void*)"sete ", 6, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1839$3, -1, (void*)vr$249, -1, 0 );
			HWRITEASM64( &TMP$1839$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1839$3 );
		}
		goto label$1493;
		label$1494:;
		{
			FBSTRING TMP$1840$3;
			FBSTRING TMP$1841$3;
			__builtin_memset( &TMP$1841$3, 0, 12 );
			__builtin_memset( &TMP$1840$3, 0, 12 );
			FBSTRING* vr$257 = fb_StrConcat( &TMP$1840$3, (void*)"not ", 5, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1841$3, -1, (void*)vr$257, -1, 0 );
			HWRITEASM64( &TMP$1841$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1841$3 );
		}
		label$1493:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1471:;
	label$1470:;
	if( *(int32*)((uint8*)V1$1 + 4) != 15 ) goto label$1496;
	{
		if( *(int32*)V1$1 != 4 ) goto label$1498;
		{
			FBSTRING TMP$1843$3;
			FBSTRING TMP$1844$3;
			__builtin_memset( &TMP$1844$3, 0, 12 );
			__builtin_memset( &TMP$1843$3, 0, 12 );
			FBSTRING* vr$270 = fb_StrConcat( &TMP$1843$3, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1844$3, -1, (void*)vr$270, -1, 0 );
			HWRITEASM64( &TMP$1844$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1844$3 );
		}
		goto label$1497;
		label$1498:;
		{
			FBSTRING TMP$1846$3;
			FBSTRING TMP$1847$3;
			__builtin_memset( &TMP$1847$3, 0, 12 );
			__builtin_memset( &TMP$1846$3, 0, 12 );
			FBSTRING* vr$278 = fb_StrConcat( &TMP$1846$3, (void*)"movss xmm0, ", 13, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1847$3, -1, (void*)vr$278, -1, 0 );
			HWRITEASM64( &TMP$1847$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1847$3 );
		}
		label$1497:;
		{
			if( OP$1 != 60 ) goto label$1500;
			label$1501:;
			{
				FBSTRING TMP$1849$4;
				__builtin_memset( &TMP$1849$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1849$4, -1, (void*)"cosf", 5, 0 );
				SAVE_CALL( &TMP$1849$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1849$4 );
			}
			goto label$1499;
			label$1500:;
			if( OP$1 != 58 ) goto label$1502;
			label$1503:;
			{
				FBSTRING TMP$1851$4;
				__builtin_memset( &TMP$1851$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1851$4, -1, (void*)"sinf", 5, 0 );
				SAVE_CALL( &TMP$1851$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1851$4 );
			}
			goto label$1499;
			label$1502:;
			if( OP$1 != 69 ) goto label$1504;
			label$1505:;
			{
				FBSTRING TMP$1853$4;
				__builtin_memset( &TMP$1853$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1853$4, -1, (void*)"expf", 5, 0 );
				SAVE_CALL( &TMP$1853$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1853$4 );
			}
			goto label$1499;
			label$1504:;
			if( OP$1 != 68 ) goto label$1506;
			label$1507:;
			{
				FBSTRING TMP$1855$4;
				__builtin_memset( &TMP$1855$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1855$4, -1, (void*)"logf", 5, 0 );
				SAVE_CALL( &TMP$1855$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1855$4 );
			}
			goto label$1499;
			label$1506:;
			if( OP$1 != 61 ) goto label$1508;
			label$1509:;
			{
				FBSTRING TMP$1857$4;
				__builtin_memset( &TMP$1857$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1857$4, -1, (void*)"acosf", 6, 0 );
				SAVE_CALL( &TMP$1857$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1857$4 );
			}
			goto label$1499;
			label$1508:;
			if( OP$1 != 59 ) goto label$1510;
			label$1511:;
			{
				FBSTRING TMP$1859$4;
				__builtin_memset( &TMP$1859$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1859$4, -1, (void*)"asinf", 6, 0 );
				SAVE_CALL( &TMP$1859$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1859$4 );
			}
			goto label$1499;
			label$1510:;
			if( OP$1 != 62 ) goto label$1512;
			label$1513:;
			{
				FBSTRING TMP$1861$4;
				__builtin_memset( &TMP$1861$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1861$4, -1, (void*)"tanf", 5, 0 );
				SAVE_CALL( &TMP$1861$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1861$4 );
			}
			goto label$1499;
			label$1512:;
			if( OP$1 != 63 ) goto label$1514;
			label$1515:;
			{
				FBSTRING TMP$1863$4;
				__builtin_memset( &TMP$1863$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1863$4, -1, (void*)"atanf", 6, 0 );
				SAVE_CALL( &TMP$1863$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1863$4 );
			}
			goto label$1499;
			label$1514:;
			if( OP$1 != 65 ) goto label$1516;
			label$1517:;
			{
				FBSTRING TMP$1865$4;
				__builtin_memset( &TMP$1865$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1865$4, -1, (void*)"sqrtss\x09xmm0, xmm0", 18, 0 );
				HWRITEASM64( &TMP$1865$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1865$4 );
			}
			goto label$1499;
			label$1516:;
			if( OP$1 != 56 ) goto label$1518;
			label$1519:;
			{
				FBSTRING TMP$1867$4;
				FBSTRING TMP$1869$4;
				FBSTRING TMP$1871$4;
				FBSTRING TMP$1873$4;
				__builtin_memset( &TMP$1867$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1867$4, -1, (void*)"mov eax, 0x7FFFFFFF", 20, 0 );
				HWRITEASM64( &TMP$1867$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1867$4 );
				__builtin_memset( &TMP$1869$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1869$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1869$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1869$4 );
				__builtin_memset( &TMP$1871$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1871$4, -1, (void*)"andps xmm1, xmm0", 17, 0 );
				HWRITEASM64( &TMP$1871$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1871$4 );
				__builtin_memset( &TMP$1873$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1873$4, -1, (void*)"movd xmm0, xmm1", 16, 0 );
				HWRITEASM64( &TMP$1873$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1873$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1499;
			label$1518:;
			if( OP$1 != 57 ) goto label$1520;
			label$1521:;
			{
				FBSTRING TMP$1875$4;
				__builtin_memset( &TMP$1875$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1875$4, -1, (void*)"fb_SGNSingle", 13, 0 );
				SAVE_CALL( &TMP$1875$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1875$4 );
			}
			goto label$1499;
			label$1520:;
			if( OP$1 != 72 ) goto label$1522;
			label$1523:;
			{
				FBSTRING TMP$1877$4;
				__builtin_memset( &TMP$1877$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1877$4, -1, (void*)"fb_FRACf", 9, 0 );
				SAVE_CALL( &TMP$1877$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1877$4 );
			}
			goto label$1499;
			label$1522:;
			if( OP$1 != 71 ) goto label$1524;
			label$1525:;
			{
				FBSTRING TMP$1879$4;
				__builtin_memset( &TMP$1879$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1879$4, -1, (void*)"fb_FIXSingle", 13, 0 );
				SAVE_CALL( &TMP$1879$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1879$4 );
			}
			goto label$1499;
			label$1524:;
			if( OP$1 != 70 ) goto label$1526;
			label$1527:;
			{
				FBSTRING TMP$1881$4;
				__builtin_memset( &TMP$1881$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1881$4, -1, (void*)"floorf", 7, 0 );
				SAVE_CALL( &TMP$1881$4, VR$1, VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1881$4 );
			}
			goto label$1499;
			label$1526:;
			if( OP$1 != 54 ) goto label$1528;
			label$1529:;
			{
				FBSTRING TMP$1884$4;
				FBSTRING TMP$1885$4;
				FBSTRING TMP$1887$4;
				__builtin_memset( &TMP$1884$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1884$4, -1, (void*)"mov eax, 0x80000000", 20, 0 );
				HWRITEASM64( &TMP$1884$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1884$4 );
				__builtin_memset( &TMP$1885$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1885$4, -1, (void*)"movd xmm1, eax", 15, 0 );
				HWRITEASM64( &TMP$1885$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1885$4 );
				__builtin_memset( &TMP$1887$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1887$4, -1, (void*)"xorps xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$1887$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1887$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1499;
			label$1528:;
			{
				FBSTRING TMP$1888$4;
				FBSTRING TMP$1891$4;
				FBSTRING TMP$1892$4;
				__builtin_memset( &TMP$1888$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1888$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1888$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1888$4 );
				__builtin_memset( &TMP$1891$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1891$4, -1, (void*)"FOUND AN ERROR : in uop not handled for single", 47, 0 );
				HWRITEASM64( &TMP$1891$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1891$4 );
				__builtin_memset( &TMP$1892$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$1892$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$1892$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1892$4 );
			}
			label$1530:;
			label$1499:;
		}
		if( OP$1 != 57 ) goto label$1532;
		{
			FBSTRING TMP$1894$3;
			FBSTRING TMP$1895$3;
			FBSTRING TMP$1896$3;
			__builtin_memset( &TMP$1896$3, 0, 12 );
			__builtin_memset( &TMP$1894$3, 0, 12 );
			FBSTRING* vr$378 = fb_StrConcat( &TMP$1894$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1895$3, 0, 12 );
			FBSTRING* vr$381 = fb_StrConcat( &TMP$1895$3, (void*)vr$378, -1, (void*)", eax", 6 );
			fb_StrAssign( (void*)&TMP$1896$3, -1, (void*)vr$381, -1, 0 );
			HWRITEASM64( &TMP$1896$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1896$3 );
		}
		goto label$1531;
		label$1532:;
		{
			FBSTRING TMP$1897$3;
			FBSTRING TMP$1898$3;
			FBSTRING TMP$1899$3;
			__builtin_memset( &TMP$1899$3, 0, 12 );
			__builtin_memset( &TMP$1897$3, 0, 12 );
			FBSTRING* vr$389 = fb_StrConcat( &TMP$1897$3, (void*)"movd ", 6, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1898$3, 0, 12 );
			FBSTRING* vr$392 = fb_StrConcat( &TMP$1898$3, (void*)vr$389, -1, (void*)", xmm0", 7 );
			fb_StrAssign( (void*)&TMP$1899$3, -1, (void*)vr$392, -1, 0 );
			HWRITEASM64( &TMP$1899$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1899$3 );
		}
		label$1531:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1496:;
	label$1495:;
	if( (-(OP$1 == 56) & -(*(int32*)((uint8*)V1$1 + 4) != 16)) == 0 ) goto label$1534;
	{
		FBSTRING TMP$1900$2;
		FBSTRING TMP$1901$2;
		FBSTRING TMP$1906$2;
		FBSTRING TMP$1908$2;
		FBSTRING TMP$1910$2;
		__builtin_memset( &TMP$1901$2, 0, 12 );
		__builtin_memset( &TMP$1900$2, 0, 12 );
		FBSTRING* vr$407 = fb_StrConcat( &TMP$1900$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1901$2, -1, (void*)vr$407, -1, 0 );
		HWRITEASM64( &TMP$1901$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1901$2 );
		if( *(int32*)((uint8*)REGHANDLE$ + 12) == -2 ) goto label$1536;
		{
			FBSTRING TMP$1902$3;
			FBSTRING TMP$1903$3;
			FBSTRING TMP$1904$3;
			FBSTRING TMP$1905$3;
			TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 12);
			REG_FINDFREE( TEMPO$1, -1 );
			*(int32*)((uint8*)REGHANDLE$ + 12) = -2;
			__builtin_memset( &TMP$1905$3, 0, 12 );
			int32 vr$412 = REG_FINDREAL( TEMPO$1 );
			__builtin_memset( &TMP$1902$3, 0, 12 );
			FBSTRING* vr$416 = fb_StrConcat( &TMP$1902$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$412 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1903$3, 0, 12 );
			FBSTRING* vr$419 = fb_StrConcat( &TMP$1903$3, (void*)vr$416, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1904$3, 0, 12 );
			FBSTRING* vr$422 = fb_StrConcat( &TMP$1904$3, (void*)vr$419, -1, *(void**)((uint8*)REGSTRQ$ + 12), 0 );
			fb_StrAssign( (void*)&TMP$1905$3, -1, (void*)vr$422, -1, 0 );
			HWRITEASM64( &TMP$1905$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1905$3 );
			if( VRREG$1 != 3 ) goto label$1538;
			{
				int32 vr$426 = REG_FINDREAL( TEMPO$1 );
				VRREG$1 = vr$426;
				label$1538:;
			}
		}
		goto label$1535;
		label$1536:;
		{
			*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | 8;
		}
		label$1535:;
		__builtin_memset( &TMP$1906$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1906$2, -1, (void*)"cqo", 4, 0 );
		HWRITEASM64( &TMP$1906$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1906$2 );
		__builtin_memset( &TMP$1908$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1908$2, -1, (void*)"xor rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$1908$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1908$2 );
		__builtin_memset( &TMP$1910$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1910$2, -1, (void*)"sub rax, rdx", 13, 0 );
		HWRITEASM64( &TMP$1910$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1910$2 );
		if( VR$1 != (struct $6IRVREG*)0u ) goto label$1540;
		{
			FBSTRING TMP$1911$3;
			FBSTRING TMP$1912$3;
			FBSTRING TMP$1913$3;
			__builtin_memset( &TMP$1913$3, 0, 12 );
			__builtin_memset( &TMP$1911$3, 0, 12 );
			FBSTRING* vr$444 = fb_StrConcat( &TMP$1911$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1912$3, 0, 12 );
			FBSTRING* vr$447 = fb_StrConcat( &TMP$1912$3, (void*)vr$444, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1913$3, -1, (void*)vr$447, -1, 0 );
			HWRITEASM64( &TMP$1913$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1913$3 );
		}
		goto label$1539;
		label$1540:;
		{
			FBSTRING TMP$1914$3;
			FBSTRING TMP$1915$3;
			FBSTRING TMP$1916$3;
			__builtin_memset( &TMP$1916$3, 0, 12 );
			__builtin_memset( &TMP$1914$3, 0, 12 );
			FBSTRING* vr$455 = fb_StrConcat( &TMP$1914$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1915$3, 0, 12 );
			FBSTRING* vr$458 = fb_StrConcat( &TMP$1915$3, (void*)vr$455, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1916$3, -1, (void*)vr$458, -1, 0 );
			HWRITEASM64( &TMP$1916$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1916$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		label$1539:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1534:;
	label$1533:;
	if( (-(OP$1 == 54) & -(*(int32*)((uint8*)V1$1 + 4) != 16)) == 0 ) goto label$1542;
	{
		FBSTRING TMP$1921$2;
		FBSTRING TMP$1922$2;
		if( (-(VR$1 != (struct $6IRVREG*)0u) & -(*(int32*)V1$1 != 4)) == 0 ) goto label$1544;
		{
			FBSTRING TMP$1917$3;
			FBSTRING TMP$1918$3;
			FBSTRING TMP$1919$3;
			FBSTRING TMP$1920$3;
			__builtin_memset( &TMP$1920$3, 0, 12 );
			__builtin_memset( &TMP$1917$3, 0, 12 );
			FBSTRING* vr$478 = fb_StrConcat( &TMP$1917$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1918$3, 0, 12 );
			FBSTRING* vr$481 = fb_StrConcat( &TMP$1918$3, (void*)vr$478, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$1919$3, 0, 12 );
			FBSTRING* vr$484 = fb_StrConcat( &TMP$1919$3, (void*)vr$481, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1920$3, -1, (void*)vr$484, -1, 0 );
			HWRITEASM64( &TMP$1920$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1920$3 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0, 0 );
		}
		label$1544:;
		label$1543:;
		__builtin_memset( &TMP$1922$2, 0, 12 );
		__builtin_memset( &TMP$1921$2, 0, 12 );
		FBSTRING* vr$494 = fb_StrConcat( &TMP$1921$2, (void*)"neg ", 5, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1922$2, -1, (void*)vr$494, -1, 0 );
		HWRITEASM64( &TMP$1922$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1922$2 );
		if( VR$1 == (struct $6IRVREG*)0u ) goto label$1546;
		{
			RESTORE_VRREG( VR$1, VRREG$1 );
			label$1546:;
		}
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1542:;
	label$1541:;
	if( (-(OP$1 == 57) & -(*(int32*)((uint8*)V1$1 + 4) != 16)) == 0 ) goto label$1548;
	{
		FBSTRING TMP$1930$2;
		FBSTRING TMP$1932$2;
		int32 vr$506 = fb_StrCompare( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + 8), 0 );
		if( vr$506 == 0 ) goto label$1550;
		{
			FBSTRING TMP$1927$3;
			FBSTRING TMP$1928$3;
			if( *(int32*)((uint8*)REGHANDLE$ + 8) == -2 ) goto label$1552;
			{
				FBSTRING TMP$1923$4;
				FBSTRING TMP$1924$4;
				FBSTRING TMP$1925$4;
				FBSTRING TMP$1926$4;
				TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 8);
				REG_FINDFREE( TEMPO$1, -1 );
				*(int32*)((uint8*)REGHANDLE$ + 8) = -2;
				__builtin_memset( &TMP$1926$4, 0, 12 );
				int32 vr$508 = REG_FINDREAL( TEMPO$1 );
				__builtin_memset( &TMP$1923$4, 0, 12 );
				FBSTRING* vr$512 = fb_StrConcat( &TMP$1923$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$508 << (2 & 31))), 0 );
				__builtin_memset( &TMP$1924$4, 0, 12 );
				FBSTRING* vr$515 = fb_StrConcat( &TMP$1924$4, (void*)vr$512, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$1925$4, 0, 12 );
				FBSTRING* vr$518 = fb_StrConcat( &TMP$1925$4, (void*)vr$515, -1, *(void**)((uint8*)REGSTRQ$ + 8), 0 );
				fb_StrAssign( (void*)&TMP$1926$4, -1, (void*)vr$518, -1, 0 );
				HWRITEASM64( &TMP$1926$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$1926$4 );
				int32 vr$522 = REG_FINDREAL( TEMPO$1 );
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$522 << (2 & 31))), 0, 0 );
				if( VRREG$1 != 2 ) goto label$1554;
				{
					int32 vr$525 = REG_FINDREAL( TEMPO$1 );
					VRREG$1 = vr$525;
					label$1554:;
				}
			}
			goto label$1551;
			label$1552:;
			{
				*(int32*)((uint8*)&CTX$ + 112) = *(int32*)((uint8*)&CTX$ + 112) | 4;
			}
			label$1551:;
			__builtin_memset( &TMP$1928$3, 0, 12 );
			__builtin_memset( &TMP$1927$3, 0, 12 );
			FBSTRING* vr$531 = fb_StrConcat( &TMP$1927$3, (void*)"mov rcx, ", 10, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$1928$3, -1, (void*)vr$531, -1, 0 );
			HWRITEASM64( &TMP$1928$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1928$3 );
		}
		label$1550:;
		label$1549:;
		__builtin_memset( &TMP$1930$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1930$2, -1, (void*)"fb_SGNl", 8, 0 );
		SAVE_CALL( &TMP$1930$2, VR$1, VRREG$1 );
		fb_StrDelete( (FBSTRING*)&TMP$1930$2 );
		__builtin_memset( &TMP$1932$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$1932$2, -1, (void*)"movsxd rax, eax", 16, 0 );
		HWRITEASM64( &TMP$1932$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1932$2 );
		if( VR$1 != (struct $6IRVREG*)0u ) goto label$1556;
		{
			FBSTRING TMP$1933$3;
			FBSTRING TMP$1934$3;
			FBSTRING TMP$1935$3;
			__builtin_memset( &TMP$1935$3, 0, 12 );
			__builtin_memset( &TMP$1933$3, 0, 12 );
			FBSTRING* vr$547 = fb_StrConcat( &TMP$1933$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$1934$3, 0, 12 );
			FBSTRING* vr$550 = fb_StrConcat( &TMP$1934$3, (void*)vr$547, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1935$3, -1, (void*)vr$550, -1, 0 );
			HWRITEASM64( &TMP$1935$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1935$3 );
		}
		goto label$1555;
		label$1556:;
		{
			FBSTRING TMP$1936$3;
			FBSTRING TMP$1937$3;
			FBSTRING TMP$1938$3;
			__builtin_memset( &TMP$1938$3, 0, 12 );
			__builtin_memset( &TMP$1936$3, 0, 12 );
			FBSTRING* vr$558 = fb_StrConcat( &TMP$1936$3, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
			__builtin_memset( &TMP$1937$3, 0, 12 );
			FBSTRING* vr$561 = fb_StrConcat( &TMP$1937$3, (void*)vr$558, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$1938$3, -1, (void*)vr$561, -1, 0 );
			HWRITEASM64( &TMP$1938$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1938$3 );
		}
		label$1555:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1548:;
	label$1547:;
	if( *(int32*)V1$1 != 4 ) goto label$1558;
	{
		FBSTRING TMP$1940$2;
		FBSTRING TMP$1941$2;
		__builtin_memset( &TMP$1941$2, 0, 12 );
		__builtin_memset( &TMP$1940$2, 0, 12 );
		FBSTRING* vr$573 = fb_StrConcat( &TMP$1940$2, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1941$2, -1, (void*)vr$573, -1, 0 );
		HWRITEASM64( &TMP$1941$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1941$2 );
	}
	goto label$1557;
	label$1558:;
	{
		FBSTRING TMP$1943$2;
		FBSTRING TMP$1944$2;
		__builtin_memset( &TMP$1944$2, 0, 12 );
		__builtin_memset( &TMP$1943$2, 0, 12 );
		FBSTRING* vr$581 = fb_StrConcat( &TMP$1943$2, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$1944$2, -1, (void*)vr$581, -1, 0 );
		HWRITEASM64( &TMP$1944$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1944$2 );
	}
	label$1557:;
	{
		if( OP$1 != 60 ) goto label$1560;
		label$1561:;
		{
			FBSTRING TMP$1946$3;
			__builtin_memset( &TMP$1946$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1946$3, -1, (void*)"cos", 4, 0 );
			SAVE_CALL( &TMP$1946$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1946$3 );
		}
		goto label$1559;
		label$1560:;
		if( OP$1 != 58 ) goto label$1562;
		label$1563:;
		{
			FBSTRING TMP$1948$3;
			__builtin_memset( &TMP$1948$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1948$3, -1, (void*)"sin", 4, 0 );
			SAVE_CALL( &TMP$1948$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1948$3 );
		}
		goto label$1559;
		label$1562:;
		if( OP$1 != 69 ) goto label$1564;
		label$1565:;
		{
			FBSTRING TMP$1950$3;
			__builtin_memset( &TMP$1950$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1950$3, -1, (void*)"exp", 4, 0 );
			SAVE_CALL( &TMP$1950$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1950$3 );
		}
		goto label$1559;
		label$1564:;
		if( OP$1 != 68 ) goto label$1566;
		label$1567:;
		{
			FBSTRING TMP$1952$3;
			__builtin_memset( &TMP$1952$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1952$3, -1, (void*)"log", 4, 0 );
			SAVE_CALL( &TMP$1952$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1952$3 );
		}
		goto label$1559;
		label$1566:;
		if( OP$1 != 61 ) goto label$1568;
		label$1569:;
		{
			FBSTRING TMP$1954$3;
			__builtin_memset( &TMP$1954$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1954$3, -1, (void*)"acos", 5, 0 );
			SAVE_CALL( &TMP$1954$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1954$3 );
		}
		goto label$1559;
		label$1568:;
		if( OP$1 != 59 ) goto label$1570;
		label$1571:;
		{
			FBSTRING TMP$1956$3;
			__builtin_memset( &TMP$1956$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1956$3, -1, (void*)"asin", 5, 0 );
			SAVE_CALL( &TMP$1956$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1956$3 );
		}
		goto label$1559;
		label$1570:;
		if( OP$1 != 62 ) goto label$1572;
		label$1573:;
		{
			FBSTRING TMP$1958$3;
			__builtin_memset( &TMP$1958$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1958$3, -1, (void*)"tan", 4, 0 );
			SAVE_CALL( &TMP$1958$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1958$3 );
		}
		goto label$1559;
		label$1572:;
		if( OP$1 != 63 ) goto label$1574;
		label$1575:;
		{
			FBSTRING TMP$1960$3;
			__builtin_memset( &TMP$1960$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1960$3, -1, (void*)"atan", 5, 0 );
			SAVE_CALL( &TMP$1960$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1960$3 );
		}
		goto label$1559;
		label$1574:;
		if( OP$1 != 56 ) goto label$1576;
		label$1577:;
		{
			FBSTRING TMP$1962$3;
			FBSTRING TMP$1964$3;
			FBSTRING TMP$1966$3;
			FBSTRING TMP$1968$3;
			__builtin_memset( &TMP$1962$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1962$3, -1, (void*)"mov rax, 0x7FFFFFFFFFFFFFFF", 28, 0 );
			HWRITEASM64( &TMP$1962$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1962$3 );
			__builtin_memset( &TMP$1964$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1964$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$1964$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1964$3 );
			__builtin_memset( &TMP$1966$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1966$3, -1, (void*)"andpd xmm1, xmm0", 17, 0 );
			HWRITEASM64( &TMP$1966$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1966$3 );
			__builtin_memset( &TMP$1968$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1968$3, -1, (void*)"movq xmm0, xmm1", 16, 0 );
			HWRITEASM64( &TMP$1968$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1968$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1559;
		label$1576:;
		if( OP$1 != 65 ) goto label$1578;
		label$1579:;
		{
			FBSTRING TMP$1970$3;
			__builtin_memset( &TMP$1970$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1970$3, -1, (void*)"sqrtsd\x09xmm0, xmm0", 18, 0 );
			HWRITEASM64( &TMP$1970$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1970$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1559;
		label$1578:;
		if( OP$1 != 57 ) goto label$1580;
		label$1581:;
		{
			FBSTRING TMP$1972$3;
			__builtin_memset( &TMP$1972$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1972$3, -1, (void*)"fb_SGNDouble", 13, 0 );
			SAVE_CALL( &TMP$1972$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1972$3 );
		}
		goto label$1559;
		label$1580:;
		if( OP$1 != 72 ) goto label$1582;
		label$1583:;
		{
			FBSTRING TMP$1974$3;
			__builtin_memset( &TMP$1974$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1974$3, -1, (void*)"fb_FRACd", 9, 0 );
			SAVE_CALL( &TMP$1974$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1974$3 );
		}
		goto label$1559;
		label$1582:;
		if( OP$1 != 71 ) goto label$1584;
		label$1585:;
		{
			FBSTRING TMP$1976$3;
			__builtin_memset( &TMP$1976$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1976$3, -1, (void*)"fb_FIXDouble", 13, 0 );
			SAVE_CALL( &TMP$1976$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1976$3 );
		}
		goto label$1559;
		label$1584:;
		if( OP$1 != 70 ) goto label$1586;
		label$1587:;
		{
			FBSTRING TMP$1978$3;
			__builtin_memset( &TMP$1978$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1978$3, -1, (void*)"floor", 6, 0 );
			SAVE_CALL( &TMP$1978$3, VR$1, VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1978$3 );
		}
		goto label$1559;
		label$1586:;
		if( OP$1 != 54 ) goto label$1588;
		label$1589:;
		{
			FBSTRING TMP$1981$3;
			FBSTRING TMP$1982$3;
			FBSTRING TMP$1984$3;
			__builtin_memset( &TMP$1981$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1981$3, -1, (void*)"mov rax, 0x8000000000000000", 28, 0 );
			HWRITEASM64( &TMP$1981$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1981$3 );
			__builtin_memset( &TMP$1982$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1982$3, -1, (void*)"movq xmm1, rax", 15, 0 );
			HWRITEASM64( &TMP$1982$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1982$3 );
			__builtin_memset( &TMP$1984$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1984$3, -1, (void*)"xorpd xmm0, xmm1", 17, 0 );
			HWRITEASM64( &TMP$1984$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1984$3 );
			RESTORE_VRREG( VR$1, VRREG$1 );
		}
		goto label$1559;
		label$1588:;
		{
			FBSTRING TMP$1985$3;
			FBSTRING TMP$1988$3;
			FBSTRING TMP$1989$3;
			__builtin_memset( &TMP$1985$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1985$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1985$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1985$3 );
			__builtin_memset( &TMP$1988$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1988$3, -1, (void*)"FOUND AN ERROR : in uop not handled for double", 47, 0 );
			HWRITEASM64( &TMP$1988$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1988$3 );
			__builtin_memset( &TMP$1989$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$1989$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$1989$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$1989$3 );
		}
		label$1590:;
		label$1559:;
	}
	if( OP$1 != 57 ) goto label$1592;
	{
		FBSTRING TMP$1991$2;
		FBSTRING TMP$1992$2;
		FBSTRING TMP$1993$2;
		__builtin_memset( &TMP$1993$2, 0, 12 );
		__builtin_memset( &TMP$1991$2, 0, 12 );
		FBSTRING* vr$681 = fb_StrConcat( &TMP$1991$2, (void*)"movsxd ", 8, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$1992$2, 0, 12 );
		FBSTRING* vr$684 = fb_StrConcat( &TMP$1992$2, (void*)vr$681, -1, (void*)", eax", 6 );
		fb_StrAssign( (void*)&TMP$1993$2, -1, (void*)vr$684, -1, 0 );
		HWRITEASM64( &TMP$1993$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1993$2 );
	}
	goto label$1591;
	label$1592:;
	{
		FBSTRING TMP$1994$2;
		FBSTRING TMP$1995$2;
		FBSTRING TMP$1996$2;
		__builtin_memset( &TMP$1996$2, 0, 12 );
		__builtin_memset( &TMP$1994$2, 0, 12 );
		FBSTRING* vr$692 = fb_StrConcat( &TMP$1994$2, (void*)"movq ", 6, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (2 & 31))), 0 );
		__builtin_memset( &TMP$1995$2, 0, 12 );
		FBSTRING* vr$695 = fb_StrConcat( &TMP$1995$2, (void*)vr$692, -1, (void*)", xmm0", 7 );
		fb_StrAssign( (void*)&TMP$1996$2, -1, (void*)vr$695, -1, 0 );
		HWRITEASM64( &TMP$1996$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$1996$2 );
	}
	label$1591:;
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1416:;
}

static void HEMITROUNDFLOAT( $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	FBSTRING TMP$1998$1;
	FBSTRING TMP$1999$1;
	FBSTRING TMP$2000$1;
	FBSTRING TMP$2010$1;
	FBSTRING TMP$2011$1;
	FBSTRING TMP$2012$1;
	FBSTRING TMP$2013$1;
	FBSTRING TMP$2020$1;
	FBSTRING TMP$2021$1;
	label$1593:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	*(boolean*)((uint8*)&CTX$ + 136) = (boolean)1;
	__builtin_memset( &TMP$1998$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$1998$1, -1, (void*)"test DWORD PTR $sse41[rip], 0b10000000000000000000", 51, 0 );
	HWRITEASM64( &TMP$1998$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$1998$1 );
	uint8* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$6, 0, 0 );
	__builtin_memset( &TMP$2000$1, 0, 12 );
	__builtin_memset( &TMP$1999$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$1999$1, (void*)"je ", 4, (void*)&LNAME1$1, -1 );
	fb_StrAssign( (void*)&TMP$2000$1, -1, (void*)vr$12, -1, 0 );
	HWRITEASM64( &TMP$2000$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2000$1 );
	if( DTYPE1$1 != 16 ) goto label$1596;
	{
		FBSTRING TMP$2002$2;
		__builtin_memset( &TMP$2002$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2002$2, -1, (void*)"roundsd xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2002$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2002$2 );
		if( DTYPE2$1 == 14 ) goto label$1598;
		{
			FBSTRING TMP$2004$3;
			__builtin_memset( &TMP$2004$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2004$3, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2004$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2004$3 );
		}
		label$1598:;
		label$1597:;
	}
	goto label$1595;
	label$1596:;
	{
		FBSTRING TMP$2006$2;
		__builtin_memset( &TMP$2006$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2006$2, -1, (void*)"roundss xmm0,xmm0,4", 20, 0 );
		HWRITEASM64( &TMP$2006$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2006$2 );
		if( DTYPE2$1 == 14 ) goto label$1600;
		{
			FBSTRING TMP$2008$3;
			__builtin_memset( &TMP$2008$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2008$3, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
			HWRITEASM64( &TMP$2008$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2008$3 );
		}
		label$1600:;
		label$1599:;
	}
	label$1595:;
	uint8* vr$32 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$32, 0, 0 );
	__builtin_memset( &TMP$2011$1, 0, 12 );
	__builtin_memset( &TMP$2010$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$2010$1, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
	fb_StrAssign( (void*)&TMP$2011$1, -1, (void*)vr$38, -1, 0 );
	HWRITEASM64( &TMP$2011$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2011$1 );
	__builtin_memset( &TMP$2013$1, 0, 12 );
	__builtin_memset( &TMP$2012$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$2012$1, (void*)&LNAME1$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2013$1, -1, (void*)vr$46, -1, 0 );
	HWRITEASM64( &TMP$2013$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2013$1 );
	if( DTYPE1$1 != 16 ) goto label$1602;
	{
		if( DTYPE2$1 == 14 ) goto label$1604;
		{
			NO_ROUNDSD( (uint8*)"d" );
		}
		goto label$1603;
		label$1604:;
		{
			FBSTRING TMP$2016$3;
			__builtin_memset( &TMP$2016$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2016$3, -1, (void*)"call nearbyint", 15, 0 );
			HWRITEASM64( &TMP$2016$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2016$3 );
		}
		label$1603:;
	}
	goto label$1601;
	label$1602:;
	{
		if( DTYPE2$1 == 14 ) goto label$1606;
		{
			NO_ROUNDSD( (uint8*)"s" );
		}
		goto label$1605;
		label$1606:;
		{
			FBSTRING TMP$2019$3;
			__builtin_memset( &TMP$2019$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2019$3, -1, (void*)"call nearbyintf", 16, 0 );
			HWRITEASM64( &TMP$2019$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2019$3 );
		}
		label$1605:;
	}
	label$1601:;
	__builtin_memset( &TMP$2021$1, 0, 12 );
	__builtin_memset( &TMP$2020$1, 0, 12 );
	FBSTRING* vr$62 = fb_StrConcat( &TMP$2020$1, (void*)&LNAME2$1, -1, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$2021$1, -1, (void*)vr$62, -1, 0 );
	HWRITEASM64( &TMP$2021$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2021$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1594:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2027$1;
	int32 TMP$2028$1;
	int32 TMP$2029$1;
	int32 TMP$2030$1;
	int32 TMP$2087$1;
	int32 TMP$2232$1;
	int32 TMP$2233$1;
	int32 TMP$2399$1;
	int32 TMP$2400$1;
	int32 TMP$2410$1;
	label$1607:;
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 4 );
	$11FB_DATATYPE V2DTYPE$1;
	__builtin_memset( &V2DTYPE$1, 0, 4 );
	$11FB_DATATYPE V1OLD$1;
	__builtin_memset( &V1OLD$1, 0, 4 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 12 );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 12 );
	int32 REGRESULT$1;
	__builtin_memset( &REGRESULT$1, 0, 4 );
	int32 SRCREG$1;
	__builtin_memset( &SRCREG$1, 0, 4 );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)V1$1 == 4 ) goto label$1610;
	{
		FBSTRING TMP$2022$2;
		FBSTRING TMP$2025$2;
		FBSTRING TMP$2026$2;
		__builtin_memset( &TMP$2022$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2022$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2022$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2022$2 );
		__builtin_memset( &TMP$2025$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2025$2, -1, (void*)"FOUND AN ERROR : v1 in converting not a reg", 44, 0 );
		HWRITEASM64( &TMP$2025$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2025$2 );
		__builtin_memset( &TMP$2026$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2026$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2026$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2026$2 );
	}
	label$1610:;
	label$1609:;
	V1DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	V2DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
	if( (-((V1DTYPE$1 & 480) != 0) & -((V2DTYPE$1 & 480) != 0)) == 0 ) goto label$1612;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1612:;
	label$1611:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1614;
	{
		V1DTYPE$1 = 13;
		label$1614:;
	}
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1616;
	{
		V2DTYPE$1 = 13;
		label$1616:;
	}
	if( V1DTYPE$1 != 8 ) goto label$1618;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1617;
	label$1618:;
	if( V1DTYPE$1 != 10 ) goto label$1619;
	{
		V1DTYPE$1 = 13;
	}
	goto label$1617;
	label$1619:;
	if( V1DTYPE$1 != 9 ) goto label$1620;
	{
		V1DTYPE$1 = 14;
	}
	label$1620:;
	label$1617:;
	if( V2DTYPE$1 != 8 ) goto label$1622;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1621;
	label$1622:;
	if( V2DTYPE$1 != 10 ) goto label$1623;
	{
		V2DTYPE$1 = 13;
	}
	goto label$1621;
	label$1623:;
	if( V2DTYPE$1 != 9 ) goto label$1624;
	{
		V2DTYPE$1 = 14;
	}
	label$1624:;
	label$1621:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1625;
	TMP$2027$1 = 24;
	goto label$3008;
	label$1625:;
	TMP$2027$1 = V1DTYPE$1 & 31;
	label$3008:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1626;
	TMP$2028$1 = 24;
	goto label$3009;
	label$1626:;
	TMP$2028$1 = V2DTYPE$1 & 31;
	label$3009:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1627;
	TMP$2029$1 = 24;
	goto label$3010;
	label$1627:;
	TMP$2029$1 = V1DTYPE$1 & 31;
	label$3010:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1628;
	TMP$2030$1 = 24;
	goto label$3011;
	label$1628:;
	TMP$2030$1 = V2DTYPE$1 & 31;
	label$3011:;
	if( (((-(*(int32*)V1$1 == 4) & -(*(int32*)V2$1 == 4)) & -(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2027$1 * 28)) + 4) == *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2028$1 * 28)) + 4))) & -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2029$1 * 28)) == *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2030$1 * 28)))) == 0 ) goto label$1630;
	{
		*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1630:;
	label$1629:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 13)) | (-(V1DTYPE$1 == 14) & -(V2DTYPE$1 == 14))) == 0 ) goto label$1632;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1632:;
	label$1631:;
	if( ((-(V1DTYPE$1 == 13) & -(V2DTYPE$1 == 14)) | (-(V2DTYPE$1 == 13) & -(V1DTYPE$1 == 14))) == 0 ) goto label$1634;
	{
		V1OLD$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
		__builtin_memcpy( V1$1, V2$1, 72 );
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = V1OLD$1;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1634:;
	label$1633:;
	if( (-(V1DTYPE$1 == 17) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1636;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1636:;
	label$1635:;
	if( (-(V1DTYPE$1 == 20) & -(V2DTYPE$1 == 20)) == 0 ) goto label$1638;
	{
		__builtin_memcpy( V1$1, V2$1, 72 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1638:;
	label$1637:;
	REG_FINDFREE( *(int32*)((uint8*)V1$1 + 12), -1 );
	int32 vr$140 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
	REGRESULT$1 = vr$140;
	if( V1DTYPE$1 != 17 ) goto label$1640;
	{
		V1DTYPE$1 = 13;
		label$1640:;
	}
	{
		if( V1DTYPE$1 == 13 ) goto label$1643;
		label$1644:;
		if( V1DTYPE$1 == 14 ) goto label$1643;
		label$1645:;
		if( V1DTYPE$1 == 16 ) goto label$1643;
		label$1646:;
		if( V1DTYPE$1 != 20 ) goto label$1642;
		label$1643:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1641;
		label$1642:;
		if( V1DTYPE$1 == 11 ) goto label$1648;
		label$1649:;
		if( V1DTYPE$1 == 12 ) goto label$1648;
		label$1650:;
		if( V1DTYPE$1 != 15 ) goto label$1647;
		label$1648:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1641;
		label$1647:;
		if( V1DTYPE$1 == 5 ) goto label$1652;
		label$1653:;
		if( V1DTYPE$1 != 6 ) goto label$1651;
		label$1652:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1641;
		label$1651:;
		if( V1DTYPE$1 == 2 ) goto label$1655;
		label$1656:;
		if( V1DTYPE$1 == 3 ) goto label$1655;
		label$1657:;
		if( V1DTYPE$1 == 1 ) goto label$1655;
		label$1658:;
		if( V1DTYPE$1 != 4 ) goto label$1654;
		label$1655:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (REGRESULT$1 << (2 & 31))), 0, 0 );
		}
		goto label$1641;
		label$1654:;
		{
			FBSTRING TMP$2031$3;
			FBSTRING TMP$2035$3;
			FBSTRING TMP$2036$3;
			FBSTRING TMP$2037$3;
			__builtin_memset( &TMP$2031$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2031$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2031$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2031$3 );
			__builtin_memset( &TMP$2036$3, 0, 12 );
			FBSTRING* vr$159 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
			__builtin_memset( &TMP$2035$3, 0, 12 );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$2035$3, (void*)"FOUND AN ERROR : converting datatype not handled 01 = ", 55, (void*)vr$159, -1 );
			fb_StrAssign( (void*)&TMP$2036$3, -1, (void*)vr$162, -1, 0 );
			HWRITEASM64( &TMP$2036$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2036$3 );
			__builtin_memset( &TMP$2037$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2037$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2037$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2037$3 );
		}
		label$1659:;
		label$1641:;
	}
	{
		if( V2DTYPE$1 == 13 ) goto label$1662;
		label$1663:;
		if( V2DTYPE$1 == 14 ) goto label$1662;
		label$1664:;
		if( V2DTYPE$1 == 16 ) goto label$1662;
		label$1665:;
		if( V2DTYPE$1 != 20 ) goto label$1661;
		label$1662:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"QWORD PTR ", 11, 0 );
		}
		goto label$1660;
		label$1661:;
		if( V2DTYPE$1 == 11 ) goto label$1667;
		label$1668:;
		if( V2DTYPE$1 == 12 ) goto label$1667;
		label$1669:;
		if( V2DTYPE$1 != 15 ) goto label$1666;
		label$1667:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
		}
		goto label$1660;
		label$1666:;
		if( V2DTYPE$1 == 5 ) goto label$1671;
		label$1672:;
		if( V2DTYPE$1 != 6 ) goto label$1670;
		label$1671:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
		}
		goto label$1660;
		label$1670:;
		if( V2DTYPE$1 == 2 ) goto label$1674;
		label$1675:;
		if( V2DTYPE$1 == 3 ) goto label$1674;
		label$1676:;
		if( V2DTYPE$1 == 1 ) goto label$1674;
		label$1677:;
		if( V2DTYPE$1 != 4 ) goto label$1673;
		label$1674:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"BYTE PTR ", 10, 0 );
		}
		goto label$1660;
		label$1673:;
		if( V2DTYPE$1 != 7 ) goto label$1678;
		label$1679:;
		{
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + 200) != 2 ) goto label$1681;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"WORD PTR ", 10, 0 );
				V2DTYPE$1 = 6;
			}
			goto label$1680;
			label$1681:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + 200) != 4 ) goto label$1682;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"DWORD PTR ", 11, 0 );
				V2DTYPE$1 = 12;
			}
			goto label$1680;
			label$1682:;
			{
				FBSTRING TMP$2038$4;
				FBSTRING TMP$2041$4;
				FBSTRING TMP$2042$4;
				__builtin_memset( &TMP$2038$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2038$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2038$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2038$4 );
				__builtin_memset( &TMP$2041$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2041$4, -1, (void*)"FOUND AN ERROR : converting datatype WCHAR not handled", 55, 0 );
				HWRITEASM64( &TMP$2041$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2041$4 );
				__builtin_memset( &TMP$2042$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2042$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2042$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2042$4 );
			}
			label$1680:;
		}
		goto label$1660;
		label$1678:;
		{
			FBSTRING TMP$2043$3;
			FBSTRING TMP$2047$3;
			FBSTRING TMP$2048$3;
			FBSTRING TMP$2049$3;
			__builtin_memset( &TMP$2043$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2043$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2043$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2043$3 );
			__builtin_memset( &TMP$2048$3, 0, 12 );
			FBSTRING* vr$194 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
			__builtin_memset( &TMP$2047$3, 0, 12 );
			FBSTRING* vr$197 = fb_StrConcat( &TMP$2047$3, (void*)"FOUND AN ERROR : converting datatype not handled 02 = ", 55, (void*)vr$194, -1 );
			fb_StrAssign( (void*)&TMP$2048$3, -1, (void*)vr$197, -1, 0 );
			HWRITEASM64( &TMP$2048$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2048$3 );
			__builtin_memset( &TMP$2049$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2049$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2049$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2049$3 );
		}
		label$1683:;
		label$1660:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$2050$2;
		TMP$2050$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2050$2 != 2 ) goto label$1685;
		label$1686:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1684;
		label$1685:;
		if( TMP$2050$2 != 4 ) goto label$1687;
		label$1688:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1, (void*)"", 1, 0 );
			int32 vr$210 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
			SRCREG$1 = vr$210;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1690;
			{
				V2DTYPE$1 = 13;
				label$1690:;
			}
			{
				if( V2DTYPE$1 == 13 ) goto label$1693;
				label$1694:;
				if( V2DTYPE$1 == 14 ) goto label$1693;
				label$1695:;
				if( V2DTYPE$1 != 16 ) goto label$1692;
				label$1693:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1691;
				label$1692:;
				if( V2DTYPE$1 == 11 ) goto label$1697;
				label$1698:;
				if( V2DTYPE$1 == 12 ) goto label$1697;
				label$1699:;
				if( V2DTYPE$1 != 15 ) goto label$1696;
				label$1697:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1691;
				label$1696:;
				if( V2DTYPE$1 == 5 ) goto label$1701;
				label$1702:;
				if( V2DTYPE$1 != 6 ) goto label$1700;
				label$1701:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1691;
				label$1700:;
				if( V2DTYPE$1 == 2 ) goto label$1704;
				label$1705:;
				if( V2DTYPE$1 == 3 ) goto label$1704;
				label$1706:;
				if( V2DTYPE$1 == 1 ) goto label$1704;
				label$1707:;
				if( V2DTYPE$1 != 4 ) goto label$1703;
				label$1704:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1691;
				label$1703:;
				{
					FBSTRING TMP$2051$5;
					FBSTRING TMP$2055$5;
					FBSTRING TMP$2056$5;
					FBSTRING TMP$2057$5;
					__builtin_memset( &TMP$2051$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2051$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2051$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2051$5 );
					__builtin_memset( &TMP$2056$5, 0, 12 );
					FBSTRING* vr$226 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2055$5, 0, 12 );
					FBSTRING* vr$229 = fb_StrConcat( &TMP$2055$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$226, -1 );
					fb_StrAssign( (void*)&TMP$2056$5, -1, (void*)vr$229, -1, 0 );
					HWRITEASM64( &TMP$2056$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2056$5 );
					__builtin_memset( &TMP$2057$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2057$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2057$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2057$5 );
				}
				label$1708:;
				label$1691:;
			}
		}
		goto label$1684;
		label$1687:;
		if( TMP$2050$2 != 1 ) goto label$1709;
		label$1710:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1712;
			{
				FBSTRING TMP$2058$4;
				FBSTRING TMP$2059$4;
				FBSTRING TMP$2060$4;
				FBSTRING* vr$247 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$249 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2058$4, 0, 12 );
				FBSTRING* vr$252 = fb_StrConcat( &TMP$2058$4, (void*)vr$249, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2059$4, 0, 12 );
				FBSTRING* vr$255 = fb_StrConcat( &TMP$2059$4, (void*)vr$252, -1, (void*)vr$247, -1 );
				__builtin_memset( &TMP$2060$4, 0, 12 );
				FBSTRING* vr$258 = fb_StrConcat( &TMP$2060$4, (void*)vr$255, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$258, -1, 0 );
			}
			goto label$1711;
			label$1712:;
			{
				FBSTRING TMP$2061$4;
				FBSTRING* vr$261 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2061$4, 0, 12 );
				FBSTRING* vr$264 = fb_StrConcat( &TMP$2061$4, (void*)vr$261, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$264, -1, 0 );
			}
			label$1711:;
		}
		goto label$1684;
		label$1709:;
		if( TMP$2050$2 != 3 ) goto label$1713;
		label$1714:;
		{
			FBSTRING TMP$2062$3;
			FBSTRING TMP$2063$3;
			FBSTRING TMP$2064$3;
			int32 vr$268 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
			FBSTRING* vr$271 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			__builtin_memset( &TMP$2062$3, 0, 12 );
			FBSTRING* vr$274 = fb_StrConcat( &TMP$2062$3, (void*)vr$271, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2063$3, 0, 12 );
			FBSTRING* vr$277 = fb_StrConcat( &TMP$2063$3, (void*)vr$274, -1, *(void**)((uint8*)REGSTRQ$ + (vr$268 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2064$3, 0, 12 );
			FBSTRING* vr$280 = fb_StrConcat( &TMP$2064$3, (void*)vr$277, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$280, -1, 0 );
		}
		goto label$1684;
		label$1713:;
		if( TMP$2050$2 != 5 ) goto label$1715;
		label$1716:;
		{
			FBSTRING TMP$2065$3;
			FBSTRING TMP$2066$3;
			FBSTRING TMP$2067$3;
			int32 TMP$2068$3;
			int32 TMP$2069$3;
			FBSTRING* vr$283 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$285 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2065$3, 0, 12 );
			FBSTRING* vr$288 = fb_StrConcat( &TMP$2065$3, (void*)vr$285, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2066$3, 0, 12 );
			FBSTRING* vr$291 = fb_StrConcat( &TMP$2066$3, (void*)vr$288, -1, (void*)vr$283, -1 );
			__builtin_memset( &TMP$2067$3, 0, 12 );
			FBSTRING* vr$294 = fb_StrConcat( &TMP$2067$3, (void*)vr$291, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$294, -1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$1717;
			TMP$2068$3 = -(*(int32*)((uint8*)&CTX$ + 212) == 2);
			goto label$3012;
			label$1717:;
			TMP$2068$3 = 0;
			label$3012:;
			if( TMP$2068$3 == 0 ) goto label$1718;
			int32 vr$299 = FBGETOPTION( 0 );
			TMP$2069$3 = -(vr$299 == 2);
			goto label$3013;
			label$1718:;
			TMP$2069$3 = 0;
			label$3013:;
			if( TMP$2069$3 == 0 ) goto label$1720;
			{
				FBSTRING TMP$2071$4;
				FBSTRING TMP$2072$4;
				FBSTRING TMP$2073$4;
				FBSTRING TMP$2074$4;
				FBSTRING TMP$2075$4;
				FBSTRING TMP$2076$4;
				__builtin_memset( &TMP$2073$4, 0, 12 );
				FBSTRING* vr$302 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$304 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$302 );
				FBSTRING* vr$307 = fb_LEFT( (FBSTRING*)&OP2$1, vr$304 + -1 );
				__builtin_memset( &TMP$2071$4, 0, 12 );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$2071$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$307, -1 );
				__builtin_memset( &TMP$2072$4, 0, 12 );
				FBSTRING* vr$313 = fb_StrConcat( &TMP$2072$4, (void*)vr$310, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2073$4, -1, (void*)vr$313, -1, 0 );
				HWRITEASM64( &TMP$2073$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2073$4 );
				__builtin_memset( &TMP$2076$4, 0, 12 );
				__builtin_memset( &TMP$2074$4, 0, 12 );
				FBSTRING* vr$321 = fb_StrConcat( &TMP$2074$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2075$4, 0, 12 );
				FBSTRING* vr$324 = fb_StrConcat( &TMP$2075$4, (void*)vr$321, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2076$4, -1, (void*)vr$324, -1, 0 );
				HWRITEASM64( &TMP$2076$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2076$4 );
			}
			goto label$1719;
			label$1720:;
			{
				FBSTRING TMP$2077$4;
				FBSTRING TMP$2078$4;
				FBSTRING TMP$2079$4;
				FBSTRING TMP$2080$4;
				__builtin_memset( &TMP$2080$4, 0, 12 );
				__builtin_memset( &TMP$2077$4, 0, 12 );
				FBSTRING* vr$333 = fb_StrConcat( &TMP$2077$4, (void*)"lea ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2078$4, 0, 12 );
				FBSTRING* vr$336 = fb_StrConcat( &TMP$2078$4, (void*)vr$333, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2079$4, 0, 12 );
				FBSTRING* vr$339 = fb_StrConcat( &TMP$2079$4, (void*)vr$336, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2080$4, -1, (void*)vr$339, -1, 0 );
				HWRITEASM64( &TMP$2080$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2080$4 );
			}
			label$1719:;
			fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
			fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
			fb_StrDelete( (FBSTRING*)&OP4$1 );
			fb_StrDelete( (FBSTRING*)&OP3$1 );
			fb_StrDelete( (FBSTRING*)&OP2$1 );
			fb_StrDelete( (FBSTRING*)&OP1$1 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			fb_StrDelete( (FBSTRING*)&LNAME2$1 );
			fb_StrDelete( (FBSTRING*)&LNAME1$1 );
			goto label$1608;
		}
		goto label$1684;
		label$1715:;
		if( TMP$2050$2 != 0 ) goto label$1721;
		label$1722:;
		{
			int32 TMP$2081$3;
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1723;
			TMP$2081$3 = 24;
			goto label$3014;
			label$1723:;
			TMP$2081$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3014:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2081$3 * 28)) != 1 ) goto label$1725;
			{
				FBSTRING* vr$360 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$360, -1, 0 );
			}
			goto label$1724;
			label$1725:;
			{
				FBSTRING* vr$363 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$363, -1, 0 );
			}
			label$1724:;
		}
		goto label$1684;
		label$1721:;
		{
			FBSTRING TMP$2082$3;
			FBSTRING TMP$2085$3;
			FBSTRING TMP$2086$3;
			__builtin_memset( &TMP$2082$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2082$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2082$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2082$3 );
			__builtin_memset( &TMP$2085$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2085$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2085$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2085$3 );
			__builtin_memset( &TMP$2086$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2086$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2086$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2086$3 );
		}
		label$1726:;
		label$1684:;
	}
	int32 vr$378 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
	if( vr$378 == 0 ) goto label$1728;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1728:;
	}
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1729;
	TMP$2087$1 = 24;
	goto label$3015;
	label$1729:;
	TMP$2087$1 = V1DTYPE$1 & 31;
	label$3015:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2087$1 * 28)) != 1 ) goto label$1731;
	{
		int32 TMP$2088$2;
		if( (V2DTYPE$1 & 480) == 0 ) goto label$1732;
		TMP$2088$2 = 24;
		goto label$3016;
		label$1732:;
		TMP$2088$2 = V2DTYPE$1 & 31;
		label$3016:;
		if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2088$2 * 28)) != 1 ) goto label$1734;
		{
			if( V1DTYPE$1 != 16 ) goto label$1736;
			{
				FBSTRING TMP$2093$4;
				FBSTRING TMP$2094$4;
				FBSTRING TMP$2095$4;
				FBSTRING TMP$2096$4;
				FBSTRING TMP$2097$4;
				if( *(int32*)V2$1 != 4 ) goto label$1738;
				{
					FBSTRING TMP$2089$5;
					FBSTRING TMP$2090$5;
					__builtin_memset( &TMP$2090$5, 0, 12 );
					__builtin_memset( &TMP$2089$5, 0, 12 );
					FBSTRING* vr$391 = fb_StrConcat( &TMP$2089$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2090$5, -1, (void*)vr$391, -1, 0 );
					HWRITEASM64( &TMP$2090$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2090$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm0", 5, 0 );
				}
				label$1738:;
				label$1737:;
				__builtin_memset( &TMP$2094$4, 0, 12 );
				__builtin_memset( &TMP$2093$4, 0, 12 );
				FBSTRING* vr$400 = fb_StrConcat( &TMP$2093$4, (void*)"cvtss2sd xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2094$4, -1, (void*)vr$400, -1, 0 );
				HWRITEASM64( &TMP$2094$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2094$4 );
				__builtin_memset( &TMP$2097$4, 0, 12 );
				__builtin_memset( &TMP$2095$4, 0, 12 );
				FBSTRING* vr$408 = fb_StrConcat( &TMP$2095$4, (void*)"movq ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2096$4, 0, 12 );
				FBSTRING* vr$411 = fb_StrConcat( &TMP$2096$4, (void*)vr$408, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2097$4, -1, (void*)vr$411, -1, 0 );
				HWRITEASM64( &TMP$2097$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2097$4 );
			}
			goto label$1735;
			label$1736:;
			{
				FBSTRING TMP$2103$4;
				FBSTRING TMP$2104$4;
				FBSTRING TMP$2105$4;
				FBSTRING TMP$2106$4;
				FBSTRING TMP$2107$4;
				if( *(int32*)V2$1 != 4 ) goto label$1740;
				{
					FBSTRING TMP$2099$5;
					FBSTRING TMP$2100$5;
					__builtin_memset( &TMP$2100$5, 0, 12 );
					__builtin_memset( &TMP$2099$5, 0, 12 );
					FBSTRING* vr$420 = fb_StrConcat( &TMP$2099$5, (void*)"movq xmm1, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2100$5, -1, (void*)vr$420, -1, 0 );
					HWRITEASM64( &TMP$2100$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2100$5 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)"xmm1", 5, 0 );
				}
				label$1740:;
				label$1739:;
				__builtin_memset( &TMP$2104$4, 0, 12 );
				__builtin_memset( &TMP$2103$4, 0, 12 );
				FBSTRING* vr$429 = fb_StrConcat( &TMP$2103$4, (void*)"cvtsd2ss xmm0, ", 16, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2104$4, -1, (void*)vr$429, -1, 0 );
				HWRITEASM64( &TMP$2104$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2104$4 );
				__builtin_memset( &TMP$2107$4, 0, 12 );
				__builtin_memset( &TMP$2105$4, 0, 12 );
				FBSTRING* vr$437 = fb_StrConcat( &TMP$2105$4, (void*)"movd ", 6, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2106$4, 0, 12 );
				FBSTRING* vr$440 = fb_StrConcat( &TMP$2106$4, (void*)vr$437, -1, (void*)", xmm0", 7 );
				fb_StrAssign( (void*)&TMP$2107$4, -1, (void*)vr$440, -1, 0 );
				HWRITEASM64( &TMP$2107$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2107$4 );
			}
			label$1735:;
		}
		goto label$1733;
		label$1734:;
		{
			FBSTRING TMP$2109$3;
			__builtin_memset( &TMP$2109$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2109$3, -1, (void*)"pxor xmm0,xmm0", 15, 0 );
			HWRITEASM64( &TMP$2109$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2109$3 );
			{
				if( V2DTYPE$1 != 14 ) goto label$1742;
				label$1743:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1745;
					{
						FBSTRING TMP$2110$6;
						FBSTRING TMP$2111$6;
						FBSTRING TMP$2113$6;
						FBSTRING TMP$2115$6;
						FBSTRING TMP$2116$6;
						FBSTRING TMP$2118$6;
						FBSTRING TMP$2119$6;
						FBSTRING TMP$2120$6;
						FBSTRING TMP$2121$6;
						FBSTRING TMP$2122$6;
						FBSTRING TMP$2123$6;
						FBSTRING TMP$2124$6;
						FBSTRING TMP$2125$6;
						FBSTRING TMP$2126$6;
						FBSTRING TMP$2127$6;
						FBSTRING TMP$2129$6;
						FBSTRING TMP$2130$6;
						FBSTRING TMP$2131$6;
						FBSTRING TMP$2132$6;
						FBSTRING TMP$2134$6;
						FBSTRING TMP$2135$6;
						FBSTRING TMP$2137$6;
						FBSTRING TMP$2138$6;
						FBSTRING TMP$2139$6;
						FBSTRING TMP$2140$6;
						FBSTRING TMP$2141$6;
						FBSTRING TMP$2142$6;
						__builtin_memset( &TMP$2111$6, 0, 12 );
						__builtin_memset( &TMP$2110$6, 0, 12 );
						FBSTRING* vr$452 = fb_StrConcat( &TMP$2110$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2111$6, -1, (void*)vr$452, -1, 0 );
						HWRITEASM64( &TMP$2111$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2111$6 );
						__builtin_memset( &TMP$2113$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2113$6, -1, (void*)"test\x09rax, rax", 14, 0 );
						HWRITEASM64( &TMP$2113$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2113$6 );
						uint8* vr$460 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$460, 0, 0 );
						__builtin_memset( &TMP$2116$6, 0, 12 );
						__builtin_memset( &TMP$2115$6, 0, 12 );
						FBSTRING* vr$466 = fb_StrConcat( &TMP$2115$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2116$6, -1, (void*)vr$466, -1, 0 );
						HWRITEASM64( &TMP$2116$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2116$6 );
						__builtin_memset( &TMP$2118$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2118$6, -1, (void*)"cvtsi2sd xmm0, rax", 19, 0 );
						HWRITEASM64( &TMP$2118$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2118$6 );
						uint8* vr$474 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$474, 0, 0 );
						__builtin_memset( &TMP$2120$6, 0, 12 );
						__builtin_memset( &TMP$2119$6, 0, 12 );
						FBSTRING* vr$480 = fb_StrConcat( &TMP$2119$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2120$6, -1, (void*)vr$480, -1, 0 );
						HWRITEASM64( &TMP$2120$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2120$6 );
						__builtin_memset( &TMP$2122$6, 0, 12 );
						__builtin_memset( &TMP$2121$6, 0, 12 );
						FBSTRING* vr$488 = fb_StrConcat( &TMP$2121$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2122$6, -1, (void*)vr$488, -1, 0 );
						HWRITEASM64( &TMP$2122$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2122$6 );
						int32 vr$492 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$492;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((uint8*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2125$6, 0, 12 );
						__builtin_memset( &TMP$2123$6, 0, 12 );
						FBSTRING* vr$500 = fb_StrConcat( &TMP$2123$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2124$6, 0, 12 );
						FBSTRING* vr$503 = fb_StrConcat( &TMP$2124$6, (void*)vr$500, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2125$6, -1, (void*)vr$503, -1, 0 );
						HWRITEASM64( &TMP$2125$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2125$6 );
						__builtin_memset( &TMP$2127$6, 0, 12 );
						__builtin_memset( &TMP$2126$6, 0, 12 );
						FBSTRING* vr$511 = fb_StrConcat( &TMP$2126$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2127$6, -1, (void*)vr$511, -1, 0 );
						HWRITEASM64( &TMP$2127$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2127$6 );
						__builtin_memset( &TMP$2129$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2129$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2129$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2129$6 );
						__builtin_memset( &TMP$2132$6, 0, 12 );
						__builtin_memset( &TMP$2130$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$2130$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2131$6, 0, 12 );
						FBSTRING* vr$526 = fb_StrConcat( &TMP$2131$6, (void*)vr$523, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2132$6, -1, (void*)vr$526, -1, 0 );
						HWRITEASM64( &TMP$2132$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2132$6 );
						__builtin_memset( &TMP$2135$6, 0, 12 );
						__builtin_memset( &TMP$2134$6, 0, 12 );
						FBSTRING* vr$534 = fb_StrConcat( &TMP$2134$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2135$6, -1, (void*)vr$534, -1, 0 );
						HWRITEASM64( &TMP$2135$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2135$6 );
						__builtin_memset( &TMP$2137$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2137$6, -1, (void*)"addsd xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2137$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2137$6 );
						__builtin_memset( &TMP$2139$6, 0, 12 );
						__builtin_memset( &TMP$2138$6, 0, 12 );
						FBSTRING* vr$546 = fb_StrConcat( &TMP$2138$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2139$6, -1, (void*)vr$546, -1, 0 );
						HWRITEASM64( &TMP$2139$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2139$6 );
						__builtin_memset( &TMP$2142$6, 0, 12 );
						__builtin_memset( &TMP$2140$6, 0, 12 );
						FBSTRING* vr$554 = fb_StrConcat( &TMP$2140$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2141$6, 0, 12 );
						FBSTRING* vr$557 = fb_StrConcat( &TMP$2141$6, (void*)vr$554, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2142$6, -1, (void*)vr$557, -1, 0 );
						HWRITEASM64( &TMP$2142$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2142$6 );
					}
					goto label$1744;
					label$1745:;
					{
						FBSTRING TMP$2143$6;
						FBSTRING TMP$2144$6;
						FBSTRING TMP$2146$6;
						FBSTRING TMP$2147$6;
						FBSTRING TMP$2148$6;
						FBSTRING TMP$2150$6;
						FBSTRING TMP$2151$6;
						FBSTRING TMP$2152$6;
						FBSTRING TMP$2153$6;
						FBSTRING TMP$2154$6;
						FBSTRING TMP$2155$6;
						FBSTRING TMP$2156$6;
						FBSTRING TMP$2157$6;
						FBSTRING TMP$2158$6;
						FBSTRING TMP$2159$6;
						FBSTRING TMP$2160$6;
						FBSTRING TMP$2161$6;
						FBSTRING TMP$2162$6;
						FBSTRING TMP$2163$6;
						FBSTRING TMP$2165$6;
						FBSTRING TMP$2166$6;
						FBSTRING TMP$2168$6;
						FBSTRING TMP$2169$6;
						FBSTRING TMP$2170$6;
						FBSTRING TMP$2171$6;
						FBSTRING TMP$2172$6;
						FBSTRING TMP$2173$6;
						__builtin_memset( &TMP$2144$6, 0, 12 );
						__builtin_memset( &TMP$2143$6, 0, 12 );
						FBSTRING* vr$565 = fb_StrConcat( &TMP$2143$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2144$6, -1, (void*)vr$565, -1, 0 );
						HWRITEASM64( &TMP$2144$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2144$6 );
						__builtin_memset( &TMP$2146$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2146$6, -1, (void*)"test rax, rax", 14, 0 );
						HWRITEASM64( &TMP$2146$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2146$6 );
						uint8* vr$573 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$573, 0, 0 );
						__builtin_memset( &TMP$2148$6, 0, 12 );
						__builtin_memset( &TMP$2147$6, 0, 12 );
						FBSTRING* vr$579 = fb_StrConcat( &TMP$2147$6, (void*)"js ", 4, (void*)&LNAME1$1, -1 );
						fb_StrAssign( (void*)&TMP$2148$6, -1, (void*)vr$579, -1, 0 );
						HWRITEASM64( &TMP$2148$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2148$6 );
						__builtin_memset( &TMP$2150$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2150$6, -1, (void*)"cvtsi2ss\x09xmm0, rax", 19, 0 );
						HWRITEASM64( &TMP$2150$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2150$6 );
						uint8* vr$587 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$587, 0, 0 );
						__builtin_memset( &TMP$2152$6, 0, 12 );
						__builtin_memset( &TMP$2151$6, 0, 12 );
						FBSTRING* vr$593 = fb_StrConcat( &TMP$2151$6, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
						fb_StrAssign( (void*)&TMP$2152$6, -1, (void*)vr$593, -1, 0 );
						HWRITEASM64( &TMP$2152$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2152$6 );
						__builtin_memset( &TMP$2154$6, 0, 12 );
						__builtin_memset( &TMP$2153$6, 0, 12 );
						FBSTRING* vr$601 = fb_StrConcat( &TMP$2153$6, (void*)&LNAME1$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2154$6, -1, (void*)vr$601, -1, 0 );
						HWRITEASM64( &TMP$2154$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2154$6 );
						int32 vr$605 = REG_FINDFREE( 999999, -1 );
						REG$1 = vr$605;
						fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
						*(int32*)((uint8*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
						__builtin_memset( &TMP$2157$6, 0, 12 );
						__builtin_memset( &TMP$2155$6, 0, 12 );
						FBSTRING* vr$613 = fb_StrConcat( &TMP$2155$6, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2156$6, 0, 12 );
						FBSTRING* vr$616 = fb_StrConcat( &TMP$2156$6, (void*)vr$613, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2157$6, -1, (void*)vr$616, -1, 0 );
						HWRITEASM64( &TMP$2157$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2157$6 );
						__builtin_memset( &TMP$2159$6, 0, 12 );
						__builtin_memset( &TMP$2158$6, 0, 12 );
						FBSTRING* vr$624 = fb_StrConcat( &TMP$2158$6, (void*)"shr ", 5, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2159$6, -1, (void*)vr$624, -1, 0 );
						HWRITEASM64( &TMP$2159$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2159$6 );
						__builtin_memset( &TMP$2160$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2160$6, -1, (void*)"and eax, 1", 11, 0 );
						HWRITEASM64( &TMP$2160$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2160$6 );
						__builtin_memset( &TMP$2163$6, 0, 12 );
						__builtin_memset( &TMP$2161$6, 0, 12 );
						FBSTRING* vr$636 = fb_StrConcat( &TMP$2161$6, (void*)"or ", 4, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2162$6, 0, 12 );
						FBSTRING* vr$639 = fb_StrConcat( &TMP$2162$6, (void*)vr$636, -1, (void*)", rax", 6 );
						fb_StrAssign( (void*)&TMP$2163$6, -1, (void*)vr$639, -1, 0 );
						HWRITEASM64( &TMP$2163$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2163$6 );
						__builtin_memset( &TMP$2166$6, 0, 12 );
						__builtin_memset( &TMP$2165$6, 0, 12 );
						FBSTRING* vr$647 = fb_StrConcat( &TMP$2165$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&REGTEMPO$1, -1 );
						fb_StrAssign( (void*)&TMP$2166$6, -1, (void*)vr$647, -1, 0 );
						HWRITEASM64( &TMP$2166$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2166$6 );
						__builtin_memset( &TMP$2168$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2168$6, -1, (void*)"addss xmm0, xmm0", 17, 0 );
						HWRITEASM64( &TMP$2168$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2168$6 );
						__builtin_memset( &TMP$2170$6, 0, 12 );
						__builtin_memset( &TMP$2169$6, 0, 12 );
						FBSTRING* vr$659 = fb_StrConcat( &TMP$2169$6, (void*)&LNAME2$1, -1, (void*)":", 2 );
						fb_StrAssign( (void*)&TMP$2170$6, -1, (void*)vr$659, -1, 0 );
						HWRITEASM64( &TMP$2170$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2170$6 );
						__builtin_memset( &TMP$2173$6, 0, 12 );
						__builtin_memset( &TMP$2171$6, 0, 12 );
						FBSTRING* vr$667 = fb_StrConcat( &TMP$2171$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2172$6, 0, 12 );
						FBSTRING* vr$670 = fb_StrConcat( &TMP$2172$6, (void*)vr$667, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2173$6, -1, (void*)vr$670, -1, 0 );
						HWRITEASM64( &TMP$2173$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2173$6 );
					}
					label$1744:;
				}
				goto label$1741;
				label$1742:;
				if( V2DTYPE$1 != 13 ) goto label$1746;
				label$1747:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1749;
					{
						FBSTRING TMP$2174$6;
						FBSTRING TMP$2175$6;
						FBSTRING TMP$2176$6;
						FBSTRING TMP$2177$6;
						FBSTRING TMP$2178$6;
						FBSTRING TMP$2179$6;
						__builtin_memset( &TMP$2176$6, 0, 12 );
						__builtin_memset( &TMP$2174$6, 0, 12 );
						FBSTRING* vr$679 = fb_StrConcat( &TMP$2174$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2175$6, 0, 12 );
						FBSTRING* vr$682 = fb_StrConcat( &TMP$2175$6, (void*)vr$679, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2176$6, -1, (void*)vr$682, -1, 0 );
						HWRITEASM64( &TMP$2176$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2176$6 );
						__builtin_memset( &TMP$2179$6, 0, 12 );
						__builtin_memset( &TMP$2177$6, 0, 12 );
						FBSTRING* vr$690 = fb_StrConcat( &TMP$2177$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2178$6, 0, 12 );
						FBSTRING* vr$693 = fb_StrConcat( &TMP$2178$6, (void*)vr$690, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2179$6, -1, (void*)vr$693, -1, 0 );
						HWRITEASM64( &TMP$2179$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2179$6 );
					}
					goto label$1748;
					label$1749:;
					{
						FBSTRING TMP$2180$6;
						FBSTRING TMP$2181$6;
						FBSTRING TMP$2182$6;
						FBSTRING TMP$2183$6;
						FBSTRING TMP$2184$6;
						FBSTRING TMP$2185$6;
						__builtin_memset( &TMP$2182$6, 0, 12 );
						__builtin_memset( &TMP$2180$6, 0, 12 );
						FBSTRING* vr$702 = fb_StrConcat( &TMP$2180$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2181$6, 0, 12 );
						FBSTRING* vr$705 = fb_StrConcat( &TMP$2181$6, (void*)vr$702, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2182$6, -1, (void*)vr$705, -1, 0 );
						HWRITEASM64( &TMP$2182$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2182$6 );
						__builtin_memset( &TMP$2185$6, 0, 12 );
						__builtin_memset( &TMP$2183$6, 0, 12 );
						FBSTRING* vr$713 = fb_StrConcat( &TMP$2183$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2184$6, 0, 12 );
						FBSTRING* vr$716 = fb_StrConcat( &TMP$2184$6, (void*)vr$713, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2185$6, -1, (void*)vr$716, -1, 0 );
						HWRITEASM64( &TMP$2185$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2185$6 );
					}
					label$1748:;
				}
				goto label$1741;
				label$1746:;
				if( V2DTYPE$1 == 11 ) goto label$1751;
				label$1752:;
				if( V2DTYPE$1 != 12 ) goto label$1750;
				label$1751:;
				{
					if( V1DTYPE$1 != 16 ) goto label$1754;
					{
						FBSTRING TMP$2186$6;
						FBSTRING TMP$2187$6;
						FBSTRING TMP$2188$6;
						FBSTRING TMP$2189$6;
						FBSTRING TMP$2190$6;
						FBSTRING TMP$2191$6;
						__builtin_memset( &TMP$2188$6, 0, 12 );
						__builtin_memset( &TMP$2186$6, 0, 12 );
						FBSTRING* vr$725 = fb_StrConcat( &TMP$2186$6, (void*)"cvtsi2sd xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2187$6, 0, 12 );
						FBSTRING* vr$728 = fb_StrConcat( &TMP$2187$6, (void*)vr$725, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2188$6, -1, (void*)vr$728, -1, 0 );
						HWRITEASM64( &TMP$2188$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2188$6 );
						__builtin_memset( &TMP$2191$6, 0, 12 );
						__builtin_memset( &TMP$2189$6, 0, 12 );
						FBSTRING* vr$736 = fb_StrConcat( &TMP$2189$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2190$6, 0, 12 );
						FBSTRING* vr$739 = fb_StrConcat( &TMP$2190$6, (void*)vr$736, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2191$6, -1, (void*)vr$739, -1, 0 );
						HWRITEASM64( &TMP$2191$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2191$6 );
					}
					goto label$1753;
					label$1754:;
					{
						FBSTRING TMP$2192$6;
						FBSTRING TMP$2193$6;
						FBSTRING TMP$2194$6;
						FBSTRING TMP$2195$6;
						FBSTRING TMP$2196$6;
						FBSTRING TMP$2197$6;
						__builtin_memset( &TMP$2194$6, 0, 12 );
						__builtin_memset( &TMP$2192$6, 0, 12 );
						FBSTRING* vr$748 = fb_StrConcat( &TMP$2192$6, (void*)"cvtsi2ss xmm0, ", 16, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2193$6, 0, 12 );
						FBSTRING* vr$751 = fb_StrConcat( &TMP$2193$6, (void*)vr$748, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2194$6, -1, (void*)vr$751, -1, 0 );
						HWRITEASM64( &TMP$2194$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2194$6 );
						__builtin_memset( &TMP$2197$6, 0, 12 );
						__builtin_memset( &TMP$2195$6, 0, 12 );
						FBSTRING* vr$759 = fb_StrConcat( &TMP$2195$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2196$6, 0, 12 );
						FBSTRING* vr$762 = fb_StrConcat( &TMP$2196$6, (void*)vr$759, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2197$6, -1, (void*)vr$762, -1, 0 );
						HWRITEASM64( &TMP$2197$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2197$6 );
					}
					label$1753:;
				}
				goto label$1741;
				label$1750:;
				if( V2DTYPE$1 == 2 ) goto label$1756;
				label$1757:;
				if( V2DTYPE$1 == 5 ) goto label$1756;
				label$1758:;
				if( V2DTYPE$1 == 3 ) goto label$1756;
				label$1759:;
				if( V2DTYPE$1 == 6 ) goto label$1756;
				label$1760:;
				if( V2DTYPE$1 == 1 ) goto label$1756;
				label$1761:;
				if( V2DTYPE$1 != 4 ) goto label$1755;
				label$1756:;
				{
					if( (-(V2DTYPE$1 == 2) | -(V2DTYPE$1 == 5)) == 0 ) goto label$1763;
					{
						FBSTRING TMP$2199$6;
						FBSTRING TMP$2200$6;
						FBSTRING TMP$2201$6;
						__builtin_memset( &TMP$2201$6, 0, 12 );
						__builtin_memset( &TMP$2199$6, 0, 12 );
						FBSTRING* vr$774 = fb_StrConcat( &TMP$2199$6, (void*)"movsx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2200$6, 0, 12 );
						FBSTRING* vr$777 = fb_StrConcat( &TMP$2200$6, (void*)vr$774, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2201$6, -1, (void*)vr$777, -1, 0 );
						HWRITEASM64( &TMP$2201$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2201$6 );
					}
					goto label$1762;
					label$1763:;
					if( V2DTYPE$1 != 1 ) goto label$1764;
					{
						FBSTRING TMP$2203$6;
						FBSTRING TMP$2204$6;
						FBSTRING TMP$2205$6;
						FBSTRING TMP$2206$6;
						FBSTRING TMP$2208$6;
						FBSTRING TMP$2210$6;
						FBSTRING TMP$2212$6;
						__builtin_memset( &TMP$2206$6, 0, 12 );
						__builtin_memset( &TMP$2203$6, 0, 12 );
						FBSTRING* vr$786 = fb_StrConcat( &TMP$2203$6, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2204$6, 0, 12 );
						FBSTRING* vr$789 = fb_StrConcat( &TMP$2204$6, (void*)vr$786, -1, (void*)&OP2$1, -1 );
						__builtin_memset( &TMP$2205$6, 0, 12 );
						FBSTRING* vr$792 = fb_StrConcat( &TMP$2205$6, (void*)vr$789, -1, (void*)", 0", 4 );
						fb_StrAssign( (void*)&TMP$2206$6, -1, (void*)vr$792, -1, 0 );
						HWRITEASM64( &TMP$2206$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2206$6 );
						__builtin_memset( &TMP$2208$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2208$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2208$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2208$6 );
						__builtin_memset( &TMP$2210$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2210$6, -1, (void*)"neg al", 7, 0 );
						HWRITEASM64( &TMP$2210$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2210$6 );
						__builtin_memset( &TMP$2212$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2212$6, -1, (void*)"movsx eax, al", 14, 0 );
						HWRITEASM64( &TMP$2212$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2212$6 );
					}
					goto label$1762;
					label$1764:;
					{
						FBSTRING TMP$2214$6;
						FBSTRING TMP$2215$6;
						FBSTRING TMP$2216$6;
						__builtin_memset( &TMP$2216$6, 0, 12 );
						__builtin_memset( &TMP$2214$6, 0, 12 );
						FBSTRING* vr$813 = fb_StrConcat( &TMP$2214$6, (void*)"movzx eax, ", 12, (void*)&PREFIX2$1, -1 );
						__builtin_memset( &TMP$2215$6, 0, 12 );
						FBSTRING* vr$816 = fb_StrConcat( &TMP$2215$6, (void*)vr$813, -1, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$2216$6, -1, (void*)vr$816, -1, 0 );
						HWRITEASM64( &TMP$2216$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2216$6 );
					}
					label$1762:;
					if( V1DTYPE$1 != 16 ) goto label$1766;
					{
						FBSTRING TMP$2218$6;
						FBSTRING TMP$2219$6;
						FBSTRING TMP$2220$6;
						FBSTRING TMP$2221$6;
						__builtin_memset( &TMP$2218$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2218$6, -1, (void*)"cvtsi2sd xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2218$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2218$6 );
						__builtin_memset( &TMP$2221$6, 0, 12 );
						__builtin_memset( &TMP$2219$6, 0, 12 );
						FBSTRING* vr$828 = fb_StrConcat( &TMP$2219$6, (void*)"movq ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2220$6, 0, 12 );
						FBSTRING* vr$831 = fb_StrConcat( &TMP$2220$6, (void*)vr$828, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2221$6, -1, (void*)vr$831, -1, 0 );
						HWRITEASM64( &TMP$2221$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2221$6 );
					}
					goto label$1765;
					label$1766:;
					{
						FBSTRING TMP$2223$6;
						FBSTRING TMP$2224$6;
						FBSTRING TMP$2225$6;
						FBSTRING TMP$2226$6;
						__builtin_memset( &TMP$2223$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2223$6, -1, (void*)"cvtsi2ss xmm0, eax", 19, 0 );
						HWRITEASM64( &TMP$2223$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2223$6 );
						__builtin_memset( &TMP$2226$6, 0, 12 );
						__builtin_memset( &TMP$2224$6, 0, 12 );
						FBSTRING* vr$843 = fb_StrConcat( &TMP$2224$6, (void*)"movd ", 6, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$2225$6, 0, 12 );
						FBSTRING* vr$846 = fb_StrConcat( &TMP$2225$6, (void*)vr$843, -1, (void*)", xmm0", 7 );
						fb_StrAssign( (void*)&TMP$2226$6, -1, (void*)vr$846, -1, 0 );
						HWRITEASM64( &TMP$2226$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2226$6 );
					}
					label$1765:;
				}
				goto label$1741;
				label$1755:;
				{
					FBSTRING TMP$2227$5;
					FBSTRING TMP$2230$5;
					FBSTRING TMP$2231$5;
					__builtin_memset( &TMP$2227$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2227$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2227$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2227$5 );
					__builtin_memset( &TMP$2230$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2230$5, -1, (void*)"FOUND AN ERROR : Converting datatype not handled 04", 52, 0 );
					HWRITEASM64( &TMP$2230$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2230$5 );
					__builtin_memset( &TMP$2231$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2231$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2231$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2231$5 );
				}
				label$1767:;
				label$1741:;
			}
		}
		label$1733:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1731:;
	label$1730:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1768;
	TMP$2232$1 = 24;
	goto label$3017;
	label$1768:;
	TMP$2232$1 = V2DTYPE$1 & 31;
	label$3017:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1769;
	TMP$2233$1 = 24;
	goto label$3018;
	label$1769:;
	TMP$2233$1 = V1DTYPE$1 & 31;
	label$3018:;
	if( (-(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2232$1 * 28)) == 1) & -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2233$1 * 28)) == 0)) == 0 ) goto label$1771;
	{
		if( V2DTYPE$1 != 16 ) goto label$1773;
		{
			if( V1DTYPE$1 != 14 ) goto label$1775;
			{
				FBSTRING TMP$2235$4;
				FBSTRING TMP$2237$4;
				FBSTRING TMP$2238$4;
				FBSTRING TMP$2239$4;
				FBSTRING TMP$2241$4;
				FBSTRING TMP$2243$4;
				FBSTRING TMP$2245$4;
				FBSTRING TMP$2246$4;
				FBSTRING TMP$2247$4;
				FBSTRING TMP$2248$4;
				FBSTRING TMP$2249$4;
				FBSTRING TMP$2250$4;
				FBSTRING TMP$2251$4;
				FBSTRING TMP$2253$4;
				FBSTRING TMP$2255$4;
				FBSTRING TMP$2256$4;
				FBSTRING TMP$2259$4;
				FBSTRING TMP$2260$4;
				FBSTRING TMP$2261$4;
				FBSTRING TMP$2263$4;
				FBSTRING TMP$2264$4;
				FBSTRING TMP$2265$4;
				FBSTRING TMP$2266$4;
				FBSTRING TMP$2267$4;
				FBSTRING TMP$2268$4;
				FBSTRING TMP$2269$4;
				__builtin_memset( &TMP$2235$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2235$4, -1, (void*)"mov rax, 4890909195324358656", 29, 0 );
				HWRITEASM64( &TMP$2235$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2235$4 );
				__builtin_memset( &TMP$2237$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2237$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2237$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2237$4 );
				__builtin_memset( &TMP$2239$4, 0, 12 );
				__builtin_memset( &TMP$2238$4, 0, 12 );
				FBSTRING* vr$892 = fb_StrConcat( &TMP$2238$4, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2239$4, -1, (void*)vr$892, -1, 0 );
				HWRITEASM64( &TMP$2239$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2239$4 );
				__builtin_memset( &TMP$2241$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2241$4, -1, (void*)"movq xmm0, rax", 15, 0 );
				HWRITEASM64( &TMP$2241$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2241$4 );
				HEMITROUNDFLOAT( 16, 14 );
				__builtin_memset( &TMP$2243$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2243$4, -1, (void*)"ucomisd xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2243$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2243$4 );
				uint8* vr$904 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$904, 0, 0 );
				__builtin_memset( &TMP$2246$4, 0, 12 );
				__builtin_memset( &TMP$2245$4, 0, 12 );
				FBSTRING* vr$910 = fb_StrConcat( &TMP$2245$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2246$4, -1, (void*)vr$910, -1, 0 );
				HWRITEASM64( &TMP$2246$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2246$4 );
				__builtin_memset( &TMP$2247$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2247$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2247$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2247$4 );
				uint8* vr$918 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$918, 0, 0 );
				__builtin_memset( &TMP$2249$4, 0, 12 );
				__builtin_memset( &TMP$2248$4, 0, 12 );
				FBSTRING* vr$924 = fb_StrConcat( &TMP$2248$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2249$4, -1, (void*)vr$924, -1, 0 );
				HWRITEASM64( &TMP$2249$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2249$4 );
				__builtin_memset( &TMP$2251$4, 0, 12 );
				__builtin_memset( &TMP$2250$4, 0, 12 );
				FBSTRING* vr$932 = fb_StrConcat( &TMP$2250$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2251$4, -1, (void*)vr$932, -1, 0 );
				HWRITEASM64( &TMP$2251$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2251$4 );
				__builtin_memset( &TMP$2253$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2253$4, -1, (void*)"movsd\x09xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2253$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2253$4 );
				__builtin_memset( &TMP$2255$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2255$4, -1, (void*)"subsd\x09xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2255$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2255$4 );
				__builtin_memset( &TMP$2256$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2256$4, -1, (void*)"cvttsd2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2256$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2256$4 );
				int32 vr$948 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$948;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((uint8*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2261$4, 0, 12 );
				__builtin_memset( &TMP$2259$4, 0, 12 );
				FBSTRING* vr$956 = fb_StrConcat( &TMP$2259$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2260$4, 0, 12 );
				FBSTRING* vr$959 = fb_StrConcat( &TMP$2260$4, (void*)vr$956, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2261$4, -1, (void*)vr$959, -1, 0 );
				HWRITEASM64( &TMP$2261$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2261$4 );
				__builtin_memset( &TMP$2264$4, 0, 12 );
				__builtin_memset( &TMP$2263$4, 0, 12 );
				FBSTRING* vr$967 = fb_StrConcat( &TMP$2263$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2264$4, -1, (void*)vr$967, -1, 0 );
				HWRITEASM64( &TMP$2264$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2264$4 );
				__builtin_memset( &TMP$2266$4, 0, 12 );
				__builtin_memset( &TMP$2265$4, 0, 12 );
				FBSTRING* vr$975 = fb_StrConcat( &TMP$2265$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2266$4, -1, (void*)vr$975, -1, 0 );
				HWRITEASM64( &TMP$2266$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2266$4 );
				__builtin_memset( &TMP$2269$4, 0, 12 );
				__builtin_memset( &TMP$2267$4, 0, 12 );
				FBSTRING* vr$983 = fb_StrConcat( &TMP$2267$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2268$4, 0, 12 );
				FBSTRING* vr$986 = fb_StrConcat( &TMP$2268$4, (void*)vr$983, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2269$4, -1, (void*)vr$986, -1, 0 );
				HWRITEASM64( &TMP$2269$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2269$4 );
			}
			goto label$1774;
			label$1775:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1776;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1778;
				{
					FBSTRING TMP$2270$5;
					FBSTRING TMP$2271$5;
					__builtin_memset( &TMP$2271$5, 0, 12 );
					__builtin_memset( &TMP$2270$5, 0, 12 );
					FBSTRING* vr$1012 = fb_StrConcat( &TMP$2270$5, (void*)"movq xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2271$5, -1, (void*)vr$1012, -1, 0 );
					HWRITEASM64( &TMP$2271$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2271$5 );
				}
				goto label$1777;
				label$1778:;
				{
					FBSTRING TMP$2272$5;
					FBSTRING TMP$2273$5;
					__builtin_memset( &TMP$2273$5, 0, 12 );
					__builtin_memset( &TMP$2272$5, 0, 12 );
					FBSTRING* vr$1020 = fb_StrConcat( &TMP$2272$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2273$5, -1, (void*)vr$1020, -1, 0 );
					HWRITEASM64( &TMP$2273$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2273$5 );
				}
				label$1777:;
				HEMITROUNDFLOAT( 16, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1780;
				{
					FBSTRING TMP$2274$5;
					FBSTRING TMP$2275$5;
					FBSTRING TMP$2276$5;
					__builtin_memset( &TMP$2276$5, 0, 12 );
					__builtin_memset( &TMP$2274$5, 0, 12 );
					FBSTRING* vr$1028 = fb_StrConcat( &TMP$2274$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2275$5, 0, 12 );
					FBSTRING* vr$1031 = fb_StrConcat( &TMP$2275$5, (void*)vr$1028, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2276$5, -1, (void*)vr$1031, -1, 0 );
					HWRITEASM64( &TMP$2276$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2276$5 );
				}
				goto label$1779;
				label$1780:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1781;
				{
					FBSTRING TMP$2277$5;
					FBSTRING TMP$2278$5;
					FBSTRING TMP$2279$5;
					__builtin_memset( &TMP$2279$5, 0, 12 );
					__builtin_memset( &TMP$2277$5, 0, 12 );
					FBSTRING* vr$1042 = fb_StrConcat( &TMP$2277$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2278$5, 0, 12 );
					FBSTRING* vr$1045 = fb_StrConcat( &TMP$2278$5, (void*)vr$1042, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2279$5, -1, (void*)vr$1045, -1, 0 );
					HWRITEASM64( &TMP$2279$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2279$5 );
				}
				goto label$1779;
				label$1781:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1782;
				{
					FBSTRING TMP$2281$5;
					FBSTRING TMP$2282$5;
					FBSTRING TMP$2283$5;
					__builtin_memset( &TMP$2283$5, 0, 12 );
					__builtin_memset( &TMP$2281$5, 0, 12 );
					FBSTRING* vr$1056 = fb_StrConcat( &TMP$2281$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2282$5, 0, 12 );
					FBSTRING* vr$1059 = fb_StrConcat( &TMP$2282$5, (void*)vr$1056, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2283$5, -1, (void*)vr$1059, -1, 0 );
					HWRITEASM64( &TMP$2283$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2283$5 );
				}
				goto label$1779;
				label$1782:;
				{
					FBSTRING TMP$2287$5;
					FBSTRING TMP$2288$5;
					FBSTRING TMP$2289$5;
					if( V1DTYPE$1 != 1 ) goto label$1784;
					{
						FBSTRING TMP$2285$6;
						FBSTRING TMP$2286$6;
						__builtin_memset( &TMP$2285$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2285$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2285$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2285$6 );
						__builtin_memset( &TMP$2286$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2286$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2286$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2286$6 );
					}
					label$1784:;
					label$1783:;
					__builtin_memset( &TMP$2289$5, 0, 12 );
					__builtin_memset( &TMP$2287$5, 0, 12 );
					FBSTRING* vr$1075 = fb_StrConcat( &TMP$2287$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2288$5, 0, 12 );
					FBSTRING* vr$1078 = fb_StrConcat( &TMP$2288$5, (void*)vr$1075, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2289$5, -1, (void*)vr$1078, -1, 0 );
					HWRITEASM64( &TMP$2289$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2289$5 );
				}
				label$1779:;
			}
			goto label$1774;
			label$1776:;
			{
				FBSTRING TMP$2290$4;
				FBSTRING TMP$2293$4;
				FBSTRING TMP$2294$4;
				__builtin_memset( &TMP$2290$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2290$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2290$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2290$4 );
				__builtin_memset( &TMP$2293$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2293$4, -1, (void*)"FOUND AN ERROR : Converting float to int 01", 44, 0 );
				HWRITEASM64( &TMP$2293$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2293$4 );
				__builtin_memset( &TMP$2294$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2294$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2294$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2294$4 );
			}
			label$1774:;
		}
		goto label$1772;
		label$1773:;
		{
			if( V1DTYPE$1 != 14 ) goto label$1786;
			{
				FBSTRING TMP$2296$4;
				FBSTRING TMP$2297$4;
				FBSTRING TMP$2298$4;
				FBSTRING TMP$2299$4;
				FBSTRING TMP$2301$4;
				FBSTRING TMP$2303$4;
				FBSTRING TMP$2304$4;
				FBSTRING TMP$2305$4;
				FBSTRING TMP$2306$4;
				FBSTRING TMP$2307$4;
				FBSTRING TMP$2308$4;
				FBSTRING TMP$2309$4;
				FBSTRING TMP$2310$4;
				FBSTRING TMP$2312$4;
				FBSTRING TMP$2314$4;
				FBSTRING TMP$2315$4;
				FBSTRING TMP$2316$4;
				FBSTRING TMP$2317$4;
				FBSTRING TMP$2318$4;
				FBSTRING TMP$2319$4;
				FBSTRING TMP$2320$4;
				FBSTRING TMP$2321$4;
				FBSTRING TMP$2322$4;
				FBSTRING TMP$2323$4;
				FBSTRING TMP$2324$4;
				FBSTRING TMP$2325$4;
				__builtin_memset( &TMP$2296$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2296$4, -1, (void*)"mov rax, 1593835520", 20, 0 );
				HWRITEASM64( &TMP$2296$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2296$4 );
				__builtin_memset( &TMP$2297$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2297$4, -1, (void*)"movq xmm2, rax", 15, 0 );
				HWRITEASM64( &TMP$2297$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2297$4 );
				__builtin_memset( &TMP$2299$4, 0, 12 );
				__builtin_memset( &TMP$2298$4, 0, 12 );
				FBSTRING* vr$1106 = fb_StrConcat( &TMP$2298$4, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2299$4, -1, (void*)vr$1106, -1, 0 );
				HWRITEASM64( &TMP$2299$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2299$4 );
				__builtin_memset( &TMP$2301$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2301$4, -1, (void*)"movd xmm0, eax", 15, 0 );
				HWRITEASM64( &TMP$2301$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2301$4 );
				HEMITROUNDFLOAT( 15, 14 );
				__builtin_memset( &TMP$2303$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2303$4, -1, (void*)"ucomiss xmm0, xmm2", 19, 0 );
				HWRITEASM64( &TMP$2303$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2303$4 );
				uint8* vr$1118 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$1118, 0, 0 );
				__builtin_memset( &TMP$2305$4, 0, 12 );
				__builtin_memset( &TMP$2304$4, 0, 12 );
				FBSTRING* vr$1124 = fb_StrConcat( &TMP$2304$4, (void*)"jnb ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$2305$4, -1, (void*)vr$1124, -1, 0 );
				HWRITEASM64( &TMP$2305$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2305$4 );
				__builtin_memset( &TMP$2306$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2306$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2306$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2306$4 );
				uint8* vr$1132 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$1132, 0, 0 );
				__builtin_memset( &TMP$2308$4, 0, 12 );
				__builtin_memset( &TMP$2307$4, 0, 12 );
				FBSTRING* vr$1138 = fb_StrConcat( &TMP$2307$4, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$2308$4, -1, (void*)vr$1138, -1, 0 );
				HWRITEASM64( &TMP$2308$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2308$4 );
				__builtin_memset( &TMP$2310$4, 0, 12 );
				__builtin_memset( &TMP$2309$4, 0, 12 );
				FBSTRING* vr$1146 = fb_StrConcat( &TMP$2309$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2310$4, -1, (void*)vr$1146, -1, 0 );
				HWRITEASM64( &TMP$2310$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2310$4 );
				__builtin_memset( &TMP$2312$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2312$4, -1, (void*)"movss\x09xmm1, xmm2", 17, 0 );
				HWRITEASM64( &TMP$2312$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2312$4 );
				__builtin_memset( &TMP$2314$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2314$4, -1, (void*)"subss\x09xmm0, xmm1", 17, 0 );
				HWRITEASM64( &TMP$2314$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2314$4 );
				__builtin_memset( &TMP$2315$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2315$4, -1, (void*)"cvttss2si rax, xmm0", 20, 0 );
				HWRITEASM64( &TMP$2315$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2315$4 );
				int32 vr$1162 = REG_FINDFREE( 999999, -1 );
				REG$1 = vr$1162;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31))), 0, 0 );
				*(int32*)((uint8*)REGHANDLE$ + (REG$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2318$4, 0, 12 );
				__builtin_memset( &TMP$2316$4, 0, 12 );
				FBSTRING* vr$1170 = fb_StrConcat( &TMP$2316$4, (void*)"movabs ", 8, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2317$4, 0, 12 );
				FBSTRING* vr$1173 = fb_StrConcat( &TMP$2317$4, (void*)vr$1170, -1, (void*)", -9223372036854775808", 23 );
				fb_StrAssign( (void*)&TMP$2318$4, -1, (void*)vr$1173, -1, 0 );
				HWRITEASM64( &TMP$2318$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2318$4 );
				__builtin_memset( &TMP$2320$4, 0, 12 );
				__builtin_memset( &TMP$2319$4, 0, 12 );
				FBSTRING* vr$1181 = fb_StrConcat( &TMP$2319$4, (void*)"xor rax,", 9, (void*)&REGTEMPO$1, -1 );
				fb_StrAssign( (void*)&TMP$2320$4, -1, (void*)vr$1181, -1, 0 );
				HWRITEASM64( &TMP$2320$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2320$4 );
				__builtin_memset( &TMP$2322$4, 0, 12 );
				__builtin_memset( &TMP$2321$4, 0, 12 );
				FBSTRING* vr$1189 = fb_StrConcat( &TMP$2321$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$2322$4, -1, (void*)vr$1189, -1, 0 );
				HWRITEASM64( &TMP$2322$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2322$4 );
				__builtin_memset( &TMP$2325$4, 0, 12 );
				__builtin_memset( &TMP$2323$4, 0, 12 );
				FBSTRING* vr$1197 = fb_StrConcat( &TMP$2323$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2324$4, 0, 12 );
				FBSTRING* vr$1200 = fb_StrConcat( &TMP$2324$4, (void*)vr$1197, -1, (void*)", rax", 6 );
				fb_StrAssign( (void*)&TMP$2325$4, -1, (void*)vr$1200, -1, 0 );
				HWRITEASM64( &TMP$2325$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2325$4 );
			}
			goto label$1785;
			label$1786:;
			if( ((((((((-(V1DTYPE$1 == 13) | -(V1DTYPE$1 == 11)) | -(V1DTYPE$1 == 12)) | -(V1DTYPE$1 == 5)) | -(V1DTYPE$1 == 6)) | -(V1DTYPE$1 == 2)) | -(V1DTYPE$1 == 3)) | -(V1DTYPE$1 == 1)) | -(V1DTYPE$1 == 4)) == 0 ) goto label$1787;
			{
				if( *(int32*)V2$1 != 4 ) goto label$1789;
				{
					FBSTRING TMP$2326$5;
					FBSTRING TMP$2327$5;
					__builtin_memset( &TMP$2327$5, 0, 12 );
					__builtin_memset( &TMP$2326$5, 0, 12 );
					FBSTRING* vr$1226 = fb_StrConcat( &TMP$2326$5, (void*)"movd xmm0, ", 12, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2327$5, -1, (void*)vr$1226, -1, 0 );
					HWRITEASM64( &TMP$2327$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2327$5 );
				}
				goto label$1788;
				label$1789:;
				{
					FBSTRING TMP$2328$5;
					FBSTRING TMP$2329$5;
					__builtin_memset( &TMP$2329$5, 0, 12 );
					__builtin_memset( &TMP$2328$5, 0, 12 );
					FBSTRING* vr$1234 = fb_StrConcat( &TMP$2328$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2329$5, -1, (void*)vr$1234, -1, 0 );
					HWRITEASM64( &TMP$2329$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2329$5 );
				}
				label$1788:;
				HEMITROUNDFLOAT( 15, -2147483648u );
				if( V1DTYPE$1 != 13 ) goto label$1791;
				{
					FBSTRING TMP$2330$5;
					FBSTRING TMP$2331$5;
					FBSTRING TMP$2332$5;
					__builtin_memset( &TMP$2332$5, 0, 12 );
					__builtin_memset( &TMP$2330$5, 0, 12 );
					FBSTRING* vr$1242 = fb_StrConcat( &TMP$2330$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2331$5, 0, 12 );
					FBSTRING* vr$1245 = fb_StrConcat( &TMP$2331$5, (void*)vr$1242, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$2332$5, -1, (void*)vr$1245, -1, 0 );
					HWRITEASM64( &TMP$2332$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2332$5 );
				}
				goto label$1790;
				label$1791:;
				if( (-(V1DTYPE$1 == 11) | -(V1DTYPE$1 == 12)) == 0 ) goto label$1792;
				{
					FBSTRING TMP$2333$5;
					FBSTRING TMP$2334$5;
					FBSTRING TMP$2335$5;
					__builtin_memset( &TMP$2335$5, 0, 12 );
					__builtin_memset( &TMP$2333$5, 0, 12 );
					FBSTRING* vr$1256 = fb_StrConcat( &TMP$2333$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2334$5, 0, 12 );
					FBSTRING* vr$1259 = fb_StrConcat( &TMP$2334$5, (void*)vr$1256, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$2335$5, -1, (void*)vr$1259, -1, 0 );
					HWRITEASM64( &TMP$2335$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2335$5 );
				}
				goto label$1790;
				label$1792:;
				if( (-(V1DTYPE$1 == 5) | -(V1DTYPE$1 == 6)) == 0 ) goto label$1793;
				{
					FBSTRING TMP$2336$5;
					FBSTRING TMP$2337$5;
					FBSTRING TMP$2338$5;
					__builtin_memset( &TMP$2338$5, 0, 12 );
					__builtin_memset( &TMP$2336$5, 0, 12 );
					FBSTRING* vr$1270 = fb_StrConcat( &TMP$2336$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2337$5, 0, 12 );
					FBSTRING* vr$1273 = fb_StrConcat( &TMP$2337$5, (void*)vr$1270, -1, (void*)", ax", 5 );
					fb_StrAssign( (void*)&TMP$2338$5, -1, (void*)vr$1273, -1, 0 );
					HWRITEASM64( &TMP$2338$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2338$5 );
				}
				goto label$1790;
				label$1793:;
				{
					FBSTRING TMP$2341$5;
					FBSTRING TMP$2342$5;
					FBSTRING TMP$2343$5;
					if( V1DTYPE$1 != 1 ) goto label$1795;
					{
						FBSTRING TMP$2339$6;
						FBSTRING TMP$2340$6;
						__builtin_memset( &TMP$2339$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2339$6, -1, (void*)"cmp rax, 0", 11, 0 );
						HWRITEASM64( &TMP$2339$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2339$6 );
						__builtin_memset( &TMP$2340$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2340$6, -1, (void*)"setne al", 9, 0 );
						HWRITEASM64( &TMP$2340$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2340$6 );
					}
					label$1795:;
					label$1794:;
					__builtin_memset( &TMP$2343$5, 0, 12 );
					__builtin_memset( &TMP$2341$5, 0, 12 );
					FBSTRING* vr$1289 = fb_StrConcat( &TMP$2341$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2342$5, 0, 12 );
					FBSTRING* vr$1292 = fb_StrConcat( &TMP$2342$5, (void*)vr$1289, -1, (void*)", al", 5 );
					fb_StrAssign( (void*)&TMP$2343$5, -1, (void*)vr$1292, -1, 0 );
					HWRITEASM64( &TMP$2343$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2343$5 );
				}
				label$1790:;
			}
			goto label$1785;
			label$1787:;
			{
				FBSTRING TMP$2344$4;
				FBSTRING TMP$2347$4;
				FBSTRING TMP$2348$4;
				__builtin_memset( &TMP$2344$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2344$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2344$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2344$4 );
				__builtin_memset( &TMP$2347$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2347$4, -1, (void*)"FOUND AN ERROR : Converting float to int 02", 44, 0 );
				HWRITEASM64( &TMP$2347$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2347$4 );
				__builtin_memset( &TMP$2348$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2348$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2348$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2348$4 );
			}
			label$1785:;
		}
		label$1772:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1771:;
	label$1770:;
	if( (-(V1DTYPE$1 == 20) | -(V2DTYPE$1 == 20)) == 0 ) goto label$1797;
	{
		if( V2DTYPE$1 != 20 ) goto label$1799;
		{
			FBSTRING TMP$2349$3;
			FBSTRING TMP$2350$3;
			FBSTRING TMP$2351$3;
			FBSTRING TMP$2352$3;
			__builtin_memset( &TMP$2352$3, 0, 12 );
			__builtin_memset( &TMP$2349$3, 0, 12 );
			FBSTRING* vr$1325 = fb_StrConcat( &TMP$2349$3, (void*)"lea ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2350$3, 0, 12 );
			FBSTRING* vr$1328 = fb_StrConcat( &TMP$2350$3, (void*)vr$1325, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2351$3, 0, 12 );
			FBSTRING* vr$1331 = fb_StrConcat( &TMP$2351$3, (void*)vr$1328, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2352$3, -1, (void*)vr$1331, -1, 0 );
			HWRITEASM64( &TMP$2352$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2352$3 );
			if( V1DTYPE$1 != 13 ) goto label$1801;
			{
				FBSTRING TMP$2354$4;
				FBSTRING TMP$2355$4;
				FBSTRING TMP$2356$4;
				FBSTRING TMP$2357$4;
				FBSTRING TMP$2358$4;
				__builtin_memset( &TMP$2358$4, 0, 12 );
				__builtin_memset( &TMP$2354$4, 0, 12 );
				FBSTRING* vr$1340 = fb_StrConcat( &TMP$2354$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2355$4, 0, 12 );
				FBSTRING* vr$1343 = fb_StrConcat( &TMP$2355$4, (void*)vr$1340, -1, (void*)", QWORD PTR [", 14 );
				__builtin_memset( &TMP$2356$4, 0, 12 );
				FBSTRING* vr$1346 = fb_StrConcat( &TMP$2356$4, (void*)vr$1343, -1, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2357$4, 0, 12 );
				FBSTRING* vr$1349 = fb_StrConcat( &TMP$2357$4, (void*)vr$1346, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$2358$4, -1, (void*)vr$1349, -1, 0 );
				HWRITEASM64( &TMP$2358$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2358$4 );
			}
			goto label$1800;
			label$1801:;
			if( V1DTYPE$1 == 20 ) goto label$1802;
			{
				FBSTRING TMP$2359$4;
				FBSTRING TMP$2362$4;
				FBSTRING TMP$2363$4;
				__builtin_memset( &TMP$2359$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2359$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2359$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2359$4 );
				__builtin_memset( &TMP$2362$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2362$4, -1, (void*)"FOUND AN ERROR : Converting struct to datatype not handled 01", 62, 0 );
				HWRITEASM64( &TMP$2362$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2362$4 );
				__builtin_memset( &TMP$2363$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2363$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2363$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2363$4 );
			}
			label$1802:;
			label$1800:;
		}
		goto label$1798;
		label$1799:;
		{
			FBSTRING TMP$2364$3;
			FBSTRING TMP$2367$3;
			FBSTRING TMP$2368$3;
			__builtin_memset( &TMP$2364$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2364$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2364$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2364$3 );
			__builtin_memset( &TMP$2367$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2367$3, -1, (void*)"FOUND AN ERROR : Converting to struct not handled 02", 53, 0 );
			HWRITEASM64( &TMP$2367$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2367$3 );
			__builtin_memset( &TMP$2368$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2368$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2368$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2368$3 );
		}
		label$1798:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1797:;
	label$1796:;
	if( V1DTYPE$1 != 1 ) goto label$1804;
	{
		if( *(int32*)V2$1 != 0 ) goto label$1806;
		{
			int32 vr$1388 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0", 2 );
			int32 vr$1391 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x0000000000000000", 19 );
			int32 vr$1395 = fb_StrCompare( (void*)&OP2$1, -1, (void*)"0x00000000", 11 );
			if( ((-(vr$1388 == 0) | -(vr$1391 == 0)) | -(vr$1395 == 0)) == 0 ) goto label$1808;
			{
				FBSTRING TMP$2371$4;
				FBSTRING TMP$2372$4;
				FBSTRING TMP$2373$4;
				__builtin_memset( &TMP$2373$4, 0, 12 );
				__builtin_memset( &TMP$2371$4, 0, 12 );
				FBSTRING* vr$1402 = fb_StrConcat( &TMP$2371$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2372$4, 0, 12 );
				FBSTRING* vr$1405 = fb_StrConcat( &TMP$2372$4, (void*)vr$1402, -1, (void*)", 0", 4 );
				fb_StrAssign( (void*)&TMP$2373$4, -1, (void*)vr$1405, -1, 0 );
				HWRITEASM64( &TMP$2373$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2373$4 );
			}
			goto label$1807;
			label$1808:;
			{
				FBSTRING TMP$2374$4;
				FBSTRING TMP$2375$4;
				FBSTRING TMP$2376$4;
				__builtin_memset( &TMP$2376$4, 0, 12 );
				__builtin_memset( &TMP$2374$4, 0, 12 );
				FBSTRING* vr$1413 = fb_StrConcat( &TMP$2374$4, (void*)"mov ", 5, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2375$4, 0, 12 );
				FBSTRING* vr$1416 = fb_StrConcat( &TMP$2375$4, (void*)vr$1413, -1, (void*)", 1", 4 );
				fb_StrAssign( (void*)&TMP$2376$4, -1, (void*)vr$1416, -1, 0 );
				HWRITEASM64( &TMP$2376$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2376$4 );
			}
			label$1807:;
		}
		goto label$1805;
		label$1806:;
		{
			FBSTRING TMP$2377$3;
			FBSTRING TMP$2378$3;
			FBSTRING TMP$2379$3;
			FBSTRING TMP$2380$3;
			FBSTRING TMP$2381$3;
			FBSTRING TMP$2382$3;
			FBSTRING TMP$2383$3;
			FBSTRING TMP$2384$3;
			__builtin_memset( &TMP$2380$3, 0, 12 );
			__builtin_memset( &TMP$2377$3, 0, 12 );
			FBSTRING* vr$1425 = fb_StrConcat( &TMP$2377$3, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
			__builtin_memset( &TMP$2378$3, 0, 12 );
			FBSTRING* vr$1428 = fb_StrConcat( &TMP$2378$3, (void*)vr$1425, -1, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$2379$3, 0, 12 );
			FBSTRING* vr$1431 = fb_StrConcat( &TMP$2379$3, (void*)vr$1428, -1, (void*)", 0", 4 );
			fb_StrAssign( (void*)&TMP$2380$3, -1, (void*)vr$1431, -1, 0 );
			HWRITEASM64( &TMP$2380$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2380$3 );
			__builtin_memset( &TMP$2381$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2381$3, -1, (void*)"setne al", 9, 0 );
			HWRITEASM64( &TMP$2381$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2381$3 );
			__builtin_memset( &TMP$2384$3, 0, 12 );
			__builtin_memset( &TMP$2382$3, 0, 12 );
			FBSTRING* vr$1443 = fb_StrConcat( &TMP$2382$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2383$3, 0, 12 );
			FBSTRING* vr$1446 = fb_StrConcat( &TMP$2383$3, (void*)vr$1443, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2384$3, -1, (void*)vr$1446, -1, 0 );
			HWRITEASM64( &TMP$2384$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2384$3 );
		}
		label$1805:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1804:;
	label$1803:;
	if( V2DTYPE$1 != 1 ) goto label$1810;
	{
		FBSTRING TMP$2385$2;
		FBSTRING TMP$2386$2;
		FBSTRING TMP$2387$2;
		FBSTRING TMP$2388$2;
		FBSTRING TMP$2389$2;
		FBSTRING TMP$2390$2;
		int32 TMP$2391$2;
		__builtin_memset( &TMP$2388$2, 0, 12 );
		__builtin_memset( &TMP$2385$2, 0, 12 );
		FBSTRING* vr$1464 = fb_StrConcat( &TMP$2385$2, (void*)"cmp ", 5, (void*)&PREFIX2$1, -1 );
		__builtin_memset( &TMP$2386$2, 0, 12 );
		FBSTRING* vr$1467 = fb_StrConcat( &TMP$2386$2, (void*)vr$1464, -1, (void*)&OP2$1, -1 );
		__builtin_memset( &TMP$2387$2, 0, 12 );
		FBSTRING* vr$1470 = fb_StrConcat( &TMP$2387$2, (void*)vr$1467, -1, (void*)", 0", 4 );
		fb_StrAssign( (void*)&TMP$2388$2, -1, (void*)vr$1470, -1, 0 );
		HWRITEASM64( &TMP$2388$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2388$2 );
		__builtin_memset( &TMP$2389$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2389$2, -1, (void*)"setne al", 9, 0 );
		HWRITEASM64( &TMP$2389$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2389$2 );
		__builtin_memset( &TMP$2390$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2390$2, -1, (void*)"neg al", 7, 0 );
		HWRITEASM64( &TMP$2390$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2390$2 );
		if( (V1DTYPE$1 & 480) == 0 ) goto label$1811;
		TMP$2391$2 = 24;
		goto label$3019;
		label$1811:;
		TMP$2391$2 = V1DTYPE$1 & 31;
		label$3019:;
		if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2391$2 * 28)) + 4) != 1 ) goto label$1813;
		{
			FBSTRING TMP$2392$3;
			FBSTRING TMP$2393$3;
			FBSTRING TMP$2394$3;
			__builtin_memset( &TMP$2394$3, 0, 12 );
			__builtin_memset( &TMP$2392$3, 0, 12 );
			FBSTRING* vr$1489 = fb_StrConcat( &TMP$2392$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2393$3, 0, 12 );
			FBSTRING* vr$1492 = fb_StrConcat( &TMP$2393$3, (void*)vr$1489, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2394$3, -1, (void*)vr$1492, -1, 0 );
			HWRITEASM64( &TMP$2394$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2394$3 );
		}
		goto label$1812;
		label$1813:;
		{
			FBSTRING TMP$2396$3;
			FBSTRING TMP$2397$3;
			FBSTRING TMP$2398$3;
			__builtin_memset( &TMP$2398$3, 0, 12 );
			__builtin_memset( &TMP$2396$3, 0, 12 );
			FBSTRING* vr$1500 = fb_StrConcat( &TMP$2396$3, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2397$3, 0, 12 );
			FBSTRING* vr$1503 = fb_StrConcat( &TMP$2397$3, (void*)vr$1500, -1, (void*)", al", 5 );
			fb_StrAssign( (void*)&TMP$2398$3, -1, (void*)vr$1503, -1, 0 );
			HWRITEASM64( &TMP$2398$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2398$3 );
		}
		label$1812:;
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1810:;
	label$1809:;
	if( (V1DTYPE$1 & 480) == 0 ) goto label$1814;
	TMP$2399$1 = 24;
	goto label$3020;
	label$1814:;
	TMP$2399$1 = V1DTYPE$1 & 31;
	label$3020:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1815;
	TMP$2400$1 = 24;
	goto label$3021;
	label$1815:;
	TMP$2400$1 = V2DTYPE$1 & 31;
	label$3021:;
	if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2399$1 * 28)) + 4) > *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2400$1 * 28)) + 4) ) goto label$1817;
	{
		FBSTRING TMP$2405$2;
		FBSTRING TMP$2406$2;
		FBSTRING TMP$2407$2;
		FBSTRING TMP$2408$2;
		FBSTRING TMP$2409$2;
		if( *(int32*)V2$1 != 4 ) goto label$1819;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1, (void*)"", 1, 0 );
			{
				if( V1DTYPE$1 == 11 ) goto label$1822;
				label$1823:;
				if( V1DTYPE$1 == 12 ) goto label$1822;
				label$1824:;
				if( V1DTYPE$1 != 15 ) goto label$1821;
				label$1822:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRD$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1820;
				label$1821:;
				if( V1DTYPE$1 == 5 ) goto label$1826;
				label$1827:;
				if( V1DTYPE$1 != 6 ) goto label$1825;
				label$1826:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRW$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1820;
				label$1825:;
				if( V1DTYPE$1 == 2 ) goto label$1829;
				label$1830:;
				if( V1DTYPE$1 == 3 ) goto label$1829;
				label$1831:;
				if( V1DTYPE$1 != 4 ) goto label$1828;
				label$1829:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRB$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1820;
				label$1828:;
				if( V1DTYPE$1 != 1 ) goto label$1832;
				label$1833:;
				{
				}
				goto label$1820;
				label$1832:;
				if( V1DTYPE$1 == 13 ) goto label$1835;
				label$1836:;
				if( V1DTYPE$1 == 14 ) goto label$1835;
				label$1837:;
				if( V1DTYPE$1 != 16 ) goto label$1834;
				label$1835:;
				{
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (SRCREG$1 << (2 & 31))), 0, 0 );
				}
				goto label$1820;
				label$1834:;
				{
					FBSTRING TMP$2401$5;
					FBSTRING TMP$2402$5;
					FBSTRING TMP$2403$5;
					FBSTRING TMP$2404$5;
					__builtin_memset( &TMP$2401$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2401$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2401$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2401$5 );
					__builtin_memset( &TMP$2403$5, 0, 12 );
					FBSTRING* vr$1538 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2402$5, 0, 12 );
					FBSTRING* vr$1541 = fb_StrConcat( &TMP$2402$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55, (void*)vr$1538, -1 );
					fb_StrAssign( (void*)&TMP$2403$5, -1, (void*)vr$1541, -1, 0 );
					HWRITEASM64( &TMP$2403$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2403$5 );
					__builtin_memset( &TMP$2404$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2404$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2404$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2404$5 );
				}
				label$1838:;
				label$1820:;
			}
		}
		label$1819:;
		label$1818:;
		__builtin_memset( &TMP$2409$2, 0, 12 );
		__builtin_memset( &TMP$2405$2, 0, 12 );
		FBSTRING* vr$1555 = fb_StrConcat( &TMP$2405$2, (void*)"mov ", 5, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2406$2, 0, 12 );
		FBSTRING* vr$1558 = fb_StrConcat( &TMP$2406$2, (void*)vr$1555, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2407$2, 0, 12 );
		FBSTRING* vr$1561 = fb_StrConcat( &TMP$2407$2, (void*)vr$1558, -1, (void*)&PREFIX1$1, -1 );
		__builtin_memset( &TMP$2408$2, 0, 12 );
		FBSTRING* vr$1564 = fb_StrConcat( &TMP$2408$2, (void*)vr$1561, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2409$2, -1, (void*)vr$1564, -1, 0 );
		HWRITEASM64( &TMP$2409$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2409$2 );
		fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&LNAME2$1 );
		fb_StrDelete( (FBSTRING*)&LNAME1$1 );
		goto label$1608;
	}
	label$1817:;
	label$1816:;
	if( (V2DTYPE$1 & 480) == 0 ) goto label$1839;
	TMP$2410$1 = 24;
	goto label$3022;
	label$1839:;
	TMP$2410$1 = V2DTYPE$1 & 31;
	label$3022:;
	if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2410$1 * 28)) + 8) == 0 ) goto label$1841;
	{
		{
			int32 TMP$2411$3;
			int32 TMP$2412$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1842;
			TMP$2411$3 = 24;
			goto label$3023;
			label$1842:;
			TMP$2411$3 = V2DTYPE$1 & 31;
			label$3023:;
			TMP$2412$3 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2411$3 * 28)) + 4);
			if( TMP$2412$3 == 1 ) goto label$1845;
			label$1846:;
			if( TMP$2412$3 != 2 ) goto label$1844;
			label$1845:;
			{
				FBSTRING TMP$2413$4;
				FBSTRING TMP$2414$4;
				FBSTRING TMP$2415$4;
				FBSTRING TMP$2416$4;
				FBSTRING TMP$2417$4;
				__builtin_memset( &TMP$2417$4, 0, 12 );
				__builtin_memset( &TMP$2413$4, 0, 12 );
				FBSTRING* vr$1589 = fb_StrConcat( &TMP$2413$4, (void*)"movsx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2414$4, 0, 12 );
				FBSTRING* vr$1592 = fb_StrConcat( &TMP$2414$4, (void*)vr$1589, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2415$4, 0, 12 );
				FBSTRING* vr$1595 = fb_StrConcat( &TMP$2415$4, (void*)vr$1592, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2416$4, 0, 12 );
				FBSTRING* vr$1598 = fb_StrConcat( &TMP$2416$4, (void*)vr$1595, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2417$4, -1, (void*)vr$1598, -1, 0 );
				HWRITEASM64( &TMP$2417$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2417$4 );
			}
			goto label$1843;
			label$1844:;
			if( TMP$2412$3 != 4 ) goto label$1847;
			label$1848:;
			{
				FBSTRING TMP$2418$4;
				FBSTRING TMP$2419$4;
				FBSTRING TMP$2420$4;
				FBSTRING TMP$2421$4;
				FBSTRING TMP$2422$4;
				__builtin_memset( &TMP$2422$4, 0, 12 );
				__builtin_memset( &TMP$2418$4, 0, 12 );
				FBSTRING* vr$1608 = fb_StrConcat( &TMP$2418$4, (void*)"movsxd ", 8, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2419$4, 0, 12 );
				FBSTRING* vr$1611 = fb_StrConcat( &TMP$2419$4, (void*)vr$1608, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2420$4, 0, 12 );
				FBSTRING* vr$1614 = fb_StrConcat( &TMP$2420$4, (void*)vr$1611, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2421$4, 0, 12 );
				FBSTRING* vr$1617 = fb_StrConcat( &TMP$2421$4, (void*)vr$1614, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2422$4, -1, (void*)vr$1617, -1, 0 );
				HWRITEASM64( &TMP$2422$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2422$4 );
			}
			goto label$1843;
			label$1847:;
			{
				FBSTRING TMP$2423$4;
				FBSTRING TMP$2426$4;
				FBSTRING TMP$2427$4;
				__builtin_memset( &TMP$2423$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2423$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2423$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2423$4 );
				__builtin_memset( &TMP$2426$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2426$4, -1, (void*)"FOUND AN ERROR : in conv something missing 01", 46, 0 );
				HWRITEASM64( &TMP$2426$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2426$4 );
				__builtin_memset( &TMP$2427$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2427$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2427$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2427$4 );
			}
			label$1849:;
			label$1843:;
		}
	}
	goto label$1840;
	label$1841:;
	{
		{
			int32 TMP$2428$3;
			int32 TMP$2429$3;
			if( (V2DTYPE$1 & 480) == 0 ) goto label$1850;
			TMP$2428$3 = 24;
			goto label$3024;
			label$1850:;
			TMP$2428$3 = V2DTYPE$1 & 31;
			label$3024:;
			TMP$2429$3 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2428$3 * 28)) + 4);
			if( TMP$2429$3 == 1 ) goto label$1853;
			label$1854:;
			if( TMP$2429$3 != 2 ) goto label$1852;
			label$1853:;
			{
				FBSTRING TMP$2430$4;
				FBSTRING TMP$2431$4;
				FBSTRING TMP$2432$4;
				FBSTRING TMP$2433$4;
				FBSTRING TMP$2434$4;
				__builtin_memset( &TMP$2434$4, 0, 12 );
				__builtin_memset( &TMP$2430$4, 0, 12 );
				FBSTRING* vr$1642 = fb_StrConcat( &TMP$2430$4, (void*)"movzx ", 7, (void*)&OP1$1, -1 );
				__builtin_memset( &TMP$2431$4, 0, 12 );
				FBSTRING* vr$1645 = fb_StrConcat( &TMP$2431$4, (void*)vr$1642, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2432$4, 0, 12 );
				FBSTRING* vr$1648 = fb_StrConcat( &TMP$2432$4, (void*)vr$1645, -1, (void*)&PREFIX2$1, -1 );
				__builtin_memset( &TMP$2433$4, 0, 12 );
				FBSTRING* vr$1651 = fb_StrConcat( &TMP$2433$4, (void*)vr$1648, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2434$4, -1, (void*)vr$1651, -1, 0 );
				HWRITEASM64( &TMP$2434$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2434$4 );
			}
			goto label$1851;
			label$1852:;
			if( TMP$2429$3 != 4 ) goto label$1855;
			label$1856:;
			{
				FBSTRING TMP$2435$4;
				FBSTRING TMP$2436$4;
				FBSTRING TMP$2437$4;
				FBSTRING TMP$2438$4;
				FBSTRING TMP$2439$4;
				FBSTRING TMP$2440$4;
				FBSTRING TMP$2441$4;
				FBSTRING TMP$2442$4;
				__builtin_memset( &TMP$2438$4, 0, 12 );
				__builtin_memset( &TMP$2435$4, 0, 12 );
				FBSTRING* vr$1660 = fb_StrConcat( &TMP$2435$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2436$4, 0, 12 );
				FBSTRING* vr$1663 = fb_StrConcat( &TMP$2436$4, (void*)vr$1660, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2437$4, 0, 12 );
				FBSTRING* vr$1666 = fb_StrConcat( &TMP$2437$4, (void*)vr$1663, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2438$4, -1, (void*)vr$1666, -1, 0 );
				HWRITEASM64( &TMP$2438$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2438$4 );
				__builtin_memset( &TMP$2442$4, 0, 12 );
				__builtin_memset( &TMP$2439$4, 0, 12 );
				FBSTRING* vr$1675 = fb_StrConcat( &TMP$2439$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2440$4, 0, 12 );
				FBSTRING* vr$1678 = fb_StrConcat( &TMP$2440$4, (void*)vr$1675, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2441$4, 0, 12 );
				FBSTRING* vr$1681 = fb_StrConcat( &TMP$2441$4, (void*)vr$1678, -1, *(void**)((uint8*)REGSTRD$ + (REGRESULT$1 << (2 & 31))), 0 );
				fb_StrAssign( (void*)&TMP$2442$4, -1, (void*)vr$1681, -1, 0 );
				HWRITEASM64( &TMP$2442$4, 3 );
				fb_StrDelete( (FBSTRING*)&TMP$2442$4 );
			}
			goto label$1851;
			label$1855:;
			{
				FBSTRING TMP$2443$4;
				FBSTRING TMP$2446$4;
				FBSTRING TMP$2447$4;
				__builtin_memset( &TMP$2443$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2443$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2443$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2443$4 );
				__builtin_memset( &TMP$2446$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2446$4, -1, (void*)"FOUND AN ERROR : in conv something missing 02", 46, 0 );
				HWRITEASM64( &TMP$2446$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2446$4 );
				__builtin_memset( &TMP$2447$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2447$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2447$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2447$4 );
			}
			label$1857:;
			label$1851:;
		}
	}
	label$1840:;
	fb_StrDelete( (FBSTRING*)&PREFIX2$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX1$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1608:;
}

static void EMITSTORESTRUCT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$2462$1;
	FBSTRING TMP$2463$1;
	FBSTRING TMP$2464$1;
	label$1858:;
	FBSTRING DEST$1;
	__builtin_memset( &DEST$1, 0, 12 );
	int32 LGTV1$1;
	LGTV1$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
	int32 OFSV2$1;
	OFSV2$1 = (int32)*(int64*)((uint8*)V2$1 + 40);
	$15FB_STRUCT_INREG RETIN2REGS$1;
	RETIN2REGS$1 = *($15FB_STRUCT_INREG*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 132);
	int32 vr$8 = fb_StrCompare( (void*)OP3$1, -1, (void*)"", 1 );
	if( vr$8 == 0 ) goto label$1861;
	{
		EMITOP3_OP4( OP3$1 );
		label$1861:;
	}
	if( (-(RETIN2REGS$1 == 2) | -(RETIN2REGS$1 == 3)) == 0 ) goto label$1863;
	{
		FBSTRING TMP$2448$2;
		FBSTRING TMP$2449$2;
		FBSTRING TMP$2450$2;
		__builtin_memset( &TMP$2450$2, 0, 12 );
		__builtin_memset( &TMP$2448$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$2448$2, (void*)"mov ", 5, (void*)OP1$1, -1 );
		__builtin_memset( &TMP$2449$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$2449$2, (void*)vr$15, -1, (void*)", rax", 6 );
		fb_StrAssign( (void*)&TMP$2450$2, -1, (void*)vr$18, -1, 0 );
		HWRITEASM64( &TMP$2450$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2450$2 );
	}
	goto label$1862;
	label$1863:;
	{
		FBSTRING TMP$2451$2;
		FBSTRING TMP$2452$2;
		FBSTRING TMP$2453$2;
		FBSTRING TMP$2455$2;
		__builtin_memset( &TMP$2453$2, 0, 12 );
		__builtin_memset( &TMP$2451$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$2451$2, (void*)"movq ", 6, (void*)OP1$1, -1 );
		__builtin_memset( &TMP$2452$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$2452$2, (void*)vr$25, -1, (void*)", xmm0", 7 );
		fb_StrAssign( (void*)&TMP$2453$2, -1, (void*)vr$28, -1, 0 );
		HWRITEASM64( &TMP$2453$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2453$2 );
		__builtin_memset( &TMP$2455$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2455$2, -1, (void*)"movq rdx, xmm1", 15, 0 );
		HWRITEASM64( &TMP$2455$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2455$2 );
	}
	label$1862:;
	if( (-((uint32)(int32)*(uint8*)*(uint8**)OP1$1 == 45u) & (((-(LGTV1$1 == 9) | -(LGTV1$1 == 10)) | -(LGTV1$1 == 12)) | -(LGTV1$1 == 16))) == 0 ) goto label$1865;
	{
		FBSTRING TMP$2456$2;
		FBSTRING TMP$2458$2;
		FBSTRING TMP$2459$2;
		FBSTRING TMP$2460$2;
		FBSTRING TMP$2461$2;
		FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5 );
		int32 vr$49 = fb_StrInstr( 1, (FBSTRING*)OP1$1, (FBSTRING*)vr$48 );
		FBSTRING* vr$51 = fb_LEFT( (FBSTRING*)OP1$1, vr$49 + -1 );
		int32 vr$52 = fb_VALINT( (FBSTRING*)vr$51 );
		FBSTRING* vr$54 = fb_IntToStr( vr$52 + 8 );
		__builtin_memset( &TMP$2456$2, 0, 12 );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$2456$2, (void*)vr$54, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)OP1$1, -1, (void*)vr$57, -1, 0 );
		{
			uint32 TMP$2457$3;
			TMP$2457$3 = (uint32)LGTV1$1;
			goto label$1867;
			label$1868:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dl", 3, 0 );
			}
			goto label$1866;
			label$1869:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"dx", 3, 0 );
			}
			goto label$1866;
			label$1870:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"edx", 4, 0 );
			}
			goto label$1866;
			label$1871:;
			{
				fb_StrAssign( (void*)&DEST$1, -1, (void*)"rdx", 4, 0 );
			}
			goto label$1866;
			label$1867:;
			static const void* tmp$3861[8] = {
				&&label$1868,
				&&label$1869,
				&&label$1866,
				&&label$1870,
				&&label$1866,
				&&label$1866,
				&&label$1866,
				&&label$1871,
			};
			if( (TMP$2457$3 - 9u) > 7u ) goto label$1866;
			goto *tmp$3861[TMP$2457$3 - 9u];
			label$1866:;
		}
		__builtin_memset( &TMP$2461$2, 0, 12 );
		__builtin_memset( &TMP$2458$2, 0, 12 );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$2458$2, (void*)"mov ", 5, (void*)OP1$1, -1 );
		__builtin_memset( &TMP$2459$2, 0, 12 );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$2459$2, (void*)vr$66, -1, (void*)", ", 3 );
		__builtin_memset( &TMP$2460$2, 0, 12 );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$2460$2, (void*)vr$69, -1, (void*)&DEST$1, -1 );
		fb_StrAssign( (void*)&TMP$2461$2, -1, (void*)vr$72, -1, 0 );
		HWRITEASM64( &TMP$2461$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2461$2 );
		fb_StrDelete( (FBSTRING*)&DEST$1 );
		goto label$1859;
	}
	label$1865:;
	label$1864:;
	__builtin_memset( &TMP$2463$1, 0, 12 );
	__builtin_memset( &TMP$2462$1, 0, 12 );
	FBSTRING* vr$80 = fb_StrConcat( &TMP$2462$1, (void*)"lea rax, ", 10, (void*)OP1$1, -1 );
	fb_StrAssign( (void*)&TMP$2463$1, -1, (void*)vr$80, -1, 0 );
	HWRITEASM64( &TMP$2463$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2463$1 );
	__builtin_memset( &TMP$2464$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$2464$1, -1, (void*)"add rax, 8", 11, 0 );
	HWRITEASM64( &TMP$2464$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$2464$1 );
	{
		uint32 TMP$2465$2;
		TMP$2465$2 = (uint32)LGTV1$1;
		goto label$1873;
		label$1874:;
		{
			FBSTRING TMP$2467$3;
			__builtin_memset( &TMP$2467$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2467$3, -1, (void*)"mov [rax], dl", 14, 0 );
			HWRITEASM64( &TMP$2467$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2467$3 );
		}
		goto label$1872;
		label$1875:;
		{
			FBSTRING TMP$2469$3;
			__builtin_memset( &TMP$2469$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2469$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2469$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2469$3 );
		}
		goto label$1872;
		label$1876:;
		{
			FBSTRING TMP$2470$3;
			FBSTRING TMP$2472$3;
			FBSTRING TMP$2474$3;
			__builtin_memset( &TMP$2470$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2470$3, -1, (void*)"mov [rax], dx", 14, 0 );
			HWRITEASM64( &TMP$2470$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2470$3 );
			__builtin_memset( &TMP$2472$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2472$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2472$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2472$3 );
			__builtin_memset( &TMP$2474$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2474$3, -1, (void*)"mov [rax+2], dl", 16, 0 );
			HWRITEASM64( &TMP$2474$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2474$3 );
		}
		goto label$1872;
		label$1877:;
		{
			FBSTRING TMP$2476$3;
			__builtin_memset( &TMP$2476$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2476$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2476$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2476$3 );
		}
		goto label$1872;
		label$1878:;
		{
			FBSTRING TMP$2477$3;
			FBSTRING TMP$2479$3;
			FBSTRING TMP$2481$3;
			__builtin_memset( &TMP$2477$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2477$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2477$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2477$3 );
			__builtin_memset( &TMP$2479$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2479$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2479$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2479$3 );
			__builtin_memset( &TMP$2481$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2481$3, -1, (void*)"mov [rax+4], dl", 16, 0 );
			HWRITEASM64( &TMP$2481$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2481$3 );
		}
		goto label$1872;
		label$1879:;
		{
			FBSTRING TMP$2482$3;
			FBSTRING TMP$2483$3;
			FBSTRING TMP$2485$3;
			__builtin_memset( &TMP$2482$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2482$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2482$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2482$3 );
			__builtin_memset( &TMP$2483$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2483$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2483$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2483$3 );
			__builtin_memset( &TMP$2485$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2485$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2485$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2485$3 );
		}
		goto label$1872;
		label$1880:;
		{
			FBSTRING TMP$2486$3;
			FBSTRING TMP$2487$3;
			FBSTRING TMP$2488$3;
			FBSTRING TMP$2489$3;
			FBSTRING TMP$2491$3;
			__builtin_memset( &TMP$2486$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2486$3, -1, (void*)"mov [rax], edx", 15, 0 );
			HWRITEASM64( &TMP$2486$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2486$3 );
			__builtin_memset( &TMP$2487$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2487$3, -1, (void*)"shr rdx, 4", 11, 0 );
			HWRITEASM64( &TMP$2487$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2487$3 );
			__builtin_memset( &TMP$2488$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2488$3, -1, (void*)"mov [rax+4], dx", 16, 0 );
			HWRITEASM64( &TMP$2488$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2488$3 );
			__builtin_memset( &TMP$2489$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2489$3, -1, (void*)"shr rdx, 2", 11, 0 );
			HWRITEASM64( &TMP$2489$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2489$3 );
			__builtin_memset( &TMP$2491$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2491$3, -1, (void*)"mov [rax+6], dl", 16, 0 );
			HWRITEASM64( &TMP$2491$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2491$3 );
		}
		goto label$1872;
		label$1881:;
		{
			FBSTRING TMP$2493$3;
			__builtin_memset( &TMP$2493$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2493$3, -1, (void*)"mov [rax], rdx", 15, 0 );
			HWRITEASM64( &TMP$2493$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2493$3 );
		}
		goto label$1872;
		label$1873:;
		static const void* tmp$3862[8] = {
			&&label$1874,
			&&label$1875,
			&&label$1876,
			&&label$1877,
			&&label$1878,
			&&label$1879,
			&&label$1880,
			&&label$1881,
		};
		if( (TMP$2465$2 - 9u) > 7u ) goto label$1872;
		goto *tmp$3862[TMP$2465$2 - 9u];
		label$1872:;
	}
	fb_StrDelete( (FBSTRING*)&DEST$1 );
	label$1859:;
}

static int32 HISSTRUCTIN2REGS( struct $6IRVREG* V1$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1882:;
	if( (*(int32*)((uint8*)V1$1 + 4) & 511) != 20 ) goto label$1885;
	{
		fb$result$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 8) + 132) != 0);
		goto label$1883;
	}
	label$1885:;
	label$1884:;
	fb$result$1 = 0;
	goto label$1883;
	label$1883:;
	return fb$result$1;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int32 TMP$2494$1;
	int32 TMP$2495$1;
	label$1886:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 12 );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 12 );
	FBSTRING CODE1$1;
	__builtin_memset( &CODE1$1, 0, 12 );
	FBSTRING CODE2$1;
	__builtin_memset( &CODE2$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$1888;
	TMP$2494$1 = 24;
	goto label$3025;
	label$1888:;
	TMP$2494$1 = *(int32*)((uint8*)V1$1 + 4) & 31;
	label$3025:;
	if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1889;
	TMP$2495$1 = 24;
	goto label$3026;
	label$1889:;
	TMP$2495$1 = *(int32*)((uint8*)V2$1 + 4) & 31;
	label$3026:;
	if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2494$1 * 28)) + 4) >= *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$2495$1 * 28)) + 4) ) goto label$1891;
	{
		struct $6IRVREG* TEMP0$2;
		struct $6IRVREG* vr$21 = IRHLALLOCVREG( *(int32*)((uint8*)V1$1 + 4), (struct $8FBSYMBOL*)0u );
		TEMP0$2 = vr$21;
		_EMITCONVERT( TEMP0$2, V2$1 );
		__builtin_memcpy( V2$1, TEMP0$2, 72 );
	}
	label$1891:;
	label$1890:;
	{
		$15IRVREGTYPE_ENUM TMP$2496$2;
		TMP$2496$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2496$2 != 2 ) goto label$1893;
		label$1894:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1892;
		label$1893:;
		if( TMP$2496$2 != 4 ) goto label$1895;
		label$1896:;
		{
			if( *(int32*)V2$1 != 0 ) goto label$1898;
			{
				FBSTRING TMP$2497$4;
				FBSTRING TMP$2500$4;
				FBSTRING TMP$2501$4;
				__builtin_memset( &TMP$2497$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2497$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2497$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2497$4 );
				__builtin_memset( &TMP$2500$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2500$4, -1, (void*)"FOUND AN ERROR : In emitstore used to be sure that case IMM to REG may happen.... report to dev", 96, 0 );
				HWRITEASM64( &TMP$2500$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2500$4 );
				__builtin_memset( &TMP$2501$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2501$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2501$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2501$4 );
				if( (-(*(int64*)((uint8*)V2$1 + 24) >= 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$1900;
				{
					int32 vr$44 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (vr$44 << (2 & 31))), 0, 0 );
				}
				goto label$1899;
				label$1900:;
				{
					int32 vr$48 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$48 << (2 & 31))), 0, 0 );
				}
				label$1899:;
			}
			goto label$1897;
			label$1898:;
			{
				DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 4);
				if( (DTYPE$1 & 480) == 0 ) goto label$1902;
				{
					DTYPE$1 = 8;
					label$1902:;
				}
				{
					if( DTYPE$1 == 8 ) goto label$1905;
					label$1906:;
					if( DTYPE$1 == 9 ) goto label$1905;
					label$1907:;
					if( DTYPE$1 == 13 ) goto label$1905;
					label$1908:;
					if( DTYPE$1 == 14 ) goto label$1905;
					label$1909:;
					if( DTYPE$1 == 16 ) goto label$1905;
					label$1910:;
					if( DTYPE$1 != 10 ) goto label$1904;
					label$1905:;
					{
						int32 vr$54 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$54 << (2 & 31))), 0, 0 );
					}
					goto label$1903;
					label$1904:;
					if( DTYPE$1 == 11 ) goto label$1912;
					label$1913:;
					if( DTYPE$1 == 12 ) goto label$1912;
					label$1914:;
					if( DTYPE$1 != 15 ) goto label$1911;
					label$1912:;
					{
						int32 vr$58 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (vr$58 << (2 & 31))), 0, 0 );
					}
					goto label$1903;
					label$1911:;
					if( DTYPE$1 == 5 ) goto label$1916;
					label$1917:;
					if( DTYPE$1 != 6 ) goto label$1915;
					label$1916:;
					{
						int32 vr$62 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (vr$62 << (2 & 31))), 0, 0 );
					}
					goto label$1903;
					label$1915:;
					if( DTYPE$1 == 2 ) goto label$1919;
					label$1920:;
					if( DTYPE$1 == 3 ) goto label$1919;
					label$1921:;
					if( DTYPE$1 == 1 ) goto label$1919;
					label$1922:;
					if( DTYPE$1 != 4 ) goto label$1918;
					label$1919:;
					{
						int32 vr$66 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (vr$66 << (2 & 31))), 0, 0 );
					}
					goto label$1903;
					label$1918:;
					{
						FBSTRING TMP$2502$6;
						FBSTRING TMP$2506$6;
						FBSTRING TMP$2507$6;
						FBSTRING TMP$2508$6;
						__builtin_memset( &TMP$2502$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2502$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2502$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2502$6 );
						__builtin_memset( &TMP$2507$6, 0, 12 );
						FBSTRING* vr$75 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
						__builtin_memset( &TMP$2506$6, 0, 12 );
						FBSTRING* vr$78 = fb_StrConcat( &TMP$2506$6, (void*)"FOUND AN ERROR : Storing datatype not handled 01 = ", 52, (void*)vr$75, -1 );
						fb_StrAssign( (void*)&TMP$2507$6, -1, (void*)vr$78, -1, 0 );
						HWRITEASM64( &TMP$2507$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2507$6 );
						__builtin_memset( &TMP$2508$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2508$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2508$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2508$6 );
					}
					label$1923:;
					label$1903:;
				}
			}
			label$1897:;
		}
		goto label$1892;
		label$1895:;
		if( TMP$2496$2 != 1 ) goto label$1924;
		label$1925:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$1927;
			{
				FBSTRING TMP$2509$4;
				FBSTRING TMP$2510$4;
				FBSTRING TMP$2511$4;
				FBSTRING* vr$96 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$98 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2509$4, 0, 12 );
				FBSTRING* vr$101 = fb_StrConcat( &TMP$2509$4, (void*)vr$98, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2510$4, 0, 12 );
				FBSTRING* vr$104 = fb_StrConcat( &TMP$2510$4, (void*)vr$101, -1, (void*)vr$96, -1 );
				__builtin_memset( &TMP$2511$4, 0, 12 );
				FBSTRING* vr$107 = fb_StrConcat( &TMP$2511$4, (void*)vr$104, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$107, -1, 0 );
			}
			goto label$1926;
			label$1927:;
			{
				FBSTRING TMP$2512$4;
				FBSTRING* vr$110 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2512$4, 0, 12 );
				FBSTRING* vr$113 = fb_StrConcat( &TMP$2512$4, (void*)vr$110, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$113, -1, 0 );
			}
			label$1926:;
		}
		goto label$1892;
		label$1924:;
		if( TMP$2496$2 != 3 ) goto label$1928;
		label$1929:;
		{
			if( *(int64*)((uint8*)V1$1 + 40) == 0ll ) goto label$1931;
			{
				if( *(struct $6IRVREG**)((uint8*)V1$1 + 52) != (struct $6IRVREG*)0u ) goto label$1933;
				{
					if( (-(*(int64*)((uint8*)V1$1 + 40) < -2147483648ll) | -(*(int64*)((uint8*)V1$1 + 40) > 4294967295ll)) == 0 ) goto label$1935;
					{
						FBSTRING TMP$2513$6;
						FBSTRING* vr$123 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2513$6, 0, 12 );
						FBSTRING* vr$126 = fb_StrConcat( &TMP$2513$6, (void*)"mov rax, ", 10, (void*)vr$123, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$126, -1, 0 );
					}
					goto label$1934;
					label$1935:;
					{
						FBSTRING TMP$2514$6;
						FBSTRING* vr$129 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2514$6, 0, 12 );
						FBSTRING* vr$132 = fb_StrConcat( &TMP$2514$6, (void*)"mov eax, ", 10, (void*)vr$129, -1 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$132, -1, 0 );
					}
					label$1934:;
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				goto label$1932;
				label$1933:;
				{
					FBSTRING TMP$2515$5;
					FBSTRING TMP$2516$5;
					FBSTRING TMP$2517$5;
					int32 vr$137 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$140 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2515$5, 0, 12 );
					FBSTRING* vr$143 = fb_StrConcat( &TMP$2515$5, (void*)vr$140, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2516$5, 0, 12 );
					FBSTRING* vr$146 = fb_StrConcat( &TMP$2516$5, (void*)vr$143, -1, *(void**)((uint8*)REGSTRQ$ + (vr$137 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2517$5, 0, 12 );
					FBSTRING* vr$149 = fb_StrConcat( &TMP$2517$5, (void*)vr$146, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$149, -1, 0 );
				}
				label$1932:;
			}
			goto label$1930;
			label$1931:;
			{
				FBSTRING TMP$2518$4;
				FBSTRING TMP$2519$4;
				int32 vr$153 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
				__builtin_memset( &TMP$2518$4, 0, 12 );
				FBSTRING* vr$157 = fb_StrConcat( &TMP$2518$4, (void*)"[", 2, *(void**)((uint8*)REGSTRQ$ + (vr$153 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2519$4, 0, 12 );
				FBSTRING* vr$160 = fb_StrConcat( &TMP$2519$4, (void*)vr$157, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$160, -1, 0 );
			}
			label$1930:;
		}
		goto label$1892;
		label$1928:;
		if( TMP$2496$2 != 5 ) goto label$1936;
		label$1937:;
		{
			FBSTRING TMP$2520$3;
			FBSTRING TMP$2521$3;
			FBSTRING TMP$2522$3;
			FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			uint8* vr$165 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			__builtin_memset( &TMP$2520$3, 0, 12 );
			FBSTRING* vr$168 = fb_StrConcat( &TMP$2520$3, (void*)vr$165, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2521$3, 0, 12 );
			FBSTRING* vr$171 = fb_StrConcat( &TMP$2521$3, (void*)vr$168, -1, (void*)vr$163, -1 );
			__builtin_memset( &TMP$2522$3, 0, 12 );
			FBSTRING* vr$174 = fb_StrConcat( &TMP$2522$3, (void*)vr$171, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$174, -1, 0 );
		}
		goto label$1892;
		label$1936:;
		{
			FBSTRING TMP$2523$3;
			FBSTRING TMP$2526$3;
			FBSTRING TMP$2527$3;
			__builtin_memset( &TMP$2523$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2523$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2523$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2523$3 );
			__builtin_memset( &TMP$2526$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2526$3, -1, (void*)"FOUND AN ERROR : store 01", 26, 0 );
			HWRITEASM64( &TMP$2526$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2526$3 );
			__builtin_memset( &TMP$2527$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2527$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2527$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2527$3 );
		}
		label$1938:;
		label$1892:;
	}
	int32 vr$188 = HISSTRUCTIN2REGS( V2$1 );
	if( vr$188 == 0 ) goto label$1940;
	{
		EMITSTORESTRUCT( V1$1, V2$1, &OP1$1, &OP3$1 );
		fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
		fb_StrDelete( (FBSTRING*)&CODE2$1 );
		fb_StrDelete( (FBSTRING*)&CODE1$1 );
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP4$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP2$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1887;
	}
	label$1940:;
	label$1939:;
	{
		$15IRVREGTYPE_ENUM TMP$2528$2;
		TMP$2528$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2528$2 != 2 ) goto label$1942;
		label$1943:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1941;
		label$1942:;
		if( TMP$2528$2 != 4 ) goto label$1944;
		label$1945:;
		{
			DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 4);
			if( (DTYPE$1 & 480) == 0 ) goto label$1947;
			{
				DTYPE$1 = 8;
				label$1947:;
			}
			{
				if( DTYPE$1 == 8 ) goto label$1950;
				label$1951:;
				if( DTYPE$1 == 9 ) goto label$1950;
				label$1952:;
				if( DTYPE$1 == 13 ) goto label$1950;
				label$1953:;
				if( DTYPE$1 == 14 ) goto label$1950;
				label$1954:;
				if( DTYPE$1 == 16 ) goto label$1950;
				label$1955:;
				if( DTYPE$1 != 10 ) goto label$1949;
				label$1950:;
				{
					int32 vr$205 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$205 << (2 & 31))), 0, 0 );
				}
				goto label$1948;
				label$1949:;
				if( DTYPE$1 == 11 ) goto label$1957;
				label$1958:;
				if( DTYPE$1 == 12 ) goto label$1957;
				label$1959:;
				if( DTYPE$1 != 15 ) goto label$1956;
				label$1957:;
				{
					int32 vr$209 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRD$ + (vr$209 << (2 & 31))), 0, 0 );
				}
				goto label$1948;
				label$1956:;
				if( DTYPE$1 == 5 ) goto label$1961;
				label$1962:;
				if( DTYPE$1 != 6 ) goto label$1960;
				label$1961:;
				{
					int32 vr$213 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRW$ + (vr$213 << (2 & 31))), 0, 0 );
				}
				goto label$1948;
				label$1960:;
				if( DTYPE$1 == 2 ) goto label$1964;
				label$1965:;
				if( DTYPE$1 == 3 ) goto label$1964;
				label$1966:;
				if( DTYPE$1 == 1 ) goto label$1964;
				label$1967:;
				if( DTYPE$1 != 4 ) goto label$1963;
				label$1964:;
				{
					int32 vr$217 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRB$ + (vr$217 << (2 & 31))), 0, 0 );
				}
				goto label$1948;
				label$1963:;
				{
					FBSTRING TMP$2529$5;
					FBSTRING TMP$2533$5;
					FBSTRING TMP$2534$5;
					FBSTRING TMP$2535$5;
					__builtin_memset( &TMP$2529$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2529$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2529$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2529$5 );
					__builtin_memset( &TMP$2534$5, 0, 12 );
					FBSTRING* vr$226 = fb_IntToStr( *(int32*)((uint8*)V2$1 + 4) );
					__builtin_memset( &TMP$2533$5, 0, 12 );
					FBSTRING* vr$229 = fb_StrConcat( &TMP$2533$5, (void*)"FOUND AN ERROR : Storing datatype not handled 02 = ", 52, (void*)vr$226, -1 );
					fb_StrAssign( (void*)&TMP$2534$5, -1, (void*)vr$229, -1, 0 );
					HWRITEASM64( &TMP$2534$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2534$5 );
					__builtin_memset( &TMP$2535$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2535$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2535$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2535$5 );
				}
				label$1968:;
				label$1948:;
			}
		}
		goto label$1941;
		label$1944:;
		if( TMP$2528$2 != 1 ) goto label$1969;
		label$1970:;
		{
			int32 TMP$2536$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$1971;
			TMP$2536$3 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
			goto label$3027;
			label$1971:;
			TMP$2536$3 = 0;
			label$3027:;
			if( TMP$2536$3 == 0 ) goto label$1973;
			{
				FBSTRING TMP$2537$4;
				FBSTRING TMP$2538$4;
				FBSTRING TMP$2539$4;
				FBSTRING* vr$249 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$251 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2537$4, 0, 12 );
				FBSTRING* vr$254 = fb_StrConcat( &TMP$2537$4, (void*)vr$251, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2538$4, 0, 12 );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$2538$4, (void*)vr$254, -1, (void*)vr$249, -1 );
				__builtin_memset( &TMP$2539$4, 0, 12 );
				FBSTRING* vr$260 = fb_StrConcat( &TMP$2539$4, (void*)vr$257, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$260, -1, 0 );
			}
			goto label$1972;
			label$1973:;
			{
				FBSTRING TMP$2540$4;
				FBSTRING* vr$263 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2540$4, 0, 12 );
				FBSTRING* vr$266 = fb_StrConcat( &TMP$2540$4, (void*)vr$263, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$266, -1, 0 );
			}
			label$1972:;
		}
		goto label$1941;
		label$1969:;
		if( TMP$2528$2 != 3 ) goto label$1974;
		label$1975:;
		{
			if( *(struct $6IRVREG**)((uint8*)V2$1 + 52) == (struct $6IRVREG*)0u ) goto label$1977;
			{
				FBSTRING TMP$2541$4;
				FBSTRING TMP$2542$4;
				FBSTRING TMP$2543$4;
				int32 vr$271 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				FBSTRING* vr$274 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2541$4, 0, 12 );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$2541$4, (void*)vr$274, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$2542$4, 0, 12 );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$2542$4, (void*)vr$277, -1, *(void**)((uint8*)REGSTRQ$ + (vr$271 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2543$4, 0, 12 );
				FBSTRING* vr$283 = fb_StrConcat( &TMP$2543$4, (void*)vr$280, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$283, -1, 0 );
			}
			goto label$1976;
			label$1977:;
			{
				FBSTRING TMP$2544$4;
				FBSTRING TMP$2545$4;
				FBSTRING* vr$286 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2544$4, 0, 12 );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$2544$4, (void*)"[", 2, (void*)vr$286, -1 );
				__builtin_memset( &TMP$2545$4, 0, 12 );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$2545$4, (void*)vr$289, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$292, -1, 0 );
			}
			label$1976:;
		}
		goto label$1941;
		label$1974:;
		if( TMP$2528$2 != 5 ) goto label$1978;
		label$1979:;
		{
			FBSTRING TMP$2546$3;
			FBSTRING TMP$2547$3;
			FBSTRING TMP$2548$3;
			FBSTRING* vr$295 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
			uint8* vr$297 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
			__builtin_memset( &TMP$2546$3, 0, 12 );
			FBSTRING* vr$300 = fb_StrConcat( &TMP$2546$3, (void*)vr$297, 0, (void*)"[rip+", 6 );
			__builtin_memset( &TMP$2547$3, 0, 12 );
			FBSTRING* vr$303 = fb_StrConcat( &TMP$2547$3, (void*)vr$300, -1, (void*)vr$295, -1 );
			__builtin_memset( &TMP$2548$3, 0, 12 );
			FBSTRING* vr$306 = fb_StrConcat( &TMP$2548$3, (void*)vr$303, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$306, -1, 0 );
		}
		goto label$1941;
		label$1978:;
		if( TMP$2528$2 != 0 ) goto label$1980;
		label$1981:;
		{
			int32 TMP$2549$3;
			if( (-(*(int32*)((uint8*)V1$1 + 4) == 1) & -(*(int64*)((uint8*)V2$1 + 24) != 0ll)) == 0 ) goto label$1983;
			{
				*(int64*)((uint8*)V2$1 + 24) = 1ll;
			}
			label$1983:;
			label$1982:;
			if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$1984;
			TMP$2549$3 = 24;
			goto label$3028;
			label$1984:;
			TMP$2549$3 = *(int32*)((uint8*)V2$1 + 4) & 31;
			label$3028:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2549$3 * 28)) != 1 ) goto label$1986;
			{
				FBSTRING* vr$321 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), *(int32*)((uint8*)V2$1 + 4), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$321, -1, 0 );
			}
			goto label$1985;
			label$1986:;
			{
				FBSTRING* vr$324 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$324, -1, 0 );
			}
			label$1985:;
		}
		goto label$1941;
		label$1980:;
		{
			FBSTRING TMP$2550$3;
			FBSTRING TMP$2551$3;
			FBSTRING TMP$2552$3;
			__builtin_memset( &TMP$2550$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2550$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2550$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2550$3 );
			__builtin_memset( &TMP$2551$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2551$3, -1, (void*)"FOUND AN ERROR : store 02 ??", 29, 0 );
			HWRITEASM64( &TMP$2551$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2551$3 );
			__builtin_memset( &TMP$2552$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2552$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2552$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2552$3 );
		}
		label$1987:;
		label$1941:;
	}
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$1989;
	{
		DTYPE$1 = 8;
		label$1989:;
	}
	{
		if( DTYPE$1 == 8 ) goto label$1992;
		label$1993:;
		if( DTYPE$1 == 9 ) goto label$1992;
		label$1994:;
		if( DTYPE$1 == 13 ) goto label$1992;
		label$1995:;
		if( DTYPE$1 == 14 ) goto label$1992;
		label$1996:;
		if( DTYPE$1 == 16 ) goto label$1992;
		label$1997:;
		if( DTYPE$1 != 10 ) goto label$1991;
		label$1992:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"QWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov rax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", rax", 6, 0 );
		}
		goto label$1990;
		label$1991:;
		if( DTYPE$1 == 11 ) goto label$1999;
		label$2000:;
		if( DTYPE$1 == 12 ) goto label$1999;
		label$2001:;
		if( DTYPE$1 != 15 ) goto label$1998;
		label$1999:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
		}
		goto label$1990;
		label$1998:;
		if( DTYPE$1 == 5 ) goto label$2003;
		label$2004:;
		if( DTYPE$1 != 6 ) goto label$2002;
		label$2003:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
		}
		goto label$1990;
		label$2002:;
		if( DTYPE$1 == 2 ) goto label$2006;
		label$2007:;
		if( DTYPE$1 == 3 ) goto label$2006;
		label$2008:;
		if( DTYPE$1 == 1 ) goto label$2006;
		label$2009:;
		if( DTYPE$1 != 4 ) goto label$2005;
		label$2006:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"BYTE PTR ", 10, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov al, ", 9, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1, (void*)", al", 5, 0 );
		}
		goto label$1990;
		label$2005:;
		if( DTYPE$1 != 7 ) goto label$2010;
		label$2011:;
		{
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + 200) != 2 ) goto label$2013;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"WORD PTR ", 10, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"movzx eax, ", 12, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", ax", 5, 0 );
			}
			goto label$2012;
			label$2013:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + 200) != 4 ) goto label$2014;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1, (void*)"DWORD PTR ", 11, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1, (void*)"mov eax, ", 10, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1, (void*)", eax", 6, 0 );
			}
			goto label$2012;
			label$2014:;
			{
				FBSTRING TMP$2554$4;
				FBSTRING TMP$2557$4;
				FBSTRING TMP$2558$4;
				__builtin_memset( &TMP$2554$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2554$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2554$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2554$4 );
				__builtin_memset( &TMP$2557$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2557$4, -1, (void*)"FOUND AN ERROR : emitstore datatype WCHAR not handled", 54, 0 );
				HWRITEASM64( &TMP$2557$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2557$4 );
				__builtin_memset( &TMP$2558$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2558$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2558$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2558$4 );
			}
			label$2012:;
		}
		goto label$1990;
		label$2010:;
		{
			FBSTRING TMP$2559$3;
			FBSTRING TMP$2563$3;
			FBSTRING TMP$2564$3;
			FBSTRING TMP$2565$3;
			__builtin_memset( &TMP$2559$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2559$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2559$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2559$3 );
			__builtin_memset( &TMP$2564$3, 0, 12 );
			FBSTRING* vr$376 = fb_IntToStr( DTYPE$1 );
			__builtin_memset( &TMP$2563$3, 0, 12 );
			FBSTRING* vr$379 = fb_StrConcat( &TMP$2563$3, (void*)"FOUND AN ERROR : emitstore datatype not handled 03= ", 53, (void*)vr$376, -1 );
			fb_StrAssign( (void*)&TMP$2564$3, -1, (void*)vr$379, -1, 0 );
			HWRITEASM64( &TMP$2564$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2564$3 );
			__builtin_memset( &TMP$2565$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2565$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2565$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2565$3 );
		}
		label$2015:;
		label$1990:;
	}
	if( (-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 1)) == 0 ) goto label$2017;
	{
		int32 TMP$2566$2;
		FBSTRING TMP$2577$2;
		FBSTRING TMP$2578$2;
		FBSTRING TMP$2579$2;
		FBSTRING TMP$2580$2;
		FBSTRING TMP$2581$2;
		FBSTRING TMP$2582$2;
		FBSTRING TMP$2583$2;
		if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2018;
		int32 vr$392 = FBGETOPTION( 0 );
		TMP$2566$2 = -(vr$392 == 2);
		goto label$3029;
		label$2018:;
		TMP$2566$2 = 0;
		label$3029:;
		if( TMP$2566$2 == 0 ) goto label$2020;
		{
			int32 TMP$2567$3;
			int32 TMP$2573$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2021;
			TMP$2567$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
			goto label$3030;
			label$2021:;
			TMP$2567$3 = 0;
			label$3030:;
			if( TMP$2567$3 == 0 ) goto label$2023;
			{
				FBSTRING TMP$2568$4;
				FBSTRING TMP$2569$4;
				FBSTRING TMP$2570$4;
				FBSTRING TMP$2571$4;
				FBSTRING TMP$2572$4;
				int32 vr$399 = REG_FINDFREE( 999998, -1 );
				TEMPO$1 = vr$399;
				fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
				*(int32*)((uint8*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
				__builtin_memset( &TMP$2572$4, 0, 12 );
				uint8* vr$405 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2568$4, 0, 12 );
				FBSTRING* vr$409 = fb_StrConcat( &TMP$2568$4, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
				__builtin_memset( &TMP$2569$4, 0, 12 );
				FBSTRING* vr$412 = fb_StrConcat( &TMP$2569$4, (void*)vr$409, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2570$4, 0, 12 );
				FBSTRING* vr$415 = fb_StrConcat( &TMP$2570$4, (void*)vr$412, -1, (void*)vr$405, 0 );
				__builtin_memset( &TMP$2571$4, 0, 12 );
				FBSTRING* vr$418 = fb_StrConcat( &TMP$2571$4, (void*)vr$415, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2572$4, -1, (void*)vr$418, -1, 0 );
				HWRITEASM64( &TMP$2572$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2572$4 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
			}
			label$2023:;
			label$2022:;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2024;
			TMP$2573$3 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
			goto label$3031;
			label$2024:;
			TMP$2573$3 = 0;
			label$3031:;
			if( TMP$2573$3 == 0 ) goto label$2026;
			{
				FBSTRING TMP$2574$4;
				FBSTRING TMP$2575$4;
				FBSTRING TMP$2576$4;
				__builtin_memset( &TMP$2576$4, 0, 12 );
				uint8* vr$433 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2574$4, 0, 12 );
				FBSTRING* vr$436 = fb_StrConcat( &TMP$2574$4, (void*)"mov rax, ", 10, (void*)vr$433, 0 );
				__builtin_memset( &TMP$2575$4, 0, 12 );
				FBSTRING* vr$439 = fb_StrConcat( &TMP$2575$4, (void*)vr$436, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2576$4, -1, (void*)vr$439, -1, 0 );
				HWRITEASM64( &TMP$2576$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2576$4 );
				fb_StrAssign( (void*)&OP2$1, -1, (void*)"[rax]", 6, 0 );
			}
			label$2026:;
			label$2025:;
		}
		label$2020:;
		label$2019:;
		__builtin_memset( &TMP$2579$2, 0, 12 );
		__builtin_memset( &TMP$2577$2, 0, 12 );
		FBSTRING* vr$450 = fb_StrConcat( &TMP$2577$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2578$2, 0, 12 );
		FBSTRING* vr$453 = fb_StrConcat( &TMP$2578$2, (void*)vr$450, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2579$2, -1, (void*)vr$453, -1, 0 );
		HWRITEASM64( &TMP$2579$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2579$2 );
		__builtin_memset( &TMP$2583$2, 0, 12 );
		__builtin_memset( &TMP$2580$2, 0, 12 );
		FBSTRING* vr$463 = fb_StrConcat( &TMP$2580$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2581$2, 0, 12 );
		FBSTRING* vr$466 = fb_StrConcat( &TMP$2581$2, (void*)vr$463, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2582$2, 0, 12 );
		FBSTRING* vr$469 = fb_StrConcat( &TMP$2582$2, (void*)vr$466, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2583$2, -1, (void*)vr$469, -1, 0 );
		HWRITEASM64( &TMP$2583$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2583$2 );
	}
	goto label$2016;
	label$2017:;
	if( (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 2)) == 0 ) goto label$2027;
	{
		FBSTRING TMP$2584$2;
		FBSTRING TMP$2585$2;
		FBSTRING TMP$2586$2;
		FBSTRING TMP$2587$2;
		FBSTRING TMP$2588$2;
		FBSTRING TMP$2589$2;
		FBSTRING TMP$2590$2;
		int32 vr$479 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$479 == 0 ) goto label$2029;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2029:;
		}
		__builtin_memset( &TMP$2586$2, 0, 12 );
		__builtin_memset( &TMP$2584$2, 0, 12 );
		FBSTRING* vr$487 = fb_StrConcat( &TMP$2584$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2585$2, 0, 12 );
		FBSTRING* vr$490 = fb_StrConcat( &TMP$2585$2, (void*)vr$487, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2586$2, -1, (void*)vr$490, -1, 0 );
		HWRITEASM64( &TMP$2586$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2586$2 );
		int32 vr$495 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$495 == 0 ) goto label$2031;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2031:;
		}
		__builtin_memset( &TMP$2590$2, 0, 12 );
		__builtin_memset( &TMP$2587$2, 0, 12 );
		FBSTRING* vr$503 = fb_StrConcat( &TMP$2587$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2588$2, 0, 12 );
		FBSTRING* vr$506 = fb_StrConcat( &TMP$2588$2, (void*)vr$503, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2589$2, 0, 12 );
		FBSTRING* vr$509 = fb_StrConcat( &TMP$2589$2, (void*)vr$506, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2590$2, -1, (void*)vr$509, -1, 0 );
		HWRITEASM64( &TMP$2590$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2590$2 );
	}
	goto label$2016;
	label$2027:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 3)) | (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2032;
	{
		FBSTRING TMP$2591$2;
		FBSTRING TMP$2592$2;
		FBSTRING TMP$2593$2;
		FBSTRING TMP$2594$2;
		FBSTRING TMP$2595$2;
		FBSTRING TMP$2596$2;
		FBSTRING TMP$2597$2;
		__builtin_memset( &TMP$2593$2, 0, 12 );
		__builtin_memset( &TMP$2591$2, 0, 12 );
		FBSTRING* vr$530 = fb_StrConcat( &TMP$2591$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2592$2, 0, 12 );
		FBSTRING* vr$533 = fb_StrConcat( &TMP$2592$2, (void*)vr$530, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2593$2, -1, (void*)vr$533, -1, 0 );
		HWRITEASM64( &TMP$2593$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2593$2 );
		__builtin_memset( &TMP$2597$2, 0, 12 );
		__builtin_memset( &TMP$2594$2, 0, 12 );
		FBSTRING* vr$543 = fb_StrConcat( &TMP$2594$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2595$2, 0, 12 );
		FBSTRING* vr$546 = fb_StrConcat( &TMP$2595$2, (void*)vr$543, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2596$2, 0, 12 );
		FBSTRING* vr$549 = fb_StrConcat( &TMP$2596$2, (void*)vr$546, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2597$2, -1, (void*)vr$549, -1, 0 );
		HWRITEASM64( &TMP$2597$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2597$2 );
	}
	goto label$2016;
	label$2032:;
	if( ((-(*(int32*)V1$1 == 1) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 1))) == 0 ) goto label$2033;
	{
		FBSTRING TMP$2598$2;
		FBSTRING TMP$2599$2;
		FBSTRING TMP$2600$2;
		FBSTRING TMP$2601$2;
		FBSTRING TMP$2602$2;
		FBSTRING TMP$2603$2;
		FBSTRING TMP$2604$2;
		int32 vr$565 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$565 == 0 ) goto label$2035;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2035:;
		}
		__builtin_memset( &TMP$2600$2, 0, 12 );
		__builtin_memset( &TMP$2598$2, 0, 12 );
		FBSTRING* vr$573 = fb_StrConcat( &TMP$2598$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2599$2, 0, 12 );
		FBSTRING* vr$576 = fb_StrConcat( &TMP$2599$2, (void*)vr$573, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2600$2, -1, (void*)vr$576, -1, 0 );
		HWRITEASM64( &TMP$2600$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2600$2 );
		int32 vr$581 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$581 == 0 ) goto label$2037;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2037:;
		}
		__builtin_memset( &TMP$2604$2, 0, 12 );
		__builtin_memset( &TMP$2601$2, 0, 12 );
		FBSTRING* vr$589 = fb_StrConcat( &TMP$2601$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2602$2, 0, 12 );
		FBSTRING* vr$592 = fb_StrConcat( &TMP$2602$2, (void*)vr$589, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2603$2, 0, 12 );
		FBSTRING* vr$595 = fb_StrConcat( &TMP$2603$2, (void*)vr$592, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2604$2, -1, (void*)vr$595, -1, 0 );
		HWRITEASM64( &TMP$2604$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2604$2 );
	}
	goto label$2016;
	label$2033:;
	if( ((-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 2)) | (-(*(int32*)V1$1 == 2) & -(*(int32*)V2$1 == 3))) == 0 ) goto label$2038;
	{
		FBSTRING TMP$2605$2;
		FBSTRING TMP$2606$2;
		FBSTRING TMP$2607$2;
		FBSTRING TMP$2608$2;
		FBSTRING TMP$2609$2;
		FBSTRING TMP$2610$2;
		FBSTRING TMP$2611$2;
		int32 vr$611 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$611 == 0 ) goto label$2040;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2040:;
		}
		__builtin_memset( &TMP$2607$2, 0, 12 );
		__builtin_memset( &TMP$2605$2, 0, 12 );
		FBSTRING* vr$619 = fb_StrConcat( &TMP$2605$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2606$2, 0, 12 );
		FBSTRING* vr$622 = fb_StrConcat( &TMP$2606$2, (void*)vr$619, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2607$2, -1, (void*)vr$622, -1, 0 );
		HWRITEASM64( &TMP$2607$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2607$2 );
		int32 vr$627 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$627 == 0 ) goto label$2042;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2042:;
		}
		__builtin_memset( &TMP$2611$2, 0, 12 );
		__builtin_memset( &TMP$2608$2, 0, 12 );
		FBSTRING* vr$635 = fb_StrConcat( &TMP$2608$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2609$2, 0, 12 );
		FBSTRING* vr$638 = fb_StrConcat( &TMP$2609$2, (void*)vr$635, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2610$2, 0, 12 );
		FBSTRING* vr$641 = fb_StrConcat( &TMP$2610$2, (void*)vr$638, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2611$2, -1, (void*)vr$641, -1, 0 );
		HWRITEASM64( &TMP$2611$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2611$2 );
	}
	goto label$2016;
	label$2038:;
	if( (-(*(int32*)V1$1 == 3) & -(*(int32*)V2$1 == 3)) == 0 ) goto label$2043;
	{
		FBSTRING TMP$2612$2;
		FBSTRING TMP$2613$2;
		FBSTRING TMP$2614$2;
		FBSTRING TMP$2615$2;
		FBSTRING TMP$2616$2;
		FBSTRING TMP$2617$2;
		FBSTRING TMP$2618$2;
		__builtin_memset( &TMP$2614$2, 0, 12 );
		__builtin_memset( &TMP$2612$2, 0, 12 );
		FBSTRING* vr$656 = fb_StrConcat( &TMP$2612$2, (void*)&CODE1$1, -1, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2613$2, 0, 12 );
		FBSTRING* vr$659 = fb_StrConcat( &TMP$2613$2, (void*)vr$656, -1, (void*)&OP2$1, -1 );
		fb_StrAssign( (void*)&TMP$2614$2, -1, (void*)vr$659, -1, 0 );
		HWRITEASM64( &TMP$2614$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2614$2 );
		__builtin_memset( &TMP$2618$2, 0, 12 );
		__builtin_memset( &TMP$2615$2, 0, 12 );
		FBSTRING* vr$669 = fb_StrConcat( &TMP$2615$2, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
		__builtin_memset( &TMP$2616$2, 0, 12 );
		FBSTRING* vr$672 = fb_StrConcat( &TMP$2616$2, (void*)vr$669, -1, (void*)&OP1$1, -1 );
		__builtin_memset( &TMP$2617$2, 0, 12 );
		FBSTRING* vr$675 = fb_StrConcat( &TMP$2617$2, (void*)vr$672, -1, (void*)&CODE2$1, -1 );
		fb_StrAssign( (void*)&TMP$2618$2, -1, (void*)vr$675, -1, 0 );
		HWRITEASM64( &TMP$2618$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2618$2 );
	}
	goto label$2016;
	label$2043:;
	{
		int32 vr$680 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$680 == 0 ) goto label$2045;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2045:;
		}
		int32 vr$683 = fb_StrCompare( (void*)&OP4$1, -1, (void*)"", 1 );
		if( vr$683 == 0 ) goto label$2047;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2047:;
		}
		if( *(int32*)V2$1 != 0 ) goto label$2049;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2619$4;
				TMP$2619$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2619$4 != 4 ) goto label$2051;
				label$2052:;
				{
					FBSTRING TMP$2621$5;
					FBSTRING TMP$2622$5;
					FBSTRING TMP$2623$5;
					FBSTRING TMP$2624$5;
					FBSTRING TMP$2625$5;
					__builtin_memset( &TMP$2625$5, 0, 12 );
					__builtin_memset( &TMP$2621$5, 0, 12 );
					FBSTRING* vr$693 = fb_StrConcat( &TMP$2621$5, (void*)"movNOTUSED? ", 13, (void*)&PREFIX$1, -1 );
					__builtin_memset( &TMP$2622$5, 0, 12 );
					FBSTRING* vr$696 = fb_StrConcat( &TMP$2622$5, (void*)vr$693, -1, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$2623$5, 0, 12 );
					FBSTRING* vr$699 = fb_StrConcat( &TMP$2623$5, (void*)vr$696, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2624$5, 0, 12 );
					FBSTRING* vr$702 = fb_StrConcat( &TMP$2624$5, (void*)vr$699, -1, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2625$5, -1, (void*)vr$702, -1, 0 );
					HWRITEASM64( &TMP$2625$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2625$5 );
				}
				goto label$2050;
				label$2051:;
				if( TMP$2619$4 == 1 ) goto label$2054;
				label$2055:;
				if( TMP$2619$4 == 2 ) goto label$2054;
				label$2056:;
				if( TMP$2619$4 != 3 ) goto label$2053;
				label$2054:;
				{
					int32 TMP$2626$5;
					if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2057;
					int32 vr$706 = FBGETOPTION( 0 );
					TMP$2626$5 = -(vr$706 == 2);
					goto label$3032;
					label$2057:;
					TMP$2626$5 = 0;
					label$3032:;
					if( TMP$2626$5 == 0 ) goto label$2059;
					{
						int32 TMP$2627$6;
						if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2060;
						TMP$2627$6 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
						goto label$3033;
						label$2060:;
						TMP$2627$6 = 0;
						label$3033:;
						if( TMP$2627$6 == 0 ) goto label$2062;
						{
							FBSTRING TMP$2628$7;
							FBSTRING TMP$2629$7;
							FBSTRING TMP$2630$7;
							FBSTRING TMP$2631$7;
							FBSTRING TMP$2632$7;
							int32 vr$713 = REG_FINDFREE( 999998, -1 );
							TEMPO$1 = vr$713;
							fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
							*(int32*)((uint8*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
							__builtin_memset( &TMP$2632$7, 0, 12 );
							uint8* vr$719 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2628$7, 0, 12 );
							FBSTRING* vr$723 = fb_StrConcat( &TMP$2628$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2629$7, 0, 12 );
							FBSTRING* vr$726 = fb_StrConcat( &TMP$2629$7, (void*)vr$723, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2630$7, 0, 12 );
							FBSTRING* vr$729 = fb_StrConcat( &TMP$2630$7, (void*)vr$726, -1, (void*)vr$719, 0 );
							__builtin_memset( &TMP$2631$7, 0, 12 );
							FBSTRING* vr$732 = fb_StrConcat( &TMP$2631$7, (void*)vr$729, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2632$7, -1, (void*)vr$732, -1, 0 );
							HWRITEASM64( &TMP$2632$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2632$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
						}
						label$2062:;
						label$2061:;
					}
					label$2059:;
					label$2058:;
					{
						if( DTYPE$1 != 15 ) goto label$2064;
						label$2065:;
						{
							FBSTRING TMP$2633$7;
							FBSTRING TMP$2634$7;
							FBSTRING TMP$2635$7;
							FBSTRING TMP$2636$7;
							FBSTRING TMP$2637$7;
							__builtin_memset( &TMP$2637$7, 0, 12 );
							__builtin_memset( &TMP$2633$7, 0, 12 );
							FBSTRING* vr$746 = fb_StrConcat( &TMP$2633$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2634$7, 0, 12 );
							FBSTRING* vr$749 = fb_StrConcat( &TMP$2634$7, (void*)vr$746, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2635$7, 0, 12 );
							FBSTRING* vr$752 = fb_StrConcat( &TMP$2635$7, (void*)vr$749, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2636$7, 0, 12 );
							FBSTRING* vr$755 = fb_StrConcat( &TMP$2636$7, (void*)vr$752, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2637$7, -1, (void*)vr$755, -1, 0 );
							HWRITEASM64( &TMP$2637$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2637$7 );
						}
						goto label$2063;
						label$2064:;
						if( DTYPE$1 != 16 ) goto label$2066;
						label$2067:;
						{
							FBSTRING TMP$2638$7;
							FBSTRING TMP$2639$7;
							FBSTRING TMP$2640$7;
							FBSTRING TMP$2641$7;
							FBSTRING TMP$2642$7;
							FBSTRING TMP$2643$7;
							__builtin_memset( &TMP$2639$7, 0, 12 );
							__builtin_memset( &TMP$2638$7, 0, 12 );
							FBSTRING* vr$763 = fb_StrConcat( &TMP$2638$7, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2639$7, -1, (void*)vr$763, -1, 0 );
							HWRITEASM64( &TMP$2639$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2639$7 );
							__builtin_memset( &TMP$2643$7, 0, 12 );
							__builtin_memset( &TMP$2640$7, 0, 12 );
							FBSTRING* vr$772 = fb_StrConcat( &TMP$2640$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2641$7, 0, 12 );
							FBSTRING* vr$775 = fb_StrConcat( &TMP$2641$7, (void*)vr$772, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2642$7, 0, 12 );
							FBSTRING* vr$778 = fb_StrConcat( &TMP$2642$7, (void*)vr$775, -1, (void*)", rax", 6 );
							fb_StrAssign( (void*)&TMP$2643$7, -1, (void*)vr$778, -1, 0 );
							HWRITEASM64( &TMP$2643$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2643$7 );
						}
						goto label$2063;
						label$2066:;
						if( DTYPE$1 == 8 ) goto label$2069;
						label$2070:;
						if( DTYPE$1 == 9 ) goto label$2069;
						label$2071:;
						if( DTYPE$1 == 13 ) goto label$2069;
						label$2072:;
						if( DTYPE$1 == 14 ) goto label$2069;
						label$2073:;
						if( DTYPE$1 != 10 ) goto label$2068;
						label$2069:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2075;
							{
								FBSTRING TMP$2644$8;
								FBSTRING TMP$2645$8;
								FBSTRING TMP$2646$8;
								FBSTRING TMP$2647$8;
								FBSTRING TMP$2648$8;
								FBSTRING TMP$2649$8;
								__builtin_memset( &TMP$2645$8, 0, 12 );
								__builtin_memset( &TMP$2644$8, 0, 12 );
								FBSTRING* vr$791 = fb_StrConcat( &TMP$2644$8, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2645$8, -1, (void*)vr$791, -1, 0 );
								HWRITEASM64( &TMP$2645$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2645$8 );
								__builtin_memset( &TMP$2649$8, 0, 12 );
								__builtin_memset( &TMP$2646$8, 0, 12 );
								FBSTRING* vr$800 = fb_StrConcat( &TMP$2646$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2647$8, 0, 12 );
								FBSTRING* vr$803 = fb_StrConcat( &TMP$2647$8, (void*)vr$800, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2648$8, 0, 12 );
								FBSTRING* vr$806 = fb_StrConcat( &TMP$2648$8, (void*)vr$803, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2649$8, -1, (void*)vr$806, -1, 0 );
								HWRITEASM64( &TMP$2649$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2649$8 );
							}
							goto label$2074;
							label$2075:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2076;
							{
								FBSTRING TMP$2650$8;
								FBSTRING TMP$2651$8;
								FBSTRING TMP$2652$8;
								FBSTRING TMP$2653$8;
								FBSTRING TMP$2654$8;
								FBSTRING TMP$2655$8;
								__builtin_memset( &TMP$2651$8, 0, 12 );
								__builtin_memset( &TMP$2650$8, 0, 12 );
								FBSTRING* vr$815 = fb_StrConcat( &TMP$2650$8, (void*)"mov eax, ", 10, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2651$8, -1, (void*)vr$815, -1, 0 );
								HWRITEASM64( &TMP$2651$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2651$8 );
								__builtin_memset( &TMP$2655$8, 0, 12 );
								__builtin_memset( &TMP$2652$8, 0, 12 );
								FBSTRING* vr$824 = fb_StrConcat( &TMP$2652$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2653$8, 0, 12 );
								FBSTRING* vr$827 = fb_StrConcat( &TMP$2653$8, (void*)vr$824, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2654$8, 0, 12 );
								FBSTRING* vr$830 = fb_StrConcat( &TMP$2654$8, (void*)vr$827, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$2655$8, -1, (void*)vr$830, -1, 0 );
								HWRITEASM64( &TMP$2655$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2655$8 );
							}
							goto label$2074;
							label$2076:;
							{
								FBSTRING TMP$2656$8;
								FBSTRING TMP$2657$8;
								FBSTRING TMP$2658$8;
								FBSTRING TMP$2659$8;
								FBSTRING TMP$2660$8;
								__builtin_memset( &TMP$2660$8, 0, 12 );
								__builtin_memset( &TMP$2656$8, 0, 12 );
								FBSTRING* vr$840 = fb_StrConcat( &TMP$2656$8, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
								__builtin_memset( &TMP$2657$8, 0, 12 );
								FBSTRING* vr$843 = fb_StrConcat( &TMP$2657$8, (void*)vr$840, -1, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$2658$8, 0, 12 );
								FBSTRING* vr$846 = fb_StrConcat( &TMP$2658$8, (void*)vr$843, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$2659$8, 0, 12 );
								FBSTRING* vr$849 = fb_StrConcat( &TMP$2659$8, (void*)vr$846, -1, (void*)&OP2$1, -1 );
								fb_StrAssign( (void*)&TMP$2660$8, -1, (void*)vr$849, -1, 0 );
								HWRITEASM64( &TMP$2660$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2660$8 );
							}
							label$2074:;
						}
						goto label$2063;
						label$2068:;
						{
							FBSTRING TMP$2661$7;
							FBSTRING TMP$2662$7;
							FBSTRING TMP$2663$7;
							FBSTRING TMP$2664$7;
							FBSTRING TMP$2665$7;
							__builtin_memset( &TMP$2665$7, 0, 12 );
							__builtin_memset( &TMP$2661$7, 0, 12 );
							FBSTRING* vr$859 = fb_StrConcat( &TMP$2661$7, (void*)"mov ", 5, (void*)&PREFIX$1, -1 );
							__builtin_memset( &TMP$2662$7, 0, 12 );
							FBSTRING* vr$862 = fb_StrConcat( &TMP$2662$7, (void*)vr$859, -1, (void*)&OP1$1, -1 );
							__builtin_memset( &TMP$2663$7, 0, 12 );
							FBSTRING* vr$865 = fb_StrConcat( &TMP$2663$7, (void*)vr$862, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2664$7, 0, 12 );
							FBSTRING* vr$868 = fb_StrConcat( &TMP$2664$7, (void*)vr$865, -1, (void*)&OP2$1, -1 );
							fb_StrAssign( (void*)&TMP$2665$7, -1, (void*)vr$868, -1, 0 );
							HWRITEASM64( &TMP$2665$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2665$7 );
						}
						label$2077:;
						label$2063:;
					}
				}
				goto label$2050;
				label$2053:;
				{
					FBSTRING TMP$2666$5;
					FBSTRING TMP$2669$5;
					FBSTRING TMP$2670$5;
					__builtin_memset( &TMP$2666$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2666$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2666$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2666$5 );
					__builtin_memset( &TMP$2669$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2669$5, -1, (void*)"FOUND AN ERROR : in store perhaps OFS not handled", 50, 0 );
					HWRITEASM64( &TMP$2669$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2669$5 );
					__builtin_memset( &TMP$2670$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2670$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2670$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2670$5 );
				}
				label$2078:;
				label$2050:;
			}
		}
		goto label$2048;
		label$2049:;
		if( *(int32*)V2$1 != 5 ) goto label$2079;
		{
			int32 TMP$2671$3;
			int32 TMP$2672$3;
			int32 TMP$2678$3;
			FBSTRING TMP$2685$3;
			FBSTRING TMP$2686$3;
			FBSTRING TMP$2687$3;
			if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2080;
			TMP$2671$3 = -(*(int32*)((uint8*)&CTX$ + 212) == 2);
			goto label$3034;
			label$2080:;
			TMP$2671$3 = 0;
			label$3034:;
			if( TMP$2671$3 == 0 ) goto label$2081;
			int32 vr$888 = FBGETOPTION( 0 );
			TMP$2672$3 = -(vr$888 == 2);
			goto label$3035;
			label$2081:;
			TMP$2672$3 = 0;
			label$3035:;
			if( TMP$2672$3 == 0 ) goto label$2083;
			{
				FBSTRING TMP$2673$4;
				FBSTRING TMP$2674$4;
				FBSTRING TMP$2675$4;
				__builtin_memset( &TMP$2675$4, 0, 12 );
				FBSTRING* vr$891 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
				int32 vr$893 = fb_StrInstr( 1, (FBSTRING*)&OP2$1, (FBSTRING*)vr$891 );
				FBSTRING* vr$896 = fb_LEFT( (FBSTRING*)&OP2$1, vr$893 + -1 );
				__builtin_memset( &TMP$2673$4, 0, 12 );
				FBSTRING* vr$899 = fb_StrConcat( &TMP$2673$4, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$896, -1 );
				__builtin_memset( &TMP$2674$4, 0, 12 );
				FBSTRING* vr$902 = fb_StrConcat( &TMP$2674$4, (void*)vr$899, -1, (void*)"@GOTPCREL[rip]", 15 );
				fb_StrAssign( (void*)&TMP$2675$4, -1, (void*)vr$902, -1, 0 );
				HWRITEASM64( &TMP$2675$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2675$4 );
			}
			goto label$2082;
			label$2083:;
			{
				FBSTRING TMP$2676$4;
				FBSTRING TMP$2677$4;
				__builtin_memset( &TMP$2677$4, 0, 12 );
				__builtin_memset( &TMP$2676$4, 0, 12 );
				FBSTRING* vr$910 = fb_StrConcat( &TMP$2676$4, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2677$4, -1, (void*)vr$910, -1, 0 );
				HWRITEASM64( &TMP$2677$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2677$4 );
			}
			label$2082:;
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2084;
			int32 vr$914 = FBGETOPTION( 0 );
			TMP$2678$3 = -(vr$914 == 2);
			goto label$3036;
			label$2084:;
			TMP$2678$3 = 0;
			label$3036:;
			if( TMP$2678$3 == 0 ) goto label$2086;
			{
				int32 TMP$2679$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2087;
				TMP$2679$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3037;
				label$2087:;
				TMP$2679$4 = 0;
				label$3037:;
				if( TMP$2679$4 == 0 ) goto label$2089;
				{
					FBSTRING TMP$2680$5;
					FBSTRING TMP$2681$5;
					FBSTRING TMP$2682$5;
					FBSTRING TMP$2683$5;
					FBSTRING TMP$2684$5;
					int32 vr$921 = REG_FINDFREE( 999998, -1 );
					TEMPO$1 = vr$921;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (2 & 31))), 0, 0 );
					*(int32*)((uint8*)REGHANDLE$ + (TEMPO$1 << (2 & 31))) = -2;
					__builtin_memset( &TMP$2684$5, 0, 12 );
					uint8* vr$927 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2680$5, 0, 12 );
					FBSTRING* vr$931 = fb_StrConcat( &TMP$2680$5, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
					__builtin_memset( &TMP$2681$5, 0, 12 );
					FBSTRING* vr$934 = fb_StrConcat( &TMP$2681$5, (void*)vr$931, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2682$5, 0, 12 );
					FBSTRING* vr$937 = fb_StrConcat( &TMP$2682$5, (void*)vr$934, -1, (void*)vr$927, 0 );
					__builtin_memset( &TMP$2683$5, 0, 12 );
					FBSTRING* vr$940 = fb_StrConcat( &TMP$2683$5, (void*)vr$937, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2684$5, -1, (void*)vr$940, -1, 0 );
					HWRITEASM64( &TMP$2684$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2684$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
				}
				label$2089:;
				label$2088:;
			}
			label$2086:;
			label$2085:;
			__builtin_memset( &TMP$2687$3, 0, 12 );
			__builtin_memset( &TMP$2685$3, 0, 12 );
			FBSTRING* vr$952 = fb_StrConcat( &TMP$2685$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2686$3, 0, 12 );
			FBSTRING* vr$955 = fb_StrConcat( &TMP$2686$3, (void*)vr$952, -1, (void*)", rax", 6 );
			fb_StrAssign( (void*)&TMP$2687$3, -1, (void*)vr$955, -1, 0 );
			HWRITEASM64( &TMP$2687$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2687$3 );
		}
		goto label$2048;
		label$2079:;
		{
			int32 TMP$2688$3;
			FBSTRING TMP$2693$3;
			FBSTRING TMP$2694$3;
			FBSTRING TMP$2695$3;
			FBSTRING TMP$2696$3;
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2090;
			int32 vr$959 = FBGETOPTION( 0 );
			TMP$2688$3 = -(vr$959 == 2);
			goto label$3038;
			label$2090:;
			TMP$2688$3 = 0;
			label$3038:;
			if( TMP$2688$3 == 0 ) goto label$2092;
			{
				int32 TMP$2689$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2093;
				TMP$2689$4 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) != 0);
				goto label$3039;
				label$2093:;
				TMP$2689$4 = 0;
				label$3039:;
				if( TMP$2689$4 == 0 ) goto label$2095;
				{
					FBSTRING TMP$2690$5;
					FBSTRING TMP$2691$5;
					FBSTRING TMP$2692$5;
					__builtin_memset( &TMP$2692$5, 0, 12 );
					uint8* vr$968 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2690$5, 0, 12 );
					FBSTRING* vr$971 = fb_StrConcat( &TMP$2690$5, (void*)"mov rax, ", 10, (void*)vr$968, 0 );
					__builtin_memset( &TMP$2691$5, 0, 12 );
					FBSTRING* vr$974 = fb_StrConcat( &TMP$2691$5, (void*)vr$971, -1, (void*)"@GOTPCREL[rip]", 15 );
					fb_StrAssign( (void*)&TMP$2692$5, -1, (void*)vr$974, -1, 0 );
					HWRITEASM64( &TMP$2692$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2692$5 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
				}
				label$2095:;
				label$2094:;
			}
			label$2092:;
			label$2091:;
			__builtin_memset( &TMP$2696$3, 0, 12 );
			__builtin_memset( &TMP$2693$3, 0, 12 );
			FBSTRING* vr$984 = fb_StrConcat( &TMP$2693$3, (void*)"mov ", 5, (void*)&OP1$1, -1 );
			__builtin_memset( &TMP$2694$3, 0, 12 );
			FBSTRING* vr$987 = fb_StrConcat( &TMP$2694$3, (void*)vr$984, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2695$3, 0, 12 );
			FBSTRING* vr$990 = fb_StrConcat( &TMP$2695$3, (void*)vr$987, -1, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$2696$3, -1, (void*)vr$990, -1, 0 );
			HWRITEASM64( &TMP$2696$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2696$3 );
		}
		label$2048:;
	}
	label$2016:;
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&CODE2$1 );
	fb_StrDelete( (FBSTRING*)&CODE1$1 );
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP4$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1887:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$2096:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)V1$1 + 4) & 511;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$2697$2;
		TMP$2697$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2697$2 != 2 ) goto label$2099;
		label$2100:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2098;
		label$2099:;
		if( TMP$2697$2 != 1 ) goto label$2101;
		label$2102:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2104;
			{
				FBSTRING TMP$2698$4;
				FBSTRING TMP$2699$4;
				FBSTRING TMP$2700$4;
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$21 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$2698$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$2698$4, (void*)vr$21, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2699$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$2699$4, (void*)vr$24, -1, (void*)vr$19, -1 );
				__builtin_memset( &TMP$2700$4, 0, 12 );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$2700$4, (void*)vr$27, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$30, -1, 0 );
			}
			goto label$2103;
			label$2104:;
			{
				FBSTRING TMP$2701$4;
				FBSTRING* vr$33 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$2701$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$2701$4, (void*)vr$33, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$36, -1, 0 );
			}
			label$2103:;
		}
		goto label$2098;
		label$2101:;
		if( TMP$2697$2 != 3 ) goto label$2105;
		label$2106:;
		{
			FBSTRING TMP$2702$3;
			FBSTRING TMP$2703$3;
			FBSTRING TMP$2704$3;
			FBSTRING TMP$2705$3;
			FBSTRING TMP$2708$3;
			FBSTRING TMP$2709$3;
			int32 vr$40 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$43 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$2702$3, 0, 12 );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$2702$3, (void*)vr$43, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$2703$3, 0, 12 );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$2703$3, (void*)vr$46, -1, *(void**)((uint8*)REGSTRQ$ + (vr$40 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2704$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$2704$3, (void*)vr$49, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$52, -1, 0 );
			__builtin_memset( &TMP$2705$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2705$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2705$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2705$3 );
			__builtin_memset( &TMP$2708$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2708$3, -1, (void*)"FOUND AN ERROR : in loadres OFS not handled", 44, 0 );
			HWRITEASM64( &TMP$2708$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2708$3 );
			__builtin_memset( &TMP$2709$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2709$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2709$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2709$3 );
		}
		goto label$2098;
		label$2105:;
		if( TMP$2697$2 != 4 ) goto label$2107;
		label$2108:;
		{
			int32 vr$67 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$67 << (2 & 31))), 0, 0 );
		}
		goto label$2098;
		label$2107:;
		{
			FBSTRING TMP$2710$3;
			FBSTRING TMP$2713$3;
			FBSTRING TMP$2714$3;
			__builtin_memset( &TMP$2710$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2710$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2710$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2710$3 );
			__builtin_memset( &TMP$2713$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2713$3, -1, (void*)"FOUND AN ERROR : in loadres typ not handled", 44, 0 );
			HWRITEASM64( &TMP$2713$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2713$3 );
			__builtin_memset( &TMP$2714$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2714$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2714$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2714$3 );
		}
		label$2109:;
		label$2098:;
	}
	int32 vr$82 = HISSTRUCTIN2REGS( V1$1 );
	if( vr$82 == 0 ) goto label$2111;
	{
		int32 TMP$2715$2;
		FBSTRING TMP$2721$2;
		if( *(int32*)V1$1 != 1 ) goto label$2112;
		TMP$2715$2 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) != 0);
		goto label$3040;
		label$2112:;
		TMP$2715$2 = -1;
		label$3040:;
		if( TMP$2715$2 == 0 ) goto label$2114;
		{
			FBSTRING TMP$2716$3;
			FBSTRING TMP$2719$3;
			FBSTRING TMP$2720$3;
			__builtin_memset( &TMP$2716$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2716$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2716$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2716$3 );
			__builtin_memset( &TMP$2719$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2719$3, -1, (void*)"FOUND AN ERROR : IR_VREGTYPE not handled in emitloadres (linux)", 64, 0 );
			HWRITEASM64( &TMP$2719$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2719$3 );
			__builtin_memset( &TMP$2720$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$2720$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$2720$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2720$3 );
		}
		label$2114:;
		label$2113:;
		LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40);
		FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) + 8ll );
		__builtin_memset( &TMP$2721$2, 0, 12 );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$2721$2, (void*)vr$111, -1, (void*)"[rbp]", 6 );
		fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$114, -1, 0 );
		{
			uint32 TMP$2722$3;
			TMP$2722$3 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) + 132);
			goto label$2116;
			label$2117:;
			{
				FBSTRING TMP$2723$4;
				FBSTRING TMP$2724$4;
				FBSTRING TMP$2726$4;
				FBSTRING TMP$2727$4;
				__builtin_memset( &TMP$2724$4, 0, 12 );
				__builtin_memset( &TMP$2723$4, 0, 12 );
				FBSTRING* vr$123 = fb_StrConcat( &TMP$2723$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2724$4, -1, (void*)vr$123, -1, 0 );
				HWRITEASM64( &TMP$2724$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2724$4 );
				__builtin_memset( &TMP$2727$4, 0, 12 );
				__builtin_memset( &TMP$2726$4, 0, 12 );
				FBSTRING* vr$131 = fb_StrConcat( &TMP$2726$4, (void*)"mov rdx, ", 10, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2727$4, -1, (void*)vr$131, -1, 0 );
				HWRITEASM64( &TMP$2727$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2727$4 );
			}
			goto label$2115;
			label$2118:;
			{
				FBSTRING TMP$2728$4;
				FBSTRING TMP$2729$4;
				__builtin_memset( &TMP$2729$4, 0, 12 );
				__builtin_memset( &TMP$2728$4, 0, 12 );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$2728$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2729$4, -1, (void*)vr$139, -1, 0 );
				HWRITEASM64( &TMP$2729$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2729$4 );
				if( LGT$1 != 12 ) goto label$2120;
				{
					FBSTRING TMP$2730$5;
					FBSTRING TMP$2731$5;
					__builtin_memset( &TMP$2731$5, 0, 12 );
					__builtin_memset( &TMP$2730$5, 0, 12 );
					FBSTRING* vr$147 = fb_StrConcat( &TMP$2730$5, (void*)"movss xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2731$5, -1, (void*)vr$147, -1, 0 );
					HWRITEASM64( &TMP$2731$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2731$5 );
				}
				goto label$2119;
				label$2120:;
				{
					FBSTRING TMP$2732$5;
					FBSTRING TMP$2733$5;
					__builtin_memset( &TMP$2733$5, 0, 12 );
					__builtin_memset( &TMP$2732$5, 0, 12 );
					FBSTRING* vr$155 = fb_StrConcat( &TMP$2732$5, (void*)"movsd xmm0, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2733$5, -1, (void*)vr$155, -1, 0 );
					HWRITEASM64( &TMP$2733$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2733$5 );
				}
				label$2119:;
			}
			goto label$2115;
			label$2121:;
			{
				FBSTRING TMP$2734$4;
				FBSTRING TMP$2735$4;
				FBSTRING TMP$2736$4;
				FBSTRING TMP$2737$4;
				FBSTRING TMP$2738$4;
				FBSTRING TMP$2739$4;
				__builtin_memset( &TMP$2735$4, 0, 12 );
				__builtin_memset( &TMP$2734$4, 0, 12 );
				FBSTRING* vr$163 = fb_StrConcat( &TMP$2734$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2735$4, -1, (void*)vr$163, -1, 0 );
				HWRITEASM64( &TMP$2735$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2735$4 );
				__builtin_memset( &TMP$2739$4, 0, 12 );
				__builtin_memset( &TMP$2736$4, 0, 12 );
				FBSTRING* vr$171 = fb_StrConcat( &TMP$2736$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2737$4, 0, 12 );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$2737$4, (void*)vr$171, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2738$4, 0, 12 );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$2738$4, (void*)vr$174, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$2739$4, -1, (void*)vr$177, -1, 0 );
				HWRITEASM64( &TMP$2739$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2739$4 );
			}
			goto label$2115;
			label$2122:;
			{
				FBSTRING TMP$2740$4;
				FBSTRING TMP$2741$4;
				__builtin_memset( &TMP$2741$4, 0, 12 );
				__builtin_memset( &TMP$2740$4, 0, 12 );
				FBSTRING* vr$185 = fb_StrConcat( &TMP$2740$4, (void*)"movsd xmm0, ", 13, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2741$4, -1, (void*)vr$185, -1, 0 );
				HWRITEASM64( &TMP$2741$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2741$4 );
				if( LGT$1 != 12 ) goto label$2124;
				{
					FBSTRING TMP$2743$5;
					FBSTRING TMP$2744$5;
					__builtin_memset( &TMP$2744$5, 0, 12 );
					__builtin_memset( &TMP$2743$5, 0, 12 );
					FBSTRING* vr$193 = fb_StrConcat( &TMP$2743$5, (void*)"movss xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2744$5, -1, (void*)vr$193, -1, 0 );
					HWRITEASM64( &TMP$2744$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2744$5 );
				}
				goto label$2123;
				label$2124:;
				{
					FBSTRING TMP$2746$5;
					FBSTRING TMP$2747$5;
					__builtin_memset( &TMP$2747$5, 0, 12 );
					__builtin_memset( &TMP$2746$5, 0, 12 );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$2746$5, (void*)"movsd xmm1, ", 13, (void*)&OP2$1, -1 );
					fb_StrAssign( (void*)&TMP$2747$5, -1, (void*)vr$201, -1, 0 );
					HWRITEASM64( &TMP$2747$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2747$5 );
				}
				label$2123:;
			}
			goto label$2115;
			label$2116:;
			static const void* tmp$3863[5] = {
				&&label$2117,
				&&label$2118,
				&&label$2115,
				&&label$2121,
				&&label$2122,
			};
			if( (TMP$2722$3 - 2u) > 4u ) goto label$2115;
			goto *tmp$3863[TMP$2722$3 - 2u];
			label$2115:;
		}
	}
	goto label$2110;
	label$2111:;
	{
		int32 TMP$2748$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2125;
		TMP$2748$2 = 24;
		goto label$3041;
		label$2125:;
		TMP$2748$2 = DTYPE$1 & 31;
		label$3041:;
		if( TMP$2748$2 != 24 ) goto label$2127;
		{
			DTYPE$1 = 8;
			label$2127:;
		}
		int32 vr$208 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
		if( vr$208 == 0 ) goto label$2129;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2129:;
		}
		{
			if( DTYPE$1 != 16 ) goto label$2131;
			label$2132:;
			{
				FBSTRING TMP$2749$4;
				FBSTRING TMP$2750$4;
				__builtin_memset( &TMP$2750$4, 0, 12 );
				__builtin_memset( &TMP$2749$4, 0, 12 );
				FBSTRING* vr$214 = fb_StrConcat( &TMP$2749$4, (void*)"movq xmm0, ", 12, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2750$4, -1, (void*)vr$214, -1, 0 );
				HWRITEASM64( &TMP$2750$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2750$4 );
			}
			goto label$2130;
			label$2131:;
			if( DTYPE$1 != 15 ) goto label$2133;
			label$2134:;
			{
				FBSTRING TMP$2751$4;
				FBSTRING TMP$2752$4;
				__builtin_memset( &TMP$2752$4, 0, 12 );
				__builtin_memset( &TMP$2751$4, 0, 12 );
				FBSTRING* vr$222 = fb_StrConcat( &TMP$2751$4, (void*)"movd xmm0, ", 12, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2752$4, -1, (void*)vr$222, -1, 0 );
				HWRITEASM64( &TMP$2752$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2752$4 );
			}
			goto label$2130;
			label$2133:;
			if( DTYPE$1 == 8 ) goto label$2136;
			label$2137:;
			if( DTYPE$1 == 9 ) goto label$2136;
			label$2138:;
			if( DTYPE$1 == 13 ) goto label$2136;
			label$2139:;
			if( DTYPE$1 == 14 ) goto label$2136;
			label$2140:;
			if( DTYPE$1 != 10 ) goto label$2135;
			label$2136:;
			{
				FBSTRING TMP$2753$4;
				FBSTRING TMP$2754$4;
				FBSTRING TMP$2755$4;
				FBSTRING TMP$2756$4;
				__builtin_memset( &TMP$2756$4, 0, 12 );
				__builtin_memset( &TMP$2753$4, 0, 12 );
				FBSTRING* vr$230 = fb_StrConcat( &TMP$2753$4, (void*)"mov ", 5, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2754$4, 0, 12 );
				FBSTRING* vr$233 = fb_StrConcat( &TMP$2754$4, (void*)vr$230, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2755$4, 0, 12 );
				FBSTRING* vr$236 = fb_StrConcat( &TMP$2755$4, (void*)vr$233, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2756$4, -1, (void*)vr$236, -1, 0 );
				HWRITEASM64( &TMP$2756$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2756$4 );
			}
			goto label$2130;
			label$2135:;
			if( DTYPE$1 == 11 ) goto label$2142;
			label$2143:;
			if( DTYPE$1 != 12 ) goto label$2141;
			label$2142:;
			{
				FBSTRING TMP$2757$4;
				FBSTRING TMP$2758$4;
				FBSTRING TMP$2759$4;
				FBSTRING TMP$2760$4;
				__builtin_memset( &TMP$2760$4, 0, 12 );
				__builtin_memset( &TMP$2757$4, 0, 12 );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$2757$4, (void*)"mov ", 5, *(void**)REGSTRD$, 0 );
				__builtin_memset( &TMP$2758$4, 0, 12 );
				FBSTRING* vr$247 = fb_StrConcat( &TMP$2758$4, (void*)vr$244, -1, (void*)", DWORD PTR ", 13 );
				__builtin_memset( &TMP$2759$4, 0, 12 );
				FBSTRING* vr$250 = fb_StrConcat( &TMP$2759$4, (void*)vr$247, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2760$4, -1, (void*)vr$250, -1, 0 );
				HWRITEASM64( &TMP$2760$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2760$4 );
			}
			goto label$2130;
			label$2141:;
			if( DTYPE$1 == 5 ) goto label$2145;
			label$2146:;
			if( DTYPE$1 != 6 ) goto label$2144;
			label$2145:;
			{
				FBSTRING TMP$2761$4;
				FBSTRING TMP$2762$4;
				FBSTRING TMP$2763$4;
				FBSTRING TMP$2764$4;
				__builtin_memset( &TMP$2764$4, 0, 12 );
				__builtin_memset( &TMP$2761$4, 0, 12 );
				FBSTRING* vr$258 = fb_StrConcat( &TMP$2761$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2762$4, 0, 12 );
				FBSTRING* vr$261 = fb_StrConcat( &TMP$2762$4, (void*)vr$258, -1, (void*)", WORD PTR ", 12 );
				__builtin_memset( &TMP$2763$4, 0, 12 );
				FBSTRING* vr$264 = fb_StrConcat( &TMP$2763$4, (void*)vr$261, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2764$4, -1, (void*)vr$264, -1, 0 );
				HWRITEASM64( &TMP$2764$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2764$4 );
			}
			goto label$2130;
			label$2144:;
			if( DTYPE$1 == 2 ) goto label$2148;
			label$2149:;
			if( DTYPE$1 == 3 ) goto label$2148;
			label$2150:;
			if( DTYPE$1 == 1 ) goto label$2148;
			label$2151:;
			if( DTYPE$1 != 4 ) goto label$2147;
			label$2148:;
			{
				FBSTRING TMP$2765$4;
				FBSTRING TMP$2766$4;
				FBSTRING TMP$2767$4;
				FBSTRING TMP$2768$4;
				__builtin_memset( &TMP$2768$4, 0, 12 );
				__builtin_memset( &TMP$2765$4, 0, 12 );
				FBSTRING* vr$272 = fb_StrConcat( &TMP$2765$4, (void*)"movzx ", 7, *(void**)REGSTRQ$, 0 );
				__builtin_memset( &TMP$2766$4, 0, 12 );
				FBSTRING* vr$275 = fb_StrConcat( &TMP$2766$4, (void*)vr$272, -1, (void*)", BYTE PTR ", 12 );
				__builtin_memset( &TMP$2767$4, 0, 12 );
				FBSTRING* vr$278 = fb_StrConcat( &TMP$2767$4, (void*)vr$275, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2768$4, -1, (void*)vr$278, -1, 0 );
				HWRITEASM64( &TMP$2768$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2768$4 );
			}
			goto label$2130;
			label$2147:;
			{
				FBSTRING TMP$2769$4;
				FBSTRING TMP$2773$4;
				FBSTRING TMP$2774$4;
				FBSTRING TMP$2775$4;
				__builtin_memset( &TMP$2769$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2769$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2769$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2769$4 );
				__builtin_memset( &TMP$2774$4, 0, 12 );
				FBSTRING* vr$288 = fb_IntToStr( *(int32*)((uint8*)V1$1 + 4) );
				__builtin_memset( &TMP$2773$4, 0, 12 );
				FBSTRING* vr$291 = fb_StrConcat( &TMP$2773$4, (void*)"FOUND AN ERROR : in loadres datatype not handled = ", 52, (void*)vr$288, -1 );
				fb_StrAssign( (void*)&TMP$2774$4, -1, (void*)vr$291, -1, 0 );
				HWRITEASM64( &TMP$2774$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2774$4 );
				__builtin_memset( &TMP$2775$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2775$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2775$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2775$4 );
			}
			label$2152:;
			label$2130:;
		}
	}
	label$2110:;
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2097:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	int32 TMP$2781$1;
	label$2153:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	if( *(int32*)VR$1 == 4 ) goto label$2156;
	{
		FBSTRING TMP$2776$2;
		FBSTRING TMP$2779$2;
		FBSTRING TMP$2780$2;
		__builtin_memset( &TMP$2776$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2776$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2776$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2776$2 );
		__builtin_memset( &TMP$2779$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2779$2, -1, (void*)"FOUND AN ERROR : vr in addrof/deref not a reg", 46, 0 );
		HWRITEASM64( &TMP$2779$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2779$2 );
		__builtin_memset( &TMP$2780$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$2780$2, -1, (void*)"", 1, 0 );
		HWRITEASM64( &TMP$2780$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$2780$2 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$2154;
	}
	label$2156:;
	label$2155:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2157;
	$19FB_CVA_LIST_TYPEDEF vr$22 = SYMBGETVALISTTYPE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 32) );
	TMP$2781$1 = -((struct $8FBSYMBOL*)(-(vr$22 == 3) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 65536) != 0)) != (struct $8FBSYMBOL*)0u);
	goto label$3042;
	label$2157:;
	TMP$2781$1 = 0;
	label$3042:;
	if( TMP$2781$1 == 0 ) goto label$2159;
	{
		if( OP$1 != 22 ) goto label$2161;
		{
			OP$1 = 76;
		}
		label$2161:;
		label$2160:;
	}
	label$2159:;
	label$2158:;
	REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
	{
		if( OP$1 != 22 ) goto label$2163;
		label$2164:;
		{
			FBSTRING TMP$2803$3;
			FBSTRING TMP$2804$3;
			FBSTRING TMP$2805$3;
			FBSTRING TMP$2806$3;
			{
				$15IRVREGTYPE_ENUM TMP$2782$4;
				TMP$2782$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2782$4 != 2 ) goto label$2166;
				label$2167:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2165;
				label$2166:;
				if( TMP$2782$4 != 1 ) goto label$2168;
				label$2169:;
				{
					if( ((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) | -(*(int32*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) == 7)) == 0 ) goto label$2171;
					{
						FBSTRING TMP$2783$6;
						FBSTRING TMP$2784$6;
						FBSTRING TMP$2785$6;
						FBSTRING* vr$48 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						uint8* vr$50 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$2783$6, 0, 12 );
						FBSTRING* vr$53 = fb_StrConcat( &TMP$2783$6, (void*)vr$50, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$2784$6, 0, 12 );
						FBSTRING* vr$56 = fb_StrConcat( &TMP$2784$6, (void*)vr$53, -1, (void*)vr$48, -1 );
						__builtin_memset( &TMP$2785$6, 0, 12 );
						FBSTRING* vr$59 = fb_StrConcat( &TMP$2785$6, (void*)vr$56, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
					}
					goto label$2170;
					label$2171:;
					{
						FBSTRING TMP$2786$6;
						FBSTRING* vr$62 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2786$6, 0, 12 );
						FBSTRING* vr$65 = fb_StrConcat( &TMP$2786$6, (void*)vr$62, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$65, -1, 0 );
					}
					label$2170:;
				}
				goto label$2165;
				label$2168:;
				if( TMP$2782$4 != 3 ) goto label$2172;
				label$2173:;
				{
					FBSTRING TMP$2787$5;
					FBSTRING TMP$2788$5;
					FBSTRING TMP$2789$5;
					int32 vr$69 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$72 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2787$5, 0, 12 );
					FBSTRING* vr$75 = fb_StrConcat( &TMP$2787$5, (void*)vr$72, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2788$5, 0, 12 );
					FBSTRING* vr$78 = fb_StrConcat( &TMP$2788$5, (void*)vr$75, -1, *(void**)((uint8*)REGSTRQ$ + (vr$69 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2789$5, 0, 12 );
					FBSTRING* vr$81 = fb_StrConcat( &TMP$2789$5, (void*)vr$78, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$81, -1, 0 );
				}
				goto label$2165;
				label$2172:;
				if( TMP$2782$4 != 5 ) goto label$2174;
				label$2175:;
				{
					FBSTRING TMP$2790$5;
					FBSTRING TMP$2791$5;
					FBSTRING TMP$2792$5;
					FBSTRING TMP$2793$5;
					FBSTRING TMP$2796$5;
					FBSTRING TMP$2797$5;
					FBSTRING* vr$84 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$86 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2790$5, 0, 12 );
					FBSTRING* vr$89 = fb_StrConcat( &TMP$2790$5, (void*)vr$86, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2791$5, 0, 12 );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$2791$5, (void*)vr$89, -1, (void*)vr$84, -1 );
					__builtin_memset( &TMP$2792$5, 0, 12 );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$2792$5, (void*)vr$92, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$95, -1, 0 );
					__builtin_memset( &TMP$2793$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2793$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2793$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2793$5 );
					__builtin_memset( &TMP$2796$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2796$5, -1, (void*)"FOUND AN ERROR : in emitaddr OFS not handled", 45, 0 );
					HWRITEASM64( &TMP$2796$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2796$5 );
					__builtin_memset( &TMP$2797$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2797$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2797$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2797$5 );
				}
				goto label$2165;
				label$2174:;
				{
					FBSTRING TMP$2798$5;
					FBSTRING TMP$2801$5;
					FBSTRING TMP$2802$5;
					__builtin_memset( &TMP$2798$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2798$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2798$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2798$5 );
					__builtin_memset( &TMP$2801$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2801$5, -1, (void*)"FOUND AN ERROR : typ in addrof not handled", 43, 0 );
					HWRITEASM64( &TMP$2801$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2801$5 );
					__builtin_memset( &TMP$2802$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2802$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2802$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2802$5 );
				}
				label$2176:;
				label$2165:;
			}
			int32 vr$122 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$122 == 0 ) goto label$2178;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2178:;
			}
			__builtin_memset( &TMP$2806$3, 0, 12 );
			int32 vr$127 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
			__builtin_memset( &TMP$2803$3, 0, 12 );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$2803$3, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$127 << (2 & 31))), 0 );
			__builtin_memset( &TMP$2804$3, 0, 12 );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$2804$3, (void*)vr$131, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$2805$3, 0, 12 );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$2805$3, (void*)vr$134, -1, (void*)&OP1$1, -1 );
			fb_StrAssign( (void*)&TMP$2806$3, -1, (void*)vr$137, -1, 0 );
			HWRITEASM64( &TMP$2806$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$2806$3 );
		}
		goto label$2162;
		label$2163:;
		if( OP$1 != 76 ) goto label$2179;
		label$2180:;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2807$4;
				TMP$2807$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2807$4 != 2 ) goto label$2182;
				label$2183:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
					int32 vr$145 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$145 == 0 ) goto label$2185;
					{
						EMITOP3_OP4( &OP3$1 );
						label$2185:;
					}
				}
				goto label$2181;
				label$2182:;
				if( TMP$2807$4 != 1 ) goto label$2186;
				label$2187:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2189;
					{
						int32 TMP$2808$6;
						int32 TMP$2809$6;
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 8) == 0 ) goto label$2190;
						TMP$2808$6 = -(*(int32*)((uint8*)&CTX$ + 212) == 2);
						goto label$3043;
						label$2190:;
						TMP$2808$6 = 0;
						label$3043:;
						if( TMP$2808$6 == 0 ) goto label$2191;
						int32 vr$160 = FBGETOPTION( 0 );
						TMP$2809$6 = -(vr$160 == 2);
						goto label$3044;
						label$2191:;
						TMP$2809$6 = 0;
						label$3044:;
						if( TMP$2809$6 == 0 ) goto label$2193;
						{
							FBSTRING TMP$2810$7;
							FBSTRING TMP$2811$7;
							FBSTRING TMP$2812$7;
							__builtin_memset( &TMP$2812$7, 0, 12 );
							uint8* vr$164 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2810$7, 0, 12 );
							FBSTRING* vr$167 = fb_StrConcat( &TMP$2810$7, (void*)"mov rax, ", 10, (void*)vr$164, 0 );
							__builtin_memset( &TMP$2811$7, 0, 12 );
							FBSTRING* vr$170 = fb_StrConcat( &TMP$2811$7, (void*)vr$167, -1, (void*)"@GOTPCREL[rip]", 15 );
							fb_StrAssign( (void*)&TMP$2812$7, -1, (void*)vr$170, -1, 0 );
							HWRITEASM64( &TMP$2812$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$2812$7 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
						}
						goto label$2192;
						label$2193:;
						{
							FBSTRING TMP$2813$7;
							FBSTRING TMP$2814$7;
							FBSTRING TMP$2815$7;
							FBSTRING* vr$176 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
							uint8* vr$178 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
							__builtin_memset( &TMP$2813$7, 0, 12 );
							FBSTRING* vr$181 = fb_StrConcat( &TMP$2813$7, (void*)vr$178, 0, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2814$7, 0, 12 );
							FBSTRING* vr$184 = fb_StrConcat( &TMP$2814$7, (void*)vr$181, -1, (void*)vr$176, -1 );
							__builtin_memset( &TMP$2815$7, 0, 12 );
							FBSTRING* vr$187 = fb_StrConcat( &TMP$2815$7, (void*)vr$184, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$187, -1, 0 );
						}
						label$2192:;
					}
					goto label$2188;
					label$2189:;
					{
						FBSTRING TMP$2816$6;
						FBSTRING* vr$190 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$2816$6, 0, 12 );
						FBSTRING* vr$193 = fb_StrConcat( &TMP$2816$6, (void*)vr$190, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$193, -1, 0 );
					}
					label$2188:;
				}
				goto label$2181;
				label$2186:;
				if( TMP$2807$4 != 3 ) goto label$2194;
				label$2195:;
				{
					FBSTRING TMP$2817$5;
					FBSTRING TMP$2818$5;
					FBSTRING TMP$2819$5;
					int32 vr$197 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$200 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$2817$5, 0, 12 );
					FBSTRING* vr$203 = fb_StrConcat( &TMP$2817$5, (void*)vr$200, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$2818$5, 0, 12 );
					FBSTRING* vr$206 = fb_StrConcat( &TMP$2818$5, (void*)vr$203, -1, *(void**)((uint8*)REGSTRQ$ + (vr$197 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2819$5, 0, 12 );
					FBSTRING* vr$209 = fb_StrConcat( &TMP$2819$5, (void*)vr$206, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$209, -1, 0 );
				}
				goto label$2181;
				label$2194:;
				if( TMP$2807$4 != 5 ) goto label$2196;
				label$2197:;
				{
					FBSTRING TMP$2820$5;
					FBSTRING TMP$2821$5;
					FBSTRING TMP$2822$5;
					FBSTRING* vr$212 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$214 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$2820$5, 0, 12 );
					FBSTRING* vr$217 = fb_StrConcat( &TMP$2820$5, (void*)vr$214, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2821$5, 0, 12 );
					FBSTRING* vr$220 = fb_StrConcat( &TMP$2821$5, (void*)vr$217, -1, (void*)vr$212, -1 );
					__builtin_memset( &TMP$2822$5, 0, 12 );
					FBSTRING* vr$223 = fb_StrConcat( &TMP$2822$5, (void*)vr$220, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$223, -1, 0 );
				}
				goto label$2181;
				label$2196:;
				if( TMP$2807$4 != 4 ) goto label$2198;
				label$2199:;
				{
					FBSTRING TMP$2823$5;
					FBSTRING TMP$2824$5;
					int32 vr$226 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					__builtin_memset( &TMP$2823$5, 0, 12 );
					FBSTRING* vr$230 = fb_StrConcat( &TMP$2823$5, (void*)"[", 2, *(void**)((uint8*)REGSTRQ$ + (vr$226 << (2 & 31))), 0 );
					__builtin_memset( &TMP$2824$5, 0, 12 );
					FBSTRING* vr$233 = fb_StrConcat( &TMP$2824$5, (void*)vr$230, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$233, -1, 0 );
				}
				goto label$2181;
				label$2198:;
				{
					FBSTRING TMP$2825$5;
					FBSTRING TMP$2828$5;
					FBSTRING TMP$2829$5;
					__builtin_memset( &TMP$2825$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2825$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2825$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2825$5 );
					__builtin_memset( &TMP$2828$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2828$5, -1, (void*)"FOUND AN ERROR : typ in deref not handled", 42, 0 );
					HWRITEASM64( &TMP$2828$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2828$5 );
					__builtin_memset( &TMP$2829$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$2829$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$2829$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2829$5 );
				}
				label$2200:;
				label$2181:;
			}
			if( *(int32*)V1$1 != 5 ) goto label$2202;
			{
				FBSTRING TMP$2830$4;
				FBSTRING TMP$2831$4;
				FBSTRING TMP$2832$4;
				FBSTRING TMP$2833$4;
				__builtin_memset( &TMP$2833$4, 0, 12 );
				int32 vr$251 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2830$4, 0, 12 );
				FBSTRING* vr$255 = fb_StrConcat( &TMP$2830$4, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$251 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2831$4, 0, 12 );
				FBSTRING* vr$258 = fb_StrConcat( &TMP$2831$4, (void*)vr$255, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2832$4, 0, 12 );
				FBSTRING* vr$261 = fb_StrConcat( &TMP$2832$4, (void*)vr$258, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2833$4, -1, (void*)vr$261, -1, 0 );
				HWRITEASM64( &TMP$2833$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2833$4 );
			}
			goto label$2201;
			label$2202:;
			{
				FBSTRING TMP$2834$4;
				FBSTRING TMP$2835$4;
				FBSTRING TMP$2836$4;
				FBSTRING TMP$2837$4;
				__builtin_memset( &TMP$2837$4, 0, 12 );
				int32 vr$268 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$2834$4, 0, 12 );
				FBSTRING* vr$272 = fb_StrConcat( &TMP$2834$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$268 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2835$4, 0, 12 );
				FBSTRING* vr$275 = fb_StrConcat( &TMP$2835$4, (void*)vr$272, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$2836$4, 0, 12 );
				FBSTRING* vr$278 = fb_StrConcat( &TMP$2836$4, (void*)vr$275, -1, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$2837$4, -1, (void*)vr$278, -1, 0 );
				HWRITEASM64( &TMP$2837$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2837$4 );
			}
			label$2201:;
		}
		label$2179:;
		label$2162:;
	}
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2154:;
}

static void HDOCALL( struct $8FBSYMBOL* PROC$1, FBSTRING* PNAME$1, FBSTRING* FIRSTMOV$1, struct $6IRVREG* VR$1, int32 LEVEL$1, boolean VARIADIC$1, boolean CALLPTR$1 )
{
	int32 TMP$2847$1;
	int32 TMP$3232$1;
	label$2213:;
	int32 REG2$1;
	__builtin_memset( &REG2$1, 0, 4 );
	int32 CPTARG$1;
	__builtin_memset( &CPTARG$1, 0, 4 );
	int32 CPTINT$1;
	__builtin_memset( &CPTINT$1, 0, 4 );
	int32 CPTFLOAT$1;
	__builtin_memset( &CPTFLOAT$1, 0, 4 );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* V2$1;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 12 );
	boolean TOSTACK$1;
	__builtin_memset( &TOSTACK$1, 0, 1 );
	int32 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 4 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 OFST$1;
	__builtin_memset( &OFST$1, 0, 4 );
	FBSTRING PUSHSTR$1[301];
	__builtin_memset( (FBSTRING*)PUSHSTR$1, 0, 3612 );
	struct $8FBARRAY1I8FBSTRINGE {
		FBSTRING* DATA;
		FBSTRING* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 36 );
	struct $8FBARRAY1I8FBSTRINGE tmp$2846$1;
	*(FBSTRING**)&tmp$2846$1 = (FBSTRING*)PUSHSTR$1;
	*(FBSTRING**)((uint8*)&tmp$2846$1 + 4) = (FBSTRING*)PUSHSTR$1;
	*(int32*)((uint8*)&tmp$2846$1 + 8) = 3612;
	*(int32*)((uint8*)&tmp$2846$1 + 12) = 12;
	*(int32*)((uint8*)&tmp$2846$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$2846$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$2846$1 + 24) = 301;
	*(int32*)((uint8*)&tmp$2846$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$2846$1 + 32) = 300;
	int32 PUSHNBSTR$1;
	__builtin_memset( &PUSHNBSTR$1, 0, 4 );
	int32 PUSHSIZE$1;
	__builtin_memset( &PUSHSIZE$1, 0, 4 );
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	$15FB_STRUCT_INREG RETIN2REGS$1;
	__builtin_memset( &RETIN2REGS$1, 0, 4 );
	*(boolean*)((uint8*)&CTX$ + 137) = (boolean)1;
	if( CALLPTR$1 == (boolean)0 ) goto label$2216;
	{
		REG_CALLPTR( PNAME$1, FIRSTMOV$1 );
		label$2216:;
	}
	*(int32*)((uint8*)&CTX$ + 108) = *(int32*)((uint8*)&CTX$ + 96) + 104;
	*(int32*)((uint8*)&CTX$ + 104) = *(int32*)((uint8*)&CTX$ + 108);
	void* vr$21 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 60) );
	ARG$1 = (struct $9IRCALLARG*)vr$21;
	label$2217:;
	if( ARG$1 == (struct $9IRCALLARG*)0u ) goto label$2219;
	TMP$2847$1 = -((struct $9IRCALLARG*)-(*(int32*)((uint8*)ARG$1 + 8) == LEVEL$1) != (struct $9IRCALLARG*)0u);
	goto label$3045;
	label$2219:;
	TMP$2847$1 = 0;
	label$3045:;
	if( TMP$2847$1 == 0 ) goto label$2218;
	{
		int32 TMP$2937$2;
		void* vr$25 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$25;
		V2$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 4);
		fb_StrAssign( (void*)&OP3$1, -1, (void*)"", 1, 0 );
		REG2$1 = -1;
		$19FB_CVA_LIST_TYPEDEF vr$33 = SYMBGETVALISTTYPE( *(int32*)((uint8*)V2$1 + 4), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) );
		if( (-((*(int32*)((uint8*)V2$1 + 4) & 480) == 0) & -(vr$33 == 3)) == 0 ) goto label$2221;
		{
			struct $6IRVREG* vr$36 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$36;
			_EMITADDR( 22, V2$1, TEMPO1$1 );
			__builtin_memcpy( V2$1, TEMPO1$1, 72 );
		}
		label$2221:;
		label$2220:;
		DTYPE$1 = *(int32*)((uint8*)V2$1 + 4) & 511;
		{
			$15IRVREGTYPE_ENUM TMP$2848$3;
			TMP$2848$3 = *($15IRVREGTYPE_ENUM*)V2$1;
			if( TMP$2848$3 != 2 ) goto label$2223;
			label$2224:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$2226;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) != (struct $8FBSYMBOL*)0u ) goto label$2228;
					{
						if( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) == -1 ) goto label$2230;
						{
							FBSTRING TMP$2849$7;
							FBSTRING TMP$2850$7;
							FBSTRING TMP$2851$7;
							int32 vr$47 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
							REG2$1 = vr$47;
							FBSTRING* vr$50 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2849$7, 0, 12 );
							FBSTRING* vr$53 = fb_StrConcat( &TMP$2849$7, (void*)vr$50, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2850$7, 0, 12 );
							FBSTRING* vr$56 = fb_StrConcat( &TMP$2850$7, (void*)vr$53, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2851$7, 0, 12 );
							FBSTRING* vr$59 = fb_StrConcat( &TMP$2851$7, (void*)vr$56, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$59, -1, 0 );
						}
						goto label$2229;
						label$2230:;
						{
							FBSTRING TMP$2852$7;
							FBSTRING TMP$2853$7;
							FBSTRING TMP$2854$7;
							FBSTRING TMP$2855$7;
							FBSTRING TMP$2856$7;
							FBSTRING TMP$2857$7;
							FBSTRING TMP$2858$7;
							FBSTRING TMP$2859$7;
							int32 vr$64 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 52) + 12) );
							REG2$1 = vr$64;
							__builtin_memset( &TMP$2852$7, 0, 12 );
							FBSTRING* vr$69 = fb_StrConcat( &TMP$2852$7, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2853$7, 0, 12 );
							FBSTRING* vr$72 = fb_StrConcat( &TMP$2853$7, (void*)vr$69, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2854$7, 0, 12 );
							FBSTRING* vr$75 = fb_StrConcat( &TMP$2854$7, (void*)vr$72, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2855$7, 0, 12 );
							FBSTRING* vr$78 = fb_StrConcat( &TMP$2855$7, (void*)vr$75, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2856$7, 0, 12 );
							FBSTRING* vr$81 = fb_StrConcat( &TMP$2856$7, (void*)vr$78, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$81, -1, 0 );
							FBSTRING* vr$85 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2857$7, 0, 12 );
							FBSTRING* vr$88 = fb_StrConcat( &TMP$2857$7, (void*)vr$85, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2858$7, 0, 12 );
							FBSTRING* vr$91 = fb_StrConcat( &TMP$2858$7, (void*)vr$88, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$2859$7, 0, 12 );
							FBSTRING* vr$94 = fb_StrConcat( &TMP$2859$7, (void*)vr$91, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$94, -1, 0 );
						}
						label$2229:;
					}
					goto label$2227;
					label$2228:;
					{
						uint8* vr$96 = REG_TEMPO(  );
						fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$96, 0, 0 );
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2232;
						{
							FBSTRING TMP$2860$7;
							FBSTRING TMP$2861$7;
							FBSTRING TMP$2862$7;
							FBSTRING TMP$2863$7;
							FBSTRING TMP$2864$7;
							FBSTRING TMP$2865$7;
							FBSTRING TMP$2867$7;
							FBSTRING TMP$2868$7;
							FBSTRING TMP$2869$7;
							FBSTRING* vr$111 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							uint8* vr$114 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							__builtin_memset( &TMP$2860$7, 0, 12 );
							FBSTRING* vr$118 = fb_StrConcat( &TMP$2860$7, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2861$7, 0, 12 );
							FBSTRING* vr$121 = fb_StrConcat( &TMP$2861$7, (void*)vr$118, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2862$7, 0, 12 );
							FBSTRING* vr$124 = fb_StrConcat( &TMP$2862$7, (void*)vr$121, -1, (void*)vr$114, 0 );
							__builtin_memset( &TMP$2863$7, 0, 12 );
							FBSTRING* vr$127 = fb_StrConcat( &TMP$2863$7, (void*)vr$124, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2864$7, 0, 12 );
							FBSTRING* vr$130 = fb_StrConcat( &TMP$2864$7, (void*)vr$127, -1, (void*)vr$111, -1 );
							__builtin_memset( &TMP$2865$7, 0, 12 );
							FBSTRING* vr$133 = fb_StrConcat( &TMP$2865$7, (void*)vr$130, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$133, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"\x0A", 2, 0 );
							FBSTRING* vr$137 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)vr$137, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"mov ", 5, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)", ", 3, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"[", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)&REGTEMPO$1, -1, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)"]", 2, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1, (void*)" #NO", 5, 0 );
							FBSTRING* vr$150 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2867$7, 0, 12 );
							FBSTRING* vr$153 = fb_StrConcat( &TMP$2867$7, (void*)vr$150, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2868$7, 0, 12 );
							FBSTRING* vr$156 = fb_StrConcat( &TMP$2868$7, (void*)vr$153, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2869$7, 0, 12 );
							FBSTRING* vr$159 = fb_StrConcat( &TMP$2869$7, (void*)vr$156, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$159, -1, 0 );
						}
						goto label$2231;
						label$2232:;
						{
							FBSTRING TMP$2870$7;
							FBSTRING TMP$2871$7;
							FBSTRING TMP$2872$7;
							FBSTRING TMP$2873$7;
							FBSTRING TMP$2874$7;
							FBSTRING TMP$2875$7;
							FBSTRING TMP$2876$7;
							FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							__builtin_memset( &TMP$2870$7, 0, 12 );
							FBSTRING* vr$167 = fb_StrConcat( &TMP$2870$7, (void*)"mov ", 5, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2871$7, 0, 12 );
							FBSTRING* vr$170 = fb_StrConcat( &TMP$2871$7, (void*)vr$167, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2872$7, 0, 12 );
							FBSTRING* vr$173 = fb_StrConcat( &TMP$2872$7, (void*)vr$170, -1, (void*)vr$163, -1 );
							__builtin_memset( &TMP$2873$7, 0, 12 );
							FBSTRING* vr$176 = fb_StrConcat( &TMP$2873$7, (void*)vr$173, -1, (void*)"[rbp]", 6 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$176, -1, 0 );
							FBSTRING* vr$180 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
							__builtin_memset( &TMP$2874$7, 0, 12 );
							FBSTRING* vr$183 = fb_StrConcat( &TMP$2874$7, (void*)vr$180, -1, (void*)"[", 2 );
							__builtin_memset( &TMP$2875$7, 0, 12 );
							FBSTRING* vr$186 = fb_StrConcat( &TMP$2875$7, (void*)vr$183, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2876$7, 0, 12 );
							FBSTRING* vr$189 = fb_StrConcat( &TMP$2876$7, (void*)vr$186, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$189, -1, 0 );
						}
						label$2231:;
					}
					label$2227:;
				}
				goto label$2225;
				label$2226:;
				{
					uint8* vr$191 = REG_TEMPO(  );
					fb_StrAssign( (void*)&REGTEMPO$1, -1, (void*)vr$191, 0, 0 );
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2234;
					{
						FBSTRING TMP$2877$6;
						FBSTRING TMP$2878$6;
						FBSTRING TMP$2879$6;
						FBSTRING TMP$2880$6;
						FBSTRING TMP$2881$6;
						FBSTRING TMP$2882$6;
						FBSTRING* vr$203 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						uint8* vr$205 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$2877$6, 0, 12 );
						FBSTRING* vr$209 = fb_StrConcat( &TMP$2877$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2878$6, 0, 12 );
						FBSTRING* vr$212 = fb_StrConcat( &TMP$2878$6, (void*)vr$209, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$2879$6, 0, 12 );
						FBSTRING* vr$215 = fb_StrConcat( &TMP$2879$6, (void*)vr$212, -1, (void*)vr$205, 0 );
						__builtin_memset( &TMP$2880$6, 0, 12 );
						FBSTRING* vr$218 = fb_StrConcat( &TMP$2880$6, (void*)vr$215, -1, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$2881$6, 0, 12 );
						FBSTRING* vr$221 = fb_StrConcat( &TMP$2881$6, (void*)vr$218, -1, (void*)vr$203, -1 );
						__builtin_memset( &TMP$2882$6, 0, 12 );
						FBSTRING* vr$224 = fb_StrConcat( &TMP$2882$6, (void*)vr$221, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$224, -1, 0 );
					}
					goto label$2233;
					label$2234:;
					{
						FBSTRING TMP$2883$6;
						FBSTRING TMP$2884$6;
						FBSTRING TMP$2885$6;
						FBSTRING TMP$2886$6;
						FBSTRING* vr$227 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$2883$6, 0, 12 );
						FBSTRING* vr$231 = fb_StrConcat( &TMP$2883$6, (void*)"lea ", 5, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2884$6, 0, 12 );
						FBSTRING* vr$234 = fb_StrConcat( &TMP$2884$6, (void*)vr$231, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$2885$6, 0, 12 );
						FBSTRING* vr$237 = fb_StrConcat( &TMP$2885$6, (void*)vr$234, -1, (void*)vr$227, -1 );
						__builtin_memset( &TMP$2886$6, 0, 12 );
						FBSTRING* vr$240 = fb_StrConcat( &TMP$2886$6, (void*)vr$237, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$240, -1, 0 );
					}
					label$2233:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 4 ) goto label$2236;
					{
						FBSTRING TMP$2887$6;
						FBSTRING TMP$2888$6;
						FBSTRING TMP$2889$6;
						FBSTRING TMP$2890$6;
						int32 vr$246 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
						REG2$1 = vr$246;
						__builtin_memset( &TMP$2887$6, 0, 12 );
						FBSTRING* vr$251 = fb_StrConcat( &TMP$2887$6, (void*)"[", 2, (void*)&REGTEMPO$1, -1 );
						__builtin_memset( &TMP$2888$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$2888$6, (void*)vr$251, -1, (void*)"+", 2 );
						__builtin_memset( &TMP$2889$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$2889$6, (void*)vr$254, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
						__builtin_memset( &TMP$2890$6, 0, 12 );
						FBSTRING* vr$260 = fb_StrConcat( &TMP$2890$6, (void*)vr$257, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$260, -1, 0 );
					}
					goto label$2235;
					label$2236:;
					if( *(int32*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) != 1 ) goto label$2237;
					{
						if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) + 4) & 1) != 0)) == 0 ) goto label$2239;
						{
							FBSTRING TMP$2891$7;
							FBSTRING TMP$2892$7;
							FBSTRING TMP$2893$7;
							FBSTRING TMP$2894$7;
							FBSTRING TMP$2895$7;
							FBSTRING TMP$2896$7;
							FBSTRING TMP$2897$7;
							FBSTRING TMP$2898$7;
							FBSTRING TMP$2899$7;
							FBSTRING* vr$277 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							uint8* vr$280 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 32) );
							FBSTRING* vr$283 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$2891$7, 0, 12 );
							FBSTRING* vr$286 = fb_StrConcat( &TMP$2891$7, (void*)"\x0A", 2, (void*)vr$283, -1 );
							__builtin_memset( &TMP$2892$7, 0, 12 );
							FBSTRING* vr$289 = fb_StrConcat( &TMP$2892$7, (void*)vr$286, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$2893$7, 0, 12 );
							FBSTRING* vr$292 = fb_StrConcat( &TMP$2893$7, (void*)vr$289, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2894$7, 0, 12 );
							FBSTRING* vr$295 = fb_StrConcat( &TMP$2894$7, (void*)vr$292, -1, (void*)", ", 3 );
							__builtin_memset( &TMP$2895$7, 0, 12 );
							FBSTRING* vr$298 = fb_StrConcat( &TMP$2895$7, (void*)vr$295, -1, (void*)vr$280, 0 );
							__builtin_memset( &TMP$2896$7, 0, 12 );
							FBSTRING* vr$301 = fb_StrConcat( &TMP$2896$7, (void*)vr$298, -1, (void*)"[rip+", 6 );
							__builtin_memset( &TMP$2897$7, 0, 12 );
							FBSTRING* vr$304 = fb_StrConcat( &TMP$2897$7, (void*)vr$301, -1, (void*)vr$277, -1 );
							__builtin_memset( &TMP$2898$7, 0, 12 );
							FBSTRING* vr$307 = fb_StrConcat( &TMP$2898$7, (void*)vr$304, -1, (void*)"]", 2 );
							__builtin_memset( &TMP$2899$7, 0, 12 );
							FBSTRING* vr$311 = fb_StrConcat( &TMP$2899$7, (void*)&OP3$1, -1, (void*)vr$307, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$311, -1, 0 );
						}
						goto label$2238;
						label$2239:;
						{
							FBSTRING TMP$2900$7;
							FBSTRING TMP$2901$7;
							FBSTRING TMP$2902$7;
							FBSTRING TMP$2903$7;
							FBSTRING TMP$2904$7;
							FBSTRING TMP$2905$7;
							FBSTRING TMP$2906$7;
							FBSTRING* vr$315 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 40) );
							FBSTRING* vr$318 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
							__builtin_memset( &TMP$2900$7, 0, 12 );
							FBSTRING* vr$321 = fb_StrConcat( &TMP$2900$7, (void*)"\x0A", 2, (void*)vr$318, -1 );
							__builtin_memset( &TMP$2901$7, 0, 12 );
							FBSTRING* vr$324 = fb_StrConcat( &TMP$2901$7, (void*)vr$321, -1, (void*)"add ", 5 );
							__builtin_memset( &TMP$2902$7, 0, 12 );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$2902$7, (void*)vr$324, -1, (void*)&REGTEMPO$1, -1 );
							__builtin_memset( &TMP$2903$7, 0, 12 );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$2903$7, (void*)vr$327, -1, (void*)",", 2 );
							__builtin_memset( &TMP$2904$7, 0, 12 );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$2904$7, (void*)vr$330, -1, (void*)vr$315, -1 );
							__builtin_memset( &TMP$2905$7, 0, 12 );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$2905$7, (void*)vr$333, -1, (void*)"[rbp]", 6 );
							__builtin_memset( &TMP$2906$7, 0, 12 );
							FBSTRING* vr$340 = fb_StrConcat( &TMP$2906$7, (void*)&OP3$1, -1, (void*)vr$336, -1 );
							fb_StrAssign( (void*)&OP3$1, -1, (void*)vr$340, -1, 0 );
						}
						label$2238:;
						fb_StrAssign( (void*)&OP1$1, -1, (void*)"[", 2, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)&REGTEMPO$1, -1, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1, (void*)"]", 2, 0 );
					}
					goto label$2235;
					label$2237:;
					{
						FBSTRING TMP$2907$6;
						FBSTRING TMP$2910$6;
						FBSTRING TMP$2911$6;
						__builtin_memset( &TMP$2907$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2907$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2907$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2907$6 );
						__builtin_memset( &TMP$2910$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2910$6, -1, (void*)"FOUND AN ERROR : hdocall error with idx", 40, 0 );
						HWRITEASM64( &TMP$2910$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2910$6 );
						__builtin_memset( &TMP$2911$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2911$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2911$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2911$6 );
					}
					label$2235:;
				}
				label$2225:;
			}
			goto label$2222;
			label$2223:;
			if( TMP$2848$3 != 4 ) goto label$2240;
			label$2241:;
			{
				int32 TMP$2912$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2242;
				TMP$2912$4 = 24;
				goto label$3046;
				label$2242:;
				TMP$2912$4 = DTYPE$1 & 31;
				label$3046:;
				if( TMP$2912$4 != 24 ) goto label$2244;
				{
					DTYPE$1 = 8;
					label$2244:;
				}
				int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				REG2$1 = vr$361;
				{
					if( DTYPE$1 == 8 ) goto label$2247;
					label$2248:;
					if( DTYPE$1 == 9 ) goto label$2247;
					label$2249:;
					if( DTYPE$1 == 13 ) goto label$2247;
					label$2250:;
					if( DTYPE$1 == 14 ) goto label$2247;
					label$2251:;
					if( DTYPE$1 == 16 ) goto label$2247;
					label$2252:;
					if( DTYPE$1 == 10 ) goto label$2247;
					label$2253:;
					if( DTYPE$1 != 20 ) goto label$2246;
					label$2247:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2245;
					label$2246:;
					if( DTYPE$1 == 11 ) goto label$2255;
					label$2256:;
					if( DTYPE$1 == 12 ) goto label$2255;
					label$2257:;
					if( DTYPE$1 != 15 ) goto label$2254;
					label$2255:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2245;
					label$2254:;
					if( DTYPE$1 == 5 ) goto label$2259;
					label$2260:;
					if( DTYPE$1 != 6 ) goto label$2258;
					label$2259:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2245;
					label$2258:;
					if( DTYPE$1 == 2 ) goto label$2262;
					label$2263:;
					if( DTYPE$1 == 3 ) goto label$2262;
					label$2264:;
					if( DTYPE$1 == 1 ) goto label$2262;
					label$2265:;
					if( DTYPE$1 != 4 ) goto label$2261;
					label$2262:;
					{
						fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (REG2$1 << (2 & 31))), 0, 0 );
					}
					goto label$2245;
					label$2261:;
					{
						FBSTRING TMP$2913$6;
						FBSTRING TMP$2917$6;
						FBSTRING TMP$2918$6;
						FBSTRING TMP$2919$6;
						__builtin_memset( &TMP$2913$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2913$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2913$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2913$6 );
						__builtin_memset( &TMP$2918$6, 0, 12 );
						FBSTRING* vr$375 = fb_IntToStr( DTYPE$1 );
						__builtin_memset( &TMP$2917$6, 0, 12 );
						FBSTRING* vr$378 = fb_StrConcat( &TMP$2917$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 01 = ", 55, (void*)vr$375, -1 );
						fb_StrAssign( (void*)&TMP$2918$6, -1, (void*)vr$378, -1, 0 );
						HWRITEASM64( &TMP$2918$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2918$6 );
						__builtin_memset( &TMP$2919$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$2919$6, -1, (void*)"", 1, 0 );
						HWRITEASM64( &TMP$2919$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$2919$6 );
					}
					label$2266:;
					label$2245:;
				}
			}
			goto label$2222;
			label$2240:;
			if( TMP$2848$3 != 1 ) goto label$2267;
			label$2268:;
			{
				int32 TMP$2920$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2269;
				TMP$2920$4 = -((-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) != 0);
				goto label$3047;
				label$2269:;
				TMP$2920$4 = 0;
				label$3047:;
				if( TMP$2920$4 == 0 ) goto label$2271;
				{
					FBSTRING TMP$2921$5;
					FBSTRING TMP$2922$5;
					FBSTRING TMP$2923$5;
					FBSTRING* vr$398 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$400 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$2921$5, 0, 12 );
					FBSTRING* vr$403 = fb_StrConcat( &TMP$2921$5, (void*)vr$400, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$2922$5, 0, 12 );
					FBSTRING* vr$406 = fb_StrConcat( &TMP$2922$5, (void*)vr$403, -1, (void*)vr$398, -1 );
					__builtin_memset( &TMP$2923$5, 0, 12 );
					FBSTRING* vr$409 = fb_StrConcat( &TMP$2923$5, (void*)vr$406, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$409, -1, 0 );
				}
				goto label$2270;
				label$2271:;
				{
					FBSTRING TMP$2924$5;
					FBSTRING* vr$412 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$2924$5, 0, 12 );
					FBSTRING* vr$415 = fb_StrConcat( &TMP$2924$5, (void*)vr$412, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$415, -1, 0 );
				}
				label$2270:;
			}
			goto label$2222;
			label$2267:;
			if( TMP$2848$3 != 3 ) goto label$2272;
			label$2273:;
			{
				FBSTRING TMP$2925$4;
				FBSTRING TMP$2926$4;
				FBSTRING TMP$2927$4;
				int32 vr$419 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
				REG2$1 = vr$419;
				FBSTRING* vr$422 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				__builtin_memset( &TMP$2925$4, 0, 12 );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$2925$4, (void*)vr$422, -1, (void*)"[", 2 );
				__builtin_memset( &TMP$2926$4, 0, 12 );
				FBSTRING* vr$428 = fb_StrConcat( &TMP$2926$4, (void*)vr$425, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0 );
				__builtin_memset( &TMP$2927$4, 0, 12 );
				FBSTRING* vr$431 = fb_StrConcat( &TMP$2927$4, (void*)vr$428, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$431, -1, 0 );
			}
			goto label$2222;
			label$2272:;
			if( TMP$2848$3 != 5 ) goto label$2274;
			label$2275:;
			{
				FBSTRING TMP$2928$4;
				FBSTRING TMP$2929$4;
				FBSTRING TMP$2930$4;
				FBSTRING* vr$434 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
				uint8* vr$436 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
				__builtin_memset( &TMP$2928$4, 0, 12 );
				FBSTRING* vr$439 = fb_StrConcat( &TMP$2928$4, (void*)vr$436, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$2929$4, 0, 12 );
				FBSTRING* vr$442 = fb_StrConcat( &TMP$2929$4, (void*)vr$439, -1, (void*)vr$434, -1 );
				__builtin_memset( &TMP$2930$4, 0, 12 );
				FBSTRING* vr$445 = fb_StrConcat( &TMP$2930$4, (void*)vr$442, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$445, -1, 0 );
			}
			goto label$2222;
			label$2274:;
			if( TMP$2848$3 != 0 ) goto label$2276;
			label$2277:;
			{
				int32 TMP$2931$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$2278;
				TMP$2931$4 = 24;
				goto label$3048;
				label$2278:;
				TMP$2931$4 = DTYPE$1 & 31;
				label$3048:;
				if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2931$4 * 28)) != 1 ) goto label$2280;
				{
					FBSTRING* vr$451 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 24), DTYPE$1, (int8)0 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$451, -1, 0 );
				}
				goto label$2279;
				label$2280:;
				{
					if( DTYPE$1 != 1 ) goto label$2282;
					{
						if( *(int64*)((uint8*)V2$1 + 24) == 0ll ) goto label$2284;
						{
							*(int64*)((uint8*)V2$1 + 24) = 1ll;
						}
						label$2284:;
						label$2283:;
					}
					label$2282:;
					label$2281:;
					FBSTRING* vr$456 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 24) );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$456, -1, 0 );
				}
				label$2279:;
			}
			goto label$2222;
			label$2276:;
			{
				FBSTRING TMP$2932$4;
				FBSTRING TMP$2935$4;
				FBSTRING TMP$2936$4;
				__builtin_memset( &TMP$2932$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2932$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2932$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2932$4 );
				__builtin_memset( &TMP$2935$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2935$4, -1, (void*)"FOUND AN ERROR : in hdocall typ not handled ", 45, 0 );
				HWRITEASM64( &TMP$2935$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2935$4 );
				__builtin_memset( &TMP$2936$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$2936$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$2936$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$2936$4 );
			}
			label$2285:;
			label$2222:;
		}
		if( (DTYPE$1 & 480) == 0 ) goto label$2286;
		TMP$2937$2 = 24;
		goto label$3049;
		label$2286:;
		TMP$2937$2 = DTYPE$1 & 31;
		label$3049:;
		if( TMP$2937$2 != 24 ) goto label$2288;
		{
			DTYPE$1 = 8;
			label$2288:;
		}
		int32 vr$476 = PARAM_ANALYZE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)V2$1 + 8), &CPTARG$1, &CPTINT$1, &CPTFLOAT$1 );
		PARAMTYPE$1 = vr$476;
		if( PARAMTYPE$1 < 10 ) goto label$2290;
		{
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2292;
			{
				if( *(int32*)V2$1 != 0 ) goto label$2294;
				{
					int32 TMP$2938$5;
					PUSHSIZE$1 = PUSHSIZE$1 + 8;
					if( (DTYPE$1 & 480) == 0 ) goto label$2295;
					TMP$2938$5 = 24;
					goto label$3050;
					label$2295:;
					TMP$2938$5 = DTYPE$1 & 31;
					label$3050:;
					if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$2938$5 * 28)) != 1 ) goto label$2297;
					{
						if( DTYPE$1 != 15 ) goto label$2299;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						goto label$2298;
						label$2299:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2298:;
					}
					goto label$2296;
					label$2297:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) >= -2147483648ll) & -(*(int64*)((uint8*)V2$1 + 24) < 2147483648ll)) == 0 ) goto label$2300;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
						fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					goto label$2296;
					label$2300:;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
						fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
					}
					label$2296:;
				}
				goto label$2293;
				label$2294:;
				{
					if( DTYPE$1 != 20 ) goto label$2302;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
						PUSHSIZE$1 = PUSHSIZE$1 + LGT$1;
						if( LGT$1 <= 8 ) goto label$2304;
						{
							FBSTRING TMP$2944$7;
							OFST$1 = LGT$1 % 8;
							if( OFST$1 != 0 ) goto label$2306;
							{
								OFST$1 = 8;
								label$2306:;
							}
							label$2307:;
							if( LGT$1 <= 0 ) goto label$2308;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push [rax]", 11, 0 );
								if( LGT$1 <= 8 ) goto label$2310;
								{
									PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
									fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"sub rax, 8", 11, 0 );
								}
								label$2310:;
								label$2309:;
								LGT$1 = LGT$1 + -8;
							}
							goto label$2307;
							label$2308:;
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							FBSTRING* vr$534 = fb_LongintToStr( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) - (int64)OFST$1 );
							__builtin_memset( &TMP$2944$7, 0, 12 );
							FBSTRING* vr$537 = fb_StrConcat( &TMP$2944$7, (void*)"add rax, ", 10, (void*)vr$534, -1 );
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$537, -1, 0 );
							if( *(int32*)V2$1 != 4 ) goto label$2312;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2311;
							label$2312:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2311:;
						}
						goto label$2303;
						label$2304:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
						}
						label$2303:;
					}
					goto label$2301;
					label$2302:;
					{
						PUSHSIZE$1 = PUSHSIZE$1 + 8;
						if( *(int32*)V2$1 != 5 ) goto label$2314;
						{
							int32 TMP$2945$7;
							if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2315;
							int32 vr$563 = FBGETOPTION( 0 );
							TMP$2945$7 = -(vr$563 == 2);
							goto label$3051;
							label$2315:;
							TMP$2945$7 = 0;
							label$3051:;
							if( TMP$2945$7 == 0 ) goto label$2317;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"mov rax, QWORD PTR ", 20, 0 );
								FBSTRING* vr$571 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
								int32 vr$573 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$571 );
								FBSTRING* vr$576 = fb_LEFT( (FBSTRING*)&OP1$1, vr$573 + -1 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)vr$576, -1, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"@GOTPCREL[rip]", 15, 0 );
							}
							goto label$2316;
							label$2317:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push rax", 9, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"lea rax, ", 10, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2316:;
						}
						goto label$2313;
						label$2314:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2319;
							{
								fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (2 & 31))), 0, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							goto label$2318;
							label$2319:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)"push ", 6, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP1$1, -1, 0 );
							}
							label$2318:;
						}
						label$2313:;
					}
					label$2301:;
					int32 vr$606 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
					if( vr$606 == 0 ) goto label$2321;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 12)), -1, (void*)&OP3$1, -1, 0 );
					}
					label$2321:;
					label$2320:;
				}
				label$2293:;
			}
			goto label$2291;
			label$2292:;
			{
				int32 vr$612 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
				if( vr$612 == 0 ) goto label$2323;
				{
					EMITOP3_OP4( &OP3$1 );
					label$2323:;
				}
				if( PARAMTYPE$1 != 11 ) goto label$2325;
				{
					if( DTYPE$1 != 20 ) goto label$2327;
					{
						LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
					}
					goto label$2326;
					label$2327:;
					{
						LGT$1 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (DTYPE$1 * 28)) + 4);
					}
					label$2326:;
					if( *(int32*)V2$1 != 4 ) goto label$2329;
					{
						{
							uint32 TMP$2946$7;
							TMP$2946$7 = (uint32)LGT$1;
							goto label$2331;
							label$2332:;
							{
								FBSTRING TMP$2949$8;
								FBSTRING TMP$2950$8;
								FBSTRING TMP$2951$8;
								FBSTRING TMP$2952$8;
								__builtin_memset( &TMP$2952$8, 0, 12 );
								FBSTRING* vr$623 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2949$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$2949$8, (void*)"mov byte PTR ", 14, (void*)vr$623, -1 );
								__builtin_memset( &TMP$2950$8, 0, 12 );
								FBSTRING* vr$629 = fb_StrConcat( &TMP$2950$8, (void*)vr$626, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$2951$8, 0, 12 );
								FBSTRING* vr$632 = fb_StrConcat( &TMP$2951$8, (void*)vr$629, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2952$8, -1, (void*)vr$632, -1, 0 );
								HWRITEASM64( &TMP$2952$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2952$8 );
							}
							goto label$2330;
							label$2333:;
							{
								FBSTRING TMP$2953$8;
								FBSTRING TMP$2954$8;
								FBSTRING TMP$2955$8;
								FBSTRING TMP$2956$8;
								__builtin_memset( &TMP$2956$8, 0, 12 );
								FBSTRING* vr$640 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2953$8, 0, 12 );
								FBSTRING* vr$643 = fb_StrConcat( &TMP$2953$8, (void*)"mov WORD PTR ", 14, (void*)vr$640, -1 );
								__builtin_memset( &TMP$2954$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$2954$8, (void*)vr$643, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$2955$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$2955$8, (void*)vr$646, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2956$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$2956$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2956$8 );
							}
							goto label$2330;
							label$2334:;
							{
								FBSTRING TMP$2957$8;
								FBSTRING TMP$2958$8;
								FBSTRING TMP$2959$8;
								FBSTRING TMP$2960$8;
								__builtin_memset( &TMP$2960$8, 0, 12 );
								FBSTRING* vr$657 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2957$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$2957$8, (void*)"mov DWORD PTR ", 15, (void*)vr$657, -1 );
								__builtin_memset( &TMP$2958$8, 0, 12 );
								FBSTRING* vr$663 = fb_StrConcat( &TMP$2958$8, (void*)vr$660, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$2959$8, 0, 12 );
								FBSTRING* vr$666 = fb_StrConcat( &TMP$2959$8, (void*)vr$663, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2960$8, -1, (void*)vr$666, -1, 0 );
								HWRITEASM64( &TMP$2960$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2960$8 );
							}
							goto label$2330;
							label$2335:;
							{
								FBSTRING TMP$2961$8;
								FBSTRING TMP$2962$8;
								FBSTRING TMP$2963$8;
								FBSTRING TMP$2964$8;
								__builtin_memset( &TMP$2964$8, 0, 12 );
								FBSTRING* vr$674 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2961$8, 0, 12 );
								FBSTRING* vr$677 = fb_StrConcat( &TMP$2961$8, (void*)"mov QWORD PTR ", 15, (void*)vr$674, -1 );
								__builtin_memset( &TMP$2962$8, 0, 12 );
								FBSTRING* vr$680 = fb_StrConcat( &TMP$2962$8, (void*)vr$677, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$2963$8, 0, 12 );
								FBSTRING* vr$683 = fb_StrConcat( &TMP$2963$8, (void*)vr$680, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2964$8, -1, (void*)vr$683, -1, 0 );
								HWRITEASM64( &TMP$2964$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2964$8 );
							}
							goto label$2330;
							label$2331:;
							static const void* tmp$3864[8] = {
								&&label$2332,
								&&label$2333,
								&&label$2330,
								&&label$2334,
								&&label$2330,
								&&label$2330,
								&&label$2330,
								&&label$2335,
							};
							if( (TMP$2946$7 - 1u) > 7u ) goto label$2330;
							goto *tmp$3864[TMP$2946$7 - 1u];
							label$2330:;
						}
					}
					goto label$2328;
					label$2329:;
					{
						{
							uint32 TMP$2965$7;
							TMP$2965$7 = (uint32)LGT$1;
							goto label$2337;
							label$2338:;
							{
								FBSTRING TMP$2966$8;
								FBSTRING TMP$2967$8;
								FBSTRING TMP$2969$8;
								FBSTRING TMP$2970$8;
								FBSTRING TMP$2971$8;
								__builtin_memset( &TMP$2967$8, 0, 12 );
								__builtin_memset( &TMP$2966$8, 0, 12 );
								FBSTRING* vr$691 = fb_StrConcat( &TMP$2966$8, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2967$8, -1, (void*)vr$691, -1, 0 );
								HWRITEASM64( &TMP$2967$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2967$8 );
								__builtin_memset( &TMP$2971$8, 0, 12 );
								FBSTRING* vr$698 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2969$8, 0, 12 );
								FBSTRING* vr$701 = fb_StrConcat( &TMP$2969$8, (void*)"mov byte PTR ", 14, (void*)vr$698, -1 );
								__builtin_memset( &TMP$2970$8, 0, 12 );
								FBSTRING* vr$704 = fb_StrConcat( &TMP$2970$8, (void*)vr$701, -1, (void*)"[rsp], al", 10 );
								fb_StrAssign( (void*)&TMP$2971$8, -1, (void*)vr$704, -1, 0 );
								HWRITEASM64( &TMP$2971$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2971$8 );
							}
							goto label$2336;
							label$2339:;
							{
								FBSTRING TMP$2973$8;
								FBSTRING TMP$2974$8;
								FBSTRING TMP$2976$8;
								FBSTRING TMP$2977$8;
								FBSTRING TMP$2978$8;
								__builtin_memset( &TMP$2974$8, 0, 12 );
								__builtin_memset( &TMP$2973$8, 0, 12 );
								FBSTRING* vr$712 = fb_StrConcat( &TMP$2973$8, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2974$8, -1, (void*)vr$712, -1, 0 );
								HWRITEASM64( &TMP$2974$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2974$8 );
								__builtin_memset( &TMP$2978$8, 0, 12 );
								FBSTRING* vr$719 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2976$8, 0, 12 );
								FBSTRING* vr$722 = fb_StrConcat( &TMP$2976$8, (void*)"mov WORD PTR ", 14, (void*)vr$719, -1 );
								__builtin_memset( &TMP$2977$8, 0, 12 );
								FBSTRING* vr$725 = fb_StrConcat( &TMP$2977$8, (void*)vr$722, -1, (void*)"[rsp], ax", 10 );
								fb_StrAssign( (void*)&TMP$2978$8, -1, (void*)vr$725, -1, 0 );
								HWRITEASM64( &TMP$2978$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2978$8 );
							}
							goto label$2336;
							label$2340:;
							{
								FBSTRING TMP$2979$8;
								FBSTRING TMP$2980$8;
								FBSTRING TMP$2982$8;
								FBSTRING TMP$2983$8;
								FBSTRING TMP$2984$8;
								__builtin_memset( &TMP$2980$8, 0, 12 );
								__builtin_memset( &TMP$2979$8, 0, 12 );
								FBSTRING* vr$733 = fb_StrConcat( &TMP$2979$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2980$8, -1, (void*)vr$733, -1, 0 );
								HWRITEASM64( &TMP$2980$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2980$8 );
								__builtin_memset( &TMP$2984$8, 0, 12 );
								FBSTRING* vr$740 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2982$8, 0, 12 );
								FBSTRING* vr$743 = fb_StrConcat( &TMP$2982$8, (void*)"mov DWORD PTR ", 15, (void*)vr$740, -1 );
								__builtin_memset( &TMP$2983$8, 0, 12 );
								FBSTRING* vr$746 = fb_StrConcat( &TMP$2983$8, (void*)vr$743, -1, (void*)"[rsp], eax", 11 );
								fb_StrAssign( (void*)&TMP$2984$8, -1, (void*)vr$746, -1, 0 );
								HWRITEASM64( &TMP$2984$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2984$8 );
							}
							goto label$2336;
							label$2341:;
							{
								FBSTRING TMP$2985$8;
								FBSTRING TMP$2986$8;
								FBSTRING TMP$2988$8;
								FBSTRING TMP$2989$8;
								FBSTRING TMP$2990$8;
								__builtin_memset( &TMP$2986$8, 0, 12 );
								__builtin_memset( &TMP$2985$8, 0, 12 );
								FBSTRING* vr$754 = fb_StrConcat( &TMP$2985$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$2986$8, -1, (void*)vr$754, -1, 0 );
								HWRITEASM64( &TMP$2986$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2986$8 );
								__builtin_memset( &TMP$2990$8, 0, 12 );
								FBSTRING* vr$761 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$2988$8, 0, 12 );
								FBSTRING* vr$764 = fb_StrConcat( &TMP$2988$8, (void*)"mov QWORD PTR ", 15, (void*)vr$761, -1 );
								__builtin_memset( &TMP$2989$8, 0, 12 );
								FBSTRING* vr$767 = fb_StrConcat( &TMP$2989$8, (void*)vr$764, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$2990$8, -1, (void*)vr$767, -1, 0 );
								HWRITEASM64( &TMP$2990$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$2990$8 );
							}
							goto label$2336;
							label$2337:;
							static const void* tmp$3865[8] = {
								&&label$2338,
								&&label$2339,
								&&label$2336,
								&&label$2340,
								&&label$2336,
								&&label$2336,
								&&label$2336,
								&&label$2341,
							};
							if( (TMP$2965$7 - 1u) > 7u ) goto label$2336;
							goto *tmp$3865[TMP$2965$7 - 1u];
							label$2336:;
						}
					}
					label$2328:;
				}
				goto label$2324;
				label$2325:;
				if( PARAMTYPE$1 != 12 ) goto label$2342;
				{
					FBSTRING TMP$2991$5;
					FBSTRING TMP$2992$5;
					FBSTRING TMP$2993$5;
					FBSTRING TMP$2994$5;
					FBSTRING TMP$2995$5;
					FBSTRING TMP$2996$5;
					FBSTRING TMP$2997$5;
					FBSTRING TMP$2998$5;
					FBSTRING TMP$2999$5;
					FBSTRING TMP$3000$5;
					FBSTRING TMP$3001$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					__builtin_memset( &TMP$2994$5, 0, 12 );
					__builtin_memset( &TMP$2991$5, 0, 12 );
					FBSTRING* vr$780 = fb_StrConcat( &TMP$2991$5, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$2992$5, 0, 12 );
					FBSTRING* vr$783 = fb_StrConcat( &TMP$2992$5, (void*)vr$780, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2993$5, 0, 12 );
					FBSTRING* vr$786 = fb_StrConcat( &TMP$2993$5, (void*)vr$783, -1, (void*)&OP1$1, -1 );
					fb_StrAssign( (void*)&TMP$2994$5, -1, (void*)vr$786, -1, 0 );
					HWRITEASM64( &TMP$2994$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$2994$5 );
					*(int32*)((uint8*)&CTX$ + 108) = (int32)((((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + (int64)*(int32*)((uint8*)&CTX$ + 108)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll));
					*(int32*)((uint8*)&CTX$ + 108) = (*(int32*)((uint8*)&CTX$ + 108) + -(*(int32*)((uint8*)&CTX$ + 108) % 8)) + 8;
					fb_StrAssign( (void*)&REGTEMPO$1, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0, 0 );
					__builtin_memset( &TMP$2996$5, 0, 12 );
					FBSTRING* vr$814 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
					__builtin_memset( &TMP$2995$5, 0, 12 );
					FBSTRING* vr$817 = fb_StrConcat( &TMP$2995$5, (void*)vr$814, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$2996$5, -1, (void*)vr$817, -1, 0 );
					MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &REGTEMPO$1, &TMP$2996$5, 1, 1 );
					fb_StrDelete( (FBSTRING*)&TMP$2996$5 );
					__builtin_memset( &TMP$3001$5, 0, 12 );
					FBSTRING* vr$827 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
					__builtin_memset( &TMP$2997$5, 0, 12 );
					FBSTRING* vr$833 = fb_StrConcat( &TMP$2997$5, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
					__builtin_memset( &TMP$2998$5, 0, 12 );
					FBSTRING* vr$836 = fb_StrConcat( &TMP$2998$5, (void*)vr$833, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$2999$5, 0, 12 );
					FBSTRING* vr$839 = fb_StrConcat( &TMP$2999$5, (void*)vr$836, -1, (void*)vr$827, -1 );
					__builtin_memset( &TMP$3000$5, 0, 12 );
					FBSTRING* vr$842 = fb_StrConcat( &TMP$3000$5, (void*)vr$839, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&TMP$3001$5, -1, (void*)vr$842, -1, 0 );
					HWRITEASM64( &TMP$3001$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3001$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2344;
					{
						FBSTRING TMP$3002$6;
						FBSTRING TMP$3003$6;
						FBSTRING TMP$3004$6;
						FBSTRING TMP$3005$6;
						__builtin_memset( &TMP$3005$6, 0, 12 );
						FBSTRING* vr$856 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3002$6, 0, 12 );
						FBSTRING* vr$859 = fb_StrConcat( &TMP$3002$6, (void*)"mov QWORD PTR ", 15, (void*)vr$856, -1 );
						__builtin_memset( &TMP$3003$6, 0, 12 );
						FBSTRING* vr$862 = fb_StrConcat( &TMP$3003$6, (void*)vr$859, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3004$6, 0, 12 );
						FBSTRING* vr$865 = fb_StrConcat( &TMP$3004$6, (void*)vr$862, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3005$6, -1, (void*)vr$865, -1, 0 );
						HWRITEASM64( &TMP$3005$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3005$6 );
					}
					label$2344:;
					label$2343:;
				}
				goto label$2324;
				label$2342:;
				{
					if( *(int32*)V2$1 != 0 ) goto label$2346;
					{
						if( DTYPE$1 != 15 ) goto label$2348;
						{
							FBSTRING TMP$3010$7;
							FBSTRING TMP$3011$7;
							FBSTRING TMP$3012$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2350;
							{
								FBSTRING TMP$3007$8;
								__builtin_memset( &TMP$3007$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3007$8, -1, (void*)"xor eax, eax", 13, 0 );
								HWRITEASM64( &TMP$3007$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3007$8 );
							}
							goto label$2349;
							label$2350:;
							{
								FBSTRING TMP$3008$8;
								FBSTRING TMP$3009$8;
								__builtin_memset( &TMP$3009$8, 0, 12 );
								__builtin_memset( &TMP$3008$8, 0, 12 );
								FBSTRING* vr$879 = fb_StrConcat( &TMP$3008$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3009$8, -1, (void*)vr$879, -1, 0 );
								HWRITEASM64( &TMP$3009$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3009$8 );
							}
							label$2349:;
							__builtin_memset( &TMP$3012$7, 0, 12 );
							FBSTRING* vr$886 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3010$7, 0, 12 );
							FBSTRING* vr$889 = fb_StrConcat( &TMP$3010$7, (void*)"mov DWORD PTR ", 15, (void*)vr$886, -1 );
							__builtin_memset( &TMP$3011$7, 0, 12 );
							FBSTRING* vr$892 = fb_StrConcat( &TMP$3011$7, (void*)vr$889, -1, (void*)"[rsp], eax", 11 );
							fb_StrAssign( (void*)&TMP$3012$7, -1, (void*)vr$892, -1, 0 );
							HWRITEASM64( &TMP$3012$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3012$7 );
						}
						goto label$2347;
						label$2348:;
						if( DTYPE$1 != 16 ) goto label$2351;
						{
							FBSTRING TMP$3017$7;
							FBSTRING TMP$3018$7;
							FBSTRING TMP$3019$7;
							if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2353;
							{
								FBSTRING TMP$3014$8;
								__builtin_memset( &TMP$3014$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3014$8, -1, (void*)"xor rax, rax", 13, 0 );
								HWRITEASM64( &TMP$3014$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3014$8 );
							}
							goto label$2352;
							label$2353:;
							{
								FBSTRING TMP$3015$8;
								FBSTRING TMP$3016$8;
								__builtin_memset( &TMP$3016$8, 0, 12 );
								__builtin_memset( &TMP$3015$8, 0, 12 );
								FBSTRING* vr$905 = fb_StrConcat( &TMP$3015$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3016$8, -1, (void*)vr$905, -1, 0 );
								HWRITEASM64( &TMP$3016$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3016$8 );
							}
							label$2352:;
							__builtin_memset( &TMP$3019$7, 0, 12 );
							FBSTRING* vr$912 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3017$7, 0, 12 );
							FBSTRING* vr$915 = fb_StrConcat( &TMP$3017$7, (void*)"mov QWORD PTR ", 15, (void*)vr$912, -1 );
							__builtin_memset( &TMP$3018$7, 0, 12 );
							FBSTRING* vr$918 = fb_StrConcat( &TMP$3018$7, (void*)vr$915, -1, (void*)"[rsp], rax", 11 );
							fb_StrAssign( (void*)&TMP$3019$7, -1, (void*)vr$918, -1, 0 );
							HWRITEASM64( &TMP$3019$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3019$7 );
						}
						goto label$2347;
						label$2351:;
						{
							if( (-(*(int64*)((uint8*)V2$1 + 24) < -2147483648ll) | -(*(int64*)((uint8*)V2$1 + 24) > 4294967295ll)) == 0 ) goto label$2355;
							{
								FBSTRING TMP$3020$8;
								FBSTRING TMP$3021$8;
								FBSTRING TMP$3022$8;
								FBSTRING TMP$3023$8;
								FBSTRING TMP$3024$8;
								__builtin_memset( &TMP$3021$8, 0, 12 );
								__builtin_memset( &TMP$3020$8, 0, 12 );
								FBSTRING* vr$931 = fb_StrConcat( &TMP$3020$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3021$8, -1, (void*)vr$931, -1, 0 );
								HWRITEASM64( &TMP$3021$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3021$8 );
								__builtin_memset( &TMP$3024$8, 0, 12 );
								FBSTRING* vr$938 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3022$8, 0, 12 );
								FBSTRING* vr$941 = fb_StrConcat( &TMP$3022$8, (void*)"mov QWORD PTR ", 15, (void*)vr$938, -1 );
								__builtin_memset( &TMP$3023$8, 0, 12 );
								FBSTRING* vr$944 = fb_StrConcat( &TMP$3023$8, (void*)vr$941, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3024$8, -1, (void*)vr$944, -1, 0 );
								HWRITEASM64( &TMP$3024$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3024$8 );
							}
							goto label$2354;
							label$2355:;
							if( *(int64*)((uint8*)V2$1 + 24) < 2147483648ll ) goto label$2356;
							{
								FBSTRING TMP$3025$8;
								FBSTRING TMP$3026$8;
								FBSTRING TMP$3027$8;
								FBSTRING TMP$3028$8;
								FBSTRING TMP$3029$8;
								__builtin_memset( &TMP$3026$8, 0, 12 );
								__builtin_memset( &TMP$3025$8, 0, 12 );
								FBSTRING* vr$953 = fb_StrConcat( &TMP$3025$8, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3026$8, -1, (void*)vr$953, -1, 0 );
								HWRITEASM64( &TMP$3026$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3026$8 );
								__builtin_memset( &TMP$3029$8, 0, 12 );
								FBSTRING* vr$960 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3027$8, 0, 12 );
								FBSTRING* vr$963 = fb_StrConcat( &TMP$3027$8, (void*)"mov QWORD PTR ", 15, (void*)vr$960, -1 );
								__builtin_memset( &TMP$3028$8, 0, 12 );
								FBSTRING* vr$966 = fb_StrConcat( &TMP$3028$8, (void*)vr$963, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3029$8, -1, (void*)vr$966, -1, 0 );
								HWRITEASM64( &TMP$3029$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3029$8 );
							}
							goto label$2354;
							label$2356:;
							{
								FBSTRING TMP$3030$8;
								FBSTRING TMP$3031$8;
								FBSTRING TMP$3032$8;
								FBSTRING TMP$3033$8;
								__builtin_memset( &TMP$3033$8, 0, 12 );
								FBSTRING* vr$974 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3030$8, 0, 12 );
								FBSTRING* vr$977 = fb_StrConcat( &TMP$3030$8, (void*)"mov QWORD PTR ", 15, (void*)vr$974, -1 );
								__builtin_memset( &TMP$3031$8, 0, 12 );
								FBSTRING* vr$980 = fb_StrConcat( &TMP$3031$8, (void*)vr$977, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3032$8, 0, 12 );
								FBSTRING* vr$983 = fb_StrConcat( &TMP$3032$8, (void*)vr$980, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3033$8, -1, (void*)vr$983, -1, 0 );
								HWRITEASM64( &TMP$3033$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3033$8 );
							}
							label$2354:;
						}
						label$2347:;
					}
					goto label$2345;
					label$2346:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2358;
						{
							if( DTYPE$1 != 20 ) goto label$2360;
							{
								FBSTRING TMP$3034$8;
								FBSTRING TMP$3035$8;
								FBSTRING TMP$3036$8;
								FBSTRING TMP$3037$8;
								FBSTRING TMP$3038$8;
								FBSTRING TMP$3039$8;
								FBSTRING TMP$3040$8;
								FBSTRING TMP$3041$8;
								*(int32*)((uint8*)&CTX$ + 108) = (int32)((((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + (int64)*(int32*)((uint8*)&CTX$ + 108)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll));
								*(int32*)((uint8*)&CTX$ + 108) = (*(int32*)((uint8*)&CTX$ + 108) + -(*(int32*)((uint8*)&CTX$ + 108) % 8)) + 8;
								__builtin_memset( &TMP$3035$8, 0, 12 );
								FBSTRING* vr$1008 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
								__builtin_memset( &TMP$3034$8, 0, 12 );
								FBSTRING* vr$1011 = fb_StrConcat( &TMP$3034$8, (void*)vr$1008, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3035$8, -1, (void*)vr$1011, -1, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &OP1$1, &TMP$3035$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3035$8 );
								__builtin_memset( &TMP$3038$8, 0, 12 );
								FBSTRING* vr$1021 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
								__builtin_memset( &TMP$3036$8, 0, 12 );
								FBSTRING* vr$1024 = fb_StrConcat( &TMP$3036$8, (void*)"mov rax, ", 10, (void*)vr$1021, -1 );
								__builtin_memset( &TMP$3037$8, 0, 12 );
								FBSTRING* vr$1027 = fb_StrConcat( &TMP$3037$8, (void*)vr$1024, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3038$8, -1, (void*)vr$1027, -1, 0 );
								HWRITEASM64( &TMP$3038$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3038$8 );
								__builtin_memset( &TMP$3041$8, 0, 12 );
								FBSTRING* vr$1034 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3039$8, 0, 12 );
								FBSTRING* vr$1037 = fb_StrConcat( &TMP$3039$8, (void*)"mov ", 5, (void*)vr$1034, -1 );
								__builtin_memset( &TMP$3040$8, 0, 12 );
								FBSTRING* vr$1040 = fb_StrConcat( &TMP$3040$8, (void*)vr$1037, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3041$8, -1, (void*)vr$1040, -1, 0 );
								HWRITEASM64( &TMP$3041$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3041$8 );
							}
							goto label$2359;
							label$2360:;
							{
								FBSTRING TMP$3042$8;
								FBSTRING TMP$3043$8;
								FBSTRING TMP$3044$8;
								FBSTRING TMP$3045$8;
								__builtin_memset( &TMP$3045$8, 0, 12 );
								FBSTRING* vr$1048 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3042$8, 0, 12 );
								FBSTRING* vr$1051 = fb_StrConcat( &TMP$3042$8, (void*)"mov ", 5, (void*)vr$1048, -1 );
								__builtin_memset( &TMP$3043$8, 0, 12 );
								FBSTRING* vr$1054 = fb_StrConcat( &TMP$3043$8, (void*)vr$1051, -1, (void*)"[rsp], ", 8 );
								__builtin_memset( &TMP$3044$8, 0, 12 );
								FBSTRING* vr$1057 = fb_StrConcat( &TMP$3044$8, (void*)vr$1054, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3045$8, -1, (void*)vr$1057, -1, 0 );
								HWRITEASM64( &TMP$3045$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3045$8 );
							}
							label$2359:;
						}
						goto label$2357;
						label$2358:;
						{
							if( (-(*(int32*)V2$1 == 5) | -(DTYPE$1 == 20)) == 0 ) goto label$2362;
							{
								int32 TMP$3046$8;
								int32 TMP$3047$8;
								if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2363;
								TMP$3046$8 = -(*(int32*)((uint8*)&CTX$ + 212) == 2);
								goto label$3052;
								label$2363:;
								TMP$3046$8 = 0;
								label$3052:;
								if( TMP$3046$8 == 0 ) goto label$2364;
								int32 vr$1068 = FBGETOPTION( 0 );
								TMP$3047$8 = -(vr$1068 == 2);
								goto label$3053;
								label$2364:;
								TMP$3047$8 = 0;
								label$3053:;
								if( TMP$3047$8 == 0 ) goto label$2366;
								{
									FBSTRING TMP$3048$9;
									FBSTRING TMP$3049$9;
									FBSTRING TMP$3050$9;
									__builtin_memset( &TMP$3050$9, 0, 12 );
									FBSTRING* vr$1071 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
									int32 vr$1073 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1071 );
									FBSTRING* vr$1076 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1073 + -1 );
									__builtin_memset( &TMP$3048$9, 0, 12 );
									FBSTRING* vr$1079 = fb_StrConcat( &TMP$3048$9, (void*)"mov rax, QWORD PTR ", 20, (void*)vr$1076, -1 );
									__builtin_memset( &TMP$3049$9, 0, 12 );
									FBSTRING* vr$1082 = fb_StrConcat( &TMP$3049$9, (void*)vr$1079, -1, (void*)"@GOTPCREL[rip]", 15 );
									fb_StrAssign( (void*)&TMP$3050$9, -1, (void*)vr$1082, -1, 0 );
									HWRITEASM64( &TMP$3050$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3050$9 );
								}
								goto label$2365;
								label$2366:;
								{
									FBSTRING TMP$3051$9;
									FBSTRING TMP$3052$9;
									__builtin_memset( &TMP$3052$9, 0, 12 );
									__builtin_memset( &TMP$3051$9, 0, 12 );
									FBSTRING* vr$1090 = fb_StrConcat( &TMP$3051$9, (void*)"lea rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3052$9, -1, (void*)vr$1090, -1, 0 );
									HWRITEASM64( &TMP$3052$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3052$9 );
								}
								label$2365:;
							}
							goto label$2361;
							label$2362:;
							{
								FBSTRING TMP$3053$8;
								FBSTRING TMP$3054$8;
								__builtin_memset( &TMP$3054$8, 0, 12 );
								__builtin_memset( &TMP$3053$8, 0, 12 );
								FBSTRING* vr$1098 = fb_StrConcat( &TMP$3053$8, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3054$8, -1, (void*)vr$1098, -1, 0 );
								HWRITEASM64( &TMP$3054$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3054$8 );
							}
							label$2361:;
							if( DTYPE$1 != 20 ) goto label$2368;
							{
								FBSTRING TMP$3055$8;
								FBSTRING TMP$3056$8;
								FBSTRING TMP$3057$8;
								FBSTRING TMP$3058$8;
								FBSTRING TMP$3059$8;
								FBSTRING TMP$3060$8;
								FBSTRING TMP$3061$8;
								FBSTRING TMP$3062$8;
								FBSTRING TMP$3063$8;
								*(int32*)((uint8*)&CTX$ + 108) = (int32)((((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + (int64)*(int32*)((uint8*)&CTX$ + 108)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40) + -1ll));
								*(int32*)((uint8*)&CTX$ + 108) = (*(int32*)((uint8*)&CTX$ + 108) + -(*(int32*)((uint8*)&CTX$ + 108) % 8)) + 8;
								__builtin_memset( &TMP$3057$8, 0, 12 );
								FBSTRING* vr$1122 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
								__builtin_memset( &TMP$3056$8, 0, 12 );
								FBSTRING* vr$1125 = fb_StrConcat( &TMP$3056$8, (void*)vr$1122, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3057$8, -1, (void*)vr$1125, -1, 0 );
								__builtin_memset( &TMP$3055$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3055$8, -1, (void*)"rax", 4, 0 );
								MEMCOPY( (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40), &TMP$3055$8, &TMP$3057$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3057$8 );
								fb_StrDelete( (FBSTRING*)&TMP$3055$8 );
								__builtin_memset( &TMP$3060$8, 0, 12 );
								FBSTRING* vr$1138 = fb_IntToStr( -(*(int32*)((uint8*)&CTX$ + 108)) );
								__builtin_memset( &TMP$3058$8, 0, 12 );
								FBSTRING* vr$1141 = fb_StrConcat( &TMP$3058$8, (void*)"lea rax, ", 10, (void*)vr$1138, -1 );
								__builtin_memset( &TMP$3059$8, 0, 12 );
								FBSTRING* vr$1144 = fb_StrConcat( &TMP$3059$8, (void*)vr$1141, -1, (void*)"[rbp]", 6 );
								fb_StrAssign( (void*)&TMP$3060$8, -1, (void*)vr$1144, -1, 0 );
								HWRITEASM64( &TMP$3060$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3060$8 );
								__builtin_memset( &TMP$3063$8, 0, 12 );
								FBSTRING* vr$1151 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3061$8, 0, 12 );
								FBSTRING* vr$1154 = fb_StrConcat( &TMP$3061$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1151, -1 );
								__builtin_memset( &TMP$3062$8, 0, 12 );
								FBSTRING* vr$1157 = fb_StrConcat( &TMP$3062$8, (void*)vr$1154, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3063$8, -1, (void*)vr$1157, -1, 0 );
								HWRITEASM64( &TMP$3063$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3063$8 );
							}
							goto label$2367;
							label$2368:;
							{
								FBSTRING TMP$3064$8;
								FBSTRING TMP$3065$8;
								FBSTRING TMP$3066$8;
								__builtin_memset( &TMP$3066$8, 0, 12 );
								FBSTRING* vr$1164 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
								__builtin_memset( &TMP$3064$8, 0, 12 );
								FBSTRING* vr$1167 = fb_StrConcat( &TMP$3064$8, (void*)"mov QWORD PTR ", 15, (void*)vr$1164, -1 );
								__builtin_memset( &TMP$3065$8, 0, 12 );
								FBSTRING* vr$1170 = fb_StrConcat( &TMP$3065$8, (void*)vr$1167, -1, (void*)"[rsp], rax", 11 );
								fb_StrAssign( (void*)&TMP$3066$8, -1, (void*)vr$1170, -1, 0 );
								HWRITEASM64( &TMP$3066$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3066$8 );
							}
							label$2367:;
						}
						label$2357:;
					}
					label$2345:;
				}
				label$2324:;
			}
			label$2291:;
		}
		goto label$2289;
		label$2290:;
		{
			int32 vr$1175 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$1175 == 0 ) goto label$2370;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2370:;
			}
			if( *(int32*)V2$1 != 0 ) goto label$2372;
			{
				if( DTYPE$1 != 15 ) goto label$2374;
				{
					FBSTRING TMP$3070$5;
					FBSTRING TMP$3071$5;
					FBSTRING TMP$3072$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2376;
					{
						FBSTRING TMP$3067$6;
						__builtin_memset( &TMP$3067$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3067$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3067$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3067$6 );
					}
					goto label$2375;
					label$2376:;
					{
						FBSTRING TMP$3068$6;
						FBSTRING TMP$3069$6;
						__builtin_memset( &TMP$3069$6, 0, 12 );
						__builtin_memset( &TMP$3068$6, 0, 12 );
						FBSTRING* vr$1187 = fb_StrConcat( &TMP$3068$6, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3069$6, -1, (void*)vr$1187, -1, 0 );
						HWRITEASM64( &TMP$3069$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3069$6 );
					}
					label$2375:;
					__builtin_memset( &TMP$3072$5, 0, 12 );
					FBSTRING* vr$1193 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3070$5, 0, 12 );
					FBSTRING* vr$1196 = fb_StrConcat( &TMP$3070$5, (void*)"movd xmm", 9, (void*)vr$1193, -1 );
					__builtin_memset( &TMP$3071$5, 0, 12 );
					FBSTRING* vr$1199 = fb_StrConcat( &TMP$3071$5, (void*)vr$1196, -1, (void*)", eax", 6 );
					fb_StrAssign( (void*)&TMP$3072$5, -1, (void*)vr$1199, -1, 0 );
					HWRITEASM64( &TMP$3072$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3072$5 );
				}
				goto label$2373;
				label$2374:;
				if( DTYPE$1 != 16 ) goto label$2377;
				{
					FBSTRING TMP$3076$5;
					FBSTRING TMP$3077$5;
					FBSTRING TMP$3078$5;
					if( *(double*)((uint8*)V2$1 + 24) != 0x0p+0 ) goto label$2379;
					{
						FBSTRING TMP$3073$6;
						__builtin_memset( &TMP$3073$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3073$6, -1, (void*)"xor eax, eax", 13, 0 );
						HWRITEASM64( &TMP$3073$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3073$6 );
					}
					goto label$2378;
					label$2379:;
					{
						FBSTRING TMP$3074$6;
						FBSTRING TMP$3075$6;
						__builtin_memset( &TMP$3075$6, 0, 12 );
						__builtin_memset( &TMP$3074$6, 0, 12 );
						FBSTRING* vr$1212 = fb_StrConcat( &TMP$3074$6, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3075$6, -1, (void*)vr$1212, -1, 0 );
						HWRITEASM64( &TMP$3075$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3075$6 );
					}
					label$2378:;
					__builtin_memset( &TMP$3078$5, 0, 12 );
					FBSTRING* vr$1218 = fb_IntToStr( CPTFLOAT$1 + -1 );
					__builtin_memset( &TMP$3076$5, 0, 12 );
					FBSTRING* vr$1221 = fb_StrConcat( &TMP$3076$5, (void*)"movq xmm", 9, (void*)vr$1218, -1 );
					__builtin_memset( &TMP$3077$5, 0, 12 );
					FBSTRING* vr$1224 = fb_StrConcat( &TMP$3077$5, (void*)vr$1221, -1, (void*)", rax", 6 );
					fb_StrAssign( (void*)&TMP$3078$5, -1, (void*)vr$1224, -1, 0 );
					HWRITEASM64( &TMP$3078$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3078$5 );
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2381;
					{
						FBSTRING TMP$3079$6;
						FBSTRING TMP$3080$6;
						FBSTRING TMP$3081$6;
						__builtin_memset( &TMP$3081$6, 0, 12 );
						FBSTRING* vr$1235 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3079$6, 0, 12 );
						FBSTRING* vr$1238 = fb_StrConcat( &TMP$3079$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1235, -1 );
						__builtin_memset( &TMP$3080$6, 0, 12 );
						FBSTRING* vr$1241 = fb_StrConcat( &TMP$3080$6, (void*)vr$1238, -1, (void*)"[rsp], rax", 11 );
						fb_StrAssign( (void*)&TMP$3081$6, -1, (void*)vr$1241, -1, 0 );
						HWRITEASM64( &TMP$3081$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3081$6 );
					}
					label$2381:;
					label$2380:;
				}
				goto label$2373;
				label$2377:;
				{
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2383;
					{
						FBSTRING TMP$3082$6;
						FBSTRING TMP$3083$6;
						FBSTRING TMP$3084$6;
						FBSTRING TMP$3085$6;
						__builtin_memset( &TMP$3085$6, 0, 12 );
						__builtin_memset( &TMP$3082$6, 0, 12 );
						FBSTRING* vr$1257 = fb_StrConcat( &TMP$3082$6, (void*)"xor ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3083$6, 0, 12 );
						FBSTRING* vr$1260 = fb_StrConcat( &TMP$3083$6, (void*)vr$1257, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3084$6, 0, 12 );
						FBSTRING* vr$1263 = fb_StrConcat( &TMP$3084$6, (void*)vr$1260, -1, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3085$6, -1, (void*)vr$1263, -1, 0 );
						HWRITEASM64( &TMP$3085$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3085$6 );
					}
					goto label$2382;
					label$2383:;
					if( (-(*(int64*)((uint8*)V2$1 + 24) > 0ll) & -(*(int64*)((uint8*)V2$1 + 24) <= 2147483647ll)) == 0 ) goto label$2384;
					{
						FBSTRING TMP$3086$6;
						FBSTRING TMP$3087$6;
						FBSTRING TMP$3088$6;
						FBSTRING TMP$3089$6;
						__builtin_memset( &TMP$3089$6, 0, 12 );
						__builtin_memset( &TMP$3086$6, 0, 12 );
						FBSTRING* vr$1279 = fb_StrConcat( &TMP$3086$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3087$6, 0, 12 );
						FBSTRING* vr$1282 = fb_StrConcat( &TMP$3087$6, (void*)vr$1279, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3088$6, 0, 12 );
						FBSTRING* vr$1285 = fb_StrConcat( &TMP$3088$6, (void*)vr$1282, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3089$6, -1, (void*)vr$1285, -1, 0 );
						HWRITEASM64( &TMP$3089$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3089$6 );
					}
					goto label$2382;
					label$2384:;
					{
						{
							if( DTYPE$1 == 8 ) goto label$2387;
							label$2388:;
							if( DTYPE$1 == 9 ) goto label$2387;
							label$2389:;
							if( DTYPE$1 == 13 ) goto label$2387;
							label$2390:;
							if( DTYPE$1 == 14 ) goto label$2387;
							label$2391:;
							if( DTYPE$1 != 10 ) goto label$2386;
							label$2387:;
							{
								FBSTRING TMP$3090$8;
								FBSTRING TMP$3091$8;
								FBSTRING TMP$3092$8;
								FBSTRING TMP$3093$8;
								__builtin_memset( &TMP$3093$8, 0, 12 );
								__builtin_memset( &TMP$3090$8, 0, 12 );
								FBSTRING* vr$1296 = fb_StrConcat( &TMP$3090$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3091$8, 0, 12 );
								FBSTRING* vr$1299 = fb_StrConcat( &TMP$3091$8, (void*)vr$1296, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3092$8, 0, 12 );
								FBSTRING* vr$1302 = fb_StrConcat( &TMP$3092$8, (void*)vr$1299, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3093$8, -1, (void*)vr$1302, -1, 0 );
								HWRITEASM64( &TMP$3093$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3093$8 );
							}
							goto label$2385;
							label$2386:;
							{
								FBSTRING TMP$3094$8;
								FBSTRING TMP$3095$8;
								FBSTRING TMP$3096$8;
								FBSTRING TMP$3097$8;
								__builtin_memset( &TMP$3097$8, 0, 12 );
								__builtin_memset( &TMP$3094$8, 0, 12 );
								FBSTRING* vr$1313 = fb_StrConcat( &TMP$3094$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3095$8, 0, 12 );
								FBSTRING* vr$1316 = fb_StrConcat( &TMP$3095$8, (void*)vr$1313, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3096$8, 0, 12 );
								FBSTRING* vr$1319 = fb_StrConcat( &TMP$3096$8, (void*)vr$1316, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3097$8, -1, (void*)vr$1319, -1, 0 );
								HWRITEASM64( &TMP$3097$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3097$8 );
							}
							label$2392:;
							label$2385:;
						}
					}
					label$2382:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2394;
					{
						FBSTRING TMP$3098$6;
						FBSTRING TMP$3099$6;
						FBSTRING TMP$3100$6;
						FBSTRING TMP$3101$6;
						__builtin_memset( &TMP$3101$6, 0, 12 );
						FBSTRING* vr$1333 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3098$6, 0, 12 );
						FBSTRING* vr$1336 = fb_StrConcat( &TMP$3098$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1333, -1 );
						__builtin_memset( &TMP$3099$6, 0, 12 );
						FBSTRING* vr$1339 = fb_StrConcat( &TMP$3099$6, (void*)vr$1336, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3100$6, 0, 12 );
						FBSTRING* vr$1342 = fb_StrConcat( &TMP$3100$6, (void*)vr$1339, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3101$6, -1, (void*)vr$1342, -1, 0 );
						HWRITEASM64( &TMP$3101$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3101$6 );
					}
					label$2394:;
					label$2393:;
				}
				label$2373:;
			}
			goto label$2371;
			label$2372:;
			if( DTYPE$1 != 20 ) goto label$2395;
			{
				LGT$1 = (int32)*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 8) + 40);
				if( *(int32*)V2$1 != 4 ) goto label$2397;
				{
					FBSTRING TMP$3102$5;
					FBSTRING TMP$3103$5;
					__builtin_memset( &TMP$3102$5, 0, 12 );
					FBSTRING* vr$1353 = fb_StrConcat( &TMP$3102$5, (void*)"[", 2, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3103$5, 0, 12 );
					FBSTRING* vr$1356 = fb_StrConcat( &TMP$3103$5, (void*)vr$1353, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$1356, -1, 0 );
				}
				label$2397:;
				label$2396:;
				if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2399;
				{
					{
						uint32 TMP$3104$6;
						TMP$3104$6 = (uint32)PARAMTYPE$1;
						goto label$2401;
						label$2402:;
						{
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2400;
						label$2403:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1 + -1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2400;
						label$2404:;
						{
							REG_FILLR( 8, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2400;
						label$2405:;
						{
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2400;
						label$2406:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
						}
						goto label$2400;
						label$2407:;
						{
							REG_FILLX( 8, &OP1$1, CPTFLOAT$1 + -1 );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2400;
						label$2401:;
						static const void* tmp$3866[6] = {
							&&label$2402,
							&&label$2405,
							&&label$2403,
							&&label$2404,
							&&label$2406,
							&&label$2407,
						};
						if( TMP$3104$6 > 5u ) goto label$2400;
						goto *tmp$3866[TMP$3104$6 - 0u];
						label$2400:;
					}
				}
				goto label$2398;
				label$2399:;
				{
					if( PARAMTYPE$1 != 0 ) goto label$2409;
					{
						REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, REG2$1 );
					}
					goto label$2408;
					label$2409:;
					if( PARAMTYPE$1 != 1 ) goto label$2410;
					{
						REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
					}
					goto label$2408;
					label$2410:;
					{
						if( *(int32*)V2$1 != 4 ) goto label$2412;
						{
							{
								uint32 TMP$3105$8;
								TMP$3105$8 = (uint32)LGT$1;
								goto label$2414;
								label$2415:;
								{
									FBSTRING TMP$3106$9;
									FBSTRING TMP$3107$9;
									FBSTRING TMP$3108$9;
									FBSTRING TMP$3109$9;
									__builtin_memset( &TMP$3109$9, 0, 12 );
									FBSTRING* vr$1377 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3106$9, 0, 12 );
									FBSTRING* vr$1380 = fb_StrConcat( &TMP$3106$9, (void*)"mov byte PTR ", 14, (void*)vr$1377, -1 );
									__builtin_memset( &TMP$3107$9, 0, 12 );
									FBSTRING* vr$1383 = fb_StrConcat( &TMP$3107$9, (void*)vr$1380, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3108$9, 0, 12 );
									FBSTRING* vr$1386 = fb_StrConcat( &TMP$3108$9, (void*)vr$1383, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3109$9, -1, (void*)vr$1386, -1, 0 );
									HWRITEASM64( &TMP$3109$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3109$9 );
								}
								goto label$2413;
								label$2416:;
								{
									FBSTRING TMP$3110$9;
									FBSTRING TMP$3111$9;
									FBSTRING TMP$3112$9;
									FBSTRING TMP$3113$9;
									__builtin_memset( &TMP$3113$9, 0, 12 );
									FBSTRING* vr$1394 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3110$9, 0, 12 );
									FBSTRING* vr$1397 = fb_StrConcat( &TMP$3110$9, (void*)"mov WORD PTR ", 14, (void*)vr$1394, -1 );
									__builtin_memset( &TMP$3111$9, 0, 12 );
									FBSTRING* vr$1400 = fb_StrConcat( &TMP$3111$9, (void*)vr$1397, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3112$9, 0, 12 );
									FBSTRING* vr$1403 = fb_StrConcat( &TMP$3112$9, (void*)vr$1400, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3113$9, -1, (void*)vr$1403, -1, 0 );
									HWRITEASM64( &TMP$3113$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3113$9 );
								}
								goto label$2413;
								label$2417:;
								{
									FBSTRING TMP$3114$9;
									FBSTRING TMP$3115$9;
									FBSTRING TMP$3116$9;
									FBSTRING TMP$3117$9;
									__builtin_memset( &TMP$3117$9, 0, 12 );
									FBSTRING* vr$1411 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3114$9, 0, 12 );
									FBSTRING* vr$1414 = fb_StrConcat( &TMP$3114$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1411, -1 );
									__builtin_memset( &TMP$3115$9, 0, 12 );
									FBSTRING* vr$1417 = fb_StrConcat( &TMP$3115$9, (void*)vr$1414, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3116$9, 0, 12 );
									FBSTRING* vr$1420 = fb_StrConcat( &TMP$3116$9, (void*)vr$1417, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3117$9, -1, (void*)vr$1420, -1, 0 );
									HWRITEASM64( &TMP$3117$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3117$9 );
								}
								goto label$2413;
								label$2418:;
								{
									FBSTRING TMP$3118$9;
									FBSTRING TMP$3119$9;
									FBSTRING TMP$3120$9;
									FBSTRING TMP$3121$9;
									__builtin_memset( &TMP$3121$9, 0, 12 );
									FBSTRING* vr$1428 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3118$9, 0, 12 );
									FBSTRING* vr$1431 = fb_StrConcat( &TMP$3118$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1428, -1 );
									__builtin_memset( &TMP$3119$9, 0, 12 );
									FBSTRING* vr$1434 = fb_StrConcat( &TMP$3119$9, (void*)vr$1431, -1, (void*)"[rsp], ", 8 );
									__builtin_memset( &TMP$3120$9, 0, 12 );
									FBSTRING* vr$1437 = fb_StrConcat( &TMP$3120$9, (void*)vr$1434, -1, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3121$9, -1, (void*)vr$1437, -1, 0 );
									HWRITEASM64( &TMP$3121$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3121$9 );
								}
								goto label$2413;
								label$2414:;
								static const void* tmp$3867[8] = {
									&&label$2415,
									&&label$2416,
									&&label$2413,
									&&label$2417,
									&&label$2413,
									&&label$2413,
									&&label$2413,
									&&label$2418,
								};
								if( (TMP$3105$8 - 1u) > 7u ) goto label$2413;
								goto *tmp$3867[TMP$3105$8 - 1u];
								label$2413:;
							}
						}
						goto label$2411;
						label$2412:;
						{
							{
								uint32 TMP$3122$8;
								TMP$3122$8 = (uint32)LGT$1;
								goto label$2420;
								label$2421:;
								{
									FBSTRING TMP$3123$9;
									FBSTRING TMP$3124$9;
									FBSTRING TMP$3125$9;
									FBSTRING TMP$3126$9;
									FBSTRING TMP$3127$9;
									__builtin_memset( &TMP$3124$9, 0, 12 );
									__builtin_memset( &TMP$3123$9, 0, 12 );
									FBSTRING* vr$1445 = fb_StrConcat( &TMP$3123$9, (void*)"mov al, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3124$9, -1, (void*)vr$1445, -1, 0 );
									HWRITEASM64( &TMP$3124$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3124$9 );
									__builtin_memset( &TMP$3127$9, 0, 12 );
									FBSTRING* vr$1452 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3125$9, 0, 12 );
									FBSTRING* vr$1455 = fb_StrConcat( &TMP$3125$9, (void*)"mov byte PTR ", 14, (void*)vr$1452, -1 );
									__builtin_memset( &TMP$3126$9, 0, 12 );
									FBSTRING* vr$1458 = fb_StrConcat( &TMP$3126$9, (void*)vr$1455, -1, (void*)"[rsp], al", 10 );
									fb_StrAssign( (void*)&TMP$3127$9, -1, (void*)vr$1458, -1, 0 );
									HWRITEASM64( &TMP$3127$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3127$9 );
								}
								goto label$2419;
								label$2422:;
								{
									FBSTRING TMP$3128$9;
									FBSTRING TMP$3129$9;
									FBSTRING TMP$3130$9;
									FBSTRING TMP$3131$9;
									FBSTRING TMP$3132$9;
									__builtin_memset( &TMP$3129$9, 0, 12 );
									__builtin_memset( &TMP$3128$9, 0, 12 );
									FBSTRING* vr$1466 = fb_StrConcat( &TMP$3128$9, (void*)"mov ax, ", 9, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3129$9, -1, (void*)vr$1466, -1, 0 );
									HWRITEASM64( &TMP$3129$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3129$9 );
									__builtin_memset( &TMP$3132$9, 0, 12 );
									FBSTRING* vr$1473 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3130$9, 0, 12 );
									FBSTRING* vr$1476 = fb_StrConcat( &TMP$3130$9, (void*)"mov WORD PTR ", 14, (void*)vr$1473, -1 );
									__builtin_memset( &TMP$3131$9, 0, 12 );
									FBSTRING* vr$1479 = fb_StrConcat( &TMP$3131$9, (void*)vr$1476, -1, (void*)"[rsp], ax", 10 );
									fb_StrAssign( (void*)&TMP$3132$9, -1, (void*)vr$1479, -1, 0 );
									HWRITEASM64( &TMP$3132$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3132$9 );
								}
								goto label$2419;
								label$2423:;
								{
									FBSTRING TMP$3133$9;
									FBSTRING TMP$3134$9;
									FBSTRING TMP$3135$9;
									FBSTRING TMP$3136$9;
									FBSTRING TMP$3137$9;
									__builtin_memset( &TMP$3134$9, 0, 12 );
									__builtin_memset( &TMP$3133$9, 0, 12 );
									FBSTRING* vr$1487 = fb_StrConcat( &TMP$3133$9, (void*)"mov eax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3134$9, -1, (void*)vr$1487, -1, 0 );
									HWRITEASM64( &TMP$3134$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3134$9 );
									__builtin_memset( &TMP$3137$9, 0, 12 );
									FBSTRING* vr$1494 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3135$9, 0, 12 );
									FBSTRING* vr$1497 = fb_StrConcat( &TMP$3135$9, (void*)"mov DWORD PTR ", 15, (void*)vr$1494, -1 );
									__builtin_memset( &TMP$3136$9, 0, 12 );
									FBSTRING* vr$1500 = fb_StrConcat( &TMP$3136$9, (void*)vr$1497, -1, (void*)"[rsp], eax", 11 );
									fb_StrAssign( (void*)&TMP$3137$9, -1, (void*)vr$1500, -1, 0 );
									HWRITEASM64( &TMP$3137$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3137$9 );
								}
								goto label$2419;
								label$2424:;
								{
									FBSTRING TMP$3138$9;
									FBSTRING TMP$3139$9;
									FBSTRING TMP$3140$9;
									FBSTRING TMP$3141$9;
									FBSTRING TMP$3142$9;
									__builtin_memset( &TMP$3139$9, 0, 12 );
									__builtin_memset( &TMP$3138$9, 0, 12 );
									FBSTRING* vr$1508 = fb_StrConcat( &TMP$3138$9, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
									fb_StrAssign( (void*)&TMP$3139$9, -1, (void*)vr$1508, -1, 0 );
									HWRITEASM64( &TMP$3139$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3139$9 );
									__builtin_memset( &TMP$3142$9, 0, 12 );
									FBSTRING* vr$1515 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
									__builtin_memset( &TMP$3140$9, 0, 12 );
									FBSTRING* vr$1518 = fb_StrConcat( &TMP$3140$9, (void*)"mov QWORD PTR ", 15, (void*)vr$1515, -1 );
									__builtin_memset( &TMP$3141$9, 0, 12 );
									FBSTRING* vr$1521 = fb_StrConcat( &TMP$3141$9, (void*)vr$1518, -1, (void*)"[rsp], rax", 11 );
									fb_StrAssign( (void*)&TMP$3142$9, -1, (void*)vr$1521, -1, 0 );
									HWRITEASM64( &TMP$3142$9, 0 );
									fb_StrDelete( (FBSTRING*)&TMP$3142$9 );
								}
								goto label$2419;
								label$2420:;
								static const void* tmp$3868[8] = {
									&&label$2421,
									&&label$2422,
									&&label$2419,
									&&label$2423,
									&&label$2419,
									&&label$2419,
									&&label$2419,
									&&label$2424,
								};
								if( (TMP$3122$8 - 1u) > 7u ) goto label$2419;
								goto *tmp$3868[TMP$3122$8 - 1u];
								label$2419:;
							}
						}
						label$2411:;
					}
					label$2408:;
				}
				label$2398:;
			}
			goto label$2371;
			label$2395:;
			{
				if( *(int32*)V2$1 != 5 ) goto label$2426;
				{
					int32 TMP$3143$5;
					int32 TMP$3144$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
					if( (*(int32*)((uint8*)V2$1 + 4) & 31) != 22 ) goto label$2427;
					TMP$3143$5 = -(*(int32*)((uint8*)&CTX$ + 212) == 2);
					goto label$3054;
					label$2427:;
					TMP$3143$5 = 0;
					label$3054:;
					if( TMP$3143$5 == 0 ) goto label$2428;
					int32 vr$1531 = FBGETOPTION( 0 );
					TMP$3144$5 = -(vr$1531 == 2);
					goto label$3055;
					label$2428:;
					TMP$3144$5 = 0;
					label$3055:;
					if( TMP$3144$5 == 0 ) goto label$2430;
					{
						FBSTRING TMP$3145$6;
						FBSTRING TMP$3146$6;
						FBSTRING TMP$3147$6;
						FBSTRING TMP$3148$6;
						FBSTRING TMP$3149$6;
						__builtin_memset( &TMP$3149$6, 0, 12 );
						FBSTRING* vr$1534 = fb_StrAllocTempDescZEx( (uint8*)"[", 1 );
						int32 vr$1536 = fb_StrInstr( 1, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1534 );
						FBSTRING* vr$1539 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1536 + -1 );
						__builtin_memset( &TMP$3145$6, 0, 12 );
						FBSTRING* vr$1545 = fb_StrConcat( &TMP$3145$6, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3146$6, 0, 12 );
						FBSTRING* vr$1548 = fb_StrConcat( &TMP$3146$6, (void*)vr$1545, -1, (void*)", QWORD PTR ", 13 );
						__builtin_memset( &TMP$3147$6, 0, 12 );
						FBSTRING* vr$1551 = fb_StrConcat( &TMP$3147$6, (void*)vr$1548, -1, (void*)vr$1539, -1 );
						__builtin_memset( &TMP$3148$6, 0, 12 );
						FBSTRING* vr$1554 = fb_StrConcat( &TMP$3148$6, (void*)vr$1551, -1, (void*)"@GOTPCREL[rip]", 15 );
						fb_StrAssign( (void*)&TMP$3149$6, -1, (void*)vr$1554, -1, 0 );
						HWRITEASM64( &TMP$3149$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3149$6 );
					}
					goto label$2429;
					label$2430:;
					{
						FBSTRING TMP$3150$6;
						FBSTRING TMP$3151$6;
						FBSTRING TMP$3152$6;
						FBSTRING TMP$3153$6;
						__builtin_memset( &TMP$3153$6, 0, 12 );
						__builtin_memset( &TMP$3150$6, 0, 12 );
						FBSTRING* vr$1565 = fb_StrConcat( &TMP$3150$6, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						__builtin_memset( &TMP$3151$6, 0, 12 );
						FBSTRING* vr$1568 = fb_StrConcat( &TMP$3151$6, (void*)vr$1565, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3152$6, 0, 12 );
						FBSTRING* vr$1571 = fb_StrConcat( &TMP$3152$6, (void*)vr$1568, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3153$6, -1, (void*)vr$1571, -1, 0 );
						HWRITEASM64( &TMP$3153$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3153$6 );
					}
					label$2429:;
					if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2432;
					{
						FBSTRING TMP$3154$6;
						FBSTRING TMP$3155$6;
						FBSTRING TMP$3156$6;
						FBSTRING TMP$3157$6;
						__builtin_memset( &TMP$3157$6, 0, 12 );
						FBSTRING* vr$1585 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
						__builtin_memset( &TMP$3154$6, 0, 12 );
						FBSTRING* vr$1588 = fb_StrConcat( &TMP$3154$6, (void*)"mov QWORD PTR ", 15, (void*)vr$1585, -1 );
						__builtin_memset( &TMP$3155$6, 0, 12 );
						FBSTRING* vr$1591 = fb_StrConcat( &TMP$3155$6, (void*)vr$1588, -1, (void*)"[rsp], ", 8 );
						__builtin_memset( &TMP$3156$6, 0, 12 );
						FBSTRING* vr$1594 = fb_StrConcat( &TMP$3156$6, (void*)vr$1591, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
						fb_StrAssign( (void*)&TMP$3157$6, -1, (void*)vr$1594, -1, 0 );
						HWRITEASM64( &TMP$3157$6, 3 );
						fb_StrDelete( (FBSTRING*)&TMP$3157$6 );
					}
					label$2432:;
					label$2431:;
				}
				goto label$2425;
				label$2426:;
				{
					int32 TMP$3158$5;
					if( (DTYPE$1 & 480) == 0 ) goto label$2433;
					TMP$3158$5 = 24;
					goto label$3056;
					label$2433:;
					TMP$3158$5 = DTYPE$1 & 31;
					label$3056:;
					if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$3158$5 * 28)) != 1 ) goto label$2435;
					{
						if( DTYPE$1 != 16 ) goto label$2437;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2439;
							{
								FBSTRING TMP$3159$8;
								FBSTRING TMP$3160$8;
								FBSTRING TMP$3161$8;
								FBSTRING TMP$3162$8;
								__builtin_memset( &TMP$3162$8, 0, 12 );
								FBSTRING* vr$1605 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3159$8, 0, 12 );
								FBSTRING* vr$1608 = fb_StrConcat( &TMP$3159$8, (void*)"movq xmm", 9, (void*)vr$1605, -1 );
								__builtin_memset( &TMP$3160$8, 0, 12 );
								FBSTRING* vr$1611 = fb_StrConcat( &TMP$3160$8, (void*)vr$1608, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3161$8, 0, 12 );
								FBSTRING* vr$1614 = fb_StrConcat( &TMP$3161$8, (void*)vr$1611, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3162$8, -1, (void*)vr$1614, -1, 0 );
								HWRITEASM64( &TMP$3162$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3162$8 );
							}
							goto label$2438;
							label$2439:;
							{
								FBSTRING TMP$3164$8;
								FBSTRING TMP$3165$8;
								FBSTRING TMP$3166$8;
								FBSTRING TMP$3167$8;
								__builtin_memset( &TMP$3167$8, 0, 12 );
								FBSTRING* vr$1621 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3164$8, 0, 12 );
								FBSTRING* vr$1624 = fb_StrConcat( &TMP$3164$8, (void*)"movsd xmm", 10, (void*)vr$1621, -1 );
								__builtin_memset( &TMP$3165$8, 0, 12 );
								FBSTRING* vr$1627 = fb_StrConcat( &TMP$3165$8, (void*)vr$1624, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3166$8, 0, 12 );
								FBSTRING* vr$1630 = fb_StrConcat( &TMP$3166$8, (void*)vr$1627, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3167$8, -1, (void*)vr$1630, -1, 0 );
								HWRITEASM64( &TMP$3167$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3167$8 );
							}
							label$2438:;
						}
						goto label$2436;
						label$2437:;
						{
							if( *(int32*)V2$1 != 4 ) goto label$2441;
							{
								FBSTRING TMP$3168$8;
								FBSTRING TMP$3169$8;
								FBSTRING TMP$3170$8;
								FBSTRING TMP$3171$8;
								__builtin_memset( &TMP$3171$8, 0, 12 );
								FBSTRING* vr$1638 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3168$8, 0, 12 );
								FBSTRING* vr$1641 = fb_StrConcat( &TMP$3168$8, (void*)"movd xmm", 9, (void*)vr$1638, -1 );
								__builtin_memset( &TMP$3169$8, 0, 12 );
								FBSTRING* vr$1644 = fb_StrConcat( &TMP$3169$8, (void*)vr$1641, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3170$8, 0, 12 );
								FBSTRING* vr$1647 = fb_StrConcat( &TMP$3170$8, (void*)vr$1644, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3171$8, -1, (void*)vr$1647, -1, 0 );
								HWRITEASM64( &TMP$3171$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3171$8 );
							}
							goto label$2440;
							label$2441:;
							{
								FBSTRING TMP$3173$8;
								FBSTRING TMP$3174$8;
								FBSTRING TMP$3175$8;
								FBSTRING TMP$3176$8;
								__builtin_memset( &TMP$3176$8, 0, 12 );
								FBSTRING* vr$1654 = fb_IntToStr( CPTFLOAT$1 + -1 );
								__builtin_memset( &TMP$3173$8, 0, 12 );
								FBSTRING* vr$1657 = fb_StrConcat( &TMP$3173$8, (void*)"movss xmm", 10, (void*)vr$1654, -1 );
								__builtin_memset( &TMP$3174$8, 0, 12 );
								FBSTRING* vr$1660 = fb_StrConcat( &TMP$3174$8, (void*)vr$1657, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3175$8, 0, 12 );
								FBSTRING* vr$1663 = fb_StrConcat( &TMP$3175$8, (void*)vr$1660, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3176$8, -1, (void*)vr$1663, -1, 0 );
								HWRITEASM64( &TMP$3176$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3176$8 );
							}
							label$2440:;
						}
						label$2436:;
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2443;
						{
							FBSTRING TMP$3179$7;
							FBSTRING TMP$3180$7;
							FBSTRING TMP$3181$7;
							FBSTRING TMP$3182$7;
							FBSTRING TMP$3184$7;
							FBSTRING TMP$3185$7;
							FBSTRING TMP$3186$7;
							FBSTRING TMP$3187$7;
							__builtin_memset( &TMP$3182$7, 0, 12 );
							FBSTRING* vr$1673 = fb_IntToStr( CPTFLOAT$1 + -1 );
							FBSTRING* vr$1676 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3179$7, 0, 12 );
							FBSTRING* vr$1679 = fb_StrConcat( &TMP$3179$7, (void*)"movsd QWORD PTR ", 17, (void*)vr$1676, -1 );
							__builtin_memset( &TMP$3180$7, 0, 12 );
							FBSTRING* vr$1682 = fb_StrConcat( &TMP$3180$7, (void*)vr$1679, -1, (void*)"[rsp], xmm", 11 );
							__builtin_memset( &TMP$3181$7, 0, 12 );
							FBSTRING* vr$1685 = fb_StrConcat( &TMP$3181$7, (void*)vr$1682, -1, (void*)vr$1673, -1 );
							fb_StrAssign( (void*)&TMP$3182$7, -1, (void*)vr$1685, -1, 0 );
							HWRITEASM64( &TMP$3182$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3182$7 );
							__builtin_memset( &TMP$3187$7, 0, 12 );
							FBSTRING* vr$1691 = fb_IntToStr( CPTFLOAT$1 + -1 );
							__builtin_memset( &TMP$3184$7, 0, 12 );
							FBSTRING* vr$1697 = fb_StrConcat( &TMP$3184$7, (void*)"movq ", 6, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							__builtin_memset( &TMP$3185$7, 0, 12 );
							FBSTRING* vr$1700 = fb_StrConcat( &TMP$3185$7, (void*)vr$1697, -1, (void*)", xmm", 6 );
							__builtin_memset( &TMP$3186$7, 0, 12 );
							FBSTRING* vr$1703 = fb_StrConcat( &TMP$3186$7, (void*)vr$1700, -1, (void*)vr$1691, -1 );
							fb_StrAssign( (void*)&TMP$3187$7, -1, (void*)vr$1703, -1, 0 );
							HWRITEASM64( &TMP$3187$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3187$7 );
						}
						label$2443:;
						label$2442:;
					}
					goto label$2434;
					label$2435:;
					{
						int32 TMP$3193$6;
						REG_TRANSFER( *(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$), REG2$1 );
						if( DTYPE$1 != 19 ) goto label$2445;
						{
							if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2447;
							{
								FBSTRING TMP$3188$8;
								FBSTRING TMP$3191$8;
								FBSTRING TMP$3192$8;
								__builtin_memset( &TMP$3188$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3188$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3188$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3188$8 );
								__builtin_memset( &TMP$3191$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3191$8, -1, (void*)"FOUND AN ERROR : in hdocall Va_list and target linux could be a problem", 72, 0 );
								HWRITEASM64( &TMP$3191$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3191$8 );
								__builtin_memset( &TMP$3192$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3192$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3192$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3192$8 );
							}
							goto label$2446;
							label$2447:;
							{
								DTYPE$1 = 8;
							}
							label$2446:;
						}
						label$2445:;
						label$2444:;
						if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2448;
						int32 vr$1721 = FBGETOPTION( 0 );
						TMP$3193$6 = -(vr$1721 == 2);
						goto label$3057;
						label$2448:;
						TMP$3193$6 = 0;
						label$3057:;
						if( TMP$3193$6 == 0 ) goto label$2450;
						{
							int32 TMP$3194$7;
							if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$2451;
							TMP$3194$7 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 8) != 0);
							goto label$3058;
							label$2451:;
							TMP$3194$7 = 0;
							label$3058:;
							if( TMP$3194$7 == 0 ) goto label$2453;
							{
								FBSTRING TMP$3195$8;
								FBSTRING TMP$3196$8;
								FBSTRING TMP$3197$8;
								__builtin_memset( &TMP$3197$8, 0, 12 );
								uint8* vr$1730 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
								__builtin_memset( &TMP$3195$8, 0, 12 );
								FBSTRING* vr$1733 = fb_StrConcat( &TMP$3195$8, (void*)"mov rax, ", 10, (void*)vr$1730, 0 );
								__builtin_memset( &TMP$3196$8, 0, 12 );
								FBSTRING* vr$1736 = fb_StrConcat( &TMP$3196$8, (void*)vr$1733, -1, (void*)"@GOTPCREL[rip]", 15 );
								fb_StrAssign( (void*)&TMP$3197$8, -1, (void*)vr$1736, -1, 0 );
								HWRITEASM64( &TMP$3197$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3197$8 );
								fb_StrAssign( (void*)&OP1$1, -1, (void*)"[rax]", 6, 0 );
							}
							label$2453:;
							label$2452:;
						}
						label$2450:;
						label$2449:;
						{
							if( DTYPE$1 == 8 ) goto label$2456;
							label$2457:;
							if( DTYPE$1 == 9 ) goto label$2456;
							label$2458:;
							if( DTYPE$1 == 13 ) goto label$2456;
							label$2459:;
							if( DTYPE$1 == 14 ) goto label$2456;
							label$2460:;
							if( DTYPE$1 != 10 ) goto label$2455;
							label$2456:;
							{
								FBSTRING TMP$3198$8;
								FBSTRING TMP$3199$8;
								FBSTRING TMP$3200$8;
								FBSTRING TMP$3201$8;
								__builtin_memset( &TMP$3201$8, 0, 12 );
								__builtin_memset( &TMP$3198$8, 0, 12 );
								FBSTRING* vr$1748 = fb_StrConcat( &TMP$3198$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3199$8, 0, 12 );
								FBSTRING* vr$1751 = fb_StrConcat( &TMP$3199$8, (void*)vr$1748, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3200$8, 0, 12 );
								FBSTRING* vr$1754 = fb_StrConcat( &TMP$3200$8, (void*)vr$1751, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3201$8, -1, (void*)vr$1754, -1, 0 );
								HWRITEASM64( &TMP$3201$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3201$8 );
							}
							goto label$2454;
							label$2455:;
							if( DTYPE$1 == 11 ) goto label$2462;
							label$2463:;
							if( DTYPE$1 != 12 ) goto label$2461;
							label$2462:;
							{
								FBSTRING TMP$3202$8;
								FBSTRING TMP$3203$8;
								FBSTRING TMP$3204$8;
								FBSTRING TMP$3205$8;
								__builtin_memset( &TMP$3205$8, 0, 12 );
								__builtin_memset( &TMP$3202$8, 0, 12 );
								FBSTRING* vr$1765 = fb_StrConcat( &TMP$3202$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRD$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3203$8, 0, 12 );
								FBSTRING* vr$1768 = fb_StrConcat( &TMP$3203$8, (void*)vr$1765, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3204$8, 0, 12 );
								FBSTRING* vr$1771 = fb_StrConcat( &TMP$3204$8, (void*)vr$1768, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3205$8, -1, (void*)vr$1771, -1, 0 );
								HWRITEASM64( &TMP$3205$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3205$8 );
							}
							goto label$2454;
							label$2461:;
							if( DTYPE$1 == 5 ) goto label$2465;
							label$2466:;
							if( DTYPE$1 != 6 ) goto label$2464;
							label$2465:;
							{
								FBSTRING TMP$3206$8;
								FBSTRING TMP$3207$8;
								FBSTRING TMP$3208$8;
								FBSTRING TMP$3209$8;
								__builtin_memset( &TMP$3209$8, 0, 12 );
								__builtin_memset( &TMP$3206$8, 0, 12 );
								FBSTRING* vr$1782 = fb_StrConcat( &TMP$3206$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRW$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3207$8, 0, 12 );
								FBSTRING* vr$1785 = fb_StrConcat( &TMP$3207$8, (void*)vr$1782, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3208$8, 0, 12 );
								FBSTRING* vr$1788 = fb_StrConcat( &TMP$3208$8, (void*)vr$1785, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3209$8, -1, (void*)vr$1788, -1, 0 );
								HWRITEASM64( &TMP$3209$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3209$8 );
							}
							goto label$2454;
							label$2464:;
							if( DTYPE$1 == 2 ) goto label$2468;
							label$2469:;
							if( DTYPE$1 == 3 ) goto label$2468;
							label$2470:;
							if( DTYPE$1 == 1 ) goto label$2468;
							label$2471:;
							if( DTYPE$1 != 4 ) goto label$2467;
							label$2468:;
							{
								FBSTRING TMP$3210$8;
								FBSTRING TMP$3211$8;
								FBSTRING TMP$3212$8;
								FBSTRING TMP$3213$8;
								__builtin_memset( &TMP$3213$8, 0, 12 );
								__builtin_memset( &TMP$3210$8, 0, 12 );
								FBSTRING* vr$1799 = fb_StrConcat( &TMP$3210$8, (void*)"mov ", 5, *(void**)((uint8*)REGSTRB$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
								__builtin_memset( &TMP$3211$8, 0, 12 );
								FBSTRING* vr$1802 = fb_StrConcat( &TMP$3211$8, (void*)vr$1799, -1, (void*)", ", 3 );
								__builtin_memset( &TMP$3212$8, 0, 12 );
								FBSTRING* vr$1805 = fb_StrConcat( &TMP$3212$8, (void*)vr$1802, -1, (void*)&OP1$1, -1 );
								fb_StrAssign( (void*)&TMP$3213$8, -1, (void*)vr$1805, -1, 0 );
								HWRITEASM64( &TMP$3213$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3213$8 );
							}
							goto label$2454;
							label$2467:;
							{
								FBSTRING TMP$3214$8;
								FBSTRING TMP$3218$8;
								FBSTRING TMP$3219$8;
								FBSTRING TMP$3220$8;
								__builtin_memset( &TMP$3214$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3214$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3214$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3214$8 );
								__builtin_memset( &TMP$3219$8, 0, 12 );
								FBSTRING* vr$1814 = fb_IntToStr( DTYPE$1 );
								__builtin_memset( &TMP$3218$8, 0, 12 );
								FBSTRING* vr$1817 = fb_StrConcat( &TMP$3218$8, (void*)"FOUND AN ERROR : in hdocall datatype not handled 03 = ", 55, (void*)vr$1814, -1 );
								fb_StrAssign( (void*)&TMP$3219$8, -1, (void*)vr$1817, -1, 0 );
								HWRITEASM64( &TMP$3219$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3219$8 );
								__builtin_memset( &TMP$3220$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$3220$8, -1, (void*)"", 1, 0 );
								HWRITEASM64( &TMP$3220$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3220$8 );
							}
							label$2472:;
							label$2454:;
						}
						if( (-(-VARIADIC$1 == -1) & -(*(int32*)((uint8*)&CTX$ + 212) == 0)) == 0 ) goto label$2474;
						{
							FBSTRING TMP$3221$7;
							FBSTRING TMP$3222$7;
							FBSTRING TMP$3223$7;
							FBSTRING TMP$3224$7;
							__builtin_memset( &TMP$3224$7, 0, 12 );
							FBSTRING* vr$1835 = fb_IntToStr( (CPTARG$1 << (3 & 31)) + -8 );
							__builtin_memset( &TMP$3221$7, 0, 12 );
							FBSTRING* vr$1838 = fb_StrConcat( &TMP$3221$7, (void*)"mov QWORD PTR ", 15, (void*)vr$1835, -1 );
							__builtin_memset( &TMP$3222$7, 0, 12 );
							FBSTRING* vr$1841 = fb_StrConcat( &TMP$3222$7, (void*)vr$1838, -1, (void*)"[rsp], ", 8 );
							__builtin_memset( &TMP$3223$7, 0, 12 );
							FBSTRING* vr$1844 = fb_StrConcat( &TMP$3223$7, (void*)vr$1841, -1, *(void**)((uint8*)REGSTRQ$ + (*(int32*)((CPTINT$1 << (2 & 31)) + *(int32*)&LISTREG$) << (2 & 31))), 0 );
							fb_StrAssign( (void*)&TMP$3224$7, -1, (void*)vr$1844, -1, 0 );
							HWRITEASM64( &TMP$3224$7, 3 );
							fb_StrDelete( (FBSTRING*)&TMP$3224$7 );
						}
						label$2474:;
						label$2473:;
					}
					label$2434:;
				}
				label$2425:;
			}
			label$2371:;
		}
		label$2289:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 60), (void*)ARG$1 );
		ARG$1 = PREV$1;
	}
	goto label$2217;
	label$2218:;
	if( CPTARG$1 <= *(int32*)((uint8*)&CTX$ + 80) ) goto label$2476;
	{
		*(int32*)((uint8*)&CTX$ + 80) = CPTARG$1;
		label$2476:;
	}
	int32 vr$1849 = fb_StrCompare( (void*)FIRSTMOV$1, -1, (void*)"", 1 );
	if( vr$1849 == 0 ) goto label$2478;
	{
		HWRITEASM64( FIRSTMOV$1, 0 );
		label$2478:;
	}
	if( CALLPTR$1 == (boolean)0 ) goto label$2480;
	{
		FBSTRING TMP$3225$2;
		FBSTRING TMP$3226$2;
		__builtin_memset( &TMP$3226$2, 0, 12 );
		__builtin_memset( &TMP$3225$2, 0, 12 );
		FBSTRING* vr$1853 = fb_StrConcat( &TMP$3225$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3226$2, -1, (void*)vr$1853, -1, 0 );
		REG_FREEABLE( &TMP$3226$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3226$2 );
		label$2480:;
	}
	if( PUSHSIZE$1 == 0 ) goto label$2482;
	{
		if( (PUSHSIZE$1 % 16) == 0 ) goto label$2484;
		{
			FBSTRING TMP$3228$3;
			PUSHSIZE$1 = (((PUSHSIZE$1 + ((PUSHSIZE$1 >> (31 & 31)) & 15)) >> (4 & 31)) << (4 & 31)) + 16;
			__builtin_memset( &TMP$3228$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3228$3, -1, (void*)"sub rsp, 8", 11, 0 );
			HWRITEASM64( &TMP$3228$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3228$3 );
		}
		label$2484:;
		label$2483:;
		{
			int32 ISTR$3;
			ISTR$3 = PUSHNBSTR$1;
			goto label$2485;
			label$2488:;
			{
				FBSTRING* vr$1870 = fb_RIGHT( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				int32 vr$1871 = fb_StrCompare( (void*)vr$1870, -1, (void*)"#NO", 4 );
				if( vr$1871 != 0 ) goto label$2490;
				{
					HWRITEASM64( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 12)), 3 );
				}
				goto label$2489;
				label$2490:;
				{
					HWRITEASM64( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 12)), 0 );
				}
				label$2489:;
			}
			label$2486:;
			ISTR$3 = ISTR$3 + -1;
			label$2485:;
			if( ISTR$3 >= 1 ) goto label$2488;
			label$2487:;
		}
	}
	label$2482:;
	label$2481:;
	if( CALLPTR$1 == (boolean)0 ) goto label$2492;
	{
		REG_ALLOWED( (boolean)1 );
		label$2492:;
	}
	REG_SAVE(  );
	if( -VARIADIC$1 != -1 ) goto label$2494;
	{
		if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2496;
		{
			int32 TMP$3229$3;
			FBSTRING TMP$3230$3;
			FBSTRING TMP$3231$3;
			__builtin_memset( &TMP$3231$3, 0, 12 );
			if( CPTFLOAT$1 > 8 ) goto label$2497;
			TMP$3229$3 = CPTFLOAT$1;
			goto label$3059;
			label$2497:;
			TMP$3229$3 = 8;
			label$3059:;
			FBSTRING* vr$1879 = fb_IntToStr( TMP$3229$3 );
			__builtin_memset( &TMP$3230$3, 0, 12 );
			FBSTRING* vr$1882 = fb_StrConcat( &TMP$3230$3, (void*)"mov eax, ", 10, (void*)vr$1879, -1 );
			fb_StrAssign( (void*)&TMP$3231$3, -1, (void*)vr$1882, -1, 0 );
			HWRITEASM64( &TMP$3231$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3231$3 );
		}
		label$2496:;
		label$2495:;
	}
	label$2494:;
	label$2493:;
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2498;
	int32 vr$1886 = FBGETOPTION( 0 );
	TMP$3232$1 = -(vr$1886 == 2);
	goto label$3060;
	label$2498:;
	TMP$3232$1 = 0;
	label$3060:;
	if( TMP$3232$1 == 0 ) goto label$2500;
	{
		FBSTRING TMP$3233$2;
		FBSTRING TMP$3234$2;
		FBSTRING TMP$3235$2;
		__builtin_memset( &TMP$3235$2, 0, 12 );
		__builtin_memset( &TMP$3233$2, 0, 12 );
		FBSTRING* vr$1891 = fb_StrConcat( &TMP$3233$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		__builtin_memset( &TMP$3234$2, 0, 12 );
		FBSTRING* vr$1894 = fb_StrConcat( &TMP$3234$2, (void*)vr$1891, -1, (void*)"@PLT", 5 );
		fb_StrAssign( (void*)&TMP$3235$2, -1, (void*)vr$1894, -1, 0 );
		HWRITEASM64( &TMP$3235$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3235$2 );
	}
	goto label$2499;
	label$2500:;
	{
		FBSTRING TMP$3236$2;
		FBSTRING TMP$3237$2;
		__builtin_memset( &TMP$3237$2, 0, 12 );
		__builtin_memset( &TMP$3236$2, 0, 12 );
		FBSTRING* vr$1901 = fb_StrConcat( &TMP$3236$2, (void*)"call ", 6, (void*)PNAME$1, -1 );
		fb_StrAssign( (void*)&TMP$3237$2, -1, (void*)vr$1901, -1, 0 );
		HWRITEASM64( &TMP$3237$2, 1 );
		fb_StrDelete( (FBSTRING*)&TMP$3237$2 );
	}
	label$2499:;
	if( PUSHSIZE$1 == 0 ) goto label$2502;
	{
		FBSTRING TMP$3239$2;
		FBSTRING TMP$3240$2;
		__builtin_memset( &TMP$3240$2, 0, 12 );
		FBSTRING* vr$1906 = fb_IntToStr( PUSHSIZE$1 );
		__builtin_memset( &TMP$3239$2, 0, 12 );
		FBSTRING* vr$1909 = fb_StrConcat( &TMP$3239$2, (void*)"add rsp, ", 10, (void*)vr$1906, -1 );
		fb_StrAssign( (void*)&TMP$3240$2, -1, (void*)vr$1909, -1, 0 );
		HWRITEASM64( &TMP$3240$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3240$2 );
		PUSHSIZE$1 = 0;
		PUSHNBSTR$1 = 0;
	}
	label$2502:;
	label$2501:;
	if( *(int32*)((uint8*)&CTX$ + 108) <= *(int32*)((uint8*)&CTX$ + 100) ) goto label$2504;
	{
		*(int32*)((uint8*)&CTX$ + 100) = *(int32*)((uint8*)&CTX$ + 108);
		label$2504:;
	}
	*(int32*)((uint8*)&CTX$ + 104) = 0;
	*(boolean*)((uint8*)&CTX$ + 137) = (boolean)0;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$2506;
	{
		int32 vr$1913 = HISSTRUCTIN2REGS( VR$1 );
		if( vr$1913 == 0 ) goto label$2508;
		{
			*($15IRVREGTYPE_ENUM*)VR$1 = 1;
			*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 96) + (*(int32*)((uint8*)SYMB_DTYPETB$ + 368) << (1 & 31));
			*(int64*)((uint8*)VR$1 + 40) = (int64)-(*(int32*)((uint8*)&CTX$ + 96));
			{
				uint32 TMP$3241$4;
				TMP$3241$4 = *(uint32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 8) + 132);
				goto label$2510;
				label$2511:;
				{
					FBSTRING TMP$3243$5;
					FBSTRING TMP$3244$5;
					FBSTRING TMP$3245$5;
					FBSTRING TMP$3247$5;
					FBSTRING TMP$3248$5;
					FBSTRING TMP$3249$5;
					__builtin_memset( &TMP$3245$5, 0, 12 );
					FBSTRING* vr$1924 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3243$5, 0, 12 );
					FBSTRING* vr$1927 = fb_StrConcat( &TMP$3243$5, (void*)"mov ", 5, (void*)vr$1924, -1 );
					__builtin_memset( &TMP$3244$5, 0, 12 );
					FBSTRING* vr$1930 = fb_StrConcat( &TMP$3244$5, (void*)vr$1927, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3245$5, -1, (void*)vr$1930, -1, 0 );
					HWRITEASM64( &TMP$3245$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3245$5 );
					__builtin_memset( &TMP$3249$5, 0, 12 );
					FBSTRING* vr$1937 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3247$5, 0, 12 );
					FBSTRING* vr$1940 = fb_StrConcat( &TMP$3247$5, (void*)"mov ", 5, (void*)vr$1937, -1 );
					__builtin_memset( &TMP$3248$5, 0, 12 );
					FBSTRING* vr$1943 = fb_StrConcat( &TMP$3248$5, (void*)vr$1940, -1, (void*)"[rbp], rdx", 11 );
					fb_StrAssign( (void*)&TMP$3249$5, -1, (void*)vr$1943, -1, 0 );
					HWRITEASM64( &TMP$3249$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3249$5 );
				}
				goto label$2509;
				label$2512:;
				{
					FBSTRING TMP$3250$5;
					FBSTRING TMP$3251$5;
					FBSTRING TMP$3252$5;
					FBSTRING TMP$3254$5;
					FBSTRING TMP$3255$5;
					FBSTRING TMP$3256$5;
					__builtin_memset( &TMP$3252$5, 0, 12 );
					FBSTRING* vr$1949 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3250$5, 0, 12 );
					FBSTRING* vr$1952 = fb_StrConcat( &TMP$3250$5, (void*)"mov ", 5, (void*)vr$1949, -1 );
					__builtin_memset( &TMP$3251$5, 0, 12 );
					FBSTRING* vr$1955 = fb_StrConcat( &TMP$3251$5, (void*)vr$1952, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3252$5, -1, (void*)vr$1955, -1, 0 );
					HWRITEASM64( &TMP$3252$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3252$5 );
					__builtin_memset( &TMP$3256$5, 0, 12 );
					FBSTRING* vr$1962 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3254$5, 0, 12 );
					FBSTRING* vr$1965 = fb_StrConcat( &TMP$3254$5, (void*)"movq ", 6, (void*)vr$1962, -1 );
					__builtin_memset( &TMP$3255$5, 0, 12 );
					FBSTRING* vr$1968 = fb_StrConcat( &TMP$3255$5, (void*)vr$1965, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3256$5, -1, (void*)vr$1968, -1, 0 );
					HWRITEASM64( &TMP$3256$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3256$5 );
				}
				goto label$2509;
				label$2513:;
				{
					FBSTRING TMP$3257$5;
					FBSTRING TMP$3258$5;
					FBSTRING TMP$3259$5;
					FBSTRING TMP$3260$5;
					FBSTRING TMP$3261$5;
					FBSTRING TMP$3262$5;
					__builtin_memset( &TMP$3259$5, 0, 12 );
					FBSTRING* vr$1974 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3257$5, 0, 12 );
					FBSTRING* vr$1977 = fb_StrConcat( &TMP$3257$5, (void*)"movq ", 6, (void*)vr$1974, -1 );
					__builtin_memset( &TMP$3258$5, 0, 12 );
					FBSTRING* vr$1980 = fb_StrConcat( &TMP$3258$5, (void*)vr$1977, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3259$5, -1, (void*)vr$1980, -1, 0 );
					HWRITEASM64( &TMP$3259$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3259$5 );
					__builtin_memset( &TMP$3262$5, 0, 12 );
					FBSTRING* vr$1987 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3260$5, 0, 12 );
					FBSTRING* vr$1990 = fb_StrConcat( &TMP$3260$5, (void*)"mov ", 5, (void*)vr$1987, -1 );
					__builtin_memset( &TMP$3261$5, 0, 12 );
					FBSTRING* vr$1993 = fb_StrConcat( &TMP$3261$5, (void*)vr$1990, -1, (void*)"[rbp], rax", 11 );
					fb_StrAssign( (void*)&TMP$3262$5, -1, (void*)vr$1993, -1, 0 );
					HWRITEASM64( &TMP$3262$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3262$5 );
				}
				goto label$2509;
				label$2514:;
				{
					FBSTRING TMP$3263$5;
					FBSTRING TMP$3264$5;
					FBSTRING TMP$3265$5;
					FBSTRING TMP$3267$5;
					FBSTRING TMP$3268$5;
					FBSTRING TMP$3269$5;
					__builtin_memset( &TMP$3265$5, 0, 12 );
					FBSTRING* vr$1999 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3263$5, 0, 12 );
					FBSTRING* vr$2002 = fb_StrConcat( &TMP$3263$5, (void*)"movq ", 6, (void*)vr$1999, -1 );
					__builtin_memset( &TMP$3264$5, 0, 12 );
					FBSTRING* vr$2005 = fb_StrConcat( &TMP$3264$5, (void*)vr$2002, -1, (void*)"[rbp], xmm0", 12 );
					fb_StrAssign( (void*)&TMP$3265$5, -1, (void*)vr$2005, -1, 0 );
					HWRITEASM64( &TMP$3265$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3265$5 );
					__builtin_memset( &TMP$3269$5, 0, 12 );
					FBSTRING* vr$2012 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) + 8ll );
					__builtin_memset( &TMP$3267$5, 0, 12 );
					FBSTRING* vr$2015 = fb_StrConcat( &TMP$3267$5, (void*)"movq ", 6, (void*)vr$2012, -1 );
					__builtin_memset( &TMP$3268$5, 0, 12 );
					FBSTRING* vr$2018 = fb_StrConcat( &TMP$3268$5, (void*)vr$2015, -1, (void*)"[rbp], xmm1", 12 );
					fb_StrAssign( (void*)&TMP$3269$5, -1, (void*)vr$2018, -1, 0 );
					HWRITEASM64( &TMP$3269$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3269$5 );
				}
				goto label$2509;
				label$2510:;
				static const void* tmp$3869[5] = {
					&&label$2511,
					&&label$2512,
					&&label$2509,
					&&label$2513,
					&&label$2514,
				};
				if( (TMP$3241$4 - 2u) > 4u ) goto label$2509;
				goto *tmp$3869[TMP$3241$4 - 2u];
				label$2509:;
			}
		}
		goto label$2507;
		label$2508:;
		{
			int32 TMP$3270$3;
			DTYPE$1 = *(int32*)((uint8*)VR$1 + 4) & 511;
			if( (DTYPE$1 & 480) == 0 ) goto label$2515;
			TMP$3270$3 = 24;
			goto label$3061;
			label$2515:;
			TMP$3270$3 = DTYPE$1 & 31;
			label$3061:;
			if( TMP$3270$3 != 24 ) goto label$2517;
			{
				DTYPE$1 = 8;
				label$2517:;
			}
			if( DTYPE$1 != 16 ) goto label$2519;
			{
				FBSTRING TMP$3272$4;
				__builtin_memset( &TMP$3272$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3272$4, -1, (void*)"movq rax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3272$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3272$4 );
			}
			goto label$2518;
			label$2519:;
			if( DTYPE$1 != 15 ) goto label$2520;
			{
				FBSTRING TMP$3274$4;
				__builtin_memset( &TMP$3274$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3274$4, -1, (void*)"movd eax, xmm0", 15, 0 );
				HWRITEASM64( &TMP$3274$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3274$4 );
			}
			label$2520:;
			label$2518:;
			fb_StrAssign( (void*)&OP3$1, -1, (void*)"", 1, 0 );
			REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
			{
				$15IRVREGTYPE_ENUM TMP$3275$4;
				TMP$3275$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$3275$4 != 2 ) goto label$2522;
				label$2523:;
				{
					PREPARE_IDX( VR$1, &OP1$1, &OP3$1 );
				}
				goto label$2521;
				label$2522:;
				if( TMP$3275$4 != 4 ) goto label$2524;
				label$2525:;
				{
					{
						if( DTYPE$1 == 8 ) goto label$2528;
						label$2529:;
						if( DTYPE$1 == 9 ) goto label$2528;
						label$2530:;
						if( DTYPE$1 == 13 ) goto label$2528;
						label$2531:;
						if( DTYPE$1 == 14 ) goto label$2528;
						label$2532:;
						if( DTYPE$1 == 16 ) goto label$2528;
						label$2533:;
						if( DTYPE$1 != 10 ) goto label$2527;
						label$2528:;
						{
							int32 vr$2040 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
							fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$2040 << (2 & 31))), 0, 0 );
						}
						goto label$2526;
						label$2527:;
						if( DTYPE$1 == 11 ) goto label$2535;
						label$2536:;
						if( DTYPE$1 == 12 ) goto label$2535;
						label$2537:;
						if( DTYPE$1 != 15 ) goto label$2534;
						label$2535:;
						{
							int32 vr$2044 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
							fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRD$ + (vr$2044 << (2 & 31))), 0, 0 );
						}
						goto label$2526;
						label$2534:;
						if( DTYPE$1 == 5 ) goto label$2539;
						label$2540:;
						if( DTYPE$1 != 6 ) goto label$2538;
						label$2539:;
						{
							int32 vr$2048 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
							fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRW$ + (vr$2048 << (2 & 31))), 0, 0 );
						}
						goto label$2526;
						label$2538:;
						if( DTYPE$1 == 2 ) goto label$2542;
						label$2543:;
						if( DTYPE$1 == 3 ) goto label$2542;
						label$2544:;
						if( DTYPE$1 == 1 ) goto label$2542;
						label$2545:;
						if( DTYPE$1 != 4 ) goto label$2541;
						label$2542:;
						{
							int32 vr$2052 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
							fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRB$ + (vr$2052 << (2 & 31))), 0, 0 );
						}
						goto label$2526;
						label$2541:;
						{
							FBSTRING TMP$3276$7;
							FBSTRING TMP$3280$7;
							FBSTRING TMP$3281$7;
							FBSTRING TMP$3282$7;
							__builtin_memset( &TMP$3276$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$3276$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$3276$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3276$7 );
							__builtin_memset( &TMP$3281$7, 0, 12 );
							FBSTRING* vr$2060 = fb_IntToStr( DTYPE$1 );
							__builtin_memset( &TMP$3280$7, 0, 12 );
							FBSTRING* vr$2063 = fb_StrConcat( &TMP$3280$7, (void*)"FOUND AN ERROR : in hdocall datatype not handled 04 = ", 55, (void*)vr$2060, -1 );
							fb_StrAssign( (void*)&TMP$3281$7, -1, (void*)vr$2063, -1, 0 );
							HWRITEASM64( &TMP$3281$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3281$7 );
							__builtin_memset( &TMP$3282$7, 0, 12 );
							fb_StrAssign( (void*)&TMP$3282$7, -1, (void*)"", 1, 0 );
							HWRITEASM64( &TMP$3282$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3282$7 );
							fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + 68), 0, 0 );
						}
						label$2546:;
						label$2526:;
					}
				}
				goto label$2521;
				label$2524:;
				if( TMP$3275$4 != 1 ) goto label$2547;
				label$2548:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2550;
					{
						FBSTRING TMP$3283$6;
						FBSTRING TMP$3284$6;
						FBSTRING TMP$3285$6;
						FBSTRING* vr$2082 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
						uint8* vr$2084 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) );
						__builtin_memset( &TMP$3283$6, 0, 12 );
						FBSTRING* vr$2087 = fb_StrConcat( &TMP$3283$6, (void*)vr$2084, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3284$6, 0, 12 );
						FBSTRING* vr$2090 = fb_StrConcat( &TMP$3284$6, (void*)vr$2087, -1, (void*)vr$2082, -1 );
						__builtin_memset( &TMP$3285$6, 0, 12 );
						FBSTRING* vr$2093 = fb_StrConcat( &TMP$3285$6, (void*)vr$2090, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$2093, -1, 0 );
					}
					goto label$2549;
					label$2550:;
					{
						FBSTRING TMP$3286$6;
						FBSTRING* vr$2096 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
						__builtin_memset( &TMP$3286$6, 0, 12 );
						FBSTRING* vr$2099 = fb_StrConcat( &TMP$3286$6, (void*)vr$2096, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$2099, -1, 0 );
					}
					label$2549:;
				}
				goto label$2521;
				label$2547:;
				if( TMP$3275$4 != 3 ) goto label$2551;
				label$2552:;
				{
					FBSTRING TMP$3287$5;
					FBSTRING TMP$3288$5;
					FBSTRING TMP$3289$5;
					int32 vr$2103 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 52) + 12) );
					FBSTRING* vr$2106 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					__builtin_memset( &TMP$3287$5, 0, 12 );
					FBSTRING* vr$2109 = fb_StrConcat( &TMP$3287$5, (void*)vr$2106, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3288$5, 0, 12 );
					FBSTRING* vr$2112 = fb_StrConcat( &TMP$3288$5, (void*)vr$2109, -1, *(void**)((uint8*)REGSTRQ$ + (vr$2103 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3289$5, 0, 12 );
					FBSTRING* vr$2115 = fb_StrConcat( &TMP$3289$5, (void*)vr$2112, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$2115, -1, 0 );
				}
				goto label$2521;
				label$2551:;
				if( TMP$3275$4 != 5 ) goto label$2553;
				label$2554:;
				{
					FBSTRING TMP$3290$5;
					FBSTRING TMP$3291$5;
					FBSTRING TMP$3292$5;
					FBSTRING TMP$3293$5;
					FBSTRING TMP$3296$5;
					FBSTRING TMP$3297$5;
					FBSTRING* vr$2118 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 40) );
					uint8* vr$2120 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) );
					__builtin_memset( &TMP$3290$5, 0, 12 );
					FBSTRING* vr$2123 = fb_StrConcat( &TMP$3290$5, (void*)vr$2120, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3291$5, 0, 12 );
					FBSTRING* vr$2126 = fb_StrConcat( &TMP$3291$5, (void*)vr$2123, -1, (void*)vr$2118, -1 );
					__builtin_memset( &TMP$3292$5, 0, 12 );
					FBSTRING* vr$2129 = fb_StrConcat( &TMP$3292$5, (void*)vr$2126, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$2129, -1, 0 );
					__builtin_memset( &TMP$3293$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3293$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3293$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3293$5 );
					__builtin_memset( &TMP$3296$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3296$5, -1, (void*)"FOUND AN ERROR : in hdocall OFS not handled", 44, 0 );
					HWRITEASM64( &TMP$3296$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3296$5 );
					__builtin_memset( &TMP$3297$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3297$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3297$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3297$5 );
				}
				goto label$2521;
				label$2553:;
				{
					FBSTRING TMP$3298$5;
					FBSTRING TMP$3301$5;
					FBSTRING TMP$3302$5;
					FBSTRING TMP$3303$5;
					__builtin_memset( &TMP$3298$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3298$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3298$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3298$5 );
					__builtin_memset( &TMP$3302$5, 0, 12 );
					FBSTRING* vr$2149 = fb_IntToStr( *(int32*)VR$1 );
					__builtin_memset( &TMP$3301$5, 0, 12 );
					FBSTRING* vr$2152 = fb_StrConcat( &TMP$3301$5, (void*)"FOUND AN ERROR : in hdocall typ not handled =", 46, (void*)vr$2149, -1 );
					fb_StrAssign( (void*)&TMP$3302$5, -1, (void*)vr$2152, -1, 0 );
					HWRITEASM64( &TMP$3302$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3302$5 );
					__builtin_memset( &TMP$3303$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3303$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3303$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3303$5 );
				}
				label$2555:;
				label$2521:;
			}
			int32 vr$2161 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$2161 == 0 ) goto label$2557;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2557:;
			}
			{
				if( DTYPE$1 == 8 ) goto label$2560;
				label$2561:;
				if( DTYPE$1 == 9 ) goto label$2560;
				label$2562:;
				if( DTYPE$1 == 13 ) goto label$2560;
				label$2563:;
				if( DTYPE$1 == 14 ) goto label$2560;
				label$2564:;
				if( DTYPE$1 == 16 ) goto label$2560;
				label$2565:;
				if( DTYPE$1 != 10 ) goto label$2559;
				label$2560:;
				{
					FBSTRING TMP$3304$5;
					FBSTRING TMP$3305$5;
					FBSTRING TMP$3306$5;
					FBSTRING TMP$3307$5;
					__builtin_memset( &TMP$3307$5, 0, 12 );
					__builtin_memset( &TMP$3304$5, 0, 12 );
					FBSTRING* vr$2167 = fb_StrConcat( &TMP$3304$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3305$5, 0, 12 );
					FBSTRING* vr$2170 = fb_StrConcat( &TMP$3305$5, (void*)vr$2167, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3306$5, 0, 12 );
					FBSTRING* vr$2173 = fb_StrConcat( &TMP$3306$5, (void*)vr$2170, -1, *(void**)REGSTRQ$, 0 );
					fb_StrAssign( (void*)&TMP$3307$5, -1, (void*)vr$2173, -1, 0 );
					HWRITEASM64( &TMP$3307$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3307$5 );
				}
				goto label$2558;
				label$2559:;
				if( DTYPE$1 == 11 ) goto label$2567;
				label$2568:;
				if( DTYPE$1 == 12 ) goto label$2567;
				label$2569:;
				if( DTYPE$1 != 15 ) goto label$2566;
				label$2567:;
				{
					FBSTRING TMP$3308$5;
					FBSTRING TMP$3309$5;
					FBSTRING TMP$3310$5;
					FBSTRING TMP$3311$5;
					__builtin_memset( &TMP$3311$5, 0, 12 );
					__builtin_memset( &TMP$3308$5, 0, 12 );
					FBSTRING* vr$2181 = fb_StrConcat( &TMP$3308$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3309$5, 0, 12 );
					FBSTRING* vr$2184 = fb_StrConcat( &TMP$3309$5, (void*)vr$2181, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3310$5, 0, 12 );
					FBSTRING* vr$2187 = fb_StrConcat( &TMP$3310$5, (void*)vr$2184, -1, *(void**)REGSTRD$, 0 );
					fb_StrAssign( (void*)&TMP$3311$5, -1, (void*)vr$2187, -1, 0 );
					HWRITEASM64( &TMP$3311$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3311$5 );
				}
				goto label$2558;
				label$2566:;
				if( DTYPE$1 == 5 ) goto label$2571;
				label$2572:;
				if( DTYPE$1 != 6 ) goto label$2570;
				label$2571:;
				{
					FBSTRING TMP$3312$5;
					FBSTRING TMP$3313$5;
					FBSTRING TMP$3314$5;
					FBSTRING TMP$3315$5;
					__builtin_memset( &TMP$3315$5, 0, 12 );
					__builtin_memset( &TMP$3312$5, 0, 12 );
					FBSTRING* vr$2195 = fb_StrConcat( &TMP$3312$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3313$5, 0, 12 );
					FBSTRING* vr$2198 = fb_StrConcat( &TMP$3313$5, (void*)vr$2195, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3314$5, 0, 12 );
					FBSTRING* vr$2201 = fb_StrConcat( &TMP$3314$5, (void*)vr$2198, -1, *(void**)REGSTRW$, 0 );
					fb_StrAssign( (void*)&TMP$3315$5, -1, (void*)vr$2201, -1, 0 );
					HWRITEASM64( &TMP$3315$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3315$5 );
				}
				goto label$2558;
				label$2570:;
				if( DTYPE$1 == 2 ) goto label$2574;
				label$2575:;
				if( DTYPE$1 == 3 ) goto label$2574;
				label$2576:;
				if( DTYPE$1 == 1 ) goto label$2574;
				label$2577:;
				if( DTYPE$1 != 4 ) goto label$2573;
				label$2574:;
				{
					FBSTRING TMP$3316$5;
					FBSTRING TMP$3317$5;
					FBSTRING TMP$3318$5;
					FBSTRING TMP$3319$5;
					__builtin_memset( &TMP$3319$5, 0, 12 );
					__builtin_memset( &TMP$3316$5, 0, 12 );
					FBSTRING* vr$2209 = fb_StrConcat( &TMP$3316$5, (void*)"mov ", 5, (void*)&OP1$1, -1 );
					__builtin_memset( &TMP$3317$5, 0, 12 );
					FBSTRING* vr$2212 = fb_StrConcat( &TMP$3317$5, (void*)vr$2209, -1, (void*)", ", 3 );
					__builtin_memset( &TMP$3318$5, 0, 12 );
					FBSTRING* vr$2215 = fb_StrConcat( &TMP$3318$5, (void*)vr$2212, -1, *(void**)REGSTRB$, 0 );
					fb_StrAssign( (void*)&TMP$3319$5, -1, (void*)vr$2215, -1, 0 );
					HWRITEASM64( &TMP$3319$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3319$5 );
				}
				goto label$2558;
				label$2573:;
				{
					FBSTRING TMP$3320$5;
					FBSTRING TMP$3324$5;
					FBSTRING TMP$3325$5;
					FBSTRING TMP$3326$5;
					__builtin_memset( &TMP$3320$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3320$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3320$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3320$5 );
					__builtin_memset( &TMP$3325$5, 0, 12 );
					FBSTRING* vr$2224 = fb_IntToStr( DTYPE$1 );
					__builtin_memset( &TMP$3324$5, 0, 12 );
					FBSTRING* vr$2227 = fb_StrConcat( &TMP$3324$5, (void*)"FOUND AN ERROR : in hdocall datatype not handled 05 = ", 55, (void*)vr$2224, -1 );
					fb_StrAssign( (void*)&TMP$3325$5, -1, (void*)vr$2227, -1, 0 );
					HWRITEASM64( &TMP$3325$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3325$5 );
					__builtin_memset( &TMP$3326$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3326$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3326$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3326$5 );
				}
				label$2578:;
				label$2558:;
			}
		}
		label$2507:;
	}
	label$2506:;
	label$2505:;
	fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2846$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2214:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	FBSTRING TMP$3327$1;
	FBSTRING TMP$3328$1;
	label$2579:;
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2582;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2584;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2584:;
		label$2583:;
	}
	label$2582:;
	label$2581:;
	__builtin_memset( &TMP$3328$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3328$1, -1, (void*)"", 1, 0 );
	__builtin_memset( &TMP$3327$1, 0, 12 );
	uint8* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&TMP$3327$1, -1, (void*)vr$7, 0, 0 );
	HDOCALL( PROC$1, &TMP$3327$1, &TMP$3328$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)0 );
	fb_StrDelete( (FBSTRING*)&TMP$3328$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3327$1 );
	label$2580:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	label$2585:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1 );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 4 );
	{
		$15IRVREGTYPE_ENUM TMP$3329$2;
		TMP$3329$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$3329$2 != 4 ) goto label$2588;
		label$2589:;
		{
			int32 vr$6 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
			fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$6 << (2 & 31))), 0, 0 );
		}
		goto label$2587;
		label$2588:;
		if( TMP$3329$2 != 2 ) goto label$2590;
		label$2591:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2587;
		label$2590:;
		if( TMP$3329$2 != 3 ) goto label$2592;
		label$2593:;
		{
			FBSTRING TMP$3330$3;
			FBSTRING TMP$3331$3;
			FBSTRING TMP$3332$3;
			int32 vr$13 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
			FBSTRING* vr$16 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
			__builtin_memset( &TMP$3330$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$3330$3, (void*)vr$16, -1, (void*)"[", 2 );
			__builtin_memset( &TMP$3331$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$3331$3, (void*)vr$19, -1, *(void**)((uint8*)REGSTRQ$ + (vr$13 << (2 & 31))), 0 );
			__builtin_memset( &TMP$3332$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$3332$3, (void*)vr$22, -1, (void*)"]", 2 );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$25, -1, 0 );
		}
		goto label$2587;
		label$2592:;
		if( TMP$3329$2 != 5 ) goto label$2594;
		label$2595:;
		{
			uint8* vr$28 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
			fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$28, 0, 0 );
		}
		goto label$2587;
		label$2594:;
		if( TMP$3329$2 != 0 ) goto label$2596;
		label$2597:;
		{
			FBSTRING TMP$3333$3;
			FBSTRING TMP$3336$3;
			FBSTRING TMP$3337$3;
			__builtin_memset( &TMP$3333$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3333$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3333$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3333$3 );
			__builtin_memset( &TMP$3336$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3336$3, -1, (void*)"FOUND AN ERROR : Never IMM as first operand", 44, 0 );
			HWRITEASM64( &TMP$3336$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3336$3 );
			__builtin_memset( &TMP$3337$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3337$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3337$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3337$3 );
		}
		goto label$2587;
		label$2596:;
		if( TMP$3329$2 != 1 ) goto label$2598;
		label$2599:;
		{
			if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2601;
			{
				FBSTRING TMP$3338$4;
				FBSTRING TMP$3339$4;
				FBSTRING TMP$3340$4;
				FBSTRING* vr$52 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$54 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3338$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3338$4, (void*)vr$54, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3339$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3339$4, (void*)vr$57, -1, (void*)vr$52, -1 );
				__builtin_memset( &TMP$3340$4, 0, 12 );
				FBSTRING* vr$63 = fb_StrConcat( &TMP$3340$4, (void*)vr$60, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$63, -1, 0 );
			}
			goto label$2600;
			label$2601:;
			{
				FBSTRING TMP$3341$4;
				FBSTRING* vr$66 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				__builtin_memset( &TMP$3341$4, 0, 12 );
				FBSTRING* vr$69 = fb_StrConcat( &TMP$3341$4, (void*)vr$66, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$69, -1, 0 );
			}
			label$2600:;
		}
		goto label$2587;
		label$2598:;
		{
			FBSTRING TMP$3342$3;
			FBSTRING TMP$3343$3;
			FBSTRING TMP$3344$3;
			__builtin_memset( &TMP$3342$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3342$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3342$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3342$3 );
			__builtin_memset( &TMP$3343$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3343$3, -1, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51, 0 );
			HWRITEASM64( &TMP$3343$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3343$3 );
			__builtin_memset( &TMP$3344$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3344$3, -1, (void*)"", 1, 0 );
			HWRITEASM64( &TMP$3344$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3344$3 );
		}
		label$2602:;
		label$2587:;
	}
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2604;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2606;
		{
			VARIADIC$1 = (boolean)1;
		}
		label$2606:;
		label$2605:;
	}
	label$2604:;
	label$2603:;
	HDOCALL( PROC$1, &OP1$1, &OP3$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2586:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$3346$1;
	FBSTRING TMP$3347$1;
	FBSTRING TMP$3348$1;
	label$2607:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4 );
	if( *(int32*)((uint8*)V1$1 + 12) != *(int32*)((uint8*)&CTX$ + 120) ) goto label$2610;
	{
		REG$1 = *(int32*)((uint8*)&CTX$ + 116);
		*(int32*)((uint8*)&CTX$ + 124) = 0;
		*(int32*)((uint8*)&CTX$ + 120) = -2;
	}
	goto label$2609;
	label$2610:;
	{
		int32 vr$3 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
		REG$1 = vr$3;
	}
	label$2609:;
	__builtin_memset( &TMP$3348$1, 0, 12 );
	__builtin_memset( &TMP$3346$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3346$1, (void*)"jmp [", 6, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (2 & 31))), 0 );
	__builtin_memset( &TMP$3347$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$3347$1, (void*)vr$8, -1, (void*)"]", 2 );
	fb_StrAssign( (void*)&TMP$3348$1, -1, (void*)vr$11, -1, 0 );
	HWRITEASM64( &TMP$3348$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3348$1 );
	label$2608:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$3349$1;
	FBSTRING TMP$3350$1;
	FBSTRING TMP$3351$1;
	label$2611:;
	__builtin_memset( &TMP$3351$1, 0, 12 );
	uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	uint8* vr$2 = HGETBOPCODE( OP$1 );
	__builtin_memset( &TMP$3349$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3349$1, (void*)vr$2, 0, (void*)" ", 2 );
	__builtin_memset( &TMP$3350$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3350$1, (void*)vr$5, -1, (void*)vr$1, 0 );
	fb_StrAssign( (void*)&TMP$3351$1, -1, (void*)vr$8, -1, 0 );
	HWRITEASM64( &TMP$3351$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3351$1 );
	if( *(int32*)((uint8*)&CTX$ + 216) == 0 ) goto label$2614;
	{
		*(int32*)((uint8*)REGHANDLE$ + (*(int32*)((uint8*)&CTX$ + 216) << (2 & 31))) = -2;
		*(int32*)((uint8*)&CTX$ + 216) = 0;
	}
	label$2614:;
	label$2613:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) == (struct $8FBSYMBOL*)0u ) goto label$2616;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) = LABEL$1;
	}
	label$2616:;
	label$2615:;
	if( OP$1 == 98 ) goto label$2618;
	{
		REG_MARK( LABEL$1 );
	}
	label$2618:;
	label$2617:;
	label$2612:;
}

static void _EMITRETURN( int32 BYTESTOPOP$1 )
{
	FBSTRING TMP$3353$1;
	FBSTRING TMP$3354$1;
	label$2619:;
	__builtin_memset( &TMP$3353$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3353$1, -1, (void*)"pop rax # dummy pop for gosub", 30, 0 );
	HWRITEASM64( &TMP$3353$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3353$1 );
	__builtin_memset( &TMP$3354$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3354$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3354$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3354$1 );
	label$2620:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$3355$1;
	label$2621:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	FBSTRING OP1$1;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
	__builtin_memset( &TMP$3355$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3355$1, (void*)vr$2, -1, (void*)"[rbp]", 6 );
	fb_StrInit( (void*)&OP1$1, -1, (void*)vr$5, -1, 0 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	if( LABELCOUNT$1 != 0 ) goto label$2624;
	{
		FBSTRING TMP$3356$2;
		FBSTRING TMP$3357$2;
		__builtin_memset( &TMP$3357$2, 0, 12 );
		uint8* vr$10 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3356$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$3356$2, (void*)"jmp ", 5, (void*)vr$10, 0 );
		fb_StrAssign( (void*)&TMP$3357$2, -1, (void*)vr$13, -1, 0 );
		HWRITEASM64( &TMP$3357$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3357$2 );
	}
	goto label$2623;
	label$2624:;
	{
		FBSTRING TMP$3358$2;
		FBSTRING TMP$3359$2;
		FBSTRING TMP$3370$2;
		FBSTRING TMP$3371$2;
		FBSTRING TMP$3372$2;
		FBSTRING TMP$3373$2;
		FBSTRING TMP$3376$2;
		FBSTRING TMP$3377$2;
		FBSTRING TMP$3378$2;
		FBSTRING TMP$3379$2;
		FBSTRING TMP$3380$2;
		FBSTRING TMP$3381$2;
		FBSTRING TMP$3382$2;
		FBSTRING TMP$3388$2;
		uint8* vr$17 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$17, 0, 0 );
		__builtin_memset( &TMP$3359$2, 0, 12 );
		__builtin_memset( &TMP$3358$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$3358$2, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
		fb_StrAssign( (void*)&TMP$3359$2, -1, (void*)vr$23, -1, 0 );
		HWRITEASM64( &TMP$3359$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3359$2 );
		if( (-(BIAS$1 > 2147483647ull) & -(BIAS$1 < 18446744071562067968ull)) == 0 ) goto label$2626;
		{
			FBSTRING TMP$3360$3;
			FBSTRING TMP$3361$3;
			FBSTRING TMP$3362$3;
			FBSTRING TMP$3363$3;
			FBSTRING TMP$3365$3;
			FBSTRING TMP$3366$3;
			int32 vr$30 = REG_FINDFREE( 999998, -1 );
			fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$30 << (2 & 31))), 0, 0 );
			__builtin_memset( &TMP$3363$3, 0, 12 );
			FBSTRING* vr$34 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3360$3, 0, 12 );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$3360$3, (void*)"mov ", 5, (void*)&OP2$1, -1 );
			__builtin_memset( &TMP$3361$3, 0, 12 );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$3361$3, (void*)vr$38, -1, (void*)", ", 3 );
			__builtin_memset( &TMP$3362$3, 0, 12 );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$3362$3, (void*)vr$41, -1, (void*)vr$34, -1 );
			fb_StrAssign( (void*)&TMP$3363$3, -1, (void*)vr$44, -1, 0 );
			HWRITEASM64( &TMP$3363$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3363$3 );
			__builtin_memset( &TMP$3366$3, 0, 12 );
			__builtin_memset( &TMP$3365$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$3365$3, (void*)"sub rax, ", 10, (void*)&OP2$1, -1 );
			fb_StrAssign( (void*)&TMP$3366$3, -1, (void*)vr$52, -1, 0 );
			HWRITEASM64( &TMP$3366$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3366$3 );
		}
		goto label$2625;
		label$2626:;
		{
			FBSTRING TMP$3367$3;
			FBSTRING TMP$3368$3;
			__builtin_memset( &TMP$3368$3, 0, 12 );
			FBSTRING* vr$57 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3367$3, 0, 12 );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$3367$3, (void*)"sub rax, ", 10, (void*)vr$57, -1 );
			fb_StrAssign( (void*)&TMP$3368$3, -1, (void*)vr$60, -1, 0 );
			HWRITEASM64( &TMP$3368$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3368$3 );
		}
		label$2625:;
		__builtin_memset( &TMP$3371$2, 0, 12 );
		FBSTRING* vr$65 = fb_ULongintToStr( SPAN$1 );
		__builtin_memset( &TMP$3370$2, 0, 12 );
		FBSTRING* vr$68 = fb_StrConcat( &TMP$3370$2, (void*)"cmp rax, ", 10, (void*)vr$65, -1 );
		fb_StrAssign( (void*)&TMP$3371$2, -1, (void*)vr$68, -1, 0 );
		HWRITEASM64( &TMP$3371$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3371$2 );
		__builtin_memset( &TMP$3373$2, 0, 12 );
		uint8* vr$73 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3372$2, 0, 12 );
		FBSTRING* vr$76 = fb_StrConcat( &TMP$3372$2, (void*)"ja ", 4, (void*)vr$73, 0 );
		fb_StrAssign( (void*)&TMP$3373$2, -1, (void*)vr$76, -1, 0 );
		HWRITEASM64( &TMP$3373$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3373$2 );
		__builtin_memset( &TMP$3378$2, 0, 12 );
		__builtin_memset( &TMP$3376$2, 0, 12 );
		FBSTRING* vr$84 = fb_StrConcat( &TMP$3376$2, (void*)"jmp QWORD PTR [", 16, (void*)&LNAME$1, -1 );
		__builtin_memset( &TMP$3377$2, 0, 12 );
		FBSTRING* vr$87 = fb_StrConcat( &TMP$3377$2, (void*)vr$84, -1, (void*)"+rax*8]", 8 );
		fb_StrAssign( (void*)&TMP$3378$2, -1, (void*)vr$87, -1, 0 );
		HWRITEASM64( &TMP$3378$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3378$2 );
		__builtin_memset( &TMP$3379$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3379$2, -1, (void*)".data", 6, 0 );
		ASM_SECTION( &TMP$3379$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3379$2 );
		__builtin_memset( &TMP$3380$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3380$2, -1, (void*)".align 8", 9, 0 );
		HWRITEASM64( &TMP$3380$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3380$2 );
		__builtin_memset( &TMP$3382$2, 0, 12 );
		__builtin_memset( &TMP$3381$2, 0, 12 );
		FBSTRING* vr$103 = fb_StrConcat( &TMP$3381$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3382$2, -1, (void*)vr$103, -1, 0 );
		HWRITEASM64( &TMP$3382$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3382$2 );
		{
			int32 ISEL$3;
			ISEL$3 = 0;
			int32 TMP$3383$3;
			TMP$3383$3 = (int32)SPAN$1;
			goto label$2627;
			label$2630:;
			{
				if( (uint64)ISEL$3 != *(uint64*)((uint8*)VALUES$1 + (IDX$1 << (3 & 31))) ) goto label$2632;
				{
					FBSTRING TMP$3384$5;
					FBSTRING TMP$3385$5;
					__builtin_memset( &TMP$3385$5, 0, 12 );
					uint8* vr$114 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (IDX$1 << (2 & 31))) );
					__builtin_memset( &TMP$3384$5, 0, 12 );
					FBSTRING* vr$117 = fb_StrConcat( &TMP$3384$5, (void*)".quad ", 7, (void*)vr$114, 0 );
					fb_StrAssign( (void*)&TMP$3385$5, -1, (void*)vr$117, -1, 0 );
					HWRITEASM64( &TMP$3385$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3385$5 );
					IDX$1 = IDX$1 + 1;
				}
				goto label$2631;
				label$2632:;
				{
					FBSTRING TMP$3386$5;
					FBSTRING TMP$3387$5;
					__builtin_memset( &TMP$3387$5, 0, 12 );
					uint8* vr$123 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
					__builtin_memset( &TMP$3386$5, 0, 12 );
					FBSTRING* vr$126 = fb_StrConcat( &TMP$3386$5, (void*)".quad ", 7, (void*)vr$123, 0 );
					fb_StrAssign( (void*)&TMP$3387$5, -1, (void*)vr$126, -1, 0 );
					HWRITEASM64( &TMP$3387$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3387$5 );
				}
				label$2631:;
			}
			label$2628:;
			ISEL$3 = ISEL$3 + 1;
			label$2627:;
			if( ISEL$3 <= TMP$3383$3 ) goto label$2630;
			label$2629:;
		}
		__builtin_memset( &TMP$3388$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3388$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3388$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3388$2 );
	}
	label$2623:;
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$2622:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$2633:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 12 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 12 );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	FBSTRING INSTRUC$1;
	fb_StrInit( (void*)&INSTRUC$1, -1, (void*)"mov ", 5, 0 );
	uint8* REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 4 );
	int32 DESTTYP$1;
	DESTTYP$1 = 0;
	int32 SRCTYP$1;
	SRCTYP$1 = 0;
	int32 REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4 );
	{
		if( OP$1 != 107 ) goto label$2636;
		label$2637:;
		{
			if( *(int32*)V1$1 != 4 ) goto label$2639;
			{
				int32 vr$10 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
				REGSRC$1 = vr$10;
				fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				SRCTYP$1 = 1;
			}
			goto label$2638;
			label$2639:;
			if( *(int32*)V1$1 != 1 ) goto label$2640;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2642;
				{
					FBSTRING TMP$3389$5;
					FBSTRING TMP$3390$5;
					FBSTRING TMP$3391$5;
					FBSTRING* vr$24 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$26 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3389$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$3389$5, (void*)vr$26, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3390$5, 0, 12 );
					FBSTRING* vr$32 = fb_StrConcat( &TMP$3390$5, (void*)vr$29, -1, (void*)vr$24, -1 );
					__builtin_memset( &TMP$3391$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$3391$5, (void*)vr$32, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$35, -1, 0 );
				}
				goto label$2641;
				label$2642:;
				{
					FBSTRING TMP$3392$5;
					FBSTRING* vr$38 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3392$5, 0, 12 );
					FBSTRING* vr$41 = fb_StrConcat( &TMP$3392$5, (void*)vr$38, -1, (void*)"[rbp]", 6 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$41, -1, 0 );
				}
				label$2641:;
				SRCTYP$1 = 0;
			}
			goto label$2638;
			label$2640:;
			if( *(int32*)V1$1 != 5 ) goto label$2643;
			{
				FBSTRING TMP$3393$4;
				FBSTRING TMP$3394$4;
				FBSTRING TMP$3395$4;
				FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
				uint8* vr$47 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
				__builtin_memset( &TMP$3393$4, 0, 12 );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$3393$4, (void*)vr$47, 0, (void*)"[rip+", 6 );
				__builtin_memset( &TMP$3394$4, 0, 12 );
				FBSTRING* vr$53 = fb_StrConcat( &TMP$3394$4, (void*)vr$50, -1, (void*)vr$45, -1 );
				__builtin_memset( &TMP$3395$4, 0, 12 );
				FBSTRING* vr$56 = fb_StrConcat( &TMP$3395$4, (void*)vr$53, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$56, -1, 0 );
				SRCTYP$1 = 1;
				fb_StrAssign( (void*)&INSTRUC$1, -1, (void*)"lea ", 5, 0 );
			}
			goto label$2638;
			label$2643:;
			{
				FBSTRING TMP$3396$4;
				FBSTRING TMP$3399$4;
				FBSTRING TMP$3400$4;
				__builtin_memset( &TMP$3396$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3396$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3396$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3396$4 );
				__builtin_memset( &TMP$3399$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3399$4, -1, (void*)"FOUND AN ERROR : Memclear v1 not a reg nor a var", 49, 0 );
				HWRITEASM64( &TMP$3399$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3399$4 );
				__builtin_memset( &TMP$3400$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3400$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3400$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3400$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
			}
			label$2638:;
			if( *(int32*)V2$1 != 4 ) goto label$2645;
			{
				FBSTRING TMP$3401$4;
				FBSTRING TMP$3402$4;
				FBSTRING TMP$3403$4;
				FBSTRING TMP$3404$4;
				FBSTRING TMP$3406$4;
				FBSTRING TMP$3407$4;
				FBSTRING TMP$3408$4;
				FBSTRING TMP$3409$4;
				FBSTRING TMP$3410$4;
				FBSTRING TMP$3411$4;
				FBSTRING TMP$3413$4;
				FBSTRING TMP$3415$4;
				FBSTRING TMP$3416$4;
				FBSTRING TMP$3417$4;
				FBSTRING TMP$3418$4;
				FBSTRING TMP$3419$4;
				FBSTRING TMP$3420$4;
				FBSTRING TMP$3421$4;
				int32 vr$79 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
				fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$79 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3404$4, 0, 12 );
				__builtin_memset( &TMP$3401$4, 0, 12 );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$3401$4, (void*)"test ", 6, (void*)&OP2$1, -1 );
				__builtin_memset( &TMP$3402$4, 0, 12 );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$3402$4, (void*)vr$87, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3403$4, 0, 12 );
				FBSTRING* vr$93 = fb_StrConcat( &TMP$3403$4, (void*)vr$90, -1, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3404$4, -1, (void*)vr$93, -1, 0 );
				HWRITEASM64( &TMP$3404$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3404$4 );
				uint8* vr$97 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$97, 0, 0 );
				__builtin_memset( &TMP$3407$4, 0, 12 );
				__builtin_memset( &TMP$3406$4, 0, 12 );
				FBSTRING* vr$103 = fb_StrConcat( &TMP$3406$4, (void*)"jz ", 4, (void*)&LNAME2$1, -1 );
				fb_StrAssign( (void*)&TMP$3407$4, -1, (void*)vr$103, -1, 0 );
				HWRITEASM64( &TMP$3407$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3407$4 );
				__builtin_memset( &TMP$3409$4, 0, 12 );
				__builtin_memset( &TMP$3408$4, 0, 12 );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3408$4, (void*)"mov rax, ", 10, (void*)&OP1$1, -1 );
				fb_StrAssign( (void*)&TMP$3409$4, -1, (void*)vr$111, -1, 0 );
				HWRITEASM64( &TMP$3409$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3409$4 );
				uint8* vr$115 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$115, 0, 0 );
				__builtin_memset( &TMP$3411$4, 0, 12 );
				__builtin_memset( &TMP$3410$4, 0, 12 );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$3410$4, (void*)&LNAME1$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3411$4, -1, (void*)vr$121, -1, 0 );
				HWRITEASM64( &TMP$3411$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3411$4 );
				__builtin_memset( &TMP$3413$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3413$4, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
				HWRITEASM64( &TMP$3413$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3413$4 );
				__builtin_memset( &TMP$3415$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3415$4, -1, (void*)"inc rax", 8, 0 );
				HWRITEASM64( &TMP$3415$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3415$4 );
				__builtin_memset( &TMP$3417$4, 0, 12 );
				__builtin_memset( &TMP$3416$4, 0, 12 );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$3416$4, (void*)"dec ", 5, (void*)&OP2$1, -1 );
				fb_StrAssign( (void*)&TMP$3417$4, -1, (void*)vr$137, -1, 0 );
				HWRITEASM64( &TMP$3417$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3417$4 );
				__builtin_memset( &TMP$3419$4, 0, 12 );
				__builtin_memset( &TMP$3418$4, 0, 12 );
				FBSTRING* vr$145 = fb_StrConcat( &TMP$3418$4, (void*)"jnz ", 5, (void*)&LNAME1$1, -1 );
				fb_StrAssign( (void*)&TMP$3419$4, -1, (void*)vr$145, -1, 0 );
				HWRITEASM64( &TMP$3419$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3419$4 );
				__builtin_memset( &TMP$3421$4, 0, 12 );
				__builtin_memset( &TMP$3420$4, 0, 12 );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$3420$4, (void*)&LNAME2$1, -1, (void*)":", 2 );
				fb_StrAssign( (void*)&TMP$3421$4, -1, (void*)vr$153, -1, 0 );
				HWRITEASM64( &TMP$3421$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3421$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
			}
			label$2645:;
			label$2644:;
			if( *(int32*)V2$1 == 0 ) goto label$2647;
			{
				FBSTRING TMP$3422$4;
				FBSTRING TMP$3425$4;
				FBSTRING TMP$3426$4;
				__builtin_memset( &TMP$3422$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3422$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3422$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3422$4 );
				__builtin_memset( &TMP$3425$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3425$4, -1, (void*)"FOUND AN ERROR : Memclear without an immediat as size", 54, 0 );
				HWRITEASM64( &TMP$3425$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3425$4 );
				__builtin_memset( &TMP$3426$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3426$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3426$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3426$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
			}
			label$2647:;
			label$2646:;
			if( *(int64*)((uint8*)V2$1 + 24) != 0ll ) goto label$2649;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
				label$2649:;
			}
			{
				int64 TMP$3427$4;
				TMP$3427$4 = *(int64*)((uint8*)V2$1 + 24);
				if( TMP$3427$4 > 8ll ) goto label$2652;
				label$2653:;
				if( TMP$3427$4 == 3ll ) goto label$2652;
				label$2654:;
				if( TMP$3427$4 == 5ll ) goto label$2652;
				label$2655:;
				if( TMP$3427$4 == 6ll ) goto label$2652;
				label$2656:;
				if( TMP$3427$4 != 7ll ) goto label$2651;
				label$2652:;
				{
					MEMCLEAR( (int32)*(int64*)((uint8*)V2$1 + 24), &OP1$1, SRCTYP$1 );
				}
				goto label$2650;
				label$2651:;
				if( TMP$3427$4 != 1ll ) goto label$2657;
				label$2658:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2660;
					{
						FBSTRING TMP$3429$6;
						FBSTRING TMP$3430$6;
						FBSTRING TMP$3431$6;
						__builtin_memset( &TMP$3431$6, 0, 12 );
						__builtin_memset( &TMP$3429$6, 0, 12 );
						FBSTRING* vr$198 = fb_StrConcat( &TMP$3429$6, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3430$6, 0, 12 );
						FBSTRING* vr$201 = fb_StrConcat( &TMP$3430$6, (void*)vr$198, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3431$6, -1, (void*)vr$201, -1, 0 );
						HWRITEASM64( &TMP$3431$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3431$6 );
					}
					goto label$2659;
					label$2660:;
					{
						FBSTRING TMP$3433$6;
						FBSTRING TMP$3434$6;
						FBSTRING TMP$3435$6;
						FBSTRING TMP$3436$6;
						__builtin_memset( &TMP$3435$6, 0, 12 );
						__builtin_memset( &TMP$3433$6, 0, 12 );
						FBSTRING* vr$210 = fb_StrConcat( &TMP$3433$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3434$6, 0, 12 );
						FBSTRING* vr$213 = fb_StrConcat( &TMP$3434$6, (void*)vr$210, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3435$6, -1, (void*)vr$213, -1, 0 );
						HWRITEASM64( &TMP$3435$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3435$6 );
						__builtin_memset( &TMP$3436$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3436$6, -1, (void*)"mov BYTE PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3436$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3436$6 );
					}
					label$2659:;
				}
				goto label$2650;
				label$2657:;
				if( TMP$3427$4 != 2ll ) goto label$2661;
				label$2662:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2664;
					{
						FBSTRING TMP$3438$6;
						FBSTRING TMP$3439$6;
						FBSTRING TMP$3440$6;
						__builtin_memset( &TMP$3440$6, 0, 12 );
						__builtin_memset( &TMP$3438$6, 0, 12 );
						FBSTRING* vr$226 = fb_StrConcat( &TMP$3438$6, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3439$6, 0, 12 );
						FBSTRING* vr$229 = fb_StrConcat( &TMP$3439$6, (void*)vr$226, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3440$6, -1, (void*)vr$229, -1, 0 );
						HWRITEASM64( &TMP$3440$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3440$6 );
					}
					goto label$2663;
					label$2664:;
					{
						FBSTRING TMP$3441$6;
						FBSTRING TMP$3442$6;
						FBSTRING TMP$3443$6;
						FBSTRING TMP$3445$6;
						__builtin_memset( &TMP$3443$6, 0, 12 );
						__builtin_memset( &TMP$3441$6, 0, 12 );
						FBSTRING* vr$238 = fb_StrConcat( &TMP$3441$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3442$6, 0, 12 );
						FBSTRING* vr$241 = fb_StrConcat( &TMP$3442$6, (void*)vr$238, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3443$6, -1, (void*)vr$241, -1, 0 );
						HWRITEASM64( &TMP$3443$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3443$6 );
						__builtin_memset( &TMP$3445$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3445$6, -1, (void*)"mov WORD PTR [rax], 0", 22, 0 );
						HWRITEASM64( &TMP$3445$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3445$6 );
					}
					label$2663:;
				}
				goto label$2650;
				label$2661:;
				if( TMP$3427$4 != 4ll ) goto label$2665;
				label$2666:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2668;
					{
						FBSTRING TMP$3447$6;
						FBSTRING TMP$3448$6;
						FBSTRING TMP$3449$6;
						__builtin_memset( &TMP$3449$6, 0, 12 );
						__builtin_memset( &TMP$3447$6, 0, 12 );
						FBSTRING* vr$254 = fb_StrConcat( &TMP$3447$6, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3448$6, 0, 12 );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3448$6, (void*)vr$254, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3449$6, -1, (void*)vr$257, -1, 0 );
						HWRITEASM64( &TMP$3449$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3449$6 );
					}
					goto label$2667;
					label$2668:;
					{
						FBSTRING TMP$3450$6;
						FBSTRING TMP$3451$6;
						FBSTRING TMP$3452$6;
						FBSTRING TMP$3454$6;
						__builtin_memset( &TMP$3452$6, 0, 12 );
						__builtin_memset( &TMP$3450$6, 0, 12 );
						FBSTRING* vr$266 = fb_StrConcat( &TMP$3450$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3451$6, 0, 12 );
						FBSTRING* vr$269 = fb_StrConcat( &TMP$3451$6, (void*)vr$266, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3452$6, -1, (void*)vr$269, -1, 0 );
						HWRITEASM64( &TMP$3452$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3452$6 );
						__builtin_memset( &TMP$3454$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3454$6, -1, (void*)"mov DWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3454$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3454$6 );
					}
					label$2667:;
				}
				goto label$2650;
				label$2665:;
				if( TMP$3427$4 != 8ll ) goto label$2669;
				label$2670:;
				{
					if( *(int32*)V1$1 != 4 ) goto label$2672;
					{
						FBSTRING TMP$3455$6;
						FBSTRING TMP$3456$6;
						FBSTRING TMP$3457$6;
						__builtin_memset( &TMP$3457$6, 0, 12 );
						__builtin_memset( &TMP$3455$6, 0, 12 );
						FBSTRING* vr$282 = fb_StrConcat( &TMP$3455$6, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
						__builtin_memset( &TMP$3456$6, 0, 12 );
						FBSTRING* vr$285 = fb_StrConcat( &TMP$3456$6, (void*)vr$282, -1, (void*)"], 0", 5 );
						fb_StrAssign( (void*)&TMP$3457$6, -1, (void*)vr$285, -1, 0 );
						HWRITEASM64( &TMP$3457$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3457$6 );
					}
					goto label$2671;
					label$2672:;
					{
						FBSTRING TMP$3458$6;
						FBSTRING TMP$3459$6;
						FBSTRING TMP$3460$6;
						FBSTRING TMP$3462$6;
						__builtin_memset( &TMP$3460$6, 0, 12 );
						__builtin_memset( &TMP$3458$6, 0, 12 );
						FBSTRING* vr$294 = fb_StrConcat( &TMP$3458$6, (void*)&INSTRUC$1, -1, (void*)"rax, ", 6 );
						__builtin_memset( &TMP$3459$6, 0, 12 );
						FBSTRING* vr$297 = fb_StrConcat( &TMP$3459$6, (void*)vr$294, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3460$6, -1, (void*)vr$297, -1, 0 );
						HWRITEASM64( &TMP$3460$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3460$6 );
						__builtin_memset( &TMP$3462$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$3462$6, -1, (void*)"mov QWORD PTR [rax], 0", 23, 0 );
						HWRITEASM64( &TMP$3462$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3462$6 );
					}
					label$2671:;
				}
				label$2669:;
				label$2650:;
			}
		}
		goto label$2635;
		label$2636:;
		if( OP$1 != 105 ) goto label$2673;
		label$2674:;
		{
			if( BYTES$1 != 0ll ) goto label$2676;
			{
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
			}
			label$2676:;
			label$2675:;
			{
				$15IRVREGTYPE_ENUM TMP$3463$4;
				TMP$3463$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$3463$4 != 2 ) goto label$2678;
				label$2679:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2677;
				label$2678:;
				if( TMP$3463$4 != 4 ) goto label$2680;
				label$2681:;
				{
					int32 vr$315 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					fb_StrAssign( (void*)&OP1$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$315 << (2 & 31))), 0, 0 );
				}
				goto label$2677;
				label$2680:;
				if( TMP$3463$4 != 1 ) goto label$2682;
				label$2683:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2685;
					{
						FBSTRING TMP$3464$6;
						FBSTRING TMP$3465$6;
						FBSTRING TMP$3466$6;
						FBSTRING* vr$328 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						uint8* vr$330 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
						__builtin_memset( &TMP$3464$6, 0, 12 );
						FBSTRING* vr$333 = fb_StrConcat( &TMP$3464$6, (void*)vr$330, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3465$6, 0, 12 );
						FBSTRING* vr$336 = fb_StrConcat( &TMP$3465$6, (void*)vr$333, -1, (void*)vr$328, -1 );
						__builtin_memset( &TMP$3466$6, 0, 12 );
						FBSTRING* vr$339 = fb_StrConcat( &TMP$3466$6, (void*)vr$336, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$339, -1, 0 );
					}
					goto label$2684;
					label$2685:;
					{
						FBSTRING TMP$3467$6;
						FBSTRING* vr$342 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
						__builtin_memset( &TMP$3467$6, 0, 12 );
						FBSTRING* vr$345 = fb_StrConcat( &TMP$3467$6, (void*)vr$342, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$345, -1, 0 );
					}
					label$2684:;
				}
				goto label$2677;
				label$2682:;
				if( TMP$3463$4 != 3 ) goto label$2686;
				label$2687:;
				{
					FBSTRING TMP$3468$5;
					FBSTRING TMP$3469$5;
					FBSTRING TMP$3470$5;
					int32 vr$349 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					FBSTRING* vr$352 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					__builtin_memset( &TMP$3468$5, 0, 12 );
					FBSTRING* vr$355 = fb_StrConcat( &TMP$3468$5, (void*)vr$352, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3469$5, 0, 12 );
					FBSTRING* vr$358 = fb_StrConcat( &TMP$3469$5, (void*)vr$355, -1, *(void**)((uint8*)REGSTRQ$ + (vr$349 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3470$5, 0, 12 );
					FBSTRING* vr$361 = fb_StrConcat( &TMP$3470$5, (void*)vr$358, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$361, -1, 0 );
				}
				goto label$2677;
				label$2686:;
				if( TMP$3463$4 != 5 ) goto label$2688;
				label$2689:;
				{
					FBSTRING TMP$3471$5;
					FBSTRING TMP$3472$5;
					FBSTRING TMP$3473$5;
					FBSTRING* vr$364 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 40) );
					uint8* vr$366 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) );
					__builtin_memset( &TMP$3471$5, 0, 12 );
					FBSTRING* vr$369 = fb_StrConcat( &TMP$3471$5, (void*)vr$366, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3472$5, 0, 12 );
					FBSTRING* vr$372 = fb_StrConcat( &TMP$3472$5, (void*)vr$369, -1, (void*)vr$364, -1 );
					__builtin_memset( &TMP$3473$5, 0, 12 );
					FBSTRING* vr$375 = fb_StrConcat( &TMP$3473$5, (void*)vr$372, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$375, -1, 0 );
					DESTTYP$1 = 1;
				}
				goto label$2677;
				label$2688:;
				if( TMP$3463$4 != 0 ) goto label$2690;
				label$2691:;
				{
					FBSTRING TMP$3474$5;
					FBSTRING TMP$3475$5;
					FBSTRING* vr$378 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 24) );
					__builtin_memset( &TMP$3474$5, 0, 12 );
					FBSTRING* vr$381 = fb_StrConcat( &TMP$3474$5, (void*)"[", 2, (void*)vr$378, -1 );
					__builtin_memset( &TMP$3475$5, 0, 12 );
					FBSTRING* vr$384 = fb_StrConcat( &TMP$3475$5, (void*)vr$381, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$384, -1, 0 );
				}
				goto label$2677;
				label$2690:;
				{
					FBSTRING TMP$3476$5;
					FBSTRING TMP$3479$5;
					FBSTRING TMP$3480$5;
					__builtin_memset( &TMP$3476$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3476$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3476$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3476$5 );
					__builtin_memset( &TMP$3479$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3479$5, -1, (void*)"FOUND AN ERROR : memcopy 01 type not handled", 45, 0 );
					HWRITEASM64( &TMP$3479$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3479$5 );
					__builtin_memset( &TMP$3480$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3480$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3480$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3480$5 );
				}
				label$2692:;
				label$2677:;
			}
			{
				$15IRVREGTYPE_ENUM TMP$3481$4;
				TMP$3481$4 = *($15IRVREGTYPE_ENUM*)V2$1;
				if( TMP$3481$4 != 4 ) goto label$2694;
				label$2695:;
				{
					int32 vr$400 = REG_FINDREAL( *(int32*)((uint8*)V2$1 + 12) );
					REGSRC$1 = vr$400;
					fb_StrAssign( (void*)&OP2$1, -1, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0, 0 );
				}
				goto label$2693;
				label$2694:;
				if( TMP$3481$4 != 1 ) goto label$2696;
				label$2697:;
				{
					if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 2) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) + 4) & 1) != 0)) == 0 ) goto label$2699;
					{
						FBSTRING TMP$3482$6;
						FBSTRING TMP$3483$6;
						FBSTRING TMP$3484$6;
						FBSTRING* vr$413 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						uint8* vr$415 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
						__builtin_memset( &TMP$3482$6, 0, 12 );
						FBSTRING* vr$418 = fb_StrConcat( &TMP$3482$6, (void*)vr$415, 0, (void*)"[rip+", 6 );
						__builtin_memset( &TMP$3483$6, 0, 12 );
						FBSTRING* vr$421 = fb_StrConcat( &TMP$3483$6, (void*)vr$418, -1, (void*)vr$413, -1 );
						__builtin_memset( &TMP$3484$6, 0, 12 );
						FBSTRING* vr$424 = fb_StrConcat( &TMP$3484$6, (void*)vr$421, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$424, -1, 0 );
					}
					goto label$2698;
					label$2699:;
					{
						FBSTRING TMP$3485$6;
						FBSTRING* vr$427 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
						__builtin_memset( &TMP$3485$6, 0, 12 );
						FBSTRING* vr$430 = fb_StrConcat( &TMP$3485$6, (void*)vr$427, -1, (void*)"[rbp]", 6 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$430, -1, 0 );
					}
					label$2698:;
				}
				goto label$2693;
				label$2696:;
				if( TMP$3481$4 != 5 ) goto label$2700;
				label$2701:;
				{
					FBSTRING TMP$3486$5;
					FBSTRING TMP$3487$5;
					FBSTRING TMP$3488$5;
					FBSTRING* vr$433 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					uint8* vr$435 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 32) );
					__builtin_memset( &TMP$3486$5, 0, 12 );
					FBSTRING* vr$438 = fb_StrConcat( &TMP$3486$5, (void*)vr$435, 0, (void*)"[rip+", 6 );
					__builtin_memset( &TMP$3487$5, 0, 12 );
					FBSTRING* vr$441 = fb_StrConcat( &TMP$3487$5, (void*)vr$438, -1, (void*)vr$433, -1 );
					__builtin_memset( &TMP$3488$5, 0, 12 );
					FBSTRING* vr$444 = fb_StrConcat( &TMP$3488$5, (void*)vr$441, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$444, -1, 0 );
					SRCTYP$1 = 1;
				}
				goto label$2693;
				label$2700:;
				if( TMP$3481$4 != 3 ) goto label$2702;
				label$2703:;
				{
					FBSTRING TMP$3489$5;
					FBSTRING TMP$3490$5;
					FBSTRING TMP$3491$5;
					int32 vr$448 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12) );
					FBSTRING* vr$451 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 40) );
					__builtin_memset( &TMP$3489$5, 0, 12 );
					FBSTRING* vr$454 = fb_StrConcat( &TMP$3489$5, (void*)vr$451, -1, (void*)"[", 2 );
					__builtin_memset( &TMP$3490$5, 0, 12 );
					FBSTRING* vr$457 = fb_StrConcat( &TMP$3490$5, (void*)vr$454, -1, *(void**)((uint8*)REGSTRQ$ + (vr$448 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3491$5, 0, 12 );
					FBSTRING* vr$460 = fb_StrConcat( &TMP$3491$5, (void*)vr$457, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$460, -1, 0 );
				}
				goto label$2693;
				label$2702:;
				{
					FBSTRING TMP$3492$5;
					FBSTRING TMP$3495$5;
					FBSTRING TMP$3496$5;
					__builtin_memset( &TMP$3492$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3492$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3492$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3492$5 );
					__builtin_memset( &TMP$3495$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3495$5, -1, (void*)"FOUND AN ERROR : Memcopy v2 not a reg nor a var nor ofs nor ptr", 64, 0 );
					HWRITEASM64( &TMP$3495$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3495$5 );
					__builtin_memset( &TMP$3496$5, 0, 12 );
					fb_StrAssign( (void*)&TMP$3496$5, -1, (void*)"", 1, 0 );
					HWRITEASM64( &TMP$3496$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3496$5 );
				}
				label$2704:;
				label$2693:;
			}
			int32 vr$475 = fb_StrCompare( (void*)&OP3$1, -1, (void*)"", 1 );
			if( vr$475 == 0 ) goto label$2706;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2706:;
			}
			{
				if( BYTES$1 > 8ll ) goto label$2709;
				label$2710:;
				if( BYTES$1 == 3ll ) goto label$2709;
				label$2711:;
				if( BYTES$1 == 5ll ) goto label$2709;
				label$2712:;
				if( BYTES$1 == 6ll ) goto label$2709;
				label$2713:;
				if( BYTES$1 != 7ll ) goto label$2708;
				label$2709:;
				{
					MEMCOPY( (int32)BYTES$1, &OP2$1, &OP1$1, SRCTYP$1, DESTTYP$1 );
				}
				goto label$2707;
				label$2708:;
				{
					if( *(int32*)V2$1 != 1 ) goto label$2716;
					{
						FBSTRING TMP$3497$6;
						FBSTRING TMP$3498$6;
						FBSTRING TMP$3499$6;
						FBSTRING TMP$3500$6;
						__builtin_memset( &TMP$3498$6, 0, 12 );
						__builtin_memset( &TMP$3497$6, 0, 12 );
						FBSTRING* vr$485 = fb_StrConcat( &TMP$3497$6, (void*)"mov rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3498$6, -1, (void*)vr$485, -1, 0 );
						HWRITEASM64( &TMP$3498$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3498$6 );
						__builtin_memset( &TMP$3499$6, 0, 12 );
						FBSTRING* vr$491 = fb_StrConcat( &TMP$3499$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3500$6, 0, 12 );
						FBSTRING* vr$494 = fb_StrConcat( &TMP$3500$6, (void*)vr$491, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP2$1, -1, (void*)vr$494, -1, 0 );
					}
					goto label$2715;
					label$2716:;
					if( *(int32*)V2$1 == 4 ) goto label$2717;
					{
						FBSTRING TMP$3501$6;
						FBSTRING TMP$3502$6;
						__builtin_memset( &TMP$3502$6, 0, 12 );
						__builtin_memset( &TMP$3501$6, 0, 12 );
						FBSTRING* vr$501 = fb_StrConcat( &TMP$3501$6, (void*)"lea rax, ", 10, (void*)&OP2$1, -1 );
						fb_StrAssign( (void*)&TMP$3502$6, -1, (void*)vr$501, -1, 0 );
						HWRITEASM64( &TMP$3502$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3502$6 );
						REGSRC$1 = 0;
					}
					label$2717:;
					label$2715:;
					if( *(int32*)V1$1 != 1 ) goto label$2719;
					{
						FBSTRING TMP$3503$6;
						FBSTRING TMP$3504$6;
						FBSTRING TMP$3505$6;
						FBSTRING TMP$3506$6;
						FBSTRING TMP$3507$6;
						FBSTRING TMP$3508$6;
						uint8* vr$506 = REG_TEMPO(  );
						REGTEMPO$1 = vr$506;
						__builtin_memset( &TMP$3506$6, 0, 12 );
						__builtin_memset( &TMP$3503$6, 0, 12 );
						FBSTRING* vr$511 = fb_StrConcat( &TMP$3503$6, (void*)"mov ", 5, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3504$6, 0, 12 );
						FBSTRING* vr$514 = fb_StrConcat( &TMP$3504$6, (void*)vr$511, -1, (void*)", ", 3 );
						__builtin_memset( &TMP$3505$6, 0, 12 );
						FBSTRING* vr$517 = fb_StrConcat( &TMP$3505$6, (void*)vr$514, -1, (void*)&OP1$1, -1 );
						fb_StrAssign( (void*)&TMP$3506$6, -1, (void*)vr$517, -1, 0 );
						HWRITEASM64( &TMP$3506$6, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$3506$6 );
						__builtin_memset( &TMP$3507$6, 0, 12 );
						FBSTRING* vr$523 = fb_StrConcat( &TMP$3507$6, (void*)"[", 2, (void*)REGTEMPO$1, 0 );
						__builtin_memset( &TMP$3508$6, 0, 12 );
						FBSTRING* vr$526 = fb_StrConcat( &TMP$3508$6, (void*)vr$523, -1, (void*)"]", 2 );
						fb_StrAssign( (void*)&OP1$1, -1, (void*)vr$526, -1, 0 );
					}
					label$2719:;
					label$2718:;
					{
						if( BYTES$1 != 1ll ) goto label$2721;
						label$2722:;
						{
							FBSTRING TMP$3510$7;
							FBSTRING TMP$3511$7;
							FBSTRING TMP$3512$7;
							__builtin_memset( &TMP$3512$7, 0, 12 );
							__builtin_memset( &TMP$3510$7, 0, 12 );
							FBSTRING* vr$532 = fb_StrConcat( &TMP$3510$7, (void*)"mov al, [", 10, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3511$7, 0, 12 );
							FBSTRING* vr$535 = fb_StrConcat( &TMP$3511$7, (void*)vr$532, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3512$7, -1, (void*)vr$535, -1, 0 );
							HWRITEASM64( &TMP$3512$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3512$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2724;
							{
								FBSTRING TMP$3513$8;
								FBSTRING TMP$3514$8;
								FBSTRING TMP$3515$8;
								__builtin_memset( &TMP$3515$8, 0, 12 );
								__builtin_memset( &TMP$3513$8, 0, 12 );
								FBSTRING* vr$544 = fb_StrConcat( &TMP$3513$8, (void*)"mov BYTE PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3514$8, 0, 12 );
								FBSTRING* vr$547 = fb_StrConcat( &TMP$3514$8, (void*)vr$544, -1, (void*)"], al", 6 );
								fb_StrAssign( (void*)&TMP$3515$8, -1, (void*)vr$547, -1, 0 );
								HWRITEASM64( &TMP$3515$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3515$8 );
							}
							goto label$2723;
							label$2724:;
							{
								FBSTRING TMP$3516$8;
								FBSTRING TMP$3517$8;
								FBSTRING TMP$3518$8;
								__builtin_memset( &TMP$3518$8, 0, 12 );
								__builtin_memset( &TMP$3516$8, 0, 12 );
								FBSTRING* vr$555 = fb_StrConcat( &TMP$3516$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3517$8, 0, 12 );
								FBSTRING* vr$558 = fb_StrConcat( &TMP$3517$8, (void*)vr$555, -1, (void*)", al", 5 );
								fb_StrAssign( (void*)&TMP$3518$8, -1, (void*)vr$558, -1, 0 );
								HWRITEASM64( &TMP$3518$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3518$8 );
							}
							label$2723:;
						}
						goto label$2720;
						label$2721:;
						if( BYTES$1 != 2ll ) goto label$2725;
						label$2726:;
						{
							FBSTRING TMP$3520$7;
							FBSTRING TMP$3521$7;
							FBSTRING TMP$3522$7;
							__builtin_memset( &TMP$3522$7, 0, 12 );
							__builtin_memset( &TMP$3520$7, 0, 12 );
							FBSTRING* vr$566 = fb_StrConcat( &TMP$3520$7, (void*)"mov ax, [", 10, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3521$7, 0, 12 );
							FBSTRING* vr$569 = fb_StrConcat( &TMP$3521$7, (void*)vr$566, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3522$7, -1, (void*)vr$569, -1, 0 );
							HWRITEASM64( &TMP$3522$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3522$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2728;
							{
								FBSTRING TMP$3523$8;
								FBSTRING TMP$3524$8;
								FBSTRING TMP$3525$8;
								__builtin_memset( &TMP$3525$8, 0, 12 );
								__builtin_memset( &TMP$3523$8, 0, 12 );
								FBSTRING* vr$578 = fb_StrConcat( &TMP$3523$8, (void*)"mov WORD PTR [", 15, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3524$8, 0, 12 );
								FBSTRING* vr$581 = fb_StrConcat( &TMP$3524$8, (void*)vr$578, -1, (void*)"], ax", 6 );
								fb_StrAssign( (void*)&TMP$3525$8, -1, (void*)vr$581, -1, 0 );
								HWRITEASM64( &TMP$3525$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3525$8 );
							}
							goto label$2727;
							label$2728:;
							{
								FBSTRING TMP$3526$8;
								FBSTRING TMP$3527$8;
								FBSTRING TMP$3528$8;
								__builtin_memset( &TMP$3528$8, 0, 12 );
								__builtin_memset( &TMP$3526$8, 0, 12 );
								FBSTRING* vr$589 = fb_StrConcat( &TMP$3526$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3527$8, 0, 12 );
								FBSTRING* vr$592 = fb_StrConcat( &TMP$3527$8, (void*)vr$589, -1, (void*)", ax", 5 );
								fb_StrAssign( (void*)&TMP$3528$8, -1, (void*)vr$592, -1, 0 );
								HWRITEASM64( &TMP$3528$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3528$8 );
							}
							label$2727:;
						}
						goto label$2720;
						label$2725:;
						if( BYTES$1 != 4ll ) goto label$2729;
						label$2730:;
						{
							FBSTRING TMP$3530$7;
							FBSTRING TMP$3531$7;
							FBSTRING TMP$3532$7;
							__builtin_memset( &TMP$3532$7, 0, 12 );
							__builtin_memset( &TMP$3530$7, 0, 12 );
							FBSTRING* vr$600 = fb_StrConcat( &TMP$3530$7, (void*)"mov eax, [", 11, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3531$7, 0, 12 );
							FBSTRING* vr$603 = fb_StrConcat( &TMP$3531$7, (void*)vr$600, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3532$7, -1, (void*)vr$603, -1, 0 );
							HWRITEASM64( &TMP$3532$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3532$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2732;
							{
								FBSTRING TMP$3533$8;
								FBSTRING TMP$3534$8;
								FBSTRING TMP$3535$8;
								__builtin_memset( &TMP$3535$8, 0, 12 );
								__builtin_memset( &TMP$3533$8, 0, 12 );
								FBSTRING* vr$612 = fb_StrConcat( &TMP$3533$8, (void*)"mov DWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3534$8, 0, 12 );
								FBSTRING* vr$615 = fb_StrConcat( &TMP$3534$8, (void*)vr$612, -1, (void*)"], eax", 7 );
								fb_StrAssign( (void*)&TMP$3535$8, -1, (void*)vr$615, -1, 0 );
								HWRITEASM64( &TMP$3535$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3535$8 );
							}
							goto label$2731;
							label$2732:;
							{
								FBSTRING TMP$3536$8;
								FBSTRING TMP$3537$8;
								FBSTRING TMP$3538$8;
								__builtin_memset( &TMP$3538$8, 0, 12 );
								__builtin_memset( &TMP$3536$8, 0, 12 );
								FBSTRING* vr$623 = fb_StrConcat( &TMP$3536$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3537$8, 0, 12 );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3537$8, (void*)vr$623, -1, (void*)", eax", 6 );
								fb_StrAssign( (void*)&TMP$3538$8, -1, (void*)vr$626, -1, 0 );
								HWRITEASM64( &TMP$3538$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3538$8 );
							}
							label$2731:;
						}
						goto label$2720;
						label$2729:;
						if( BYTES$1 != 8ll ) goto label$2733;
						label$2734:;
						{
							FBSTRING TMP$3539$7;
							FBSTRING TMP$3540$7;
							FBSTRING TMP$3541$7;
							__builtin_memset( &TMP$3541$7, 0, 12 );
							__builtin_memset( &TMP$3539$7, 0, 12 );
							FBSTRING* vr$634 = fb_StrConcat( &TMP$3539$7, (void*)"mov rax, [", 11, *(void**)((uint8*)REGSTRQ$ + (REGSRC$1 << (2 & 31))), 0 );
							__builtin_memset( &TMP$3540$7, 0, 12 );
							FBSTRING* vr$637 = fb_StrConcat( &TMP$3540$7, (void*)vr$634, -1, (void*)"]", 2 );
							fb_StrAssign( (void*)&TMP$3541$7, -1, (void*)vr$637, -1, 0 );
							HWRITEASM64( &TMP$3541$7, 0 );
							fb_StrDelete( (FBSTRING*)&TMP$3541$7 );
							if( *(int32*)V1$1 != 4 ) goto label$2736;
							{
								FBSTRING TMP$3542$8;
								FBSTRING TMP$3543$8;
								FBSTRING TMP$3544$8;
								__builtin_memset( &TMP$3544$8, 0, 12 );
								__builtin_memset( &TMP$3542$8, 0, 12 );
								FBSTRING* vr$646 = fb_StrConcat( &TMP$3542$8, (void*)"mov QWORD PTR [", 16, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3543$8, 0, 12 );
								FBSTRING* vr$649 = fb_StrConcat( &TMP$3543$8, (void*)vr$646, -1, (void*)"], rax", 7 );
								fb_StrAssign( (void*)&TMP$3544$8, -1, (void*)vr$649, -1, 0 );
								HWRITEASM64( &TMP$3544$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3544$8 );
							}
							goto label$2735;
							label$2736:;
							{
								FBSTRING TMP$3545$8;
								FBSTRING TMP$3546$8;
								FBSTRING TMP$3547$8;
								__builtin_memset( &TMP$3547$8, 0, 12 );
								__builtin_memset( &TMP$3545$8, 0, 12 );
								FBSTRING* vr$657 = fb_StrConcat( &TMP$3545$8, (void*)"mov ", 5, (void*)&OP1$1, -1 );
								__builtin_memset( &TMP$3546$8, 0, 12 );
								FBSTRING* vr$660 = fb_StrConcat( &TMP$3546$8, (void*)vr$657, -1, (void*)", rax", 6 );
								fb_StrAssign( (void*)&TMP$3547$8, -1, (void*)vr$660, -1, 0 );
								HWRITEASM64( &TMP$3547$8, 0 );
								fb_StrDelete( (FBSTRING*)&TMP$3547$8 );
							}
							label$2735:;
						}
						label$2733:;
						label$2720:;
					}
				}
				label$2714:;
				label$2707:;
			}
		}
		label$2673:;
		label$2635:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2634:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	label$2737:;
	label$2738:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$2739:;
	FBSTRING ASMLINE$1;
	__builtin_memset( &ASMLINE$1, 0, 12 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$2741:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$2742;
	{
		{
			$14AST_ASMTOKTYPE TMP$3548$3;
			TMP$3548$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$3548$3 != 0 ) goto label$2744;
			label$2745:;
			{
				FBSTRING TMP$3549$4;
				__builtin_memset( &TMP$3549$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$3549$4, (void*)&ASMLINE$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$6, -1, 0 );
			}
			goto label$2743;
			label$2744:;
			if( TMP$3548$3 != 1 ) goto label$2746;
			label$2747:;
			{
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4) + 48);
				if( OFS$4 == 0ll ) goto label$2749;
				{
					int32 vr$11 = fb_StrLen( (void*)&ASMLINE$1, -1 );
					FBSTRING* vr$14 = fb_LEFT( (FBSTRING*)&ASMLINE$1, vr$11 + -1 );
					fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$14, -1, 0 );
					FBSTRING* vr$16 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)vr$16, -1, 0 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1, (void*)"[rbp", 5, 0 );
				}
				goto label$2748;
				label$2749:;
				{
					FBSTRING TMP$3551$5;
					uint8* vr$20 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
					__builtin_memset( &TMP$3551$5, 0, 12 );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$3551$5, (void*)&ASMLINE$1, -1, (void*)vr$20, 0 );
					fb_StrAssign( (void*)&ASMLINE$1, -1, (void*)vr$24, -1, 0 );
				}
				label$2748:;
			}
			goto label$2743;
			label$2746:;
			{
				FBSTRING TMP$3552$4;
				FBSTRING TMP$3555$4;
				FBSTRING TMP$3556$4;
				__builtin_memset( &TMP$3552$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3552$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3552$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3552$4 );
				__builtin_memset( &TMP$3555$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3555$4, -1, (void*)"FOUND AN ERROR : in emitasm token unknown", 42, 0 );
				HWRITEASM64( &TMP$3555$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3555$4 );
				__builtin_memset( &TMP$3556$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3556$4, -1, (void*)"", 1, 0 );
				HWRITEASM64( &TMP$3556$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3556$4 );
			}
			label$2750:;
			label$2743:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$2741;
	label$2742:;
	HWRITEASM64( &ASMLINE$1, 0 );
	fb_StrDelete( (FBSTRING*)&ASMLINE$1 );
	label$2740:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$3558$1;
	FBSTRING TMP$3562$1;
	FBSTRING TMP$3563$1;
	FBSTRING TMP$3564$1;
	FBSTRING TMP$3565$1;
	label$2751:;
	int32 ALIGN$1;
	__builtin_memset( &ALIGN$1, 0, 4 );
	if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$2754;
	{
		ALIGN$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) + 104);
	}
	goto label$2753;
	label$2754:;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$2756;
		{
			ALIGN$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 368);
		}
		goto label$2755;
		label$2756:;
		{
			int32 TMP$3557$3;
			if( ((*(int32*)((uint8*)SYM$1 + 28) & 511) & 480) == 0 ) goto label$2757;
			TMP$3557$3 = 24;
			goto label$3062;
			label$2757:;
			TMP$3557$3 = (*(int32*)((uint8*)SYM$1 + 28) & 511) & 31;
			label$3062:;
			ALIGN$1 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$3557$3 * 28)) + 4);
		}
		label$2755:;
	}
	label$2753:;
	__builtin_memset( &TMP$3558$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3558$1, -1, (void*)".data", 6, 0 );
	ASM_SECTION( &TMP$3558$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3558$1 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32) == 0 ) goto label$2759;
	{
		FBSTRING TMP$3559$2;
		FBSTRING TMP$3560$2;
		__builtin_memset( &TMP$3560$2, 0, 12 );
		uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$3559$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3559$2, (void*)".globl ", 8, (void*)vr$21, 0 );
		fb_StrAssign( (void*)&TMP$3560$2, -1, (void*)vr$24, -1, 0 );
		HWRITEASM64( &TMP$3560$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3560$2 );
	}
	label$2759:;
	label$2758:;
	__builtin_memset( &TMP$3563$1, 0, 12 );
	FBSTRING* vr$29 = fb_IntToStr( ALIGN$1 );
	__builtin_memset( &TMP$3562$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3562$1, (void*)".align ", 8, (void*)vr$29, -1 );
	fb_StrAssign( (void*)&TMP$3563$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3563$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3563$1 );
	__builtin_memset( &TMP$3565$1, 0, 12 );
	uint8* vr$37 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$3564$1, 0, 12 );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$3564$1, (void*)vr$37, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3565$1, -1, (void*)vr$40, -1, 0 );
	HWRITEASM64( &TMP$3565$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3565$1 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 4) != 0)) == 0 ) goto label$2761;
	{
	}
	goto label$2760;
	label$2761:;
	{
		if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2763;
		{
			EDBGEMITGLOBALVAR_ASM64( SYM$1, 1 );
			label$2763:;
		}
	}
	label$2760:;
	label$2752:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	FBSTRING TMP$3573$1;
	FBSTRING TMP$3574$1;
	FBSTRING TMP$3575$1;
	FBSTRING TMP$3576$1;
	FBSTRING TMP$3577$1;
	label$2764:;
	FBSTRING SIZ$1;
	__builtin_memset( &SIZ$1, 0, 12 );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4 );
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	if( (DTYPE$1 & 480) == 0 ) goto label$2767;
	{
		DTYPE$1 = 8;
		label$2767:;
	}
	if( (-(DTYPE$1 == 1) & -(VALUE$1 != 0ll)) == 0 ) goto label$2769;
	{
		VALUE$1 = 1ll;
	}
	label$2769:;
	label$2768:;
	{
		int32 TMP$3566$2;
		uint32 TMP$3567$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$2770;
		TMP$3566$2 = 24;
		goto label$3063;
		label$2770:;
		TMP$3566$2 = DTYPE$1 & 31;
		label$3063:;
		TMP$3567$2 = *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$3566$2 * 28)) + 4);
		goto label$2772;
		label$2773:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".byte", 6, 0 );
			LGT$1 = 2;
		}
		goto label$2771;
		label$2774:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".word", 6, 0 );
			LGT$1 = 4;
		}
		goto label$2771;
		label$2775:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".long", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2771;
		label$2776:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 16;
		}
		goto label$2771;
		label$2777:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1, (void*)".quad", 6, 0 );
			LGT$1 = 8;
		}
		goto label$2771;
		label$2772:;
		static const void* tmp$3870[8] = {
			&&label$2773,
			&&label$2774,
			&&label$2777,
			&&label$2775,
			&&label$2777,
			&&label$2777,
			&&label$2777,
			&&label$2776,
		};
		if( (TMP$3567$2 - 1u) > 7u ) goto label$2777;
		goto *tmp$3870[TMP$3567$2 - 1u];
		label$2771:;
	}
	__builtin_memset( &TMP$3577$1, 0, 12 );
	FBSTRING* vr$17 = fb_LongintToStr( VALUE$1 );
	FBSTRING* vr$18 = fb_HEX_l( (uint64)VALUE$1 );
	FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)vr$18, LGT$1 );
	__builtin_memset( &TMP$3573$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3573$1, (void*)&SIZ$1, -1, (void*)" 0x", 4 );
	__builtin_memset( &TMP$3574$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3574$1, (void*)vr$23, -1, (void*)vr$19, -1 );
	__builtin_memset( &TMP$3575$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$3575$1, (void*)vr$26, -1, (void*)" # ", 4 );
	__builtin_memset( &TMP$3576$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3576$1, (void*)vr$29, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&TMP$3577$1, -1, (void*)vr$32, -1, 0 );
	HWRITEASM64( &TMP$3577$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3577$1 );
	fb_StrDelete( (FBSTRING*)&SIZ$1 );
	label$2765:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	FBSTRING TMP$3578$1;
	label$2778:;
	__builtin_memset( &TMP$3578$1, 0, 12 );
	FBSTRING* vr$3 = HFLOATTOHEX_ASM64( VALUE$1, *(int32*)((uint8*)SYM$1 + 28) & 511, (int8)1 );
	fb_StrAssign( (void*)&TMP$3578$1, -1, (void*)vr$3, -1, 0 );
	HWRITEASM64( &TMP$3578$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3578$1 );
	label$2779:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$3586$1;
	FBSTRING TMP$3589$1;
	FBSTRING TMP$3590$1;
	label$2780:;
	IRHLEMITPROCBEGIN(  );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 44), -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 68), -1, (void*)"", 1, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 200) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 204) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&CTX$ + 120) = -2;
	*(int32*)((uint8*)&CTX$ + 124) = 0;
	*(int32*)((uint8*)&CTX$ + 220) = 0;
	*(boolean*)((uint8*)&CTX$ + 208) = (boolean)0;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 56), -1, (void*)"", 1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	*(boolean*)((uint8*)&CTX$ + 137) = (boolean)0;
	*(int32*)((uint8*)&CTXDBG$ + 4) = -1;
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	*(int32*)((uint8*)&CTX$ + 84) = 0;
	*(int32*)((uint8*)&CTX$ + 88) = 0;
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2783;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 16;
		*(int32*)((uint8*)&CTX$ + 96) = 40;
	}
	goto label$2782;
	label$2783:;
	{
		*(int32*)((uint8*)&CTX$ + 92) = 8;
		*(int32*)((uint8*)&CTX$ + 96) = 56;
	}
	label$2782:;
	*(int32*)((uint8*)&CTX$ + 80) = 0;
	*(int32*)((uint8*)&CTX$ + 112) = 0;
	*(int32*)((uint8*)&CTX$ + 100) = 0;
	if( (*(int32*)((uint8*)PROC$1 + 4) & 256) == 0 ) goto label$2785;
	{
		FBSTRING TMP$3580$2;
		FBSTRING TMP$3582$2;
		FBSTRING TMP$3583$2;
		FBSTRING TMP$3584$2;
		FBSTRING TMP$3585$2;
		__builtin_memset( &TMP$3580$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3580$2, -1, (void*)".drectve", 9, 0 );
		ASM_SECTION( &TMP$3580$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3580$2 );
		__builtin_memset( &TMP$3584$2, 0, 12 );
		uint8* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3582$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3582$2, (void*)".ascii \x22 -export:", 18, (void*)vr$11, 0 );
		__builtin_memset( &TMP$3583$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$3583$2, (void*)vr$14, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$3584$2, -1, (void*)vr$17, -1, 0 );
		HWRITEASM64( &TMP$3584$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3584$2 );
		__builtin_memset( &TMP$3585$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3585$2, -1, (void*)".text", 6, 0 );
		ASM_SECTION( &TMP$3585$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3585$2 );
	}
	label$2785:;
	label$2784:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$2787;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$2789;
		{
			*(boolean*)((uint8*)&CTX$ + 208) = (boolean)1;
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2791;
			{
				*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 96) + 112;
			}
			label$2791:;
			label$2790:;
		}
		label$2789:;
		label$2788:;
	}
	label$2787:;
	label$2786:;
	__builtin_memset( &TMP$3586$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3586$1, -1, (void*)".text", 6, 0 );
	HWRITEASM64( &TMP$3586$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3586$1 );
	if( (*(int32*)((uint8*)PROC$1 + 4) & 64) != 0 ) goto label$2793;
	{
		FBSTRING TMP$3587$2;
		FBSTRING TMP$3588$2;
		__builtin_memset( &TMP$3588$2, 0, 12 );
		uint8* vr$35 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3587$2, 0, 12 );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$3587$2, (void*)".globl ", 8, (void*)vr$35, 0 );
		fb_StrAssign( (void*)&TMP$3588$2, -1, (void*)vr$38, -1, 0 );
		HWRITEASM64( &TMP$3588$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3588$2 );
	}
	label$2793:;
	label$2792:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	__builtin_memset( &TMP$3590$1, 0, 12 );
	uint8* vr$44 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3589$1, 0, 12 );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$3589$1, (void*)vr$44, 0, (void*)":", 2 );
	fb_StrAssign( (void*)&TMP$3590$1, -1, (void*)vr$47, -1, 0 );
	HWRITEASM64( &TMP$3590$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3590$1 );
	*(int32*)&CTX$ = *(int32*)&CTX$ + 1;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2795;
	{
		EDBGEMITPROCHEADER_ASM64( PROC$1 );
		label$2795:;
	}
	*(int32*)((uint8*)&CTX$ + 4) = 4;
	label$2781:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$3687$1;
	label$2796:;
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4 );
	FBSTRING RESTREG$1;
	__builtin_memset( &RESTREG$1, 0, 12 );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	if( *(int32*)((uint8*)&CTX$ + 100) <= *(int32*)((uint8*)&CTX$ + 96) ) goto label$2799;
	{
		*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 100);
		label$2799:;
	}
	if( *(int32*)((uint8*)&CTX$ + 212) != 0 ) goto label$2801;
	{
		if( *(int32*)((uint8*)&CTX$ + 80) == 0 ) goto label$2803;
		{
			int32 TMP$3591$3;
			if( *(int32*)((uint8*)&CTX$ + 80) <= 4 ) goto label$2804;
			TMP$3591$3 = *(int32*)((uint8*)&CTX$ + 80) << (3 & 31);
			goto label$3064;
			label$2804:;
			TMP$3591$3 = 32;
			label$3064:;
			*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 96) + TMP$3591$3;
			label$2803:;
		}
	}
	goto label$2800;
	label$2801:;
	{
		*(int32*)((uint8*)&CTX$ + 96) = *(int32*)((uint8*)&CTX$ + 96) + (*(int32*)((uint8*)&CTX$ + 80) << (3 & 31));
	}
	label$2800:;
	*(int32*)((uint8*)&CTX$ + 96) = (*(int32*)((uint8*)&CTX$ + 96) + 15) & -16;
	*(int32*)((uint8*)&CTX$ + 4) = 3;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2806;
	{
		FBSTRING TMP$3593$2;
		FBSTRING TMP$3595$2;
		FBSTRING TMP$3597$2;
		FBSTRING TMP$3598$2;
		__builtin_memset( &TMP$3593$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3593$2, -1, (void*)"push rbp", 9, 0 );
		HWRITEASM64( &TMP$3593$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3593$2 );
		__builtin_memset( &TMP$3595$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3595$2, -1, (void*)"mov  rbp,rsp", 13, 0 );
		HWRITEASM64( &TMP$3595$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3595$2 );
		__builtin_memset( &TMP$3598$2, 0, 12 );
		FBSTRING* vr$20 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 96) );
		__builtin_memset( &TMP$3597$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$3597$2, (void*)"sub rsp, ", 10, (void*)vr$20, -1 );
		fb_StrAssign( (void*)&TMP$3598$2, -1, (void*)vr$23, -1, 0 );
		HWRITEASM64( &TMP$3598$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3598$2 );
		if( (*(int32*)((uint8*)&CTX$ + 112) & 2) == 0 ) goto label$2808;
		{
			FBSTRING TMP$3600$3;
			__builtin_memset( &TMP$3600$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3600$3, -1, (void*)"mov QWORD PTR -8[rbp], rbx", 27, 0 );
			HWRITEASM64( &TMP$3600$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3600$3 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rbx, QWORD PTR -8[rbp]\x0A", 29, 0 );
			FBSTRING* vr$34 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$34, -1, 0 );
			label$2808:;
		}
		if( *(int32*)((uint8*)&CTX$ + 212) != 0 ) goto label$2810;
		{
			if( (*(int32*)((uint8*)&CTX$ + 112) & 32) == 0 ) goto label$2812;
			{
				FBSTRING TMP$3604$4;
				__builtin_memset( &TMP$3604$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3604$4, -1, (void*)"mov QWORD PTR -16[rbp], rdi", 28, 0 );
				HWRITEASM64( &TMP$3604$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3604$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rdi, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$43 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$43, -1, 0 );
				label$2812:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 16) == 0 ) goto label$2814;
			{
				FBSTRING TMP$3608$4;
				__builtin_memset( &TMP$3608$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3608$4, -1, (void*)"mov QWORD PTR -24[rbp], rsi", 28, 0 );
				HWRITEASM64( &TMP$3608$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3608$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  rsi, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$52 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$52, -1, 0 );
				label$2814:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 4096) == 0 ) goto label$2816;
			{
				FBSTRING TMP$3612$4;
				__builtin_memset( &TMP$3612$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3612$4, -1, (void*)"mov QWORD PTR -32[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3612$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3612$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$61 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$61, -1, 0 );
				label$2816:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 8192) == 0 ) goto label$2818;
			{
				FBSTRING TMP$3616$4;
				__builtin_memset( &TMP$3616$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3616$4, -1, (void*)"mov QWORD PTR -40[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3616$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3616$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$70 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$70, -1, 0 );
				label$2818:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 16384) == 0 ) goto label$2820;
			{
				FBSTRING TMP$3620$4;
				__builtin_memset( &TMP$3620$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3620$4, -1, (void*)"mov QWORD PTR -48[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3620$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3620$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -48[rbp]\x0A", 30, 0 );
				FBSTRING* vr$79 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$79, -1, 0 );
				label$2820:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 32768) == 0 ) goto label$2822;
			{
				FBSTRING TMP$3624$4;
				__builtin_memset( &TMP$3624$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3624$4, -1, (void*)"mov QWORD PTR -56[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3624$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3624$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -56[rbp]\x0A", 30, 0 );
				FBSTRING* vr$88 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$88, -1, 0 );
				label$2822:;
			}
		}
		goto label$2809;
		label$2810:;
		{
			if( (*(int32*)((uint8*)&CTX$ + 112) & 4096) == 0 ) goto label$2824;
			{
				FBSTRING TMP$3628$4;
				__builtin_memset( &TMP$3628$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3628$4, -1, (void*)"mov QWORD PTR -16[rbp], r12", 28, 0 );
				HWRITEASM64( &TMP$3628$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3628$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r12, QWORD PTR -16[rbp]\x0A", 30, 0 );
				FBSTRING* vr$97 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$97, -1, 0 );
				label$2824:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 8192) == 0 ) goto label$2826;
			{
				FBSTRING TMP$3632$4;
				__builtin_memset( &TMP$3632$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3632$4, -1, (void*)"mov QWORD PTR -24[rbp], r13", 28, 0 );
				HWRITEASM64( &TMP$3632$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3632$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r13, QWORD PTR -24[rbp]\x0A", 30, 0 );
				FBSTRING* vr$106 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$106, -1, 0 );
				label$2826:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 16384) == 0 ) goto label$2828;
			{
				FBSTRING TMP$3636$4;
				__builtin_memset( &TMP$3636$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3636$4, -1, (void*)"mov QWORD PTR -32[rbp], r14", 28, 0 );
				HWRITEASM64( &TMP$3636$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3636$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r14, QWORD PTR -32[rbp]\x0A", 30, 0 );
				FBSTRING* vr$115 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$115, -1, 0 );
				label$2828:;
			}
			if( (*(int32*)((uint8*)&CTX$ + 112) & 32768) == 0 ) goto label$2830;
			{
				FBSTRING TMP$3640$4;
				__builtin_memset( &TMP$3640$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3640$4, -1, (void*)"mov QWORD PTR -40[rbp], r15", 28, 0 );
				HWRITEASM64( &TMP$3640$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3640$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)"mov  r15, QWORD PTR -40[rbp]\x0A", 30, 0 );
				FBSTRING* vr$124 = fb_StrFill1( *(int32*)&CTX$ * 3, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1, (void*)vr$124, -1, 0 );
				label$2830:;
			}
		}
		label$2809:;
		int32 vr$127 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$127 == 0 ) goto label$2832;
		{
			FBSTRING* vr$129 = fb_RTRIM( (FBSTRING*)&RESTREG$1 );
			fb_StrAssign( (void*)&RESTREG$1, -1, (void*)vr$129, -1, 0 );
			label$2832:;
		}
	}
	label$2806:;
	label$2805:;
	if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2834;
	{
		if( *(boolean*)((uint8*)&CTX$ + 208) == (boolean)0 ) goto label$2836;
		{
			FBSTRING TMP$3656$3;
			FBSTRING TMP$3657$3;
			FBSTRING TMP$3658$3;
			FBSTRING TMP$3675$3;
			FBSTRING TMP$3676$3;
			if( *(int32*)((uint8*)&CTX$ + 84) >= 1 ) goto label$2838;
			{
				FBSTRING TMP$3644$4;
				__builtin_memset( &TMP$3644$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3644$4, -1, (void*)"mov QWORD PTR -152[rbp], rdi", 29, 0 );
				HWRITEASM64( &TMP$3644$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3644$4 );
				label$2838:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 2 ) goto label$2840;
			{
				FBSTRING TMP$3646$4;
				__builtin_memset( &TMP$3646$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3646$4, -1, (void*)"mov QWORD PTR -144[rbp], rsi", 29, 0 );
				HWRITEASM64( &TMP$3646$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3646$4 );
				label$2840:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 3 ) goto label$2842;
			{
				FBSTRING TMP$3648$4;
				__builtin_memset( &TMP$3648$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3648$4, -1, (void*)"mov QWORD PTR -136[rbp], rdx", 29, 0 );
				HWRITEASM64( &TMP$3648$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3648$4 );
				label$2842:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 4 ) goto label$2844;
			{
				FBSTRING TMP$3650$4;
				__builtin_memset( &TMP$3650$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3650$4, -1, (void*)"mov QWORD PTR -128[rbp], rcx", 29, 0 );
				HWRITEASM64( &TMP$3650$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3650$4 );
				label$2844:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 5 ) goto label$2846;
			{
				FBSTRING TMP$3652$4;
				__builtin_memset( &TMP$3652$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3652$4, -1, (void*)"mov QWORD PTR -120[rbp], r8", 28, 0 );
				HWRITEASM64( &TMP$3652$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3652$4 );
				label$2846:;
			}
			if( *(int32*)((uint8*)&CTX$ + 84) >= 6 ) goto label$2848;
			{
				FBSTRING TMP$3654$4;
				__builtin_memset( &TMP$3654$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3654$4, -1, (void*)"mov QWORD PTR -112[rbp], r9", 28, 0 );
				HWRITEASM64( &TMP$3654$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3654$4 );
				label$2848:;
			}
			uint8* vr$155 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$155, 0, 0 );
			__builtin_memset( &TMP$3656$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3656$3, -1, (void*)"test eax, eax", 14, 0 );
			HWRITEASM64( &TMP$3656$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3656$3 );
			__builtin_memset( &TMP$3658$3, 0, 12 );
			__builtin_memset( &TMP$3657$3, 0, 12 );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$3657$3, (void*)"jz ", 4, (void*)&LNAME$1, -1 );
			fb_StrAssign( (void*)&TMP$3658$3, -1, (void*)vr$165, -1, 0 );
			HWRITEASM64( &TMP$3658$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3658$3 );
			if( *(int32*)((uint8*)&CTX$ + 88) >= 1 ) goto label$2850;
			{
				FBSTRING TMP$3660$4;
				__builtin_memset( &TMP$3660$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3660$4, -1, (void*)"movq QWORD PTR -104[rbp], xmm0", 31, 0 );
				HWRITEASM64( &TMP$3660$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3660$4 );
				label$2850:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 2 ) goto label$2852;
			{
				FBSTRING TMP$3662$4;
				__builtin_memset( &TMP$3662$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3662$4, -1, (void*)"movq QWORD PTR -96[rbp], xmm1", 30, 0 );
				HWRITEASM64( &TMP$3662$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3662$4 );
				label$2852:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 3 ) goto label$2854;
			{
				FBSTRING TMP$3664$4;
				__builtin_memset( &TMP$3664$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3664$4, -1, (void*)"movq QWORD PTR -88[rbp], xmm2", 30, 0 );
				HWRITEASM64( &TMP$3664$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3664$4 );
				label$2854:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 4 ) goto label$2856;
			{
				FBSTRING TMP$3666$4;
				__builtin_memset( &TMP$3666$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3666$4, -1, (void*)"movq QWORD PTR -80[rbp], xmm3", 30, 0 );
				HWRITEASM64( &TMP$3666$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3666$4 );
				label$2856:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 5 ) goto label$2858;
			{
				FBSTRING TMP$3668$4;
				__builtin_memset( &TMP$3668$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3668$4, -1, (void*)"movq QWORD PTR -72[rbp], xmm4", 30, 0 );
				HWRITEASM64( &TMP$3668$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3668$4 );
				label$2858:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 6 ) goto label$2860;
			{
				FBSTRING TMP$3670$4;
				__builtin_memset( &TMP$3670$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3670$4, -1, (void*)"movq QWORD PTR -64[rbp], xmm5", 30, 0 );
				HWRITEASM64( &TMP$3670$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3670$4 );
				label$2860:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 7 ) goto label$2862;
			{
				FBSTRING TMP$3672$4;
				__builtin_memset( &TMP$3672$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3672$4, -1, (void*)"movq QWORD PTR -56[rbp], xmm6", 30, 0 );
				HWRITEASM64( &TMP$3672$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3672$4 );
				label$2862:;
			}
			if( *(int32*)((uint8*)&CTX$ + 88) >= 8 ) goto label$2864;
			{
				FBSTRING TMP$3674$4;
				__builtin_memset( &TMP$3674$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3674$4, -1, (void*)"movq QWORD PTR -48[rbp], xmm7", 30, 0 );
				HWRITEASM64( &TMP$3674$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3674$4 );
				label$2864:;
			}
			__builtin_memset( &TMP$3676$3, 0, 12 );
			__builtin_memset( &TMP$3675$3, 0, 12 );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$3675$3, (void*)&LNAME$1, -1, (void*)":", 2 );
			fb_StrAssign( (void*)&TMP$3676$3, -1, (void*)vr$205, -1, 0 );
			HWRITEASM64( &TMP$3676$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3676$3 );
		}
		label$2836:;
		label$2835:;
	}
	label$2834:;
	label$2833:;
	*(int32*)((uint8*)&CTX$ + 4) = 5;
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2866;
	{
		FBSTRING TMP$3677$2;
		FBSTRING TMP$3678$2;
		FBSTRING TMP$3679$2;
		FBSTRING TMP$3680$2;
		FBSTRING TMP$3681$2;
		FBSTRING TMP$3682$2;
		uint8* vr$209 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$209, 0, 0 );
		__builtin_memset( &TMP$3680$2, 0, 12 );
		uint8* vr$212 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3678$2, 0, 12 );
		FBSTRING* vr$216 = fb_StrConcat( &TMP$3678$2, (void*)&LNAME$1, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3679$2, 0, 12 );
		FBSTRING* vr$219 = fb_StrConcat( &TMP$3679$2, (void*)vr$216, -1, (void*)vr$212, 0 );
		fb_StrAssign( (void*)&TMP$3680$2, -1, (void*)vr$219, -1, 0 );
		__builtin_memset( &TMP$3677$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3677$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3677$2, (uint8)224u, (int16)0, &TMP$3680$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3680$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3677$2 );
		__builtin_memset( &TMP$3682$2, 0, 12 );
		__builtin_memset( &TMP$3681$2, 0, 12 );
		FBSTRING* vr$231 = fb_StrConcat( &TMP$3681$2, (void*)&LNAME$1, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3682$2, -1, (void*)vr$231, -1, 0 );
		HWRITEASM64( &TMP$3682$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3682$2 );
	}
	label$2866:;
	label$2865:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 128) != 0 ) goto label$2868;
	{
		FBSTRING TMP$3684$2;
		FBSTRING TMP$3686$2;
		int32 vr$238 = fb_StrCompare( (void*)&RESTREG$1, -1, (void*)"", 1 );
		if( vr$238 == 0 ) goto label$2870;
		{
			HWRITEASM64( &RESTREG$1, 0 );
			label$2870:;
		}
		__builtin_memset( &TMP$3684$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3684$2, -1, (void*)"mov rsp,rbp", 12, 0 );
		HWRITEASM64( &TMP$3684$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3684$2 );
		__builtin_memset( &TMP$3686$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3686$2, -1, (void*)"pop rbp", 8, 0 );
		HWRITEASM64( &TMP$3686$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3686$2 );
	}
	label$2868:;
	label$2867:;
	__builtin_memset( &TMP$3687$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3687$1, -1, (void*)"ret", 4, 0 );
	HWRITEASM64( &TMP$3687$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3687$1 );
	if( *(int32*)((uint8*)&ENV$ + 148) != -1 ) goto label$2872;
	{
		FBSTRING TMP$3688$2;
		FBSTRING TMP$3689$2;
		FBSTRING TMP$3690$2;
		FBSTRING TMP$3691$2;
		FBSTRING TMP$3692$2;
		FBSTRING TMP$3693$2;
		FBSTRING LNAME$2;
		uint8* vr$252 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1, (void*)vr$252, 0, 0 );
		__builtin_memset( &TMP$3691$2, 0, 12 );
		uint8* vr$255 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 32) );
		__builtin_memset( &TMP$3689$2, 0, 12 );
		FBSTRING* vr$259 = fb_StrConcat( &TMP$3689$2, (void*)&LNAME$2, -1, (void*)"-", 2 );
		__builtin_memset( &TMP$3690$2, 0, 12 );
		FBSTRING* vr$262 = fb_StrConcat( &TMP$3690$2, (void*)vr$259, -1, (void*)vr$255, 0 );
		fb_StrAssign( (void*)&TMP$3691$2, -1, (void*)vr$262, -1, 0 );
		__builtin_memset( &TMP$3688$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3688$2, -1, (void*)"", 1, 0 );
		DBG_ADDSTAB( &TMP$3688$2, (uint8)36u, (int16)0, &TMP$3691$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3691$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3688$2 );
		__builtin_memset( &TMP$3693$2, 0, 12 );
		__builtin_memset( &TMP$3692$2, 0, 12 );
		FBSTRING* vr$274 = fb_StrConcat( &TMP$3692$2, (void*)&LNAME$2, -1, (void*)":", 2 );
		fb_StrAssign( (void*)&TMP$3693$2, -1, (void*)vr$274, -1, 0 );
		HWRITEASM64( &TMP$3693$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3693$2 );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$2872:;
	label$2871:;
	*(int32*)&CTX$ = *(int32*)&CTX$ + -1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&CTX$ + 140) );
	*(int32*)((uint8*)&CTX$ + 196) = 0;
	IRHLEMITPROCEND(  );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 44), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 56), -1, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 20), -1, (void*)((uint8*)&CTX$ + 68), -1, 0 );
	*(int32*)((uint8*)&CTX$ + 4) = 0;
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&RESTREG$1 );
	label$2797:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$2873:;
	FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, 0, 0 );
	int32 SYMDTYPE$1;
	SYMDTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
	int32 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int32*)((uint8*)RHS$1 + 28) & 511) & 31) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 480) + 32)) | (((*(int32*)((uint8*)RHS$1 + 28) & 511) & 261632) << (1 & 31))) | ((*(int32*)((uint8*)RHS$1 + 28) & 511) & 32505856);
	if( OFS$1 == 0ll ) goto label$2876;
	{
		FBSTRING TMP$3694$2;
		FBSTRING TMP$3695$2;
		FBSTRING TMP$3696$2;
		FBSTRING TMP$3697$2;
		__builtin_memset( &TMP$3697$2, 0, 12 );
		FBSTRING* vr$22 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$3694$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$3694$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		__builtin_memset( &TMP$3695$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$3695$2, (void*)vr$26, -1, (void*)"+", 2 );
		__builtin_memset( &TMP$3696$2, 0, 12 );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$3696$2, (void*)vr$29, -1, (void*)vr$22, -1 );
		fb_StrAssign( (void*)&TMP$3697$2, -1, (void*)vr$32, -1, 0 );
		HWRITEASM64( &TMP$3697$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3697$2 );
	}
	goto label$2875;
	label$2876:;
	{
		FBSTRING TMP$3698$2;
		FBSTRING TMP$3699$2;
		__builtin_memset( &TMP$3699$2, 0, 12 );
		__builtin_memset( &TMP$3698$2, 0, 12 );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$3698$2, (void*)".quad ", 7, (void*)&S$1, -1 );
		fb_StrAssign( (void*)&TMP$3699$2, -1, (void*)vr$40, -1, 0 );
		HWRITEASM64( &TMP$3699$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3699$2 );
	}
	label$2875:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$2874:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	FBSTRING TMP$3701$1;
	FBSTRING TMP$3702$1;
	label$2877:;
	__builtin_memset( &TMP$3702$1, 0, 12 );
	FBSTRING* vr$1 = fb_LongintToStr( BYTES$1 );
	__builtin_memset( &TMP$3701$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$3701$1, (void*)".zero ", 7, (void*)vr$1, -1 );
	fb_StrAssign( (void*)&TMP$3702$1, -1, (void*)vr$4, -1, 0 );
	HWRITEASM64( &TMP$3702$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3702$1 );
	label$2878:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$3704$1;
	FBSTRING TMP$3705$1;
	FBSTRING TMP$3706$1;
	FBSTRING TMP$3707$1;
	label$2879:;
	__builtin_memset( &TMP$3704$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$3704$1, -1, (void*)".fbctinf", 9, 0 );
	ASM_SECTION( &TMP$3704$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3704$1 );
	__builtin_memset( &TMP$3707$1, 0, 12 );
	__builtin_memset( &TMP$3705$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$3705$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3706$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$3706$1, (void*)vr$7, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3707$1, -1, (void*)vr$10, -1, 0 );
	HWRITEASM64( &TMP$3707$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3707$1 );
	label$2880:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	FBSTRING TMP$3711$1;
	FBSTRING TMP$3712$1;
	FBSTRING TMP$3713$1;
	label$2881:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	if( VARLENGTH$1 != 0ll ) goto label$2884;
	{
		FBSTRING TMP$3709$2;
		__builtin_memset( &TMP$3709$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$3709$2, -1, (void*)".byte 0 # 0", 12, 0 );
		HWRITEASM64( &TMP$3709$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3709$2 );
		goto label$2882;
	}
	label$2884:;
	label$2883:;
	if( VARLENGTH$1 >= LITLENGTH$1 ) goto label$2886;
	{
		FBSTRING TMP$3710$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		__builtin_memset( &TMP$3710$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)LITERAL$1 );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)vr$7, (int32)VARLENGTH$1 );
		fb_StrAssign( (void*)&TMP$3710$2, -1, (void*)vr$8, -1, 0 );
		uint8* vr$10 = HESCAPE( (uint8*)*(uint8**)&TMP$3710$2 );
		S$1 = vr$10;
		fb_StrDelete( (FBSTRING*)&TMP$3710$2 );
	}
	goto label$2885;
	label$2886:;
	{
		uint8* vr$12 = HESCAPE( (uint8*)LITERAL$1 );
		S$1 = vr$12;
	}
	label$2885:;
	__builtin_memset( &TMP$3713$1, 0, 12 );
	__builtin_memset( &TMP$3711$1, 0, 12 );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$3711$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3712$1, 0, 12 );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$3712$1, (void*)vr$16, -1, (void*)"\x5C" "0\x22", 4 );
	fb_StrAssign( (void*)&TMP$3713$1, -1, (void*)vr$19, -1, 0 );
	HWRITEASM64( &TMP$3713$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$3713$1 );
	if( LITLENGTH$1 >= VARLENGTH$1 ) goto label$2888;
	{
		FBSTRING TMP$3714$2;
		FBSTRING TMP$3715$2;
		__builtin_memset( &TMP$3715$2, 0, 12 );
		FBSTRING* vr$25 = fb_LongintToStr( VARLENGTH$1 - LITLENGTH$1 );
		__builtin_memset( &TMP$3714$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$3714$2, (void*)".zero ", 7, (void*)vr$25, -1 );
		fb_StrAssign( (void*)&TMP$3715$2, -1, (void*)vr$28, -1, 0 );
		HWRITEASM64( &TMP$3715$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3715$2 );
	}
	label$2888:;
	label$2887:;
	label$2882:;
}

static void _EMITVARINIWSTR( int64 TOTLGT$1, uint32* LITSTR$1, int64 LITLGT$1 )
{
	FBSTRING TMP$3724$1;
	FBSTRING TMP$3725$1;
	FBSTRING TMP$3726$1;
	label$2889:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 12 );
	int32 WCLEN$1;
	WCLEN$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 200);
	if( TOTLGT$1 != 0ll ) goto label$2892;
	{
		if( WCLEN$1 != 2 ) goto label$2894;
		{
			FBSTRING TMP$3718$3;
			__builtin_memset( &TMP$3718$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3718$3, -1, (void*)".word 0", 8, 0 );
			HWRITEASM64( &TMP$3718$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3718$3 );
		}
		goto label$2893;
		label$2894:;
		{
			FBSTRING TMP$3720$3;
			__builtin_memset( &TMP$3720$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$3720$3, -1, (void*)".long 0", 8, 0 );
			HWRITEASM64( &TMP$3720$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$3720$3 );
		}
		label$2893:;
		fb_StrDelete( (FBSTRING*)&OSTR$1 );
		goto label$2890;
	}
	label$2892:;
	label$2891:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$2896;
	{
		uint32* TMP$3721$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		uint32* vr$12 = fb_WstrLeft( (uint32*)LITSTR$1, (int32)TOTLGT$1 );
		TMP$3721$2 = vr$12;
		uint8* vr$13 = HESCAPEW( TMP$3721$2 );
		S$1 = vr$13;
		fb_WstrDelete( (uint32*)TMP$3721$2 );
	}
	goto label$2895;
	label$2896:;
	{
		uint8* vr$14 = HESCAPEW( LITSTR$1 );
		S$1 = vr$14;
	}
	label$2895:;
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8 );
	FBSTRING* vr$17 = fb_LEFT( (FBSTRING*)vr$16, *(int32*)((uint8*)SYMB_DTYPETB$ + 200) << (1 & 31) );
	__builtin_memset( &TMP$3724$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$3724$1, (void*)".ascii \x22", 9, (void*)S$1, 0 );
	__builtin_memset( &TMP$3725$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$3725$1, (void*)vr$20, -1, (void*)vr$17, -1 );
	__builtin_memset( &TMP$3726$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$3726$1, (void*)vr$23, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$26, -1, 0 );
	HWRITEASM64( &OSTR$1, 0 );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$2898;
	{
		FBSTRING TMP$3727$2;
		FBSTRING TMP$3728$2;
		__builtin_memset( &TMP$3728$2, 0, 12 );
		FBSTRING* vr$33 = fb_LongintToStr( (TOTLGT$1 - LITLGT$1) * (int64)WCLEN$1 );
		__builtin_memset( &TMP$3727$2, 0, 12 );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$3727$2, (void*)".zero ", 7, (void*)vr$33, -1 );
		fb_StrAssign( (void*)&TMP$3728$2, -1, (void*)vr$36, -1, 0 );
		HWRITEASM64( &TMP$3728$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$3728$2 );
	}
	label$2898:;
	label$2897:;
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$2890:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$2899:;
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 4 );
	struct $6IRVREG* TEMPO2$1;
	__builtin_memset( &TEMPO2$1, 0, 4 );
	int32 SAVEREG$1;
	__builtin_memset( &SAVEREG$1, 0, 4 );
	int32 STARTARG$1;
	__builtin_memset( &STARTARG$1, 0, 4 );
	int32 VREG$1;
	__builtin_memset( &VREG$1, 0, 4 );
	FBSTRING REGVALIST$1;
	__builtin_memset( &REGVALIST$1, 0, 12 );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 12 );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 12 );
	if( *(int32*)((uint8*)&CTX$ + 212) != 0 ) goto label$2902;
	{
		*($11FB_DATATYPE*)((uint8*)V1$1 + 4) = 8;
	}
	label$2902:;
	label$2901:;
	{
		if( OP$1 != 109 ) goto label$2904;
		label$2905:;
		{
			struct $6IRVREG* vr$9 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
			TEMPO1$1 = vr$9;
			REG_FINDFREE( *(int32*)((uint8*)TEMPO1$1 + 12), -1 );
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2907;
			{
				FBSTRING TMP$3730$4;
				FBSTRING TMP$3731$4;
				FBSTRING TMP$3732$4;
				FBSTRING TMP$3733$4;
				FBSTRING TMP$3735$4;
				FBSTRING TMP$3736$4;
				FBSTRING TMP$3737$4;
				FBSTRING TMP$3738$4;
				int32 TMP$3739$4;
				int32 TMP$3740$4;
				FBSTRING TMP$3742$4;
				FBSTRING TMP$3743$4;
				FBSTRING TMP$3744$4;
				FBSTRING TMP$3746$4;
				FBSTRING TMP$3747$4;
				FBSTRING TMP$3748$4;
				FBSTRING TMP$3750$4;
				FBSTRING TMP$3752$4;
				FBSTRING TMP$3753$4;
				FBSTRING TMP$3754$4;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$12 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$12 << (2 & 31))), 0, 0 );
				__builtin_memset( &TMP$3733$4, 0, 12 );
				FBSTRING* vr$17 = fb_IntToStr( *(int32*)((uint8*)&CTX$ + 84) << (3 & 31) );
				__builtin_memset( &TMP$3730$4, 0, 12 );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$3730$4, (void*)"mov DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3731$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$3731$4, (void*)vr$21, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3732$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$3732$4, (void*)vr$24, -1, (void*)vr$17, -1 );
				fb_StrAssign( (void*)&TMP$3733$4, -1, (void*)vr$27, -1, 0 );
				HWRITEASM64( &TMP$3733$4, 1 );
				fb_StrDelete( (FBSTRING*)&TMP$3733$4 );
				__builtin_memset( &TMP$3738$4, 0, 12 );
				FBSTRING* vr$34 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 88) << (3 & 31)) + 48 );
				__builtin_memset( &TMP$3735$4, 0, 12 );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$3735$4, (void*)"mov DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3736$4, 0, 12 );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$3736$4, (void*)vr$38, -1, (void*)"], ", 4 );
				__builtin_memset( &TMP$3737$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$3737$4, (void*)vr$41, -1, (void*)vr$34, -1 );
				fb_StrAssign( (void*)&TMP$3738$4, -1, (void*)vr$44, -1, 0 );
				HWRITEASM64( &TMP$3738$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3738$4 );
				if( *(int32*)((uint8*)&CTX$ + 84) > 6 ) goto label$2908;
				TMP$3739$4 = 0;
				goto label$3065;
				label$2908:;
				TMP$3739$4 = *(int32*)((uint8*)&CTX$ + 84) + -6;
				label$3065:;
				if( *(int32*)((uint8*)&CTX$ + 88) > 8 ) goto label$2909;
				TMP$3740$4 = 0;
				goto label$3066;
				label$2909:;
				TMP$3740$4 = *(int32*)((uint8*)&CTX$ + 88) + -8;
				label$3066:;
				STARTARG$1 = ((TMP$3739$4 + TMP$3740$4) << (3 & 31)) + 16;
				__builtin_memset( &TMP$3744$4, 0, 12 );
				FBSTRING* vr$54 = fb_IntToStr( STARTARG$1 );
				__builtin_memset( &TMP$3742$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$3742$4, (void*)"lea rax,", 9, (void*)vr$54, -1 );
				__builtin_memset( &TMP$3743$4, 0, 12 );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$3743$4, (void*)vr$57, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3744$4, -1, (void*)vr$60, -1, 0 );
				HWRITEASM64( &TMP$3744$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3744$4 );
				__builtin_memset( &TMP$3748$4, 0, 12 );
				__builtin_memset( &TMP$3746$4, 0, 12 );
				FBSTRING* vr$68 = fb_StrConcat( &TMP$3746$4, (void*)"mov QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3747$4, 0, 12 );
				FBSTRING* vr$71 = fb_StrConcat( &TMP$3747$4, (void*)vr$68, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3748$4, -1, (void*)vr$71, -1, 0 );
				HWRITEASM64( &TMP$3748$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3748$4 );
				__builtin_memset( &TMP$3750$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$3750$4, -1, (void*)"lea rax, -152[rbp]", 19, 0 );
				HWRITEASM64( &TMP$3750$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3750$4 );
				__builtin_memset( &TMP$3754$4, 0, 12 );
				__builtin_memset( &TMP$3752$4, 0, 12 );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$3752$4, (void*)"mov QWORD PTR 16[", 18, (void*)&REGVALIST$1, -1 );
				__builtin_memset( &TMP$3753$4, 0, 12 );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$3753$4, (void*)vr$83, -1, (void*)"], rax", 7 );
				fb_StrAssign( (void*)&TMP$3754$4, -1, (void*)vr$86, -1, 0 );
				HWRITEASM64( &TMP$3754$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3754$4 );
			}
			goto label$2906;
			label$2907:;
			{
				FBSTRING TMP$3755$4;
				FBSTRING TMP$3756$4;
				FBSTRING TMP$3757$4;
				FBSTRING TMP$3758$4;
				FBSTRING TMP$3759$4;
				__builtin_memset( &TMP$3759$4, 0, 12 );
				FBSTRING* vr$93 = fb_IntToStr( (*(int32*)((uint8*)&CTX$ + 84) << (3 & 31)) + 16 );
				int32 vr$95 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				__builtin_memset( &TMP$3755$4, 0, 12 );
				FBSTRING* vr$99 = fb_StrConcat( &TMP$3755$4, (void*)"lea ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$95 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3756$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$3756$4, (void*)vr$99, -1, (void*)", ", 3 );
				__builtin_memset( &TMP$3757$4, 0, 12 );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$3757$4, (void*)vr$102, -1, (void*)vr$93, -1 );
				__builtin_memset( &TMP$3758$4, 0, 12 );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$3758$4, (void*)vr$105, -1, (void*)"[rbp]", 6 );
				fb_StrAssign( (void*)&TMP$3759$4, -1, (void*)vr$108, -1, 0 );
				HWRITEASM64( &TMP$3759$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3759$4 );
				_EMITSTORE( V1$1, TEMPO1$1 );
			}
			label$2906:;
			if( *(int32*)V2$1 != 3 ) goto label$2911;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$2915:;
					{
						if( *(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$2917;
						{
							*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$2914;
						}
						label$2917:;
						label$2916:;
					}
					label$2913:;
					IREG$5 = IREG$5 + 1;
					label$2912:;
					if( IREG$5 <= 15 ) goto label$2915;
					label$2914:;
				}
			}
			label$2911:;
			label$2910:;
		}
		goto label$2903;
		label$2904:;
		if( OP$1 != 112 ) goto label$2918;
		label$2919:;
		{
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2921;
			{
				struct $6IRVREG* vr$118 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$118;
				REG_FINDFREE( *(int32*)((uint8*)VR$1 + 12), -1 );
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				int32 vr$121 = REG_FINDREAL( *(int32*)((uint8*)TEMPO1$1 + 12) );
				fb_StrAssign( (void*)&REGVALIST$1, -1, *(void**)((uint8*)REGSTRQ$ + (vr$121 << (2 & 31))), 0, 0 );
				uint8* vr$124 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1, (void*)vr$124, 0, 0 );
				uint8* vr$126 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1, (void*)vr$126, 0, 0 );
				if( (-(*(int32*)((uint8*)VR$1 + 4) == 16) | -(*(int32*)((uint8*)VR$1 + 4) == 15)) == 0 ) goto label$2923;
				{
					FBSTRING TMP$3762$5;
					FBSTRING TMP$3763$5;
					FBSTRING TMP$3764$5;
					FBSTRING TMP$3766$5;
					FBSTRING TMP$3767$5;
					FBSTRING TMP$3769$5;
					FBSTRING TMP$3770$5;
					FBSTRING TMP$3771$5;
					FBSTRING TMP$3774$5;
					FBSTRING TMP$3775$5;
					FBSTRING TMP$3776$5;
					FBSTRING TMP$3778$5;
					FBSTRING TMP$3779$5;
					FBSTRING TMP$3780$5;
					FBSTRING TMP$3781$5;
					FBSTRING TMP$3782$5;
					FBSTRING TMP$3783$5;
					FBSTRING TMP$3784$5;
					FBSTRING TMP$3786$5;
					FBSTRING TMP$3787$5;
					FBSTRING TMP$3788$5;
					FBSTRING TMP$3790$5;
					FBSTRING TMP$3791$5;
					FBSTRING TMP$3792$5;
					FBSTRING TMP$3793$5;
					FBSTRING TMP$3794$5;
					FBSTRING TMP$3796$5;
					FBSTRING TMP$3797$5;
					FBSTRING TMP$3798$5;
					__builtin_memset( &TMP$3764$5, 0, 12 );
					__builtin_memset( &TMP$3762$5, 0, 12 );
					FBSTRING* vr$137 = fb_StrConcat( &TMP$3762$5, (void*)"cmp DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3763$5, 0, 12 );
					FBSTRING* vr$140 = fb_StrConcat( &TMP$3763$5, (void*)vr$137, -1, (void*)"], 104", 7 );
					fb_StrAssign( (void*)&TMP$3764$5, -1, (void*)vr$140, -1, 0 );
					HWRITEASM64( &TMP$3764$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3764$5 );
					__builtin_memset( &TMP$3767$5, 0, 12 );
					__builtin_memset( &TMP$3766$5, 0, 12 );
					FBSTRING* vr$148 = fb_StrConcat( &TMP$3766$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$3767$5, -1, (void*)vr$148, -1, 0 );
					HWRITEASM64( &TMP$3767$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3767$5 );
					__builtin_memset( &TMP$3771$5, 0, 12 );
					__builtin_memset( &TMP$3769$5, 0, 12 );
					FBSTRING* vr$156 = fb_StrConcat( &TMP$3769$5, (void*)"mov eax, DWORD PTR 4[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3770$5, 0, 12 );
					FBSTRING* vr$159 = fb_StrConcat( &TMP$3770$5, (void*)vr$156, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3771$5, -1, (void*)vr$159, -1, 0 );
					HWRITEASM64( &TMP$3771$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3771$5 );
					__builtin_memset( &TMP$3776$5, 0, 12 );
					__builtin_memset( &TMP$3774$5, 0, 12 );
					FBSTRING* vr$167 = fb_StrConcat( &TMP$3774$5, (void*)"add DWORD PTR 4[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3775$5, 0, 12 );
					FBSTRING* vr$170 = fb_StrConcat( &TMP$3775$5, (void*)vr$167, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3776$5, -1, (void*)vr$170, -1, 0 );
					HWRITEASM64( &TMP$3776$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3776$5 );
					__builtin_memset( &TMP$3780$5, 0, 12 );
					__builtin_memset( &TMP$3778$5, 0, 12 );
					FBSTRING* vr$178 = fb_StrConcat( &TMP$3778$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3779$5, 0, 12 );
					FBSTRING* vr$181 = fb_StrConcat( &TMP$3779$5, (void*)vr$178, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3780$5, -1, (void*)vr$181, -1, 0 );
					HWRITEASM64( &TMP$3780$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3780$5 );
					__builtin_memset( &TMP$3782$5, 0, 12 );
					__builtin_memset( &TMP$3781$5, 0, 12 );
					FBSTRING* vr$189 = fb_StrConcat( &TMP$3781$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$3782$5, -1, (void*)vr$189, -1, 0 );
					HWRITEASM64( &TMP$3782$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3782$5 );
					__builtin_memset( &TMP$3784$5, 0, 12 );
					__builtin_memset( &TMP$3783$5, 0, 12 );
					FBSTRING* vr$197 = fb_StrConcat( &TMP$3783$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3784$5, -1, (void*)vr$197, -1, 0 );
					HWRITEASM64( &TMP$3784$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3784$5 );
					__builtin_memset( &TMP$3788$5, 0, 12 );
					__builtin_memset( &TMP$3786$5, 0, 12 );
					FBSTRING* vr$205 = fb_StrConcat( &TMP$3786$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3787$5, 0, 12 );
					FBSTRING* vr$208 = fb_StrConcat( &TMP$3787$5, (void*)vr$205, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3788$5, -1, (void*)vr$208, -1, 0 );
					HWRITEASM64( &TMP$3788$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3788$5 );
					__builtin_memset( &TMP$3792$5, 0, 12 );
					__builtin_memset( &TMP$3790$5, 0, 12 );
					FBSTRING* vr$216 = fb_StrConcat( &TMP$3790$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3791$5, 0, 12 );
					FBSTRING* vr$219 = fb_StrConcat( &TMP$3791$5, (void*)vr$216, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3792$5, -1, (void*)vr$219, -1, 0 );
					HWRITEASM64( &TMP$3792$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3792$5 );
					__builtin_memset( &TMP$3794$5, 0, 12 );
					__builtin_memset( &TMP$3793$5, 0, 12 );
					FBSTRING* vr$227 = fb_StrConcat( &TMP$3793$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3794$5, -1, (void*)vr$227, -1, 0 );
					HWRITEASM64( &TMP$3794$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3794$5 );
					__builtin_memset( &TMP$3798$5, 0, 12 );
					int32 vr$233 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$3796$5, 0, 12 );
					FBSTRING* vr$237 = fb_StrConcat( &TMP$3796$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$233 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3797$5, 0, 12 );
					FBSTRING* vr$240 = fb_StrConcat( &TMP$3797$5, (void*)vr$237, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$3798$5, -1, (void*)vr$240, -1, 0 );
					HWRITEASM64( &TMP$3798$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3798$5 );
				}
				goto label$2922;
				label$2923:;
				{
					FBSTRING TMP$3801$5;
					FBSTRING TMP$3802$5;
					FBSTRING TMP$3803$5;
					FBSTRING TMP$3804$5;
					FBSTRING TMP$3805$5;
					FBSTRING TMP$3807$5;
					FBSTRING TMP$3808$5;
					FBSTRING TMP$3809$5;
					FBSTRING TMP$3811$5;
					FBSTRING TMP$3812$5;
					FBSTRING TMP$3813$5;
					FBSTRING TMP$3814$5;
					FBSTRING TMP$3815$5;
					FBSTRING TMP$3816$5;
					FBSTRING TMP$3817$5;
					FBSTRING TMP$3818$5;
					FBSTRING TMP$3819$5;
					FBSTRING TMP$3820$5;
					FBSTRING TMP$3821$5;
					FBSTRING TMP$3822$5;
					FBSTRING TMP$3823$5;
					FBSTRING TMP$3824$5;
					FBSTRING TMP$3825$5;
					FBSTRING TMP$3826$5;
					FBSTRING TMP$3827$5;
					FBSTRING TMP$3828$5;
					FBSTRING TMP$3829$5;
					FBSTRING TMP$3830$5;
					FBSTRING TMP$3831$5;
					__builtin_memset( &TMP$3803$5, 0, 12 );
					__builtin_memset( &TMP$3801$5, 0, 12 );
					FBSTRING* vr$248 = fb_StrConcat( &TMP$3801$5, (void*)"cmp DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3802$5, 0, 12 );
					FBSTRING* vr$251 = fb_StrConcat( &TMP$3802$5, (void*)vr$248, -1, (void*)"], 40", 6 );
					fb_StrAssign( (void*)&TMP$3803$5, -1, (void*)vr$251, -1, 0 );
					HWRITEASM64( &TMP$3803$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3803$5 );
					__builtin_memset( &TMP$3805$5, 0, 12 );
					__builtin_memset( &TMP$3804$5, 0, 12 );
					FBSTRING* vr$259 = fb_StrConcat( &TMP$3804$5, (void*)"jg ", 4, (void*)&LNAME1$1, -1 );
					fb_StrAssign( (void*)&TMP$3805$5, -1, (void*)vr$259, -1, 0 );
					HWRITEASM64( &TMP$3805$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3805$5 );
					__builtin_memset( &TMP$3809$5, 0, 12 );
					__builtin_memset( &TMP$3807$5, 0, 12 );
					FBSTRING* vr$267 = fb_StrConcat( &TMP$3807$5, (void*)"mov eax, DWORD PTR [", 21, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3808$5, 0, 12 );
					FBSTRING* vr$270 = fb_StrConcat( &TMP$3808$5, (void*)vr$267, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3809$5, -1, (void*)vr$270, -1, 0 );
					HWRITEASM64( &TMP$3809$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3809$5 );
					__builtin_memset( &TMP$3813$5, 0, 12 );
					__builtin_memset( &TMP$3811$5, 0, 12 );
					FBSTRING* vr$278 = fb_StrConcat( &TMP$3811$5, (void*)"add DWORD PTR [", 16, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3812$5, 0, 12 );
					FBSTRING* vr$281 = fb_StrConcat( &TMP$3812$5, (void*)vr$278, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3813$5, -1, (void*)vr$281, -1, 0 );
					HWRITEASM64( &TMP$3813$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3813$5 );
					__builtin_memset( &TMP$3816$5, 0, 12 );
					__builtin_memset( &TMP$3814$5, 0, 12 );
					FBSTRING* vr$289 = fb_StrConcat( &TMP$3814$5, (void*)"add rax, QWORD PTR 16[", 23, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3815$5, 0, 12 );
					FBSTRING* vr$292 = fb_StrConcat( &TMP$3815$5, (void*)vr$289, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3816$5, -1, (void*)vr$292, -1, 0 );
					HWRITEASM64( &TMP$3816$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3816$5 );
					__builtin_memset( &TMP$3818$5, 0, 12 );
					__builtin_memset( &TMP$3817$5, 0, 12 );
					FBSTRING* vr$300 = fb_StrConcat( &TMP$3817$5, (void*)"jmp ", 5, (void*)&LNAME2$1, -1 );
					fb_StrAssign( (void*)&TMP$3818$5, -1, (void*)vr$300, -1, 0 );
					HWRITEASM64( &TMP$3818$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3818$5 );
					__builtin_memset( &TMP$3820$5, 0, 12 );
					__builtin_memset( &TMP$3819$5, 0, 12 );
					FBSTRING* vr$308 = fb_StrConcat( &TMP$3819$5, (void*)&LNAME1$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3820$5, -1, (void*)vr$308, -1, 0 );
					HWRITEASM64( &TMP$3820$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3820$5 );
					__builtin_memset( &TMP$3823$5, 0, 12 );
					__builtin_memset( &TMP$3821$5, 0, 12 );
					FBSTRING* vr$316 = fb_StrConcat( &TMP$3821$5, (void*)"mov rax, QWORD PTR 8[", 22, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3822$5, 0, 12 );
					FBSTRING* vr$319 = fb_StrConcat( &TMP$3822$5, (void*)vr$316, -1, (void*)"]", 2 );
					fb_StrAssign( (void*)&TMP$3823$5, -1, (void*)vr$319, -1, 0 );
					HWRITEASM64( &TMP$3823$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3823$5 );
					__builtin_memset( &TMP$3826$5, 0, 12 );
					__builtin_memset( &TMP$3824$5, 0, 12 );
					FBSTRING* vr$327 = fb_StrConcat( &TMP$3824$5, (void*)"add QWORD PTR 8[", 17, (void*)&REGVALIST$1, -1 );
					__builtin_memset( &TMP$3825$5, 0, 12 );
					FBSTRING* vr$330 = fb_StrConcat( &TMP$3825$5, (void*)vr$327, -1, (void*)"], 8", 5 );
					fb_StrAssign( (void*)&TMP$3826$5, -1, (void*)vr$330, -1, 0 );
					HWRITEASM64( &TMP$3826$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3826$5 );
					__builtin_memset( &TMP$3828$5, 0, 12 );
					__builtin_memset( &TMP$3827$5, 0, 12 );
					FBSTRING* vr$338 = fb_StrConcat( &TMP$3827$5, (void*)&LNAME2$1, -1, (void*)":", 2 );
					fb_StrAssign( (void*)&TMP$3828$5, -1, (void*)vr$338, -1, 0 );
					HWRITEASM64( &TMP$3828$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3828$5 );
					__builtin_memset( &TMP$3831$5, 0, 12 );
					int32 vr$344 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
					__builtin_memset( &TMP$3829$5, 0, 12 );
					FBSTRING* vr$348 = fb_StrConcat( &TMP$3829$5, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$344 << (2 & 31))), 0 );
					__builtin_memset( &TMP$3830$5, 0, 12 );
					FBSTRING* vr$351 = fb_StrConcat( &TMP$3830$5, (void*)vr$348, -1, (void*)", [rax]", 8 );
					fb_StrAssign( (void*)&TMP$3831$5, -1, (void*)vr$351, -1, 0 );
					HWRITEASM64( &TMP$3831$5, 0 );
					fb_StrDelete( (FBSTRING*)&TMP$3831$5 );
				}
				label$2922:;
			}
			goto label$2920;
			label$2921:;
			{
				FBSTRING TMP$3833$4;
				FBSTRING TMP$3834$4;
				FBSTRING TMP$3835$4;
				FBSTRING TMP$3836$4;
				FBSTRING TMP$3837$4;
				if( *(int32*)V1$1 != 3 ) goto label$2925;
				{
					int32 vr$358 = REG_FINDREAL( *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12) );
					SAVEREG$1 = vr$358;
				}
				goto label$2924;
				label$2925:;
				if( *(int32*)V1$1 != 4 ) goto label$2926;
				{
					int32 vr$361 = REG_FINDREAL( *(int32*)((uint8*)V1$1 + 12) );
					SAVEREG$1 = vr$361;
				}
				label$2926:;
				label$2924:;
				if( (-(*(int32*)V1$1 != 4) | -(-((*(int32*)((uint8*)V1$1 + 4) & 480) != 0) == -1)) == 0 ) goto label$2928;
				{
					_EMITADDR( 76, V1$1, VR$1 );
					if( *(int32*)V1$1 != 3 ) goto label$2930;
					{
						*(int32*)((uint8*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
					}
					goto label$2929;
					label$2930:;
					if( *(int32*)V1$1 != 4 ) goto label$2931;
					{
						*(int32*)((uint8*)REGHANDLE$ + (SAVEREG$1 << (2 & 31))) = *(int32*)((uint8*)V1$1 + 12);
					}
					label$2931:;
					label$2929:;
					struct $6IRVREG* vr$376 = IRHLALLOCVRIMM( 8, (struct $8FBSYMBOL*)0u, 8ll );
					TEMPO1$1 = vr$376;
					_EMITBOP( 28, V1$1, TEMPO1$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u );
				}
				goto label$2927;
				label$2928:;
				{
					*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)V1$1 + 12);
				}
				label$2927:;
				__builtin_memset( &TMP$3837$4, 0, 12 );
				int32 vr$381 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				int32 vr$384 = REG_FINDREAL( *(int32*)((uint8*)VR$1 + 12) );
				__builtin_memset( &TMP$3833$4, 0, 12 );
				FBSTRING* vr$388 = fb_StrConcat( &TMP$3833$4, (void*)"mov ", 5, *(void**)((uint8*)REGSTRQ$ + (vr$384 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3834$4, 0, 12 );
				FBSTRING* vr$391 = fb_StrConcat( &TMP$3834$4, (void*)vr$388, -1, (void*)", [", 4 );
				__builtin_memset( &TMP$3835$4, 0, 12 );
				FBSTRING* vr$394 = fb_StrConcat( &TMP$3835$4, (void*)vr$391, -1, *(void**)((uint8*)REGSTRQ$ + (vr$381 << (2 & 31))), 0 );
				__builtin_memset( &TMP$3836$4, 0, 12 );
				FBSTRING* vr$397 = fb_StrConcat( &TMP$3836$4, (void*)vr$394, -1, (void*)"]", 2 );
				fb_StrAssign( (void*)&TMP$3837$4, -1, (void*)vr$397, -1, 0 );
				HWRITEASM64( &TMP$3837$4, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$3837$4 );
			}
			label$2920:;
		}
		goto label$2903;
		label$2918:;
		if( OP$1 != 110 ) goto label$2932;
		label$2933:;
		{
			if( *(int32*)V1$1 != 3 ) goto label$2935;
			{
				VREG$1 = *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 12);
				{
					int32 IREG$5;
					IREG$5 = 1;
					label$2939:;
					{
						if( *(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2 & 31))) != VREG$1 ) goto label$2941;
						{
							*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2 & 31))) = -2;
							goto label$2938;
						}
						label$2941:;
						label$2940:;
					}
					label$2937:;
					IREG$5 = IREG$5 + 1;
					label$2936:;
					if( IREG$5 <= 15 ) goto label$2939;
					label$2938:;
				}
			}
			label$2935:;
			label$2934:;
		}
		goto label$2903;
		label$2932:;
		if( OP$1 != 111 ) goto label$2942;
		label$2943:;
		{
			if( *(int32*)((uint8*)&CTX$ + 212) != 2 ) goto label$2945;
			{
				struct $6IRVREG* vr$407 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO1$1 = vr$407;
				_EMITADDR( 22, V1$1, TEMPO1$1 );
				struct $6IRVREG* vr$408 = IRHLALLOCVREG( 8, (struct $8FBSYMBOL*)0u );
				TEMPO2$1 = vr$408;
				_EMITADDR( 22, V2$1, TEMPO2$1 );
				_EMITMEM( 105, TEMPO1$1, TEMPO2$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 32) + 40) );
			}
			goto label$2944;
			label$2945:;
			{
				_EMITSTORE( V1$1, V2$1 );
			}
			label$2944:;
		}
		label$2942:;
		label$2903:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	fb_StrDelete( (FBSTRING*)&REGVALIST$1 );
	label$2900:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$2946:;
	label$2947:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$2948:;
	label$2949:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$2950:;
	label$2951:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$2952:;
	label$2953:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$2954:;
	label$2955:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$2956:;
	label$2957:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$2958:;
	label$2959:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$2960:;
	label$2961:;
}

static void _EMITFBCTINFBEGIN( void )
{
	label$2962:;
	label$2963:;
}

static void _EMITFBCTINFEND( void )
{
	label$2964:;
	label$2965:;
}

static void _EMITSPILLREGS( void )
{
	label$2966:;
	label$2967:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$2968:;
	label$2969:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$2973:;
	_ZN6DBGCTXC1Ev( &CTXDBG$ );
	_ZN13ASM64_CONTEXTC1Ev( &CTX$ );
	label$2974:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$2976:;
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTAB$, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev );
	fb_ArrayEraseObj( (struct $7FBARRAYIvE*)&DBGSTR$, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev );
	_ZN13ASM64_CONTEXTD1Ev( &CTX$ );
	_ZN6DBGCTXD1Ev( &CTXDBG$ );
	label$2977:;
}
