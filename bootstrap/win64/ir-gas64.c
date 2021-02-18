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
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 8 );
struct $6TFLIST {
	int64 TOTITEMS;
	int64 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int64 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 112 );
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 24 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 72 );
struct $5IRTAC {
	int64 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int64 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 256 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int64 REG;
	$12IR_REGFAMILY REGFAMILY;
	int64 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int64 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
typedef int64 $13FB_COMPTARGET;
struct $13ASM64_CONTEXT {
	int64 INDENT;
	int64 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
	FBSTRING PROLOG_TXT;
	FBSTRING PROC_TXT;
	FBSTRING EPILOG_TXT;
	int64 ARGCPTMAX;
	int64 ARGINTEG;
	int64 ARGFLOAT;
	int64 OFS;
	int64 STK;
	int64 STKMAX;
	int64 STKSPIL;
	int64 STKCOPY;
	int32 USEDREG;
	int32 JMPREG;
	int32 JMPVREG;
	int32 JMPPASS;
	int64 CTORCOUNT;
	int64 DTORCOUNT;
	boolean ROUNDFLOAT;
	boolean PROCCALLING;
	struct $6TFLIST SPILLVREGS;
	int32 VREG_COUNT;
	struct $8FBSYMBOL* LABELBRANCH2;
	struct $8FBSYMBOL* LABELJUMP;
	boolean VARIADIC;
	$13FB_COMPTARGET TARGET;
	int64 OPEREG;
	int64 OPEPASS;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_CONTEXT ) == 432 );
struct $6DBGCTX {
	uint64 TYPECNT;
	int64 LNUM;
	FBSTRING PREVFILENAME;
	FBSTRING LINEFILENAME;
	struct $8FBSYMBOL* PROC;
	int64 STRNB;
	int64 STRMAX;
	int64 STABNB;
	int64 STABMAX;
	int64 OFFST;
};
__FB_STATIC_ASSERT( sizeof( struct $6DBGCTX ) == 112 );
struct $7TDBGSTR {
	int64 OFFST;
	FBSTRING TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7TDBGSTR ) == 32 );
struct $8TDBGSTAB {
	int64 STAB;
	FBSTRING VALUE;
};
__FB_STATIC_ASSERT( sizeof( struct $8TDBGSTAB ) == 32 );
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
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 240 );
typedef int64 $6IR_OPT;
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef int64 $14IR_OPTIONVALUE;
struct $7FBARRAYIiE {
	int32* DATA;
	int32* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIiE ) == 240 );
typedef int64 $19FB_CVA_LIST_TYPEDEF;
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int64 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 24 );
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint64, int32, int32, uint64, ... );
int32 fb_ArrayRedimObj( struct $7FBARRAYIvE*, uint64, void*, void*, uint64, ... );
int32 fb_ArrayRedimPresvObj( struct $7FBARRAYIvE*, uint64, void*, void*, uint64, ... );
void fb_ArrayDestructStr( struct $7FBARRAYIvE* );
int32 fb_ArrayEraseObj( struct $7FBARRAYIvE*, void*, void* );
int64 fb_ArrayUBound( struct $7FBARRAYIKvE*, int64 );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStrLarge( int32, int64, void*, int64 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
double pow( double, double );
double fb_FRACd( double );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint16* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
void fb_StrAssignMid( FBSTRING*, int64, int64, FBSTRING* );
FBSTRING* fb_StrFill1( int64, int32 );
int64 fb_StrLen( void*, int64 );
uint32 fb_ASC( FBSTRING*, int64 );
int64 fb_StrInstr( int64, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_RTRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
uint16* fb_WstrLeft( uint16*, int64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__irzgas64( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
int64 FBGETOPTION( int64 );
FBSTRING* FBGETENTRYPOINT( void );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBISDATADESC( struct $8FBSYMBOL* );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int64, struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMFIRSTELM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMNEXTELM( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int64, tmp$42 );
int64 HFILEEXISTS( uint8* );
int64 PATHISABSOLUTE( uint8* );
FBSTRING* HCURDIR( void );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint16* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void FLISTINIT( struct $6TFLIST*, int64, int64 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
void IRHLINIT( void );
void IRHLEND( void );
void IRHLEMITPROCBEGIN( void );
void IRHLEMITPROCEND( void );
void IRHLEMITPUSHARG( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64 );
struct $6IRVREG* IRHLALLOCVREG( int64, struct $8FBSYMBOL* );
struct $6IRVREG* IRHLALLOCVRIMM( int64, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIMMF( int64, struct $8FBSYMBOL*, double );
struct $6IRVREG* IRHLALLOCVRVAR( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $6IRVREG* IRHLALLOCVRIDX( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVRPTR( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
struct $6IRVREG* IRHLALLOCVROFS( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
void IRFOREACHDATASTMT( tmp$42 );
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
static void _EMITDBG( int64, struct $8FBSYMBOL*, int64, uint8* );
static void CHECK_OPTIM( FBSTRING* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL*, int64 );
static void HWRITEASM64( FBSTRING*, int64 );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINIWSTR( int64, uint16*, int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int64 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFEND( void );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _EMITMACRO( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
void SAVE_CALL( FBSTRING*, struct $6IRVREG*, int64 );
int64 HGETMAGICSTRUCTNUMBER( struct $8FBSYMBOL* );
static void DBG_ADDSTAB( FBSTRING*, uint8, int16, FBSTRING* );
static void REG_FREEABLE( FBSTRING* );
static int64 PW2( int64 );
static void ASM_SECTION( FBSTRING* );
static void EMITOP3_OP4( FBSTRING* );
void DBG_FILENAME( FBSTRING* );
static FBSTRING* HFLOATTOHEX_ASM64( double, int64, int8 );
static int64 DBG_ADDSTR( FBSTRING*, int64 );
static void DBG_EMITSTR( void );
static void DBG_EMITSTAB( void );
void EDBGEMITHEADER_ASM64( uint8* );
void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL*, int64 );
void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL*, int64 );
void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* );
void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* );
static FBSTRING* HDECLPOINTER_ASM64( int64* );
static void HDECLUDT_ASM64( struct $8FBSYMBOL*, int64 );
static void HDECLENUM_ASM64( struct $8FBSYMBOL* );
static void REG_MARK( struct $8FBSYMBOL* );
static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 );
static void REG_SPILLING( int32 );
static void REG_SAVE( void );
static void REG_ALLOWED( boolean );
static int32 REG_FINDFREE( int32, int64 );
static void REG_CALLPTR( FBSTRING*, FBSTRING* );
static void REG_BRANCH( struct $8FBSYMBOL* );
int32 REG_FINDREAL( int32 );
uint8* REG_TEMPO( void );
static void REG_TRANSFER( int32, int32 );
static void MEMCLEAR( int64, FBSTRING*, int32 );
static void MEMCOPY( int64, FBSTRING*, FBSTRING*, int32, int32 );
static void _INIT( void );
static void _END( void );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void NO_ROUNDSD( uint8* );
static int64 _EMITBEGIN( void );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static void _EMITEND( void );
static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int64 _SUPPORTSOP( int64, int64 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static int64 PARAM_ANALYZE( $11FB_DATATYPE, struct $8FBSYMBOL*, int64*, int64*, int64* );
static void REG_FILLM( int64, struct $7FBARRAYIiE*, int64, int64, int64 );
static void REG_FILLR( int64, FBSTRING*, int64, struct $7FBARRAYIiE*, int32 );
static void REG_FILLX( int64, FBSTRING*, int64 );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void PREPARE_IDX( struct $6IRVREG*, FBSTRING*, FBSTRING* );
static uint8* HGETBOPCODE( int64 );
static void RESTORE_VRREG( struct $6IRVREG*, int64 );
static void BOP_FLOAT( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, FBSTRING*, struct $8FBSYMBOL* );
static void HLOADOPERANDSANDWRITEBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int64, struct $6IRVREG*, struct $6IRVREG* );
static void HEMITROUNDFLOAT( $11FB_DATATYPE, $11FB_DATATYPE );
static void EMITSTORESTRUCT( struct $6IRVREG*, struct $6IRVREG*, FBSTRING*, FBSTRING* );
static int64 HISSTRUCTIN2REGS( struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int64, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( struct $8FBSYMBOL*, FBSTRING*, FBSTRING*, struct $6IRVREG*, int64, boolean, boolean );
static void _EMITCALL( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int64, struct $8FBSYMBOL* );
static void _EMITRETURN( int64 );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
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
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$54)( int64, struct $6IRVREG* );
typedef void (*tmp$55)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$56)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$57)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$58)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$60)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$61)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$62)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( struct $8FBSYMBOL*, double );
typedef void (*tmp$64)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$65)( int64, uint8*, int64 );
typedef void (*tmp$66)( int64, uint16*, int64 );
typedef void (*tmp$67)( int64 );
typedef void (*tmp$68)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$69)( uint8* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$75)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$76)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$77)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$38 INIT;
	tmp$38 END;
	tmp$39 EMITBEGIN;
	tmp$38 EMITEND;
	tmp$40 GETOPTIONVALUE;
	tmp$41 SUPPORTSOP;
	tmp$42 PROCBEGIN;
	tmp$42 PROCEND;
	tmp$43 PROCALLOCARG;
	tmp$43 PROCALLOCLOCAL;
	tmp$44 PROCGETFRAMEREGNAME;
	tmp$42 SCOPEBEGIN;
	tmp$42 SCOPEEND;
	tmp$42 PROCALLOCSTATICVARS;
	tmp$45 EMITCONVERT;
	tmp$42 EMITLABEL;
	tmp$42 EMITLABELNF;
	tmp$46 EMITRETURN;
	tmp$43 EMITPROCBEGIN;
	tmp$47 EMITPROCEND;
	tmp$48 EMITPUSHARG;
	tmp$49 EMITASMLINE;
	tmp$50 EMITCOMMENT;
	tmp$51 EMITBOP;
	tmp$52 EMITUOP;
	tmp$45 EMITSTORE;
	tmp$38 EMITSPILLREGS;
	tmp$53 EMITLOAD;
	tmp$45 EMITLOADRES;
	tmp$54 EMITSTACK;
	tmp$52 EMITADDR;
	tmp$55 EMITCALL;
	tmp$56 EMITCALLPTR;
	tmp$46 EMITSTACKALIGN;
	tmp$53 EMITJUMPPTR;
	tmp$57 EMITBRANCH;
	tmp$58 EMITJMPTB;
	tmp$59 EMITMEM;
	tmp$60 EMITMACRO;
	tmp$42 EMITSCOPEBEGIN;
	tmp$42 EMITSCOPEEND;
	tmp$42 EMITDECL;
	tmp$61 EMITDBG;
	tmp$42 EMITVARINIBEGIN;
	tmp$42 EMITVARINIEND;
	tmp$62 EMITVARINII;
	tmp$63 EMITVARINIF;
	tmp$64 EMITVARINIOFS;
	tmp$65 EMITVARINISTR;
	tmp$66 EMITVARINIWSTR;
	tmp$67 EMITVARINIPAD;
	tmp$68 EMITVARINISCOPEBEGIN;
	tmp$38 EMITVARINISCOPEEND;
	tmp$38 EMITFBCTINFBEGIN;
	tmp$69 EMITFBCTINFSTRING;
	tmp$38 EMITFBCTINFEND;
	tmp$70 ALLOCVREG;
	tmp$71 ALLOCVRIMM;
	tmp$72 ALLOCVRIMMF;
	tmp$73 ALLOCVRVAR;
	tmp$74 ALLOCVRIDX;
	tmp$75 ALLOCVRPTR;
	tmp$73 ALLOCVROFS;
	tmp$76 SETVREGDATATYPE;
	tmp$77 GETDISTANCE;
	tmp$52 LOADVR;
	tmp$45 STOREVR;
	tmp$46 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
extern struct $7IR_VTBL IRGAS64_VTBL$;
struct $5IRCTX {
	int64 INITED;
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 560 );
extern struct $5IRCTX IR$;
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
struct $11IRHLCONTEXT {
	int64 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 184 );
extern struct $11IRHLCONTEXT IRHL$;
static struct $6DBGCTX CTXDBG$;
static int32 REGHANDLE$[18];
struct $13ASM64_REGROOM {
	int32 STATUS;
	struct $14ASM64_SAVEDREG* VREG;
};
__FB_STATIC_ASSERT( sizeof( struct $13ASM64_REGROOM ) == 16 );
static struct $13ASM64_REGROOM REGROOM$[18];
static struct $13ASM64_CONTEXT CTX$;
struct $7FBARRAYI7TDBGSTRE {
	struct $7TDBGSTR* DATA;
	struct $7TDBGSTR* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI7TDBGSTRE ) == 240 );
static struct $7FBARRAYI7TDBGSTRE DBGSTR$ = { (struct $7TDBGSTR*)0ull, (struct $7TDBGSTR*)0ull, 0ll, 32ll, 0ll, 8ll, {  } };
struct $7FBARRAYI8TDBGSTABE {
	struct $8TDBGSTAB* DATA;
	struct $8TDBGSTAB* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8TDBGSTABE ) == 240 );
static struct $7FBARRAYI8TDBGSTABE DBGSTAB$ = { (struct $8TDBGSTAB*)0ull, (struct $8TDBGSTAB*)0ull, 0ll, 32ll, 0ll, 8ll, {  } };
static int64 REMAPTB$[26] = { 7ll, 16ll, 2ll, 3ll, 4ll, 5ll, 6ll, 6ll, 9ll, 10ll, 9ll, 1ll, 8ll, 9ll, 10ll, 11ll, 12ll, 13ll, 14ll, 17ll };
static uint8* STABSTB$[17] = { (uint8*)"integer:t1=-1", (uint8*)"void:t7=-11", (uint8*)"byte:t2=-6", (uint8*)"ubyte:t3=-5", (uint8*)"char:t4=-2", (uint8*)"short:t5=-3", (uint8*)"ushort:t6=-7", (uint8*)"uinteger:t8=-8", (uint8*)"longint:t9=-31", (uint8*)"ulongint:t10=-32", (uint8*)"single:t11=-12", (uint8*)"double:t12=-13", (uint8*)"string:t13=s12data:*2,0,64;len:1,64,64;size:1,128,64;;", (uint8*)"fixstr:t14=-2", (uint8*)"pchar:t15=*4;", (uint8*)"boolean:t16=@s8;-16", (uint8*)"va_list:t17=-11" };
static uint8* REGSTRQ$[18] = { (uint8*)"rax", (uint8*)"rbx", (uint8*)"rcx", (uint8*)"rdx", (uint8*)"rsi", (uint8*)"rdi", (uint8*)"rbp", (uint8*)"rsp", (uint8*)"r8", (uint8*)"r9", (uint8*)"r10", (uint8*)"r11", (uint8*)"r12", (uint8*)"r13", (uint8*)"r14", (uint8*)"r15", (uint8*)"rip", (uint8*)"* X_Q" };
static uint8* REGSTRD$[18] = { (uint8*)"eax", (uint8*)"ebx", (uint8*)"ecx", (uint8*)"edx", (uint8*)"esi", (uint8*)"edi", (uint8*)"ebp", (uint8*)"esp", (uint8*)"r8d", (uint8*)"r9d", (uint8*)"r10d", (uint8*)"r11d", (uint8*)"r12d", (uint8*)"r13d", (uint8*)"r14d", (uint8*)"r15d", (uint8*)"", (uint8*)"* X_D" };
static uint8* REGSTRW$[18] = { (uint8*)"ax", (uint8*)"bx", (uint8*)"cx", (uint8*)"dx", (uint8*)"si", (uint8*)"di", (uint8*)"bp", (uint8*)"sp", (uint8*)"r8w", (uint8*)"r9w", (uint8*)"r10w", (uint8*)"r11w", (uint8*)"r12w", (uint8*)"r13w", (uint8*)"r14w", (uint8*)"r15w", (uint8*)"", (uint8*)"* X_W" };
static uint8* REGSTRB$[18] = { (uint8*)"al", (uint8*)"bl", (uint8*)"cl", (uint8*)"dl", (uint8*)"sil", (uint8*)"dil", (uint8*)"bpl", (uint8*)"spl", (uint8*)"r8b", (uint8*)"r9b", (uint8*)"r10b", (uint8*)"r11b", (uint8*)"r12b", (uint8*)"r13b", (uint8*)"r14b", (uint8*)"r15b", (uint8*)"", (uint8*)"* X_B" };
static int8 REG_PRIO$[13] = { (int8)11, (int8)10, (int8)8, (int8)9, (int8)3, (int8)2, (int8)12, (int8)13, (int8)14, (int8)15, (int8)1, (int8)5, (int8)4 };
struct $8FBARRAY1IiE {
	int32* DATA;
	int32* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IiE ) == 72 );
static struct $8FBARRAY1IiE LISTREG$ = { (int32*)0ull, (int32*)0ull, 0ll, 4ll, 1ll, 17ll, {  } };
struct $7IR_VTBL IRGAS64_VTBL$ = { (tmp$38)&_INIT, (tmp$38)&_END, (tmp$39)&_EMITBEGIN, (tmp$38)&_EMITEND, (tmp$40)&_GETOPTIONVALUE, (tmp$41)&_SUPPORTSOP, (tmp$42)&_PROCBEGIN, (tmp$42)&_PROCEND, (tmp$43)&_PROCALLOCARG, (tmp$43)&_PROCALLOCLOCAL, (tmp$44)0ull, (tmp$42)&_SCOPEBEGIN, (tmp$42)&_SCOPEEND, (tmp$42)&_PROCALLOCSTATICVARS, (tmp$45)&_EMITCONVERT, (tmp$42)&_EMITLABEL, (tmp$42)&_EMITLABEL, (tmp$46)&_EMITRETURN, (tmp$43)&_EMITPROCBEGIN, (tmp$47)&_EMITPROCEND, (tmp$48)&IRHLEMITPUSHARG, (tmp$49)&_EMITASMLINE, (tmp$50)&_EMITCOMMENT, (tmp$51)&_EMITBOP, (tmp$52)&_EMITUOP, (tmp$45)&_EMITSTORE, (tmp$38)&_EMITSPILLREGS, (tmp$53)&_EMITLOAD, (tmp$45)&_EMITLOADRES, (tmp$54)0ull, (tmp$52)&_EMITADDR, (tmp$55)&_EMITCALL, (tmp$56)&_EMITCALLPTR, (tmp$46)0ull, (tmp$53)&_EMITJUMPPTR, (tmp$57)&_EMITBRANCH, (tmp$58)&_EMITJMPTB, (tmp$59)&_EMITMEM, (tmp$60)&_EMITMACRO, (tmp$42)&_EMITSCOPEBEGIN, (tmp$42)&_EMITSCOPEEND, (tmp$42)&_EMITDECL, (tmp$61)&_EMITDBG, (tmp$42)&_EMITVARINIBEGIN, (tmp$42)&_EMITVARINIEND, (tmp$62)&_EMITVARINII, (tmp$63)&_EMITVARINIF, (tmp$64)&_EMITVARINIOFS, (tmp$65)&_EMITVARINISTR, (tmp$66)&_EMITVARINIWSTR, (tmp$67)&_EMITVARINIPAD, (tmp$68)&_EMITVARINISCOPEBEGIN, (tmp$38)&_EMITVARINISCOPEEND, (tmp$38)&_EMITFBCTINFBEGIN, (tmp$69)&_EMITFBCTINFSTRING, (tmp$38)&_EMITFBCTINFEND, (tmp$70)&IRHLALLOCVREG, (tmp$71)&IRHLALLOCVRIMM, (tmp$72)&IRHLALLOCVRIMMF, (tmp$73)&IRHLALLOCVRVAR, (tmp$74)&IRHLALLOCVRIDX, (tmp$75)&IRHLALLOCVRPTR, (tmp$73)&IRHLALLOCVROFS, (tmp$76)&_SETVREGDATATYPE, (tmp$77)0ull, (tmp$52)0ull, (tmp$45)0ull, (tmp$46)0ull };

void DBG_FILENAME( FBSTRING* FILENAME$1 )
{
	label$165:;
	int32 vr$1 = fb_StrCompare( (void*)FILENAME$1, -1ll, (void*)((uint8*)&CTXDBG$ + 16ll), -1ll );
	if( (int64)vr$1 == 0ll ) goto label$168;
	{
		FBSTRING TMP$316$2;
		__builtin_memset( &TMP$316$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$316$2, -1ll, (void*)"0", 2ll, 0 );
		DBG_ADDSTAB( FILENAME$1, (uint8)132u, (int16)0, &TMP$316$2 );
		fb_StrDelete( (FBSTRING*)&TMP$316$2 );
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 16ll), -1ll, (void*)FILENAME$1, -1ll, 0 );
	}
	label$168:;
	label$167:;
	label$166:;
}

void EDBGEMITHEADER_ASM64( uint8* FILENAME$1 )
{
	FBSTRING TMP$375$1;
	FBSTRING TMP$376$1;
	FBSTRING TMP$377$1;
	FBSTRING TMP$379$1;
	FBSTRING TMP$380$1;
	FBSTRING TMP$381$1;
	FBSTRING TMP$382$1;
	FBSTRING TMP$385$1;
	FBSTRING TMP$386$1;
	FBSTRING TMP$387$1;
	label$242:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	*(uint64*)&CTXDBG$ = 1ull;
	*(int64*)((uint8*)&CTXDBG$ + 72ll) = -1ll;
	*(int64*)((uint8*)&CTXDBG$ + 80ll) = 1000ll;
	int32 vr$1 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTR$, 32ull, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1ull, 0ll, *(int64*)((uint8*)&CTXDBG$ + 80ll) );
	if( (int64)vr$1 == 0ll ) goto label$244;
	void* vr$3 = fb_ErrorThrowAt( 866, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
	goto *vr$3;
	label$244:;
	*(int64*)((uint8*)&CTXDBG$ + 88ll) = -1ll;
	*(int64*)((uint8*)&CTXDBG$ + 96ll) = 1000ll;
	int32 vr$4 = fb_ArrayRedimObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 32ull, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1ull, 0ll, *(int64*)((uint8*)&CTXDBG$ + 96ll) );
	if( (int64)vr$4 == 0ll ) goto label$245;
	void* vr$6 = fb_ErrorThrowAt( 869, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
	goto *vr$6;
	label$245:;
	*(int64*)((uint8*)&CTXDBG$ + 104ll) = 1ll;
	*(int64*)((uint8*)&CTXDBG$ + 8ll) = -1ll;
	__builtin_memset( &TMP$377$1, 0, 24ll );
	uint8* vr$8 = HESCAPE( (uint8*)FILENAME$1 );
	__builtin_memset( &TMP$375$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$375$1, (void*)".file \x22", 8ll, (void*)vr$8, 0ll );
	__builtin_memset( &TMP$376$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$376$1, (void*)vr$11, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)&TMP$377$1, -1ll, (void*)vr$14, -1ll, 0 );
	HWRITEASM64( &TMP$377$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$377$1 );
	uint8* vr$18 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$18, 0ll, 0 );
	__builtin_memset( &TMP$380$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$380$1, -1ll, (void*)"0", 2ll, 0 );
	__builtin_memset( &TMP$379$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$379$1, -1ll, (void*)"DUMMY", 6ll, 0 );
	DBG_ADDSTAB( &TMP$379$1, (uint8)0u, (int16)0, &TMP$380$1 );
	fb_StrDelete( (FBSTRING*)&TMP$380$1 );
	fb_StrDelete( (FBSTRING*)&TMP$379$1 );
	__builtin_memset( &TMP$382$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$382$1, -1ll, (void*)"0", 2ll, 0 );
	__builtin_memset( &TMP$381$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$381$1, -1ll, (void*)"FreeBASIC 1.08.0", 17ll, 0 );
	DBG_ADDSTAB( &TMP$381$1, (uint8)255u, (int16)0, &TMP$382$1 );
	fb_StrDelete( (FBSTRING*)&TMP$382$1 );
	fb_StrDelete( (FBSTRING*)&TMP$381$1 );
	int64 vr$36 = PATHISABSOLUTE( FILENAME$1 );
	if( vr$36 != 0ll ) goto label$247;
	{
		FBSTRING TMP$383$2;
		FBSTRING TMP$384$2;
		__builtin_memset( &TMP$384$2, 0, 24ll );
		FBSTRING* vr$39 = HCURDIR(  );
		__builtin_memset( &TMP$383$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$383$2, (void*)vr$39, -1ll, (void*)"\x5C", 2ll );
		fb_StrAssign( (void*)&TMP$384$2, -1ll, (void*)vr$42, -1ll, 0 );
		DBG_ADDSTAB( &TMP$384$2, (uint8)100u, (int16)0, &LNAME$1 );
		fb_StrDelete( (FBSTRING*)&TMP$384$2 );
	}
	label$247:;
	label$246:;
	__builtin_memset( &TMP$385$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$385$1, -1ll, (void*)FILENAME$1, 0ll, 0 );
	DBG_ADDSTAB( &TMP$385$1, (uint8)100u, (int16)0, &LNAME$1 );
	fb_StrDelete( (FBSTRING*)&TMP$385$1 );
	__builtin_memset( &TMP$387$1, 0, 24ll );
	__builtin_memset( &TMP$386$1, 0, 24ll );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$386$1, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$387$1, -1ll, (void*)vr$55, -1ll, 0 );
	HWRITEASM64( &TMP$387$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$387$1 );
	{
		int64 I$2;
		I$2 = 0ll;
		label$251:;
		{
			FBSTRING TMP$388$3;
			FBSTRING STRG$3;
			fb_StrInit( (void*)&STRG$3, -1ll, *(void**)((uint8*)STABSTB$ + (I$2 << (3ll & 63ll))), 0ll, 0 );
			__builtin_memset( &TMP$388$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$388$3, -1ll, (void*)"0", 2ll, 0 );
			DBG_ADDSTAB( &STRG$3, (uint8)128u, (int16)0, &TMP$388$3 );
			fb_StrDelete( (FBSTRING*)&TMP$388$3 );
			*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
			fb_StrDelete( (FBSTRING*)&STRG$3 );
		}
		label$249:;
		I$2 = I$2 + 1ll;
		label$248:;
		if( I$2 <= 16ll ) goto label$251;
		label$250:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$243:;
}

void EDBGEMITGLOBALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int64 SECTION$1 )
{
	FBSTRING TMP$391$1;
	label$252:;
	int64 T$1;
	int64 ATTRIB$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll ) goto label$255;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$253;
	}
	label$255:;
	label$254:;
	{
		if( SECTION$1 != 0ll ) goto label$257;
		label$258:;
		{
			T$1 = 36ll;
		}
		goto label$256;
		label$257:;
		if( SECTION$1 != 2ll ) goto label$259;
		label$260:;
		{
			T$1 = 40ll;
		}
		goto label$256;
		label$259:;
		{
			T$1 = 38ll;
		}
		label$261:;
		label$256:;
	}
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$4, 0ll, 0 );
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 8ll) != 0ll)) == 0ll ) goto label$263;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":G", 3ll, 0 );
	}
	goto label$262;
	label$263:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) == 0ll ) goto label$264;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":S", 3ll, 0 );
	}
	goto label$262;
	label$264:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":", 2ll, 0 );
	}
	label$262:;
	FBSTRING* vr$18 = HGETDATATYPE_ASM64( SYM$1, 0ll );
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$18, -1ll, 0 );
	__builtin_memset( &TMP$391$1, 0, 24ll );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&TMP$391$1, -1ll, (void*)vr$21, 0ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &TMP$391$1 );
	fb_StrDelete( (FBSTRING*)&TMP$391$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$253:;
}

void EDBGEMITLOCALVAR_ASM64( struct $8FBSYMBOL* SYM$1, int64 ISSTATIC$1 )
{
	label$265:;
	int64 T$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 24ll );
	fb_StrAssign( (void*)&DESC$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
	if( ISSTATIC$1 == 0ll ) goto label$268;
	{
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$270;
		{
			fb_StrDelete( (FBSTRING*)&VALUE$1 );
			fb_StrDelete( (FBSTRING*)&DESC$1 );
			goto label$266;
		}
		label$270:;
		label$269:;
		if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) == (struct $7ASTNODE*)0ull ) goto label$272;
		{
			T$1 = 38ll;
		}
		goto label$271;
		label$272:;
		{
			T$1 = 40ll;
		}
		label$271:;
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":V", 3ll, 0 );
		uint8* vr$10 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$10, 0ll, 0 );
	}
	goto label$267;
	label$268:;
	{
		T$1 = 128ll;
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":", 2ll, 0 );
		FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
		fb_StrAssign( (void*)&VALUE$1, -1ll, (void*)vr$14, -1ll, 0 );
	}
	label$267:;
	FBSTRING* vr$16 = HGETDATATYPE_ASM64( SYM$1, 0ll );
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$16, -1ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)T$1, (int16)0, &VALUE$1 );
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$266:;
}

void EDBGEMITPROCHEADER_ASM64( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING TMP$397$1;
	FBSTRING TMP$398$1;
	label$273:;
	static FBSTRING DESC$1;
	static FBSTRING PROCNAME$1;
	static FBSTRING FILENAME$1;
	fb_StrAssign( (void*)&FILENAME$1, -1ll, (void*)((uint8*)&ENV$ + 560ll), 261ll, 0 );
	FBSTRING* vr$1 = fb_StrUcase2( (FBSTRING*)&FILENAME$1, 0 );
	fb_StrAssign( (void*)&FILENAME$1, -1ll, (void*)vr$1, -1ll, 0 );
	DBG_FILENAME( &FILENAME$1 );
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 4096ll) == 0ll ) goto label$276;
	{
		FBSTRING TMP$393$2;
		FBSTRING TMP$394$2;
		__builtin_memset( &TMP$394$2, 0, 24ll );
		uint8* vr$5 = SYMBGETMANGLEDNAME( PROC$1 );
		fb_StrAssign( (void*)&TMP$394$2, -1ll, (void*)vr$5, 0ll, 0 );
		__builtin_memset( &TMP$393$2, 0, 24ll );
		FBSTRING* vr$9 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&TMP$393$2, -1ll, (void*)vr$9, -1ll, 0 );
		DBG_ADDSTAB( &TMP$393$2, (uint8)42u, (int16)1, &TMP$394$2 );
		fb_StrDelete( (FBSTRING*)&TMP$394$2 );
		fb_StrDelete( (FBSTRING*)&TMP$393$2 );
		*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll) = 1ll;
		*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 40ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8552ll);
		FBSTRING* vr$19 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$19, -1ll, 0 );
	}
	goto label$275;
	label$276:;
	{
		uint8* vr$20 = SYMBGETDBGNAME( PROC$1 );
		fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$20, 0ll, 0 );
	}
	label$275:;
	uint8* vr$21 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1ll, (void*)vr$21, 0ll, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 64ll) = PROC$1;
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 32ll) == 0ll ) goto label$278;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":F", 3ll, 0 );
	}
	goto label$277;
	label$278:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)":f", 3ll, 0 );
	}
	label$277:;
	FBSTRING* vr$24 = HGETDATATYPE_ASM64( PROC$1, 0ll );
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$24, -1ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)36u, (int16)*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll), &PROCNAME$1 );
	__builtin_memset( &TMP$398$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$398$1, -1ll, (void*)"0", 2ll, 0 );
	__builtin_memset( &TMP$397$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$397$1, -1ll, (void*)"", 1ll, 0 );
	DBG_ADDSTAB( &TMP$397$1, (uint8)68u, (int16)1, &TMP$398$1 );
	fb_StrDelete( (FBSTRING*)&TMP$398$1 );
	fb_StrDelete( (FBSTRING*)&TMP$397$1 );
	label$274:;
}

void EDBGEMITPROCARG_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$399$1;
	FBSTRING TMP$402$1;
	label$279:;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	__builtin_memset( &TMP$399$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$399$1, *(void**)((uint8*)SYM$1 + 32ll), 0ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$4, -1ll, 0 );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32768ll) == 0ll ) goto label$282;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"p", 2ll, 0 );
	}
	goto label$281;
	label$282:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"v", 2ll, 0 );
	}
	label$281:;
	FBSTRING* vr$10 = HGETDATATYPE_ASM64( SYM$1, 0ll );
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$10, -1ll, 0 );
	__builtin_memset( &TMP$402$1, 0, 24ll );
	FBSTRING* vr$14 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
	fb_StrAssign( (void*)&TMP$402$1, -1ll, (void*)vr$14, -1ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)160u, (int16)0, &TMP$402$1 );
	fb_StrDelete( (FBSTRING*)&TMP$402$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$280:;
}

int32 REG_FINDREAL( int32 VREG$1 )
{
	FBSTRING TMP$507$1;
	FBSTRING TMP$508$1;
	FBSTRING TMP$509$1;
	FBSTRING TMP$510$1;
	FBSTRING TMP$511$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4ll );
	label$460:;
	int32 REALREG$1;
	__builtin_memset( &REALREG$1, 0, 4ll );
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$465:;
		{
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)IREG$2 << (2ll & 63ll))) != (int64)VREG$1 ) goto label$467;
			{
				fb$result$1 = IREG$2;
				goto label$461;
			}
			label$467:;
			label$466:;
		}
		label$463:;
		IREG$2 = (int32)((int64)IREG$2 + 1ll);
		label$462:;
		if( (int64)IREG$2 <= 15ll ) goto label$465;
		label$464:;
	}
	struct $14ASM64_SAVEDREG* V$1;
	V$1 = (struct $14ASM64_SAVEDREG*)0ull;
	if( (int64)*(int32*)((uint8*)&CTX$ + 376ll) <= 0ll ) goto label$469;
	{
		void* vr$12 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$12;
		label$470:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0ull ) goto label$471;
		{
			if( (int64)*(int32*)((uint8*)V$1 + 4ll) != (int64)VREG$1 ) goto label$473;
			{
				goto label$471;
			}
			label$473:;
			label$472:;
			void* vr$16 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$16;
		}
		goto label$470;
		label$471:;
	}
	label$469:;
	label$468:;
	if( V$1 != (struct $14ASM64_SAVEDREG*)0ull ) goto label$475;
	{
		FBSTRING TMP$499$2;
		FBSTRING TMP$503$2;
		FBSTRING TMP$504$2;
		FBSTRING TMP$505$2;
		FBSTRING TMP$506$2;
		__builtin_memset( &TMP$499$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$499$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$499$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$499$2 );
		__builtin_memset( &TMP$505$2, 0, 24ll );
		FBSTRING* vr$22 = fb_IntToStr( VREG$1 );
		__builtin_memset( &TMP$503$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$503$2, (void*)"FOUND AN ERROR : virtual register=", 35ll, (void*)vr$22, -1ll );
		__builtin_memset( &TMP$504$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$504$2, (void*)vr$25, -1ll, (void*)" no real register corresponding, using KREG_XXX", 48ll );
		fb_StrAssign( (void*)&TMP$505$2, -1ll, (void*)vr$28, -1ll, 0 );
		HWRITEASM64( &TMP$505$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$505$2 );
		__builtin_memset( &TMP$506$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$506$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$506$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$506$2 );
		fb$result$1 = 17;
		goto label$461;
	}
	label$475:;
	label$474:;
	int32 vr$36 = REG_FINDFREE( VREG$1, -1ll );
	REALREG$1 = vr$36;
	__builtin_memset( &TMP$511$1, 0, 24ll );
	FBSTRING* vr$39 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8ll) );
	__builtin_memset( &TMP$507$1, 0, 24ll );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$507$1, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REALREG$1 << (3ll & 63ll))), 0ll );
	__builtin_memset( &TMP$508$1, 0, 24ll );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$508$1, (void*)vr$44, -1ll, (void*)", QWORD PTR ", 13ll );
	__builtin_memset( &TMP$509$1, 0, 24ll );
	FBSTRING* vr$50 = fb_StrConcat( &TMP$509$1, (void*)vr$47, -1ll, (void*)vr$39, -1ll );
	__builtin_memset( &TMP$510$1, 0, 24ll );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$510$1, (void*)vr$50, -1ll, (void*)"[rbp]", 6ll );
	fb_StrAssign( (void*)&TMP$511$1, -1ll, (void*)vr$53, -1ll, 0 );
	HWRITEASM64( &TMP$511$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$511$1 );
	*(int32*)((uint8*)V$1 + 4ll) = -2;
	fb$result$1 = REALREG$1;
	goto label$461;
	label$461:;
	return fb$result$1;
}

uint8* REG_TEMPO( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$476:;
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4ll );
	static int32 COUNTER$1 = 9999999;
	COUNTER$1 = (int32)((int64)COUNTER$1 + 1ll);
	int32 vr$5 = REG_FINDFREE( COUNTER$1, -1ll );
	REG$1 = vr$5;
	fb$result$1 = *(uint8**)((uint8*)REGSTRQ$ + ((int64)REG$1 << (3ll & 63ll)));
	goto label$477;
	label$477:;
	return fb$result$1;
}

void SAVE_CALL( FBSTRING* FUNC$1, struct $6IRVREG* VR$1, int64 VRREG$1 )
{
	int64 TMP$2839$1;
	label$2203:;
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$2206;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2ll & 63ll))) = -2;
		label$2206:;
	}
	REG_SAVE(  );
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2207;
	int64 vr$1 = FBGETOPTION( 0ll );
	TMP$2839$1 = (int64)-(vr$1 == 2ll);
	goto label$2212;
	label$2207:;
	TMP$2839$1 = 0ll;
	label$2212:;
	if( TMP$2839$1 == 0ll ) goto label$2209;
	{
		FBSTRING TMP$2842$2;
		FBSTRING TMP$2843$2;
		FBSTRING TMP$2844$2;
		__builtin_memset( &TMP$2844$2, 0, 24ll );
		__builtin_memset( &TMP$2842$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$2842$2, (void*)"call ", 6ll, (void*)FUNC$1, -1ll );
		__builtin_memset( &TMP$2843$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$2843$2, (void*)vr$6, -1ll, (void*)"@PLT", 5ll );
		fb_StrAssign( (void*)&TMP$2844$2, -1ll, (void*)vr$9, -1ll, 0 );
		HWRITEASM64( &TMP$2844$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2844$2 );
	}
	goto label$2208;
	label$2209:;
	{
		FBSTRING TMP$2845$2;
		FBSTRING TMP$2846$2;
		__builtin_memset( &TMP$2846$2, 0, 24ll );
		__builtin_memset( &TMP$2845$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$2845$2, (void*)"call ", 6ll, (void*)FUNC$1, -1ll );
		fb_StrAssign( (void*)&TMP$2846$2, -1ll, (void*)vr$16, -1ll, 0 );
		HWRITEASM64( &TMP$2846$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2846$2 );
	}
	label$2208:;
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$2211;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2ll & 63ll))) = (int32)*(int64*)((uint8*)VR$1 + 24ll);
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static void _ZN13ASM64_CONTEXTC1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 8ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 16ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 40ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 64ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 88ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 112ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 136ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 160ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 168ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 176ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 184ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 192ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 200ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 208ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 216ll), 0, 8ll );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 224ll), 0, 4ll );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 228ll), 0, 4ll );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 232ll), 0, 4ll );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 236ll), 0, 4ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 240ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 248ll), 0, 8ll );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 256ll), 0, 1ll );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 257ll), 0, 1ll );
	__builtin_memset( (struct $6TFLIST*)((uint8*)THIS$1 + 264ll), 0, 112ll );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 376ll), 0, 4ll );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 384ll), 0, 8ll );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 392ll), 0, 8ll );
	__builtin_memset( (boolean*)((uint8*)THIS$1 + 400ll), 0, 1ll );
	__builtin_memset( ($13FB_COMPTARGET*)((uint8*)THIS$1 + 408ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 416ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 424ll), 0, 8ll );
	label$10:;
	label$11:;
}

static void _ZN13ASM64_CONTEXTaSERKS_( struct $13ASM64_CONTEXT* THIS$1, struct $13ASM64_CONTEXT* __FB_RHS__$1 )
{
	label$12:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	*(int64*)((uint8*)THIS$1 + 8ll) = *(int64*)((uint8*)__FB_RHS__$1 + 8ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 16ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 16ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 40ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 40ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 64ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 64ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 88ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 88ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 112ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 112ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 136ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 136ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 160ll) = *(int64*)((uint8*)__FB_RHS__$1 + 160ll);
	*(int64*)((uint8*)THIS$1 + 168ll) = *(int64*)((uint8*)__FB_RHS__$1 + 168ll);
	*(int64*)((uint8*)THIS$1 + 176ll) = *(int64*)((uint8*)__FB_RHS__$1 + 176ll);
	*(int64*)((uint8*)THIS$1 + 184ll) = *(int64*)((uint8*)__FB_RHS__$1 + 184ll);
	*(int64*)((uint8*)THIS$1 + 192ll) = *(int64*)((uint8*)__FB_RHS__$1 + 192ll);
	*(int64*)((uint8*)THIS$1 + 200ll) = *(int64*)((uint8*)__FB_RHS__$1 + 200ll);
	*(int64*)((uint8*)THIS$1 + 208ll) = *(int64*)((uint8*)__FB_RHS__$1 + 208ll);
	*(int64*)((uint8*)THIS$1 + 216ll) = *(int64*)((uint8*)__FB_RHS__$1 + 216ll);
	*(int32*)((uint8*)THIS$1 + 224ll) = *(int32*)((uint8*)__FB_RHS__$1 + 224ll);
	*(int32*)((uint8*)THIS$1 + 228ll) = *(int32*)((uint8*)__FB_RHS__$1 + 228ll);
	*(int32*)((uint8*)THIS$1 + 232ll) = *(int32*)((uint8*)__FB_RHS__$1 + 232ll);
	*(int32*)((uint8*)THIS$1 + 236ll) = *(int32*)((uint8*)__FB_RHS__$1 + 236ll);
	*(int64*)((uint8*)THIS$1 + 240ll) = *(int64*)((uint8*)__FB_RHS__$1 + 240ll);
	*(int64*)((uint8*)THIS$1 + 248ll) = *(int64*)((uint8*)__FB_RHS__$1 + 248ll);
	*(boolean*)((uint8*)THIS$1 + 256ll) = *(boolean*)((uint8*)__FB_RHS__$1 + 256ll);
	*(boolean*)((uint8*)THIS$1 + 257ll) = *(boolean*)((uint8*)__FB_RHS__$1 + 257ll);
	__builtin_memcpy( (struct $6TFLIST*)((uint8*)THIS$1 + 264ll), (struct $6TFLIST*)((uint8*)__FB_RHS__$1 + 264ll), 112 );
	*(int32*)((uint8*)THIS$1 + 376ll) = *(int32*)((uint8*)__FB_RHS__$1 + 376ll);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 384ll) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 384ll);
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 392ll) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 392ll);
	*(boolean*)((uint8*)THIS$1 + 400ll) = *(boolean*)((uint8*)__FB_RHS__$1 + 400ll);
	*($13FB_COMPTARGET*)((uint8*)THIS$1 + 408ll) = *($13FB_COMPTARGET*)((uint8*)__FB_RHS__$1 + 408ll);
	*(int64*)((uint8*)THIS$1 + 416ll) = *(int64*)((uint8*)__FB_RHS__$1 + 416ll);
	*(int64*)((uint8*)THIS$1 + 424ll) = *(int64*)((uint8*)__FB_RHS__$1 + 424ll);
	label$13:;
}

static void _ZN13ASM64_CONTEXTD1Ev( struct $13ASM64_CONTEXT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 136ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 112ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 88ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 64ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 40ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 16ll) );
}

static void _ZN6DBGCTXC1Ev( struct $6DBGCTX* THIS$1 )
{
	__builtin_memset( (uint64*)THIS$1, 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 8ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 16ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 40ll), 0, 24ll );
	__builtin_memset( (struct $8FBSYMBOL**)((uint8*)THIS$1 + 64ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 72ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 80ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 88ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 96ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 104ll), 0, 8ll );
	label$18:;
	label$19:;
}

static void _ZN6DBGCTXaSERKS_( struct $6DBGCTX* THIS$1, struct $6DBGCTX* __FB_RHS__$1 )
{
	label$20:;
	*(uint64*)THIS$1 = *(uint64*)__FB_RHS__$1;
	*(int64*)((uint8*)THIS$1 + 8ll) = *(int64*)((uint8*)__FB_RHS__$1 + 8ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 16ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 16ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 40ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 40ll), -1ll, 0 );
	*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 64ll) = *(struct $8FBSYMBOL**)((uint8*)__FB_RHS__$1 + 64ll);
	*(int64*)((uint8*)THIS$1 + 72ll) = *(int64*)((uint8*)__FB_RHS__$1 + 72ll);
	*(int64*)((uint8*)THIS$1 + 80ll) = *(int64*)((uint8*)__FB_RHS__$1 + 80ll);
	*(int64*)((uint8*)THIS$1 + 88ll) = *(int64*)((uint8*)__FB_RHS__$1 + 88ll);
	*(int64*)((uint8*)THIS$1 + 96ll) = *(int64*)((uint8*)__FB_RHS__$1 + 96ll);
	*(int64*)((uint8*)THIS$1 + 104ll) = *(int64*)((uint8*)__FB_RHS__$1 + 104ll);
	label$21:;
}

static void _ZN6DBGCTXD1Ev( struct $6DBGCTX* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 40ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 16ll) );
}

static void _ZN7TDBGSTRC1Ev( struct $7TDBGSTR* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8ll), 0, 24ll );
	label$26:;
	label$27:;
}

static void _ZN7TDBGSTRaSERKS_( struct $7TDBGSTR* THIS$1, struct $7TDBGSTR* __FB_RHS__$1 )
{
	label$28:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 8ll), -1ll, 0 );
	label$29:;
}

static void _ZN7TDBGSTRD1Ev( struct $7TDBGSTR* THIS$1 )
{
	label$32:;
	label$33:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8ll) );
}

static void _ZN8TDBGSTABC1Ev( struct $8TDBGSTAB* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8ll), 0, 24ll );
	label$34:;
	label$35:;
}

static void _ZN8TDBGSTABaSERKS_( struct $8TDBGSTAB* THIS$1, struct $8TDBGSTAB* __FB_RHS__$1 )
{
	label$36:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 8ll), -1ll, 0 );
	label$37:;
}

static void _ZN8TDBGSTABD1Ev( struct $8TDBGSTAB* THIS$1 )
{
	label$40:;
	label$41:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8ll) );
}

static void CHECK_OPTIM( FBSTRING* CODE$1 )
{
	label$42:;
	FBSTRING PART1$1;
	__builtin_memset( &PART1$1, 0, 24ll );
	FBSTRING PART2$1;
	__builtin_memset( &PART2$1, 0, 24ll );
	FBSTRING MOV$1;
	__builtin_memset( &MOV$1, 0, 24ll );
	FBSTRING NEWCODE$1;
	__builtin_memset( &NEWCODE$1, 0, 24ll );
	static FBSTRING PREVPART1$1;
	static FBSTRING PREVPART2$1;
	static FBSTRING PREVMOV$1;
	static int32 PREVWPOS$1;
	static int32 FLAG$1;
	int32 POSCHAR1$1;
	__builtin_memset( &POSCHAR1$1, 0, 4ll );
	int32 POSCHAR2$1;
	__builtin_memset( &POSCHAR2$1, 0, 4ll );
	int32 WRITEPOS$1;
	__builtin_memset( &WRITEPOS$1, 0, 4ll );
	int64 vr$7 = fb_StrLen( (void*)CODE$1, -1ll );
	if( vr$7 != 0ll ) goto label$45;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$45:;
	label$44:;
	if( (int64)FLAG$1 != 2ll ) goto label$47;
	{
		FBSTRING TMP$192$2;
		__builtin_memset( &TMP$192$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$192$2, (void*)&PREVPART1$1, -1ll, (void*)":", 2ll );
		int64 vr$16 = fb_StrInstr( 1ll, (FBSTRING*)CODE$1, (FBSTRING*)vr$15 );
		if( vr$16 == 0ll ) goto label$49;
		{
			FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"#O9", 3ll );
			fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$17 );
		}
		label$49:;
		label$48:;
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$47:;
	label$46:;
	FBSTRING* vr$24 = fb_LEFT( (FBSTRING*)CODE$1, 3ll );
	int32 vr$25 = fb_StrCompare( (void*)vr$24, -1ll, (void*)"mov", 4ll );
	FBSTRING* vr$28 = fb_LEFT( (FBSTRING*)CODE$1, 3ll );
	int32 vr$29 = fb_StrCompare( (void*)vr$28, -1ll, (void*)"lea", 4ll );
	FBSTRING* vr$33 = fb_LEFT( (FBSTRING*)CODE$1, 3ll );
	int32 vr$34 = fb_StrCompare( (void*)vr$33, -1ll, (void*)"jmp", 4ll );
	if( (((int64)-((int64)vr$25 != 0ll) & (int64)-((int64)vr$29 != 0ll)) & (int64)-((int64)vr$34 != 0ll)) == 0ll ) goto label$51;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$51:;
	label$50:;
	FBSTRING* vr$42 = fb_LEFT( (FBSTRING*)CODE$1, 6ll );
	int32 vr$43 = fb_StrCompare( (void*)vr$42, -1ll, (void*)"movsxd", 7ll );
	if( (int64)vr$43 != 0ll ) goto label$53;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$53:;
	}
	FBSTRING* vr$49 = fb_LEFT( (FBSTRING*)CODE$1, 5ll );
	int32 vr$50 = fb_StrCompare( (void*)vr$49, -1ll, (void*)"movsx", 6ll );
	if( (int64)vr$50 != 0ll ) goto label$55;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$55:;
	}
	FBSTRING* vr$56 = fb_LEFT( (FBSTRING*)CODE$1, 5ll );
	int32 vr$57 = fb_StrCompare( (void*)vr$56, -1ll, (void*)"movzx", 6ll );
	if( (int64)vr$57 != 0ll ) goto label$57;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
		label$57:;
	}
	int64 vr$64 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
	WRITEPOS$1 = (int32)(vr$64 + 1ll);
	FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (uint8*)" ", 1ll );
	int64 vr$68 = fb_StrInstr( 1ll, (FBSTRING*)CODE$1, (FBSTRING*)vr$67 );
	POSCHAR1$1 = (int32)vr$68;
	FBSTRING* vr$72 = fb_LEFT( (FBSTRING*)CODE$1, (int64)POSCHAR1$1 + -1ll );
	fb_StrAssign( (void*)&MOV$1, -1ll, (void*)vr$72, -1ll, 0 );
	FBSTRING* vr$74 = fb_StrAllocTempDescZEx( (uint8*)",", 1ll );
	int64 vr$75 = fb_StrInstr( 1ll, (FBSTRING*)CODE$1, (FBSTRING*)vr$74 );
	POSCHAR2$1 = (int32)vr$75;
	FBSTRING* vr$83 = fb_StrMid( (FBSTRING*)CODE$1, (int64)POSCHAR1$1 + 1ll, ((int64)POSCHAR2$1 - (int64)POSCHAR1$1) + -1ll );
	fb_StrAssign( (void*)&PART1$1, -1ll, (void*)vr$83, -1ll, 0 );
	FBSTRING* vr$85 = fb_StrAllocTempDescZEx( (uint8*)"#", 1ll );
	int64 vr$86 = fb_StrInstr( 1ll, (FBSTRING*)CODE$1, (FBSTRING*)vr$85 );
	POSCHAR1$1 = (int32)vr$86;
	if( (int64)POSCHAR1$1 != 0ll ) goto label$59;
	{
		int64 vr$89 = fb_StrLen( (void*)CODE$1, -1ll );
		POSCHAR1$1 = (int32)(vr$89 + 1ll);
	}
	goto label$58;
	label$59:;
	{
		POSCHAR1$1 = (int32)((int64)POSCHAR1$1 + -1ll);
	}
	label$58:;
	FBSTRING* vr$101 = fb_StrMid( (FBSTRING*)CODE$1, (int64)POSCHAR2$1 + 2ll, ((int64)POSCHAR1$1 - (int64)POSCHAR2$1) + -2ll );
	FBSTRING* vr$102 = fb_RTRIM( (FBSTRING*)vr$101 );
	fb_StrAssign( (void*)&PART2$1, -1ll, (void*)vr$102, -1ll, 0 );
	int32 vr$105 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"mov", 4ll );
	if( (int64)vr$105 != 0ll ) goto label$61;
	{
		int32 vr$109 = fb_StrCompare( (void*)&PART1$1, -1ll, (void*)&PART2$1, -1ll );
		if( (int64)vr$109 != 0ll ) goto label$63;
		{
			FBSTRING* vr$112 = fb_StrAllocTempDescZEx( (uint8*)"rsi rdi rcx rdx rbx rax r8 r9 r10 r11 r12 r13 r14 r15", 53ll );
			int64 vr$113 = fb_StrInstr( 1ll, (FBSTRING*)vr$112, (FBSTRING*)&PART1$1 );
			if( vr$113 == 0ll ) goto label$65;
			{
				FBSTRING TMP$205$4;
				__builtin_memset( &TMP$205$4, 0, 24ll );
				FBSTRING* vr$116 = fb_StrConcat( &TMP$205$4, (void*)"#O0", 4ll, (void*)CODE$1, -1ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$116, -1ll, 0 );
				fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
				fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
				fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
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
	int32 vr$122 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"lea", 4ll );
	if( (int64)vr$122 != 0ll ) goto label$67;
	{
		FBSTRING* vr$124 = fb_StrAllocTempDescZEx( (uint8*)"   add ", 7ll );
		int64 vr$125 = fb_StrInstr( 1ll, (FBSTRING*)CODE$1, (FBSTRING*)vr$124 );
		if( vr$125 == 0ll ) goto label$69;
		{
			fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
			fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
			fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
			fb_StrDelete( (FBSTRING*)&MOV$1 );
			fb_StrDelete( (FBSTRING*)&PART2$1 );
			fb_StrDelete( (FBSTRING*)&PART1$1 );
			goto label$43;
			label$69:;
		}
		FLAG$1 = 1;
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)&PART1$1, -1ll, 0 );
		fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)&PART2$1, -1ll, 0 );
		PREVWPOS$1 = WRITEPOS$1;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$67:;
	label$66:;
	int32 vr$137 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"jmp", 4ll );
	if( (int64)vr$137 != 0ll ) goto label$71;
	{
		fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)&PART1$1, -1ll, 0 );
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
	if( (int64)FLAG$1 != 1ll ) goto label$73;
	{
		FBSTRING TMP$209$2;
		FBSTRING TMP$210$2;
		__builtin_memset( &TMP$209$2, 0, 24ll );
		FBSTRING* vr$147 = fb_StrConcat( &TMP$209$2, (void*)"[", 2ll, (void*)&PREVPART1$1, -1ll );
		__builtin_memset( &TMP$210$2, 0, 24ll );
		FBSTRING* vr$150 = fb_StrConcat( &TMP$210$2, (void*)vr$147, -1ll, (void*)"]", 2ll );
		int64 vr$152 = fb_StrInstr( 1ll, (FBSTRING*)&PART1$1, (FBSTRING*)vr$150 );
		if( vr$152 == 0ll ) goto label$75;
		{
			FBSTRING* vr$161 = fb_RIGHT( (FBSTRING*)&PART2$1, 1ll );
			uint32 vr$162 = fb_ASC( (FBSTRING*)vr$161, 1ll );
			FBSTRING* vr$166 = fb_RIGHT( (FBSTRING*)&PART2$1, 1ll );
			uint32 vr$167 = fb_ASC( (FBSTRING*)vr$166, 1ll );
			if( (((int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART2$1 == 114ull) | (int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART2$1 == 101ull)) | ((int64)-((int64)vr$162 >= 48ll) & (int64)-((int64)vr$167 <= 57ll))) == 0ll ) goto label$77;
			{
				FBSTRING TMP$217$4;
				FBSTRING TMP$218$4;
				FBSTRING TMP$219$4;
				FBSTRING TMP$220$4;
				FBSTRING TMP$221$4;
				FBSTRING* vr$172 = fb_StrAllocTempDescZEx( (uint8*)"#O4", 3ll );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$172 );
				fb_StrAssign( (void*)&NEWCODE$1, -1ll, (void*)&MOV$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)" ", 2ll, 0 );
				FBSTRING* vr$178 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
				int64 vr$180 = fb_StrInstr( 1ll, (FBSTRING*)&PART1$1, (FBSTRING*)vr$178 );
				FBSTRING* vr$183 = fb_StrMid( (FBSTRING*)&PART1$1, 1ll, vr$180 + -1ll );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)vr$183, -1ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PART2$1, -1ll, 0 );
				int64 vr$190 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
				int64 vr$191 = fb_StrLen( (void*)CODE$1, -1ll );
				WRITEPOS$1 = (int32)((vr$190 + vr$191) + 9ll);
				FBSTRING* vr$197 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$217$4, 0, 24ll );
				FBSTRING* vr$200 = fb_StrConcat( &TMP$217$4, (void*)"#O4", 4ll, (void*)CODE$1, -1ll );
				__builtin_memset( &TMP$218$4, 0, 24ll );
				FBSTRING* vr$203 = fb_StrConcat( &TMP$218$4, (void*)vr$200, -1ll, (void*)"\x0D\x0A", 3ll );
				__builtin_memset( &TMP$219$4, 0, 24ll );
				FBSTRING* vr$206 = fb_StrConcat( &TMP$219$4, (void*)vr$203, -1ll, (void*)vr$197, -1ll );
				__builtin_memset( &TMP$220$4, 0, 24ll );
				FBSTRING* vr$209 = fb_StrConcat( &TMP$220$4, (void*)vr$206, -1ll, (void*)&NEWCODE$1, -1ll );
				__builtin_memset( &TMP$221$4, 0, 24ll );
				FBSTRING* vr$212 = fb_StrConcat( &TMP$221$4, (void*)vr$209, -1ll, (void*)" #Optim 4", 10ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$212, -1ll, 0 );
			}
			label$77:;
			label$76:;
		}
		goto label$74;
		label$75:;
		{
			int32 vr$214 = fb_StrCompare( (void*)&PART2$1, -1ll, (void*)&PREVPART1$1, -1ll );
			if( ((int64)-((int64)vr$214 == 0ll) & (int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART1$1 == 114ull)) == 0ll ) goto label$79;
			{
				FBSTRING TMP$225$4;
				FBSTRING TMP$226$4;
				FBSTRING TMP$227$4;
				FBSTRING TMP$228$4;
				FBSTRING TMP$229$4;
				FBSTRING* vr$221 = fb_StrAllocTempDescZEx( (uint8*)"#O5", 3ll );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$221 );
				fb_StrAssign( (void*)&NEWCODE$1, -1ll, (void*)"lea ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PART1$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
				int64 vr$230 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
				int64 vr$231 = fb_StrLen( (void*)CODE$1, -1ll );
				WRITEPOS$1 = (int32)((vr$230 + vr$231) + 9ll);
				FBSTRING* vr$237 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$225$4, 0, 24ll );
				FBSTRING* vr$240 = fb_StrConcat( &TMP$225$4, (void*)"#O5", 4ll, (void*)CODE$1, -1ll );
				__builtin_memset( &TMP$226$4, 0, 24ll );
				FBSTRING* vr$243 = fb_StrConcat( &TMP$226$4, (void*)vr$240, -1ll, (void*)"\x0D\x0A", 3ll );
				__builtin_memset( &TMP$227$4, 0, 24ll );
				FBSTRING* vr$246 = fb_StrConcat( &TMP$227$4, (void*)vr$243, -1ll, (void*)vr$237, -1ll );
				__builtin_memset( &TMP$228$4, 0, 24ll );
				FBSTRING* vr$249 = fb_StrConcat( &TMP$228$4, (void*)vr$246, -1ll, (void*)&NEWCODE$1, -1ll );
				__builtin_memset( &TMP$229$4, 0, 24ll );
				FBSTRING* vr$252 = fb_StrConcat( &TMP$229$4, (void*)vr$249, -1ll, (void*)" #Optim 5", 10ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$252, -1ll, 0 );
			}
			goto label$78;
			label$79:;
			{
				FBSTRING TMP$230$4;
				FBSTRING TMP$231$4;
				int64 TMP$232$4;
				if( (uint64)(int64)*(uint8*)*(uint8**)&PART1$1 != 114ull ) goto label$80;
				__builtin_memset( &TMP$230$4, 0, 24ll );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$230$4, (void*)"[", 2ll, (void*)&PREVPART1$1, -1ll );
				__builtin_memset( &TMP$231$4, 0, 24ll );
				FBSTRING* vr$260 = fb_StrConcat( &TMP$231$4, (void*)vr$257, -1ll, (void*)"]", 2ll );
				int32 vr$262 = fb_StrCompare( (void*)&PART2$1, -1ll, (void*)vr$260, -1ll );
				TMP$232$4 = (int64)-((int64)vr$262 == 0ll);
				goto label$2978;
				label$80:;
				TMP$232$4 = 0ll;
				label$2978:;
				if( TMP$232$4 == 0ll ) goto label$82;
				{
					FBSTRING TMP$235$5;
					FBSTRING TMP$236$5;
					FBSTRING TMP$237$5;
					FBSTRING TMP$238$5;
					FBSTRING TMP$239$5;
					FBSTRING* vr$265 = fb_StrAllocTempDescZEx( (uint8*)"#O7", 3ll );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$265 );
					fb_StrAssign( (void*)&NEWCODE$1, -1ll, (void*)&MOV$1, -1ll, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)" ", 2ll, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PART1$1, -1ll, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)", ", 3ll, 0 );
					fb_StrConcatAssign( (void*)&NEWCODE$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
					int64 vr$276 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
					int64 vr$277 = fb_StrLen( (void*)CODE$1, -1ll );
					WRITEPOS$1 = (int32)((vr$276 + vr$277) + 9ll);
					FBSTRING* vr$283 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
					__builtin_memset( &TMP$235$5, 0, 24ll );
					FBSTRING* vr$286 = fb_StrConcat( &TMP$235$5, (void*)"#O7", 4ll, (void*)CODE$1, -1ll );
					__builtin_memset( &TMP$236$5, 0, 24ll );
					FBSTRING* vr$289 = fb_StrConcat( &TMP$236$5, (void*)vr$286, -1ll, (void*)"\x0D\x0A", 3ll );
					__builtin_memset( &TMP$237$5, 0, 24ll );
					FBSTRING* vr$292 = fb_StrConcat( &TMP$237$5, (void*)vr$289, -1ll, (void*)vr$283, -1ll );
					__builtin_memset( &TMP$238$5, 0, 24ll );
					FBSTRING* vr$295 = fb_StrConcat( &TMP$238$5, (void*)vr$292, -1ll, (void*)&NEWCODE$1, -1ll );
					__builtin_memset( &TMP$239$5, 0, 24ll );
					FBSTRING* vr$298 = fb_StrConcat( &TMP$239$5, (void*)vr$295, -1ll, (void*)" #Optim 7", 10ll );
					fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$298, -1ll, 0 );
				}
				goto label$81;
				label$82:;
				{
					fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)"", 1ll, 0 );
					fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll, 0 );
					fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"", 1ll, 0 );
				}
				label$81:;
			}
			label$78:;
		}
		label$74:;
		fb_StrAssign( (void*)&PART1$1, -1ll, (void*)"", 1ll, 0 );
		fb_StrAssign( (void*)&PART2$1, -1ll, (void*)"", 1ll, 0 );
		FLAG$1 = 0;
		fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
		fb_StrDelete( (FBSTRING*)&MOV$1 );
		fb_StrDelete( (FBSTRING*)&PART2$1 );
		fb_StrDelete( (FBSTRING*)&PART1$1 );
		goto label$43;
	}
	label$73:;
	label$72:;
	int32 vr$306 = fb_StrCompare( (void*)&PART2$1, -1ll, (void*)&PREVPART1$1, -1ll );
	if( (int64)vr$306 != 0ll ) goto label$84;
	{
		int32 vr$309 = fb_StrCompare( (void*)&PART1$1, -1ll, (void*)&PREVPART2$1, -1ll );
		if( (int64)vr$309 != 0ll ) goto label$86;
		{
			FBSTRING TMP$241$3;
			__builtin_memset( &TMP$241$3, 0, 24ll );
			FBSTRING* vr$313 = fb_StrConcat( &TMP$241$3, (void*)"#O1 ", 5ll, (void*)CODE$1, -1ll );
			fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$313, -1ll, 0 );
		}
		goto label$85;
		label$86:;
		{
			int32 vr$314 = fb_StrCompare( (void*)&PREVPART2$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$314 != 0ll ) goto label$88;
			{
				FBSTRING TMP$242$4;
				FBSTRING TMP$246$4;
				FBSTRING TMP$247$4;
				__builtin_memset( &TMP$242$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$242$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$242$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$242$4 );
				__builtin_memset( &TMP$246$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$246$4, -1ll, (void*)"FOUND AN ERROR : prevpart empty ????????", 41ll, 0 );
				HWRITEASM64( &TMP$246$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$246$4 );
				__builtin_memset( &TMP$247$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$247$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$247$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$247$4 );
				fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
				fb_StrDelete( (FBSTRING*)&MOV$1 );
				fb_StrDelete( (FBSTRING*)&PART2$1 );
				fb_StrDelete( (FBSTRING*)&PART1$1 );
				goto label$43;
			}
			label$88:;
			label$87:;
			if( (uint64)(int64)*(uint8*)*(uint8**)&PREVPART2$1 != 114ull ) goto label$90;
			{
				FBSTRING TMP$254$4;
				FBSTRING TMP$255$4;
				FBSTRING TMP$256$4;
				FBSTRING TMP$257$4;
				FBSTRING TMP$258$4;
				FBSTRING TMP$259$4;
				FBSTRING TMP$260$4;
				FBSTRING TMP$261$4;
				FBSTRING TMP$262$4;
				FBSTRING* vr$334 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
				int64 vr$335 = fb_StrInstr( 1ll, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$334 );
				if( vr$335 == 0ll ) goto label$92;
				{
					if( (uint64)(int64)*(uint8*)*(uint8**)&PART1$1 != 120ull ) goto label$94;
					{
						int32 vr$339 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"movss", 6ll );
						if( (int64)vr$339 != 0ll ) goto label$96;
						{
							fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"movd", 5ll, 0 );
						}
						goto label$95;
						label$96:;
						{
							fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)"movq", 5ll, 0 );
						}
						label$95:;
					}
					label$94:;
					label$93:;
				}
				goto label$91;
				label$92:;
				{
					FBSTRING* vr$341 = fb_StrAllocTempDescZEx( (uint8*)"#O2", 3ll );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$341 );
					int32 vr$345 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"movq", 5ll );
					int32 vr$349 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"movd", 5ll );
					if( ((int64)-((int64)vr$345 == 0ll) | (int64)-((int64)vr$349 == 0ll)) == 0ll ) goto label$98;
					{
						fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)&MOV$1, -1ll, 0 );
					}
					goto label$97;
					label$98:;
					int32 vr$355 = fb_StrCompare( (void*)&MOV$1, -1ll, (void*)"movsx", 6ll );
					if( (int64)vr$355 != 0ll ) goto label$99;
					{
						fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)&MOV$1, -1ll, 0 );
					}
					label$99:;
					label$97:;
				}
				label$91:;
				int64 vr$359 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
				int64 vr$360 = fb_StrLen( (void*)CODE$1, -1ll );
				WRITEPOS$1 = (int32)((vr$359 + vr$360) + 9ll);
				FBSTRING* vr$366 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$254$4, 0, 24ll );
				FBSTRING* vr$369 = fb_StrConcat( &TMP$254$4, (void*)"#O2", 4ll, (void*)CODE$1, -1ll );
				__builtin_memset( &TMP$255$4, 0, 24ll );
				FBSTRING* vr$372 = fb_StrConcat( &TMP$255$4, (void*)vr$369, -1ll, (void*)"\x0D\x0A", 3ll );
				__builtin_memset( &TMP$256$4, 0, 24ll );
				FBSTRING* vr$375 = fb_StrConcat( &TMP$256$4, (void*)vr$372, -1ll, (void*)vr$366, -1ll );
				__builtin_memset( &TMP$257$4, 0, 24ll );
				FBSTRING* vr$378 = fb_StrConcat( &TMP$257$4, (void*)vr$375, -1ll, (void*)&PREVMOV$1, -1ll );
				__builtin_memset( &TMP$258$4, 0, 24ll );
				FBSTRING* vr$381 = fb_StrConcat( &TMP$258$4, (void*)vr$378, -1ll, (void*)" ", 2ll );
				__builtin_memset( &TMP$259$4, 0, 24ll );
				FBSTRING* vr$384 = fb_StrConcat( &TMP$259$4, (void*)vr$381, -1ll, (void*)&PART1$1, -1ll );
				__builtin_memset( &TMP$260$4, 0, 24ll );
				FBSTRING* vr$387 = fb_StrConcat( &TMP$260$4, (void*)vr$384, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$261$4, 0, 24ll );
				FBSTRING* vr$390 = fb_StrConcat( &TMP$261$4, (void*)vr$387, -1ll, (void*)&PREVPART2$1, -1ll );
				__builtin_memset( &TMP$262$4, 0, 24ll );
				FBSTRING* vr$393 = fb_StrConcat( &TMP$262$4, (void*)vr$390, -1ll, (void*)" #Optim 2", 10ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$393, -1ll, 0 );
				fb_StrAssign( (void*)&PART2$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
			}
			goto label$89;
			label$90:;
			if( (uint64)(int64)*(uint8*)*(uint8**)&PREVPART2$1 != 120ull ) goto label$100;
			{
				FBSTRING TMP$272$4;
				FBSTRING TMP$273$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$275$4;
				FBSTRING TMP$276$4;
				FBSTRING TMP$277$4;
				FBSTRING TMP$278$4;
				FBSTRING TMP$279$4;
				FBSTRING TMP$280$4;
				FBSTRING* vr$397 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
				int64 vr$398 = fb_StrInstr( 1ll, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$397 );
				if( vr$398 == 0ll ) goto label$102;
				{
					int32 vr$399 = fb_StrCompare( (void*)&PREVMOV$1, -1ll, (void*)"movss", 6ll );
					if( (int64)vr$399 != 0ll ) goto label$104;
					{
						fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movd", 5ll, 0 );
					}
					goto label$103;
					label$104:;
					{
						fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movq", 5ll, 0 );
					}
					label$103:;
				}
				goto label$101;
				label$102:;
				{
					FBSTRING* vr$403 = fb_StrAllocTempDescZEx( (uint8*)"#O3", 3ll );
					fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$403 );
					int32 vr$406 = fb_StrCompare( (void*)&PREVMOV$1, -1ll, (void*)"movq", 5ll );
					if( (int64)vr$406 != 0ll ) goto label$106;
					{
						FBSTRING* vr$408 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
						int64 vr$410 = fb_StrInstr( 1ll, (FBSTRING*)&PART2$1, (FBSTRING*)vr$408 );
						if( vr$410 == 0ll ) goto label$108;
						{
							fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movsd", 6ll, 0 );
						}
						goto label$107;
						label$108:;
						{
							fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movq", 5ll, 0 );
						}
						label$107:;
					}
					goto label$105;
					label$106:;
					int32 vr$413 = fb_StrCompare( (void*)&PREVMOV$1, -1ll, (void*)"movd", 5ll );
					if( (int64)vr$413 != 0ll ) goto label$109;
					{
						if( ((int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART1$1 == 114ull) | (int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART1$1 == 101ull)) == 0ll ) goto label$111;
						{
							fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movd", 5ll, 0 );
						}
						goto label$110;
						label$111:;
						{
							fb_StrAssign( (void*)&MOV$1, -1ll, (void*)"movss", 6ll, 0 );
						}
						label$110:;
					}
					goto label$105;
					label$109:;
					{
						FBSTRING TMP$265$6;
						FBSTRING TMP$268$6;
						FBSTRING TMP$269$6;
						FBSTRING TMP$270$6;
						__builtin_memset( &TMP$265$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$265$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$265$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$265$6 );
						__builtin_memset( &TMP$269$6, 0, 24ll );
						__builtin_memset( &TMP$268$6, 0, 24ll );
						FBSTRING* vr$432 = fb_StrConcat( &TMP$268$6, (void*)"FOUND AN ERROR : in check_optim 3-2 mov unknown=", 49ll, (void*)&MOV$1, -1ll );
						fb_StrAssign( (void*)&TMP$269$6, -1ll, (void*)vr$432, -1ll, 0 );
						HWRITEASM64( &TMP$269$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$269$6 );
						__builtin_memset( &TMP$270$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$270$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$270$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$270$6 );
					}
					label$105:;
				}
				label$101:;
				int64 vr$441 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
				int64 vr$442 = fb_StrLen( (void*)CODE$1, -1ll );
				WRITEPOS$1 = (int32)((vr$441 + vr$442) + 9ll);
				FBSTRING* vr$449 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$272$4, 0, 24ll );
				FBSTRING* vr$452 = fb_StrConcat( &TMP$272$4, (void*)"#O3", 4ll, (void*)CODE$1, -1ll );
				__builtin_memset( &TMP$273$4, 0, 24ll );
				FBSTRING* vr$455 = fb_StrConcat( &TMP$273$4, (void*)vr$452, -1ll, (void*)"\x0D\x0A", 3ll );
				__builtin_memset( &TMP$274$4, 0, 24ll );
				FBSTRING* vr$458 = fb_StrConcat( &TMP$274$4, (void*)vr$455, -1ll, (void*)vr$449, -1ll );
				__builtin_memset( &TMP$275$4, 0, 24ll );
				FBSTRING* vr$461 = fb_StrConcat( &TMP$275$4, (void*)vr$458, -1ll, (void*)&MOV$1, -1ll );
				__builtin_memset( &TMP$276$4, 0, 24ll );
				FBSTRING* vr$464 = fb_StrConcat( &TMP$276$4, (void*)vr$461, -1ll, (void*)" ", 2ll );
				__builtin_memset( &TMP$277$4, 0, 24ll );
				FBSTRING* vr$467 = fb_StrConcat( &TMP$277$4, (void*)vr$464, -1ll, (void*)&PART1$1, -1ll );
				__builtin_memset( &TMP$278$4, 0, 24ll );
				FBSTRING* vr$470 = fb_StrConcat( &TMP$278$4, (void*)vr$467, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$279$4, 0, 24ll );
				FBSTRING* vr$473 = fb_StrConcat( &TMP$279$4, (void*)vr$470, -1ll, (void*)&PREVPART2$1, -1ll );
				__builtin_memset( &TMP$280$4, 0, 24ll );
				FBSTRING* vr$476 = fb_StrConcat( &TMP$280$4, (void*)vr$473, -1ll, (void*)" #Optim 3", 10ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$476, -1ll, 0 );
				fb_StrAssign( (void*)&PART2$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
			}
			goto label$89;
			label$100:;
			int32 vr$486 = fb_StrCompare( (void*)&PREVPART1$1, -1ll, (void*)&PART2$1, -1ll );
			FBSTRING* vr$490 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
			int64 vr$491 = fb_StrInstr( 1ll, (FBSTRING*)&PREVPART1$1, (FBSTRING*)vr$490 );
			if( ((((int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART1$1 == 114ull) | (int64)-((uint64)(int64)*(uint8*)*(uint8**)&PART1$1 == 101ull)) & (int64)-((int64)vr$486 == 0ll)) & (int64)-(vr$491 == 0ll)) == 0ll ) goto label$112;
			{
				FBSTRING TMP$283$4;
				FBSTRING TMP$284$4;
				FBSTRING TMP$285$4;
				FBSTRING TMP$286$4;
				FBSTRING TMP$287$4;
				FBSTRING TMP$288$4;
				FBSTRING TMP$289$4;
				FBSTRING TMP$290$4;
				FBSTRING TMP$291$4;
				FBSTRING* vr$494 = fb_StrAllocTempDescZEx( (uint8*)"#O6", 3ll );
				fb_StrAssignMid( (FBSTRING*)((uint8*)&CTX$ + 112ll), (int64)PREVWPOS$1, -1ll, (FBSTRING*)vr$494 );
				int64 vr$498 = fb_StrLen( (void*)((uint8*)&CTX$ + 112ll), -1ll );
				int64 vr$499 = fb_StrLen( (void*)CODE$1, -1ll );
				WRITEPOS$1 = (int32)((vr$498 + vr$499) + 9ll);
				FBSTRING* vr$505 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$283$4, 0, 24ll );
				FBSTRING* vr$508 = fb_StrConcat( &TMP$283$4, (void*)"#O6", 4ll, (void*)CODE$1, -1ll );
				__builtin_memset( &TMP$284$4, 0, 24ll );
				FBSTRING* vr$511 = fb_StrConcat( &TMP$284$4, (void*)vr$508, -1ll, (void*)"\x0D\x0A", 3ll );
				__builtin_memset( &TMP$285$4, 0, 24ll );
				FBSTRING* vr$514 = fb_StrConcat( &TMP$285$4, (void*)vr$511, -1ll, (void*)vr$505, -1ll );
				__builtin_memset( &TMP$286$4, 0, 24ll );
				FBSTRING* vr$517 = fb_StrConcat( &TMP$286$4, (void*)vr$514, -1ll, (void*)&PREVMOV$1, -1ll );
				__builtin_memset( &TMP$287$4, 0, 24ll );
				FBSTRING* vr$520 = fb_StrConcat( &TMP$287$4, (void*)vr$517, -1ll, (void*)" ", 2ll );
				__builtin_memset( &TMP$288$4, 0, 24ll );
				FBSTRING* vr$523 = fb_StrConcat( &TMP$288$4, (void*)vr$520, -1ll, (void*)&PART1$1, -1ll );
				__builtin_memset( &TMP$289$4, 0, 24ll );
				FBSTRING* vr$526 = fb_StrConcat( &TMP$289$4, (void*)vr$523, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$290$4, 0, 24ll );
				FBSTRING* vr$529 = fb_StrConcat( &TMP$290$4, (void*)vr$526, -1ll, (void*)&PREVPART2$1, -1ll );
				__builtin_memset( &TMP$291$4, 0, 24ll );
				FBSTRING* vr$532 = fb_StrConcat( &TMP$291$4, (void*)vr$529, -1ll, (void*)" #Optim 6", 10ll );
				fb_StrAssign( (void*)CODE$1, -1ll, (void*)vr$532, -1ll, 0 );
				fb_StrAssign( (void*)&PART2$1, -1ll, (void*)&PREVPART2$1, -1ll, 0 );
			}
			label$112:;
			label$89:;
		}
		label$85:;
	}
	label$84:;
	label$83:;
	fb_StrAssign( (void*)&PREVPART1$1, -1ll, (void*)&PART1$1, -1ll, 0 );
	fb_StrAssign( (void*)&PREVPART2$1, -1ll, (void*)&PART2$1, -1ll, 0 );
	fb_StrAssign( (void*)&PREVMOV$1, -1ll, (void*)&MOV$1, -1ll, 0 );
	PREVWPOS$1 = WRITEPOS$1;
	fb_StrDelete( (FBSTRING*)&NEWCODE$1 );
	fb_StrDelete( (FBSTRING*)&MOV$1 );
	fb_StrDelete( (FBSTRING*)&PART2$1 );
	fb_StrDelete( (FBSTRING*)&PART1$1 );
	label$43:;
}

static void REG_FREEABLE( FBSTRING* LINEASM$1 )
{
	int64 TMP$294$1;
	int64 TMP$296$1;
	int64 TMP$298$1;
	label$113:;
	int32 REGFOUND1$1;
	__builtin_memset( &REGFOUND1$1, 0, 4ll );
	int32 REGFOUND2$1;
	__builtin_memset( &REGFOUND2$1, 0, 4ll );
	FBSTRING INSTRUC$1;
	__builtin_memset( &INSTRUC$1, 0, 24ll );
	FBSTRING* vr$3 = fb_TRIM( (FBSTRING*)LINEASM$1 );
	FBSTRING* vr$4 = fb_LEFT( (FBSTRING*)vr$3, 3ll );
	fb_StrAssign( (void*)&INSTRUC$1, -1ll, (void*)vr$4, -1ll, 0 );
	int32 vr$7 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"inc", 4ll );
	if( (int64)vr$7 == 0ll ) goto label$115;
	int32 vr$10 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"dec", 4ll );
	TMP$294$1 = (int64)-((int64)vr$10 == 0ll);
	goto label$2979;
	label$115:;
	TMP$294$1 = -1ll;
	label$2979:;
	if( TMP$294$1 != 0ll ) goto label$116;
	int32 vr$14 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"not", 4ll );
	TMP$296$1 = (int64)-((int64)vr$14 == 0ll);
	goto label$2980;
	label$116:;
	TMP$296$1 = -1ll;
	label$2980:;
	if( TMP$296$1 != 0ll ) goto label$117;
	int32 vr$18 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"neg", 4ll );
	TMP$298$1 = (int64)-((int64)vr$18 == 0ll);
	goto label$2981;
	label$117:;
	TMP$298$1 = -1ll;
	label$2981:;
	if( TMP$298$1 == 0ll ) goto label$119;
	{
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
		int64 vr$22 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$21 );
		if( vr$22 != 0ll ) goto label$121;
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
		FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (uint8*)"mov lea cmp add sub imu idiv div shl shr sar and xor or call jmp push test cvt ", 79ll );
		int64 vr$26 = fb_StrInstr( 1ll, (FBSTRING*)vr$25, (FBSTRING*)&INSTRUC$1 );
		if( vr$26 != 0ll ) goto label$123;
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
			FBSTRING TMP$300$3;
			FBSTRING TMP$301$3;
			FBSTRING TMP$302$3;
			FBSTRING TMP$303$3;
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)IREG$2 << (2ll & 63ll))) != -3ll ) goto label$129;
			{
				goto label$125;
				label$129:;
			}
			REGFOUND1$1 = -1;
			REGFOUND2$1 = -1;
			__builtin_memset( &TMP$300$3, 0, 24ll );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$300$3, *(void**)((uint8*)REGSTRQ$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll, (void*)",", 2ll );
			int64 vr$36 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$35 );
			if( vr$36 == 0ll ) goto label$131;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$131:;
			__builtin_memset( &TMP$301$3, 0, 24ll );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$301$3, *(void**)((uint8*)REGSTRD$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll, (void*)",", 2ll );
			int64 vr$42 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$41 );
			if( vr$42 == 0ll ) goto label$132;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$132:;
			__builtin_memset( &TMP$302$3, 0, 24ll );
			FBSTRING* vr$47 = fb_StrConcat( &TMP$302$3, *(void**)((uint8*)REGSTRW$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll, (void*)",", 2ll );
			int64 vr$48 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$47 );
			if( vr$48 == 0ll ) goto label$133;
			{
				REGFOUND1$1 = IREG$2;
			}
			goto label$130;
			label$133:;
			__builtin_memset( &TMP$303$3, 0, 24ll );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$303$3, *(void**)((uint8*)REGSTRB$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll, (void*)",", 2ll );
			int64 vr$54 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$53 );
			if( vr$54 == 0ll ) goto label$134;
			{
				REGFOUND1$1 = IREG$2;
			}
			label$134:;
			label$130:;
			if( (int64)REGFOUND1$1 == -1ll ) goto label$136;
			{
				int64 TMP$306$4;
				int64 TMP$308$4;
				int32 vr$57 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"add", 4ll );
				if( (int64)vr$57 == 0ll ) goto label$137;
				int32 vr$60 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"sub", 4ll );
				TMP$306$4 = (int64)-((int64)vr$60 == 0ll);
				goto label$2982;
				label$137:;
				TMP$306$4 = -1ll;
				label$2982:;
				if( TMP$306$4 != 0ll ) goto label$138;
				int32 vr$64 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"imu", 4ll );
				TMP$308$4 = (int64)-((int64)vr$64 == 0ll);
				goto label$2983;
				label$138:;
				TMP$308$4 = -1ll;
				label$2983:;
				if( TMP$308$4 == 0ll ) goto label$140;
				{
					goto label$125;
				}
				goto label$139;
				label$140:;
				int32 vr$68 = fb_StrCompare( (void*)&INSTRUC$1, -1ll, (void*)"cmp", 4ll );
				if( (int64)vr$68 != 0ll ) goto label$141;
				{
					*(int32*)((uint8*)&CTX$ + 228ll) = REGFOUND1$1;
					*(int32*)((uint8*)&CTX$ + 232ll) = *(int32*)((uint8*)REGHANDLE$ + ((int64)REGFOUND1$1 << (2ll & 63ll)));
					*(int32*)((uint8*)&CTX$ + 236ll) = 2;
					*(int32*)((uint8*)REGHANDLE$ + ((int64)REGFOUND1$1 << (2ll & 63ll))) = -2;
					goto label$125;
				}
				goto label$139;
				label$141:;
				{
					FBSTRING TMP$310$5;
					FBSTRING TMP$311$5;
					__builtin_memset( &TMP$310$5, 0, 24ll );
					FBSTRING* vr$80 = fb_StrConcat( &TMP$310$5, *(void**)((uint8*)REGSTRQ$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$311$5, 0, 24ll );
					FBSTRING* vr$83 = fb_StrConcat( &TMP$311$5, (void*)vr$80, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)IREG$2 << (3ll & 63ll))), 0ll );
					int64 vr$84 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$83 );
					if( vr$84 == 0ll ) goto label$143;
					{
						*(int32*)((uint8*)REGHANDLE$ + ((int64)REGFOUND1$1 << (2ll & 63ll))) = -2;
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
			if( (int64)REGFOUND1$1 != -1ll ) goto label$145;
			{
				FBSTRING* vr$91 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + ((int64)IREG$2 << (3ll & 63ll))) );
				int64 vr$92 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$91 );
				if( vr$92 == 0ll ) goto label$147;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$147:;
				FBSTRING* vr$95 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRD$ + ((int64)IREG$2 << (3ll & 63ll))) );
				int64 vr$96 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$95 );
				if( vr$96 == 0ll ) goto label$148;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$148:;
				FBSTRING* vr$99 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRW$ + ((int64)IREG$2 << (3ll & 63ll))) );
				int64 vr$100 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$99 );
				if( vr$100 == 0ll ) goto label$149;
				{
					REGFOUND2$1 = IREG$2;
				}
				goto label$146;
				label$149:;
				FBSTRING* vr$103 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRB$ + ((int64)IREG$2 << (3ll & 63ll))) );
				int64 vr$104 = fb_StrInstr( 1ll, (FBSTRING*)LINEASM$1, (FBSTRING*)vr$103 );
				if( vr$104 == 0ll ) goto label$150;
				{
					REGFOUND2$1 = IREG$2;
				}
				label$150:;
				label$146:;
			}
			label$145:;
			label$144:;
			if( (int64)REGFOUND2$1 == -1ll ) goto label$152;
			{
				*(int32*)((uint8*)REGHANDLE$ + ((int64)REGFOUND2$1 << (2ll & 63ll))) = -2;
			}
			label$152:;
			label$151:;
		}
		label$125:;
		IREG$2 = (int32)((int64)IREG$2 + 1ll);
		label$124:;
		if( (int64)IREG$2 <= 15ll ) goto label$127;
		label$126:;
	}
	fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
	label$114:;
}

static int64 PW2( int64 NUM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$153:;
	double A$1;
	A$1 = __builtin_log( (double)NUM$1 ) / 0x1.62E42FEFA39EFp-1;
	double vr$4 = fb_FRACd( A$1 );
	if( vr$4 != 0x0p+0 ) goto label$156;
	{
		double vr$5 = pow( 0x1.p+1, A$1 );
		fb$result$1 = fb_D2L( vr$5 );
		goto label$154;
	}
	goto label$155;
	label$156:;
	{
		double vr$9 = pow( 0x1.p+1, __builtin_floor( A$1 ) + 0x1.p+0 );
		fb$result$1 = fb_D2L( vr$9 );
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
	int32 vr$0 = fb_StrCompare( (void*)&SECTION_CURRENT$1, -1ll, (void*)SECTION$1, -1ll );
	if( (int64)vr$0 == 0ll ) goto label$160;
	{
		FBSTRING TMP$313$2;
		FBSTRING TMP$314$2;
		__builtin_memset( &TMP$314$2, 0, 24ll );
		__builtin_memset( &TMP$313$2, 0, 24ll );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$313$2, (void*)".section ", 10ll, (void*)SECTION$1, -1ll );
		fb_StrAssign( (void*)&TMP$314$2, -1ll, (void*)vr$5, -1ll, 0 );
		HWRITEASM64( &TMP$314$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$314$2 );
		fb_StrAssign( (void*)&SECTION_CURRENT$1, -1ll, (void*)SECTION$1, -1ll, 0 );
	}
	label$160:;
	label$159:;
	label$158:;
}

static void EMITOP3_OP4( FBSTRING* OP$1 )
{
	label$161:;
	FBSTRING* vr$0 = fb_RIGHT( (FBSTRING*)OP$1, 3ll );
	int32 vr$1 = fb_StrCompare( (void*)vr$0, -1ll, (void*)"#NO", 4ll );
	if( (int64)vr$1 != 0ll ) goto label$164;
	{
		HWRITEASM64( OP$1, 3ll );
	}
	goto label$163;
	label$164:;
	{
		HWRITEASM64( OP$1, 0ll );
	}
	label$163:;
	label$162:;
}

static void HWRITEASM64( FBSTRING* LN2$1, int64 OPT$1 )
{
	FBSTRING TMP$325$1;
	label$169:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)LN2$1, -1ll, 0 );
	if( *(int64*)((uint8*)&CTX$ + 416ll) == 0ll ) goto label$172;
	{
		if( *(int64*)((uint8*)&CTX$ + 424ll) != 1ll ) goto label$174;
		{
			*(int64*)((uint8*)&CTX$ + 424ll) = 2ll;
		}
		goto label$173;
		label$174:;
		{
			*(int64*)((uint8*)&CTX$ + 416ll) = 0ll;
		}
		label$173:;
	}
	label$172:;
	label$171:;
	if( (int64)*(int32*)((uint8*)&CTX$ + 236ll) == 0ll ) goto label$176;
	{
		*(int32*)((uint8*)&CTX$ + 236ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 236ll) + -1ll);
		if( (int64)*(int32*)((uint8*)&CTX$ + 236ll) != 0ll ) goto label$178;
		{
			*(int32*)((uint8*)&CTX$ + 232ll) = -2;
		}
		label$178:;
		label$177:;
	}
	label$176:;
	label$175:;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$180;
	{
		if( *(int64*)((uint8*)&CTXDBG$ + 8ll) == -1ll ) goto label$182;
		{
			FBSTRING TMP$317$3;
			FBSTRING TMP$319$3;
			FBSTRING TMP$320$3;
			FBSTRING TMP$321$3;
			FBSTRING TMP$322$3;
			FBSTRING TMP$323$3;
			DBG_FILENAME( (FBSTRING*)((uint8*)&CTXDBG$ + 40ll) );
			uint8* vr$9 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$9, 0ll, 0 );
			__builtin_memset( &TMP$321$3, 0, 24ll );
			uint8* vr$12 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 64ll) );
			__builtin_memset( &TMP$319$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$319$3, (void*)&LNAME$1, -1ll, (void*)"-", 2ll );
			__builtin_memset( &TMP$320$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$320$3, (void*)vr$16, -1ll, (void*)vr$12, 0ll );
			fb_StrAssign( (void*)&TMP$321$3, -1ll, (void*)vr$19, -1ll, 0 );
			__builtin_memset( &TMP$317$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$317$3, -1ll, (void*)"", 1ll, 0 );
			DBG_ADDSTAB( &TMP$317$3, (uint8)68u, (int16)*(int64*)((uint8*)&CTXDBG$ + 8ll), &TMP$321$3 );
			fb_StrDelete( (FBSTRING*)&TMP$321$3 );
			fb_StrDelete( (FBSTRING*)&TMP$317$3 );
			*(int64*)((uint8*)&CTXDBG$ + 8ll) = -1ll;
			__builtin_memset( &TMP$323$3, 0, 24ll );
			__builtin_memset( &TMP$322$3, 0, 24ll );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$322$3, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
			fb_StrAssign( (void*)&TMP$323$3, -1ll, (void*)vr$32, -1ll, 0 );
			HWRITEASM64( &TMP$323$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$323$3 );
		}
		label$182:;
		label$181:;
	}
	label$180:;
	label$179:;
	if( ((int64)-(OPT$1 != 2ll) & (int64)-(OPT$1 != 1ll)) == 0ll ) goto label$184;
	{
		REG_FREEABLE( &LN$1 );
		label$184:;
	}
	if( ((int64)-(OPT$1 == 3ll) | (int64)-(OPT$1 == 1ll)) == 0ll ) goto label$186;
	{
		FBSTRING TMP$324$2;
		__builtin_memset( &TMP$324$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$324$2, -1ll, (void*)"", 1ll, 0 );
		CHECK_OPTIM( &TMP$324$2 );
		fb_StrDelete( (FBSTRING*)&TMP$324$2 );
	}
	goto label$185;
	label$186:;
	{
		CHECK_OPTIM( &LN$1 );
	}
	label$185:;
	FBSTRING* vr$50 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
	__builtin_memset( &TMP$325$1, 0, 24ll );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$325$1, (void*)vr$50, -1ll, (void*)&LN$1, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$53, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x0D\x0A", 3ll, 0 );
	{
		uint64 TMP$326$2;
		TMP$326$2 = *(uint64*)((uint8*)&CTX$ + 8ll);
		goto label$188;
		label$189:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 112ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$190:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 88ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$191:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 136ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$192:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$193:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 64ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$194:;
		{
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)&LN$1, -1ll, 0 );
		}
		goto label$187;
		label$188:;
		static const void* tmp$3847[6ll] = {
			&&label$192,
			&&label$194,
			&&label$193,
			&&label$190,
			&&label$189,
			&&label$191,
		};
		if( TMP$326$2 > 5ull ) goto label$194;
		goto *tmp$3847[TMP$326$2 - 0ull];
		label$187:;
	}
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$170:;
}

static FBSTRING* HFLOATTOHEX_ASM64( double VALUE$1, int64 DTYPE$1, int8 FULL$1 )
{
	int64 TMP$327$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$195:;
	FBSTRING RAWBYTES$1;
	__builtin_memset( &RAWBYTES$1, 0, 24ll );
	float SINGLEVALUE$1;
	SINGLEVALUE$1 = (float)VALUE$1;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$197;
	TMP$327$1 = 24ll;
	goto label$2984;
	label$197:;
	TMP$327$1 = DTYPE$1 & 31ll;
	label$2984:;
	if( TMP$327$1 != 16ll ) goto label$199;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1ll, (void*)"0x", 3ll, 0 );
		FBSTRING* vr$6 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)vr$6, -1ll, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)" # DBL=", 8ll, 0 );
		FBSTRING* vr$9 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)vr$9, -1ll, 0 );
		if( (int64)FULL$1 == 0ll ) goto label$201;
		{
			FBSTRING TMP$331$3;
			__builtin_memset( &TMP$331$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$331$3, (void*)".quad ", 7ll, (void*)&RAWBYTES$1, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$15, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		goto label$200;
		label$201:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RAWBYTES$1, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		label$200:;
	}
	goto label$198;
	label$199:;
	{
		fb_StrAssign( (void*)&RAWBYTES$1, -1ll, (void*)"0x", 3ll, 0 );
		FBSTRING* vr$23 = fb_HEXEx_l( (uint64)*(uint32*)&SINGLEVALUE$1, 8 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)vr$23, -1ll, 0 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)" # SNG=", 8ll, 0 );
		FBSTRING* vr$26 = fb_DoubleToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&RAWBYTES$1, -1ll, (void*)vr$26, -1ll, 0 );
		if( (int64)FULL$1 == 0ll ) goto label$203;
		{
			FBSTRING TMP$334$3;
			__builtin_memset( &TMP$334$3, 0, 24ll );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$334$3, (void*)".long ", 7ll, (void*)&RAWBYTES$1, -1ll );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$32, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		goto label$202;
		label$203:;
		{
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&RAWBYTES$1, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
			goto label$196;
		}
		label$202:;
	}
	label$198:;
	fb_StrDelete( (FBSTRING*)&RAWBYTES$1 );
	label$196:;
	FBSTRING* vr$40 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$40;
}

static int64 DBG_ADDSTR( FBSTRING* STRG$1, int64 NOSEARCH$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$204:;
	if( NOSEARCH$1 != 0ll ) goto label$207;
	{
		{
			int64 ISTR$3;
			ISTR$3 = 0ll;
			int64 TMP$335$3;
			TMP$335$3 = *(int64*)((uint8*)&CTXDBG$ + 72ll);
			goto label$208;
			label$211:;
			{
				int32 vr$4 = fb_StrCompare( (void*)STRG$1, -1ll, (void*)((uint8*)((ISTR$3 << (5ll & 63ll)) + *(int64*)&DBGSTR$) + 8ll), -1ll );
				if( (int64)vr$4 != 0ll ) goto label$213;
				{
					fb$result$1 = *(int64*)((ISTR$3 << (5ll & 63ll)) + *(int64*)&DBGSTR$);
					goto label$205;
				}
				label$213:;
				label$212:;
			}
			label$209:;
			ISTR$3 = ISTR$3 + 1ll;
			label$208:;
			if( ISTR$3 <= TMP$335$3 ) goto label$211;
			label$210:;
		}
	}
	label$207:;
	label$206:;
	*(int64*)((uint8*)&CTXDBG$ + 72ll) = *(int64*)((uint8*)&CTXDBG$ + 72ll) + 1ll;
	if( *(int64*)((uint8*)&CTXDBG$ + 72ll) <= *(int64*)((uint8*)&CTXDBG$ + 80ll) ) goto label$215;
	{
		*(int64*)((uint8*)&CTXDBG$ + 80ll) = fb_D2L( (double)*(int64*)((uint8*)&CTXDBG$ + 80ll) * 0x1.4CCCCCCCCCCCDp+0 );
		int32 vr$13 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTR$, 32ull, (void*)&_ZN7TDBGSTRC1Ev, (void*)&_ZN7TDBGSTRD1Ev, 1ull, 0ll, *(int64*)((uint8*)&CTXDBG$ + 80ll) );
		if( (int64)vr$13 == 0ll ) goto label$216;
		void* vr$15 = fb_ErrorThrowAt( 808, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
		goto *vr$15;
		label$216:;
	}
	label$215:;
	label$214:;
	fb_StrAssign( (void*)((uint8*)((*(int64*)((uint8*)&CTXDBG$ + 72ll) << (5ll & 63ll)) + *(int64*)&DBGSTR$) + 8ll), -1ll, (void*)STRG$1, -1ll, 0 );
	*(int64*)((*(int64*)((uint8*)&CTXDBG$ + 72ll) << (5ll & 63ll)) + *(int64*)&DBGSTR$) = *(int64*)((uint8*)&CTXDBG$ + 104ll);
	fb$result$1 = *(int64*)((uint8*)&CTXDBG$ + 104ll);
	int64 vr$21 = fb_StrLen( (void*)STRG$1, -1ll );
	*(int64*)((uint8*)&CTXDBG$ + 104ll) = (*(int64*)((uint8*)&CTXDBG$ + 104ll) + vr$21) + 1ll;
	label$205:;
	return fb$result$1;
}

static void DBG_ADDSTAB( FBSTRING* TXT$1, uint8 COD$1, int16 DESC$1, FBSTRING* VALUE$1 )
{
	label$217:;
	int64 OFFST$1;
	__builtin_memset( &OFFST$1, 0, 8ll );
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8ll );
	int32 vr$2 = fb_StrCompare( (void*)TXT$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$2 == 0ll ) goto label$220;
	{
		if( ((int64)-((int64)COD$1 == 100ll) | (int64)-((int64)COD$1 == 132ll)) == 0ll ) goto label$222;
		{
			int64 vr$9 = DBG_ADDSTR( TXT$1, 0ll );
			OFFST$1 = vr$9;
		}
		goto label$221;
		label$222:;
		{
			int64 vr$10 = DBG_ADDSTR( TXT$1, 1ll );
			OFFST$1 = vr$10;
		}
		label$221:;
	}
	label$220:;
	label$219:;
	*(int64*)((uint8*)&CTXDBG$ + 88ll) = *(int64*)((uint8*)&CTXDBG$ + 88ll) + 1ll;
	if( *(int64*)((uint8*)&CTXDBG$ + 88ll) <= *(int64*)((uint8*)&CTXDBG$ + 96ll) ) goto label$224;
	{
		*(int64*)((uint8*)&CTXDBG$ + 96ll) = fb_D2L( (double)*(int64*)((uint8*)&CTXDBG$ + 96ll) * 0x1.8p+0 );
		int32 vr$15 = fb_ArrayRedimPresvObj( (struct $7FBARRAYIvE*)&DBGSTAB$, 32ull, (void*)&_ZN8TDBGSTABC1Ev, (void*)&_ZN8TDBGSTABD1Ev, 1ull, 0ll, *(int64*)((uint8*)&CTXDBG$ + 96ll) );
		if( (int64)vr$15 == 0ll ) goto label$225;
		void* vr$17 = fb_ErrorThrowAt( 828, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
		goto *vr$17;
		label$225:;
	}
	label$224:;
	label$223:;
	*(int32*)&STAB$1 = (int32)OFFST$1;
	*(int16*)((uint8*)&STAB$1 + 4ll) = (int16)COD$1;
	*(int16*)((uint8*)&STAB$1 + 6ll) = DESC$1;
	*(int64*)((*(int64*)((uint8*)&CTXDBG$ + 88ll) << (5ll & 63ll)) + *(int64*)&DBGSTAB$) = *(int64*)&STAB$1;
	fb_StrAssign( (void*)((uint8*)((*(int64*)((uint8*)&CTXDBG$ + 88ll) << (5ll & 63ll)) + *(int64*)&DBGSTAB$) + 8ll), -1ll, (void*)VALUE$1, -1ll, 0 );
	label$218:;
}

static void DBG_EMITSTR( void )
{
	FBSTRING TMP$344$1;
	label$226:;
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$229;
	{
		FBSTRING TMP$340$2;
		__builtin_memset( &TMP$340$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$340$2, -1ll, (void*)".dbgstr,\x22" "a\x22", 12ll, 0 );
		ASM_SECTION( &TMP$340$2 );
		fb_StrDelete( (FBSTRING*)&TMP$340$2 );
	}
	goto label$228;
	label$229:;
	{
		FBSTRING TMP$342$2;
		__builtin_memset( &TMP$342$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$342$2, -1ll, (void*)".dbgstr,\x22" "dr\x22", 13ll, 0 );
		ASM_SECTION( &TMP$342$2 );
		fb_StrDelete( (FBSTRING*)&TMP$342$2 );
	}
	label$228:;
	__builtin_memset( &TMP$344$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$344$1, -1ll, (void*)".byte 0", 8ll, 0 );
	HWRITEASM64( &TMP$344$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$344$1 );
	{
		int64 ISTR$2;
		ISTR$2 = 0ll;
		int64 TMP$345$2;
		TMP$345$2 = *(int64*)((uint8*)&CTXDBG$ + 72ll);
		goto label$230;
		label$233:;
		{
			FBSTRING TMP$350$3;
			FBSTRING TMP$351$3;
			FBSTRING TMP$352$3;
			__builtin_memset( &TMP$352$3, 0, 24ll );
			FBSTRING* vr$15 = HREPLACE( (uint8*)*(uint8**)((uint8*)((ISTR$2 << (5ll & 63ll)) + *(int64*)&DBGSTR$) + 8ll), (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			__builtin_memset( &TMP$350$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$350$3, (void*)".ascii \x22", 9ll, (void*)vr$15, -1ll );
			__builtin_memset( &TMP$351$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$351$3, (void*)vr$18, -1ll, (void*)"\x5C" "0\x22", 4ll );
			fb_StrAssign( (void*)&TMP$352$3, -1ll, (void*)vr$21, -1ll, 0 );
			HWRITEASM64( &TMP$352$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$352$3 );
		}
		label$231:;
		ISTR$2 = ISTR$2 + 1ll;
		label$230:;
		if( ISTR$2 <= TMP$345$2 ) goto label$233;
		label$232:;
	}
	label$227:;
}

static void DBG_EMITSTAB( void )
{
	label$234:;
	union $5USTAB STAB$1;
	__builtin_memset( &STAB$1, 0, 8ll );
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$237;
	{
		FBSTRING TMP$354$2;
		__builtin_memset( &TMP$354$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$354$2, -1ll, (void*)".dbgdat,\x22" "a\x22", 12ll, 0 );
		ASM_SECTION( &TMP$354$2 );
		fb_StrDelete( (FBSTRING*)&TMP$354$2 );
	}
	goto label$236;
	label$237:;
	{
		FBSTRING TMP$356$2;
		__builtin_memset( &TMP$356$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$356$2, -1ll, (void*)".dbgdat,\x22" "dr\x22", 13ll, 0 );
		ASM_SECTION( &TMP$356$2 );
		fb_StrDelete( (FBSTRING*)&TMP$356$2 );
	}
	label$236:;
	{
		int64 ISTAB$2;
		ISTAB$2 = 0ll;
		int64 TMP$357$2;
		TMP$357$2 = *(int64*)((uint8*)&CTXDBG$ + 88ll);
		goto label$238;
		label$241:;
		{
			FBSTRING TMP$360$3;
			FBSTRING TMP$361$3;
			FBSTRING TMP$362$3;
			FBSTRING TMP$363$3;
			FBSTRING TMP$364$3;
			FBSTRING TMP$365$3;
			FBSTRING TMP$366$3;
			FBSTRING TMP$367$3;
			FBSTRING TMP$368$3;
			FBSTRING TMP$369$3;
			*(int64*)&STAB$1 = *(int64*)((ISTAB$2 << (5ll & 63ll)) + *(int64*)&DBGSTAB$);
			__builtin_memset( &TMP$367$3, 0, 24ll );
			FBSTRING* vr$12 = fb_IntToStr( *(int32*)&STAB$1 );
			FBSTRING* vr$14 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 6ll) );
			FBSTRING* vr$16 = fb_IntToStr( (int32)*(int16*)((uint8*)&STAB$1 + 4ll) );
			FBSTRING* vr$19 = fb_HEX_l( *(uint64*)((ISTAB$2 << (5ll & 63ll)) + *(int64*)&DBGSTAB$) );
			__builtin_memset( &TMP$360$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$360$3, (void*)".quad 0x", 9ll, (void*)vr$19, -1ll );
			__builtin_memset( &TMP$361$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$361$3, (void*)vr$22, -1ll, (void*)" # ", 4ll );
			__builtin_memset( &TMP$362$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$362$3, (void*)vr$25, -1ll, (void*)vr$16, -1ll );
			__builtin_memset( &TMP$363$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$363$3, (void*)vr$28, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$364$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$364$3, (void*)vr$31, -1ll, (void*)vr$14, -1ll );
			__builtin_memset( &TMP$365$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$365$3, (void*)vr$34, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$366$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$366$3, (void*)vr$37, -1ll, (void*)vr$12, -1ll );
			fb_StrAssign( (void*)&TMP$367$3, -1ll, (void*)vr$40, -1ll, 0 );
			HWRITEASM64( &TMP$367$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$367$3 );
			__builtin_memset( &TMP$369$3, 0, 24ll );
			__builtin_memset( &TMP$368$3, 0, 24ll );
			FBSTRING* vr$50 = fb_StrConcat( &TMP$368$3, (void*)".quad ", 7ll, (void*)((uint8*)((ISTAB$2 << (5ll & 63ll)) + *(int64*)&DBGSTAB$) + 8ll), -1ll );
			fb_StrAssign( (void*)&TMP$369$3, -1ll, (void*)vr$50, -1ll, 0 );
			HWRITEASM64( &TMP$369$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$369$3 );
		}
		label$239:;
		ISTAB$2 = ISTAB$2 + 1ll;
		label$238:;
		if( ISTAB$2 <= TMP$357$2 ) goto label$241;
		label$240:;
	}
	label$235:;
}

static FBSTRING* HDECLPOINTER_ASM64( int64* DTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$283:;
	static FBSTRING DESC$1;
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)"", 1ll, 0 );
	label$285:;
	if( (*DTYPE$1 & 480ll) == 0ll ) goto label$286;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + -32ll)) | (((*DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*DTYPE$1 & 32505856ll);
		FBSTRING* vr$18 = fb_ULongintToStr( *(uint64*)&CTXDBG$ );
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$18, -1ll, 0 );
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"=*", 3ll, 0 );
		*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
	}
	goto label$285;
	label$286:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&DESC$1, -1ll, 0 );
	label$284:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static void HDECLUDT_ASM64( struct $8FBSYMBOL* SYM$1, int64 DIMTBELEMENTS$1 )
{
	FBSTRING TMP$406$1;
	FBSTRING TMP$407$1;
	FBSTRING TMP$408$1;
	FBSTRING TMP$409$1;
	FBSTRING TMP$420$1;
	label$287:;
	struct $8FBSYMBOL* FLD$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	*(int64*)((uint8*)SYM$1 + 232ll) = *(int64*)&CTXDBG$;
	*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
	uint8* vr$3 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$3, 0ll, 0 );
	FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 80ll) );
	FBSTRING* vr$8 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 232ll) );
	__builtin_memset( &TMP$406$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$406$1, (void*)":Tt", 4ll, (void*)vr$8, -1ll );
	__builtin_memset( &TMP$407$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$407$1, (void*)vr$11, -1ll, (void*)"=s", 3ll );
	__builtin_memset( &TMP$408$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$408$1, (void*)vr$14, -1ll, (void*)vr$6, -1ll );
	__builtin_memset( &TMP$409$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$409$1, (void*)&DESC$1, -1ll, (void*)vr$17, -1ll );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$21, -1ll, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$23;
	label$289:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$290;
	{
		if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) != 0ll ) goto label$292;
		{
			FBSTRING TMP$410$3;
			FBSTRING TMP$411$3;
			FBSTRING TMP$412$3;
			int64 TMP$413$3;
			FBSTRING TMP$414$3;
			FBSTRING TMP$415$3;
			int64 TMP$416$3;
			FBSTRING TMP$417$3;
			FBSTRING TMP$418$3;
			FBSTRING* vr$26 = HGETDATATYPE_ASM64( FLD$1, DIMTBELEMENTS$1 );
			__builtin_memset( &TMP$410$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$410$3, *(void**)((uint8*)FLD$1 + 32ll), 0ll, (void*)":", 2ll );
			__builtin_memset( &TMP$411$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$411$3, (void*)vr$30, -1ll, (void*)vr$26, -1ll );
			__builtin_memset( &TMP$412$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$412$3, (void*)&DESC$1, -1ll, (void*)vr$33, -1ll );
			fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$37, -1ll, 0 );
			if( *(int64*)((uint8*)FLD$1 + 192ll) <= 0ll ) goto label$293;
			TMP$413$3 = *(int64*)((uint8*)FLD$1 + 184ll);
			goto label$2985;
			label$293:;
			TMP$413$3 = 0ll;
			label$2985:;
			FBSTRING* vr$44 = fb_LongintToStr( (*(int64*)((uint8*)FLD$1 + 88ll) << (3ll & 63ll)) + TMP$413$3 );
			__builtin_memset( &TMP$414$3, 0, 24ll );
			FBSTRING* vr$47 = fb_StrConcat( &TMP$414$3, (void*)",", 2ll, (void*)vr$44, -1ll );
			__builtin_memset( &TMP$415$3, 0, 24ll );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$415$3, (void*)&DESC$1, -1ll, (void*)vr$47, -1ll );
			fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$51, -1ll, 0 );
			if( *(int64*)((uint8*)FLD$1 + 192ll) <= 0ll ) goto label$294;
			TMP$416$3 = *(int64*)((uint8*)FLD$1 + 192ll);
			goto label$2986;
			label$294:;
			int64 vr$55 = SYMBGETREALSIZE( FLD$1 );
			TMP$416$3 = vr$55 << (3ll & 63ll);
			label$2986:;
			FBSTRING* vr$57 = fb_LongintToStr( TMP$416$3 );
			__builtin_memset( &TMP$417$3, 0, 24ll );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$417$3, (void*)",", 2ll, (void*)vr$57, -1ll );
			__builtin_memset( &TMP$418$3, 0, 24ll );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$418$3, (void*)&DESC$1, -1ll, (void*)vr$60, -1ll );
			fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$64, -1ll, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)";", 2ll, 0 );
		}
		label$292:;
		label$291:;
		struct $8FBSYMBOL* vr$67 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$67;
	}
	goto label$289;
	label$290:;
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)";", 2ll, 0 );
	__builtin_memset( &TMP$420$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$420$1, -1ll, (void*)"0", 2ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$420$1 );
	fb_StrDelete( (FBSTRING*)&TMP$420$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$288:;
}

static void HDECLENUM_ASM64( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$423$1;
	FBSTRING TMP$424$1;
	FBSTRING TMP$425$1;
	FBSTRING TMP$430$1;
	label$295:;
	struct $8FBSYMBOL* E$1;
	__builtin_memset( &E$1, 0, 8ll );
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	*(int64*)((uint8*)SYM$1 + 184ll) = *(int64*)&CTXDBG$;
	*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$4, 0ll, 0 );
	FBSTRING* vr$7 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 184ll) );
	__builtin_memset( &TMP$423$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$423$1, (void*)":T", 3ll, (void*)vr$7, -1ll );
	__builtin_memset( &TMP$424$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$424$1, (void*)vr$10, -1ll, (void*)"=e", 3ll );
	__builtin_memset( &TMP$425$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$425$1, (void*)&DESC$1, -1ll, (void*)vr$13, -1ll );
	fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$17, -1ll, 0 );
	struct $8FBSYMBOL* vr$19 = SYMBGETENUMFIRSTELM( SYM$1 );
	E$1 = vr$19;
	label$297:;
	if( E$1 == (struct $8FBSYMBOL*)0ull ) goto label$298;
	{
		FBSTRING TMP$426$2;
		FBSTRING TMP$427$2;
		FBSTRING TMP$428$2;
		FBSTRING TMP$429$2;
		FBSTRING* vr$21 = fb_LongintToStr( *(int64*)((uint8*)E$1 + 96ll) );
		__builtin_memset( &TMP$426$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$426$2, *(void**)((uint8*)E$1 + 32ll), 0ll, (void*)":", 2ll );
		__builtin_memset( &TMP$427$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$427$2, (void*)vr$25, -1ll, (void*)vr$21, -1ll );
		__builtin_memset( &TMP$428$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$428$2, (void*)vr$28, -1ll, (void*)",", 2ll );
		__builtin_memset( &TMP$429$2, 0, 24ll );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$429$2, (void*)&DESC$1, -1ll, (void*)vr$31, -1ll );
		fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$35, -1ll, 0 );
		struct $8FBSYMBOL* vr$37 = SYMBGETENUMNEXTELM( E$1 );
		E$1 = vr$37;
	}
	goto label$297;
	label$298:;
	fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)";", 2ll, 0 );
	__builtin_memset( &TMP$430$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$430$1, -1ll, (void*)"0", 2ll, 0 );
	DBG_ADDSTAB( &DESC$1, (uint8)128u, (int16)0, &TMP$430$1 );
	fb_StrDelete( (FBSTRING*)&TMP$430$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$296:;
}

static FBSTRING* HGETDATATYPE_ASM64( struct $8FBSYMBOL* SYM$1, int64 REQUESTEDDIMTBELEMENTS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$299:;
	int64 DTYPE$1;
	int64 DIMTBELEMENTS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 24ll );
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$302;
	{
		FBSTRING* vr$2 = fb_LongintToStr( *(int64*)REMAPTB$ );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$300;
	}
	label$302:;
	label$301:;
	DIMTBELEMENTS$1 = 0ll;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16384ll) == 0ll ) goto label$304;
	{
		DTYPE$1 = 20ll;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll);
		DIMTBELEMENTS$1 = *(int64*)((uint8*)SYM$1 + 104ll);
	}
	goto label$303;
	label$304:;
	{
		DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
		if( ((int64)-(*(int64*)SYM$1 == 1ll) | (int64)-(*(int64*)SYM$1 == 12ll)) == 0ll ) goto label$306;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$308;
			{
				DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
			}
			label$308:;
			label$307:;
			if( *(int64*)((uint8*)SYM$1 + 104ll) <= 0ll ) goto label$310;
			{
				FBSTRING* vr$29 = fb_ULongintToStr( *(uint64*)&CTXDBG$ );
				fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$29, -1ll, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"=", 2ll, 0 );
				*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
				if( REQUESTEDDIMTBELEMENTS$1 <= 0ll ) goto label$312;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"ar1;", 5ll, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"0;", 3ll, 0 );
					FBSTRING* vr$36 = fb_LongintToStr( REQUESTEDDIMTBELEMENTS$1 + -1ll );
					fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$36, -1ll, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)";", 2ll, 0 );
				}
				goto label$311;
				label$312:;
				{
					{
						int64 I$6;
						I$6 = 0ll;
						int64 TMP$434$6;
						TMP$434$6 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
						goto label$313;
						label$316:;
						{
							FBSTRING TMP$435$7;
							FBSTRING TMP$436$7;
							FBSTRING TMP$437$7;
							FBSTRING TMP$438$7;
							fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"ar1;", 5ll, 0 );
							FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$6 << (4ll & 63ll))) );
							__builtin_memset( &TMP$435$7, 0, 24ll );
							FBSTRING* vr$48 = fb_StrConcat( &TMP$435$7, (void*)vr$45, -1ll, (void*)";", 2ll );
							__builtin_memset( &TMP$436$7, 0, 24ll );
							FBSTRING* vr$52 = fb_StrConcat( &TMP$436$7, (void*)&DESC$1, -1ll, (void*)vr$48, -1ll );
							fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$52, -1ll, 0 );
							FBSTRING* vr$57 = fb_LongintToStr( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$6 << (4ll & 63ll))) + 8ll) );
							__builtin_memset( &TMP$437$7, 0, 24ll );
							FBSTRING* vr$60 = fb_StrConcat( &TMP$437$7, (void*)vr$57, -1ll, (void*)";", 2ll );
							__builtin_memset( &TMP$438$7, 0, 24ll );
							FBSTRING* vr$64 = fb_StrConcat( &TMP$438$7, (void*)&DESC$1, -1ll, (void*)vr$60, -1ll );
							fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$64, -1ll, 0 );
						}
						label$314:;
						I$6 = I$6 + 1ll;
						label$313:;
						if( I$6 <= TMP$434$6 ) goto label$316;
						label$315:;
					}
				}
				label$311:;
			}
			label$310:;
			label$309:;
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 8192ll) == 0ll ) goto label$318;
			{
				DIMTBELEMENTS$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 152ll) + 104ll);
			}
			label$318:;
			label$317:;
		}
		label$306:;
		label$305:;
	}
	label$303:;
	if( DIMTBELEMENTS$1 >= 0ll ) goto label$320;
	{
		DIMTBELEMENTS$1 = 1ll;
	}
	label$320:;
	label$319:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$322;
	{
		FBSTRING* vr$73 = HDECLPOINTER_ASM64( &DTYPE$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$73, -1ll, 0 );
	}
	label$322:;
	label$321:;
	DTYPE$1 = DTYPE$1 & -513ll;
	{
		uint64 TMP$439$2;
		TMP$439$2 = (uint64)DTYPE$1;
		goto label$324;
		label$325:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$327;
			{
				FBSTRING TMP$440$4;
				if( *(int64*)((uint8*)SUBTYPE$1 + 232ll) != -1ll ) goto label$329;
				{
					HDECLUDT_ASM64( SUBTYPE$1, DIMTBELEMENTS$1 );
					label$329:;
				}
				FBSTRING* vr$78 = fb_LongintToStr( *(int64*)((uint8*)SUBTYPE$1 + 232ll) );
				__builtin_memset( &TMP$440$4, 0, 24ll );
				FBSTRING* vr$82 = fb_StrConcat( &TMP$440$4, (void*)&DESC$1, -1ll, (void*)vr$78, -1ll );
				fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$82, -1ll, 0 );
			}
			goto label$326;
			label$327:;
			{
				FBSTRING TMP$441$4;
				if( *(int64*)((uint8*)SYM$1 + 232ll) != -1ll ) goto label$331;
				{
					HDECLUDT_ASM64( SYM$1, DIMTBELEMENTS$1 );
					label$331:;
				}
				FBSTRING* vr$86 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 232ll) );
				__builtin_memset( &TMP$441$4, 0, 24ll );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$441$4, (void*)&DESC$1, -1ll, (void*)vr$86, -1ll );
				fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$90, -1ll, 0 );
			}
			label$326:;
		}
		goto label$323;
		label$332:;
		{
			FBSTRING TMP$442$3;
			if( *(int64*)((uint8*)SUBTYPE$1 + 184ll) != -1ll ) goto label$334;
			{
				HDECLENUM_ASM64( SUBTYPE$1 );
			}
			label$334:;
			label$333:;
			FBSTRING* vr$94 = fb_LongintToStr( *(int64*)((uint8*)SUBTYPE$1 + 184ll) );
			__builtin_memset( &TMP$442$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$442$3, (void*)&DESC$1, -1ll, (void*)vr$94, -1ll );
			fb_StrAssign( (void*)&DESC$1, -1ll, (void*)vr$98, -1ll, 0 );
		}
		goto label$323;
		label$335:;
		{
			FBSTRING* vr$100 = fb_ULongintToStr( *(uint64*)&CTXDBG$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$100, -1ll, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)"=f", 3ll, 0 );
			*(uint64*)&CTXDBG$ = *(uint64*)&CTXDBG$ + 1ull;
			FBSTRING* vr$104 = HGETDATATYPE_ASM64( SUBTYPE$1, 0ll );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$104, -1ll, 0 );
		}
		goto label$323;
		label$336:;
		{
			FBSTRING* vr$106 = fb_LongintToStr( *(int64*)REMAPTB$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$106, -1ll, 0 );
		}
		goto label$323;
		label$337:;
		{
			FBSTRING* vr$109 = fb_LongintToStr( *(int64*)((uint8*)REMAPTB$ + (DTYPE$1 << (3ll & 63ll))) );
			fb_StrConcatAssign( (void*)&DESC$1, -1ll, (void*)vr$109, -1ll, 0 );
		}
		goto label$323;
		label$324:;
		static const void* tmp$3848[14ll] = {
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
		if( (TMP$439$2 - 10ull) > 13ull ) goto label$337;
		goto *tmp$3848[TMP$439$2 - 10ull];
		label$323:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&DESC$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$300:;
	FBSTRING* vr$115 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$115;
}

static void _EMITDBG( int64 OP$1, struct $8FBSYMBOL* PROC$1, int64 LNUM$1, uint8* FILENAME$1 )
{
	label$338:;
	if( OP$1 != 113ll ) goto label$341;
	{
		fb_StrAssign( (void*)((uint8*)&CTXDBG$ + 40ll), -1ll, (void*)FILENAME$1, 0ll, 0 );
		*(int64*)((uint8*)&CTXDBG$ + 8ll) = LNUM$1;
	}
	goto label$340;
	label$341:;
	{
		if( OP$1 != 114ll ) goto label$343;
		{
		}
		goto label$342;
		label$343:;
		if( OP$1 != 115ll ) goto label$344;
		{
		}
		goto label$342;
		label$344:;
		if( OP$1 != 116ll ) goto label$345;
		{
		}
		goto label$342;
		label$345:;
		{
			FBSTRING TMP$444$3;
			FBSTRING TMP$449$3;
			FBSTRING TMP$450$3;
			FBSTRING TMP$451$3;
			FBSTRING TMP$452$3;
			FBSTRING TMP$453$3;
			__builtin_memset( &TMP$444$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$444$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$444$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$444$3 );
			__builtin_memset( &TMP$452$3, 0, 24ll );
			FBSTRING* vr$6 = fb_LongintToStr( OP$1 );
			__builtin_memset( &TMP$449$3, 0, 24ll );
			FBSTRING* vr$9 = fb_StrConcat( &TMP$449$3, (void*)"FOUND AN ERROR : Other emitdbg not handled=", 44ll, (void*)vr$6, -1ll );
			__builtin_memset( &TMP$450$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$450$3, (void*)vr$9, -1ll, (void*)"for ref AST_OP_DBG_LINEEND=", 28ll );
			__builtin_memset( &TMP$451$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$451$3, (void*)vr$12, -1ll, (void*)"114", 4ll );
			fb_StrAssign( (void*)&TMP$452$3, -1ll, (void*)vr$15, -1ll, 0 );
			HWRITEASM64( &TMP$452$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$452$3 );
			__builtin_memset( &TMP$453$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$453$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$453$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$453$3 );
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
	FLAGMARK$1 = (boolean)0ll;
	{
		int64 IREG$2;
		IREG$2 = 1ll;
		label$351:;
		{
			if( ((int64)-((int64)*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2ll & 63ll))) != -2ll) & (int64)-((int64)*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2ll & 63ll))) != -3ll)) == 0ll ) goto label$353;
			{
				*(int32*)((uint8*)REGROOM$ + (IREG$2 << (4ll & 63ll))) = -2;
				FLAGMARK$1 = (boolean)1ll;
			}
			label$353:;
			label$352:;
		}
		label$349:;
		IREG$2 = IREG$2 + 1ll;
		label$348:;
		if( IREG$2 <= 15ll ) goto label$351;
		label$350:;
	}
	if( FLAGMARK$1 == (boolean)0ll ) goto label$355;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) = LABELPTR$1;
		label$355:;
	}
	label$347:;
}

static struct $14ASM64_SAVEDREG* ASM64_SPILLREG( int32 REGSPILLED$1 )
{
	struct $14ASM64_SAVEDREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$356:;
	struct $14ASM64_SAVEDREG* V$1;
	if( (int64)*(int32*)((uint8*)&CTX$ + 376ll) <= 0ll ) goto label$359;
	{
		void* vr$3 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
		V$1 = (struct $14ASM64_SAVEDREG*)vr$3;
		label$360:;
		if( V$1 == (struct $14ASM64_SAVEDREG*)0ull ) goto label$361;
		{
			if( (int64)*(int32*)((uint8*)V$1 + 4ll) != -2ll ) goto label$363;
			{
				*(int32*)((uint8*)V$1 + 4ll) = *(int32*)((uint8*)REGHANDLE$ + ((int64)REGSPILLED$1 << (2ll & 63ll)));
				fb$result$1 = V$1;
				goto label$357;
			}
			label$363:;
			label$362:;
			void* vr$9 = FLISTGETNEXT( (void*)V$1 );
			V$1 = (struct $14ASM64_SAVEDREG*)vr$9;
		}
		goto label$360;
		label$361:;
	}
	label$359:;
	label$358:;
	*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 192ll) + 8ll;
	if( *(int64*)((uint8*)&CTX$ + 208ll) == 0ll ) goto label$365;
	{
		if( *(int64*)((uint8*)&CTX$ + 192ll) != *(int64*)((uint8*)&CTX$ + 208ll) ) goto label$367;
		{
			FBSTRING TMP$454$3;
			FBSTRING TMP$457$3;
			FBSTRING TMP$458$3;
			__builtin_memset( &TMP$454$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$454$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$454$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$454$3 );
			__builtin_memset( &TMP$457$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$457$3, -1ll, (void*)"FOUND AN ERROR : Spilling overflow when proc calling", 53ll, 0 );
			HWRITEASM64( &TMP$457$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$457$3 );
			__builtin_memset( &TMP$458$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$458$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$458$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$458$3 );
		}
		label$367:;
		label$366:;
	}
	label$365:;
	label$364:;
	void* vr$24 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
	V$1 = (struct $14ASM64_SAVEDREG*)vr$24;
	*(int32*)((uint8*)&CTX$ + 376ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 376ll) + 1ll);
	*(int32*)V$1 = *(int32*)((uint8*)&CTX$ + 376ll);
	*(int32*)((uint8*)V$1 + 8ll) = (int32)-(*(int64*)((uint8*)&CTX$ + 192ll));
	*(int32*)((uint8*)V$1 + 4ll) = *(int32*)((uint8*)REGHANDLE$ + ((int64)REGSPILLED$1 << (2ll & 63ll)));
	fb$result$1 = V$1;
	goto label$357;
	label$357:;
	return fb$result$1;
}

static void REG_SPILLING( int32 REGSPILLED$1 )
{
	FBSTRING TMP$461$1;
	FBSTRING TMP$462$1;
	FBSTRING TMP$463$1;
	FBSTRING TMP$464$1;
	int64 TMP$465$1;
	label$368:;
	struct $14ASM64_SAVEDREG* V$1;
	struct $14ASM64_SAVEDREG* vr$0 = ASM64_SPILLREG( REGSPILLED$1 );
	V$1 = vr$0;
	__builtin_memset( &TMP$464$1, 0, 24ll );
	FBSTRING* vr$5 = fb_IntToStr( *(int32*)((uint8*)V$1 + 8ll) );
	__builtin_memset( &TMP$461$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$461$1, (void*)"mov QWORD PTR ", 15ll, (void*)vr$5, -1ll );
	__builtin_memset( &TMP$462$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$462$1, (void*)vr$8, -1ll, (void*)"[rbp], ", 8ll );
	__builtin_memset( &TMP$463$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$463$1, (void*)vr$11, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSPILLED$1 << (3ll & 63ll))), 0ll );
	fb_StrAssign( (void*)&TMP$464$1, -1ll, (void*)vr$14, -1ll, 0 );
	HWRITEASM64( &TMP$464$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$464$1 );
	*(int32*)((uint8*)REGHANDLE$ + ((int64)REGSPILLED$1 << (2ll & 63ll))) = -2;
	if( (int64)*(int32*)((uint8*)REGROOM$ + ((int64)REGSPILLED$1 << (4ll & 63ll))) != -2ll ) goto label$371;
	{
		*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + ((int64)REGSPILLED$1 << (4ll & 63ll))) + 8ll) = V$1;
		*(int32*)((uint8*)REGROOM$ + ((int64)REGSPILLED$1 << (4ll & 63ll))) = -3;
	}
	label$371:;
	label$370:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) == (struct $8FBSYMBOL*)0ull ) goto label$372;
	TMP$465$1 = -1ll;
	goto label$2987;
	label$372:;
	TMP$465$1 = 0ll;
	label$2987:;
	*(int32*)((uint8*)V$1 + 12ll) = (int32)TMP$465$1;
	label$369:;
}

static void REG_SAVE( void )
{
	label$373:;
	{
		int64 IREG$2;
		IREG$2 = 1ll;
		int64 TMP$466$2;
		int64 vr$0 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1ll );
		TMP$466$2 = vr$0;
		goto label$375;
		label$378:;
		{
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) == -2ll ) goto label$380;
			{
				REG_SPILLING( *(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) );
			}
			label$380:;
			label$379:;
		}
		label$376:;
		IREG$2 = IREG$2 + 1ll;
		label$375:;
		if( IREG$2 <= TMP$466$2 ) goto label$378;
		label$377:;
	}
	label$374:;
}

static void REG_ALLOWED( boolean ALLOWED$1 )
{
	label$381:;
	if( (int64)-ALLOWED$1 != 0ll ) goto label$384;
	{
		{
			int64 IREG$3;
			IREG$3 = 1ll;
			int64 TMP$467$3;
			int64 vr$1 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1ll );
			TMP$467$3 = vr$1 + -2ll;
			goto label$385;
			label$388:;
			{
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) != -2ll ) goto label$390;
				{
					*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) = -4;
				}
				label$390:;
				label$389:;
			}
			label$386:;
			IREG$3 = IREG$3 + 1ll;
			label$385:;
			if( IREG$3 <= TMP$467$3 ) goto label$388;
			label$387:;
		}
	}
	goto label$383;
	label$384:;
	{
		{
			int64 IREG$3;
			IREG$3 = 1ll;
			int64 TMP$468$3;
			int64 vr$13 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1ll );
			TMP$468$3 = vr$13 + -2ll;
			goto label$391;
			label$394:;
			{
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) != -4ll ) goto label$396;
				{
					*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) = -2;
				}
				label$396:;
				label$395:;
			}
			label$392:;
			IREG$3 = IREG$3 + 1ll;
			label$391:;
			if( IREG$3 <= TMP$468$3 ) goto label$394;
			label$393:;
		}
	}
	label$383:;
	label$382:;
}

static int32 REG_FINDFREE( int32 VREG$1, int64 REGPARAM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4ll );
	label$397:;
	int32 REGFREE$1;
	REGFREE$1 = -1;
	int32 NUMROOM$1;
	__builtin_memset( &NUMROOM$1, 0, 4ll );
	static int32 REGSPILL$1 = -1;
	if( *(boolean*)((uint8*)&CTX$ + 257ll) == (boolean)0ll ) goto label$400;
	{
		REG_ALLOWED( (boolean)0ll );
		label$400:;
	}
	{
		int32 IREG$2;
		IREG$2 = 0;
		label$404:;
		{
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int8*)((uint8*)REG_PRIO$ + (int64)IREG$2) << (2ll & 63ll))) != -2ll ) goto label$406;
			{
				REGFREE$1 = (int32)*(int8*)((uint8*)REG_PRIO$ + (int64)IREG$2);
				goto label$403;
				label$406:;
			}
		}
		label$402:;
		IREG$2 = (int32)((int64)IREG$2 + 1ll);
		label$401:;
		if( (int64)IREG$2 <= 12ll ) goto label$404;
		label$403:;
	}
	if( (int64)REGFREE$1 != -1ll ) goto label$408;
	{
		if( REGPARAM$1 != -1ll ) goto label$410;
		{
			REGSPILL$1 = (int32)((int64)REGSPILL$1 + 1ll);
			if( (int64)REGSPILL$1 != 6ll ) goto label$412;
			{
				REGSPILL$1 = 0;
				label$412:;
			}
			label$413:;
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)REGSPILL$1 << (2ll & 63ll))) != -4ll ) goto label$414;
			{
				REGSPILL$1 = (int32)((int64)REGSPILL$1 + 1ll);
				if( (int64)REGSPILL$1 != 6ll ) goto label$416;
				{
					REGSPILL$1 = 0;
					label$416:;
				}
			}
			goto label$413;
			label$414:;
			REGFREE$1 = (int32)*(int8*)((uint8*)REG_PRIO$ + (int64)REGSPILL$1);
		}
		goto label$409;
		label$410:;
		{
			REGFREE$1 = (int32)REGPARAM$1;
		}
		label$409:;
		REG_SPILLING( REGFREE$1 );
	}
	label$408:;
	label$407:;
	if( REGPARAM$1 == (int64)REGFREE$1 ) goto label$418;
	{
		*(int32*)((uint8*)REGHANDLE$ + ((int64)REGFREE$1 << (2ll & 63ll))) = VREG$1;
		*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | (1ll << ((int64)REGFREE$1 & 63ll)));
	}
	label$418:;
	label$417:;
	if( *(boolean*)((uint8*)&CTX$ + 257ll) == (boolean)0ll ) goto label$420;
	{
		REG_ALLOWED( (boolean)1ll );
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
	__builtin_memset( &REGFREE$1, 0, 4ll );
	int64 P$1;
	__builtin_memset( &P$1, 0, 8ll );
	{
		int64 IREG$2;
		IREG$2 = 1ll;
		int64 TMP$469$2;
		int64 vr$2 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1ll );
		TMP$469$2 = vr$2 + -2ll;
		goto label$423;
		label$426:;
		{
			FBSTRING TMP$471$3;
			FBSTRING TMP$472$3;
			FBSTRING TMP$473$3;
			FBSTRING TMP$474$3;
			FBSTRING* vr$8 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))) );
			int64 vr$9 = fb_StrInstr( 1ll, (FBSTRING*)OP1$1, (FBSTRING*)vr$8 );
			P$1 = vr$9;
			if( P$1 != 0ll ) goto label$428;
			{
				goto label$424;
				label$428:;
			}
			int32 vr$14 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))), -1ll );
			REGFREE$1 = vr$14;
			__builtin_memset( &TMP$474$3, 0, 24ll );
			__builtin_memset( &TMP$471$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$471$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$472$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$472$3, (void*)vr$24, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$473$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$473$3, (void*)vr$27, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$474$3, -1ll, (void*)vr$30, -1ll, 0 );
			HWRITEASM64( &TMP$474$3, 3ll );
			fb_StrDelete( (FBSTRING*)&TMP$474$3 );
			*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) = -4;
			int64 vr$40 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
			int64 vr$45 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$2 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
			if( vr$40 != vr$45 ) goto label$430;
			{
				FBSTRING* vr$48 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))) );
				fb_StrAssignMid( OP1$1, P$1, -1ll, (FBSTRING*)vr$48 );
			}
			goto label$429;
			label$430:;
			{
				FBSTRING TMP$475$4;
				FBSTRING TMP$476$4;
				FBSTRING* vr$50 = fb_StrMid( (FBSTRING*)OP1$1, P$1 + 2ll, -1ll );
				FBSTRING* vr$54 = fb_LEFT( (FBSTRING*)OP1$1, P$1 + -1ll );
				__builtin_memset( &TMP$475$4, 0, 24ll );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$475$4, (void*)vr$54, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$476$4, 0, 24ll );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$476$4, (void*)vr$57, -1ll, (void*)vr$50, -1ll );
				fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$60, -1ll, 0 );
			}
			label$429:;
		}
		label$424:;
		IREG$2 = IREG$2 + 1ll;
		label$423:;
		if( IREG$2 <= TMP$469$2 ) goto label$426;
		label$425:;
	}
	int32 vr$62 = fb_StrCompare( (void*)OP3$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$62 == 0ll ) goto label$432;
	{
		{
			int64 IREG$3;
			IREG$3 = 1ll;
			int64 TMP$477$3;
			int64 vr$64 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LISTREG$, 1ll );
			TMP$477$3 = vr$64 + -2ll;
			goto label$433;
			label$436:;
			{
				FBSTRING TMP$478$4;
				FBSTRING TMP$479$4;
				FBSTRING TMP$480$4;
				FBSTRING TMP$481$4;
				FBSTRING* vr$70 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))) );
				int64 vr$71 = fb_StrInstr( 1ll, (FBSTRING*)OP3$1, (FBSTRING*)vr$70 );
				P$1 = vr$71;
				if( P$1 != 0ll ) goto label$438;
				{
					goto label$434;
					label$438:;
				}
				int32 vr$76 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))), -1ll );
				REGFREE$1 = vr$76;
				__builtin_memset( &TMP$481$4, 0, 24ll );
				__builtin_memset( &TMP$478$4, 0, 24ll );
				FBSTRING* vr$86 = fb_StrConcat( &TMP$478$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$479$4, 0, 24ll );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$479$4, (void*)vr$86, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$480$4, 0, 24ll );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$480$4, (void*)vr$89, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
				fb_StrAssign( (void*)&TMP$481$4, -1ll, (void*)vr$92, -1ll, 0 );
				HWRITEASM64( &TMP$481$4, 3ll );
				fb_StrDelete( (FBSTRING*)&TMP$481$4 );
				*(int32*)((uint8*)REGHANDLE$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (2ll & 63ll))) = -4;
				int64 vr$102 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
				int64 vr$107 = fb_StrLen( *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((IREG$3 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
				if( vr$102 != vr$107 ) goto label$440;
				{
					FBSTRING* vr$110 = fb_StrAllocTempDescZ( *(uint8**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))) );
					fb_StrAssignMid( OP3$1, P$1, -1ll, (FBSTRING*)vr$110 );
				}
				goto label$439;
				label$440:;
				{
					FBSTRING TMP$482$5;
					FBSTRING TMP$483$5;
					FBSTRING* vr$112 = fb_StrMid( (FBSTRING*)OP3$1, P$1 + 2ll, -1ll );
					FBSTRING* vr$116 = fb_LEFT( (FBSTRING*)OP3$1, P$1 + -1ll );
					__builtin_memset( &TMP$482$5, 0, 24ll );
					FBSTRING* vr$119 = fb_StrConcat( &TMP$482$5, (void*)vr$116, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$483$5, 0, 24ll );
					FBSTRING* vr$122 = fb_StrConcat( &TMP$483$5, (void*)vr$119, -1ll, (void*)vr$112, -1ll );
					fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$122, -1ll, 0 );
				}
				label$439:;
			}
			label$434:;
			IREG$3 = IREG$3 + 1ll;
			label$433:;
			if( IREG$3 <= TMP$477$3 ) goto label$436;
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
	int64 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 8ll );
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) ) goto label$444;
	{
		FBSTRING TMP$484$2;
		FBSTRING TMP$485$2;
		__builtin_memset( &TMP$485$2, 0, 24ll );
		uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$484$2, 0, 24ll );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$484$2, (void*)vr$2, 0ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$485$2, -1ll, (void*)vr$5, -1ll, 0 );
		HWRITEASM64( &TMP$485$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$485$2 );
		{
			int64 IREG$3;
			IREG$3 = 1ll;
			label$448:;
			{
				if( (int64)*(int32*)((uint8*)REGROOM$ + (IREG$3 << (4ll & 63ll))) != -3ll ) goto label$450;
				{
					FBSTRING TMP$486$5;
					FBSTRING TMP$487$5;
					FBSTRING TMP$488$5;
					FBSTRING TMP$489$5;
					__builtin_memset( &TMP$489$5, 0, 24ll );
					FBSTRING* vr$15 = fb_IntToStr( *(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (4ll & 63ll))) + 8ll) + 8ll) );
					__builtin_memset( &TMP$486$5, 0, 24ll );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$486$5, (void*)"mov QWORD PTR ", 15ll, (void*)vr$15, -1ll );
					__builtin_memset( &TMP$487$5, 0, 24ll );
					FBSTRING* vr$21 = fb_StrConcat( &TMP$487$5, (void*)vr$18, -1ll, (void*)"[rbp], ", 8ll );
					__builtin_memset( &TMP$488$5, 0, 24ll );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$488$5, (void*)vr$21, -1ll, *(void**)((uint8*)REGSTRQ$ + (IREG$3 << (3ll & 63ll))), 0ll );
					fb_StrAssign( (void*)&TMP$489$5, -1ll, (void*)vr$24, -1ll, 0 );
					HWRITEASM64( &TMP$489$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$489$5 );
					*(int32*)((uint8*)REGHANDLE$ + (IREG$3 << (2ll & 63ll))) = -2;
					*(int32*)((uint8*)*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (4ll & 63ll))) + 8ll) + 12ll) = 0;
				}
				label$450:;
				label$449:;
				*(int32*)((uint8*)REGROOM$ + (IREG$3 << (4ll & 63ll))) = -1;
				*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$3 << (4ll & 63ll))) + 8ll) = (struct $14ASM64_SAVEDREG*)0ull;
			}
			label$446:;
			IREG$3 = IREG$3 + 1ll;
			label$445:;
			if( IREG$3 <= 15ll ) goto label$448;
			label$447:;
		}
		if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) != (struct $8FBSYMBOL*)0ull ) goto label$452;
		{
			*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$452:;
		label$451:;
	}
	goto label$443;
	label$444:;
	if( LABEL$1 != *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) ) goto label$453;
	{
		FBSTRING TMP$497$2;
		FBSTRING TMP$498$2;
		if( (int64)*(int32*)((uint8*)&CTX$ + 376ll) <= 0ll ) goto label$455;
		{
			struct $14ASM64_SAVEDREG* V$3;
			void* vr$36 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
			V$3 = (struct $14ASM64_SAVEDREG*)vr$36;
			label$456:;
			if( V$3 == (struct $14ASM64_SAVEDREG*)0ull ) goto label$457;
			{
				if( (int64)*(int32*)((uint8*)V$3 + 12ll) == 0ll ) goto label$459;
				{
					FBSTRING TMP$492$5;
					FBSTRING TMP$493$5;
					FBSTRING TMP$494$5;
					FBSTRING TMP$495$5;
					FBSTRING TMP$496$5;
					int32 vr$40 = REG_FINDFREE( *(int32*)((uint8*)V$3 + 4ll), -1ll );
					REGFREE$1 = (int64)vr$40;
					*(int32*)((uint8*)V$3 + 4ll) = -2;
					__builtin_memset( &TMP$496$5, 0, 24ll );
					FBSTRING* vr$45 = fb_IntToStr( *(int32*)((uint8*)V$3 + 8ll) );
					__builtin_memset( &TMP$492$5, 0, 24ll );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$492$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (REGFREE$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$493$5, 0, 24ll );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$493$5, (void*)vr$49, -1ll, (void*)", QWORD PTR ", 13ll );
					__builtin_memset( &TMP$494$5, 0, 24ll );
					FBSTRING* vr$55 = fb_StrConcat( &TMP$494$5, (void*)vr$52, -1ll, (void*)vr$45, -1ll );
					__builtin_memset( &TMP$495$5, 0, 24ll );
					FBSTRING* vr$58 = fb_StrConcat( &TMP$495$5, (void*)vr$55, -1ll, (void*)"[rbp]", 6ll );
					fb_StrAssign( (void*)&TMP$496$5, -1ll, (void*)vr$58, -1ll, 0 );
					HWRITEASM64( &TMP$496$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$496$5 );
				}
				label$459:;
				label$458:;
				void* vr$62 = FLISTGETNEXT( (void*)V$3 );
				V$3 = (struct $14ASM64_SAVEDREG*)vr$62;
			}
			goto label$456;
			label$457:;
		}
		label$455:;
		label$454:;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) = (struct $8FBSYMBOL*)0ull;
		__builtin_memset( &TMP$498$2, 0, 24ll );
		uint8* vr$64 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$497$2, 0, 24ll );
		FBSTRING* vr$67 = fb_StrConcat( &TMP$497$2, (void*)vr$64, 0ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$498$2, -1ll, (void*)vr$67, -1ll, 0 );
		HWRITEASM64( &TMP$498$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$498$2 );
	}
	label$453:;
	label$443:;
	label$442:;
}

static void REG_TRANSFER( int32 REGTRANS$1, int32 REGSOURCE$1 )
{
	label$478:;
	int32 REGFREE$1;
	__builtin_memset( &REGFREE$1, 0, 4ll );
	if( ((int64)-((int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)REGTRANS$1 << (2ll & 63ll))) == -2ll) | (int64)-((int64)*(int32*)((uint8*)REGHANDLE$ + ((int64)REGTRANS$1 << (2ll & 63ll))) == -4ll)) == 0ll ) goto label$481;
	{
		goto label$479;
		label$481:;
	}
	if( (int64)REGTRANS$1 != (int64)REGSOURCE$1 ) goto label$483;
	{
		*(int32*)((uint8*)REGHANDLE$ + ((int64)REGTRANS$1 << (2ll & 63ll))) = -2;
		goto label$479;
	}
	label$483:;
	label$482:;
	int32 vr$17 = REG_FINDFREE( *(int32*)((uint8*)REGHANDLE$ + ((int64)REGTRANS$1 << (2ll & 63ll))), (int64)REGTRANS$1 );
	REGFREE$1 = vr$17;
	if( (int64)REGFREE$1 == (int64)REGTRANS$1 ) goto label$485;
	{
		FBSTRING TMP$512$2;
		FBSTRING TMP$513$2;
		FBSTRING TMP$514$2;
		FBSTRING TMP$515$2;
		__builtin_memset( &TMP$515$2, 0, 24ll );
		__builtin_memset( &TMP$512$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$512$2, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGFREE$1 << (3ll & 63ll))), 0ll );
		__builtin_memset( &TMP$513$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$513$2, (void*)vr$27, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$514$2, 0, 24ll );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$514$2, (void*)vr$30, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGTRANS$1 << (3ll & 63ll))), 0ll );
		fb_StrAssign( (void*)&TMP$515$2, -1ll, (void*)vr$33, -1ll, 0 );
		HWRITEASM64( &TMP$515$2, 3ll );
		fb_StrDelete( (FBSTRING*)&TMP$515$2 );
	}
	goto label$484;
	label$485:;
	{
	}
	label$484:;
	label$479:;
}

static void MEMCLEAR( int64 BYTESTOCLEAR$1, FBSTRING* DST$1, int32 DTYP$1 )
{
	label$486:;
	uint64 NBBYTES$1;
	NBBYTES$1 = (uint64)BYTESTOCLEAR$1;
	uint64 NOOPTIM$1;
	__builtin_memset( &NOOPTIM$1, 0, 8ll );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 24ll );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4ll );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4ll );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49ll );
	int64 vr$6 = fb_StrInstr( 1ll, (FBSTRING*)vr$5, (FBSTRING*)DST$1 );
	if( vr$6 == 0ll ) goto label$489;
	{
		fb_StrAssign( (void*)&REGDST$1, -1ll, (void*)DST$1, -1ll, 0 );
	}
	goto label$488;
	label$489:;
	{
		int32 vr$8 = REG_FINDFREE( 999997, -1ll );
		RDST$1 = vr$8;
		fb_StrAssign( (void*)&REGDST$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)RDST$1 << (3ll & 63ll))), 0ll, 0 );
		if( (int64)DTYP$1 != 1ll ) goto label$491;
		{
			FBSTRING TMP$517$3;
			FBSTRING TMP$518$3;
			FBSTRING TMP$519$3;
			FBSTRING TMP$520$3;
			__builtin_memset( &TMP$520$3, 0, 24ll );
			__builtin_memset( &TMP$517$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$517$3, (void*)"lea ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$518$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$518$3, (void*)vr$17, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$519$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$519$3, (void*)vr$20, -1ll, (void*)DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$520$3, -1ll, (void*)vr$23, -1ll, 0 );
			HWRITEASM64( &TMP$520$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$520$3 );
		}
		goto label$490;
		label$491:;
		{
			FBSTRING TMP$521$3;
			FBSTRING TMP$522$3;
			FBSTRING TMP$523$3;
			FBSTRING TMP$524$3;
			__builtin_memset( &TMP$524$3, 0, 24ll );
			__builtin_memset( &TMP$521$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$521$3, (void*)"mov ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$522$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$522$3, (void*)vr$31, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$523$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$523$3, (void*)vr$34, -1ll, (void*)DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$524$3, -1ll, (void*)vr$37, -1ll, 0 );
			HWRITEASM64( &TMP$524$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$524$3 );
		}
		label$490:;
		*(int32*)((uint8*)REGHANDLE$ + ((int64)RDST$1 << (2ll & 63ll))) = -2;
	}
	label$488:;
	if( ((((int64)-(NBBYTES$1 != 1ull) & (int64)-(NBBYTES$1 != 2ull)) & (int64)-(NBBYTES$1 != 4ull)) & (int64)-(NBBYTES$1 != 8ull)) == 0ll ) goto label$493;
	{
		NOOPTIM$1 = 3ull;
	}
	goto label$492;
	label$493:;
	{
		NOOPTIM$1 = 0ull;
	}
	label$492:;
	if( NBBYTES$1 <= 7ull ) goto label$495;
	{
		NB8$1 = (int32)(NBBYTES$1 >> (3ull & 63ll));
		if( (int64)NB8$1 <= 7ll ) goto label$497;
		{
			FBSTRING TMP$526$3;
			FBSTRING TMP$527$3;
			FBSTRING TMP$528$3;
			FBSTRING TMP$529$3;
			FBSTRING TMP$532$3;
			FBSTRING TMP$533$3;
			FBSTRING TMP$534$3;
			FBSTRING TMP$537$3;
			FBSTRING TMP$538$3;
			FBSTRING TMP$539$3;
			FBSTRING TMP$541$3;
			FBSTRING TMP$543$3;
			FBSTRING TMP$544$3;
			__builtin_memset( &TMP$527$3, 0, 24ll );
			FBSTRING* vr$54 = fb_IntToStr( NB8$1 );
			__builtin_memset( &TMP$526$3, 0, 24ll );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$526$3, (void*)"mov rax, ", 10ll, (void*)vr$54, -1ll );
			fb_StrAssign( (void*)&TMP$527$3, -1ll, (void*)vr$57, -1ll, 0 );
			HWRITEASM64( &TMP$527$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$527$3 );
			uint8* vr$61 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$61, 0ll, 0 );
			__builtin_memset( &TMP$529$3, 0, 24ll );
			__builtin_memset( &TMP$528$3, 0, 24ll );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$528$3, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
			fb_StrAssign( (void*)&TMP$529$3, -1ll, (void*)vr$67, -1ll, 0 );
			HWRITEASM64( &TMP$529$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$529$3 );
			__builtin_memset( &TMP$534$3, 0, 24ll );
			__builtin_memset( &TMP$532$3, 0, 24ll );
			FBSTRING* vr$75 = fb_StrConcat( &TMP$532$3, (void*)"mov QWORD PTR [", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$533$3, 0, 24ll );
			FBSTRING* vr$78 = fb_StrConcat( &TMP$533$3, (void*)vr$75, -1ll, (void*)"], 0", 5ll );
			fb_StrAssign( (void*)&TMP$534$3, -1ll, (void*)vr$78, -1ll, 0 );
			HWRITEASM64( &TMP$534$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$534$3 );
			__builtin_memset( &TMP$539$3, 0, 24ll );
			__builtin_memset( &TMP$537$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$537$3, (void*)"add ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$538$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$538$3, (void*)vr$86, -1ll, (void*)", 8", 4ll );
			fb_StrAssign( (void*)&TMP$539$3, -1ll, (void*)vr$89, -1ll, 0 );
			HWRITEASM64( &TMP$539$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$539$3 );
			__builtin_memset( &TMP$541$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$541$3, -1ll, (void*)"dec rax", 8ll, 0 );
			HWRITEASM64( &TMP$541$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$541$3 );
			__builtin_memset( &TMP$544$3, 0, 24ll );
			__builtin_memset( &TMP$543$3, 0, 24ll );
			FBSTRING* vr$101 = fb_StrConcat( &TMP$543$3, (void*)"jnz ", 5ll, (void*)&LNAME$1, -1ll );
			fb_StrAssign( (void*)&TMP$544$3, -1ll, (void*)vr$101, -1ll, 0 );
			HWRITEASM64( &TMP$544$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$544$3 );
			NBBYTES$1 = NBBYTES$1 - (uint64)((int64)NB8$1 << (3ll & 63ll));
		}
		goto label$496;
		label$497:;
		{
			{
				int32 INB8$4;
				INB8$4 = 0;
				int32 TMP$545$4;
				TMP$545$4 = (int32)((int64)NB8$1 + -1ll);
				goto label$498;
				label$501:;
				{
					FBSTRING TMP$546$5;
					FBSTRING TMP$547$5;
					FBSTRING TMP$548$5;
					FBSTRING TMP$549$5;
					FBSTRING TMP$550$5;
					__builtin_memset( &TMP$550$5, 0, 24ll );
					FBSTRING* vr$115 = fb_LongintToStr( (int64)INB8$4 << (3ll & 63ll) );
					__builtin_memset( &TMP$546$5, 0, 24ll );
					FBSTRING* vr$118 = fb_StrConcat( &TMP$546$5, (void*)"mov QWORD PTR ", 15ll, (void*)vr$115, -1ll );
					__builtin_memset( &TMP$547$5, 0, 24ll );
					FBSTRING* vr$121 = fb_StrConcat( &TMP$547$5, (void*)vr$118, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$548$5, 0, 24ll );
					FBSTRING* vr$124 = fb_StrConcat( &TMP$548$5, (void*)vr$121, -1ll, (void*)&REGDST$1, -1ll );
					__builtin_memset( &TMP$549$5, 0, 24ll );
					FBSTRING* vr$127 = fb_StrConcat( &TMP$549$5, (void*)vr$124, -1ll, (void*)"], 0", 5ll );
					fb_StrAssign( (void*)&TMP$550$5, -1ll, (void*)vr$127, -1ll, 0 );
					HWRITEASM64( &TMP$550$5, (int64)NOOPTIM$1 );
					fb_StrDelete( (FBSTRING*)&TMP$550$5 );
				}
				label$499:;
				INB8$4 = (int32)((int64)INB8$4 + 1ll);
				label$498:;
				if( (int64)INB8$4 <= (int64)TMP$545$4 ) goto label$501;
				label$500:;
			}
			NBBYTES$1 = NBBYTES$1 - (uint64)((int64)NB8$1 << (3ll & 63ll));
			if( NBBYTES$1 == 0ull ) goto label$503;
			{
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				FBSTRING TMP$553$4;
				FBSTRING TMP$554$4;
				__builtin_memset( &TMP$554$4, 0, 24ll );
				FBSTRING* vr$142 = fb_LongintToStr( (int64)NB8$1 << (3ll & 63ll) );
				__builtin_memset( &TMP$551$4, 0, 24ll );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$551$4, (void*)"add ", 5ll, (void*)&REGDST$1, -1ll );
				__builtin_memset( &TMP$552$4, 0, 24ll );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$552$4, (void*)vr$146, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$553$4, 0, 24ll );
				FBSTRING* vr$152 = fb_StrConcat( &TMP$553$4, (void*)vr$149, -1ll, (void*)vr$142, -1ll );
				fb_StrAssign( (void*)&TMP$554$4, -1ll, (void*)vr$152, -1ll, 0 );
				HWRITEASM64( &TMP$554$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$554$4 );
			}
			label$503:;
			label$502:;
		}
		label$496:;
	}
	label$495:;
	label$494:;
	if( NBBYTES$1 <= 3ull ) goto label$505;
	{
		FBSTRING TMP$556$2;
		FBSTRING TMP$557$2;
		FBSTRING TMP$558$2;
		__builtin_memset( &TMP$558$2, 0, 24ll );
		__builtin_memset( &TMP$556$2, 0, 24ll );
		FBSTRING* vr$160 = fb_StrConcat( &TMP$556$2, (void*)"mov dword ptr [", 16ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$557$2, 0, 24ll );
		FBSTRING* vr$163 = fb_StrConcat( &TMP$557$2, (void*)vr$160, -1ll, (void*)"], 0", 5ll );
		fb_StrAssign( (void*)&TMP$558$2, -1ll, (void*)vr$163, -1ll, 0 );
		HWRITEASM64( &TMP$558$2, (int64)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$558$2 );
		NBBYTES$1 = NBBYTES$1 + 18446744073709551612ull;
		if( NBBYTES$1 <= 1ull ) goto label$507;
		{
			FBSTRING TMP$560$3;
			FBSTRING TMP$561$3;
			FBSTRING TMP$562$3;
			__builtin_memset( &TMP$562$3, 0, 24ll );
			__builtin_memset( &TMP$560$3, 0, 24ll );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$560$3, (void*)"mov word ptr 4[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$561$3, 0, 24ll );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$561$3, (void*)vr$172, -1ll, (void*)"], 0", 5ll );
			fb_StrAssign( (void*)&TMP$562$3, -1ll, (void*)vr$175, -1ll, 0 );
			HWRITEASM64( &TMP$562$3, (int64)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$562$3 );
			NBBYTES$1 = NBBYTES$1 + 18446744073709551614ull;
			if( NBBYTES$1 <= 0ull ) goto label$509;
			{
				FBSTRING TMP$564$4;
				FBSTRING TMP$565$4;
				FBSTRING TMP$566$4;
				__builtin_memset( &TMP$566$4, 0, 24ll );
				__builtin_memset( &TMP$564$4, 0, 24ll );
				FBSTRING* vr$184 = fb_StrConcat( &TMP$564$4, (void*)"mov byte ptr 6[", 16ll, (void*)&REGDST$1, -1ll );
				__builtin_memset( &TMP$565$4, 0, 24ll );
				FBSTRING* vr$187 = fb_StrConcat( &TMP$565$4, (void*)vr$184, -1ll, (void*)"], 0", 5ll );
				fb_StrAssign( (void*)&TMP$566$4, -1ll, (void*)vr$187, -1ll, 0 );
				HWRITEASM64( &TMP$566$4, (int64)NOOPTIM$1 );
				fb_StrDelete( (FBSTRING*)&TMP$566$4 );
			}
			label$509:;
			label$508:;
		}
		goto label$506;
		label$507:;
		if( NBBYTES$1 <= 0ull ) goto label$510;
		{
			FBSTRING TMP$568$3;
			FBSTRING TMP$569$3;
			FBSTRING TMP$570$3;
			__builtin_memset( &TMP$570$3, 0, 24ll );
			__builtin_memset( &TMP$568$3, 0, 24ll );
			FBSTRING* vr$195 = fb_StrConcat( &TMP$568$3, (void*)"mov byte ptr 4[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$569$3, 0, 24ll );
			FBSTRING* vr$198 = fb_StrConcat( &TMP$569$3, (void*)vr$195, -1ll, (void*)"], 0", 5ll );
			fb_StrAssign( (void*)&TMP$570$3, -1ll, (void*)vr$198, -1ll, 0 );
			HWRITEASM64( &TMP$570$3, (int64)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$570$3 );
		}
		label$510:;
		label$506:;
	}
	goto label$504;
	label$505:;
	if( NBBYTES$1 <= 1ull ) goto label$511;
	{
		FBSTRING TMP$572$2;
		FBSTRING TMP$573$2;
		FBSTRING TMP$574$2;
		__builtin_memset( &TMP$574$2, 0, 24ll );
		__builtin_memset( &TMP$572$2, 0, 24ll );
		FBSTRING* vr$206 = fb_StrConcat( &TMP$572$2, (void*)"mov word ptr [", 15ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$573$2, 0, 24ll );
		FBSTRING* vr$209 = fb_StrConcat( &TMP$573$2, (void*)vr$206, -1ll, (void*)"], 0", 5ll );
		fb_StrAssign( (void*)&TMP$574$2, -1ll, (void*)vr$209, -1ll, 0 );
		HWRITEASM64( &TMP$574$2, (int64)NOOPTIM$1 );
		fb_StrDelete( (FBSTRING*)&TMP$574$2 );
		NBBYTES$1 = NBBYTES$1 + 18446744073709551614ull;
		if( NBBYTES$1 <= 0ull ) goto label$513;
		{
			FBSTRING TMP$576$3;
			FBSTRING TMP$577$3;
			FBSTRING TMP$578$3;
			__builtin_memset( &TMP$578$3, 0, 24ll );
			__builtin_memset( &TMP$576$3, 0, 24ll );
			FBSTRING* vr$218 = fb_StrConcat( &TMP$576$3, (void*)"mov byte ptr 2[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$577$3, 0, 24ll );
			FBSTRING* vr$221 = fb_StrConcat( &TMP$577$3, (void*)vr$218, -1ll, (void*)"], 0", 5ll );
			fb_StrAssign( (void*)&TMP$578$3, -1ll, (void*)vr$221, -1ll, 0 );
			HWRITEASM64( &TMP$578$3, (int64)NOOPTIM$1 );
			fb_StrDelete( (FBSTRING*)&TMP$578$3 );
		}
		label$513:;
		label$512:;
	}
	goto label$504;
	label$511:;
	if( NBBYTES$1 <= 0ull ) goto label$514;
	{
		FBSTRING TMP$580$2;
		FBSTRING TMP$581$2;
		FBSTRING TMP$582$2;
		__builtin_memset( &TMP$582$2, 0, 24ll );
		__builtin_memset( &TMP$580$2, 0, 24ll );
		FBSTRING* vr$229 = fb_StrConcat( &TMP$580$2, (void*)"mov byte ptr [", 15ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$581$2, 0, 24ll );
		FBSTRING* vr$232 = fb_StrConcat( &TMP$581$2, (void*)vr$229, -1ll, (void*)"], 0", 5ll );
		fb_StrAssign( (void*)&TMP$582$2, -1ll, (void*)vr$232, -1ll, 0 );
		HWRITEASM64( &TMP$582$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$582$2 );
	}
	label$514:;
	label$504:;
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$487:;
}

static void MEMCOPY( int64 BYTESTOCLEAR$1, FBSTRING* SRC$1, FBSTRING* DST$1, int32 STYP$1, int32 DTYP$1 )
{
	label$515:;
	uint64 NBBYTES$1;
	NBBYTES$1 = (uint64)BYTESTOCLEAR$1;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	FBSTRING REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 24ll );
	FBSTRING REGDST$1;
	__builtin_memset( &REGDST$1, 0, 24ll );
	FBSTRING REGNBB$1;
	__builtin_memset( &REGNBB$1, 0, 24ll );
	int32 NB8$1;
	__builtin_memset( &NB8$1, 0, 4ll );
	int32 RSRC$1;
	__builtin_memset( &RSRC$1, 0, 4ll );
	int32 RDST$1;
	__builtin_memset( &RDST$1, 0, 4ll );
	int32 RNBB$1;
	__builtin_memset( &RNBB$1, 0, 4ll );
	if( BYTESTOCLEAR$1 != 0ll ) goto label$518;
	{
		fb_StrDelete( (FBSTRING*)&REGNBB$1 );
		fb_StrDelete( (FBSTRING*)&REGDST$1 );
		fb_StrDelete( (FBSTRING*)&REGSRC$1 );
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$516;
	}
	label$518:;
	label$517:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49ll );
	int64 vr$13 = fb_StrInstr( 1ll, (FBSTRING*)vr$12, (FBSTRING*)SRC$1 );
	if( vr$13 == 0ll ) goto label$520;
	{
		fb_StrAssign( (void*)&REGSRC$1, -1ll, (void*)SRC$1, -1ll, 0 );
	}
	goto label$519;
	label$520:;
	{
		int32 vr$15 = REG_FINDFREE( 999998, -1ll );
		RSRC$1 = vr$15;
		fb_StrAssign( (void*)&REGSRC$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)RSRC$1 << (3ll & 63ll))), 0ll, 0 );
		if( (int64)STYP$1 != 1ll ) goto label$522;
		{
			FBSTRING TMP$583$3;
			FBSTRING TMP$584$3;
			FBSTRING TMP$585$3;
			FBSTRING TMP$586$3;
			__builtin_memset( &TMP$586$3, 0, 24ll );
			__builtin_memset( &TMP$583$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$583$3, (void*)"lea ", 5ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$584$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$584$3, (void*)vr$24, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$585$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$585$3, (void*)vr$27, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$586$3, -1ll, (void*)vr$30, -1ll, 0 );
			HWRITEASM64( &TMP$586$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$586$3 );
		}
		goto label$521;
		label$522:;
		{
			FBSTRING TMP$587$3;
			FBSTRING TMP$588$3;
			FBSTRING TMP$589$3;
			FBSTRING TMP$590$3;
			__builtin_memset( &TMP$590$3, 0, 24ll );
			__builtin_memset( &TMP$587$3, 0, 24ll );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$587$3, (void*)"mov ", 5ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$588$3, 0, 24ll );
			FBSTRING* vr$41 = fb_StrConcat( &TMP$588$3, (void*)vr$38, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$589$3, 0, 24ll );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$589$3, (void*)vr$41, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$590$3, -1ll, (void*)vr$44, -1ll, 0 );
			HWRITEASM64( &TMP$590$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$590$3 );
		}
		label$521:;
	}
	label$519:;
	FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (uint8*)"rcx rdx rbx rdi rsi r8 r9 r10 r11 r12 r13 r14 r15", 49ll );
	int64 vr$49 = fb_StrInstr( 1ll, (FBSTRING*)vr$48, (FBSTRING*)DST$1 );
	if( vr$49 == 0ll ) goto label$524;
	{
		fb_StrAssign( (void*)&REGDST$1, -1ll, (void*)DST$1, -1ll, 0 );
	}
	goto label$523;
	label$524:;
	{
		int32 vr$51 = REG_FINDFREE( 999997, -1ll );
		RDST$1 = vr$51;
		fb_StrAssign( (void*)&REGDST$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)RDST$1 << (3ll & 63ll))), 0ll, 0 );
		if( (int64)DTYP$1 != 1ll ) goto label$526;
		{
			FBSTRING TMP$591$3;
			FBSTRING TMP$592$3;
			FBSTRING TMP$593$3;
			FBSTRING TMP$594$3;
			__builtin_memset( &TMP$594$3, 0, 24ll );
			__builtin_memset( &TMP$591$3, 0, 24ll );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$591$3, (void*)"lea ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$592$3, 0, 24ll );
			FBSTRING* vr$63 = fb_StrConcat( &TMP$592$3, (void*)vr$60, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$593$3, 0, 24ll );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$593$3, (void*)vr$63, -1ll, (void*)DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$594$3, -1ll, (void*)vr$66, -1ll, 0 );
			HWRITEASM64( &TMP$594$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$594$3 );
		}
		goto label$525;
		label$526:;
		{
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$597$3;
			FBSTRING TMP$598$3;
			__builtin_memset( &TMP$598$3, 0, 24ll );
			__builtin_memset( &TMP$595$3, 0, 24ll );
			FBSTRING* vr$74 = fb_StrConcat( &TMP$595$3, (void*)"mov ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$596$3, 0, 24ll );
			FBSTRING* vr$77 = fb_StrConcat( &TMP$596$3, (void*)vr$74, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$597$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$597$3, (void*)vr$77, -1ll, (void*)DST$1, -1ll );
			fb_StrAssign( (void*)&TMP$598$3, -1ll, (void*)vr$80, -1ll, 0 );
			HWRITEASM64( &TMP$598$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$598$3 );
		}
		label$525:;
	}
	label$523:;
	NB8$1 = (int32)(NBBYTES$1 >> (3ull & 63ll));
	if( (int64)NB8$1 <= 7ll ) goto label$528;
	{
		FBSTRING TMP$599$2;
		FBSTRING TMP$600$2;
		FBSTRING TMP$601$2;
		FBSTRING TMP$602$2;
		FBSTRING TMP$603$2;
		FBSTRING TMP$604$2;
		FBSTRING TMP$606$2;
		FBSTRING TMP$607$2;
		FBSTRING TMP$608$2;
		FBSTRING TMP$611$2;
		FBSTRING TMP$612$2;
		FBSTRING TMP$613$2;
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		FBSTRING TMP$616$2;
		FBSTRING TMP$617$2;
		FBSTRING TMP$618$2;
		FBSTRING TMP$619$2;
		FBSTRING TMP$621$2;
		FBSTRING TMP$622$2;
		FBSTRING TMP$623$2;
		FBSTRING TMP$624$2;
		int32 vr$87 = REG_FINDFREE( 999996, -1ll );
		RNBB$1 = vr$87;
		fb_StrAssign( (void*)&REGNBB$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)RNBB$1 << (3ll & 63ll))), 0ll, 0 );
		*(int32*)((uint8*)REGHANDLE$ + ((int64)RNBB$1 << (2ll & 63ll))) = -2;
		__builtin_memset( &TMP$602$2, 0, 24ll );
		FBSTRING* vr$94 = fb_IntToStr( NB8$1 );
		__builtin_memset( &TMP$599$2, 0, 24ll );
		FBSTRING* vr$98 = fb_StrConcat( &TMP$599$2, (void*)"mov ", 5ll, (void*)&REGNBB$1, -1ll );
		__builtin_memset( &TMP$600$2, 0, 24ll );
		FBSTRING* vr$101 = fb_StrConcat( &TMP$600$2, (void*)vr$98, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$601$2, 0, 24ll );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$601$2, (void*)vr$101, -1ll, (void*)vr$94, -1ll );
		fb_StrAssign( (void*)&TMP$602$2, -1ll, (void*)vr$104, -1ll, 0 );
		HWRITEASM64( &TMP$602$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$602$2 );
		uint8* vr$108 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$108, 0ll, 0 );
		__builtin_memset( &TMP$604$2, 0, 24ll );
		__builtin_memset( &TMP$603$2, 0, 24ll );
		FBSTRING* vr$114 = fb_StrConcat( &TMP$603$2, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$604$2, -1ll, (void*)vr$114, -1ll, 0 );
		HWRITEASM64( &TMP$604$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$604$2 );
		__builtin_memset( &TMP$608$2, 0, 24ll );
		__builtin_memset( &TMP$606$2, 0, 24ll );
		FBSTRING* vr$122 = fb_StrConcat( &TMP$606$2, (void*)"mov rax, [", 11ll, (void*)&REGSRC$1, -1ll );
		__builtin_memset( &TMP$607$2, 0, 24ll );
		FBSTRING* vr$125 = fb_StrConcat( &TMP$607$2, (void*)vr$122, -1ll, (void*)"]", 2ll );
		fb_StrAssign( (void*)&TMP$608$2, -1ll, (void*)vr$125, -1ll, 0 );
		HWRITEASM64( &TMP$608$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$608$2 );
		__builtin_memset( &TMP$613$2, 0, 24ll );
		__builtin_memset( &TMP$611$2, 0, 24ll );
		FBSTRING* vr$133 = fb_StrConcat( &TMP$611$2, (void*)"mov [", 6ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$612$2, 0, 24ll );
		FBSTRING* vr$136 = fb_StrConcat( &TMP$612$2, (void*)vr$133, -1ll, (void*)"], rax", 7ll );
		fb_StrAssign( (void*)&TMP$613$2, -1ll, (void*)vr$136, -1ll, 0 );
		HWRITEASM64( &TMP$613$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$613$2 );
		__builtin_memset( &TMP$616$2, 0, 24ll );
		__builtin_memset( &TMP$614$2, 0, 24ll );
		FBSTRING* vr$144 = fb_StrConcat( &TMP$614$2, (void*)"add ", 5ll, (void*)&REGSRC$1, -1ll );
		__builtin_memset( &TMP$615$2, 0, 24ll );
		FBSTRING* vr$147 = fb_StrConcat( &TMP$615$2, (void*)vr$144, -1ll, (void*)", 8", 4ll );
		fb_StrAssign( (void*)&TMP$616$2, -1ll, (void*)vr$147, -1ll, 0 );
		HWRITEASM64( &TMP$616$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$616$2 );
		__builtin_memset( &TMP$619$2, 0, 24ll );
		__builtin_memset( &TMP$617$2, 0, 24ll );
		FBSTRING* vr$155 = fb_StrConcat( &TMP$617$2, (void*)"add ", 5ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$618$2, 0, 24ll );
		FBSTRING* vr$158 = fb_StrConcat( &TMP$618$2, (void*)vr$155, -1ll, (void*)", 8", 4ll );
		fb_StrAssign( (void*)&TMP$619$2, -1ll, (void*)vr$158, -1ll, 0 );
		HWRITEASM64( &TMP$619$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$619$2 );
		__builtin_memset( &TMP$622$2, 0, 24ll );
		__builtin_memset( &TMP$621$2, 0, 24ll );
		FBSTRING* vr$166 = fb_StrConcat( &TMP$621$2, (void*)"dec ", 5ll, (void*)&REGNBB$1, -1ll );
		fb_StrAssign( (void*)&TMP$622$2, -1ll, (void*)vr$166, -1ll, 0 );
		HWRITEASM64( &TMP$622$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$622$2 );
		__builtin_memset( &TMP$624$2, 0, 24ll );
		__builtin_memset( &TMP$623$2, 0, 24ll );
		FBSTRING* vr$174 = fb_StrConcat( &TMP$623$2, (void*)"jnz ", 5ll, (void*)&LNAME$1, -1ll );
		fb_StrAssign( (void*)&TMP$624$2, -1ll, (void*)vr$174, -1ll, 0 );
		HWRITEASM64( &TMP$624$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$624$2 );
		NBBYTES$1 = NBBYTES$1 - (uint64)((int64)NB8$1 << (3ll & 63ll));
	}
	goto label$527;
	label$528:;
	if( (int64)NB8$1 <= 0ll ) goto label$529;
	{
		{
			int32 INB8$3;
			INB8$3 = 0;
			int32 TMP$625$3;
			TMP$625$3 = (int32)((int64)NB8$1 + -1ll);
			goto label$530;
			label$533:;
			{
				FBSTRING TMP$626$4;
				FBSTRING TMP$627$4;
				FBSTRING TMP$628$4;
				FBSTRING TMP$629$4;
				FBSTRING TMP$630$4;
				FBSTRING TMP$631$4;
				FBSTRING TMP$632$4;
				FBSTRING TMP$633$4;
				FBSTRING TMP$634$4;
				FBSTRING TMP$635$4;
				__builtin_memset( &TMP$630$4, 0, 24ll );
				FBSTRING* vr$189 = fb_LongintToStr( (int64)INB8$3 << (3ll & 63ll) );
				__builtin_memset( &TMP$626$4, 0, 24ll );
				FBSTRING* vr$192 = fb_StrConcat( &TMP$626$4, (void*)"mov rax, ", 10ll, (void*)vr$189, -1ll );
				__builtin_memset( &TMP$627$4, 0, 24ll );
				FBSTRING* vr$195 = fb_StrConcat( &TMP$627$4, (void*)vr$192, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$628$4, 0, 24ll );
				FBSTRING* vr$198 = fb_StrConcat( &TMP$628$4, (void*)vr$195, -1ll, (void*)&REGSRC$1, -1ll );
				__builtin_memset( &TMP$629$4, 0, 24ll );
				FBSTRING* vr$201 = fb_StrConcat( &TMP$629$4, (void*)vr$198, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$630$4, -1ll, (void*)vr$201, -1ll, 0 );
				HWRITEASM64( &TMP$630$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$630$4 );
				__builtin_memset( &TMP$635$4, 0, 24ll );
				FBSTRING* vr$209 = fb_LongintToStr( (int64)INB8$3 << (3ll & 63ll) );
				__builtin_memset( &TMP$631$4, 0, 24ll );
				FBSTRING* vr$212 = fb_StrConcat( &TMP$631$4, (void*)"mov ", 5ll, (void*)vr$209, -1ll );
				__builtin_memset( &TMP$632$4, 0, 24ll );
				FBSTRING* vr$215 = fb_StrConcat( &TMP$632$4, (void*)vr$212, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$633$4, 0, 24ll );
				FBSTRING* vr$218 = fb_StrConcat( &TMP$633$4, (void*)vr$215, -1ll, (void*)&REGDST$1, -1ll );
				__builtin_memset( &TMP$634$4, 0, 24ll );
				FBSTRING* vr$221 = fb_StrConcat( &TMP$634$4, (void*)vr$218, -1ll, (void*)"], rax", 7ll );
				fb_StrAssign( (void*)&TMP$635$4, -1ll, (void*)vr$221, -1ll, 0 );
				HWRITEASM64( &TMP$635$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$635$4 );
			}
			label$531:;
			INB8$3 = (int32)((int64)INB8$3 + 1ll);
			label$530:;
			if( (int64)INB8$3 <= (int64)TMP$625$3 ) goto label$533;
			label$532:;
		}
		NBBYTES$1 = NBBYTES$1 - (uint64)((int64)NB8$1 << (3ll & 63ll));
		if( NBBYTES$1 == 0ull ) goto label$535;
		{
			FBSTRING TMP$636$3;
			FBSTRING TMP$637$3;
			FBSTRING TMP$638$3;
			FBSTRING TMP$639$3;
			FBSTRING TMP$640$3;
			FBSTRING TMP$641$3;
			FBSTRING TMP$642$3;
			FBSTRING TMP$643$3;
			__builtin_memset( &TMP$639$3, 0, 24ll );
			FBSTRING* vr$236 = fb_LongintToStr( (int64)NB8$1 << (3ll & 63ll) );
			__builtin_memset( &TMP$636$3, 0, 24ll );
			FBSTRING* vr$240 = fb_StrConcat( &TMP$636$3, (void*)"add ", 5ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$637$3, 0, 24ll );
			FBSTRING* vr$243 = fb_StrConcat( &TMP$637$3, (void*)vr$240, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$638$3, 0, 24ll );
			FBSTRING* vr$246 = fb_StrConcat( &TMP$638$3, (void*)vr$243, -1ll, (void*)vr$236, -1ll );
			fb_StrAssign( (void*)&TMP$639$3, -1ll, (void*)vr$246, -1ll, 0 );
			HWRITEASM64( &TMP$639$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$639$3 );
			__builtin_memset( &TMP$643$3, 0, 24ll );
			FBSTRING* vr$253 = fb_LongintToStr( (int64)NB8$1 << (3ll & 63ll) );
			__builtin_memset( &TMP$640$3, 0, 24ll );
			FBSTRING* vr$257 = fb_StrConcat( &TMP$640$3, (void*)"add ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$641$3, 0, 24ll );
			FBSTRING* vr$260 = fb_StrConcat( &TMP$641$3, (void*)vr$257, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$642$3, 0, 24ll );
			FBSTRING* vr$263 = fb_StrConcat( &TMP$642$3, (void*)vr$260, -1ll, (void*)vr$253, -1ll );
			fb_StrAssign( (void*)&TMP$643$3, -1ll, (void*)vr$263, -1ll, 0 );
			HWRITEASM64( &TMP$643$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$643$3 );
		}
		label$535:;
		label$534:;
	}
	label$529:;
	label$527:;
	if( NBBYTES$1 <= 3ull ) goto label$537;
	{
		FBSTRING TMP$645$2;
		FBSTRING TMP$646$2;
		FBSTRING TMP$647$2;
		FBSTRING TMP$649$2;
		FBSTRING TMP$650$2;
		FBSTRING TMP$651$2;
		__builtin_memset( &TMP$647$2, 0, 24ll );
		__builtin_memset( &TMP$645$2, 0, 24ll );
		FBSTRING* vr$271 = fb_StrConcat( &TMP$645$2, (void*)"mov eax, dword ptr [", 21ll, (void*)&REGSRC$1, -1ll );
		__builtin_memset( &TMP$646$2, 0, 24ll );
		FBSTRING* vr$274 = fb_StrConcat( &TMP$646$2, (void*)vr$271, -1ll, (void*)"]", 2ll );
		fb_StrAssign( (void*)&TMP$647$2, -1ll, (void*)vr$274, -1ll, 0 );
		HWRITEASM64( &TMP$647$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$647$2 );
		__builtin_memset( &TMP$651$2, 0, 24ll );
		__builtin_memset( &TMP$649$2, 0, 24ll );
		FBSTRING* vr$282 = fb_StrConcat( &TMP$649$2, (void*)"mov dword ptr [", 16ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$650$2, 0, 24ll );
		FBSTRING* vr$285 = fb_StrConcat( &TMP$650$2, (void*)vr$282, -1ll, (void*)"], eax", 7ll );
		fb_StrAssign( (void*)&TMP$651$2, -1ll, (void*)vr$285, -1ll, 0 );
		HWRITEASM64( &TMP$651$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$651$2 );
		NBBYTES$1 = NBBYTES$1 + 18446744073709551612ull;
		if( NBBYTES$1 <= 1ull ) goto label$539;
		{
			FBSTRING TMP$653$3;
			FBSTRING TMP$654$3;
			FBSTRING TMP$655$3;
			FBSTRING TMP$657$3;
			FBSTRING TMP$658$3;
			FBSTRING TMP$659$3;
			__builtin_memset( &TMP$655$3, 0, 24ll );
			__builtin_memset( &TMP$653$3, 0, 24ll );
			FBSTRING* vr$294 = fb_StrConcat( &TMP$653$3, (void*)"mov ax, word ptr 4[", 20ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$654$3, 0, 24ll );
			FBSTRING* vr$297 = fb_StrConcat( &TMP$654$3, (void*)vr$294, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$655$3, -1ll, (void*)vr$297, -1ll, 0 );
			HWRITEASM64( &TMP$655$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$655$3 );
			__builtin_memset( &TMP$659$3, 0, 24ll );
			__builtin_memset( &TMP$657$3, 0, 24ll );
			FBSTRING* vr$305 = fb_StrConcat( &TMP$657$3, (void*)"mov word ptr 4[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$658$3, 0, 24ll );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$658$3, (void*)vr$305, -1ll, (void*)"], ax", 6ll );
			fb_StrAssign( (void*)&TMP$659$3, -1ll, (void*)vr$308, -1ll, 0 );
			HWRITEASM64( &TMP$659$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$659$3 );
			NBBYTES$1 = NBBYTES$1 + 18446744073709551614ull;
			if( NBBYTES$1 <= 0ull ) goto label$541;
			{
				FBSTRING TMP$661$4;
				FBSTRING TMP$662$4;
				FBSTRING TMP$663$4;
				FBSTRING TMP$665$4;
				FBSTRING TMP$666$4;
				FBSTRING TMP$667$4;
				__builtin_memset( &TMP$663$4, 0, 24ll );
				__builtin_memset( &TMP$661$4, 0, 24ll );
				FBSTRING* vr$317 = fb_StrConcat( &TMP$661$4, (void*)"mov al, byte ptr 6[", 20ll, (void*)&REGSRC$1, -1ll );
				__builtin_memset( &TMP$662$4, 0, 24ll );
				FBSTRING* vr$320 = fb_StrConcat( &TMP$662$4, (void*)vr$317, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$663$4, -1ll, (void*)vr$320, -1ll, 0 );
				HWRITEASM64( &TMP$663$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$663$4 );
				__builtin_memset( &TMP$667$4, 0, 24ll );
				__builtin_memset( &TMP$665$4, 0, 24ll );
				FBSTRING* vr$328 = fb_StrConcat( &TMP$665$4, (void*)"mov byte ptr 6[", 16ll, (void*)&REGDST$1, -1ll );
				__builtin_memset( &TMP$666$4, 0, 24ll );
				FBSTRING* vr$331 = fb_StrConcat( &TMP$666$4, (void*)vr$328, -1ll, (void*)"], al", 6ll );
				fb_StrAssign( (void*)&TMP$667$4, -1ll, (void*)vr$331, -1ll, 0 );
				HWRITEASM64( &TMP$667$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$667$4 );
			}
			label$541:;
			label$540:;
		}
		goto label$538;
		label$539:;
		if( NBBYTES$1 <= 0ull ) goto label$542;
		{
			FBSTRING TMP$669$3;
			FBSTRING TMP$670$3;
			FBSTRING TMP$671$3;
			FBSTRING TMP$672$3;
			FBSTRING TMP$673$3;
			FBSTRING TMP$674$3;
			__builtin_memset( &TMP$671$3, 0, 24ll );
			__builtin_memset( &TMP$669$3, 0, 24ll );
			FBSTRING* vr$339 = fb_StrConcat( &TMP$669$3, (void*)"mov al, byte ptr 4[", 20ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$670$3, 0, 24ll );
			FBSTRING* vr$342 = fb_StrConcat( &TMP$670$3, (void*)vr$339, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$671$3, -1ll, (void*)vr$342, -1ll, 0 );
			HWRITEASM64( &TMP$671$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$671$3 );
			__builtin_memset( &TMP$674$3, 0, 24ll );
			__builtin_memset( &TMP$672$3, 0, 24ll );
			FBSTRING* vr$350 = fb_StrConcat( &TMP$672$3, (void*)"mov byte ptr 4[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$673$3, 0, 24ll );
			FBSTRING* vr$353 = fb_StrConcat( &TMP$673$3, (void*)vr$350, -1ll, (void*)"], al", 6ll );
			fb_StrAssign( (void*)&TMP$674$3, -1ll, (void*)vr$353, -1ll, 0 );
			HWRITEASM64( &TMP$674$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$674$3 );
		}
		label$542:;
		label$538:;
	}
	goto label$536;
	label$537:;
	if( NBBYTES$1 <= 1ull ) goto label$543;
	{
		FBSTRING TMP$676$2;
		FBSTRING TMP$677$2;
		FBSTRING TMP$678$2;
		FBSTRING TMP$679$2;
		FBSTRING TMP$680$2;
		FBSTRING TMP$681$2;
		__builtin_memset( &TMP$678$2, 0, 24ll );
		__builtin_memset( &TMP$676$2, 0, 24ll );
		FBSTRING* vr$361 = fb_StrConcat( &TMP$676$2, (void*)"mov ax, word ptr [", 19ll, (void*)&REGSRC$1, -1ll );
		__builtin_memset( &TMP$677$2, 0, 24ll );
		FBSTRING* vr$364 = fb_StrConcat( &TMP$677$2, (void*)vr$361, -1ll, (void*)"]", 2ll );
		fb_StrAssign( (void*)&TMP$678$2, -1ll, (void*)vr$364, -1ll, 0 );
		HWRITEASM64( &TMP$678$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$678$2 );
		__builtin_memset( &TMP$681$2, 0, 24ll );
		__builtin_memset( &TMP$679$2, 0, 24ll );
		FBSTRING* vr$372 = fb_StrConcat( &TMP$679$2, (void*)"mov word ptr [", 15ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$680$2, 0, 24ll );
		FBSTRING* vr$375 = fb_StrConcat( &TMP$680$2, (void*)vr$372, -1ll, (void*)"], ax", 6ll );
		fb_StrAssign( (void*)&TMP$681$2, -1ll, (void*)vr$375, -1ll, 0 );
		HWRITEASM64( &TMP$681$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$681$2 );
		NBBYTES$1 = NBBYTES$1 + 18446744073709551614ull;
		if( NBBYTES$1 <= 0ull ) goto label$545;
		{
			FBSTRING TMP$683$3;
			FBSTRING TMP$684$3;
			FBSTRING TMP$685$3;
			FBSTRING TMP$686$3;
			FBSTRING TMP$687$3;
			FBSTRING TMP$688$3;
			__builtin_memset( &TMP$685$3, 0, 24ll );
			__builtin_memset( &TMP$683$3, 0, 24ll );
			FBSTRING* vr$384 = fb_StrConcat( &TMP$683$3, (void*)"mov al, byte ptr 2[", 20ll, (void*)&REGSRC$1, -1ll );
			__builtin_memset( &TMP$684$3, 0, 24ll );
			FBSTRING* vr$387 = fb_StrConcat( &TMP$684$3, (void*)vr$384, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$685$3, -1ll, (void*)vr$387, -1ll, 0 );
			HWRITEASM64( &TMP$685$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$685$3 );
			__builtin_memset( &TMP$688$3, 0, 24ll );
			__builtin_memset( &TMP$686$3, 0, 24ll );
			FBSTRING* vr$395 = fb_StrConcat( &TMP$686$3, (void*)"mov byte ptr 2[", 16ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$687$3, 0, 24ll );
			FBSTRING* vr$398 = fb_StrConcat( &TMP$687$3, (void*)vr$395, -1ll, (void*)"], al", 6ll );
			fb_StrAssign( (void*)&TMP$688$3, -1ll, (void*)vr$398, -1ll, 0 );
			HWRITEASM64( &TMP$688$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$688$3 );
		}
		label$545:;
		label$544:;
	}
	goto label$536;
	label$543:;
	if( NBBYTES$1 <= 0ull ) goto label$546;
	{
		FBSTRING TMP$690$2;
		FBSTRING TMP$691$2;
		FBSTRING TMP$692$2;
		FBSTRING TMP$693$2;
		FBSTRING TMP$694$2;
		FBSTRING TMP$695$2;
		__builtin_memset( &TMP$692$2, 0, 24ll );
		__builtin_memset( &TMP$690$2, 0, 24ll );
		FBSTRING* vr$406 = fb_StrConcat( &TMP$690$2, (void*)"mov al, byte ptr [", 19ll, (void*)&REGSRC$1, -1ll );
		__builtin_memset( &TMP$691$2, 0, 24ll );
		FBSTRING* vr$409 = fb_StrConcat( &TMP$691$2, (void*)vr$406, -1ll, (void*)"]", 2ll );
		fb_StrAssign( (void*)&TMP$692$2, -1ll, (void*)vr$409, -1ll, 0 );
		HWRITEASM64( &TMP$692$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$692$2 );
		__builtin_memset( &TMP$695$2, 0, 24ll );
		__builtin_memset( &TMP$693$2, 0, 24ll );
		FBSTRING* vr$417 = fb_StrConcat( &TMP$693$2, (void*)"mov byte ptr [", 15ll, (void*)&REGDST$1, -1ll );
		__builtin_memset( &TMP$694$2, 0, 24ll );
		FBSTRING* vr$420 = fb_StrConcat( &TMP$694$2, (void*)vr$417, -1ll, (void*)"], al", 6ll );
		fb_StrAssign( (void*)&TMP$695$2, -1ll, (void*)vr$420, -1ll, 0 );
		HWRITEASM64( &TMP$695$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$695$2 );
	}
	label$546:;
	label$536:;
	int32 vr$425 = fb_StrCompare( (void*)&REGSRC$1, -1ll, (void*)SRC$1, -1ll );
	if( (int64)vr$425 == 0ll ) goto label$548;
	{
		*(int32*)((uint8*)REGHANDLE$ + ((int64)RSRC$1 << (2ll & 63ll))) = -2;
		label$548:;
	}
	int32 vr$430 = fb_StrCompare( (void*)&REGDST$1, -1ll, (void*)DST$1, -1ll );
	if( (int64)vr$430 == 0ll ) goto label$550;
	{
		*(int32*)((uint8*)REGHANDLE$ + ((int64)RDST$1 << (2ll & 63ll))) = -2;
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
	FLISTINIT( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll), 256ll, 16ll );
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 552ll) = *(int64*)((uint8*)&IR$ + 552ll) | 131840ll;
	label$552:;
}

static void _END( void )
{
	label$553:;
	IRHLEND(  );
	FLISTEND( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
	label$554:;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$555:;
	int64 IS_GLOBAL$1;
	int64 LENGTH$1;
	int64 LGT$1;
	FBSTRING STRG$1;
	__builtin_memset( &STRG$1, 0, 24ll );
	FBSTRING NEWSTRG$1;
	__builtin_memset( &NEWSTRG$1, 0, 24ll );
	int32 PNEW$1;
	__builtin_memset( &PNEW$1, 0, 4ll );
	int32 POLD$1;
	__builtin_memset( &POLD$1, 0, 4ll );
	int32 LENSTRG$1;
	__builtin_memset( &LENSTRG$1, 0, 4ll );
	int64 vr$5 = SYMBISARRAY( SYM$1 );
	if( vr$5 == 0ll ) goto label$558;
	{
	}
	label$558:;
	label$557:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1024ll) == 0ll ) goto label$560;
	{
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$562;
		{
			fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
			fb_StrDelete( (FBSTRING*)&STRG$1 );
			goto label$556;
		}
		label$562:;
		label$561:;
		{
			int64 TMP$696$3;
			TMP$696$3 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
			if( TMP$696$3 == 4ll ) goto label$565;
			label$566:;
			if( TMP$696$3 != 7ll ) goto label$564;
			label$565:;
			{
				FBSTRING TMP$698$4;
				FBSTRING TMP$700$4;
				FBSTRING TMP$704$4;
				FBSTRING TMP$705$4;
				__builtin_memset( &TMP$698$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$698$4, -1ll, (void*)".data", 6ll, 0 );
				ASM_SECTION( &TMP$698$4 );
				fb_StrDelete( (FBSTRING*)&TMP$698$4 );
				__builtin_memset( &TMP$700$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$700$4, -1ll, (void*)".align 8", 9ll, 0 );
				HWRITEASM64( &TMP$700$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$700$4 );
				if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) == 0ll ) goto label$568;
				{
					FBSTRING TMP$702$5;
					FBSTRING TMP$703$5;
					__builtin_memset( &TMP$703$5, 0, 24ll );
					uint8* vr$25 = SYMBGETMANGLEDNAME( SYM$1 );
					__builtin_memset( &TMP$702$5, 0, 24ll );
					FBSTRING* vr$28 = fb_StrConcat( &TMP$702$5, (void*)".globl ", 8ll, (void*)vr$25, 0ll );
					fb_StrAssign( (void*)&TMP$703$5, -1ll, (void*)vr$28, -1ll, 0 );
					HWRITEASM64( &TMP$703$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$703$5 );
				}
				label$568:;
				label$567:;
				__builtin_memset( &TMP$705$4, 0, 24ll );
				uint8* vr$33 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$704$4, 0, 24ll );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$704$4, (void*)vr$33, 0ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$705$4, -1ll, (void*)vr$36, -1ll, 0 );
				HWRITEASM64( &TMP$705$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$705$4 );
				if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 7ll ) goto label$570;
				{
					FBSTRING TMP$708$5;
					FBSTRING TMP$709$5;
					FBSTRING TMP$710$5;
					FBSTRING TMP$711$5;
					uint8* vr$43 = HESCAPEW( *(uint16**)((uint8*)SYM$1 + 96ll) );
					fb_StrAssign( (void*)&STRG$1, -1ll, (void*)vr$43, 0ll, 0 );
					__builtin_memset( &TMP$711$5, 0, 24ll );
					FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8ll );
					FBSTRING* vr$48 = fb_LEFT( (FBSTRING*)vr$47, *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) << (1ll & 63ll) );
					__builtin_memset( &TMP$708$5, 0, 24ll );
					FBSTRING* vr$52 = fb_StrConcat( &TMP$708$5, (void*)".ascii \x22", 9ll, (void*)&STRG$1, -1ll );
					__builtin_memset( &TMP$709$5, 0, 24ll );
					FBSTRING* vr$55 = fb_StrConcat( &TMP$709$5, (void*)vr$52, -1ll, (void*)vr$48, -1ll );
					__builtin_memset( &TMP$710$5, 0, 24ll );
					FBSTRING* vr$58 = fb_StrConcat( &TMP$710$5, (void*)vr$55, -1ll, (void*)"\x22", 2ll );
					fb_StrAssign( (void*)&TMP$711$5, -1ll, (void*)vr$58, -1ll, 0 );
					HWRITEASM64( &TMP$711$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$711$5 );
				}
				goto label$569;
				label$570:;
				{
					FBSTRING TMP$712$5;
					FBSTRING TMP$713$5;
					FBSTRING TMP$714$5;
					uint8* vr$63 = HESCAPE( (uint8*)*(uint8**)((uint8*)SYM$1 + 96ll) );
					fb_StrAssign( (void*)&STRG$1, -1ll, (void*)vr$63, 0ll, 0 );
					__builtin_memset( &TMP$714$5, 0, 24ll );
					__builtin_memset( &TMP$712$5, 0, 24ll );
					FBSTRING* vr$69 = fb_StrConcat( &TMP$712$5, (void*)".ascii \x22", 9ll, (void*)&STRG$1, -1ll );
					__builtin_memset( &TMP$713$5, 0, 24ll );
					FBSTRING* vr$72 = fb_StrConcat( &TMP$713$5, (void*)vr$69, -1ll, (void*)"\x5C" "0\x22", 4ll );
					fb_StrAssign( (void*)&TMP$714$5, -1ll, (void*)vr$72, -1ll, 0 );
					HWRITEASM64( &TMP$714$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$714$5 );
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
	if( ((int64)-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) != (struct $7ASTNODE*)0ull) & ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll))) == 0ll ) goto label$572;
	{
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$574;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) != 0ll ) goto label$576;
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
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$578;
	{
		fb_StrDelete( (FBSTRING*)&NEWSTRG$1 );
		fb_StrDelete( (FBSTRING*)&STRG$1 );
		goto label$556;
	}
	label$578:;
	label$577:;
	IS_GLOBAL$1 = *(int64*)((uint8*)SYM$1 + 8ll) & 59ll;
	if( IS_GLOBAL$1 == 0ll ) goto label$580;
	{
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 16ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) != 0ll)) == 0ll ) goto label$582;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16ll) == 0ll ) goto label$584;
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
			if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$586;
			{
				EDBGEMITGLOBALVAR_ASM64( SYM$1, 2ll );
				label$586:;
			}
		}
		label$581:;
	}
	goto label$579;
	label$580:;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$588;
		{
			LGT$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 736ll);
		}
		goto label$587;
		label$588:;
		{
			LGT$1 = *(int64*)((uint8*)SYM$1 + 80ll);
		}
		label$587:;
		{
			$12FB_SYMBCLASS TMP$715$3;
			TMP$715$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$715$3 == 1ll ) goto label$591;
			label$592:;
			if( TMP$715$3 != 12ll ) goto label$590;
			label$591:;
			{
				int64 NBELEMENTS$4;
				NBELEMENTS$4 = 1ll;
				{
					int64 I$5;
					I$5 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
					goto label$593;
					label$596:;
					{
						NBELEMENTS$4 = NBELEMENTS$4 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll)))) + 1ll);
					}
					label$594:;
					I$5 = I$5 + -1ll;
					label$593:;
					if( I$5 >= 0ll ) goto label$596;
					label$595:;
				}
				LENGTH$1 = LGT$1 * NBELEMENTS$4;
				if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll ) goto label$598;
				{
					*(int64*)((uint8*)&CTX$ + 192ll) = (((LENGTH$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) + 192ll)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) + 192ll) + -1ll);
				}
				goto label$597;
				label$598:;
				{
					*(int64*)((uint8*)&CTX$ + 192ll) = (((LENGTH$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + LGT$1) + -1ll) & ~(LGT$1 + -1ll);
				}
				label$597:;
				*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
			}
			label$590:;
			label$589:;
		}
		if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$600;
		{
			EDBGEMITLOCALVAR_ASM64( SYM$1, (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll) );
			label$600:;
		}
	}
	label$579:;
	if( IS_GLOBAL$1 == 0ll ) goto label$602;
	{
		FBSTRING TMP$717$2;
		*(int64*)((uint8*)&CTX$ + 8ll) = 2ll;
		__builtin_memset( &TMP$717$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$717$2, -1ll, (void*)".bss", 5ll, 0 );
		ASM_SECTION( &TMP$717$2 );
		fb_StrDelete( (FBSTRING*)&TMP$717$2 );
		int64 SIZE$2;
		__builtin_memset( &SIZE$2, 0, 8ll );
		int64 ALIGN$2;
		__builtin_memset( &ALIGN$2, 0, 8ll );
		int64 NBELEMENTS$2;
		__builtin_memset( &NBELEMENTS$2, 0, 8ll );
		NBELEMENTS$2 = 1ll;
		{
			int64 I$3;
			I$3 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
			goto label$603;
			label$606:;
			{
				NBELEMENTS$2 = NBELEMENTS$2 * ((*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$3 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$3 << (4ll & 63ll)))) + 1ll);
			}
			label$604:;
			I$3 = I$3 + -1ll;
			label$603:;
			if( I$3 >= 0ll ) goto label$606;
			label$605:;
		}
		LENGTH$1 = *(int64*)((uint8*)SYM$1 + 80ll) * NBELEMENTS$2;
		if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll ) goto label$608;
		{
			ALIGN$2 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) + 192ll);
		}
		goto label$607;
		label$608:;
		{
			ALIGN$2 = *(int64*)((uint8*)SYM$1 + 80ll);
		}
		label$607:;
		int64 vr$179 = PW2( ALIGN$2 );
		ALIGN$2 = vr$179;
		if( ALIGN$2 <= 8ll ) goto label$610;
		{
			ALIGN$2 = 8ll;
			label$610:;
		}
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 8ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) != 0ll)) == 0ll ) goto label$612;
		{
			FBSTRING TMP$719$3;
			FBSTRING TMP$720$3;
			FBSTRING TMP$721$3;
			FBSTRING TMP$722$3;
			FBSTRING TMP$723$3;
			FBSTRING TMP$724$3;
			__builtin_memset( &TMP$724$3, 0, 24ll );
			FBSTRING* vr$188 = fb_LongintToStr( ALIGN$2 );
			FBSTRING* vr$189 = fb_LongintToStr( LENGTH$1 );
			uint8* vr$190 = SYMBGETMANGLEDNAME( SYM$1 );
			__builtin_memset( &TMP$719$3, 0, 24ll );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$719$3, (void*)".comm ", 7ll, (void*)vr$190, 0ll );
			__builtin_memset( &TMP$720$3, 0, 24ll );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$720$3, (void*)vr$193, -1ll, (void*)",", 2ll );
			__builtin_memset( &TMP$721$3, 0, 24ll );
			FBSTRING* vr$199 = fb_StrConcat( &TMP$721$3, (void*)vr$196, -1ll, (void*)vr$189, -1ll );
			__builtin_memset( &TMP$722$3, 0, 24ll );
			FBSTRING* vr$202 = fb_StrConcat( &TMP$722$3, (void*)vr$199, -1ll, (void*)",", 2ll );
			__builtin_memset( &TMP$723$3, 0, 24ll );
			FBSTRING* vr$205 = fb_StrConcat( &TMP$723$3, (void*)vr$202, -1ll, (void*)vr$188, -1ll );
			fb_StrAssign( (void*)&TMP$724$3, -1ll, (void*)vr$205, -1ll, 0 );
			HWRITEASM64( &TMP$724$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$724$3 );
		}
		goto label$611;
		label$612:;
		{
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$614;
			{
				FBSTRING TMP$726$4;
				FBSTRING TMP$727$4;
				FBSTRING TMP$728$4;
				FBSTRING TMP$729$4;
				FBSTRING TMP$730$4;
				FBSTRING TMP$731$4;
				FBSTRING TMP$732$4;
				FBSTRING TMP$733$4;
				__builtin_memset( &TMP$727$4, 0, 24ll );
				uint8* vr$210 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$726$4, 0, 24ll );
				FBSTRING* vr$213 = fb_StrConcat( &TMP$726$4, (void*)".local ", 8ll, (void*)vr$210, 0ll );
				fb_StrAssign( (void*)&TMP$727$4, -1ll, (void*)vr$213, -1ll, 0 );
				HWRITEASM64( &TMP$727$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$727$4 );
				__builtin_memset( &TMP$733$4, 0, 24ll );
				FBSTRING* vr$218 = fb_LongintToStr( ALIGN$2 );
				FBSTRING* vr$219 = fb_LongintToStr( LENGTH$1 );
				uint8* vr$220 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$728$4, 0, 24ll );
				FBSTRING* vr$223 = fb_StrConcat( &TMP$728$4, (void*)".comm ", 7ll, (void*)vr$220, 0ll );
				__builtin_memset( &TMP$729$4, 0, 24ll );
				FBSTRING* vr$226 = fb_StrConcat( &TMP$729$4, (void*)vr$223, -1ll, (void*)",", 2ll );
				__builtin_memset( &TMP$730$4, 0, 24ll );
				FBSTRING* vr$229 = fb_StrConcat( &TMP$730$4, (void*)vr$226, -1ll, (void*)vr$219, -1ll );
				__builtin_memset( &TMP$731$4, 0, 24ll );
				FBSTRING* vr$232 = fb_StrConcat( &TMP$731$4, (void*)vr$229, -1ll, (void*)",", 2ll );
				__builtin_memset( &TMP$732$4, 0, 24ll );
				FBSTRING* vr$235 = fb_StrConcat( &TMP$732$4, (void*)vr$232, -1ll, (void*)vr$218, -1ll );
				fb_StrAssign( (void*)&TMP$733$4, -1ll, (void*)vr$235, -1ll, 0 );
				HWRITEASM64( &TMP$733$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$733$4 );
			}
			goto label$613;
			label$614:;
			{
				FBSTRING TMP$735$4;
				FBSTRING TMP$736$4;
				FBSTRING TMP$737$4;
				FBSTRING TMP$738$4;
				FBSTRING TMP$739$4;
				FBSTRING TMP$740$4;
				__builtin_memset( &TMP$740$4, 0, 24ll );
				FBSTRING* vr$240 = fb_LongintToStr( ALIGN$2 );
				FBSTRING* vr$241 = fb_LongintToStr( LENGTH$1 );
				uint8* vr$242 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$735$4, 0, 24ll );
				FBSTRING* vr$245 = fb_StrConcat( &TMP$735$4, (void*)".lcomm ", 8ll, (void*)vr$242, 0ll );
				__builtin_memset( &TMP$736$4, 0, 24ll );
				FBSTRING* vr$248 = fb_StrConcat( &TMP$736$4, (void*)vr$245, -1ll, (void*)",", 2ll );
				__builtin_memset( &TMP$737$4, 0, 24ll );
				FBSTRING* vr$251 = fb_StrConcat( &TMP$737$4, (void*)vr$248, -1ll, (void*)vr$241, -1ll );
				__builtin_memset( &TMP$738$4, 0, 24ll );
				FBSTRING* vr$254 = fb_StrConcat( &TMP$738$4, (void*)vr$251, -1ll, (void*)",", 2ll );
				__builtin_memset( &TMP$739$4, 0, 24ll );
				FBSTRING* vr$257 = fb_StrConcat( &TMP$739$4, (void*)vr$254, -1ll, (void*)vr$240, -1ll );
				fb_StrAssign( (void*)&TMP$740$4, -1ll, (void*)vr$257, -1ll, 0 );
				HWRITEASM64( &TMP$740$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$740$4 );
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
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	int64 vr$1 = SYMBISDATADESC( SYM$1 );
	if( vr$1 != 0ll ) goto label$618;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$618:;
	label$617:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	label$616:;
}

static void NO_ROUNDSD( uint8* SIZE$1 )
{
	FBSTRING TMP$742$1;
	FBSTRING TMP$744$1;
	FBSTRING TMP$746$1;
	FBSTRING TMP$748$1;
	FBSTRING TMP$751$1;
	FBSTRING TMP$752$1;
	FBSTRING TMP$753$1;
	FBSTRING TMP$755$1;
	FBSTRING TMP$756$1;
	label$619:;
	__builtin_memset( &TMP$742$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$742$1, -1ll, (void*)"stmxcsr $mxcsr[rip]", 20ll, 0 );
	HWRITEASM64( &TMP$742$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$742$1 );
	__builtin_memset( &TMP$744$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$744$1, -1ll, (void*)"push $mxcsr[rip]", 17ll, 0 );
	HWRITEASM64( &TMP$744$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$744$1 );
	__builtin_memset( &TMP$746$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$746$1, -1ll, (void*)"and dword ptr $mxcsr[rip], 0xFFFF9FFF", 38ll, 0 );
	HWRITEASM64( &TMP$746$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$746$1 );
	__builtin_memset( &TMP$748$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$748$1, -1ll, (void*)"ldmxcsr $mxcsr[rip]", 20ll, 0 );
	HWRITEASM64( &TMP$748$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$748$1 );
	__builtin_memset( &TMP$753$1, 0, 24ll );
	__builtin_memset( &TMP$751$1, 0, 24ll );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$751$1, (void*)"cvts", 5ll, (void*)SIZE$1, 0ll );
	__builtin_memset( &TMP$752$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$752$1, (void*)vr$19, -1ll, (void*)"2si rax, xmm0", 14ll );
	fb_StrAssign( (void*)&TMP$753$1, -1ll, (void*)vr$22, -1ll, 0 );
	HWRITEASM64( &TMP$753$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$753$1 );
	__builtin_memset( &TMP$755$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$755$1, -1ll, (void*)"pop $mxcsr[rip]", 16ll, 0 );
	HWRITEASM64( &TMP$755$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$755$1 );
	__builtin_memset( &TMP$756$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$756$1, -1ll, (void*)"ldmxcsr $mxcsr[rip]", 20ll, 0 );
	HWRITEASM64( &TMP$756$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$756$1 );
	label$620:;
}

static int64 _EMITBEGIN( void )
{
	FBSTRING TMP$758$1;
	FBSTRING TMP$760$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$621:;
	int64 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 856ll) );
	if( vr$2 == 0ll ) goto label$624;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$624:;
	label$623:;
	int32 vr$5 = fb_FileFree(  );
	*(int64*)((uint8*)&ENV$ + 848ll) = (int64)vr$5;
	FBSTRING* vr$9 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
	int32 vr$10 = fb_FileOpen( (FBSTRING*)vr$9, 0u, 3u, 0u, (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0 );
	if( (int64)vr$10 == 0ll ) goto label$626;
	{
		fb$result$1 = 0ll;
		goto label$622;
	}
	label$626:;
	label$625:;
	*(int64*)&CTX$ = 0ll;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 40ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 64ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 8ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 240ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 248ll) = 0ll;
	*(boolean*)((uint8*)&CTX$ + 256ll) = (boolean)0ll;
	int64 vr$15 = FBGETOPTION( 3ll );
	*($13FB_COMPTARGET*)((uint8*)&CTX$ + 408ll) = vr$15;
	*(int64*)((uint8*)&CTX$ + 416ll) = 0ll;
	{
		int64 IREG$2;
		IREG$2 = 0ll;
		label$630:;
		{
			*(int32*)((uint8*)REGHANDLE$ + (IREG$2 << (2ll & 63ll))) = -2;
			*(int32*)((uint8*)REGROOM$ + (IREG$2 << (4ll & 63ll))) = -1;
			*(struct $14ASM64_SAVEDREG**)(((uint8*)REGROOM$ + (IREG$2 << (4ll & 63ll))) + 8ll) = (struct $14ASM64_SAVEDREG*)0ull;
		}
		label$628:;
		IREG$2 = IREG$2 + 1ll;
		label$627:;
		if( IREG$2 <= 15ll ) goto label$630;
		label$629:;
	}
	*(int32*)((uint8*)REGHANDLE$ + 24ll) = -3;
	*(int32*)((uint8*)REGHANDLE$ + 28ll) = -3;
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$632;
	{
		int32 vr$20 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4ull, -1, 0, 1ull, 1ll, 8ll );
		if( (int64)vr$20 == 0ll ) goto label$633;
		void* vr$22 = fb_ErrorThrowAt( 2110, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
		goto *vr$22;
		label$633:;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 4ll) = 5;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 8ll) = 4;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 12ll) = 3;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 16ll) = 2;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 20ll) = 8;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 24ll) = 9;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 28ll) = 10;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 32ll) = 11;
	}
	goto label$631;
	label$632:;
	{
		int32 vr$23 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&LISTREG$, 4ull, -1, 0, 1ull, 1ll, 6ll );
		if( (int64)vr$23 == 0ll ) goto label$634;
		void* vr$25 = fb_ErrorThrowAt( 2113, (uint8*)"src/compiler/ir-gas64.bas", (void*)0ull, (void*)0ull );
		goto *vr$25;
		label$634:;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 4ll) = 2;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 8ll) = 3;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 12ll) = 8;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 16ll) = 9;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 20ll) = 10;
		*(int32*)((uint8*)*(int64*)&LISTREG$ + 24ll) = 11;
	}
	label$631:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$636;
	{
		EDBGEMITHEADER_ASM64( (uint8*)((uint8*)&ENV$ + 560ll) );
		label$636:;
	}
	__builtin_memset( &TMP$758$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$758$1, -1ll, (void*)".intel_syntax noprefix", 23ll, 0 );
	HWRITEASM64( &TMP$758$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$758$1 );
	__builtin_memset( &TMP$760$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$760$1, -1ll, (void*)".text", 6ll, 0 );
	ASM_SECTION( &TMP$760$1 );
	fb_StrDelete( (FBSTRING*)&TMP$760$1 );
	fb$result$1 = -1ll;
	label$622:;
	return fb$result$1;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$637:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 16384ll) == 0ll ) goto label$640;
	{
		goto label$638;
	}
	label$640:;
	label$639:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 65536ll) == 0ll ) goto label$642;
	{
		if( (*(int64*)((uint8*)PROC$1 + 24ll) & 16777216ll) == 0ll ) goto label$644;
		{
			int64 TMP$761$3;
			FBSTRING TMP$766$3;
			FBSTRING TMP$767$3;
			FBSTRING TMP$768$3;
			FBSTRING TMP$769$3;
			*(int64*)((uint8*)&CTX$ + 240ll) = *(int64*)((uint8*)&CTX$ + 240ll) + 1ll;
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$645;
			int64 vr$7 = FBGETOPTION( 0ll );
			TMP$761$3 = (int64)-(vr$7 == 2ll);
			goto label$2988;
			label$645:;
			TMP$761$3 = 0ll;
			label$2988:;
			if( TMP$761$3 == 0ll ) goto label$647;
			{
				FBSTRING TMP$763$4;
				__builtin_memset( &TMP$763$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$763$4, -1ll, (void*)".init_array", 12ll, 0 );
				ASM_SECTION( &TMP$763$4 );
				fb_StrDelete( (FBSTRING*)&TMP$763$4 );
			}
			goto label$646;
			label$647:;
			{
				FBSTRING TMP$765$4;
				__builtin_memset( &TMP$765$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$765$4, -1ll, (void*)".ctors", 7ll, 0 );
				ASM_SECTION( &TMP$765$4 );
				fb_StrDelete( (FBSTRING*)&TMP$765$4 );
			}
			label$646:;
			__builtin_memset( &TMP$766$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$766$3, -1ll, (void*)".align 8", 9ll, 0 );
			HWRITEASM64( &TMP$766$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$766$3 );
			__builtin_memset( &TMP$768$3, 0, 24ll );
			uint8* vr$22 = SYMBGETMANGLEDNAME( PROC$1 );
			__builtin_memset( &TMP$767$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$767$3, (void*)".quad ", 7ll, (void*)vr$22, 0ll );
			fb_StrAssign( (void*)&TMP$768$3, -1ll, (void*)vr$25, -1ll, 0 );
			HWRITEASM64( &TMP$768$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$768$3 );
			__builtin_memset( &TMP$769$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$769$3, -1ll, (void*)".text", 6ll, 0 );
			ASM_SECTION( &TMP$769$3 );
			fb_StrDelete( (FBSTRING*)&TMP$769$3 );
		}
		label$644:;
		label$643:;
	}
	goto label$641;
	label$642:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 131072ll) == 0ll ) goto label$648;
	{
		int64 TMP$770$2;
		FBSTRING TMP$775$2;
		FBSTRING TMP$776$2;
		FBSTRING TMP$777$2;
		FBSTRING TMP$778$2;
		*(int64*)((uint8*)&CTX$ + 248ll) = *(int64*)((uint8*)&CTX$ + 248ll) + 1ll;
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$649;
		int64 vr$36 = FBGETOPTION( 0ll );
		TMP$770$2 = (int64)-(vr$36 == 2ll);
		goto label$2989;
		label$649:;
		TMP$770$2 = 0ll;
		label$2989:;
		if( TMP$770$2 == 0ll ) goto label$651;
		{
			FBSTRING TMP$772$3;
			__builtin_memset( &TMP$772$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$772$3, -1ll, (void*)".fini_array", 12ll, 0 );
			ASM_SECTION( &TMP$772$3 );
			fb_StrDelete( (FBSTRING*)&TMP$772$3 );
		}
		goto label$650;
		label$651:;
		{
			FBSTRING TMP$774$3;
			__builtin_memset( &TMP$774$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$774$3, -1ll, (void*)".dtors", 7ll, 0 );
			ASM_SECTION( &TMP$774$3 );
			fb_StrDelete( (FBSTRING*)&TMP$774$3 );
		}
		label$650:;
		__builtin_memset( &TMP$775$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$775$2, -1ll, (void*)".align 8", 9ll, 0 );
		HWRITEASM64( &TMP$775$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$775$2 );
		__builtin_memset( &TMP$777$2, 0, 24ll );
		uint8* vr$51 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$776$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$776$2, (void*)".quad ", 7ll, (void*)vr$51, 0ll );
		fb_StrAssign( (void*)&TMP$777$2, -1ll, (void*)vr$54, -1ll, 0 );
		HWRITEASM64( &TMP$777$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$777$2 );
		__builtin_memset( &TMP$778$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$778$2, -1ll, (void*)".text", 6ll, 0 );
		ASM_SECTION( &TMP$778$2 );
		fb_StrDelete( (FBSTRING*)&TMP$778$2 );
	}
	label$648:;
	label$641:;
	label$638:;
}

static void _EMITEND( void )
{
	label$652:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	*(int64*)((uint8*)&CTX$ + 8ll) = 2ll;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	SYMBFOREACHGLOBAL( 1ll, (tmp$42)&HMAYBEEMITGLOBALVAR );
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	IRFOREACHDATASTMT( (tmp$42)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3ll, (tmp$42)&HADDGLOBALCTORDTOR );
	if( (int64)-(*(boolean*)((uint8*)&CTX$ + 256ll)) != -1ll ) goto label$655;
	{
		FBSTRING TMP$779$2;
		int64 TMP$792$2;
		FBSTRING TMP$795$2;
		FBSTRING TMP$797$2;
		FBSTRING TMP$798$2;
		FBSTRING TMP$800$2;
		FBSTRING TMP$802$2;
		FBSTRING TMP$804$2;
		FBSTRING TMP$806$2;
		FBSTRING TMP$808$2;
		FBSTRING TMP$810$2;
		FBSTRING TMP$812$2;
		FBSTRING TMP$814$2;
		FBSTRING TMP$816$2;
		FBSTRING TMP$818$2;
		FBSTRING TMP$820$2;
		FBSTRING TMP$822$2;
		__builtin_memset( &TMP$779$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$779$2, -1ll, (void*)".bss", 5ll, 0 );
		ASM_SECTION( &TMP$779$2 );
		fb_StrDelete( (FBSTRING*)&TMP$779$2 );
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$657;
		{
			FBSTRING TMP$781$3;
			FBSTRING TMP$783$3;
			FBSTRING TMP$785$3;
			FBSTRING TMP$787$3;
			__builtin_memset( &TMP$781$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$781$3, -1ll, (void*)".local $mxcsr", 14ll, 0 );
			HWRITEASM64( &TMP$781$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$781$3 );
			__builtin_memset( &TMP$783$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$783$3, -1ll, (void*)".comm $mxcsr,8,8", 17ll, 0 );
			HWRITEASM64( &TMP$783$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$783$3 );
			__builtin_memset( &TMP$785$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$785$3, -1ll, (void*)".local $sse41", 14ll, 0 );
			HWRITEASM64( &TMP$785$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$785$3 );
			__builtin_memset( &TMP$787$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$787$3, -1ll, (void*)".comm $sse41,4,8", 17ll, 0 );
			HWRITEASM64( &TMP$787$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$787$3 );
		}
		goto label$656;
		label$657:;
		{
			FBSTRING TMP$789$3;
			FBSTRING TMP$791$3;
			__builtin_memset( &TMP$789$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$789$3, -1ll, (void*)".lcomm $mxcsr,8,8", 18ll, 0 );
			HWRITEASM64( &TMP$789$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$789$3 );
			__builtin_memset( &TMP$791$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$791$3, -1ll, (void*)".lcomm $sse41,4,8", 18ll, 0 );
			HWRITEASM64( &TMP$791$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$791$3 );
		}
		label$656:;
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$658;
		int64 vr$32 = FBGETOPTION( 0ll );
		TMP$792$2 = (int64)-(vr$32 == 2ll);
		goto label$2990;
		label$658:;
		TMP$792$2 = 0ll;
		label$2990:;
		if( TMP$792$2 == 0ll ) goto label$660;
		{
			FBSTRING TMP$793$3;
			__builtin_memset( &TMP$793$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$793$3, -1ll, (void*)".init_array", 12ll, 0 );
			ASM_SECTION( &TMP$793$3 );
			fb_StrDelete( (FBSTRING*)&TMP$793$3 );
		}
		goto label$659;
		label$660:;
		{
			FBSTRING TMP$794$3;
			__builtin_memset( &TMP$794$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$794$3, -1ll, (void*)".ctors", 7ll, 0 );
			ASM_SECTION( &TMP$794$3 );
			fb_StrDelete( (FBSTRING*)&TMP$794$3 );
		}
		label$659:;
		__builtin_memset( &TMP$795$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$795$2, -1ll, (void*)".align 8", 9ll, 0 );
		HWRITEASM64( &TMP$795$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$795$2 );
		__builtin_memset( &TMP$797$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$797$2, -1ll, (void*)".quad $sse41_test", 18ll, 0 );
		HWRITEASM64( &TMP$797$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$797$2 );
		__builtin_memset( &TMP$798$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$798$2, -1ll, (void*)".text", 6ll, 0 );
		ASM_SECTION( &TMP$798$2 );
		fb_StrDelete( (FBSTRING*)&TMP$798$2 );
		__builtin_memset( &TMP$800$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$800$2, -1ll, (void*)"$sse41_test:", 13ll, 0 );
		HWRITEASM64( &TMP$800$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$800$2 );
		__builtin_memset( &TMP$802$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$802$2, -1ll, (void*)"push rbx", 9ll, 0 );
		HWRITEASM64( &TMP$802$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$802$2 );
		__builtin_memset( &TMP$804$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$804$2, -1ll, (void*)"push rcx", 9ll, 0 );
		HWRITEASM64( &TMP$804$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$804$2 );
		__builtin_memset( &TMP$806$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$806$2, -1ll, (void*)"push rdx", 9ll, 0 );
		HWRITEASM64( &TMP$806$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$806$2 );
		__builtin_memset( &TMP$808$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$808$2, -1ll, (void*)"mov  eax, 1", 12ll, 0 );
		HWRITEASM64( &TMP$808$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$808$2 );
		__builtin_memset( &TMP$810$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$810$2, -1ll, (void*)"cpuid", 6ll, 0 );
		HWRITEASM64( &TMP$810$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$810$2 );
		__builtin_memset( &TMP$812$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$812$2, -1ll, (void*)"and ecx, 0b10000000000000000000", 32ll, 0 );
		HWRITEASM64( &TMP$812$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$812$2 );
		__builtin_memset( &TMP$814$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$814$2, -1ll, (void*)"mov $sse41[rip], ecx", 21ll, 0 );
		HWRITEASM64( &TMP$814$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$814$2 );
		__builtin_memset( &TMP$816$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$816$2, -1ll, (void*)"pop rdx", 8ll, 0 );
		HWRITEASM64( &TMP$816$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$816$2 );
		__builtin_memset( &TMP$818$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$818$2, -1ll, (void*)"pop rcx", 8ll, 0 );
		HWRITEASM64( &TMP$818$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$818$2 );
		__builtin_memset( &TMP$820$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$820$2, -1ll, (void*)"pop rbx", 8ll, 0 );
		HWRITEASM64( &TMP$820$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$820$2 );
		__builtin_memset( &TMP$822$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$822$2, -1ll, (void*)"ret", 4ll, 0 );
		HWRITEASM64( &TMP$822$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$822$2 );
	}
	label$655:;
	label$654:;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$662;
	{
		FBSTRING TMP$823$2;
		FBSTRING TMP$824$2;
		FBSTRING TMP$825$2;
		FBSTRING TMP$826$2;
		FBSTRING LNAME$2;
		uint8* vr$102 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1ll, (void*)vr$102, 0ll, 0 );
		__builtin_memset( &TMP$823$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$823$2, -1ll, (void*)"", 1ll, 0 );
		DBG_ADDSTAB( &TMP$823$2, (uint8)100u, (int16)0, &LNAME$2 );
		fb_StrDelete( (FBSTRING*)&TMP$823$2 );
		__builtin_memset( &TMP$824$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$824$2, -1ll, (void*)".text", 6ll, 0 );
		HWRITEASM64( &TMP$824$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$824$2 );
		__builtin_memset( &TMP$826$2, 0, 24ll );
		__builtin_memset( &TMP$825$2, 0, 24ll );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$825$2, (void*)&LNAME$2, -1ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$826$2, -1ll, (void*)vr$117, -1ll, 0 );
		HWRITEASM64( &TMP$826$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$826$2 );
		DBG_EMITSTAB(  );
		DBG_EMITSTR(  );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$662:;
	label$661:;
	int32 vr$124 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 16ll), -1ll );
	if( (int64)vr$124 == 0ll ) goto label$664;
	{
	}
	label$664:;
	label$663:;
	int32 vr$128 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 40ll), -1ll );
	if( (int64)vr$128 == 0ll ) goto label$666;
	{
	}
	label$666:;
	label$665:;
	int32 vr$132 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 64ll), -1ll );
	if( (int64)vr$132 == 0ll ) goto label$668;
	{
	}
	label$668:;
	label$667:;
	int32 vr$135 = fb_FileClose( (int32)*(int64*)((uint8*)&ENV$ + 848ll) );
	if( (int64)vr$135 == 0ll ) goto label$670;
	{
	}
	label$670:;
	label$669:;
	*(int64*)((uint8*)&ENV$ + 848ll) = 0ll;
	label$653:;
}

static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$671:;
	{
		if( OPT$1 != 1ll ) goto label$674;
		label$675:;
		{
			fb$result$1 = 0ll;
			goto label$672;
		}
		goto label$673;
		label$674:;
		{
			ERRREPORTEX( 21ll, (uint8*)"_GETOPTIONVALUE", 0ll, 1ll, (uint8*)0ull );
		}
		label$676:;
		label$673:;
	}
	label$672:;
	return fb$result$1;
}

static int64 _SUPPORTSOP( int64 OP$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$677:;
	{
		uint64 TMP$828$2;
		TMP$828$2 = (uint64)OP$1;
		goto label$680;
		label$681:;
		{
			fb$result$1 = 0ll;
			goto label$678;
		}
		goto label$679;
		label$682:;
		{
			fb$result$1 = -1ll;
			goto label$678;
		}
		goto label$679;
		label$683:;
		{
			fb$result$1 = -1ll;
		}
		goto label$679;
		label$680:;
		static const void* tmp$3849[16ll] = {
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
		if( (TMP$828$2 - 52ull) > 15ull ) goto label$683;
		goto *tmp$3849[TMP$828$2 - 52ull];
		label$679:;
	}
	label$678:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$684:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8552ll);
	label$685:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$686:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 40ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426496ll) + 8552ll);
	label$687:;
}

static int64 PARAM_ANALYZE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* STRUC$1, int64* CPTARG$1, int64* CPTINT$1, int64* CPTFLOAT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$688:;
	struct $8FBSYMBOL* FLD$1;
	int64 LGT$1;
	__builtin_memset( &LGT$1, 0, 8ll );
	int64 INTCPT$1;
	__builtin_memset( &INTCPT$1, 0, 8ll );
	int64 FLOATCPT$1;
	__builtin_memset( &FLOATCPT$1, 0, 8ll );
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$691;
	{
		if( DTYPE$1 == 20ll ) goto label$693;
		{
			int64 TMP$829$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$694;
			TMP$829$3 = 24ll;
			goto label$2991;
			label$694:;
			TMP$829$3 = DTYPE$1 & 31ll;
			label$2991:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$829$3 * 56ll)) != 1ll ) goto label$696;
			{
				if( *CPTFLOAT$1 >= 8ll ) goto label$698;
				{
					*CPTFLOAT$1 = *CPTFLOAT$1 + 1ll;
					fb$result$1 = 1ll;
					goto label$689;
				}
				goto label$697;
				label$698:;
				{
					*CPTARG$1 = *CPTARG$1 + 1ll;
					fb$result$1 = 10ll;
					goto label$689;
				}
				label$697:;
			}
			goto label$695;
			label$696:;
			{
				if( *CPTINT$1 >= 6ll ) goto label$700;
				{
					*CPTINT$1 = *CPTINT$1 + 1ll;
					fb$result$1 = 0ll;
					goto label$689;
				}
				goto label$699;
				label$700:;
				{
					*CPTARG$1 = *CPTARG$1 + 1ll;
					fb$result$1 = 10ll;
					goto label$689;
				}
				label$699:;
			}
			label$695:;
		}
		goto label$692;
		label$693:;
		{
			LGT$1 = *(int64*)((uint8*)STRUC$1 + 80ll);
			if( LGT$1 > (*(int64*)((uint8*)SYMB_DTYPETB$ + 736ll) << (1ll & 63ll)) ) goto label$702;
			{
				{
					uint64 TMP$830$5;
					int64 vr$23 = HGETMAGICSTRUCTNUMBER( STRUC$1 );
					TMP$830$5 = (uint64)vr$23;
					goto label$704;
					label$705:;
					{
						if( *CPTINT$1 >= 6ll ) goto label$707;
						{
							*CPTINT$1 = *CPTINT$1 + 1ll;
							fb$result$1 = 0ll;
							goto label$689;
						}
						label$707:;
						label$706:;
					}
					goto label$703;
					label$708:;
					{
						if( *CPTFLOAT$1 >= 8ll ) goto label$710;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1ll;
							fb$result$1 = 1ll;
							goto label$689;
						}
						label$710:;
						label$709:;
					}
					goto label$703;
					label$711:;
					{
						if( *CPTINT$1 >= 5ll ) goto label$713;
						{
							*CPTINT$1 = *CPTINT$1 + 2ll;
							fb$result$1 = 2ll;
							goto label$689;
						}
						label$713:;
						label$712:;
					}
					goto label$703;
					label$714:;
					{
						if( ((int64)-(*CPTINT$1 < 6ll) & (int64)-(*CPTFLOAT$1 < 8ll)) == 0ll ) goto label$716;
						{
							*CPTINT$1 = *CPTINT$1 + 1ll;
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1ll;
							fb$result$1 = 3ll;
							goto label$689;
						}
						label$716:;
						label$715:;
					}
					goto label$703;
					label$717:;
					{
						if( ((int64)-(*CPTINT$1 < 6ll) & (int64)-(*CPTFLOAT$1 < 8ll)) == 0ll ) goto label$719;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 1ll;
							*CPTINT$1 = *CPTINT$1 + 1ll;
							fb$result$1 = 4ll;
							goto label$689;
						}
						label$719:;
						label$718:;
					}
					goto label$703;
					label$720:;
					{
						if( *CPTFLOAT$1 >= 7ll ) goto label$722;
						{
							*CPTFLOAT$1 = *CPTFLOAT$1 + 2ll;
							fb$result$1 = 5ll;
							goto label$689;
						}
						label$722:;
						label$721:;
					}
					goto label$703;
					label$704:;
					static const void* tmp$3850[10ll] = {
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
					if( (TMP$830$5 - 1ull) > 9ull ) goto label$703;
					goto *tmp$3850[TMP$830$5 - 1ull];
					label$703:;
				}
			}
			label$702:;
			label$701:;
			fb$result$1 = 10ll;
			goto label$689;
		}
		label$692:;
	}
	goto label$690;
	label$691:;
	{
		*CPTARG$1 = *CPTARG$1 + 1ll;
		*CPTINT$1 = *CPTARG$1;
		*CPTFLOAT$1 = *CPTARG$1;
		if( DTYPE$1 == 20ll ) goto label$724;
		{
			int64 TMP$831$3;
			if( *CPTARG$1 <= 4ll ) goto label$726;
			{
				fb$result$1 = 10ll;
				goto label$689;
				label$726:;
			}
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$727;
			TMP$831$3 = 24ll;
			goto label$2992;
			label$727:;
			TMP$831$3 = DTYPE$1 & 31ll;
			label$2992:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$831$3 * 56ll)) != 1ll ) goto label$729;
			{
				fb$result$1 = 1ll;
				goto label$689;
			}
			goto label$728;
			label$729:;
			{
				fb$result$1 = 0ll;
				goto label$689;
			}
			label$728:;
		}
		goto label$723;
		label$724:;
		{
			LGT$1 = *(int64*)((uint8*)STRUC$1 + 80ll);
			if( (((((int64)-(LGT$1 > *(int64*)((uint8*)SYMB_DTYPETB$ + 736ll)) | (int64)-(LGT$1 == 3ll)) | (int64)-(LGT$1 == 5ll)) | (int64)-(LGT$1 == 6ll)) | (int64)-(LGT$1 == 7ll)) == 0ll ) goto label$731;
			{
				if( *CPTARG$1 <= 4ll ) goto label$733;
				{
					fb$result$1 = 13ll;
					goto label$689;
				}
				goto label$732;
				label$733:;
				{
					fb$result$1 = 12ll;
					goto label$689;
				}
				label$732:;
			}
			label$731:;
			label$730:;
			struct $8FBSYMBOL* vr$84 = SYMBUDTGETFIRSTFIELD( STRUC$1 );
			FLD$1 = vr$84;
			label$734:;
			if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$735;
			{
				int64 TMP$832$4;
				if( (*(int64*)((uint8*)FLD$1 + 56ll) & 480ll) == 0ll ) goto label$736;
				TMP$832$4 = 24ll;
				goto label$2993;
				label$736:;
				TMP$832$4 = *(int64*)((uint8*)FLD$1 + 56ll) & 31ll;
				label$2993:;
				if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$832$4 * 56ll)) != 1ll ) goto label$738;
				{
					FLOATCPT$1 = FLOATCPT$1 + 1ll;
				}
				goto label$737;
				label$738:;
				{
					INTCPT$1 = INTCPT$1 + 1ll;
				}
				label$737:;
				struct $8FBSYMBOL* vr$92 = SYMBUDTGETNEXTFIELD( FLD$1 );
				FLD$1 = vr$92;
			}
			goto label$734;
			label$735:;
			if( ((int64)-(FLOATCPT$1 == 1ll) & (int64)-(INTCPT$1 == 0ll)) == 0ll ) goto label$740;
			{
				if( *CPTARG$1 <= 4ll ) goto label$742;
				{
					fb$result$1 = 11ll;
					goto label$689;
				}
				goto label$741;
				label$742:;
				{
					fb$result$1 = 1ll;
					goto label$689;
				}
				label$741:;
			}
			goto label$739;
			label$740:;
			{
				if( *CPTARG$1 <= 4ll ) goto label$744;
				{
					fb$result$1 = 11ll;
					goto label$689;
				}
				goto label$743;
				label$744:;
				{
					fb$result$1 = 0ll;
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

static void REG_FILLM( int64 OFS$1, struct $7FBARRAYIiE* LISTREG$1, int64 LGT$1, int64 PREV$1, int64 OFFST$1 )
{
	label$745:;
	{
		uint64 TMP$833$2;
		TMP$833$2 = (uint64)(LGT$1 - OFFST$1);
		goto label$748;
		label$749:;
		{
			FBSTRING TMP$834$3;
			FBSTRING TMP$835$3;
			FBSTRING TMP$836$3;
			FBSTRING TMP$837$3;
			__builtin_memset( &TMP$837$3, 0, 24ll );
			FBSTRING* vr$9 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$834$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$834$3, (void*)"mov ", 5ll, (void*)vr$9, -1ll );
			__builtin_memset( &TMP$835$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$835$3, (void*)vr$12, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$836$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$836$3, (void*)vr$15, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$837$3, -1ll, (void*)vr$18, -1ll, 0 );
			HWRITEASM64( &TMP$837$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$837$3 );
		}
		goto label$747;
		label$750:;
		{
			FBSTRING TMP$838$3;
			FBSTRING TMP$839$3;
			FBSTRING TMP$840$3;
			FBSTRING TMP$841$3;
			__builtin_memset( &TMP$841$3, 0, 24ll );
			FBSTRING* vr$30 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$838$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$838$3, (void*)"mov ", 5ll, (void*)vr$30, -1ll );
			__builtin_memset( &TMP$839$3, 0, 24ll );
			FBSTRING* vr$36 = fb_StrConcat( &TMP$839$3, (void*)vr$33, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$840$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$840$3, (void*)vr$36, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$841$3, -1ll, (void*)vr$39, -1ll, 0 );
			HWRITEASM64( &TMP$841$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$841$3 );
		}
		goto label$747;
		label$751:;
		{
			FBSTRING TMP$842$3;
			FBSTRING TMP$843$3;
			FBSTRING TMP$844$3;
			FBSTRING TMP$845$3;
			FBSTRING TMP$848$3;
			FBSTRING TMP$849$3;
			FBSTRING TMP$850$3;
			FBSTRING TMP$851$3;
			FBSTRING TMP$852$3;
			FBSTRING TMP$853$3;
			FBSTRING TMP$854$3;
			__builtin_memset( &TMP$845$3, 0, 24ll );
			FBSTRING* vr$51 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$842$3, 0, 24ll );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$842$3, (void*)"mov ", 5ll, (void*)vr$51, -1ll );
			__builtin_memset( &TMP$843$3, 0, 24ll );
			FBSTRING* vr$57 = fb_StrConcat( &TMP$843$3, (void*)vr$54, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$844$3, 0, 24ll );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$844$3, (void*)vr$57, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$845$3, -1ll, (void*)vr$60, -1ll, 0 );
			HWRITEASM64( &TMP$845$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$845$3 );
			__builtin_memset( &TMP$850$3, 0, 24ll );
			__builtin_memset( &TMP$848$3, 0, 24ll );
			FBSTRING* vr$73 = fb_StrConcat( &TMP$848$3, (void*)"shr ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$849$3, 0, 24ll );
			FBSTRING* vr$76 = fb_StrConcat( &TMP$849$3, (void*)vr$73, -1ll, (void*)", 16", 5ll );
			fb_StrAssign( (void*)&TMP$850$3, -1ll, (void*)vr$76, -1ll, 0 );
			HWRITEASM64( &TMP$850$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$850$3 );
			__builtin_memset( &TMP$854$3, 0, 24ll );
			FBSTRING* vr$89 = fb_LongintToStr( (OFS$1 + OFFST$1) + 2ll );
			__builtin_memset( &TMP$851$3, 0, 24ll );
			FBSTRING* vr$92 = fb_StrConcat( &TMP$851$3, (void*)"mov ", 5ll, (void*)vr$89, -1ll );
			__builtin_memset( &TMP$852$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$852$3, (void*)vr$92, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$853$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$853$3, (void*)vr$95, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$854$3, -1ll, (void*)vr$98, -1ll, 0 );
			HWRITEASM64( &TMP$854$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$854$3 );
		}
		goto label$747;
		label$752:;
		{
			FBSTRING TMP$855$3;
			FBSTRING TMP$856$3;
			FBSTRING TMP$857$3;
			FBSTRING TMP$858$3;
			__builtin_memset( &TMP$858$3, 0, 24ll );
			FBSTRING* vr$110 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$855$3, 0, 24ll );
			FBSTRING* vr$113 = fb_StrConcat( &TMP$855$3, (void*)"mov ", 5ll, (void*)vr$110, -1ll );
			__builtin_memset( &TMP$856$3, 0, 24ll );
			FBSTRING* vr$116 = fb_StrConcat( &TMP$856$3, (void*)vr$113, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$857$3, 0, 24ll );
			FBSTRING* vr$119 = fb_StrConcat( &TMP$857$3, (void*)vr$116, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$858$3, -1ll, (void*)vr$119, -1ll, 0 );
			HWRITEASM64( &TMP$858$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$858$3 );
		}
		goto label$747;
		label$753:;
		{
			FBSTRING TMP$859$3;
			FBSTRING TMP$860$3;
			FBSTRING TMP$861$3;
			FBSTRING TMP$862$3;
			FBSTRING TMP$864$3;
			FBSTRING TMP$865$3;
			FBSTRING TMP$866$3;
			FBSTRING TMP$867$3;
			FBSTRING TMP$868$3;
			FBSTRING TMP$869$3;
			FBSTRING TMP$870$3;
			__builtin_memset( &TMP$862$3, 0, 24ll );
			FBSTRING* vr$131 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$859$3, 0, 24ll );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$859$3, (void*)"mov ", 5ll, (void*)vr$131, -1ll );
			__builtin_memset( &TMP$860$3, 0, 24ll );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$860$3, (void*)vr$134, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$861$3, 0, 24ll );
			FBSTRING* vr$140 = fb_StrConcat( &TMP$861$3, (void*)vr$137, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$862$3, -1ll, (void*)vr$140, -1ll, 0 );
			HWRITEASM64( &TMP$862$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$862$3 );
			__builtin_memset( &TMP$866$3, 0, 24ll );
			__builtin_memset( &TMP$864$3, 0, 24ll );
			FBSTRING* vr$153 = fb_StrConcat( &TMP$864$3, (void*)"shr ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$865$3, 0, 24ll );
			FBSTRING* vr$156 = fb_StrConcat( &TMP$865$3, (void*)vr$153, -1ll, (void*)", 32", 5ll );
			fb_StrAssign( (void*)&TMP$866$3, -1ll, (void*)vr$156, -1ll, 0 );
			HWRITEASM64( &TMP$866$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$866$3 );
			__builtin_memset( &TMP$870$3, 0, 24ll );
			FBSTRING* vr$169 = fb_LongintToStr( (OFS$1 + OFFST$1) + 4ll );
			__builtin_memset( &TMP$867$3, 0, 24ll );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$867$3, (void*)"mov ", 5ll, (void*)vr$169, -1ll );
			__builtin_memset( &TMP$868$3, 0, 24ll );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$868$3, (void*)vr$172, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$869$3, 0, 24ll );
			FBSTRING* vr$178 = fb_StrConcat( &TMP$869$3, (void*)vr$175, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$870$3, -1ll, (void*)vr$178, -1ll, 0 );
			HWRITEASM64( &TMP$870$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$870$3 );
		}
		goto label$747;
		label$754:;
		{
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
			FBSTRING TMP$881$3;
			__builtin_memset( &TMP$874$3, 0, 24ll );
			FBSTRING* vr$190 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$871$3, 0, 24ll );
			FBSTRING* vr$193 = fb_StrConcat( &TMP$871$3, (void*)"mov ", 5ll, (void*)vr$190, -1ll );
			__builtin_memset( &TMP$872$3, 0, 24ll );
			FBSTRING* vr$196 = fb_StrConcat( &TMP$872$3, (void*)vr$193, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$873$3, 0, 24ll );
			FBSTRING* vr$199 = fb_StrConcat( &TMP$873$3, (void*)vr$196, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$874$3, -1ll, (void*)vr$199, -1ll, 0 );
			HWRITEASM64( &TMP$874$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$874$3 );
			__builtin_memset( &TMP$877$3, 0, 24ll );
			__builtin_memset( &TMP$875$3, 0, 24ll );
			FBSTRING* vr$212 = fb_StrConcat( &TMP$875$3, (void*)"shr ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$876$3, 0, 24ll );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$876$3, (void*)vr$212, -1ll, (void*)", 32", 5ll );
			fb_StrAssign( (void*)&TMP$877$3, -1ll, (void*)vr$215, -1ll, 0 );
			HWRITEASM64( &TMP$877$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$877$3 );
			__builtin_memset( &TMP$881$3, 0, 24ll );
			FBSTRING* vr$228 = fb_LongintToStr( (OFS$1 + OFFST$1) + 4ll );
			__builtin_memset( &TMP$878$3, 0, 24ll );
			FBSTRING* vr$231 = fb_StrConcat( &TMP$878$3, (void*)"mov ", 5ll, (void*)vr$228, -1ll );
			__builtin_memset( &TMP$879$3, 0, 24ll );
			FBSTRING* vr$234 = fb_StrConcat( &TMP$879$3, (void*)vr$231, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$880$3, 0, 24ll );
			FBSTRING* vr$237 = fb_StrConcat( &TMP$880$3, (void*)vr$234, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$881$3, -1ll, (void*)vr$237, -1ll, 0 );
			HWRITEASM64( &TMP$881$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$881$3 );
		}
		goto label$747;
		label$755:;
		{
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
			FBSTRING TMP$899$3;
			__builtin_memset( &TMP$885$3, 0, 24ll );
			FBSTRING* vr$249 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$882$3, 0, 24ll );
			FBSTRING* vr$252 = fb_StrConcat( &TMP$882$3, (void*)"mov ", 5ll, (void*)vr$249, -1ll );
			__builtin_memset( &TMP$883$3, 0, 24ll );
			FBSTRING* vr$255 = fb_StrConcat( &TMP$883$3, (void*)vr$252, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$884$3, 0, 24ll );
			FBSTRING* vr$258 = fb_StrConcat( &TMP$884$3, (void*)vr$255, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$885$3, -1ll, (void*)vr$258, -1ll, 0 );
			HWRITEASM64( &TMP$885$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$885$3 );
			__builtin_memset( &TMP$888$3, 0, 24ll );
			__builtin_memset( &TMP$886$3, 0, 24ll );
			FBSTRING* vr$271 = fb_StrConcat( &TMP$886$3, (void*)"shr ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$887$3, 0, 24ll );
			FBSTRING* vr$274 = fb_StrConcat( &TMP$887$3, (void*)vr$271, -1ll, (void*)", 32", 5ll );
			fb_StrAssign( (void*)&TMP$888$3, -1ll, (void*)vr$274, -1ll, 0 );
			HWRITEASM64( &TMP$888$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$888$3 );
			__builtin_memset( &TMP$892$3, 0, 24ll );
			FBSTRING* vr$287 = fb_LongintToStr( (OFS$1 + OFFST$1) + 4ll );
			__builtin_memset( &TMP$889$3, 0, 24ll );
			FBSTRING* vr$290 = fb_StrConcat( &TMP$889$3, (void*)"mov ", 5ll, (void*)vr$287, -1ll );
			__builtin_memset( &TMP$890$3, 0, 24ll );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$890$3, (void*)vr$290, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$891$3, 0, 24ll );
			FBSTRING* vr$296 = fb_StrConcat( &TMP$891$3, (void*)vr$293, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$892$3, -1ll, (void*)vr$296, -1ll, 0 );
			HWRITEASM64( &TMP$892$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$892$3 );
			__builtin_memset( &TMP$895$3, 0, 24ll );
			__builtin_memset( &TMP$893$3, 0, 24ll );
			FBSTRING* vr$309 = fb_StrConcat( &TMP$893$3, (void*)"shr ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$894$3, 0, 24ll );
			FBSTRING* vr$312 = fb_StrConcat( &TMP$894$3, (void*)vr$309, -1ll, (void*)", 16", 5ll );
			fb_StrAssign( (void*)&TMP$895$3, -1ll, (void*)vr$312, -1ll, 0 );
			HWRITEASM64( &TMP$895$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$895$3 );
			__builtin_memset( &TMP$899$3, 0, 24ll );
			FBSTRING* vr$325 = fb_LongintToStr( (OFS$1 + OFFST$1) + 6ll );
			__builtin_memset( &TMP$896$3, 0, 24ll );
			FBSTRING* vr$328 = fb_StrConcat( &TMP$896$3, (void*)"mov ", 5ll, (void*)vr$325, -1ll );
			__builtin_memset( &TMP$897$3, 0, 24ll );
			FBSTRING* vr$331 = fb_StrConcat( &TMP$897$3, (void*)vr$328, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$898$3, 0, 24ll );
			FBSTRING* vr$334 = fb_StrConcat( &TMP$898$3, (void*)vr$331, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$899$3, -1ll, (void*)vr$334, -1ll, 0 );
			HWRITEASM64( &TMP$899$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$899$3 );
		}
		goto label$747;
		label$756:;
		{
			FBSTRING TMP$900$3;
			FBSTRING TMP$901$3;
			FBSTRING TMP$902$3;
			FBSTRING TMP$903$3;
			__builtin_memset( &TMP$903$3, 0, 24ll );
			FBSTRING* vr$346 = fb_LongintToStr( OFS$1 + OFFST$1 );
			__builtin_memset( &TMP$900$3, 0, 24ll );
			FBSTRING* vr$349 = fb_StrConcat( &TMP$900$3, (void*)"mov ", 5ll, (void*)vr$346, -1ll );
			__builtin_memset( &TMP$901$3, 0, 24ll );
			FBSTRING* vr$352 = fb_StrConcat( &TMP$901$3, (void*)vr$349, -1ll, (void*)"[rbp], ", 8ll );
			__builtin_memset( &TMP$902$3, 0, 24ll );
			FBSTRING* vr$355 = fb_StrConcat( &TMP$902$3, (void*)vr$352, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)(((*(int64*)((uint8*)&CTX$ + 168ll) - PREV$1) << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			fb_StrAssign( (void*)&TMP$903$3, -1ll, (void*)vr$355, -1ll, 0 );
			HWRITEASM64( &TMP$903$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$903$3 );
		}
		goto label$747;
		label$748:;
		static const void* tmp$3851[8ll] = {
			&&label$749,
			&&label$750,
			&&label$751,
			&&label$752,
			&&label$753,
			&&label$754,
			&&label$755,
			&&label$756,
		};
		if( (TMP$833$2 - 1ull) > 7ull ) goto label$747;
		goto *tmp$3851[TMP$833$2 - 1ull];
		label$747:;
	}
	label$746:;
}

static void REG_FILLR( int64 LGT$1, FBSTRING* SRC$1, int64 CPTINT$1, struct $7FBARRAYIiE* LISTREG$1, int32 REG2$1 )
{
	label$757:;
	uint8* REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 8ll );
	FBSTRING REGDST$1;
	fb_StrInit( (void*)&REGDST$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll, 0 );
	if( LGT$1 <= 8ll ) goto label$760;
	{
		LGT$1 = LGT$1 + -8ll;
		if( (uint64)(int64)*(uint8*)*(uint8**)SRC$1 != 45ull ) goto label$762;
		{
			FBSTRING TMP$904$3;
			FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5ll );
			int64 vr$12 = fb_StrInstr( 1ll, (FBSTRING*)SRC$1, (FBSTRING*)vr$11 );
			FBSTRING* vr$14 = fb_LEFT( (FBSTRING*)SRC$1, vr$12 + -1ll );
			int32 vr$15 = fb_VALINT( (FBSTRING*)vr$14 );
			FBSTRING* vr$18 = fb_LongintToStr( (int64)vr$15 + 8ll );
			__builtin_memset( &TMP$904$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$904$3, (void*)vr$18, -1ll, (void*)"[rbp]", 6ll );
			fb_StrAssign( (void*)SRC$1, -1ll, (void*)vr$21, -1ll, 0 );
		}
		goto label$761;
		label$762:;
		{
			FBSTRING TMP$906$3;
			FBSTRING TMP$907$3;
			FBSTRING TMP$909$3;
			__builtin_memset( &TMP$907$3, 0, 24ll );
			__builtin_memset( &TMP$906$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$906$3, (void*)"lea rax, ", 10ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$907$3, -1ll, (void*)vr$25, -1ll, 0 );
			HWRITEASM64( &TMP$907$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$907$3 );
			__builtin_memset( &TMP$909$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$909$3, -1ll, (void*)"add rax, 8", 11ll, 0 );
			HWRITEASM64( &TMP$909$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$909$3 );
			fb_StrAssign( (void*)SRC$1, -1ll, (void*)"[rax]", 6ll, 0 );
		}
		label$761:;
	}
	label$760:;
	label$759:;
	if( ((((int64)-(LGT$1 != 1ll) & (int64)-(LGT$1 != 2ll)) & (int64)-(LGT$1 != 4ll)) & (int64)-(LGT$1 != 8ll)) == 0ll ) goto label$764;
	{
		uint8* vr$40 = REG_TEMPO(  );
		REGSRC$1 = vr$40;
	}
	label$764:;
	label$763:;
	REG_TRANSFER( *(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1), REG2$1 );
	{
		uint64 TMP$911$2;
		TMP$911$2 = (uint64)LGT$1;
		goto label$766;
		label$767:;
		{
			FBSTRING TMP$914$3;
			FBSTRING TMP$915$3;
			FBSTRING TMP$916$3;
			FBSTRING TMP$917$3;
			__builtin_memset( &TMP$917$3, 0, 24ll );
			__builtin_memset( &TMP$914$3, 0, 24ll );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$914$3, (void*)"movzx ", 7ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$915$3, 0, 24ll );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$915$3, (void*)vr$48, -1ll, (void*)", BYTE PTR ", 12ll );
			__builtin_memset( &TMP$916$3, 0, 24ll );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$916$3, (void*)vr$51, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$917$3, -1ll, (void*)vr$54, -1ll, 0 );
			HWRITEASM64( &TMP$917$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$917$3 );
		}
		goto label$765;
		label$768:;
		{
			FBSTRING TMP$919$3;
			FBSTRING TMP$920$3;
			FBSTRING TMP$921$3;
			FBSTRING TMP$922$3;
			__builtin_memset( &TMP$922$3, 0, 24ll );
			__builtin_memset( &TMP$919$3, 0, 24ll );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$919$3, (void*)"movzx ", 7ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$920$3, 0, 24ll );
			FBSTRING* vr$65 = fb_StrConcat( &TMP$920$3, (void*)vr$62, -1ll, (void*)", WORD PTR ", 12ll );
			__builtin_memset( &TMP$921$3, 0, 24ll );
			FBSTRING* vr$68 = fb_StrConcat( &TMP$921$3, (void*)vr$65, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$922$3, -1ll, (void*)vr$68, -1ll, 0 );
			HWRITEASM64( &TMP$922$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$922$3 );
		}
		goto label$765;
		label$769:;
		{
			FBSTRING TMP$923$3;
			FBSTRING TMP$924$3;
			FBSTRING TMP$925$3;
			FBSTRING TMP$926$3;
			FBSTRING TMP$928$3;
			FBSTRING TMP$929$3;
			FBSTRING TMP$930$3;
			FBSTRING TMP$931$3;
			FBSTRING TMP$932$3;
			FBSTRING TMP$934$3;
			FBSTRING TMP$935$3;
			FBSTRING TMP$936$3;
			FBSTRING TMP$938$3;
			FBSTRING TMP$941$3;
			FBSTRING TMP$942$3;
			FBSTRING TMP$943$3;
			__builtin_memset( &TMP$926$3, 0, 24ll );
			__builtin_memset( &TMP$923$3, 0, 24ll );
			FBSTRING* vr$75 = fb_StrConcat( &TMP$923$3, (void*)"lea ", 5ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$924$3, 0, 24ll );
			FBSTRING* vr$78 = fb_StrConcat( &TMP$924$3, (void*)vr$75, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$925$3, 0, 24ll );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$925$3, (void*)vr$78, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$926$3, -1ll, (void*)vr$81, -1ll, 0 );
			HWRITEASM64( &TMP$926$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$926$3 );
			__builtin_memset( &TMP$932$3, 0, 24ll );
			__builtin_memset( &TMP$928$3, 0, 24ll );
			FBSTRING* vr$89 = fb_StrConcat( &TMP$928$3, (void*)"movzx ", 7ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$929$3, 0, 24ll );
			FBSTRING* vr$92 = fb_StrConcat( &TMP$929$3, (void*)vr$89, -1ll, (void*)", WORD PTR [", 13ll );
			__builtin_memset( &TMP$930$3, 0, 24ll );
			FBSTRING* vr$95 = fb_StrConcat( &TMP$930$3, (void*)vr$92, -1ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$931$3, 0, 24ll );
			FBSTRING* vr$98 = fb_StrConcat( &TMP$931$3, (void*)vr$95, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$932$3, -1ll, (void*)vr$98, -1ll, 0 );
			HWRITEASM64( &TMP$932$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$932$3 );
			__builtin_memset( &TMP$936$3, 0, 24ll );
			__builtin_memset( &TMP$934$3, 0, 24ll );
			FBSTRING* vr$105 = fb_StrConcat( &TMP$934$3, (void*)"movzx eax, BYTE PTR 2[", 23ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$935$3, 0, 24ll );
			FBSTRING* vr$108 = fb_StrConcat( &TMP$935$3, (void*)vr$105, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$936$3, -1ll, (void*)vr$108, -1ll, 0 );
			HWRITEASM64( &TMP$936$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$936$3 );
			__builtin_memset( &TMP$938$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$938$3, -1ll, (void*)"shl rax, 16", 12ll, 0 );
			HWRITEASM64( &TMP$938$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$938$3 );
			__builtin_memset( &TMP$943$3, 0, 24ll );
			__builtin_memset( &TMP$941$3, 0, 24ll );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$941$3, (void*)"or ", 4ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$942$3, 0, 24ll );
			FBSTRING* vr$123 = fb_StrConcat( &TMP$942$3, (void*)vr$120, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$943$3, -1ll, (void*)vr$123, -1ll, 0 );
			HWRITEASM64( &TMP$943$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$943$3 );
		}
		goto label$765;
		label$770:;
		{
			FBSTRING TMP$945$3;
			FBSTRING TMP$946$3;
			FBSTRING TMP$947$3;
			FBSTRING TMP$948$3;
			__builtin_memset( &TMP$948$3, 0, 24ll );
			__builtin_memset( &TMP$945$3, 0, 24ll );
			FBSTRING* vr$135 = fb_StrConcat( &TMP$945$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$946$3, 0, 24ll );
			FBSTRING* vr$138 = fb_StrConcat( &TMP$946$3, (void*)vr$135, -1ll, (void*)", DWORD PTR ", 13ll );
			__builtin_memset( &TMP$947$3, 0, 24ll );
			FBSTRING* vr$141 = fb_StrConcat( &TMP$947$3, (void*)vr$138, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$948$3, -1ll, (void*)vr$141, -1ll, 0 );
			HWRITEASM64( &TMP$948$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$948$3 );
		}
		goto label$765;
		label$771:;
		{
			FBSTRING TMP$949$3;
			FBSTRING TMP$950$3;
			FBSTRING TMP$951$3;
			FBSTRING TMP$952$3;
			FBSTRING TMP$954$3;
			FBSTRING TMP$955$3;
			FBSTRING TMP$956$3;
			FBSTRING TMP$957$3;
			FBSTRING TMP$958$3;
			FBSTRING TMP$960$3;
			FBSTRING TMP$961$3;
			FBSTRING TMP$962$3;
			FBSTRING TMP$964$3;
			FBSTRING TMP$965$3;
			FBSTRING TMP$966$3;
			FBSTRING TMP$967$3;
			__builtin_memset( &TMP$952$3, 0, 24ll );
			__builtin_memset( &TMP$949$3, 0, 24ll );
			FBSTRING* vr$148 = fb_StrConcat( &TMP$949$3, (void*)"lea ", 5ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$950$3, 0, 24ll );
			FBSTRING* vr$151 = fb_StrConcat( &TMP$950$3, (void*)vr$148, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$951$3, 0, 24ll );
			FBSTRING* vr$154 = fb_StrConcat( &TMP$951$3, (void*)vr$151, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$952$3, -1ll, (void*)vr$154, -1ll, 0 );
			HWRITEASM64( &TMP$952$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$952$3 );
			__builtin_memset( &TMP$958$3, 0, 24ll );
			__builtin_memset( &TMP$954$3, 0, 24ll );
			FBSTRING* vr$166 = fb_StrConcat( &TMP$954$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$955$3, 0, 24ll );
			FBSTRING* vr$169 = fb_StrConcat( &TMP$955$3, (void*)vr$166, -1ll, (void*)", DWORD PTR [", 14ll );
			__builtin_memset( &TMP$956$3, 0, 24ll );
			FBSTRING* vr$172 = fb_StrConcat( &TMP$956$3, (void*)vr$169, -1ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$957$3, 0, 24ll );
			FBSTRING* vr$175 = fb_StrConcat( &TMP$957$3, (void*)vr$172, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$958$3, -1ll, (void*)vr$175, -1ll, 0 );
			HWRITEASM64( &TMP$958$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$958$3 );
			__builtin_memset( &TMP$962$3, 0, 24ll );
			__builtin_memset( &TMP$960$3, 0, 24ll );
			FBSTRING* vr$182 = fb_StrConcat( &TMP$960$3, (void*)"movzx eax, BYTE PTR 4[", 23ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$961$3, 0, 24ll );
			FBSTRING* vr$185 = fb_StrConcat( &TMP$961$3, (void*)vr$182, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$962$3, -1ll, (void*)vr$185, -1ll, 0 );
			HWRITEASM64( &TMP$962$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$962$3 );
			__builtin_memset( &TMP$964$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$964$3, -1ll, (void*)"shl rax, 32", 12ll, 0 );
			HWRITEASM64( &TMP$964$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$964$3 );
			__builtin_memset( &TMP$967$3, 0, 24ll );
			__builtin_memset( &TMP$965$3, 0, 24ll );
			FBSTRING* vr$197 = fb_StrConcat( &TMP$965$3, (void*)"or ", 4ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$966$3, 0, 24ll );
			FBSTRING* vr$200 = fb_StrConcat( &TMP$966$3, (void*)vr$197, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$967$3, -1ll, (void*)vr$200, -1ll, 0 );
			HWRITEASM64( &TMP$967$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$967$3 );
		}
		goto label$765;
		label$772:;
		{
			FBSTRING TMP$968$3;
			FBSTRING TMP$969$3;
			FBSTRING TMP$970$3;
			FBSTRING TMP$971$3;
			FBSTRING TMP$972$3;
			FBSTRING TMP$973$3;
			FBSTRING TMP$974$3;
			FBSTRING TMP$975$3;
			FBSTRING TMP$976$3;
			FBSTRING TMP$978$3;
			FBSTRING TMP$979$3;
			FBSTRING TMP$980$3;
			FBSTRING TMP$981$3;
			FBSTRING TMP$982$3;
			FBSTRING TMP$983$3;
			FBSTRING TMP$984$3;
			__builtin_memset( &TMP$971$3, 0, 24ll );
			__builtin_memset( &TMP$968$3, 0, 24ll );
			FBSTRING* vr$207 = fb_StrConcat( &TMP$968$3, (void*)"lea ", 5ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$969$3, 0, 24ll );
			FBSTRING* vr$210 = fb_StrConcat( &TMP$969$3, (void*)vr$207, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$970$3, 0, 24ll );
			FBSTRING* vr$213 = fb_StrConcat( &TMP$970$3, (void*)vr$210, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$971$3, -1ll, (void*)vr$213, -1ll, 0 );
			HWRITEASM64( &TMP$971$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$971$3 );
			__builtin_memset( &TMP$976$3, 0, 24ll );
			__builtin_memset( &TMP$972$3, 0, 24ll );
			FBSTRING* vr$225 = fb_StrConcat( &TMP$972$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$973$3, 0, 24ll );
			FBSTRING* vr$228 = fb_StrConcat( &TMP$973$3, (void*)vr$225, -1ll, (void*)", DWORD PTR [", 14ll );
			__builtin_memset( &TMP$974$3, 0, 24ll );
			FBSTRING* vr$231 = fb_StrConcat( &TMP$974$3, (void*)vr$228, -1ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$975$3, 0, 24ll );
			FBSTRING* vr$234 = fb_StrConcat( &TMP$975$3, (void*)vr$231, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$976$3, -1ll, (void*)vr$234, -1ll, 0 );
			HWRITEASM64( &TMP$976$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$976$3 );
			__builtin_memset( &TMP$980$3, 0, 24ll );
			__builtin_memset( &TMP$978$3, 0, 24ll );
			FBSTRING* vr$241 = fb_StrConcat( &TMP$978$3, (void*)"movzx eax, WORD PTR 4[", 23ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$979$3, 0, 24ll );
			FBSTRING* vr$244 = fb_StrConcat( &TMP$979$3, (void*)vr$241, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$980$3, -1ll, (void*)vr$244, -1ll, 0 );
			HWRITEASM64( &TMP$980$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$980$3 );
			__builtin_memset( &TMP$981$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$981$3, -1ll, (void*)"shl rax, 32", 12ll, 0 );
			HWRITEASM64( &TMP$981$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$981$3 );
			__builtin_memset( &TMP$984$3, 0, 24ll );
			__builtin_memset( &TMP$982$3, 0, 24ll );
			FBSTRING* vr$256 = fb_StrConcat( &TMP$982$3, (void*)"or ", 4ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$983$3, 0, 24ll );
			FBSTRING* vr$259 = fb_StrConcat( &TMP$983$3, (void*)vr$256, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$984$3, -1ll, (void*)vr$259, -1ll, 0 );
			HWRITEASM64( &TMP$984$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$984$3 );
		}
		goto label$765;
		label$773:;
		{
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
			FBSTRING TMP$1000$3;
			FBSTRING TMP$1002$3;
			FBSTRING TMP$1003$3;
			FBSTRING TMP$1004$3;
			FBSTRING TMP$1006$3;
			FBSTRING TMP$1007$3;
			FBSTRING TMP$1008$3;
			FBSTRING TMP$1009$3;
			__builtin_memset( &TMP$988$3, 0, 24ll );
			__builtin_memset( &TMP$985$3, 0, 24ll );
			FBSTRING* vr$266 = fb_StrConcat( &TMP$985$3, (void*)"lea ", 5ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$986$3, 0, 24ll );
			FBSTRING* vr$269 = fb_StrConcat( &TMP$986$3, (void*)vr$266, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$987$3, 0, 24ll );
			FBSTRING* vr$272 = fb_StrConcat( &TMP$987$3, (void*)vr$269, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$988$3, -1ll, (void*)vr$272, -1ll, 0 );
			HWRITEASM64( &TMP$988$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$988$3 );
			__builtin_memset( &TMP$993$3, 0, 24ll );
			__builtin_memset( &TMP$989$3, 0, 24ll );
			FBSTRING* vr$284 = fb_StrConcat( &TMP$989$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)LISTREG$1) << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$990$3, 0, 24ll );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$990$3, (void*)vr$284, -1ll, (void*)", DWORD PTR [", 14ll );
			__builtin_memset( &TMP$991$3, 0, 24ll );
			FBSTRING* vr$290 = fb_StrConcat( &TMP$991$3, (void*)vr$287, -1ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$992$3, 0, 24ll );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$992$3, (void*)vr$290, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$993$3, -1ll, (void*)vr$293, -1ll, 0 );
			HWRITEASM64( &TMP$993$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$993$3 );
			__builtin_memset( &TMP$996$3, 0, 24ll );
			__builtin_memset( &TMP$994$3, 0, 24ll );
			FBSTRING* vr$300 = fb_StrConcat( &TMP$994$3, (void*)"movzx eax, WORD PTR 4[", 23ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$995$3, 0, 24ll );
			FBSTRING* vr$303 = fb_StrConcat( &TMP$995$3, (void*)vr$300, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$996$3, -1ll, (void*)vr$303, -1ll, 0 );
			HWRITEASM64( &TMP$996$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$996$3 );
			__builtin_memset( &TMP$997$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$997$3, -1ll, (void*)"shl rax, 32", 12ll, 0 );
			HWRITEASM64( &TMP$997$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$997$3 );
			__builtin_memset( &TMP$1000$3, 0, 24ll );
			__builtin_memset( &TMP$998$3, 0, 24ll );
			FBSTRING* vr$315 = fb_StrConcat( &TMP$998$3, (void*)"or ", 4ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$999$3, 0, 24ll );
			FBSTRING* vr$318 = fb_StrConcat( &TMP$999$3, (void*)vr$315, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1000$3, -1ll, (void*)vr$318, -1ll, 0 );
			HWRITEASM64( &TMP$1000$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1000$3 );
			__builtin_memset( &TMP$1004$3, 0, 24ll );
			__builtin_memset( &TMP$1002$3, 0, 24ll );
			FBSTRING* vr$325 = fb_StrConcat( &TMP$1002$3, (void*)"movzx eax, BYTE PTR 6[", 23ll, (void*)REGSRC$1, 0ll );
			__builtin_memset( &TMP$1003$3, 0, 24ll );
			FBSTRING* vr$328 = fb_StrConcat( &TMP$1003$3, (void*)vr$325, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$1004$3, -1ll, (void*)vr$328, -1ll, 0 );
			HWRITEASM64( &TMP$1004$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1004$3 );
			__builtin_memset( &TMP$1006$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1006$3, -1ll, (void*)"shl rax, 48", 12ll, 0 );
			HWRITEASM64( &TMP$1006$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1006$3 );
			__builtin_memset( &TMP$1009$3, 0, 24ll );
			__builtin_memset( &TMP$1007$3, 0, 24ll );
			FBSTRING* vr$340 = fb_StrConcat( &TMP$1007$3, (void*)"or ", 4ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$1008$3, 0, 24ll );
			FBSTRING* vr$343 = fb_StrConcat( &TMP$1008$3, (void*)vr$340, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1009$3, -1ll, (void*)vr$343, -1ll, 0 );
			HWRITEASM64( &TMP$1009$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1009$3 );
		}
		goto label$765;
		label$774:;
		{
			FBSTRING TMP$1010$3;
			FBSTRING TMP$1011$3;
			FBSTRING TMP$1012$3;
			FBSTRING TMP$1013$3;
			__builtin_memset( &TMP$1013$3, 0, 24ll );
			__builtin_memset( &TMP$1010$3, 0, 24ll );
			FBSTRING* vr$351 = fb_StrConcat( &TMP$1010$3, (void*)"mov ", 5ll, (void*)&REGDST$1, -1ll );
			__builtin_memset( &TMP$1011$3, 0, 24ll );
			FBSTRING* vr$354 = fb_StrConcat( &TMP$1011$3, (void*)vr$351, -1ll, (void*)", QWORD PTR ", 13ll );
			__builtin_memset( &TMP$1012$3, 0, 24ll );
			FBSTRING* vr$357 = fb_StrConcat( &TMP$1012$3, (void*)vr$354, -1ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$1013$3, -1ll, (void*)vr$357, -1ll, 0 );
			HWRITEASM64( &TMP$1013$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1013$3 );
		}
		goto label$765;
		label$766:;
		static const void* tmp$3852[8ll] = {
			&&label$767,
			&&label$768,
			&&label$769,
			&&label$770,
			&&label$771,
			&&label$772,
			&&label$773,
			&&label$774,
		};
		if( (TMP$911$2 - 1ull) > 7ull ) goto label$765;
		goto *tmp$3852[TMP$911$2 - 1ull];
		label$765:;
	}
	fb_StrDelete( (FBSTRING*)&REGDST$1 );
	label$758:;
}

static void REG_FILLX( int64 LGT$1, FBSTRING* SRC$1, int64 CPTFLOAT$1 )
{
	label$775:;
	if( LGT$1 <= 8ll ) goto label$778;
	{
		LGT$1 = LGT$1 + -8ll;
		if( (uint64)(int64)*(uint8*)*(uint8**)SRC$1 != 45ull ) goto label$780;
		{
			FBSTRING TMP$1014$3;
			FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5ll );
			int64 vr$5 = fb_StrInstr( 1ll, (FBSTRING*)SRC$1, (FBSTRING*)vr$4 );
			FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)SRC$1, vr$5 + -1ll );
			int32 vr$8 = fb_VALINT( (FBSTRING*)vr$7 );
			FBSTRING* vr$11 = fb_LongintToStr( (int64)vr$8 + 8ll );
			__builtin_memset( &TMP$1014$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$1014$3, (void*)vr$11, -1ll, (void*)"[rbp]", 6ll );
			fb_StrAssign( (void*)SRC$1, -1ll, (void*)vr$14, -1ll, 0 );
		}
		goto label$779;
		label$780:;
		{
			FBSTRING TMP$1015$3;
			FBSTRING TMP$1016$3;
			FBSTRING TMP$1017$3;
			__builtin_memset( &TMP$1016$3, 0, 24ll );
			__builtin_memset( &TMP$1015$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$1015$3, (void*)"lea rax, ", 10ll, (void*)SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$1016$3, -1ll, (void*)vr$18, -1ll, 0 );
			HWRITEASM64( &TMP$1016$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1016$3 );
			__builtin_memset( &TMP$1017$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1017$3, -1ll, (void*)"add rax, 8", 11ll, 0 );
			HWRITEASM64( &TMP$1017$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1017$3 );
			fb_StrAssign( (void*)SRC$1, -1ll, (void*)"[rax]", 6ll, 0 );
		}
		label$779:;
	}
	label$778:;
	label$777:;
	if( LGT$1 != 4ll ) goto label$782;
	{
		FBSTRING TMP$1019$2;
		FBSTRING TMP$1020$2;
		FBSTRING TMP$1021$2;
		FBSTRING TMP$1022$2;
		__builtin_memset( &TMP$1022$2, 0, 24ll );
		FBSTRING* vr$28 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
		__builtin_memset( &TMP$1019$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$1019$2, (void*)"movd xmm", 9ll, (void*)vr$28, -1ll );
		__builtin_memset( &TMP$1020$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$1020$2, (void*)vr$31, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1021$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$1021$2, (void*)vr$34, -1ll, (void*)SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1022$2, -1ll, (void*)vr$37, -1ll, 0 );
		HWRITEASM64( &TMP$1022$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1022$2 );
	}
	goto label$781;
	label$782:;
	{
		FBSTRING TMP$1024$2;
		FBSTRING TMP$1025$2;
		FBSTRING TMP$1026$2;
		FBSTRING TMP$1027$2;
		__builtin_memset( &TMP$1027$2, 0, 24ll );
		FBSTRING* vr$43 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
		__builtin_memset( &TMP$1024$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$1024$2, (void*)"movq xmm", 9ll, (void*)vr$43, -1ll );
		__builtin_memset( &TMP$1025$2, 0, 24ll );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$1025$2, (void*)vr$46, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1026$2, 0, 24ll );
		FBSTRING* vr$52 = fb_StrConcat( &TMP$1026$2, (void*)vr$49, -1ll, (void*)SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$1027$2, -1ll, (void*)vr$52, -1ll, 0 );
		HWRITEASM64( &TMP$1027$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1027$2 );
	}
	label$781:;
	label$776:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$783:;
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4ll );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4ll );
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	int64 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 8ll );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 8ll );
	FBSTRING REGSTR$1;
	__builtin_memset( &REGSTR$1, 0, 24ll );
	FBSTRING REGX$1;
	__builtin_memset( &REGX$1, 0, 24ll );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$786;
	{
		$19FB_CVA_LIST_TYPEDEF vr$11 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
		if( ((int64)-((DTYPE$1 & 480ll) == 0ll) & (int64)-(vr$11 == 3ll)) == 0ll ) goto label$788;
		{
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 8ll) = *(int64*)((uint8*)SYM$1 + 8ll) ^ 32768ll;
			*($13FB_SYMBATTRIB*)((uint8*)SYM$1 + 8ll) = *(int64*)((uint8*)SYM$1 + 8ll) | 65536ll;
		}
		label$788:;
		label$787:;
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32768ll) == 0ll ) goto label$790;
		{
			if( (DTYPE$1 & 511ll) != 20ll ) goto label$792;
			{
				int64 TMP$1028$4;
				TMP$1028$4 = 0ll;
				int64 vr$27 = PARAM_ANALYZE( 20ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), &TMP$1028$4, (int64*)((uint8*)&CTX$ + 168ll), (int64*)((uint8*)&CTX$ + 176ll) );
				PARAMTYPE$1 = vr$27;
				if( PARAMTYPE$1 != 10ll ) goto label$794;
				{
					*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
					*(int64*)((uint8*)&CTX$ + 184ll) = *(int64*)((uint8*)&CTX$ + 184ll) + *(int64*)((uint8*)SYM$1 + 80ll);
				}
				goto label$793;
				label$794:;
				{
					LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 80ll);
					*(int64*)((uint8*)&CTX$ + 192ll) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + (int64)LGT$1) + -1ll) & ~((int64)LGT$1 + -1ll);
					*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
					{
						uint64 TMP$1029$6;
						TMP$1029$6 = (uint64)PARAMTYPE$1;
						goto label$796;
						label$797:;
						{
							REG_FILLM( *(int64*)((uint8*)SYM$1 + 88ll), (struct $7FBARRAYIiE*)&LISTREG$, (int64)LGT$1, 0ll, 0ll );
						}
						goto label$795;
						label$798:;
						{
							REG_FILLM( *(int64*)((uint8*)SYM$1 + 88ll), (struct $7FBARRAYIiE*)&LISTREG$, 8ll, 1ll, 0ll );
							REG_FILLM( *(int64*)((uint8*)SYM$1 + 88ll), (struct $7FBARRAYIiE*)&LISTREG$, (int64)LGT$1, 0ll, 8ll );
						}
						goto label$795;
						label$799:;
						{
							REG_FILLM( *(int64*)((uint8*)SYM$1 + 88ll), (struct $7FBARRAYIiE*)&LISTREG$, 8ll, 0ll, 0ll );
							if( (int64)LGT$1 >= 13ll ) goto label$801;
							{
								FBSTRING TMP$1032$8;
								FBSTRING TMP$1033$8;
								FBSTRING TMP$1034$8;
								FBSTRING TMP$1035$8;
								__builtin_memset( &TMP$1035$8, 0, 24ll );
								FBSTRING* vr$53 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$56 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) + 8ll );
								__builtin_memset( &TMP$1032$8, 0, 24ll );
								FBSTRING* vr$59 = fb_StrConcat( &TMP$1032$8, (void*)"movd ", 6ll, (void*)vr$56, -1ll );
								__builtin_memset( &TMP$1033$8, 0, 24ll );
								FBSTRING* vr$62 = fb_StrConcat( &TMP$1033$8, (void*)vr$59, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1034$8, 0, 24ll );
								FBSTRING* vr$65 = fb_StrConcat( &TMP$1034$8, (void*)vr$62, -1ll, (void*)vr$53, -1ll );
								fb_StrAssign( (void*)&TMP$1035$8, -1ll, (void*)vr$65, -1ll, 0 );
								HWRITEASM64( &TMP$1035$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1035$8 );
							}
							goto label$800;
							label$801:;
							{
								FBSTRING TMP$1037$8;
								FBSTRING TMP$1038$8;
								FBSTRING TMP$1039$8;
								FBSTRING TMP$1040$8;
								__builtin_memset( &TMP$1040$8, 0, 24ll );
								FBSTRING* vr$71 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$74 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) + 8ll );
								__builtin_memset( &TMP$1037$8, 0, 24ll );
								FBSTRING* vr$77 = fb_StrConcat( &TMP$1037$8, (void*)"movq ", 6ll, (void*)vr$74, -1ll );
								__builtin_memset( &TMP$1038$8, 0, 24ll );
								FBSTRING* vr$80 = fb_StrConcat( &TMP$1038$8, (void*)vr$77, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1039$8, 0, 24ll );
								FBSTRING* vr$83 = fb_StrConcat( &TMP$1039$8, (void*)vr$80, -1ll, (void*)vr$71, -1ll );
								fb_StrAssign( (void*)&TMP$1040$8, -1ll, (void*)vr$83, -1ll, 0 );
								HWRITEASM64( &TMP$1040$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1040$8 );
							}
							label$800:;
						}
						goto label$795;
						label$802:;
						{
							if( (int64)LGT$1 != 4ll ) goto label$804;
							{
								FBSTRING TMP$1041$8;
								FBSTRING TMP$1042$8;
								FBSTRING TMP$1043$8;
								FBSTRING TMP$1044$8;
								__builtin_memset( &TMP$1044$8, 0, 24ll );
								FBSTRING* vr$90 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$92 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1041$8, 0, 24ll );
								FBSTRING* vr$95 = fb_StrConcat( &TMP$1041$8, (void*)"movd ", 6ll, (void*)vr$92, -1ll );
								__builtin_memset( &TMP$1042$8, 0, 24ll );
								FBSTRING* vr$98 = fb_StrConcat( &TMP$1042$8, (void*)vr$95, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1043$8, 0, 24ll );
								FBSTRING* vr$101 = fb_StrConcat( &TMP$1043$8, (void*)vr$98, -1ll, (void*)vr$90, -1ll );
								fb_StrAssign( (void*)&TMP$1044$8, -1ll, (void*)vr$101, -1ll, 0 );
								HWRITEASM64( &TMP$1044$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1044$8 );
							}
							goto label$803;
							label$804:;
							{
								FBSTRING TMP$1045$8;
								FBSTRING TMP$1046$8;
								FBSTRING TMP$1047$8;
								FBSTRING TMP$1048$8;
								__builtin_memset( &TMP$1048$8, 0, 24ll );
								FBSTRING* vr$107 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$109 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1045$8, 0, 24ll );
								FBSTRING* vr$112 = fb_StrConcat( &TMP$1045$8, (void*)"movq ", 6ll, (void*)vr$109, -1ll );
								__builtin_memset( &TMP$1046$8, 0, 24ll );
								FBSTRING* vr$115 = fb_StrConcat( &TMP$1046$8, (void*)vr$112, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1047$8, 0, 24ll );
								FBSTRING* vr$118 = fb_StrConcat( &TMP$1047$8, (void*)vr$115, -1ll, (void*)vr$107, -1ll );
								fb_StrAssign( (void*)&TMP$1048$8, -1ll, (void*)vr$118, -1ll, 0 );
								HWRITEASM64( &TMP$1048$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1048$8 );
							}
							label$803:;
							REG_FILLM( *(int64*)((uint8*)SYM$1 + 88ll), (struct $7FBARRAYIiE*)&LISTREG$, (int64)LGT$1, 0ll, 8ll );
						}
						goto label$795;
						label$805:;
						{
							if( (int64)LGT$1 != 4ll ) goto label$807;
							{
								FBSTRING TMP$1049$8;
								FBSTRING TMP$1050$8;
								FBSTRING TMP$1051$8;
								FBSTRING TMP$1052$8;
								__builtin_memset( &TMP$1052$8, 0, 24ll );
								FBSTRING* vr$127 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$129 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1049$8, 0, 24ll );
								FBSTRING* vr$132 = fb_StrConcat( &TMP$1049$8, (void*)"movd ", 6ll, (void*)vr$129, -1ll );
								__builtin_memset( &TMP$1050$8, 0, 24ll );
								FBSTRING* vr$135 = fb_StrConcat( &TMP$1050$8, (void*)vr$132, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1051$8, 0, 24ll );
								FBSTRING* vr$138 = fb_StrConcat( &TMP$1051$8, (void*)vr$135, -1ll, (void*)vr$127, -1ll );
								fb_StrAssign( (void*)&TMP$1052$8, -1ll, (void*)vr$138, -1ll, 0 );
								HWRITEASM64( &TMP$1052$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1052$8 );
							}
							goto label$806;
							label$807:;
							{
								FBSTRING TMP$1053$8;
								FBSTRING TMP$1054$8;
								FBSTRING TMP$1055$8;
								FBSTRING TMP$1056$8;
								__builtin_memset( &TMP$1056$8, 0, 24ll );
								FBSTRING* vr$144 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$146 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1053$8, 0, 24ll );
								FBSTRING* vr$149 = fb_StrConcat( &TMP$1053$8, (void*)"movq ", 6ll, (void*)vr$146, -1ll );
								__builtin_memset( &TMP$1054$8, 0, 24ll );
								FBSTRING* vr$152 = fb_StrConcat( &TMP$1054$8, (void*)vr$149, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1055$8, 0, 24ll );
								FBSTRING* vr$155 = fb_StrConcat( &TMP$1055$8, (void*)vr$152, -1ll, (void*)vr$144, -1ll );
								fb_StrAssign( (void*)&TMP$1056$8, -1ll, (void*)vr$155, -1ll, 0 );
								HWRITEASM64( &TMP$1056$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1056$8 );
							}
							label$806:;
						}
						goto label$795;
						label$808:;
						{
							FBSTRING TMP$1057$7;
							FBSTRING TMP$1058$7;
							FBSTRING TMP$1059$7;
							FBSTRING TMP$1060$7;
							__builtin_memset( &TMP$1060$7, 0, 24ll );
							FBSTRING* vr$161 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -2ll );
							FBSTRING* vr$163 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
							__builtin_memset( &TMP$1057$7, 0, 24ll );
							FBSTRING* vr$166 = fb_StrConcat( &TMP$1057$7, (void*)"movq ", 6ll, (void*)vr$163, -1ll );
							__builtin_memset( &TMP$1058$7, 0, 24ll );
							FBSTRING* vr$169 = fb_StrConcat( &TMP$1058$7, (void*)vr$166, -1ll, (void*)"[rbp], xmm", 11ll );
							__builtin_memset( &TMP$1059$7, 0, 24ll );
							FBSTRING* vr$172 = fb_StrConcat( &TMP$1059$7, (void*)vr$169, -1ll, (void*)vr$161, -1ll );
							fb_StrAssign( (void*)&TMP$1060$7, -1ll, (void*)vr$172, -1ll, 0 );
							HWRITEASM64( &TMP$1060$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1060$7 );
							if( (int64)LGT$1 >= 13ll ) goto label$810;
							{
								FBSTRING TMP$1061$8;
								FBSTRING TMP$1062$8;
								FBSTRING TMP$1063$8;
								FBSTRING TMP$1064$8;
								__builtin_memset( &TMP$1064$8, 0, 24ll );
								FBSTRING* vr$179 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$182 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) + 8ll );
								__builtin_memset( &TMP$1061$8, 0, 24ll );
								FBSTRING* vr$185 = fb_StrConcat( &TMP$1061$8, (void*)"movd ", 6ll, (void*)vr$182, -1ll );
								__builtin_memset( &TMP$1062$8, 0, 24ll );
								FBSTRING* vr$188 = fb_StrConcat( &TMP$1062$8, (void*)vr$185, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1063$8, 0, 24ll );
								FBSTRING* vr$191 = fb_StrConcat( &TMP$1063$8, (void*)vr$188, -1ll, (void*)vr$179, -1ll );
								fb_StrAssign( (void*)&TMP$1064$8, -1ll, (void*)vr$191, -1ll, 0 );
								HWRITEASM64( &TMP$1064$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1064$8 );
							}
							goto label$809;
							label$810:;
							{
								FBSTRING TMP$1065$8;
								FBSTRING TMP$1066$8;
								FBSTRING TMP$1067$8;
								FBSTRING TMP$1068$8;
								__builtin_memset( &TMP$1068$8, 0, 24ll );
								FBSTRING* vr$197 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
								FBSTRING* vr$200 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) + 8ll );
								__builtin_memset( &TMP$1065$8, 0, 24ll );
								FBSTRING* vr$203 = fb_StrConcat( &TMP$1065$8, (void*)"movq ", 6ll, (void*)vr$200, -1ll );
								__builtin_memset( &TMP$1066$8, 0, 24ll );
								FBSTRING* vr$206 = fb_StrConcat( &TMP$1066$8, (void*)vr$203, -1ll, (void*)"[rbp], xmm", 11ll );
								__builtin_memset( &TMP$1067$8, 0, 24ll );
								FBSTRING* vr$209 = fb_StrConcat( &TMP$1067$8, (void*)vr$206, -1ll, (void*)vr$197, -1ll );
								fb_StrAssign( (void*)&TMP$1068$8, -1ll, (void*)vr$209, -1ll, 0 );
								HWRITEASM64( &TMP$1068$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1068$8 );
							}
							label$809:;
						}
						goto label$795;
						label$796:;
						static const void* tmp$3853[6ll] = {
							&&label$797,
							&&label$805,
							&&label$798,
							&&label$799,
							&&label$802,
							&&label$808,
						};
						if( TMP$1029$6 > 5ull ) goto label$795;
						goto *tmp$3853[TMP$1029$6 - 0ull];
						label$795:;
					}
				}
				label$793:;
			}
			goto label$791;
			label$792:;
			{
				int64 TMP$1069$4;
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 80ll);
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$811;
				TMP$1069$4 = 24ll;
				goto label$2994;
				label$811:;
				TMP$1069$4 = DTYPE$1 & 31ll;
				label$2994:;
				if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1069$4 * 56ll)) != 1ll ) goto label$813;
				{
					*(int64*)((uint8*)&CTX$ + 176ll) = *(int64*)((uint8*)&CTX$ + 176ll) + 1ll;
					if( *(int64*)((uint8*)&CTX$ + 176ll) > 8ll ) goto label$815;
					{
						*(int64*)((uint8*)&CTX$ + 192ll) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + (int64)LGT$1) + -1ll) & ~((int64)LGT$1 + -1ll);
						*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
						if( (int64)LGT$1 != 4ll ) goto label$817;
						{
							FBSTRING TMP$1070$7;
							FBSTRING TMP$1071$7;
							FBSTRING TMP$1072$7;
							FBSTRING TMP$1073$7;
							__builtin_memset( &TMP$1073$7, 0, 24ll );
							FBSTRING* vr$233 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
							FBSTRING* vr$235 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
							__builtin_memset( &TMP$1070$7, 0, 24ll );
							FBSTRING* vr$238 = fb_StrConcat( &TMP$1070$7, (void*)"movd ", 6ll, (void*)vr$235, -1ll );
							__builtin_memset( &TMP$1071$7, 0, 24ll );
							FBSTRING* vr$241 = fb_StrConcat( &TMP$1071$7, (void*)vr$238, -1ll, (void*)"[rbp], xmm", 11ll );
							__builtin_memset( &TMP$1072$7, 0, 24ll );
							FBSTRING* vr$244 = fb_StrConcat( &TMP$1072$7, (void*)vr$241, -1ll, (void*)vr$233, -1ll );
							fb_StrAssign( (void*)&TMP$1073$7, -1ll, (void*)vr$244, -1ll, 0 );
							HWRITEASM64( &TMP$1073$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1073$7 );
						}
						goto label$816;
						label$817:;
						{
							FBSTRING TMP$1074$7;
							FBSTRING TMP$1075$7;
							FBSTRING TMP$1076$7;
							FBSTRING TMP$1077$7;
							__builtin_memset( &TMP$1077$7, 0, 24ll );
							FBSTRING* vr$250 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 176ll) + -1ll );
							FBSTRING* vr$252 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
							__builtin_memset( &TMP$1074$7, 0, 24ll );
							FBSTRING* vr$255 = fb_StrConcat( &TMP$1074$7, (void*)"movq ", 6ll, (void*)vr$252, -1ll );
							__builtin_memset( &TMP$1075$7, 0, 24ll );
							FBSTRING* vr$258 = fb_StrConcat( &TMP$1075$7, (void*)vr$255, -1ll, (void*)"[rbp], xmm", 11ll );
							__builtin_memset( &TMP$1076$7, 0, 24ll );
							FBSTRING* vr$261 = fb_StrConcat( &TMP$1076$7, (void*)vr$258, -1ll, (void*)vr$250, -1ll );
							fb_StrAssign( (void*)&TMP$1077$7, -1ll, (void*)vr$261, -1ll, 0 );
							HWRITEASM64( &TMP$1077$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1077$7 );
						}
						label$816:;
					}
					goto label$814;
					label$815:;
					{
						*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
						*(int64*)((uint8*)&CTX$ + 184ll) = *(int64*)((uint8*)&CTX$ + 184ll) + 8ll;
					}
					label$814:;
				}
				goto label$812;
				label$813:;
				{
					*(int64*)((uint8*)&CTX$ + 168ll) = *(int64*)((uint8*)&CTX$ + 168ll) + 1ll;
					if( *(int64*)((uint8*)&CTX$ + 168ll) > 6ll ) goto label$819;
					{
						*(int64*)((uint8*)&CTX$ + 192ll) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + (int64)LGT$1) + -1ll) & ~((int64)LGT$1 + -1ll);
						*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
						{
							uint64 TMP$1078$7;
							TMP$1078$7 = (uint64)LGT$1;
							goto label$821;
							label$822:;
							{
								FBSTRING TMP$1080$8;
								FBSTRING TMP$1081$8;
								FBSTRING TMP$1082$8;
								FBSTRING TMP$1083$8;
								__builtin_memset( &TMP$1083$8, 0, 24ll );
								FBSTRING* vr$286 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1080$8, 0, 24ll );
								FBSTRING* vr$289 = fb_StrConcat( &TMP$1080$8, (void*)"mov BYTE PTR ", 14ll, (void*)vr$286, -1ll );
								__builtin_memset( &TMP$1081$8, 0, 24ll );
								FBSTRING* vr$292 = fb_StrConcat( &TMP$1081$8, (void*)vr$289, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1082$8, 0, 24ll );
								FBSTRING* vr$295 = fb_StrConcat( &TMP$1082$8, (void*)vr$292, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1083$8, -1ll, (void*)vr$295, -1ll, 0 );
								HWRITEASM64( &TMP$1083$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1083$8 );
							}
							goto label$820;
							label$823:;
							{
								FBSTRING TMP$1085$8;
								FBSTRING TMP$1086$8;
								FBSTRING TMP$1087$8;
								FBSTRING TMP$1088$8;
								__builtin_memset( &TMP$1088$8, 0, 24ll );
								FBSTRING* vr$305 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1085$8, 0, 24ll );
								FBSTRING* vr$308 = fb_StrConcat( &TMP$1085$8, (void*)"mov WORD PTR ", 14ll, (void*)vr$305, -1ll );
								__builtin_memset( &TMP$1086$8, 0, 24ll );
								FBSTRING* vr$311 = fb_StrConcat( &TMP$1086$8, (void*)vr$308, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1087$8, 0, 24ll );
								FBSTRING* vr$314 = fb_StrConcat( &TMP$1087$8, (void*)vr$311, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1088$8, -1ll, (void*)vr$314, -1ll, 0 );
								HWRITEASM64( &TMP$1088$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1088$8 );
							}
							goto label$820;
							label$824:;
							{
								FBSTRING TMP$1090$8;
								FBSTRING TMP$1091$8;
								FBSTRING TMP$1092$8;
								FBSTRING TMP$1093$8;
								__builtin_memset( &TMP$1093$8, 0, 24ll );
								FBSTRING* vr$324 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1090$8, 0, 24ll );
								FBSTRING* vr$327 = fb_StrConcat( &TMP$1090$8, (void*)"mov DWORD PTR ", 15ll, (void*)vr$324, -1ll );
								__builtin_memset( &TMP$1091$8, 0, 24ll );
								FBSTRING* vr$330 = fb_StrConcat( &TMP$1091$8, (void*)vr$327, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1092$8, 0, 24ll );
								FBSTRING* vr$333 = fb_StrConcat( &TMP$1092$8, (void*)vr$330, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1093$8, -1ll, (void*)vr$333, -1ll, 0 );
								HWRITEASM64( &TMP$1093$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1093$8 );
							}
							goto label$820;
							label$825:;
							{
								FBSTRING TMP$1094$8;
								FBSTRING TMP$1095$8;
								FBSTRING TMP$1096$8;
								FBSTRING TMP$1097$8;
								__builtin_memset( &TMP$1097$8, 0, 24ll );
								FBSTRING* vr$343 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
								__builtin_memset( &TMP$1094$8, 0, 24ll );
								FBSTRING* vr$346 = fb_StrConcat( &TMP$1094$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$343, -1ll );
								__builtin_memset( &TMP$1095$8, 0, 24ll );
								FBSTRING* vr$349 = fb_StrConcat( &TMP$1095$8, (void*)vr$346, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1096$8, 0, 24ll );
								FBSTRING* vr$352 = fb_StrConcat( &TMP$1096$8, (void*)vr$349, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1097$8, -1ll, (void*)vr$352, -1ll, 0 );
								HWRITEASM64( &TMP$1097$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1097$8 );
							}
							goto label$820;
							label$821:;
							static const void* tmp$3854[8ll] = {
								&&label$822,
								&&label$823,
								&&label$820,
								&&label$824,
								&&label$820,
								&&label$820,
								&&label$820,
								&&label$825,
							};
							if( (TMP$1078$7 - 1ull) > 7ull ) goto label$820;
							goto *tmp$3854[TMP$1078$7 - 1ull];
							label$820:;
						}
					}
					goto label$818;
					label$819:;
					{
						*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
						*(int64*)((uint8*)&CTX$ + 184ll) = *(int64*)((uint8*)&CTX$ + 184ll) + 8ll;
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
			*(int64*)((uint8*)&CTX$ + 168ll) = *(int64*)((uint8*)&CTX$ + 168ll) + 1ll;
			LGT$1 = 8;
			if( *(int64*)((uint8*)&CTX$ + 168ll) > 6ll ) goto label$827;
			{
				FBSTRING TMP$1098$4;
				FBSTRING TMP$1099$4;
				FBSTRING TMP$1100$4;
				FBSTRING TMP$1101$4;
				*(int64*)((uint8*)&CTX$ + 192ll) = ((((int64)LGT$1 + *(int64*)((uint8*)&CTX$ + 192ll)) + (int64)LGT$1) + -1ll) & ~((int64)LGT$1 + -1ll);
				*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
				__builtin_memset( &TMP$1101$4, 0, 24ll );
				FBSTRING* vr$376 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
				__builtin_memset( &TMP$1098$4, 0, 24ll );
				FBSTRING* vr$379 = fb_StrConcat( &TMP$1098$4, (void*)"mov QWORD PTR ", 15ll, (void*)vr$376, -1ll );
				__builtin_memset( &TMP$1099$4, 0, 24ll );
				FBSTRING* vr$382 = fb_StrConcat( &TMP$1099$4, (void*)vr$379, -1ll, (void*)"[rbp], ", 8ll );
				__builtin_memset( &TMP$1100$4, 0, 24ll );
				FBSTRING* vr$385 = fb_StrConcat( &TMP$1100$4, (void*)vr$382, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
				fb_StrAssign( (void*)&TMP$1101$4, -1ll, (void*)vr$385, -1ll, 0 );
				HWRITEASM64( &TMP$1101$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1101$4 );
			}
			goto label$826;
			label$827:;
			{
				*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
				*(int64*)((uint8*)&CTX$ + 184ll) = *(int64*)((uint8*)&CTX$ + 184ll) + 8ll;
			}
			label$826:;
		}
		label$789:;
	}
	goto label$785;
	label$786:;
	{
		*(int64*)((uint8*)&CTX$ + 184ll) = *(int64*)((uint8*)&CTX$ + 184ll) + 8ll;
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32768ll) == 0ll ) goto label$829;
		{
			if( (DTYPE$1 & 511ll) != 20ll ) goto label$831;
			{
				int64 TMP$1102$4;
				int64 TMP$1103$4;
				TMP$1103$4 = 0ll;
				TMP$1102$4 = 0ll;
				int64 vr$399 = PARAM_ANALYZE( 20ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), (int64*)((uint8*)&CTX$ + 168ll), &TMP$1102$4, &TMP$1103$4 );
				PARAMTYPE$1 = vr$399;
				{
					uint64 TMP$1104$5;
					TMP$1104$5 = (uint64)PARAMTYPE$1;
					goto label$833;
					label$834:;
					{
						*(int64*)((uint8*)&CTX$ + 192ll) = (((*(int64*)((uint8*)SYM$1 + 80ll) + *(int64*)((uint8*)&CTX$ + 192ll)) + *(int64*)((uint8*)SYM$1 + 80ll)) + -1ll) & ~(*(int64*)((uint8*)SYM$1 + 80ll) + -1ll);
						*(int64*)((uint8*)SYM$1 + 88ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
						if( PARAMTYPE$1 != 12ll ) goto label$836;
						{
							FBSTRING TMP$1105$7;
							FBSTRING TMP$1106$7;
							fb_StrAssign( (void*)&REGSTR$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll, 0 );
							__builtin_memset( &TMP$1106$7, 0, 24ll );
							FBSTRING* vr$418 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
							__builtin_memset( &TMP$1105$7, 0, 24ll );
							FBSTRING* vr$421 = fb_StrConcat( &TMP$1105$7, (void*)vr$418, -1ll, (void*)"[rbp]", 6ll );
							fb_StrAssign( (void*)&TMP$1106$7, -1ll, (void*)vr$421, -1ll, 0 );
							int64 vr$425 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( vr$425, &REGSTR$1, &TMP$1106$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1106$7 );
						}
						goto label$835;
						label$836:;
						{
							FBSTRING TMP$1107$7;
							FBSTRING TMP$1108$7;
							FBSTRING TMP$1109$7;
							FBSTRING TMP$1110$7;
							__builtin_memset( &TMP$1110$7, 0, 24ll );
							FBSTRING* vr$429 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 88ll) );
							__builtin_memset( &TMP$1109$7, 0, 24ll );
							FBSTRING* vr$432 = fb_StrConcat( &TMP$1109$7, (void*)vr$429, -1ll, (void*)"[rbp]", 6ll );
							fb_StrAssign( (void*)&TMP$1110$7, -1ll, (void*)vr$432, -1ll, 0 );
							__builtin_memset( &TMP$1108$7, 0, 24ll );
							FBSTRING* vr$436 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
							__builtin_memset( &TMP$1107$7, 0, 24ll );
							FBSTRING* vr$439 = fb_StrConcat( &TMP$1107$7, (void*)vr$436, -1ll, (void*)"[rbp]", 6ll );
							fb_StrAssign( (void*)&TMP$1108$7, -1ll, (void*)vr$439, -1ll, 0 );
							int64 vr$442 = SYMBGETREALSIZE( SYM$1 );
							MEMCOPY( vr$442, &TMP$1108$7, &TMP$1110$7, 0, 1 );
							fb_StrDelete( (FBSTRING*)&TMP$1110$7 );
							fb_StrDelete( (FBSTRING*)&TMP$1108$7 );
						}
						label$835:;
					}
					goto label$832;
					label$837:;
					{
						*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
						if( (int64)-(*(boolean*)((uint8*)&CTX$ + 400ll)) != 0ll ) goto label$839;
						{
							LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 80ll);
							if( PARAMTYPE$1 != 1ll ) goto label$841;
							{
								if( (int64)LGT$1 != 4ll ) goto label$843;
								{
									FBSTRING TMP$1111$9;
									FBSTRING TMP$1112$9;
									FBSTRING TMP$1113$9;
									FBSTRING TMP$1114$9;
									__builtin_memset( &TMP$1114$9, 0, 24ll );
									FBSTRING* vr$452 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 168ll) + -1ll );
									FBSTRING* vr$453 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
									__builtin_memset( &TMP$1111$9, 0, 24ll );
									FBSTRING* vr$456 = fb_StrConcat( &TMP$1111$9, (void*)"movd ", 6ll, (void*)vr$453, -1ll );
									__builtin_memset( &TMP$1112$9, 0, 24ll );
									FBSTRING* vr$459 = fb_StrConcat( &TMP$1112$9, (void*)vr$456, -1ll, (void*)"[rbp], xmm", 11ll );
									__builtin_memset( &TMP$1113$9, 0, 24ll );
									FBSTRING* vr$462 = fb_StrConcat( &TMP$1113$9, (void*)vr$459, -1ll, (void*)vr$452, -1ll );
									fb_StrAssign( (void*)&TMP$1114$9, -1ll, (void*)vr$462, -1ll, 0 );
									HWRITEASM64( &TMP$1114$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$1114$9 );
								}
								goto label$842;
								label$843:;
								{
									FBSTRING TMP$1115$9;
									FBSTRING TMP$1116$9;
									FBSTRING TMP$1117$9;
									FBSTRING TMP$1118$9;
									__builtin_memset( &TMP$1118$9, 0, 24ll );
									FBSTRING* vr$468 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 168ll) + -1ll );
									FBSTRING* vr$469 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
									__builtin_memset( &TMP$1115$9, 0, 24ll );
									FBSTRING* vr$472 = fb_StrConcat( &TMP$1115$9, (void*)"movq ", 6ll, (void*)vr$469, -1ll );
									__builtin_memset( &TMP$1116$9, 0, 24ll );
									FBSTRING* vr$475 = fb_StrConcat( &TMP$1116$9, (void*)vr$472, -1ll, (void*)"[rbp], xmm", 11ll );
									__builtin_memset( &TMP$1117$9, 0, 24ll );
									FBSTRING* vr$478 = fb_StrConcat( &TMP$1117$9, (void*)vr$475, -1ll, (void*)vr$468, -1ll );
									fb_StrAssign( (void*)&TMP$1118$9, -1ll, (void*)vr$478, -1ll, 0 );
									HWRITEASM64( &TMP$1118$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$1118$9 );
								}
								label$842:;
							}
							goto label$840;
							label$841:;
							{
								{
									uint64 TMP$1119$9;
									TMP$1119$9 = (uint64)LGT$1;
									goto label$845;
									label$846:;
									{
										FBSTRING TMP$1120$10;
										FBSTRING TMP$1121$10;
										FBSTRING TMP$1122$10;
										FBSTRING TMP$1123$10;
										__builtin_memset( &TMP$1123$10, 0, 24ll );
										FBSTRING* vr$488 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
										__builtin_memset( &TMP$1120$10, 0, 24ll );
										FBSTRING* vr$491 = fb_StrConcat( &TMP$1120$10, (void*)"mov BYTE PTR ", 14ll, (void*)vr$488, -1ll );
										__builtin_memset( &TMP$1121$10, 0, 24ll );
										FBSTRING* vr$494 = fb_StrConcat( &TMP$1121$10, (void*)vr$491, -1ll, (void*)"[rbp], ", 8ll );
										__builtin_memset( &TMP$1122$10, 0, 24ll );
										FBSTRING* vr$497 = fb_StrConcat( &TMP$1122$10, (void*)vr$494, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
										fb_StrAssign( (void*)&TMP$1123$10, -1ll, (void*)vr$497, -1ll, 0 );
										HWRITEASM64( &TMP$1123$10, 0ll );
										fb_StrDelete( (FBSTRING*)&TMP$1123$10 );
									}
									goto label$844;
									label$847:;
									{
										FBSTRING TMP$1124$10;
										FBSTRING TMP$1125$10;
										FBSTRING TMP$1126$10;
										FBSTRING TMP$1127$10;
										__builtin_memset( &TMP$1127$10, 0, 24ll );
										FBSTRING* vr$506 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
										__builtin_memset( &TMP$1124$10, 0, 24ll );
										FBSTRING* vr$509 = fb_StrConcat( &TMP$1124$10, (void*)"mov WORD PTR ", 14ll, (void*)vr$506, -1ll );
										__builtin_memset( &TMP$1125$10, 0, 24ll );
										FBSTRING* vr$512 = fb_StrConcat( &TMP$1125$10, (void*)vr$509, -1ll, (void*)"[rbp], ", 8ll );
										__builtin_memset( &TMP$1126$10, 0, 24ll );
										FBSTRING* vr$515 = fb_StrConcat( &TMP$1126$10, (void*)vr$512, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
										fb_StrAssign( (void*)&TMP$1127$10, -1ll, (void*)vr$515, -1ll, 0 );
										HWRITEASM64( &TMP$1127$10, 0ll );
										fb_StrDelete( (FBSTRING*)&TMP$1127$10 );
									}
									goto label$844;
									label$848:;
									{
										FBSTRING TMP$1128$10;
										FBSTRING TMP$1129$10;
										FBSTRING TMP$1130$10;
										FBSTRING TMP$1131$10;
										__builtin_memset( &TMP$1131$10, 0, 24ll );
										FBSTRING* vr$524 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
										__builtin_memset( &TMP$1128$10, 0, 24ll );
										FBSTRING* vr$527 = fb_StrConcat( &TMP$1128$10, (void*)"mov DWORD PTR ", 15ll, (void*)vr$524, -1ll );
										__builtin_memset( &TMP$1129$10, 0, 24ll );
										FBSTRING* vr$530 = fb_StrConcat( &TMP$1129$10, (void*)vr$527, -1ll, (void*)"[rbp], ", 8ll );
										__builtin_memset( &TMP$1130$10, 0, 24ll );
										FBSTRING* vr$533 = fb_StrConcat( &TMP$1130$10, (void*)vr$530, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
										fb_StrAssign( (void*)&TMP$1131$10, -1ll, (void*)vr$533, -1ll, 0 );
										HWRITEASM64( &TMP$1131$10, 0ll );
										fb_StrDelete( (FBSTRING*)&TMP$1131$10 );
									}
									goto label$844;
									label$849:;
									{
										FBSTRING TMP$1132$10;
										FBSTRING TMP$1133$10;
										FBSTRING TMP$1134$10;
										FBSTRING TMP$1135$10;
										__builtin_memset( &TMP$1135$10, 0, 24ll );
										FBSTRING* vr$542 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
										__builtin_memset( &TMP$1132$10, 0, 24ll );
										FBSTRING* vr$545 = fb_StrConcat( &TMP$1132$10, (void*)"mov QWORD PTR ", 15ll, (void*)vr$542, -1ll );
										__builtin_memset( &TMP$1133$10, 0, 24ll );
										FBSTRING* vr$548 = fb_StrConcat( &TMP$1133$10, (void*)vr$545, -1ll, (void*)"[rbp], ", 8ll );
										__builtin_memset( &TMP$1134$10, 0, 24ll );
										FBSTRING* vr$551 = fb_StrConcat( &TMP$1134$10, (void*)vr$548, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
										fb_StrAssign( (void*)&TMP$1135$10, -1ll, (void*)vr$551, -1ll, 0 );
										HWRITEASM64( &TMP$1135$10, 0ll );
										fb_StrDelete( (FBSTRING*)&TMP$1135$10 );
									}
									goto label$844;
									label$845:;
									static const void* tmp$3855[8ll] = {
										&&label$846,
										&&label$847,
										&&label$844,
										&&label$848,
										&&label$844,
										&&label$844,
										&&label$844,
										&&label$849,
									};
									if( (TMP$1119$9 - 1ull) > 7ull ) goto label$844;
									goto *tmp$3855[TMP$1119$9 - 1ull];
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
						*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
					}
					goto label$832;
					label$833:;
					static const void* tmp$3856[14ll] = {
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
					if( TMP$1104$5 > 13ull ) goto label$850;
					goto *tmp$3856[TMP$1104$5 - 0ull];
					label$832:;
				}
			}
			goto label$830;
			label$831:;
			{
				LGT$1 = (int32)*(int64*)((uint8*)SYM$1 + 80ll);
				*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
				*(int64*)((uint8*)&CTX$ + 168ll) = *(int64*)((uint8*)&CTX$ + 168ll) + 1ll;
				if( ((int64)-(*(int64*)((uint8*)&CTX$ + 168ll) <= 4ll) & (int64)-((int64)-(*(boolean*)((uint8*)&CTX$ + 400ll)) == 0ll)) == 0ll ) goto label$852;
				{
					int64 TMP$1136$5;
					if( (DTYPE$1 & 480ll) == 0ll ) goto label$853;
					TMP$1136$5 = 24ll;
					goto label$2995;
					label$853:;
					TMP$1136$5 = DTYPE$1 & 31ll;
					label$2995:;
					if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1136$5 * 56ll)) != 1ll ) goto label$855;
					{
						if( (int64)LGT$1 != 4ll ) goto label$857;
						{
							FBSTRING TMP$1137$7;
							FBSTRING TMP$1138$7;
							FBSTRING TMP$1139$7;
							FBSTRING TMP$1140$7;
							__builtin_memset( &TMP$1140$7, 0, 24ll );
							FBSTRING* vr$570 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 168ll) + -1ll );
							FBSTRING* vr$571 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
							__builtin_memset( &TMP$1137$7, 0, 24ll );
							FBSTRING* vr$574 = fb_StrConcat( &TMP$1137$7, (void*)"movd ", 6ll, (void*)vr$571, -1ll );
							__builtin_memset( &TMP$1138$7, 0, 24ll );
							FBSTRING* vr$577 = fb_StrConcat( &TMP$1138$7, (void*)vr$574, -1ll, (void*)"[rbp], xmm", 11ll );
							__builtin_memset( &TMP$1139$7, 0, 24ll );
							FBSTRING* vr$580 = fb_StrConcat( &TMP$1139$7, (void*)vr$577, -1ll, (void*)vr$570, -1ll );
							fb_StrAssign( (void*)&TMP$1140$7, -1ll, (void*)vr$580, -1ll, 0 );
							HWRITEASM64( &TMP$1140$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1140$7 );
						}
						goto label$856;
						label$857:;
						{
							FBSTRING TMP$1141$7;
							FBSTRING TMP$1142$7;
							FBSTRING TMP$1143$7;
							FBSTRING TMP$1144$7;
							__builtin_memset( &TMP$1144$7, 0, 24ll );
							FBSTRING* vr$586 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 168ll) + -1ll );
							FBSTRING* vr$587 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
							__builtin_memset( &TMP$1141$7, 0, 24ll );
							FBSTRING* vr$590 = fb_StrConcat( &TMP$1141$7, (void*)"movq ", 6ll, (void*)vr$587, -1ll );
							__builtin_memset( &TMP$1142$7, 0, 24ll );
							FBSTRING* vr$593 = fb_StrConcat( &TMP$1142$7, (void*)vr$590, -1ll, (void*)"[rbp], xmm", 11ll );
							__builtin_memset( &TMP$1143$7, 0, 24ll );
							FBSTRING* vr$596 = fb_StrConcat( &TMP$1143$7, (void*)vr$593, -1ll, (void*)vr$586, -1ll );
							fb_StrAssign( (void*)&TMP$1144$7, -1ll, (void*)vr$596, -1ll, 0 );
							HWRITEASM64( &TMP$1144$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1144$7 );
						}
						label$856:;
					}
					goto label$854;
					label$855:;
					{
						{
							uint64 TMP$1145$7;
							TMP$1145$7 = (uint64)LGT$1;
							goto label$859;
							label$860:;
							{
								FBSTRING TMP$1146$8;
								FBSTRING TMP$1147$8;
								FBSTRING TMP$1148$8;
								FBSTRING TMP$1149$8;
								__builtin_memset( &TMP$1149$8, 0, 24ll );
								FBSTRING* vr$606 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
								__builtin_memset( &TMP$1146$8, 0, 24ll );
								FBSTRING* vr$609 = fb_StrConcat( &TMP$1146$8, (void*)"mov BYTE PTR ", 14ll, (void*)vr$606, -1ll );
								__builtin_memset( &TMP$1147$8, 0, 24ll );
								FBSTRING* vr$612 = fb_StrConcat( &TMP$1147$8, (void*)vr$609, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1148$8, 0, 24ll );
								FBSTRING* vr$615 = fb_StrConcat( &TMP$1148$8, (void*)vr$612, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1149$8, -1ll, (void*)vr$615, -1ll, 0 );
								HWRITEASM64( &TMP$1149$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1149$8 );
							}
							goto label$858;
							label$861:;
							{
								FBSTRING TMP$1150$8;
								FBSTRING TMP$1151$8;
								FBSTRING TMP$1152$8;
								FBSTRING TMP$1153$8;
								__builtin_memset( &TMP$1153$8, 0, 24ll );
								FBSTRING* vr$624 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
								__builtin_memset( &TMP$1150$8, 0, 24ll );
								FBSTRING* vr$627 = fb_StrConcat( &TMP$1150$8, (void*)"mov WORD PTR ", 14ll, (void*)vr$624, -1ll );
								__builtin_memset( &TMP$1151$8, 0, 24ll );
								FBSTRING* vr$630 = fb_StrConcat( &TMP$1151$8, (void*)vr$627, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1152$8, 0, 24ll );
								FBSTRING* vr$633 = fb_StrConcat( &TMP$1152$8, (void*)vr$630, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1153$8, -1ll, (void*)vr$633, -1ll, 0 );
								HWRITEASM64( &TMP$1153$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1153$8 );
							}
							goto label$858;
							label$862:;
							{
								FBSTRING TMP$1154$8;
								FBSTRING TMP$1155$8;
								FBSTRING TMP$1156$8;
								FBSTRING TMP$1157$8;
								__builtin_memset( &TMP$1157$8, 0, 24ll );
								FBSTRING* vr$642 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
								__builtin_memset( &TMP$1154$8, 0, 24ll );
								FBSTRING* vr$645 = fb_StrConcat( &TMP$1154$8, (void*)"mov DWORD PTR ", 15ll, (void*)vr$642, -1ll );
								__builtin_memset( &TMP$1155$8, 0, 24ll );
								FBSTRING* vr$648 = fb_StrConcat( &TMP$1155$8, (void*)vr$645, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1156$8, 0, 24ll );
								FBSTRING* vr$651 = fb_StrConcat( &TMP$1156$8, (void*)vr$648, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1157$8, -1ll, (void*)vr$651, -1ll, 0 );
								HWRITEASM64( &TMP$1157$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1157$8 );
							}
							goto label$858;
							label$863:;
							{
								FBSTRING TMP$1158$8;
								FBSTRING TMP$1159$8;
								FBSTRING TMP$1160$8;
								FBSTRING TMP$1161$8;
								__builtin_memset( &TMP$1161$8, 0, 24ll );
								FBSTRING* vr$660 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
								__builtin_memset( &TMP$1158$8, 0, 24ll );
								FBSTRING* vr$663 = fb_StrConcat( &TMP$1158$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$660, -1ll );
								__builtin_memset( &TMP$1159$8, 0, 24ll );
								FBSTRING* vr$666 = fb_StrConcat( &TMP$1159$8, (void*)vr$663, -1ll, (void*)"[rbp], ", 8ll );
								__builtin_memset( &TMP$1160$8, 0, 24ll );
								FBSTRING* vr$669 = fb_StrConcat( &TMP$1160$8, (void*)vr$666, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								fb_StrAssign( (void*)&TMP$1161$8, -1ll, (void*)vr$669, -1ll, 0 );
								HWRITEASM64( &TMP$1161$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$1161$8 );
							}
							goto label$858;
							label$859:;
							static const void* tmp$3857[8ll] = {
								&&label$860,
								&&label$861,
								&&label$858,
								&&label$862,
								&&label$858,
								&&label$858,
								&&label$858,
								&&label$863,
							};
							if( (TMP$1145$7 - 1ull) > 7ull ) goto label$858;
							goto *tmp$3857[TMP$1145$7 - 1ull];
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
			*(int64*)((uint8*)&CTX$ + 168ll) = *(int64*)((uint8*)&CTX$ + 168ll) + 1ll;
			*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)&CTX$ + 184ll);
			if( ((int64)-(*(int64*)((uint8*)&CTX$ + 168ll) <= 4ll) & (int64)-((int64)-(*(boolean*)((uint8*)&CTX$ + 400ll)) == 0ll)) == 0ll ) goto label$865;
			{
				FBSTRING TMP$1162$4;
				FBSTRING TMP$1163$4;
				FBSTRING TMP$1164$4;
				FBSTRING TMP$1165$4;
				__builtin_memset( &TMP$1165$4, 0, 24ll );
				FBSTRING* vr$684 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 184ll) );
				__builtin_memset( &TMP$1162$4, 0, 24ll );
				FBSTRING* vr$687 = fb_StrConcat( &TMP$1162$4, (void*)"mov QWORD PTR ", 15ll, (void*)vr$684, -1ll );
				__builtin_memset( &TMP$1163$4, 0, 24ll );
				FBSTRING* vr$690 = fb_StrConcat( &TMP$1163$4, (void*)vr$687, -1ll, (void*)"[rbp], ", 8ll );
				__builtin_memset( &TMP$1164$4, 0, 24ll );
				FBSTRING* vr$693 = fb_StrConcat( &TMP$1164$4, (void*)vr$690, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((*(int64*)((uint8*)&CTX$ + 168ll) << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
				fb_StrAssign( (void*)&TMP$1165$4, -1ll, (void*)vr$693, -1ll, 0 );
				HWRITEASM64( &TMP$1165$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1165$4 );
			}
			label$865:;
			label$864:;
		}
		label$828:;
	}
	label$785:;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$867;
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
	*(int64*)((uint8*)&CTX$ + 8ll) = 2ll;
	label$872:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$873;
	{
		{
			$12FB_SYMBCLASS TMP$1166$3;
			TMP$1166$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$1166$3 != 15ll ) goto label$875;
			label$876:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 112ll) );
			}
			goto label$874;
			label$875:;
			if( TMP$1166$3 != 1ll ) goto label$877;
			label$878:;
			{
				if( (*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) == 0ll ) goto label$880;
				{
					HMAYBEEMITGLOBALVAR( SYM$1 );
				}
				label$880:;
				label$879:;
			}
			label$877:;
			label$874:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
	}
	goto label$872;
	label$873:;
	label$871:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$881:;
	struct $6IRVREG* TEMP0$1;
	if( ((int64)-(*(int64*)((uint8*)V$1 + 8ll) != DTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) != SUBTYPE$1)) == 0ll ) goto label$884;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		_EMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 120 );
	}
	label$884:;
	label$883:;
	label$882:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$885:;
	if( ((int64)-(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) == LABEL$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) == LABEL$1)) == 0ll ) goto label$888;
	{
		REG_BRANCH( LABEL$1 );
	}
	goto label$887;
	label$888:;
	{
		FBSTRING TMP$1167$2;
		FBSTRING TMP$1168$2;
		__builtin_memset( &TMP$1168$2, 0, 24ll );
		uint8* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$1167$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$1167$2, (void*)vr$4, 0ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$1168$2, -1ll, (void*)vr$7, -1ll, 0 );
		HWRITEASM64( &TMP$1168$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1168$2 );
	}
	label$887:;
	if( *(boolean*)((uint8*)LABEL$1 + 120ll) == (boolean)0ll ) goto label$890;
	{
		FBSTRING TMP$1170$2;
		__builtin_memset( &TMP$1170$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1170$2, -1ll, (void*)"push rax #dummy push for gosub", 31ll, 0 );
		HWRITEASM64( &TMP$1170$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1170$2 );
	}
	label$890:;
	label$889:;
	label$886:;
}

static void PREPARE_IDX( struct $6IRVREG* V1$1, FBSTRING* OP1$1, FBSTRING* OP3$1 )
{
	FBSTRING TMP$1241$1;
	FBSTRING TMP$1244$1;
	FBSTRING TMP$1245$1;
	label$891:;
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 24ll );
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$894;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$896;
		{
			if( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) == -1ll ) goto label$898;
			{
				FBSTRING TMP$1171$4;
				FBSTRING TMP$1172$4;
				FBSTRING TMP$1173$4;
				int32 vr$9 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
				FBSTRING* vr$13 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1171$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$1171$4, (void*)vr$13, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1172$4, 0, 24ll );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$1172$4, (void*)vr$16, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$9 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1173$4, 0, 24ll );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$1173$4, (void*)vr$19, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$22, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			goto label$897;
			label$898:;
			{
				FBSTRING TMP$1174$4;
				FBSTRING TMP$1175$4;
				FBSTRING TMP$1176$4;
				FBSTRING TMP$1177$4;
				FBSTRING TMP$1178$4;
				FBSTRING TMP$1179$4;
				FBSTRING TMP$1180$4;
				FBSTRING TMP$1181$4;
				int32 vr$28 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 80ll) + 24ll) );
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$28 << (3ll & 63ll))), 0ll, 0 );
				__builtin_memset( &TMP$1174$4, 0, 24ll );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$1174$4, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1175$4, 0, 24ll );
				FBSTRING* vr$39 = fb_StrConcat( &TMP$1175$4, (void*)vr$36, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1176$4, 0, 24ll );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$1176$4, (void*)vr$39, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1177$4, 0, 24ll );
				FBSTRING* vr$45 = fb_StrConcat( &TMP$1177$4, (void*)vr$42, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1178$4, 0, 24ll );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$1178$4, (void*)vr$45, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$48, -1ll, 0 );
				FBSTRING* vr$51 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1179$4, 0, 24ll );
				FBSTRING* vr$54 = fb_StrConcat( &TMP$1179$4, (void*)vr$51, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1180$4, 0, 24ll );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$1180$4, (void*)vr$54, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1181$4, 0, 24ll );
				FBSTRING* vr$60 = fb_StrConcat( &TMP$1181$4, (void*)vr$57, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$60, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			label$897:;
		}
		goto label$895;
		label$896:;
		{
			uint8* vr$62 = REG_TEMPO(  );
			fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$62, 0ll, 0 );
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$900;
			{
				FBSTRING TMP$1183$4;
				FBSTRING TMP$1184$4;
				FBSTRING TMP$1185$4;
				FBSTRING TMP$1186$4;
				FBSTRING TMP$1187$4;
				FBSTRING TMP$1188$4;
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
				FBSTRING TMP$1200$4;
				FBSTRING* vr$77 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 64ll) );
				uint8* vr$80 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) );
				__builtin_memset( &TMP$1183$4, 0, 24ll );
				FBSTRING* vr$84 = fb_StrConcat( &TMP$1183$4, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1184$4, 0, 24ll );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$1184$4, (void*)vr$84, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1185$4, 0, 24ll );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$1185$4, (void*)vr$87, -1ll, (void*)vr$80, 0ll );
				__builtin_memset( &TMP$1186$4, 0, 24ll );
				FBSTRING* vr$93 = fb_StrConcat( &TMP$1186$4, (void*)vr$90, -1ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$1187$4, 0, 24ll );
				FBSTRING* vr$96 = fb_StrConcat( &TMP$1187$4, (void*)vr$93, -1ll, (void*)vr$77, -1ll );
				__builtin_memset( &TMP$1188$4, 0, 24ll );
				FBSTRING* vr$99 = fb_StrConcat( &TMP$1188$4, (void*)vr$96, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$99, -1ll, 0 );
				FBSTRING* vr$103 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$1190$4, 0, 24ll );
				FBSTRING* vr$106 = fb_StrConcat( &TMP$1190$4, (void*)"\x0D\x0A", 3ll, (void*)vr$103, -1ll );
				__builtin_memset( &TMP$1191$4, 0, 24ll );
				FBSTRING* vr$109 = fb_StrConcat( &TMP$1191$4, (void*)vr$106, -1ll, (void*)"mov ", 5ll );
				__builtin_memset( &TMP$1192$4, 0, 24ll );
				FBSTRING* vr$112 = fb_StrConcat( &TMP$1192$4, (void*)vr$109, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1193$4, 0, 24ll );
				FBSTRING* vr$115 = fb_StrConcat( &TMP$1193$4, (void*)vr$112, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1194$4, 0, 24ll );
				FBSTRING* vr$118 = fb_StrConcat( &TMP$1194$4, (void*)vr$115, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1195$4, 0, 24ll );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$1195$4, (void*)vr$118, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1196$4, 0, 24ll );
				FBSTRING* vr$124 = fb_StrConcat( &TMP$1196$4, (void*)vr$121, -1ll, (void*)"] #NO", 6ll );
				__builtin_memset( &TMP$1197$4, 0, 24ll );
				FBSTRING* vr$127 = fb_StrConcat( &TMP$1197$4, (void*)OP3$1, -1ll, (void*)vr$124, -1ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$127, -1ll, 0 );
				FBSTRING* vr$130 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1198$4, 0, 24ll );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$1198$4, (void*)vr$130, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1199$4, 0, 24ll );
				FBSTRING* vr$136 = fb_StrConcat( &TMP$1199$4, (void*)vr$133, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1200$4, 0, 24ll );
				FBSTRING* vr$139 = fb_StrConcat( &TMP$1200$4, (void*)vr$136, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$139, -1ll, 0 );
				fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
				goto label$892;
			}
			goto label$899;
			label$900:;
			{
				FBSTRING TMP$1201$4;
				FBSTRING TMP$1202$4;
				FBSTRING TMP$1203$4;
				FBSTRING TMP$1204$4;
				FBSTRING TMP$1205$4;
				FBSTRING TMP$1206$4;
				FBSTRING TMP$1207$4;
				FBSTRING* vr$143 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 64ll) );
				__builtin_memset( &TMP$1201$4, 0, 24ll );
				FBSTRING* vr$147 = fb_StrConcat( &TMP$1201$4, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1202$4, 0, 24ll );
				FBSTRING* vr$150 = fb_StrConcat( &TMP$1202$4, (void*)vr$147, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1203$4, 0, 24ll );
				FBSTRING* vr$153 = fb_StrConcat( &TMP$1203$4, (void*)vr$150, -1ll, (void*)vr$143, -1ll );
				__builtin_memset( &TMP$1204$4, 0, 24ll );
				FBSTRING* vr$156 = fb_StrConcat( &TMP$1204$4, (void*)vr$153, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$156, -1ll, 0 );
				FBSTRING* vr$159 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1205$4, 0, 24ll );
				FBSTRING* vr$162 = fb_StrConcat( &TMP$1205$4, (void*)vr$159, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$1206$4, 0, 24ll );
				FBSTRING* vr$165 = fb_StrConcat( &TMP$1206$4, (void*)vr$162, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1207$4, 0, 24ll );
				FBSTRING* vr$168 = fb_StrConcat( &TMP$1207$4, (void*)vr$165, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$168, -1ll, 0 );
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
		uint8* vr$170 = REG_TEMPO(  );
		fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$170, 0ll, 0 );
		if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$902;
		{
			FBSTRING TMP$1208$3;
			FBSTRING TMP$1209$3;
			FBSTRING TMP$1210$3;
			FBSTRING TMP$1211$3;
			FBSTRING TMP$1212$3;
			FBSTRING TMP$1213$3;
			FBSTRING* vr$182 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			uint8* vr$184 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
			__builtin_memset( &TMP$1208$3, 0, 24ll );
			FBSTRING* vr$188 = fb_StrConcat( &TMP$1208$3, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
			__builtin_memset( &TMP$1209$3, 0, 24ll );
			FBSTRING* vr$191 = fb_StrConcat( &TMP$1209$3, (void*)vr$188, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1210$3, 0, 24ll );
			FBSTRING* vr$194 = fb_StrConcat( &TMP$1210$3, (void*)vr$191, -1ll, (void*)vr$184, 0ll );
			__builtin_memset( &TMP$1211$3, 0, 24ll );
			FBSTRING* vr$197 = fb_StrConcat( &TMP$1211$3, (void*)vr$194, -1ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$1212$3, 0, 24ll );
			FBSTRING* vr$200 = fb_StrConcat( &TMP$1212$3, (void*)vr$197, -1ll, (void*)vr$182, -1ll );
			__builtin_memset( &TMP$1213$3, 0, 24ll );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$1213$3, (void*)vr$200, -1ll, (void*)"] #NO", 6ll );
			fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$203, -1ll, 0 );
		}
		goto label$901;
		label$902:;
		{
			FBSTRING TMP$1214$3;
			FBSTRING TMP$1215$3;
			FBSTRING TMP$1216$3;
			FBSTRING TMP$1217$3;
			FBSTRING* vr$205 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			__builtin_memset( &TMP$1214$3, 0, 24ll );
			FBSTRING* vr$209 = fb_StrConcat( &TMP$1214$3, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
			__builtin_memset( &TMP$1215$3, 0, 24ll );
			FBSTRING* vr$212 = fb_StrConcat( &TMP$1215$3, (void*)vr$209, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1216$3, 0, 24ll );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$1216$3, (void*)vr$212, -1ll, (void*)vr$205, -1ll );
			__builtin_memset( &TMP$1217$3, 0, 24ll );
			FBSTRING* vr$218 = fb_StrConcat( &TMP$1217$3, (void*)vr$215, -1ll, (void*)"[rbp]", 6ll );
			fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$218, -1ll, 0 );
		}
		label$901:;
		if( *(int64*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) != 4ll ) goto label$904;
		{
			FBSTRING TMP$1219$3;
			FBSTRING TMP$1220$3;
			FBSTRING TMP$1221$3;
			FBSTRING TMP$1222$3;
			int32 vr$224 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
			__builtin_memset( &TMP$1219$3, 0, 24ll );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$1219$3, (void*)"[", 2ll, (void*)&REGTEMPO$1, -1ll );
			__builtin_memset( &TMP$1220$3, 0, 24ll );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$1220$3, (void*)vr$230, -1ll, (void*)"+", 2ll );
			__builtin_memset( &TMP$1221$3, 0, 24ll );
			FBSTRING* vr$236 = fb_StrConcat( &TMP$1221$3, (void*)vr$233, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$224 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1222$3, 0, 24ll );
			FBSTRING* vr$239 = fb_StrConcat( &TMP$1222$3, (void*)vr$236, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$239, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$892;
		}
		goto label$903;
		label$904:;
		if( *(int64*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) != 1ll ) goto label$905;
		{
			FBSTRING TMP$1239$3;
			FBSTRING TMP$1240$3;
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$907;
			{
				FBSTRING TMP$1223$4;
				FBSTRING TMP$1224$4;
				FBSTRING TMP$1225$4;
				FBSTRING TMP$1226$4;
				FBSTRING TMP$1227$4;
				FBSTRING TMP$1228$4;
				FBSTRING TMP$1229$4;
				FBSTRING TMP$1230$4;
				FBSTRING TMP$1231$4;
				FBSTRING* vr$256 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 64ll) );
				uint8* vr$259 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 56ll) );
				FBSTRING* vr$262 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$1223$4, 0, 24ll );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$1223$4, (void*)"\x0D\x0A", 3ll, (void*)vr$262, -1ll );
				__builtin_memset( &TMP$1224$4, 0, 24ll );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$1224$4, (void*)vr$265, -1ll, (void*)"add ", 5ll );
				__builtin_memset( &TMP$1225$4, 0, 24ll );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1225$4, (void*)vr$268, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1226$4, 0, 24ll );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$1226$4, (void*)vr$271, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1227$4, 0, 24ll );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$1227$4, (void*)vr$274, -1ll, (void*)vr$259, 0ll );
				__builtin_memset( &TMP$1228$4, 0, 24ll );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$1228$4, (void*)vr$277, -1ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$1229$4, 0, 24ll );
				FBSTRING* vr$283 = fb_StrConcat( &TMP$1229$4, (void*)vr$280, -1ll, (void*)vr$256, -1ll );
				__builtin_memset( &TMP$1230$4, 0, 24ll );
				FBSTRING* vr$286 = fb_StrConcat( &TMP$1230$4, (void*)vr$283, -1ll, (void*)"]", 2ll );
				__builtin_memset( &TMP$1231$4, 0, 24ll );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$1231$4, (void*)OP3$1, -1ll, (void*)vr$286, -1ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$289, -1ll, 0 );
			}
			goto label$906;
			label$907:;
			{
				FBSTRING TMP$1232$4;
				FBSTRING TMP$1233$4;
				FBSTRING TMP$1234$4;
				FBSTRING TMP$1235$4;
				FBSTRING TMP$1236$4;
				FBSTRING TMP$1237$4;
				FBSTRING TMP$1238$4;
				FBSTRING* vr$292 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 64ll) );
				FBSTRING* vr$295 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				__builtin_memset( &TMP$1232$4, 0, 24ll );
				FBSTRING* vr$298 = fb_StrConcat( &TMP$1232$4, (void*)"\x0D\x0A", 3ll, (void*)vr$295, -1ll );
				__builtin_memset( &TMP$1233$4, 0, 24ll );
				FBSTRING* vr$301 = fb_StrConcat( &TMP$1233$4, (void*)vr$298, -1ll, (void*)"add ", 5ll );
				__builtin_memset( &TMP$1234$4, 0, 24ll );
				FBSTRING* vr$304 = fb_StrConcat( &TMP$1234$4, (void*)vr$301, -1ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1235$4, 0, 24ll );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$1235$4, (void*)vr$304, -1ll, (void*)",", 2ll );
				__builtin_memset( &TMP$1236$4, 0, 24ll );
				FBSTRING* vr$310 = fb_StrConcat( &TMP$1236$4, (void*)vr$307, -1ll, (void*)vr$292, -1ll );
				__builtin_memset( &TMP$1237$4, 0, 24ll );
				FBSTRING* vr$313 = fb_StrConcat( &TMP$1237$4, (void*)vr$310, -1ll, (void*)"[rbp]", 6ll );
				__builtin_memset( &TMP$1238$4, 0, 24ll );
				FBSTRING* vr$316 = fb_StrConcat( &TMP$1238$4, (void*)OP3$1, -1ll, (void*)vr$313, -1ll );
				fb_StrAssign( (void*)OP3$1, -1ll, (void*)vr$316, -1ll, 0 );
			}
			label$906:;
			__builtin_memset( &TMP$1239$3, 0, 24ll );
			FBSTRING* vr$320 = fb_StrConcat( &TMP$1239$3, (void*)"[", 2ll, (void*)&REGTEMPO$1, -1ll );
			__builtin_memset( &TMP$1240$3, 0, 24ll );
			FBSTRING* vr$323 = fb_StrConcat( &TMP$1240$3, (void*)vr$320, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$323, -1ll, 0 );
			fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
			goto label$892;
		}
		label$905:;
		label$903:;
	}
	label$893:;
	__builtin_memset( &TMP$1241$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$1241$1, -1ll, (void*)"", 1ll, 0 );
	HWRITEASM64( &TMP$1241$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$1241$1 );
	__builtin_memset( &TMP$1244$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$1244$1, -1ll, (void*)"FOUND AN ERROR : prepare_IDX case not handled 01", 49ll, 0 );
	HWRITEASM64( &TMP$1244$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$1244$1 );
	__builtin_memset( &TMP$1245$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$1245$1, -1ll, (void*)"", 1ll, 0 );
	HWRITEASM64( &TMP$1245$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$1245$1 );
	int32 vr$337 = fb_StrCompare( (void*)OP1$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$337 != 0ll ) goto label$909;
	{
		fb_StrAssign( (void*)OP1$1, -1ll, (void*)"X X", 4ll, 0 );
		label$909:;
	}
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	label$892:;
}

static uint8* HGETBOPCODE( int64 OP$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$910:;
	{
		uint64 TMP$1247$2;
		TMP$1247$2 = (uint64)OP$1;
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
		static const void* tmp$3858[72ll] = {
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
		if( (TMP$1247$2 - 28ull) > 71ull ) goto label$941;
		goto *tmp$3858[TMP$1247$2 - 28ull];
		label$912:;
	}
	label$911:;
	return fb$result$1;
}

static void RESTORE_VRREG( struct $6IRVREG* VR$1, int64 VRREG$1 )
{
	label$942:;
	*(int64*)((uint8*)&CTX$ + 416ll) = VRREG$1;
	*(int64*)((uint8*)&CTX$ + 424ll) = 1ll;
	if( (int64)*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2ll & 63ll))) != -2ll ) goto label$945;
	{
		*(int32*)((uint8*)REGHANDLE$ + (VRREG$1 << (2ll & 63ll))) = (int32)*(int64*)((uint8*)VR$1 + 24ll);
	}
	label$945:;
	label$944:;
	label$943:;
}

static void BOP_FLOAT( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, FBSTRING* OP1$1, FBSTRING* OP2$1, FBSTRING* OP3$1, FBSTRING* OP4$1, FBSTRING* PREFIX$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$946:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 24ll );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 24ll );
	FBSTRING MOVREG$1;
	__builtin_memset( &MOVREG$1, 0, 24ll );
	FBSTRING MOVMEM$1;
	__builtin_memset( &MOVMEM$1, 0, 24ll );
	FBSTRING COMPREG$1;
	__builtin_memset( &COMPREG$1, 0, 24ll );
	FBSTRING IMMREG$1;
	__builtin_memset( &IMMREG$1, 0, 24ll );
	FBSTRING ADDREG$1;
	__builtin_memset( &ADDREG$1, 0, 24ll );
	FBSTRING SUBREG$1;
	__builtin_memset( &SUBREG$1, 0, 24ll );
	FBSTRING MULREG$1;
	__builtin_memset( &MULREG$1, 0, 24ll );
	FBSTRING DIVREG$1;
	__builtin_memset( &DIVREG$1, 0, 24ll );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4ll );
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 8ll );
	uint8* JMPCODE$1;
	__builtin_memset( &JMPCODE$1, 0, 8ll );
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$949;
	{
		int32 vr$15 = REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
		VRREG$1 = vr$15;
	}
	label$949:;
	label$948:;
	V1DTYPE$1 = *(int64*)((uint8*)V1$1 + 8ll) & 511ll;
	if( V1DTYPE$1 != 16ll ) goto label$951;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1ll, (void*)"movq ", 6ll, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1ll, (void*)"movsd ", 7ll, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1ll, (void*)"ucomisd ", 9ll, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1ll, (void*)"rax", 4ll, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1ll, (void*)"addsd ", 7ll, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1ll, (void*)"subsd ", 7ll, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1ll, (void*)"mulsd ", 7ll, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1ll, (void*)"divsd ", 7ll, 0 );
	}
	goto label$950;
	label$951:;
	{
		fb_StrAssign( (void*)&MOVREG$1, -1ll, (void*)"movd ", 6ll, 0 );
		fb_StrAssign( (void*)&MOVMEM$1, -1ll, (void*)"movss ", 7ll, 0 );
		fb_StrAssign( (void*)&COMPREG$1, -1ll, (void*)"ucomiss ", 9ll, 0 );
		fb_StrAssign( (void*)&IMMREG$1, -1ll, (void*)"eax", 4ll, 0 );
		fb_StrAssign( (void*)&ADDREG$1, -1ll, (void*)"addss ", 7ll, 0 );
		fb_StrAssign( (void*)&SUBREG$1, -1ll, (void*)"subss ", 7ll, 0 );
		fb_StrAssign( (void*)&MULREG$1, -1ll, (void*)"mulss ", 7ll, 0 );
		fb_StrAssign( (void*)&DIVREG$1, -1ll, (void*)"divss ", 7ll, 0 );
	}
	label$950:;
	if( *(int64*)V1$1 != 4ll ) goto label$953;
	{
		FBSTRING TMP$1286$2;
		FBSTRING TMP$1287$2;
		FBSTRING TMP$1288$2;
		__builtin_memset( &TMP$1288$2, 0, 24ll );
		__builtin_memset( &TMP$1286$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$1286$2, (void*)&MOVREG$1, -1ll, (void*)"xmm0, ", 7ll );
		__builtin_memset( &TMP$1287$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$1287$2, (void*)vr$39, -1ll, (void*)OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1288$2, -1ll, (void*)vr$42, -1ll, 0 );
		HWRITEASM64( &TMP$1288$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1288$2 );
	}
	goto label$952;
	label$953:;
	if( *(int64*)V1$1 != 0ll ) goto label$954;
	{
		FBSTRING TMP$1289$2;
		FBSTRING TMP$1290$2;
		FBSTRING TMP$1291$2;
		FBSTRING TMP$1292$2;
		FBSTRING TMP$1293$2;
		FBSTRING TMP$1294$2;
		FBSTRING TMP$1295$2;
		__builtin_memset( &TMP$1292$2, 0, 24ll );
		__builtin_memset( &TMP$1289$2, 0, 24ll );
		FBSTRING* vr$51 = fb_StrConcat( &TMP$1289$2, (void*)"mov ", 5ll, (void*)&IMMREG$1, -1ll );
		__builtin_memset( &TMP$1290$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$1290$2, (void*)vr$51, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1291$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$1291$2, (void*)vr$54, -1ll, (void*)OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1292$2, -1ll, (void*)vr$57, -1ll, 0 );
		HWRITEASM64( &TMP$1292$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1292$2 );
		__builtin_memset( &TMP$1295$2, 0, 24ll );
		__builtin_memset( &TMP$1293$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$1293$2, (void*)&MOVREG$1, -1ll, (void*)"xmm0, ", 7ll );
		__builtin_memset( &TMP$1294$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$1294$2, (void*)vr$66, -1ll, (void*)&IMMREG$1, -1ll );
		fb_StrAssign( (void*)&TMP$1295$2, -1ll, (void*)vr$69, -1ll, 0 );
		HWRITEASM64( &TMP$1295$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1295$2 );
	}
	goto label$952;
	label$954:;
	{
		FBSTRING TMP$1296$2;
		FBSTRING TMP$1297$2;
		FBSTRING TMP$1298$2;
		__builtin_memset( &TMP$1298$2, 0, 24ll );
		__builtin_memset( &TMP$1296$2, 0, 24ll );
		FBSTRING* vr$77 = fb_StrConcat( &TMP$1296$2, (void*)&MOVMEM$1, -1ll, (void*)"xmm0, ", 7ll );
		__builtin_memset( &TMP$1297$2, 0, 24ll );
		FBSTRING* vr$80 = fb_StrConcat( &TMP$1297$2, (void*)vr$77, -1ll, (void*)OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1298$2, -1ll, (void*)vr$80, -1ll, 0 );
		HWRITEASM64( &TMP$1298$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1298$2 );
	}
	label$952:;
	if( *(int64*)V2$1 != 4ll ) goto label$956;
	{
		FBSTRING TMP$1300$2;
		FBSTRING TMP$1301$2;
		FBSTRING TMP$1302$2;
		__builtin_memset( &TMP$1302$2, 0, 24ll );
		__builtin_memset( &TMP$1300$2, 0, 24ll );
		FBSTRING* vr$89 = fb_StrConcat( &TMP$1300$2, (void*)&MOVREG$1, -1ll, (void*)"xmm1, ", 7ll );
		__builtin_memset( &TMP$1301$2, 0, 24ll );
		FBSTRING* vr$92 = fb_StrConcat( &TMP$1301$2, (void*)vr$89, -1ll, (void*)OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$1302$2, -1ll, (void*)vr$92, -1ll, 0 );
		HWRITEASM64( &TMP$1302$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1302$2 );
	}
	goto label$955;
	label$956:;
	if( *(int64*)V2$1 != 0ll ) goto label$957;
	{
		FBSTRING TMP$1303$2;
		FBSTRING TMP$1304$2;
		FBSTRING TMP$1305$2;
		FBSTRING TMP$1306$2;
		FBSTRING TMP$1307$2;
		FBSTRING TMP$1308$2;
		FBSTRING TMP$1309$2;
		__builtin_memset( &TMP$1306$2, 0, 24ll );
		__builtin_memset( &TMP$1303$2, 0, 24ll );
		FBSTRING* vr$101 = fb_StrConcat( &TMP$1303$2, (void*)"mov ", 5ll, (void*)&IMMREG$1, -1ll );
		__builtin_memset( &TMP$1304$2, 0, 24ll );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$1304$2, (void*)vr$101, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$1305$2, 0, 24ll );
		FBSTRING* vr$107 = fb_StrConcat( &TMP$1305$2, (void*)vr$104, -1ll, (void*)OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$1306$2, -1ll, (void*)vr$107, -1ll, 0 );
		HWRITEASM64( &TMP$1306$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1306$2 );
		__builtin_memset( &TMP$1309$2, 0, 24ll );
		__builtin_memset( &TMP$1307$2, 0, 24ll );
		FBSTRING* vr$116 = fb_StrConcat( &TMP$1307$2, (void*)&MOVREG$1, -1ll, (void*)"xmm1, ", 7ll );
		__builtin_memset( &TMP$1308$2, 0, 24ll );
		FBSTRING* vr$119 = fb_StrConcat( &TMP$1308$2, (void*)vr$116, -1ll, (void*)&IMMREG$1, -1ll );
		fb_StrAssign( (void*)&TMP$1309$2, -1ll, (void*)vr$119, -1ll, 0 );
		HWRITEASM64( &TMP$1309$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1309$2 );
	}
	goto label$955;
	label$957:;
	{
		FBSTRING TMP$1310$2;
		FBSTRING TMP$1311$2;
		FBSTRING TMP$1312$2;
		__builtin_memset( &TMP$1312$2, 0, 24ll );
		__builtin_memset( &TMP$1310$2, 0, 24ll );
		FBSTRING* vr$127 = fb_StrConcat( &TMP$1310$2, (void*)&MOVMEM$1, -1ll, (void*)"xmm1, ", 7ll );
		__builtin_memset( &TMP$1311$2, 0, 24ll );
		FBSTRING* vr$130 = fb_StrConcat( &TMP$1311$2, (void*)vr$127, -1ll, (void*)OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$1312$2, -1ll, (void*)vr$130, -1ll, 0 );
		HWRITEASM64( &TMP$1312$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1312$2 );
	}
	label$955:;
	{
		if( OP$1 == 45ll ) goto label$960;
		label$961:;
		if( OP$1 == 48ll ) goto label$960;
		label$962:;
		if( OP$1 == 47ll ) goto label$960;
		label$963:;
		if( OP$1 == 50ll ) goto label$960;
		label$964:;
		if( OP$1 == 46ll ) goto label$960;
		label$965:;
		if( OP$1 != 49ll ) goto label$959;
		label$960:;
		{
			FBSTRING TMP$1318$3;
			FBSTRING TMP$1319$3;
			if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$967;
			{
				FBSTRING TMP$1314$4;
				FBSTRING TMP$1315$4;
				FBSTRING TMP$1316$4;
				uint8* vr$134 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$134, 0ll, 0 );
				__builtin_memset( &TMP$1316$4, 0, 24ll );
				__builtin_memset( &TMP$1314$4, 0, 24ll );
				FBSTRING* vr$141 = fb_StrConcat( &TMP$1314$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1315$4, 0, 24ll );
				FBSTRING* vr$144 = fb_StrConcat( &TMP$1315$4, (void*)vr$141, -1ll, (void*)", -1", 5ll );
				fb_StrAssign( (void*)&TMP$1316$4, -1ll, (void*)vr$144, -1ll, 0 );
				HWRITEASM64( &TMP$1316$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1316$4 );
			}
			label$967:;
			label$966:;
			__builtin_memset( &TMP$1319$3, 0, 24ll );
			__builtin_memset( &TMP$1318$3, 0, 24ll );
			FBSTRING* vr$152 = fb_StrConcat( &TMP$1318$3, (void*)&COMPREG$1, -1ll, (void*)"xmm0, xmm1", 11ll );
			fb_StrAssign( (void*)&TMP$1319$3, -1ll, (void*)vr$152, -1ll, 0 );
			HWRITEASM64( &TMP$1319$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1319$3 );
			if( OP$1 != 45ll ) goto label$969;
			{
				FBSTRING TMP$1321$4;
				FBSTRING TMP$1322$4;
				uint8* vr$156 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$156, 0ll, 0 );
				__builtin_memset( &TMP$1322$4, 0, 24ll );
				__builtin_memset( &TMP$1321$4, 0, 24ll );
				FBSTRING* vr$162 = fb_StrConcat( &TMP$1321$4, (void*)"jp ", 4ll, (void*)&LNAME2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1322$4, -1ll, (void*)vr$162, -1ll, 0 );
				HWRITEASM64( &TMP$1322$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1322$4 );
			}
			goto label$968;
			label$969:;
			if( OP$1 != 48ll ) goto label$970;
			{
				if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$972;
				{
					FBSTRING TMP$1323$5;
					FBSTRING TMP$1324$5;
					__builtin_memset( &TMP$1324$5, 0, 24ll );
					__builtin_memset( &TMP$1323$5, 0, 24ll );
					FBSTRING* vr$170 = fb_StrConcat( &TMP$1323$5, (void*)"jp ", 4ll, (void*)&LNAME1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1324$5, -1ll, (void*)vr$170, -1ll, 0 );
					HWRITEASM64( &TMP$1324$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1324$5 );
				}
				goto label$971;
				label$972:;
				{
					FBSTRING TMP$1325$5;
					FBSTRING TMP$1326$5;
					__builtin_memset( &TMP$1326$5, 0, 24ll );
					uint8* vr$175 = SYMBGETMANGLEDNAME( LABEL$1 );
					__builtin_memset( &TMP$1325$5, 0, 24ll );
					FBSTRING* vr$178 = fb_StrConcat( &TMP$1325$5, (void*)"jp ", 4ll, (void*)vr$175, 0ll );
					fb_StrAssign( (void*)&TMP$1326$5, -1ll, (void*)vr$178, -1ll, 0 );
					HWRITEASM64( &TMP$1326$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1326$5 );
				}
				label$971:;
			}
			label$970:;
			label$968:;
			{
				if( OP$1 != 45ll ) goto label$974;
				label$975:;
				{
					JMPCODE$1 = (uint8*)"je ";
				}
				goto label$973;
				label$974:;
				if( OP$1 != 48ll ) goto label$976;
				label$977:;
				{
					JMPCODE$1 = (uint8*)"jne ";
				}
				goto label$973;
				label$976:;
				if( OP$1 != 47ll ) goto label$978;
				label$979:;
				{
					JMPCODE$1 = (uint8*)"jb ";
				}
				goto label$973;
				label$978:;
				if( OP$1 != 50ll ) goto label$980;
				label$981:;
				{
					JMPCODE$1 = (uint8*)"jbe ";
				}
				goto label$973;
				label$980:;
				if( OP$1 != 46ll ) goto label$982;
				label$983:;
				{
					JMPCODE$1 = (uint8*)"ja ";
				}
				goto label$973;
				label$982:;
				if( OP$1 != 49ll ) goto label$984;
				label$985:;
				{
					JMPCODE$1 = (uint8*)"jae ";
				}
				label$984:;
				label$973:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$987;
			{
				FBSTRING TMP$1333$4;
				FBSTRING TMP$1334$4;
				__builtin_memset( &TMP$1334$4, 0, 24ll );
				__builtin_memset( &TMP$1333$4, 0, 24ll );
				FBSTRING* vr$186 = fb_StrConcat( &TMP$1333$4, (void*)JMPCODE$1, 0ll, (void*)&LNAME1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1334$4, -1ll, (void*)vr$186, -1ll, 0 );
				HWRITEASM64( &TMP$1334$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1334$4 );
			}
			goto label$986;
			label$987:;
			{
				FBSTRING TMP$1335$4;
				FBSTRING TMP$1336$4;
				__builtin_memset( &TMP$1336$4, 0, 24ll );
				uint8* vr$191 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1335$4, 0, 24ll );
				FBSTRING* vr$194 = fb_StrConcat( &TMP$1335$4, (void*)JMPCODE$1, 0ll, (void*)vr$191, 0ll );
				fb_StrAssign( (void*)&TMP$1336$4, -1ll, (void*)vr$194, -1ll, 0 );
				HWRITEASM64( &TMP$1336$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1336$4 );
				REG_MARK( LABEL$1 );
			}
			label$986:;
			if( OP$1 != 45ll ) goto label$989;
			{
				FBSTRING TMP$1337$4;
				FBSTRING TMP$1338$4;
				__builtin_memset( &TMP$1338$4, 0, 24ll );
				__builtin_memset( &TMP$1337$4, 0, 24ll );
				FBSTRING* vr$202 = fb_StrConcat( &TMP$1337$4, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$1338$4, -1ll, (void*)vr$202, -1ll, 0 );
				HWRITEASM64( &TMP$1338$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1338$4 );
				label$989:;
			}
			if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$991;
			{
				FBSTRING TMP$1340$4;
				FBSTRING TMP$1341$4;
				FBSTRING TMP$1342$4;
				FBSTRING TMP$1343$4;
				FBSTRING TMP$1344$4;
				FBSTRING TMP$1345$4;
				__builtin_memset( &TMP$1343$4, 0, 24ll );
				__builtin_memset( &TMP$1340$4, 0, 24ll );
				FBSTRING* vr$213 = fb_StrConcat( &TMP$1340$4, (void*)"xor ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1341$4, 0, 24ll );
				FBSTRING* vr$216 = fb_StrConcat( &TMP$1341$4, (void*)vr$213, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1342$4, 0, 24ll );
				FBSTRING* vr$219 = fb_StrConcat( &TMP$1342$4, (void*)vr$216, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
				fb_StrAssign( (void*)&TMP$1343$4, -1ll, (void*)vr$219, -1ll, 0 );
				HWRITEASM64( &TMP$1343$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1343$4 );
				RESTORE_VRREG( VR$1, (int64)VRREG$1 );
				__builtin_memset( &TMP$1345$4, 0, 24ll );
				__builtin_memset( &TMP$1344$4, 0, 24ll );
				FBSTRING* vr$228 = fb_StrConcat( &TMP$1344$4, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$1345$4, -1ll, (void*)vr$228, -1ll, 0 );
				HWRITEASM64( &TMP$1345$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1345$4 );
			}
			label$991:;
			label$990:;
		}
		goto label$958;
		label$959:;
		if( OP$1 == 28ll ) goto label$993;
		label$994:;
		if( OP$1 == 29ll ) goto label$993;
		label$995:;
		if( OP$1 == 30ll ) goto label$993;
		label$996:;
		if( OP$1 != 31ll ) goto label$992;
		label$993:;
		{
			FBSTRING TMP$1355$3;
			FBSTRING TMP$1356$3;
			FBSTRING TMP$1357$3;
			{
				if( OP$1 != 28ll ) goto label$998;
				label$999:;
				{
					FBSTRING TMP$1346$5;
					FBSTRING TMP$1347$5;
					__builtin_memset( &TMP$1347$5, 0, 24ll );
					__builtin_memset( &TMP$1346$5, 0, 24ll );
					FBSTRING* vr$236 = fb_StrConcat( &TMP$1346$5, (void*)&ADDREG$1, -1ll, (void*)"xmm0, xmm1", 11ll );
					fb_StrAssign( (void*)&TMP$1347$5, -1ll, (void*)vr$236, -1ll, 0 );
					HWRITEASM64( &TMP$1347$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1347$5 );
				}
				goto label$997;
				label$998:;
				if( OP$1 != 29ll ) goto label$1000;
				label$1001:;
				{
					FBSTRING TMP$1348$5;
					FBSTRING TMP$1349$5;
					__builtin_memset( &TMP$1349$5, 0, 24ll );
					__builtin_memset( &TMP$1348$5, 0, 24ll );
					FBSTRING* vr$244 = fb_StrConcat( &TMP$1348$5, (void*)&SUBREG$1, -1ll, (void*)"xmm0, xmm1", 11ll );
					fb_StrAssign( (void*)&TMP$1349$5, -1ll, (void*)vr$244, -1ll, 0 );
					HWRITEASM64( &TMP$1349$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1349$5 );
				}
				goto label$997;
				label$1000:;
				if( OP$1 != 30ll ) goto label$1002;
				label$1003:;
				{
					FBSTRING TMP$1350$5;
					FBSTRING TMP$1351$5;
					__builtin_memset( &TMP$1351$5, 0, 24ll );
					__builtin_memset( &TMP$1350$5, 0, 24ll );
					FBSTRING* vr$252 = fb_StrConcat( &TMP$1350$5, (void*)&MULREG$1, -1ll, (void*)"xmm0, xmm1", 11ll );
					fb_StrAssign( (void*)&TMP$1351$5, -1ll, (void*)vr$252, -1ll, 0 );
					HWRITEASM64( &TMP$1351$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1351$5 );
				}
				goto label$997;
				label$1002:;
				if( OP$1 != 31ll ) goto label$1004;
				label$1005:;
				{
					FBSTRING TMP$1352$5;
					FBSTRING TMP$1353$5;
					__builtin_memset( &TMP$1353$5, 0, 24ll );
					__builtin_memset( &TMP$1352$5, 0, 24ll );
					FBSTRING* vr$260 = fb_StrConcat( &TMP$1352$5, (void*)&DIVREG$1, -1ll, (void*)"xmm0, xmm1", 11ll );
					fb_StrAssign( (void*)&TMP$1353$5, -1ll, (void*)vr$260, -1ll, 0 );
					HWRITEASM64( &TMP$1353$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1353$5 );
				}
				label$1004:;
				label$997:;
			}
			__builtin_memset( &TMP$1357$3, 0, 24ll );
			__builtin_memset( &TMP$1355$3, 0, 24ll );
			FBSTRING* vr$269 = fb_StrConcat( &TMP$1355$3, (void*)"movq ", 6ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1356$3, 0, 24ll );
			FBSTRING* vr$272 = fb_StrConcat( &TMP$1356$3, (void*)vr$269, -1ll, (void*)", xmm0", 7ll );
			fb_StrAssign( (void*)&TMP$1357$3, -1ll, (void*)vr$272, -1ll, 0 );
			HWRITEASM64( &TMP$1357$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1357$3 );
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
		}
		goto label$958;
		label$992:;
		if( OP$1 != 64ll ) goto label$1006;
		label$1007:;
		{
			if( V1DTYPE$1 != 16ll ) goto label$1009;
			{
				FBSTRING TMP$1359$4;
				FBSTRING TMP$1360$4;
				FBSTRING TMP$1361$4;
				FBSTRING TMP$1362$4;
				__builtin_memset( &TMP$1359$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1359$4, -1ll, (void*)"atan2", 6ll, 0 );
				SAVE_CALL( &TMP$1359$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1359$4 );
				__builtin_memset( &TMP$1362$4, 0, 24ll );
				__builtin_memset( &TMP$1360$4, 0, 24ll );
				FBSTRING* vr$287 = fb_StrConcat( &TMP$1360$4, (void*)"movq ", 6ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1361$4, 0, 24ll );
				FBSTRING* vr$290 = fb_StrConcat( &TMP$1361$4, (void*)vr$287, -1ll, (void*)", xmm0", 7ll );
				fb_StrAssign( (void*)&TMP$1362$4, -1ll, (void*)vr$290, -1ll, 0 );
				HWRITEASM64( &TMP$1362$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1362$4 );
			}
			goto label$1008;
			label$1009:;
			{
				FBSTRING TMP$1364$4;
				FBSTRING TMP$1365$4;
				FBSTRING TMP$1366$4;
				FBSTRING TMP$1367$4;
				__builtin_memset( &TMP$1364$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1364$4, -1ll, (void*)"atan2f", 7ll, 0 );
				SAVE_CALL( &TMP$1364$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1364$4 );
				__builtin_memset( &TMP$1367$4, 0, 24ll );
				__builtin_memset( &TMP$1365$4, 0, 24ll );
				FBSTRING* vr$304 = fb_StrConcat( &TMP$1365$4, (void*)"movd ", 6ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1366$4, 0, 24ll );
				FBSTRING* vr$307 = fb_StrConcat( &TMP$1366$4, (void*)vr$304, -1ll, (void*)", xmm0", 7ll );
				fb_StrAssign( (void*)&TMP$1367$4, -1ll, (void*)vr$307, -1ll, 0 );
				HWRITEASM64( &TMP$1367$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1367$4 );
			}
			label$1008:;
		}
		goto label$958;
		label$1006:;
		{
			FBSTRING TMP$1368$3;
			FBSTRING TMP$1371$3;
			FBSTRING TMP$1372$3;
			FBSTRING TMP$1373$3;
			__builtin_memset( &TMP$1368$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1368$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1368$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1368$3 );
			__builtin_memset( &TMP$1372$3, 0, 24ll );
			uint8* vr$316 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1371$3, 0, 24ll );
			FBSTRING* vr$319 = fb_StrConcat( &TMP$1371$3, (void*)"FOUND AN ERROR : in bop float needs to be coded : ", 51ll, (void*)vr$316, 0ll );
			fb_StrAssign( (void*)&TMP$1372$3, -1ll, (void*)vr$319, -1ll, 0 );
			HWRITEASM64( &TMP$1372$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1372$3 );
			__builtin_memset( &TMP$1373$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1373$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1373$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1373$3 );
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

static void HLOADOPERANDSANDWRITEBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int64 TMP$1433$1;
	int64 TMP$1434$1;
	FBSTRING TMP$1435$1;
	FBSTRING TMP$1436$1;
	label$1011:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 24ll );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 24ll );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 24ll );
	FBSTRING SUFFIX$1;
	__builtin_memset( &SUFFIX$1, 0, 24ll );
	FBSTRING OP1PREV$1;
	__builtin_memset( &OP1PREV$1, 0, 24ll );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 24ll );
	FBSTRING OP1BIS$1;
	__builtin_memset( &OP1BIS$1, 0, 24ll );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 8ll );
	$11FB_DATATYPE TEMPO2DTYPE$1;
	__builtin_memset( &TEMPO2DTYPE$1, 0, 8ll );
	int64 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 8ll );
	int64 VRREG2$1;
	__builtin_memset( &VRREG2$1, 0, 8ll );
	int64 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 8ll );
	struct $6IRVREG* VRTEMPO$1;
	__builtin_memset( &VRTEMPO$1, 0, 8ll );
	TEMPODTYPE$1 = *(int64*)((uint8*)V1$1 + 8ll) & 511ll;
	if( (TEMPODTYPE$1 & 480ll) == 0ll ) goto label$1014;
	{
		TEMPODTYPE$1 = 8ll;
		label$1014:;
	}
	{
		if( TEMPODTYPE$1 == 8ll ) goto label$1017;
		label$1018:;
		if( TEMPODTYPE$1 == 9ll ) goto label$1017;
		label$1019:;
		if( TEMPODTYPE$1 == 13ll ) goto label$1017;
		label$1020:;
		if( TEMPODTYPE$1 == 14ll ) goto label$1017;
		label$1021:;
		if( TEMPODTYPE$1 == 10ll ) goto label$1017;
		label$1022:;
		if( TEMPODTYPE$1 != 16ll ) goto label$1016;
		label$1017:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"QWORD PTR ", 11ll, 0 );
		}
		goto label$1015;
		label$1016:;
		if( TEMPODTYPE$1 == 11ll ) goto label$1024;
		label$1025:;
		if( TEMPODTYPE$1 == 12ll ) goto label$1024;
		label$1026:;
		if( TEMPODTYPE$1 != 15ll ) goto label$1023;
		label$1024:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
		}
		goto label$1015;
		label$1023:;
		if( TEMPODTYPE$1 == 5ll ) goto label$1028;
		label$1029:;
		if( TEMPODTYPE$1 != 6ll ) goto label$1027;
		label$1028:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
		}
		goto label$1015;
		label$1027:;
		if( TEMPODTYPE$1 == 2ll ) goto label$1031;
		label$1032:;
		if( TEMPODTYPE$1 == 3ll ) goto label$1031;
		label$1033:;
		if( TEMPODTYPE$1 == 1ll ) goto label$1031;
		label$1034:;
		if( TEMPODTYPE$1 != 4ll ) goto label$1030;
		label$1031:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"BYTE PTR ", 10ll, 0 );
		}
		goto label$1015;
		label$1030:;
		{
			FBSTRING TMP$1378$3;
			FBSTRING TMP$1382$3;
			FBSTRING TMP$1383$3;
			FBSTRING TMP$1384$3;
			__builtin_memset( &TMP$1378$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1378$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1378$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1378$3 );
			__builtin_memset( &TMP$1383$3, 0, 24ll );
			FBSTRING* vr$29 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
			__builtin_memset( &TMP$1382$3, 0, 24ll );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$1382$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48ll, (void*)vr$29, -1ll );
			fb_StrAssign( (void*)&TMP$1383$3, -1ll, (void*)vr$32, -1ll, 0 );
			HWRITEASM64( &TMP$1383$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1383$3 );
			__builtin_memset( &TMP$1384$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1384$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1384$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1384$3 );
		}
		label$1035:;
		label$1015:;
	}
	fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)&PREFIX1$1, -1ll, 0 );
	{
		$15IRVREGTYPE_ENUM TMP$1385$2;
		TMP$1385$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1385$2 != 4ll ) goto label$1037;
		label$1038:;
		{
			int32 vr$45 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
			VRREG$1 = (int64)vr$45;
			{
				if( TEMPODTYPE$1 == 8ll ) goto label$1041;
				label$1042:;
				if( TEMPODTYPE$1 == 9ll ) goto label$1041;
				label$1043:;
				if( TEMPODTYPE$1 == 13ll ) goto label$1041;
				label$1044:;
				if( TEMPODTYPE$1 == 14ll ) goto label$1041;
				label$1045:;
				if( TEMPODTYPE$1 == 10ll ) goto label$1041;
				label$1046:;
				if( TEMPODTYPE$1 != 16ll ) goto label$1040;
				label$1041:;
				{
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1039;
				label$1040:;
				if( TEMPODTYPE$1 == 11ll ) goto label$1048;
				label$1049:;
				if( TEMPODTYPE$1 == 12ll ) goto label$1048;
				label$1050:;
				if( TEMPODTYPE$1 != 15ll ) goto label$1047;
				label$1048:;
				{
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1039;
				label$1047:;
				if( TEMPODTYPE$1 == 5ll ) goto label$1052;
				label$1053:;
				if( TEMPODTYPE$1 != 6ll ) goto label$1051;
				label$1052:;
				{
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1039;
				label$1051:;
				if( TEMPODTYPE$1 == 2ll ) goto label$1055;
				label$1056:;
				if( TEMPODTYPE$1 == 3ll ) goto label$1055;
				label$1057:;
				if( TEMPODTYPE$1 == 1ll ) goto label$1055;
				label$1058:;
				if( TEMPODTYPE$1 != 4ll ) goto label$1054;
				label$1055:;
				{
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1039;
				label$1054:;
				{
					FBSTRING TMP$1386$5;
					FBSTRING TMP$1390$5;
					FBSTRING TMP$1391$5;
					FBSTRING TMP$1392$5;
					__builtin_memset( &TMP$1386$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1386$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1386$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1386$5 );
					__builtin_memset( &TMP$1391$5, 0, 24ll );
					FBSTRING* vr$61 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
					__builtin_memset( &TMP$1390$5, 0, 24ll );
					FBSTRING* vr$64 = fb_StrConcat( &TMP$1390$5, (void*)"FOUND AN ERROR : BOP datatype not handled 010 ", 47ll, (void*)vr$61, -1ll );
					fb_StrAssign( (void*)&TMP$1391$5, -1ll, (void*)vr$64, -1ll, 0 );
					HWRITEASM64( &TMP$1391$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1391$5 );
					__builtin_memset( &TMP$1392$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1392$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1392$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1392$5 );
				}
				label$1059:;
				label$1039:;
			}
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"", 1ll, 0 );
		}
		goto label$1036;
		label$1037:;
		if( TMP$1385$2 != 2ll ) goto label$1060;
		label$1061:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1036;
		label$1060:;
		if( TMP$1385$2 != 3ll ) goto label$1062;
		label$1063:;
		{
			FBSTRING TMP$1393$3;
			FBSTRING TMP$1394$3;
			FBSTRING TMP$1395$3;
			int32 vr$78 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
			FBSTRING* vr$82 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			__builtin_memset( &TMP$1393$3, 0, 24ll );
			FBSTRING* vr$85 = fb_StrConcat( &TMP$1393$3, (void*)vr$82, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$1394$3, 0, 24ll );
			FBSTRING* vr$88 = fb_StrConcat( &TMP$1394$3, (void*)vr$85, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$78 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1395$3, 0, 24ll );
			FBSTRING* vr$91 = fb_StrConcat( &TMP$1395$3, (void*)vr$88, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$91, -1ll, 0 );
		}
		goto label$1036;
		label$1062:;
		if( TMP$1385$2 != 5ll ) goto label$1064;
		label$1065:;
		{
			FBSTRING TMP$1396$3;
			FBSTRING TMP$1397$3;
			FBSTRING TMP$1398$3;
			FBSTRING* vr$94 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			uint8* vr$96 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
			__builtin_memset( &TMP$1396$3, 0, 24ll );
			FBSTRING* vr$99 = fb_StrConcat( &TMP$1396$3, (void*)vr$96, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$1397$3, 0, 24ll );
			FBSTRING* vr$102 = fb_StrConcat( &TMP$1397$3, (void*)vr$99, -1ll, (void*)vr$94, -1ll );
			__builtin_memset( &TMP$1398$3, 0, 24ll );
			FBSTRING* vr$105 = fb_StrConcat( &TMP$1398$3, (void*)vr$102, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$105, -1ll, 0 );
		}
		goto label$1036;
		label$1064:;
		if( TMP$1385$2 != 0ll ) goto label$1066;
		label$1067:;
		{
			int64 TMP$1399$3;
			if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$1068;
			TMP$1399$3 = 24ll;
			goto label$2996;
			label$1068:;
			TMP$1399$3 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
			label$2996:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1399$3 * 56ll)) != 1ll ) goto label$1070;
			{
				FBSTRING* vr$114 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V1$1 + 48ll), *(int64*)((uint8*)V1$1 + 8ll), (int8)0 );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$114, -1ll, 0 );
			}
			goto label$1069;
			label$1070:;
			{
				if( TEMPODTYPE$1 != 1ll ) goto label$1072;
				{
					if( *(int64*)((uint8*)V1$1 + 48ll) == 0ll ) goto label$1074;
					{
						*(int64*)((uint8*)V1$1 + 48ll) = 1ll;
					}
					label$1074:;
					label$1073:;
				}
				label$1072:;
				label$1071:;
				FBSTRING* vr$119 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 48ll) );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$119, -1ll, 0 );
			}
			label$1069:;
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"", 1ll, 0 );
		}
		goto label$1036;
		label$1066:;
		if( TMP$1385$2 != 1ll ) goto label$1075;
		label$1076:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$1078;
			{
				FBSTRING TMP$1400$4;
				FBSTRING TMP$1401$4;
				FBSTRING TMP$1402$4;
				FBSTRING* vr$132 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$134 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$1400$4, 0, 24ll );
				FBSTRING* vr$137 = fb_StrConcat( &TMP$1400$4, (void*)vr$134, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$1401$4, 0, 24ll );
				FBSTRING* vr$140 = fb_StrConcat( &TMP$1401$4, (void*)vr$137, -1ll, (void*)vr$132, -1ll );
				__builtin_memset( &TMP$1402$4, 0, 24ll );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$1402$4, (void*)vr$140, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$143, -1ll, 0 );
			}
			goto label$1077;
			label$1078:;
			{
				FBSTRING TMP$1403$4;
				FBSTRING* vr$146 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1403$4, 0, 24ll );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$1403$4, (void*)vr$146, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$149, -1ll, 0 );
			}
			label$1077:;
		}
		goto label$1036;
		label$1075:;
		{
			FBSTRING TMP$1404$3;
			FBSTRING TMP$1407$3;
			FBSTRING TMP$1408$3;
			__builtin_memset( &TMP$1404$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1404$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1404$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1404$3 );
			__builtin_memset( &TMP$1407$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1407$3, -1ll, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51ll, 0 );
			HWRITEASM64( &TMP$1407$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1407$3 );
			__builtin_memset( &TMP$1408$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1408$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1408$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1408$3 );
		}
		label$1079:;
		label$1036:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1409$2;
		TMP$1409$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$1409$2 != 4ll ) goto label$1081;
		label$1082:;
		{
			int32 vr$166 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
			TEMPO$1 = (int64)vr$166;
			{
				if( TEMPODTYPE$1 == 8ll ) goto label$1085;
				label$1086:;
				if( TEMPODTYPE$1 == 9ll ) goto label$1085;
				label$1087:;
				if( TEMPODTYPE$1 == 13ll ) goto label$1085;
				label$1088:;
				if( TEMPODTYPE$1 == 14ll ) goto label$1085;
				label$1089:;
				if( TEMPODTYPE$1 == 10ll ) goto label$1085;
				label$1090:;
				if( TEMPODTYPE$1 != 16ll ) goto label$1084;
				label$1085:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1083;
				label$1084:;
				if( TEMPODTYPE$1 == 11ll ) goto label$1092;
				label$1093:;
				if( TEMPODTYPE$1 == 12ll ) goto label$1092;
				label$1094:;
				if( TEMPODTYPE$1 != 15ll ) goto label$1091;
				label$1092:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRD$ + (TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1083;
				label$1091:;
				if( TEMPODTYPE$1 == 5ll ) goto label$1096;
				label$1097:;
				if( TEMPODTYPE$1 != 6ll ) goto label$1095;
				label$1096:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRW$ + (TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1083;
				label$1095:;
				if( TEMPODTYPE$1 == 2ll ) goto label$1099;
				label$1100:;
				if( TEMPODTYPE$1 == 3ll ) goto label$1099;
				label$1101:;
				if( TEMPODTYPE$1 == 1ll ) goto label$1099;
				label$1102:;
				if( TEMPODTYPE$1 != 4ll ) goto label$1098;
				label$1099:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRB$ + (TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1083;
				label$1098:;
				{
					FBSTRING TMP$1410$5;
					FBSTRING TMP$1414$5;
					FBSTRING TMP$1415$5;
					FBSTRING TMP$1416$5;
					__builtin_memset( &TMP$1410$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1410$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1410$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1410$5 );
					__builtin_memset( &TMP$1415$5, 0, 24ll );
					FBSTRING* vr$182 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
					__builtin_memset( &TMP$1414$5, 0, 24ll );
					FBSTRING* vr$185 = fb_StrConcat( &TMP$1414$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 ", 47ll, (void*)vr$182, -1ll );
					fb_StrAssign( (void*)&TMP$1415$5, -1ll, (void*)vr$185, -1ll, 0 );
					HWRITEASM64( &TMP$1415$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1415$5 );
					__builtin_memset( &TMP$1416$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1416$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1416$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1416$5 );
				}
				label$1103:;
				label$1083:;
			}
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"", 1ll, 0 );
		}
		goto label$1080;
		label$1081:;
		if( TMP$1409$2 != 0ll ) goto label$1104;
		label$1105:;
		{
			int64 TMP$1417$3;
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"", 1ll, 0 );
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$1106;
			TMP$1417$3 = 24ll;
			goto label$2997;
			label$1106:;
			TMP$1417$3 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
			label$2997:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1417$3 * 56ll)) != 1ll ) goto label$1108;
			{
				FBSTRING* vr$202 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 48ll), *(int64*)((uint8*)V2$1 + 8ll), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$202, -1ll, 0 );
			}
			goto label$1107;
			label$1108:;
			{
				if( *(int64*)((uint8*)V2$1 + 8ll) != 1ll ) goto label$1110;
				{
					if( *(int64*)((uint8*)V2$1 + 48ll) == 0ll ) goto label$1112;
					{
						*(int64*)((uint8*)V2$1 + 48ll) = 1ll;
					}
					label$1112:;
					label$1111:;
				}
				label$1110:;
				label$1109:;
				FBSTRING* vr$208 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$208, -1ll, 0 );
			}
			label$1107:;
		}
		goto label$1080;
		label$1104:;
		if( TMP$1409$2 != 3ll ) goto label$1113;
		label$1114:;
		{
			FBSTRING TMP$1418$3;
			FBSTRING TMP$1419$3;
			FBSTRING TMP$1420$3;
			int32 vr$213 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
			FBSTRING* vr$217 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
			__builtin_memset( &TMP$1418$3, 0, 24ll );
			FBSTRING* vr$220 = fb_StrConcat( &TMP$1418$3, (void*)vr$217, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$1419$3, 0, 24ll );
			FBSTRING* vr$223 = fb_StrConcat( &TMP$1419$3, (void*)vr$220, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$213 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1420$3, 0, 24ll );
			FBSTRING* vr$226 = fb_StrConcat( &TMP$1420$3, (void*)vr$223, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$226, -1ll, 0 );
		}
		goto label$1080;
		label$1113:;
		if( TMP$1409$2 != 5ll ) goto label$1115;
		label$1116:;
		{
			FBSTRING TMP$1421$3;
			FBSTRING TMP$1422$3;
			FBSTRING TMP$1423$3;
			FBSTRING* vr$229 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
			uint8* vr$231 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
			__builtin_memset( &TMP$1421$3, 0, 24ll );
			FBSTRING* vr$234 = fb_StrConcat( &TMP$1421$3, (void*)vr$231, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$1422$3, 0, 24ll );
			FBSTRING* vr$237 = fb_StrConcat( &TMP$1422$3, (void*)vr$234, -1ll, (void*)vr$229, -1ll );
			__builtin_memset( &TMP$1423$3, 0, 24ll );
			FBSTRING* vr$240 = fb_StrConcat( &TMP$1423$3, (void*)vr$237, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$240, -1ll, 0 );
		}
		goto label$1080;
		label$1115:;
		if( TMP$1409$2 != 2ll ) goto label$1117;
		label$1118:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1080;
		label$1117:;
		if( TMP$1409$2 != 1ll ) goto label$1119;
		label$1120:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$1122;
			{
				FBSTRING TMP$1424$4;
				FBSTRING TMP$1425$4;
				FBSTRING TMP$1426$4;
				FBSTRING* vr$254 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				uint8* vr$256 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
				__builtin_memset( &TMP$1424$4, 0, 24ll );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$1424$4, (void*)vr$256, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$1425$4, 0, 24ll );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$1425$4, (void*)vr$259, -1ll, (void*)vr$254, -1ll );
				__builtin_memset( &TMP$1426$4, 0, 24ll );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$1426$4, (void*)vr$262, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$265, -1ll, 0 );
			}
			goto label$1121;
			label$1122:;
			{
				FBSTRING TMP$1427$4;
				FBSTRING* vr$268 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$1427$4, 0, 24ll );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$1427$4, (void*)vr$268, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$271, -1ll, 0 );
			}
			label$1121:;
		}
		goto label$1080;
		label$1119:;
		{
			FBSTRING TMP$1428$3;
			FBSTRING TMP$1431$3;
			FBSTRING TMP$1432$3;
			__builtin_memset( &TMP$1428$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1428$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1428$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1428$3 );
			__builtin_memset( &TMP$1431$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1431$3, -1ll, (void*)"FOUND AN ERROR : in loadoperand typ not handled v2", 51ll, 0 );
			HWRITEASM64( &TMP$1431$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1431$3 );
			__builtin_memset( &TMP$1432$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1432$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1432$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1432$3 );
		}
		label$1123:;
		label$1080:;
	}
	int32 vr$286 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$286 == 0ll ) goto label$1125;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1125:;
	}
	int32 vr$290 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$290 == 0ll ) goto label$1127;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1127:;
	}
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$1128;
	TMP$1433$1 = 24ll;
	goto label$2998;
	label$1128:;
	TMP$1433$1 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
	label$2998:;
	if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$1129;
	TMP$1434$1 = 24ll;
	goto label$2999;
	label$1129:;
	TMP$1434$1 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
	label$2999:;
	if( ((int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1433$1 * 56ll)) == 1ll) | (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1434$1 * 56ll)) == 1ll)) == 0ll ) goto label$1131;
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
	__builtin_memset( &TMP$1435$1, 0, 24ll );
	FBSTRING* vr$325 = fb_StrConcat( &TMP$1435$1, (void*)&PREFIX1$1, -1ll, (void*)&OP1$1, -1ll );
	fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$325, -1ll, 0 );
	__builtin_memset( &TMP$1436$1, 0, 24ll );
	FBSTRING* vr$331 = fb_StrConcat( &TMP$1436$1, (void*)&PREFIX2$1, -1ll, (void*)&OP2$1, -1ll );
	fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$331, -1ll, 0 );
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1133;
	{
		if( *(int64*)V1$1 != 4ll ) goto label$1135;
		{
			*(int64*)((uint8*)VR$1 + 24ll) = *(int64*)((uint8*)V1$1 + 24ll);
		}
		goto label$1134;
		label$1135:;
		{
			int32 vr$338 = REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
			VRREG$1 = (int64)vr$338;
			if( *(int64*)V1$1 != 5ll ) goto label$1137;
			{
				FBSTRING TMP$1437$4;
				FBSTRING TMP$1438$4;
				FBSTRING TMP$1439$4;
				FBSTRING TMP$1440$4;
				__builtin_memset( &TMP$1440$4, 0, 24ll );
				__builtin_memset( &TMP$1437$4, 0, 24ll );
				FBSTRING* vr$346 = fb_StrConcat( &TMP$1437$4, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1438$4, 0, 24ll );
				FBSTRING* vr$349 = fb_StrConcat( &TMP$1438$4, (void*)vr$346, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1439$4, 0, 24ll );
				FBSTRING* vr$352 = fb_StrConcat( &TMP$1439$4, (void*)vr$349, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1440$4, -1ll, (void*)vr$352, -1ll, 0 );
				HWRITEASM64( &TMP$1440$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1440$4 );
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
			}
			goto label$1136;
			label$1137:;
			{
				{
					if( TEMPODTYPE$1 == 8ll ) goto label$1140;
					label$1141:;
					if( TEMPODTYPE$1 == 9ll ) goto label$1140;
					label$1142:;
					if( TEMPODTYPE$1 == 13ll ) goto label$1140;
					label$1143:;
					if( TEMPODTYPE$1 == 14ll ) goto label$1140;
					label$1144:;
					if( TEMPODTYPE$1 != 10ll ) goto label$1139;
					label$1140:;
					{
						FBSTRING TMP$1441$6;
						FBSTRING TMP$1442$6;
						FBSTRING TMP$1443$6;
						FBSTRING TMP$1444$6;
						__builtin_memset( &TMP$1444$6, 0, 24ll );
						__builtin_memset( &TMP$1441$6, 0, 24ll );
						FBSTRING* vr$363 = fb_StrConcat( &TMP$1441$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$1442$6, 0, 24ll );
						FBSTRING* vr$366 = fb_StrConcat( &TMP$1442$6, (void*)vr$363, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1443$6, 0, 24ll );
						FBSTRING* vr$369 = fb_StrConcat( &TMP$1443$6, (void*)vr$366, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1444$6, -1ll, (void*)vr$369, -1ll, 0 );
						HWRITEASM64( &TMP$1444$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1444$6 );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1138;
					label$1139:;
					if( TEMPODTYPE$1 == 11ll ) goto label$1146;
					label$1147:;
					if( TEMPODTYPE$1 != 12ll ) goto label$1145;
					label$1146:;
					{
						FBSTRING TMP$1445$6;
						FBSTRING TMP$1446$6;
						FBSTRING TMP$1447$6;
						FBSTRING TMP$1448$6;
						__builtin_memset( &TMP$1448$6, 0, 24ll );
						__builtin_memset( &TMP$1445$6, 0, 24ll );
						FBSTRING* vr$380 = fb_StrConcat( &TMP$1445$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$1446$6, 0, 24ll );
						FBSTRING* vr$383 = fb_StrConcat( &TMP$1446$6, (void*)vr$380, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1447$6, 0, 24ll );
						FBSTRING* vr$386 = fb_StrConcat( &TMP$1447$6, (void*)vr$383, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1448$6, -1ll, (void*)vr$386, -1ll, 0 );
						HWRITEASM64( &TMP$1448$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1448$6 );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1138;
					label$1145:;
					if( TEMPODTYPE$1 == 5ll ) goto label$1149;
					label$1150:;
					if( TEMPODTYPE$1 != 6ll ) goto label$1148;
					label$1149:;
					{
						FBSTRING TMP$1449$6;
						FBSTRING TMP$1450$6;
						FBSTRING TMP$1451$6;
						FBSTRING TMP$1452$6;
						__builtin_memset( &TMP$1452$6, 0, 24ll );
						__builtin_memset( &TMP$1449$6, 0, 24ll );
						FBSTRING* vr$397 = fb_StrConcat( &TMP$1449$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$1450$6, 0, 24ll );
						FBSTRING* vr$400 = fb_StrConcat( &TMP$1450$6, (void*)vr$397, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1451$6, 0, 24ll );
						FBSTRING* vr$403 = fb_StrConcat( &TMP$1451$6, (void*)vr$400, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1452$6, -1ll, (void*)vr$403, -1ll, 0 );
						HWRITEASM64( &TMP$1452$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1452$6 );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1138;
					label$1148:;
					if( TEMPODTYPE$1 == 2ll ) goto label$1152;
					label$1153:;
					if( TEMPODTYPE$1 == 3ll ) goto label$1152;
					label$1154:;
					if( TEMPODTYPE$1 == 1ll ) goto label$1152;
					label$1155:;
					if( TEMPODTYPE$1 != 4ll ) goto label$1151;
					label$1152:;
					{
						FBSTRING TMP$1453$6;
						FBSTRING TMP$1454$6;
						FBSTRING TMP$1455$6;
						FBSTRING TMP$1456$6;
						__builtin_memset( &TMP$1456$6, 0, 24ll );
						__builtin_memset( &TMP$1453$6, 0, 24ll );
						FBSTRING* vr$414 = fb_StrConcat( &TMP$1453$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$1454$6, 0, 24ll );
						FBSTRING* vr$417 = fb_StrConcat( &TMP$1454$6, (void*)vr$414, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1455$6, 0, 24ll );
						FBSTRING* vr$420 = fb_StrConcat( &TMP$1455$6, (void*)vr$417, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1456$6, -1ll, (void*)vr$420, -1ll, 0 );
						HWRITEASM64( &TMP$1456$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1456$6 );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1138;
					label$1151:;
					{
						FBSTRING TMP$1457$6;
						FBSTRING TMP$1461$6;
						FBSTRING TMP$1462$6;
						FBSTRING TMP$1463$6;
						__builtin_memset( &TMP$1457$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1457$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1457$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1457$6 );
						__builtin_memset( &TMP$1462$6, 0, 24ll );
						FBSTRING* vr$432 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
						__builtin_memset( &TMP$1461$6, 0, 24ll );
						FBSTRING* vr$435 = fb_StrConcat( &TMP$1461$6, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49ll, (void*)vr$432, -1ll );
						fb_StrAssign( (void*)&TMP$1462$6, -1ll, (void*)vr$435, -1ll, 0 );
						HWRITEASM64( &TMP$1462$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1462$6 );
						__builtin_memset( &TMP$1463$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1463$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1463$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1463$6 );
					}
					label$1156:;
					label$1138:;
				}
			}
			label$1136:;
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"", 1ll, 0 );
		}
		label$1134:;
		if( *(int64*)V2$1 != 5ll ) goto label$1158;
		{
			FBSTRING TMP$1464$3;
			FBSTRING TMP$1465$3;
			FBSTRING TMP$1466$3;
			FBSTRING TMP$1467$3;
			int32 vr$445 = REG_FINDFREE( 99999, -1ll );
			VRREG2$1 = (int64)vr$445;
			__builtin_memset( &TMP$1467$3, 0, 24ll );
			__builtin_memset( &TMP$1464$3, 0, 24ll );
			FBSTRING* vr$452 = fb_StrConcat( &TMP$1464$3, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1465$3, 0, 24ll );
			FBSTRING* vr$455 = fb_StrConcat( &TMP$1465$3, (void*)vr$452, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1466$3, 0, 24ll );
			FBSTRING* vr$458 = fb_StrConcat( &TMP$1466$3, (void*)vr$455, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1467$3, -1ll, (void*)vr$458, -1ll, 0 );
			HWRITEASM64( &TMP$1467$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1467$3 );
			fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (3ll & 63ll))), 0ll, 0 );
		}
		label$1158:;
		label$1157:;
	}
	goto label$1132;
	label$1133:;
	{
		if( *(int64*)V1$1 != 5ll ) goto label$1160;
		{
			FBSTRING TMP$1468$3;
			FBSTRING TMP$1469$3;
			FBSTRING TMP$1470$3;
			FBSTRING TMP$1471$3;
			int32 vr$465 = REG_FINDFREE( 99999, -1ll );
			VRREG2$1 = (int64)vr$465;
			__builtin_memset( &TMP$1471$3, 0, 24ll );
			__builtin_memset( &TMP$1468$3, 0, 24ll );
			FBSTRING* vr$472 = fb_StrConcat( &TMP$1468$3, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1469$3, 0, 24ll );
			FBSTRING* vr$475 = fb_StrConcat( &TMP$1469$3, (void*)vr$472, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1470$3, 0, 24ll );
			FBSTRING* vr$478 = fb_StrConcat( &TMP$1470$3, (void*)vr$475, -1ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1471$3, -1ll, (void*)vr$478, -1ll, 0 );
			HWRITEASM64( &TMP$1471$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1471$3 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG2$1 << (3ll & 63ll))), 0ll, 0 );
		}
		label$1160:;
		label$1159:;
		if( OP$1 != 30ll ) goto label$1162;
		{
			if( *(int64*)V1$1 == 4ll ) goto label$1164;
			{
				FBSTRING TMP$1472$4;
				FBSTRING TMP$1473$4;
				FBSTRING TMP$1474$4;
				FBSTRING TMP$1475$4;
				struct $6IRVREG* vr$485 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
				VR$1 = vr$485;
				int32 vr$488 = REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
				VRREG$1 = (int64)vr$488;
				fb_StrAssign( (void*)&OP1PREV$1, -1ll, (void*)&OP1$1, -1ll, 0 );
				__builtin_memset( &TMP$1475$4, 0, 24ll );
				__builtin_memset( &TMP$1472$4, 0, 24ll );
				FBSTRING* vr$497 = fb_StrConcat( &TMP$1472$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1473$4, 0, 24ll );
				FBSTRING* vr$500 = fb_StrConcat( &TMP$1473$4, (void*)vr$497, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1474$4, 0, 24ll );
				FBSTRING* vr$503 = fb_StrConcat( &TMP$1474$4, (void*)vr$500, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1475$4, -1ll, (void*)vr$503, -1ll, 0 );
				HWRITEASM64( &TMP$1475$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1475$4 );
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
			}
			label$1164:;
			label$1163:;
		}
		goto label$1161;
		label$1162:;
		{
			if( ((int64)-(*(int64*)V2$1 != 4ll) & (int64)-(*(int64*)V2$1 != 0ll)) == 0ll ) goto label$1166;
			{
				struct $6IRVREG* vr$514 = IRHLALLOCVREG( TEMPODTYPE$1, (struct $8FBSYMBOL*)0ull );
				VRTEMPO$1 = vr$514;
				int32 vr$517 = REG_FINDFREE( (int32)*(int64*)((uint8*)VRTEMPO$1 + 24ll), -1ll );
				VRREG$1 = (int64)vr$517;
				if( *(int64*)V2$1 != 5ll ) goto label$1168;
				{
					FBSTRING TMP$1476$5;
					FBSTRING TMP$1477$5;
					FBSTRING TMP$1478$5;
					FBSTRING TMP$1479$5;
					__builtin_memset( &TMP$1479$5, 0, 24ll );
					__builtin_memset( &TMP$1476$5, 0, 24ll );
					FBSTRING* vr$525 = fb_StrConcat( &TMP$1476$5, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1477$5, 0, 24ll );
					FBSTRING* vr$528 = fb_StrConcat( &TMP$1477$5, (void*)vr$525, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1478$5, 0, 24ll );
					FBSTRING* vr$531 = fb_StrConcat( &TMP$1478$5, (void*)vr$528, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1479$5, -1ll, (void*)vr$531, -1ll, 0 );
					HWRITEASM64( &TMP$1479$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1479$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1167;
				label$1168:;
				{
					{
						if( TEMPODTYPE$1 == 8ll ) goto label$1171;
						label$1172:;
						if( TEMPODTYPE$1 == 9ll ) goto label$1171;
						label$1173:;
						if( TEMPODTYPE$1 == 13ll ) goto label$1171;
						label$1174:;
						if( TEMPODTYPE$1 == 14ll ) goto label$1171;
						label$1175:;
						if( TEMPODTYPE$1 != 10ll ) goto label$1170;
						label$1171:;
						{
							FBSTRING TMP$1480$7;
							FBSTRING TMP$1481$7;
							FBSTRING TMP$1482$7;
							FBSTRING TMP$1483$7;
							__builtin_memset( &TMP$1483$7, 0, 24ll );
							__builtin_memset( &TMP$1480$7, 0, 24ll );
							FBSTRING* vr$542 = fb_StrConcat( &TMP$1480$7, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$1481$7, 0, 24ll );
							FBSTRING* vr$545 = fb_StrConcat( &TMP$1481$7, (void*)vr$542, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$1482$7, 0, 24ll );
							FBSTRING* vr$548 = fb_StrConcat( &TMP$1482$7, (void*)vr$545, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$1483$7, -1ll, (void*)vr$548, -1ll, 0 );
							HWRITEASM64( &TMP$1483$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1483$7 );
							fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$1169;
						label$1170:;
						if( TEMPODTYPE$1 == 11ll ) goto label$1177;
						label$1178:;
						if( TEMPODTYPE$1 != 12ll ) goto label$1176;
						label$1177:;
						{
							FBSTRING TMP$1484$7;
							FBSTRING TMP$1485$7;
							FBSTRING TMP$1486$7;
							FBSTRING TMP$1487$7;
							__builtin_memset( &TMP$1487$7, 0, 24ll );
							__builtin_memset( &TMP$1484$7, 0, 24ll );
							FBSTRING* vr$559 = fb_StrConcat( &TMP$1484$7, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$1485$7, 0, 24ll );
							FBSTRING* vr$562 = fb_StrConcat( &TMP$1485$7, (void*)vr$559, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$1486$7, 0, 24ll );
							FBSTRING* vr$565 = fb_StrConcat( &TMP$1486$7, (void*)vr$562, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$1487$7, -1ll, (void*)vr$565, -1ll, 0 );
							HWRITEASM64( &TMP$1487$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1487$7 );
							fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRD$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$1169;
						label$1176:;
						if( TEMPODTYPE$1 == 5ll ) goto label$1180;
						label$1181:;
						if( TEMPODTYPE$1 != 6ll ) goto label$1179;
						label$1180:;
						{
							FBSTRING TMP$1488$7;
							FBSTRING TMP$1489$7;
							FBSTRING TMP$1490$7;
							FBSTRING TMP$1491$7;
							__builtin_memset( &TMP$1491$7, 0, 24ll );
							__builtin_memset( &TMP$1488$7, 0, 24ll );
							FBSTRING* vr$576 = fb_StrConcat( &TMP$1488$7, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$1489$7, 0, 24ll );
							FBSTRING* vr$579 = fb_StrConcat( &TMP$1489$7, (void*)vr$576, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$1490$7, 0, 24ll );
							FBSTRING* vr$582 = fb_StrConcat( &TMP$1490$7, (void*)vr$579, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$1491$7, -1ll, (void*)vr$582, -1ll, 0 );
							HWRITEASM64( &TMP$1491$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1491$7 );
							fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRW$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$1169;
						label$1179:;
						if( TEMPODTYPE$1 == 2ll ) goto label$1183;
						label$1184:;
						if( TEMPODTYPE$1 == 3ll ) goto label$1183;
						label$1185:;
						if( TEMPODTYPE$1 == 1ll ) goto label$1183;
						label$1186:;
						if( TEMPODTYPE$1 != 4ll ) goto label$1182;
						label$1183:;
						{
							FBSTRING TMP$1492$7;
							FBSTRING TMP$1493$7;
							FBSTRING TMP$1494$7;
							FBSTRING TMP$1495$7;
							__builtin_memset( &TMP$1495$7, 0, 24ll );
							__builtin_memset( &TMP$1492$7, 0, 24ll );
							FBSTRING* vr$593 = fb_StrConcat( &TMP$1492$7, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$1493$7, 0, 24ll );
							FBSTRING* vr$596 = fb_StrConcat( &TMP$1493$7, (void*)vr$593, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$1494$7, 0, 24ll );
							FBSTRING* vr$599 = fb_StrConcat( &TMP$1494$7, (void*)vr$596, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$1495$7, -1ll, (void*)vr$599, -1ll, 0 );
							HWRITEASM64( &TMP$1495$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1495$7 );
							fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRB$ + (VRREG$1 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$1169;
						label$1182:;
						{
							FBSTRING TMP$1496$7;
							FBSTRING TMP$1500$7;
							FBSTRING TMP$1501$7;
							FBSTRING TMP$1502$7;
							__builtin_memset( &TMP$1496$7, 0, 24ll );
							fb_StrAssign( (void*)&TMP$1496$7, -1ll, (void*)"", 1ll, 0 );
							HWRITEASM64( &TMP$1496$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1496$7 );
							__builtin_memset( &TMP$1501$7, 0, 24ll );
							FBSTRING* vr$611 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
							__builtin_memset( &TMP$1500$7, 0, 24ll );
							FBSTRING* vr$614 = fb_StrConcat( &TMP$1500$7, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49ll, (void*)vr$611, -1ll );
							fb_StrAssign( (void*)&TMP$1501$7, -1ll, (void*)vr$614, -1ll, 0 );
							HWRITEASM64( &TMP$1501$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1501$7 );
							__builtin_memset( &TMP$1502$7, 0, 24ll );
							fb_StrAssign( (void*)&TMP$1502$7, -1ll, (void*)"", 1ll, 0 );
							HWRITEASM64( &TMP$1502$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$1502$7 );
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
	if( *(int64*)V2$1 != 0ll ) goto label$1189;
	{
		if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) < -2147483648ll) | (int64)-(*(uint64*)((uint8*)V2$1 + 48ll) >= 2147483648ull)) == 0ll ) goto label$1191;
		{
			if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) < -2147483648ll) | (int64)-(*(uint64*)((uint8*)V2$1 + 48ll) > 4294967295ull)) == 0ll ) goto label$1193;
			{
				FBSTRING TMP$1503$4;
				FBSTRING TMP$1504$4;
				__builtin_memset( &TMP$1504$4, 0, 24ll );
				FBSTRING* vr$635 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
				__builtin_memset( &TMP$1503$4, 0, 24ll );
				FBSTRING* vr$638 = fb_StrConcat( &TMP$1503$4, (void*)"mov rax, ", 10ll, (void*)vr$635, -1ll );
				fb_StrAssign( (void*)&TMP$1504$4, -1ll, (void*)vr$638, -1ll, 0 );
				HWRITEASM64( &TMP$1504$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1504$4 );
			}
			goto label$1192;
			label$1193:;
			{
				FBSTRING TMP$1506$4;
				FBSTRING TMP$1507$4;
				__builtin_memset( &TMP$1507$4, 0, 24ll );
				FBSTRING* vr$644 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
				__builtin_memset( &TMP$1506$4, 0, 24ll );
				FBSTRING* vr$647 = fb_StrConcat( &TMP$1506$4, (void*)"mov eax, ", 10ll, (void*)vr$644, -1ll );
				fb_StrAssign( (void*)&TMP$1507$4, -1ll, (void*)vr$647, -1ll, 0 );
				HWRITEASM64( &TMP$1507$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1507$4 );
			}
			label$1192:;
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"rax", 4ll, 0 );
			{
				if( TEMPODTYPE$1 == 8ll ) goto label$1196;
				label$1197:;
				if( TEMPODTYPE$1 == 9ll ) goto label$1196;
				label$1198:;
				if( TEMPODTYPE$1 == 13ll ) goto label$1196;
				label$1199:;
				if( TEMPODTYPE$1 == 14ll ) goto label$1196;
				label$1200:;
				if( TEMPODTYPE$1 == 10ll ) goto label$1196;
				label$1201:;
				if( TEMPODTYPE$1 != 16ll ) goto label$1195;
				label$1196:;
				{
				}
				goto label$1194;
				label$1195:;
				if( TEMPODTYPE$1 == 11ll ) goto label$1203;
				label$1204:;
				if( TEMPODTYPE$1 == 12ll ) goto label$1203;
				label$1205:;
				if( TEMPODTYPE$1 != 15ll ) goto label$1202;
				label$1203:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"eax", 4ll, 0 );
				}
				goto label$1194;
				label$1202:;
				if( TEMPODTYPE$1 == 5ll ) goto label$1207;
				label$1208:;
				if( TEMPODTYPE$1 != 6ll ) goto label$1206;
				label$1207:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"ax", 3ll, 0 );
				}
				goto label$1194;
				label$1206:;
				if( TEMPODTYPE$1 == 2ll ) goto label$1210;
				label$1211:;
				if( TEMPODTYPE$1 == 3ll ) goto label$1210;
				label$1212:;
				if( TEMPODTYPE$1 == 1ll ) goto label$1210;
				label$1213:;
				if( TEMPODTYPE$1 != 4ll ) goto label$1209;
				label$1210:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"al", 3ll, 0 );
				}
				goto label$1194;
				label$1209:;
				{
					FBSTRING TMP$1508$5;
					FBSTRING TMP$1512$5;
					FBSTRING TMP$1513$5;
					FBSTRING TMP$1514$5;
					__builtin_memset( &TMP$1508$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1508$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1508$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1508$5 );
					__builtin_memset( &TMP$1513$5, 0, 24ll );
					FBSTRING* vr$661 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
					__builtin_memset( &TMP$1512$5, 0, 24ll );
					FBSTRING* vr$664 = fb_StrConcat( &TMP$1512$5, (void*)"FOUND AN ERROR : BOP datatype not handled 0100 = ", 50ll, (void*)vr$661, -1ll );
					fb_StrAssign( (void*)&TMP$1513$5, -1ll, (void*)vr$664, -1ll, 0 );
					HWRITEASM64( &TMP$1513$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1513$5 );
					__builtin_memset( &TMP$1514$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1514$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1514$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1514$5 );
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
		uint64 TMP$1515$2;
		TMP$1515$2 = (uint64)OP$1;
		goto label$1216;
		label$1217:;
		{
			int32 vr$673 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"1", 2ll );
			if( (int64)vr$673 != 0ll ) goto label$1219;
			{
				FBSTRING TMP$1517$4;
				FBSTRING TMP$1518$4;
				__builtin_memset( &TMP$1518$4, 0, 24ll );
				__builtin_memset( &TMP$1517$4, 0, 24ll );
				FBSTRING* vr$679 = fb_StrConcat( &TMP$1517$4, (void*)"inc ", 5ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1518$4, -1ll, (void*)vr$679, -1ll, 0 );
				HWRITEASM64( &TMP$1518$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1518$4 );
			}
			goto label$1218;
			label$1219:;
			int32 vr$684 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"-1", 3ll );
			if( (int64)vr$684 != 0ll ) goto label$1220;
			{
				FBSTRING TMP$1520$4;
				FBSTRING TMP$1521$4;
				__builtin_memset( &TMP$1521$4, 0, 24ll );
				__builtin_memset( &TMP$1520$4, 0, 24ll );
				FBSTRING* vr$690 = fb_StrConcat( &TMP$1520$4, (void*)"dec ", 5ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1521$4, -1ll, (void*)vr$690, -1ll, 0 );
				HWRITEASM64( &TMP$1521$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1521$4 );
			}
			goto label$1218;
			label$1220:;
			{
				FBSTRING TMP$1522$4;
				FBSTRING TMP$1523$4;
				FBSTRING TMP$1524$4;
				FBSTRING TMP$1525$4;
				__builtin_memset( &TMP$1525$4, 0, 24ll );
				__builtin_memset( &TMP$1522$4, 0, 24ll );
				FBSTRING* vr$699 = fb_StrConcat( &TMP$1522$4, (void*)"add ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1523$4, 0, 24ll );
				FBSTRING* vr$702 = fb_StrConcat( &TMP$1523$4, (void*)vr$699, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1524$4, 0, 24ll );
				FBSTRING* vr$705 = fb_StrConcat( &TMP$1524$4, (void*)vr$702, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1525$4, -1ll, (void*)vr$705, -1ll, 0 );
				HWRITEASM64( &TMP$1525$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1525$4 );
			}
			label$1218:;
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1222;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1222:;
			}
		}
		goto label$1215;
		label$1223:;
		{
			FBSTRING TMP$1527$3;
			FBSTRING TMP$1528$3;
			FBSTRING TMP$1529$3;
			FBSTRING TMP$1530$3;
			__builtin_memset( &TMP$1530$3, 0, 24ll );
			__builtin_memset( &TMP$1527$3, 0, 24ll );
			FBSTRING* vr$714 = fb_StrConcat( &TMP$1527$3, (void*)"and ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1528$3, 0, 24ll );
			FBSTRING* vr$717 = fb_StrConcat( &TMP$1528$3, (void*)vr$714, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1529$3, 0, 24ll );
			FBSTRING* vr$720 = fb_StrConcat( &TMP$1529$3, (void*)vr$717, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1530$3, -1ll, (void*)vr$720, -1ll, 0 );
			HWRITEASM64( &TMP$1530$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1530$3 );
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1225;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1225:;
			}
		}
		goto label$1215;
		label$1226:;
		{
			FBSTRING TMP$1531$3;
			FBSTRING TMP$1532$3;
			FBSTRING TMP$1533$3;
			FBSTRING TMP$1534$3;
			__builtin_memset( &TMP$1534$3, 0, 24ll );
			__builtin_memset( &TMP$1531$3, 0, 24ll );
			FBSTRING* vr$729 = fb_StrConcat( &TMP$1531$3, (void*)"or ", 4ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1532$3, 0, 24ll );
			FBSTRING* vr$732 = fb_StrConcat( &TMP$1532$3, (void*)vr$729, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1533$3, 0, 24ll );
			FBSTRING* vr$735 = fb_StrConcat( &TMP$1533$3, (void*)vr$732, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1534$3, -1ll, (void*)vr$735, -1ll, 0 );
			HWRITEASM64( &TMP$1534$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1534$3 );
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1228;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1228:;
			}
		}
		goto label$1215;
		label$1229:;
		{
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1231;
			{
				FBSTRING TMP$1562$4;
				FBSTRING TMP$1563$4;
				FBSTRING TMP$1564$4;
				FBSTRING TMP$1565$4;
				if( TEMPODTYPE$1 != 1ll ) goto label$1233;
				{
					FBSTRING TMP$1536$5;
					FBSTRING TMP$1537$5;
					FBSTRING TMP$1538$5;
					__builtin_memset( &TMP$1538$5, 0, 24ll );
					__builtin_memset( &TMP$1536$5, 0, 24ll );
					FBSTRING* vr$743 = fb_StrConcat( &TMP$1536$5, (void*)"xor ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$1537$5, 0, 24ll );
					FBSTRING* vr$746 = fb_StrConcat( &TMP$1537$5, (void*)vr$743, -1ll, (void*)", 1", 4ll );
					fb_StrAssign( (void*)&TMP$1538$5, -1ll, (void*)vr$746, -1ll, 0 );
					HWRITEASM64( &TMP$1538$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1538$5 );
				}
				goto label$1232;
				label$1233:;
				{
					FBSTRING TMP$1540$5;
					FBSTRING TMP$1541$5;
					__builtin_memset( &TMP$1541$5, 0, 24ll );
					__builtin_memset( &TMP$1540$5, 0, 24ll );
					FBSTRING* vr$754 = fb_StrConcat( &TMP$1540$5, (void*)"not ", 5ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1541$5, -1ll, (void*)vr$754, -1ll, 0 );
					HWRITEASM64( &TMP$1541$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1541$5 );
				}
				label$1232:;
				{
					if( TEMPODTYPE$1 == 8ll ) goto label$1236;
					label$1237:;
					if( TEMPODTYPE$1 == 9ll ) goto label$1236;
					label$1238:;
					if( TEMPODTYPE$1 == 13ll ) goto label$1236;
					label$1239:;
					if( TEMPODTYPE$1 == 14ll ) goto label$1236;
					label$1240:;
					if( TEMPODTYPE$1 != 10ll ) goto label$1235;
					label$1236:;
					{
						FBSTRING TMP$1542$6;
						FBSTRING TMP$1543$6;
						FBSTRING TMP$1544$6;
						FBSTRING TMP$1545$6;
						__builtin_memset( &TMP$1545$6, 0, 24ll );
						__builtin_memset( &TMP$1542$6, 0, 24ll );
						FBSTRING* vr$762 = fb_StrConcat( &TMP$1542$6, (void*)"mov ", 5ll, *(void**)REGSTRQ$, 0ll );
						__builtin_memset( &TMP$1543$6, 0, 24ll );
						FBSTRING* vr$765 = fb_StrConcat( &TMP$1543$6, (void*)vr$762, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1544$6, 0, 24ll );
						FBSTRING* vr$768 = fb_StrConcat( &TMP$1544$6, (void*)vr$765, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$1545$6, -1ll, (void*)vr$768, -1ll, 0 );
						HWRITEASM64( &TMP$1545$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1545$6 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRQ$, 0ll, 0 );
					}
					goto label$1234;
					label$1235:;
					if( TEMPODTYPE$1 == 11ll ) goto label$1242;
					label$1243:;
					if( TEMPODTYPE$1 != 12ll ) goto label$1241;
					label$1242:;
					{
						FBSTRING TMP$1546$6;
						FBSTRING TMP$1547$6;
						FBSTRING TMP$1548$6;
						FBSTRING TMP$1549$6;
						__builtin_memset( &TMP$1549$6, 0, 24ll );
						__builtin_memset( &TMP$1546$6, 0, 24ll );
						FBSTRING* vr$777 = fb_StrConcat( &TMP$1546$6, (void*)"mov ", 5ll, *(void**)REGSTRD$, 0ll );
						__builtin_memset( &TMP$1547$6, 0, 24ll );
						FBSTRING* vr$780 = fb_StrConcat( &TMP$1547$6, (void*)vr$777, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1548$6, 0, 24ll );
						FBSTRING* vr$783 = fb_StrConcat( &TMP$1548$6, (void*)vr$780, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$1549$6, -1ll, (void*)vr$783, -1ll, 0 );
						HWRITEASM64( &TMP$1549$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1549$6 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRD$, 0ll, 0 );
					}
					goto label$1234;
					label$1241:;
					if( TEMPODTYPE$1 == 5ll ) goto label$1245;
					label$1246:;
					if( TEMPODTYPE$1 != 6ll ) goto label$1244;
					label$1245:;
					{
						FBSTRING TMP$1550$6;
						FBSTRING TMP$1551$6;
						FBSTRING TMP$1552$6;
						FBSTRING TMP$1553$6;
						__builtin_memset( &TMP$1553$6, 0, 24ll );
						__builtin_memset( &TMP$1550$6, 0, 24ll );
						FBSTRING* vr$792 = fb_StrConcat( &TMP$1550$6, (void*)"mov ", 5ll, *(void**)REGSTRW$, 0ll );
						__builtin_memset( &TMP$1551$6, 0, 24ll );
						FBSTRING* vr$795 = fb_StrConcat( &TMP$1551$6, (void*)vr$792, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1552$6, 0, 24ll );
						FBSTRING* vr$798 = fb_StrConcat( &TMP$1552$6, (void*)vr$795, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$1553$6, -1ll, (void*)vr$798, -1ll, 0 );
						HWRITEASM64( &TMP$1553$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1553$6 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRW$, 0ll, 0 );
					}
					goto label$1234;
					label$1244:;
					if( TEMPODTYPE$1 == 2ll ) goto label$1248;
					label$1249:;
					if( TEMPODTYPE$1 == 3ll ) goto label$1248;
					label$1250:;
					if( TEMPODTYPE$1 == 1ll ) goto label$1248;
					label$1251:;
					if( TEMPODTYPE$1 != 4ll ) goto label$1247;
					label$1248:;
					{
						FBSTRING TMP$1554$6;
						FBSTRING TMP$1555$6;
						FBSTRING TMP$1556$6;
						FBSTRING TMP$1557$6;
						__builtin_memset( &TMP$1557$6, 0, 24ll );
						__builtin_memset( &TMP$1554$6, 0, 24ll );
						FBSTRING* vr$807 = fb_StrConcat( &TMP$1554$6, (void*)"mov ", 5ll, *(void**)REGSTRB$, 0ll );
						__builtin_memset( &TMP$1555$6, 0, 24ll );
						FBSTRING* vr$810 = fb_StrConcat( &TMP$1555$6, (void*)vr$807, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1556$6, 0, 24ll );
						FBSTRING* vr$813 = fb_StrConcat( &TMP$1556$6, (void*)vr$810, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$1557$6, -1ll, (void*)vr$813, -1ll, 0 );
						HWRITEASM64( &TMP$1557$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1557$6 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRB$, 0ll, 0 );
					}
					goto label$1234;
					label$1247:;
					{
						FBSTRING TMP$1558$6;
						FBSTRING TMP$1559$6;
						FBSTRING TMP$1560$6;
						FBSTRING TMP$1561$6;
						__builtin_memset( &TMP$1558$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1558$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1558$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1558$6 );
						__builtin_memset( &TMP$1560$6, 0, 24ll );
						FBSTRING* vr$824 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
						__builtin_memset( &TMP$1559$6, 0, 24ll );
						FBSTRING* vr$827 = fb_StrConcat( &TMP$1559$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49ll, (void*)vr$824, -1ll );
						fb_StrAssign( (void*)&TMP$1560$6, -1ll, (void*)vr$827, -1ll, 0 );
						HWRITEASM64( &TMP$1560$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1560$6 );
						__builtin_memset( &TMP$1561$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1561$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1561$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1561$6 );
					}
					label$1252:;
					label$1234:;
				}
				__builtin_memset( &TMP$1565$4, 0, 24ll );
				__builtin_memset( &TMP$1562$4, 0, 24ll );
				FBSTRING* vr$840 = fb_StrConcat( &TMP$1562$4, (void*)"or ", 4ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1563$4, 0, 24ll );
				FBSTRING* vr$843 = fb_StrConcat( &TMP$1563$4, (void*)vr$840, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1564$4, 0, 24ll );
				FBSTRING* vr$846 = fb_StrConcat( &TMP$1564$4, (void*)vr$843, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1565$4, -1ll, (void*)vr$846, -1ll, 0 );
				HWRITEASM64( &TMP$1565$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1565$4 );
			}
			goto label$1230;
			label$1231:;
			{
				FBSTRING TMP$1591$4;
				FBSTRING TMP$1592$4;
				FBSTRING TMP$1593$4;
				FBSTRING TMP$1594$4;
				FBSTRING TMP$1595$4;
				FBSTRING TMP$1596$4;
				FBSTRING TMP$1597$4;
				FBSTRING TMP$1598$4;
				{
					if( TEMPODTYPE$1 == 8ll ) goto label$1255;
					label$1256:;
					if( TEMPODTYPE$1 == 9ll ) goto label$1255;
					label$1257:;
					if( TEMPODTYPE$1 == 13ll ) goto label$1255;
					label$1258:;
					if( TEMPODTYPE$1 == 14ll ) goto label$1255;
					label$1259:;
					if( TEMPODTYPE$1 != 10ll ) goto label$1254;
					label$1255:;
					{
						FBSTRING TMP$1566$6;
						FBSTRING TMP$1567$6;
						FBSTRING TMP$1568$6;
						FBSTRING TMP$1569$6;
						__builtin_memset( &TMP$1569$6, 0, 24ll );
						__builtin_memset( &TMP$1566$6, 0, 24ll );
						FBSTRING* vr$854 = fb_StrConcat( &TMP$1566$6, (void*)"mov ", 5ll, *(void**)REGSTRQ$, 0ll );
						__builtin_memset( &TMP$1567$6, 0, 24ll );
						FBSTRING* vr$857 = fb_StrConcat( &TMP$1567$6, (void*)vr$854, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1568$6, 0, 24ll );
						FBSTRING* vr$860 = fb_StrConcat( &TMP$1568$6, (void*)vr$857, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1569$6, -1ll, (void*)vr$860, -1ll, 0 );
						HWRITEASM64( &TMP$1569$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1569$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1ll, *(void**)REGSTRQ$, 0ll, 0 );
					}
					goto label$1253;
					label$1254:;
					if( TEMPODTYPE$1 == 11ll ) goto label$1261;
					label$1262:;
					if( TEMPODTYPE$1 != 12ll ) goto label$1260;
					label$1261:;
					{
						FBSTRING TMP$1570$6;
						FBSTRING TMP$1571$6;
						FBSTRING TMP$1572$6;
						FBSTRING TMP$1573$6;
						__builtin_memset( &TMP$1573$6, 0, 24ll );
						__builtin_memset( &TMP$1570$6, 0, 24ll );
						FBSTRING* vr$869 = fb_StrConcat( &TMP$1570$6, (void*)"mov ", 5ll, *(void**)REGSTRD$, 0ll );
						__builtin_memset( &TMP$1571$6, 0, 24ll );
						FBSTRING* vr$872 = fb_StrConcat( &TMP$1571$6, (void*)vr$869, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1572$6, 0, 24ll );
						FBSTRING* vr$875 = fb_StrConcat( &TMP$1572$6, (void*)vr$872, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1573$6, -1ll, (void*)vr$875, -1ll, 0 );
						HWRITEASM64( &TMP$1573$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1573$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1ll, *(void**)REGSTRD$, 0ll, 0 );
					}
					goto label$1253;
					label$1260:;
					if( TEMPODTYPE$1 == 5ll ) goto label$1264;
					label$1265:;
					if( TEMPODTYPE$1 != 6ll ) goto label$1263;
					label$1264:;
					{
						FBSTRING TMP$1574$6;
						FBSTRING TMP$1575$6;
						FBSTRING TMP$1576$6;
						FBSTRING TMP$1577$6;
						__builtin_memset( &TMP$1577$6, 0, 24ll );
						__builtin_memset( &TMP$1574$6, 0, 24ll );
						FBSTRING* vr$884 = fb_StrConcat( &TMP$1574$6, (void*)"mov ", 5ll, *(void**)REGSTRW$, 0ll );
						__builtin_memset( &TMP$1575$6, 0, 24ll );
						FBSTRING* vr$887 = fb_StrConcat( &TMP$1575$6, (void*)vr$884, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1576$6, 0, 24ll );
						FBSTRING* vr$890 = fb_StrConcat( &TMP$1576$6, (void*)vr$887, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1577$6, -1ll, (void*)vr$890, -1ll, 0 );
						HWRITEASM64( &TMP$1577$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1577$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1ll, *(void**)REGSTRW$, 0ll, 0 );
					}
					goto label$1253;
					label$1263:;
					if( TEMPODTYPE$1 == 2ll ) goto label$1267;
					label$1268:;
					if( TEMPODTYPE$1 == 3ll ) goto label$1267;
					label$1269:;
					if( TEMPODTYPE$1 == 1ll ) goto label$1267;
					label$1270:;
					if( TEMPODTYPE$1 != 4ll ) goto label$1266;
					label$1267:;
					{
						FBSTRING TMP$1578$6;
						FBSTRING TMP$1579$6;
						FBSTRING TMP$1580$6;
						FBSTRING TMP$1581$6;
						__builtin_memset( &TMP$1581$6, 0, 24ll );
						__builtin_memset( &TMP$1578$6, 0, 24ll );
						FBSTRING* vr$899 = fb_StrConcat( &TMP$1578$6, (void*)"mov ", 5ll, *(void**)REGSTRB$, 0ll );
						__builtin_memset( &TMP$1579$6, 0, 24ll );
						FBSTRING* vr$902 = fb_StrConcat( &TMP$1579$6, (void*)vr$899, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1580$6, 0, 24ll );
						FBSTRING* vr$905 = fb_StrConcat( &TMP$1580$6, (void*)vr$902, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$1581$6, -1ll, (void*)vr$905, -1ll, 0 );
						HWRITEASM64( &TMP$1581$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1581$6 );
						fb_StrAssign( (void*)&OP1BIS$1, -1ll, *(void**)REGSTRB$, 0ll, 0 );
					}
					goto label$1253;
					label$1266:;
					{
						FBSTRING TMP$1582$6;
						FBSTRING TMP$1583$6;
						FBSTRING TMP$1584$6;
						FBSTRING TMP$1585$6;
						__builtin_memset( &TMP$1582$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1582$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1582$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1582$6 );
						__builtin_memset( &TMP$1584$6, 0, 24ll );
						FBSTRING* vr$916 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
						__builtin_memset( &TMP$1583$6, 0, 24ll );
						FBSTRING* vr$919 = fb_StrConcat( &TMP$1583$6, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49ll, (void*)vr$916, -1ll );
						fb_StrAssign( (void*)&TMP$1584$6, -1ll, (void*)vr$919, -1ll, 0 );
						HWRITEASM64( &TMP$1584$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1584$6 );
						__builtin_memset( &TMP$1585$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$1585$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$1585$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1585$6 );
					}
					label$1271:;
					label$1253:;
				}
				if( TEMPODTYPE$1 != 1ll ) goto label$1273;
				{
					FBSTRING TMP$1586$5;
					FBSTRING TMP$1587$5;
					FBSTRING TMP$1588$5;
					__builtin_memset( &TMP$1588$5, 0, 24ll );
					__builtin_memset( &TMP$1586$5, 0, 24ll );
					FBSTRING* vr$931 = fb_StrConcat( &TMP$1586$5, (void*)"xor ", 5ll, (void*)&OP1BIS$1, -1ll );
					__builtin_memset( &TMP$1587$5, 0, 24ll );
					FBSTRING* vr$934 = fb_StrConcat( &TMP$1587$5, (void*)vr$931, -1ll, (void*)", 1", 4ll );
					fb_StrAssign( (void*)&TMP$1588$5, -1ll, (void*)vr$934, -1ll, 0 );
					HWRITEASM64( &TMP$1588$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1588$5 );
				}
				goto label$1272;
				label$1273:;
				{
					FBSTRING TMP$1589$5;
					FBSTRING TMP$1590$5;
					__builtin_memset( &TMP$1590$5, 0, 24ll );
					__builtin_memset( &TMP$1589$5, 0, 24ll );
					FBSTRING* vr$942 = fb_StrConcat( &TMP$1589$5, (void*)"not ", 5ll, (void*)&OP1BIS$1, -1ll );
					fb_StrAssign( (void*)&TMP$1590$5, -1ll, (void*)vr$942, -1ll, 0 );
					HWRITEASM64( &TMP$1590$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1590$5 );
				}
				label$1272:;
				__builtin_memset( &TMP$1594$4, 0, 24ll );
				__builtin_memset( &TMP$1591$4, 0, 24ll );
				FBSTRING* vr$951 = fb_StrConcat( &TMP$1591$4, (void*)"or ", 4ll, (void*)&OP1BIS$1, -1ll );
				__builtin_memset( &TMP$1592$4, 0, 24ll );
				FBSTRING* vr$954 = fb_StrConcat( &TMP$1592$4, (void*)vr$951, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1593$4, 0, 24ll );
				FBSTRING* vr$957 = fb_StrConcat( &TMP$1593$4, (void*)vr$954, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1594$4, -1ll, (void*)vr$957, -1ll, 0 );
				HWRITEASM64( &TMP$1594$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1594$4 );
				__builtin_memset( &TMP$1598$4, 0, 24ll );
				__builtin_memset( &TMP$1595$4, 0, 24ll );
				FBSTRING* vr$966 = fb_StrConcat( &TMP$1595$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1596$4, 0, 24ll );
				FBSTRING* vr$969 = fb_StrConcat( &TMP$1596$4, (void*)vr$966, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1597$4, 0, 24ll );
				FBSTRING* vr$972 = fb_StrConcat( &TMP$1597$4, (void*)vr$969, -1ll, (void*)&OP1BIS$1, -1ll );
				fb_StrAssign( (void*)&TMP$1598$4, -1ll, (void*)vr$972, -1ll, 0 );
				HWRITEASM64( &TMP$1598$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1598$4 );
			}
			label$1230:;
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1275;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1275:;
			}
		}
		goto label$1215;
		label$1276:;
		{
			FBSTRING TMP$1599$3;
			FBSTRING TMP$1600$3;
			FBSTRING TMP$1601$3;
			FBSTRING TMP$1602$3;
			__builtin_memset( &TMP$1602$3, 0, 24ll );
			__builtin_memset( &TMP$1599$3, 0, 24ll );
			FBSTRING* vr$981 = fb_StrConcat( &TMP$1599$3, (void*)"xor ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1600$3, 0, 24ll );
			FBSTRING* vr$984 = fb_StrConcat( &TMP$1600$3, (void*)vr$981, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1601$3, 0, 24ll );
			FBSTRING* vr$987 = fb_StrConcat( &TMP$1601$3, (void*)vr$984, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1602$3, -1ll, (void*)vr$987, -1ll, 0 );
			HWRITEASM64( &TMP$1602$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1602$3 );
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1278;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1278:;
			}
		}
		goto label$1215;
		label$1279:;
		{
			FBSTRING TMP$1623$3;
			FBSTRING TMP$1624$3;
			FBSTRING TMP$1625$3;
			FBSTRING TMP$1626$3;
			FBSTRING TMP$1632$3;
			FBSTRING TMP$1633$3;
			FBSTRING TMP$1634$3;
			FBSTRING TMP$1635$3;
			{
				if( TEMPODTYPE$1 == 8ll ) goto label$1282;
				label$1283:;
				if( TEMPODTYPE$1 == 9ll ) goto label$1282;
				label$1284:;
				if( TEMPODTYPE$1 == 13ll ) goto label$1282;
				label$1285:;
				if( TEMPODTYPE$1 == 14ll ) goto label$1282;
				label$1286:;
				if( TEMPODTYPE$1 != 10ll ) goto label$1281;
				label$1282:;
				{
					FBSTRING TMP$1603$5;
					FBSTRING TMP$1604$5;
					FBSTRING TMP$1605$5;
					FBSTRING TMP$1606$5;
					__builtin_memset( &TMP$1606$5, 0, 24ll );
					__builtin_memset( &TMP$1603$5, 0, 24ll );
					FBSTRING* vr$995 = fb_StrConcat( &TMP$1603$5, (void*)"mov ", 5ll, *(void**)REGSTRQ$, 0ll );
					__builtin_memset( &TMP$1604$5, 0, 24ll );
					FBSTRING* vr$998 = fb_StrConcat( &TMP$1604$5, (void*)vr$995, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1605$5, 0, 24ll );
					FBSTRING* vr$1001 = fb_StrConcat( &TMP$1605$5, (void*)vr$998, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1606$5, -1ll, (void*)vr$1001, -1ll, 0 );
					HWRITEASM64( &TMP$1606$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1606$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRQ$, 0ll, 0 );
				}
				goto label$1280;
				label$1281:;
				if( TEMPODTYPE$1 == 11ll ) goto label$1288;
				label$1289:;
				if( TEMPODTYPE$1 != 12ll ) goto label$1287;
				label$1288:;
				{
					FBSTRING TMP$1607$5;
					FBSTRING TMP$1608$5;
					FBSTRING TMP$1609$5;
					FBSTRING TMP$1610$5;
					__builtin_memset( &TMP$1610$5, 0, 24ll );
					__builtin_memset( &TMP$1607$5, 0, 24ll );
					FBSTRING* vr$1010 = fb_StrConcat( &TMP$1607$5, (void*)"mov ", 5ll, *(void**)REGSTRD$, 0ll );
					__builtin_memset( &TMP$1608$5, 0, 24ll );
					FBSTRING* vr$1013 = fb_StrConcat( &TMP$1608$5, (void*)vr$1010, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1609$5, 0, 24ll );
					FBSTRING* vr$1016 = fb_StrConcat( &TMP$1609$5, (void*)vr$1013, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1610$5, -1ll, (void*)vr$1016, -1ll, 0 );
					HWRITEASM64( &TMP$1610$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1610$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRD$, 0ll, 0 );
				}
				goto label$1280;
				label$1287:;
				if( TEMPODTYPE$1 == 5ll ) goto label$1291;
				label$1292:;
				if( TEMPODTYPE$1 != 6ll ) goto label$1290;
				label$1291:;
				{
					FBSTRING TMP$1611$5;
					FBSTRING TMP$1612$5;
					FBSTRING TMP$1613$5;
					FBSTRING TMP$1614$5;
					__builtin_memset( &TMP$1614$5, 0, 24ll );
					__builtin_memset( &TMP$1611$5, 0, 24ll );
					FBSTRING* vr$1025 = fb_StrConcat( &TMP$1611$5, (void*)"mov ", 5ll, *(void**)REGSTRW$, 0ll );
					__builtin_memset( &TMP$1612$5, 0, 24ll );
					FBSTRING* vr$1028 = fb_StrConcat( &TMP$1612$5, (void*)vr$1025, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1613$5, 0, 24ll );
					FBSTRING* vr$1031 = fb_StrConcat( &TMP$1613$5, (void*)vr$1028, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1614$5, -1ll, (void*)vr$1031, -1ll, 0 );
					HWRITEASM64( &TMP$1614$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1614$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRW$, 0ll, 0 );
				}
				goto label$1280;
				label$1290:;
				if( TEMPODTYPE$1 == 2ll ) goto label$1294;
				label$1295:;
				if( TEMPODTYPE$1 == 3ll ) goto label$1294;
				label$1296:;
				if( TEMPODTYPE$1 == 1ll ) goto label$1294;
				label$1297:;
				if( TEMPODTYPE$1 != 4ll ) goto label$1293;
				label$1294:;
				{
					FBSTRING TMP$1615$5;
					FBSTRING TMP$1616$5;
					FBSTRING TMP$1617$5;
					FBSTRING TMP$1618$5;
					__builtin_memset( &TMP$1618$5, 0, 24ll );
					__builtin_memset( &TMP$1615$5, 0, 24ll );
					FBSTRING* vr$1040 = fb_StrConcat( &TMP$1615$5, (void*)"mov ", 5ll, *(void**)REGSTRB$, 0ll );
					__builtin_memset( &TMP$1616$5, 0, 24ll );
					FBSTRING* vr$1043 = fb_StrConcat( &TMP$1616$5, (void*)vr$1040, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1617$5, 0, 24ll );
					FBSTRING* vr$1046 = fb_StrConcat( &TMP$1617$5, (void*)vr$1043, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1618$5, -1ll, (void*)vr$1046, -1ll, 0 );
					HWRITEASM64( &TMP$1618$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1618$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)REGSTRB$, 0ll, 0 );
				}
				goto label$1280;
				label$1293:;
				{
					FBSTRING TMP$1619$5;
					FBSTRING TMP$1620$5;
					FBSTRING TMP$1621$5;
					FBSTRING TMP$1622$5;
					__builtin_memset( &TMP$1619$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1619$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1619$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1619$5 );
					__builtin_memset( &TMP$1621$5, 0, 24ll );
					FBSTRING* vr$1057 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
					__builtin_memset( &TMP$1620$5, 0, 24ll );
					FBSTRING* vr$1060 = fb_StrConcat( &TMP$1620$5, (void*)"FOUND AN ERROR : BOP datatype not handled 012 = ", 49ll, (void*)vr$1057, -1ll );
					fb_StrAssign( (void*)&TMP$1621$5, -1ll, (void*)vr$1060, -1ll, 0 );
					HWRITEASM64( &TMP$1621$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1621$5 );
					__builtin_memset( &TMP$1622$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1622$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1622$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1622$5 );
				}
				label$1298:;
				label$1280:;
			}
			__builtin_memset( &TMP$1626$3, 0, 24ll );
			__builtin_memset( &TMP$1623$3, 0, 24ll );
			FBSTRING* vr$1073 = fb_StrConcat( &TMP$1623$3, (void*)"xor ", 5ll, (void*)&OP2$1, -1ll );
			__builtin_memset( &TMP$1624$3, 0, 24ll );
			FBSTRING* vr$1076 = fb_StrConcat( &TMP$1624$3, (void*)vr$1073, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1625$3, 0, 24ll );
			FBSTRING* vr$1079 = fb_StrConcat( &TMP$1625$3, (void*)vr$1076, -1ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1626$3, -1ll, (void*)vr$1079, -1ll, 0 );
			HWRITEASM64( &TMP$1626$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1626$3 );
			if( TEMPODTYPE$1 != 1ll ) goto label$1300;
			{
				FBSTRING TMP$1627$4;
				FBSTRING TMP$1628$4;
				FBSTRING TMP$1629$4;
				__builtin_memset( &TMP$1629$4, 0, 24ll );
				__builtin_memset( &TMP$1627$4, 0, 24ll );
				FBSTRING* vr$1087 = fb_StrConcat( &TMP$1627$4, (void*)"xor ", 5ll, (void*)&OP2$1, -1ll );
				__builtin_memset( &TMP$1628$4, 0, 24ll );
				FBSTRING* vr$1090 = fb_StrConcat( &TMP$1628$4, (void*)vr$1087, -1ll, (void*)", 1", 4ll );
				fb_StrAssign( (void*)&TMP$1629$4, -1ll, (void*)vr$1090, -1ll, 0 );
				HWRITEASM64( &TMP$1629$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1629$4 );
			}
			goto label$1299;
			label$1300:;
			{
				FBSTRING TMP$1630$4;
				FBSTRING TMP$1631$4;
				__builtin_memset( &TMP$1631$4, 0, 24ll );
				__builtin_memset( &TMP$1630$4, 0, 24ll );
				FBSTRING* vr$1098 = fb_StrConcat( &TMP$1630$4, (void*)"not ", 5ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1631$4, -1ll, (void*)vr$1098, -1ll, 0 );
				HWRITEASM64( &TMP$1631$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1631$4 );
			}
			label$1299:;
			__builtin_memset( &TMP$1635$3, 0, 24ll );
			__builtin_memset( &TMP$1632$3, 0, 24ll );
			FBSTRING* vr$1107 = fb_StrConcat( &TMP$1632$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1633$3, 0, 24ll );
			FBSTRING* vr$1110 = fb_StrConcat( &TMP$1633$3, (void*)vr$1107, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1634$3, 0, 24ll );
			FBSTRING* vr$1113 = fb_StrConcat( &TMP$1634$3, (void*)vr$1110, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1635$3, -1ll, (void*)vr$1113, -1ll, 0 );
			HWRITEASM64( &TMP$1635$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1635$3 );
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1302;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1302:;
			}
		}
		goto label$1215;
		label$1303:;
		{
			int32 vr$1118 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"1", 2ll );
			if( (int64)vr$1118 != 0ll ) goto label$1305;
			{
				FBSTRING TMP$1636$4;
				FBSTRING TMP$1637$4;
				__builtin_memset( &TMP$1637$4, 0, 24ll );
				__builtin_memset( &TMP$1636$4, 0, 24ll );
				FBSTRING* vr$1124 = fb_StrConcat( &TMP$1636$4, (void*)"dec ", 5ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1637$4, -1ll, (void*)vr$1124, -1ll, 0 );
				HWRITEASM64( &TMP$1637$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1637$4 );
			}
			goto label$1304;
			label$1305:;
			int32 vr$1129 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"-1", 3ll );
			if( (int64)vr$1129 != 0ll ) goto label$1306;
			{
				FBSTRING TMP$1638$4;
				FBSTRING TMP$1639$4;
				__builtin_memset( &TMP$1639$4, 0, 24ll );
				__builtin_memset( &TMP$1638$4, 0, 24ll );
				FBSTRING* vr$1135 = fb_StrConcat( &TMP$1638$4, (void*)"inc ", 5ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1639$4, -1ll, (void*)vr$1135, -1ll, 0 );
				HWRITEASM64( &TMP$1639$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1639$4 );
			}
			goto label$1304;
			label$1306:;
			{
				FBSTRING TMP$1641$4;
				FBSTRING TMP$1642$4;
				FBSTRING TMP$1643$4;
				FBSTRING TMP$1644$4;
				__builtin_memset( &TMP$1644$4, 0, 24ll );
				__builtin_memset( &TMP$1641$4, 0, 24ll );
				FBSTRING* vr$1144 = fb_StrConcat( &TMP$1641$4, (void*)"sub ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1642$4, 0, 24ll );
				FBSTRING* vr$1147 = fb_StrConcat( &TMP$1642$4, (void*)vr$1144, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1643$4, 0, 24ll );
				FBSTRING* vr$1150 = fb_StrConcat( &TMP$1643$4, (void*)vr$1147, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1644$4, -1ll, (void*)vr$1150, -1ll, 0 );
				HWRITEASM64( &TMP$1644$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1644$4 );
			}
			label$1304:;
			if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1308;
			{
				RESTORE_VRREG( VR$1, VRREG$1 );
				label$1308:;
			}
		}
		goto label$1215;
		label$1309:;
		{
			FBSTRING TMP$1646$3;
			FBSTRING TMP$1647$3;
			FBSTRING TMP$1648$3;
			FBSTRING TMP$1649$3;
			__builtin_memset( &TMP$1649$3, 0, 24ll );
			__builtin_memset( &TMP$1646$3, 0, 24ll );
			FBSTRING* vr$1159 = fb_StrConcat( &TMP$1646$3, (void*)"imul ", 6ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1647$3, 0, 24ll );
			FBSTRING* vr$1162 = fb_StrConcat( &TMP$1647$3, (void*)vr$1159, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1648$3, 0, 24ll );
			FBSTRING* vr$1165 = fb_StrConcat( &TMP$1648$3, (void*)vr$1162, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1649$3, -1ll, (void*)vr$1165, -1ll, 0 );
			HWRITEASM64( &TMP$1649$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1649$3 );
			int32 vr$1170 = fb_StrCompare( (void*)&OP1PREV$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$1170 == 0ll ) goto label$1311;
			{
				FBSTRING TMP$1650$4;
				FBSTRING TMP$1651$4;
				FBSTRING TMP$1652$4;
				FBSTRING TMP$1653$4;
				__builtin_memset( &TMP$1653$4, 0, 24ll );
				__builtin_memset( &TMP$1650$4, 0, 24ll );
				FBSTRING* vr$1177 = fb_StrConcat( &TMP$1650$4, (void*)"mov ", 5ll, (void*)&OP1PREV$1, -1ll );
				__builtin_memset( &TMP$1651$4, 0, 24ll );
				FBSTRING* vr$1180 = fb_StrConcat( &TMP$1651$4, (void*)vr$1177, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1652$4, 0, 24ll );
				FBSTRING* vr$1183 = fb_StrConcat( &TMP$1652$4, (void*)vr$1180, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$1653$4, -1ll, (void*)vr$1183, -1ll, 0 );
				HWRITEASM64( &TMP$1653$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1653$4 );
				label$1311:;
			}
		}
		goto label$1215;
		label$1312:;
		{
			int64 TMP$1665$3;
			FBSTRING TMP$1685$3;
			FBSTRING TMP$1686$3;
			FBSTRING TMP$1687$3;
			FBSTRING TMP$1688$3;
			if( ((((int64)-(*(int64*)((uint8*)V1$1 + 8ll) == 9ll) | (int64)-(*(int64*)((uint8*)V1$1 + 8ll) == 14ll)) | (int64)-(*(int64*)((uint8*)V2$1 + 8ll) == 9ll)) | (int64)-(*(int64*)((uint8*)V2$1 + 8ll) == 14ll)) == 0ll ) goto label$1314;
			{
				{
					uint64 TMP$1654$5;
					TMP$1654$5 = (uint64)OP$1;
					goto label$1316;
					label$1317:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"be", 3ll, 0 );
					}
					goto label$1315;
					label$1318:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"b", 2ll, 0 );
					}
					goto label$1315;
					label$1319:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"ne", 3ll, 0 );
					}
					goto label$1315;
					label$1320:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"nb", 3ll, 0 );
					}
					goto label$1315;
					label$1321:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"a", 2ll, 0 );
					}
					goto label$1315;
					label$1322:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"e", 2ll, 0 );
					}
					goto label$1315;
					label$1316:;
					static const void* tmp$3859[6ll] = {
						&&label$1322,
						&&label$1321,
						&&label$1318,
						&&label$1319,
						&&label$1320,
						&&label$1317,
					};
					if( (TMP$1654$5 - 45ull) > 5ull ) goto label$1315;
					goto *tmp$3859[TMP$1654$5 - 45ull];
					label$1315:;
				}
			}
			goto label$1313;
			label$1314:;
			{
				{
					uint64 TMP$1660$5;
					TMP$1660$5 = (uint64)OP$1;
					goto label$1324;
					label$1325:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"le", 3ll, 0 );
					}
					goto label$1323;
					label$1326:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"l", 2ll, 0 );
					}
					goto label$1323;
					label$1327:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"ne", 3ll, 0 );
					}
					goto label$1323;
					label$1328:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"ge", 3ll, 0 );
					}
					goto label$1323;
					label$1329:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"g", 2ll, 0 );
					}
					goto label$1323;
					label$1330:;
					{
						fb_StrAssign( (void*)&SUFFIX$1, -1ll, (void*)"e", 2ll, 0 );
					}
					goto label$1323;
					label$1324:;
					static const void* tmp$3860[6ll] = {
						&&label$1330,
						&&label$1329,
						&&label$1326,
						&&label$1327,
						&&label$1328,
						&&label$1325,
					};
					if( (TMP$1660$5 - 45ull) > 5ull ) goto label$1323;
					goto *tmp$3860[TMP$1660$5 - 45ull];
					label$1323:;
				}
			}
			label$1313:;
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$1331;
			int64 vr$1210 = FBGETOPTION( 0ll );
			TMP$1665$3 = (int64)-(vr$1210 == 2ll);
			goto label$3000;
			label$1331:;
			TMP$1665$3 = 0ll;
			label$3000:;
			if( TMP$1665$3 == 0ll ) goto label$1333;
			{
				int64 TMP$1666$4;
				int64 TMP$1679$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$1334;
				TMP$1666$4 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) != 0ll);
				goto label$3001;
				label$1334:;
				TMP$1666$4 = 0ll;
				label$3001:;
				if( TMP$1666$4 == 0ll ) goto label$1336;
				{
					FBSTRING TMP$1668$5;
					FBSTRING TMP$1669$5;
					FBSTRING TMP$1670$5;
					FBSTRING TMP$1672$5;
					int64 TMP$1673$5;
					__builtin_memset( &TMP$1670$5, 0, 24ll );
					uint8* vr$1219 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$1668$5, 0, 24ll );
					FBSTRING* vr$1222 = fb_StrConcat( &TMP$1668$5, (void*)"mov rax, ", 10ll, (void*)vr$1219, 0ll );
					__builtin_memset( &TMP$1669$5, 0, 24ll );
					FBSTRING* vr$1225 = fb_StrConcat( &TMP$1669$5, (void*)vr$1222, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
					fb_StrAssign( (void*)&TMP$1670$5, -1ll, (void*)vr$1225, -1ll, 0 );
					HWRITEASM64( &TMP$1670$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1670$5 );
					__builtin_memset( &TMP$1672$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1672$5, -1ll, (void*)"mov rax, [rax]", 15ll, 0 );
					HWRITEASM64( &TMP$1672$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1672$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"rax", 4ll, 0 );
					if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$1337;
					TMP$1673$5 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 8ll) != 0ll);
					goto label$3002;
					label$1337:;
					TMP$1673$5 = 0ll;
					label$3002:;
					if( TMP$1673$5 == 0ll ) goto label$1339;
					{
						FBSTRING TMP$1674$6;
						FBSTRING TMP$1675$6;
						FBSTRING TMP$1676$6;
						FBSTRING TMP$1677$6;
						FBSTRING TMP$1678$6;
						int32 vr$1239 = REG_FINDFREE( 999999, -1ll );
						TEMPO$1 = (int64)vr$1239;
						fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
						*(int32*)((uint8*)REGHANDLE$ + (TEMPO$1 << (2ll & 63ll))) = -2;
						__builtin_memset( &TMP$1678$6, 0, 24ll );
						uint8* vr$1246 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
						__builtin_memset( &TMP$1674$6, 0, 24ll );
						FBSTRING* vr$1250 = fb_StrConcat( &TMP$1674$6, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$1675$6, 0, 24ll );
						FBSTRING* vr$1253 = fb_StrConcat( &TMP$1675$6, (void*)vr$1250, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1676$6, 0, 24ll );
						FBSTRING* vr$1256 = fb_StrConcat( &TMP$1676$6, (void*)vr$1253, -1ll, (void*)vr$1246, 0ll );
						__builtin_memset( &TMP$1677$6, 0, 24ll );
						FBSTRING* vr$1259 = fb_StrConcat( &TMP$1677$6, (void*)vr$1256, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
						fb_StrAssign( (void*)&TMP$1678$6, -1ll, (void*)vr$1259, -1ll, 0 );
						HWRITEASM64( &TMP$1678$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1678$6 );
						fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"[", 2ll, 0 );
						fb_StrConcatAssign( (void*)&OP2$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
						fb_StrConcatAssign( (void*)&OP2$1, -1ll, (void*)"]", 2ll, 0 );
					}
					label$1339:;
					label$1338:;
				}
				goto label$1335;
				label$1336:;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$1341;
				TMP$1679$4 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 8ll) != 0ll);
				goto label$3003;
				label$1341:;
				TMP$1679$4 = 0ll;
				label$3003:;
				if( TMP$1679$4 == 0ll ) goto label$1340;
				{
					FBSTRING TMP$1680$5;
					FBSTRING TMP$1681$5;
					FBSTRING TMP$1682$5;
					FBSTRING TMP$1683$5;
					__builtin_memset( &TMP$1682$5, 0, 24ll );
					uint8* vr$1274 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
					__builtin_memset( &TMP$1680$5, 0, 24ll );
					FBSTRING* vr$1277 = fb_StrConcat( &TMP$1680$5, (void*)"mov rax, ", 10ll, (void*)vr$1274, 0ll );
					__builtin_memset( &TMP$1681$5, 0, 24ll );
					FBSTRING* vr$1280 = fb_StrConcat( &TMP$1681$5, (void*)vr$1277, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
					fb_StrAssign( (void*)&TMP$1682$5, -1ll, (void*)vr$1280, -1ll, 0 );
					HWRITEASM64( &TMP$1682$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1682$5 );
					__builtin_memset( &TMP$1683$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1683$5, -1ll, (void*)"mov rax, [rax]", 15ll, 0 );
					HWRITEASM64( &TMP$1683$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1683$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"rax", 4ll, 0 );
				}
				label$1340:;
				label$1335:;
			}
			label$1333:;
			label$1332:;
			__builtin_memset( &TMP$1688$3, 0, 24ll );
			__builtin_memset( &TMP$1685$3, 0, 24ll );
			FBSTRING* vr$1294 = fb_StrConcat( &TMP$1685$3, (void*)"cmp ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1686$3, 0, 24ll );
			FBSTRING* vr$1297 = fb_StrConcat( &TMP$1686$3, (void*)vr$1294, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1687$3, 0, 24ll );
			FBSTRING* vr$1300 = fb_StrConcat( &TMP$1687$3, (void*)vr$1297, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$1688$3, -1ll, (void*)vr$1300, -1ll, 0 );
			HWRITEASM64( &TMP$1688$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1688$3 );
			if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$1343;
			{
				FBSTRING TMP$1691$4;
				FBSTRING TMP$1692$4;
				FBSTRING TMP$1693$4;
				FBSTRING TMP$1695$4;
				FBSTRING TMP$1696$4;
				FBSTRING TMP$1697$4;
				__builtin_memset( &TMP$1693$4, 0, 24ll );
				__builtin_memset( &TMP$1691$4, 0, 24ll );
				FBSTRING* vr$1308 = fb_StrConcat( &TMP$1691$4, (void*)"set", 4ll, (void*)&SUFFIX$1, -1ll );
				__builtin_memset( &TMP$1692$4, 0, 24ll );
				FBSTRING* vr$1311 = fb_StrConcat( &TMP$1692$4, (void*)vr$1308, -1ll, (void*)" al", 4ll );
				fb_StrAssign( (void*)&TMP$1693$4, -1ll, (void*)vr$1311, -1ll, 0 );
				HWRITEASM64( &TMP$1693$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1693$4 );
				__builtin_memset( &TMP$1697$4, 0, 24ll );
				__builtin_memset( &TMP$1695$4, 0, 24ll );
				FBSTRING* vr$1319 = fb_StrConcat( &TMP$1695$4, (void*)"movzx ", 7ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1696$4, 0, 24ll );
				FBSTRING* vr$1322 = fb_StrConcat( &TMP$1696$4, (void*)vr$1319, -1ll, (void*)", al", 5ll );
				fb_StrAssign( (void*)&TMP$1697$4, -1ll, (void*)vr$1322, -1ll, 0 );
				HWRITEASM64( &TMP$1697$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1697$4 );
				if( TEMPODTYPE$1 == 1ll ) goto label$1345;
				{
					FBSTRING TMP$1699$5;
					FBSTRING TMP$1700$5;
					__builtin_memset( &TMP$1700$5, 0, 24ll );
					__builtin_memset( &TMP$1699$5, 0, 24ll );
					FBSTRING* vr$1330 = fb_StrConcat( &TMP$1699$5, (void*)"neg ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
					fb_StrAssign( (void*)&TMP$1700$5, -1ll, (void*)vr$1330, -1ll, 0 );
					HWRITEASM64( &TMP$1700$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1700$5 );
				}
				label$1345:;
				label$1344:;
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			goto label$1342;
			label$1343:;
			{
				FBSTRING TMP$1702$4;
				FBSTRING TMP$1703$4;
				FBSTRING TMP$1704$4;
				FBSTRING TMP$1705$4;
				__builtin_memset( &TMP$1705$4, 0, 24ll );
				uint8* vr$1335 = SYMBGETMANGLEDNAME( LABEL$1 );
				__builtin_memset( &TMP$1702$4, 0, 24ll );
				FBSTRING* vr$1339 = fb_StrConcat( &TMP$1702$4, (void*)"j", 2ll, (void*)&SUFFIX$1, -1ll );
				__builtin_memset( &TMP$1703$4, 0, 24ll );
				FBSTRING* vr$1342 = fb_StrConcat( &TMP$1703$4, (void*)vr$1339, -1ll, (void*)" ", 2ll );
				__builtin_memset( &TMP$1704$4, 0, 24ll );
				FBSTRING* vr$1345 = fb_StrConcat( &TMP$1704$4, (void*)vr$1342, -1ll, (void*)vr$1335, 0ll );
				fb_StrAssign( (void*)&TMP$1705$4, -1ll, (void*)vr$1345, -1ll, 0 );
				HWRITEASM64( &TMP$1705$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1705$4 );
				REG_MARK( LABEL$1 );
			}
			label$1342:;
		}
		goto label$1215;
		label$1346:;
		{
			if( *(int64*)V2$1 == 0ll ) goto label$1348;
			{
				int32 vr$1351 = fb_StrCompare( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 16ll), 0ll );
				if( (int64)vr$1351 == 0ll ) goto label$1350;
				{
					FBSTRING TMP$1711$5;
					FBSTRING TMP$1712$5;
					if( (int64)*(int32*)((uint8*)REGHANDLE$ + 8ll) == -2ll ) goto label$1352;
					{
						FBSTRING TMP$1706$6;
						FBSTRING TMP$1707$6;
						FBSTRING TMP$1708$6;
						FBSTRING TMP$1709$6;
						TEMPO$1 = (int64)*(int32*)((uint8*)REGHANDLE$ + 8ll);
						REG_FINDFREE( (int32)TEMPO$1, -1ll );
						*(int32*)((uint8*)REGHANDLE$ + 8ll) = -2;
						__builtin_memset( &TMP$1709$6, 0, 24ll );
						int32 vr$1358 = REG_FINDREAL( (int32)TEMPO$1 );
						__builtin_memset( &TMP$1706$6, 0, 24ll );
						FBSTRING* vr$1363 = fb_StrConcat( &TMP$1706$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$1358 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$1707$6, 0, 24ll );
						FBSTRING* vr$1366 = fb_StrConcat( &TMP$1707$6, (void*)vr$1363, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$1708$6, 0, 24ll );
						FBSTRING* vr$1369 = fb_StrConcat( &TMP$1708$6, (void*)vr$1366, -1ll, *(void**)((uint8*)REGSTRQ$ + 16ll), 0ll );
						fb_StrAssign( (void*)&TMP$1709$6, -1ll, (void*)vr$1369, -1ll, 0 );
						HWRITEASM64( &TMP$1709$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$1709$6 );
						if( VRREG$1 != 2ll ) goto label$1354;
						{
							int32 vr$1374 = REG_FINDREAL( (int32)TEMPO$1 );
							VRREG$1 = (int64)vr$1374;
							label$1354:;
						}
					}
					goto label$1351;
					label$1352:;
					{
						*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | 4ll);
					}
					label$1351:;
					__builtin_memset( &TMP$1712$5, 0, 24ll );
					__builtin_memset( &TMP$1711$5, 0, 24ll );
					FBSTRING* vr$1383 = fb_StrConcat( &TMP$1711$5, (void*)"mov rcx, ", 10ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1712$5, -1ll, (void*)vr$1383, -1ll, 0 );
					HWRITEASM64( &TMP$1712$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1712$5 );
				}
				label$1350:;
				label$1349:;
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"cl", 3ll, 0 );
			}
			label$1348:;
			label$1347:;
			if( OP$1 != 41ll ) goto label$1356;
			{
				FBSTRING TMP$1714$4;
				FBSTRING TMP$1715$4;
				FBSTRING TMP$1716$4;
				FBSTRING TMP$1717$4;
				__builtin_memset( &TMP$1717$4, 0, 24ll );
				__builtin_memset( &TMP$1714$4, 0, 24ll );
				FBSTRING* vr$1393 = fb_StrConcat( &TMP$1714$4, (void*)"shl ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1715$4, 0, 24ll );
				FBSTRING* vr$1396 = fb_StrConcat( &TMP$1715$4, (void*)vr$1393, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1716$4, 0, 24ll );
				FBSTRING* vr$1399 = fb_StrConcat( &TMP$1716$4, (void*)vr$1396, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1717$4, -1ll, (void*)vr$1399, -1ll, 0 );
				HWRITEASM64( &TMP$1717$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1717$4 );
			}
			goto label$1355;
			label$1356:;
			{
				if( ((int64)-(TEMPODTYPE$1 == 8ll) | (int64)-(TEMPODTYPE$1 == 13ll)) == 0ll ) goto label$1358;
				{
					FBSTRING TMP$1719$5;
					FBSTRING TMP$1720$5;
					FBSTRING TMP$1721$5;
					FBSTRING TMP$1722$5;
					__builtin_memset( &TMP$1722$5, 0, 24ll );
					__builtin_memset( &TMP$1719$5, 0, 24ll );
					FBSTRING* vr$1411 = fb_StrConcat( &TMP$1719$5, (void*)"sar ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$1720$5, 0, 24ll );
					FBSTRING* vr$1414 = fb_StrConcat( &TMP$1720$5, (void*)vr$1411, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1721$5, 0, 24ll );
					FBSTRING* vr$1417 = fb_StrConcat( &TMP$1721$5, (void*)vr$1414, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1722$5, -1ll, (void*)vr$1417, -1ll, 0 );
					HWRITEASM64( &TMP$1722$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1722$5 );
				}
				goto label$1357;
				label$1358:;
				{
					FBSTRING TMP$1723$5;
					FBSTRING TMP$1724$5;
					FBSTRING TMP$1725$5;
					FBSTRING TMP$1726$5;
					__builtin_memset( &TMP$1726$5, 0, 24ll );
					__builtin_memset( &TMP$1723$5, 0, 24ll );
					FBSTRING* vr$1426 = fb_StrConcat( &TMP$1723$5, (void*)"shr ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$1724$5, 0, 24ll );
					FBSTRING* vr$1429 = fb_StrConcat( &TMP$1724$5, (void*)vr$1426, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1725$5, 0, 24ll );
					FBSTRING* vr$1432 = fb_StrConcat( &TMP$1725$5, (void*)vr$1429, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$1726$5, -1ll, (void*)vr$1432, -1ll, 0 );
					HWRITEASM64( &TMP$1726$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1726$5 );
				}
				label$1357:;
			}
			label$1355:;
		}
		goto label$1215;
		label$1359:;
		{
			FBSTRING TMP$1735$3;
			FBSTRING TMP$1736$3;
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) == -2ll ) goto label$1361;
			{
				int32 vr$1438 = fb_StrCompare( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
				if( (int64)vr$1438 == 0ll ) goto label$1363;
				{
					FBSTRING TMP$1727$5;
					FBSTRING TMP$1728$5;
					FBSTRING TMP$1729$5;
					FBSTRING TMP$1730$5;
					TEMPO$1 = (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll);
					REG_FINDFREE( (int32)TEMPO$1, -1ll );
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -2;
					__builtin_memset( &TMP$1730$5, 0, 24ll );
					int32 vr$1444 = REG_FINDREAL( (int32)TEMPO$1 );
					__builtin_memset( &TMP$1727$5, 0, 24ll );
					FBSTRING* vr$1449 = fb_StrConcat( &TMP$1727$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$1444 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1728$5, 0, 24ll );
					FBSTRING* vr$1452 = fb_StrConcat( &TMP$1728$5, (void*)vr$1449, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1729$5, 0, 24ll );
					FBSTRING* vr$1455 = fb_StrConcat( &TMP$1729$5, (void*)vr$1452, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
					fb_StrAssign( (void*)&TMP$1730$5, -1ll, (void*)vr$1455, -1ll, 0 );
					HWRITEASM64( &TMP$1730$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1730$5 );
					int32 vr$1460 = fb_StrCompare( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
					if( (int64)vr$1460 != 0ll ) goto label$1365;
					{
						int32 vr$1463 = REG_FINDREAL( (int32)TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$1463 << (3ll & 63ll))), 0ll, 0 );
					}
					label$1365:;
					label$1364:;
					if( VRREG$1 != 3ll ) goto label$1367;
					{
						int32 vr$1468 = REG_FINDREAL( (int32)TEMPO$1 );
						VRREG$1 = (int64)vr$1468;
						label$1367:;
					}
				}
				label$1363:;
				label$1362:;
			}
			goto label$1360;
			label$1361:;
			{
				*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | 8ll);
			}
			label$1360:;
			if( *(int64*)V2$1 != 0ll ) goto label$1369;
			{
				FBSTRING TMP$1731$4;
				FBSTRING TMP$1732$4;
				FBSTRING TMP$1733$4;
				FBSTRING TMP$1734$4;
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) != -2ll ) goto label$1371;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -3;
					label$1371:;
				}
				uint8* vr$1475 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$1475, 0ll, 0 );
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) != -3ll ) goto label$1373;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -2;
					label$1373:;
				}
				__builtin_memset( &TMP$1734$4, 0, 24ll );
				__builtin_memset( &TMP$1731$4, 0, 24ll );
				FBSTRING* vr$1483 = fb_StrConcat( &TMP$1731$4, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1732$4, 0, 24ll );
				FBSTRING* vr$1486 = fb_StrConcat( &TMP$1732$4, (void*)vr$1483, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1733$4, 0, 24ll );
				FBSTRING* vr$1489 = fb_StrConcat( &TMP$1733$4, (void*)vr$1486, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1734$4, -1ll, (void*)vr$1489, -1ll, 0 );
				HWRITEASM64( &TMP$1734$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1734$4 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
			}
			label$1369:;
			label$1368:;
			__builtin_memset( &TMP$1736$3, 0, 24ll );
			__builtin_memset( &TMP$1735$3, 0, 24ll );
			FBSTRING* vr$1499 = fb_StrConcat( &TMP$1735$3, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1736$3, -1ll, (void*)vr$1499, -1ll, 0 );
			HWRITEASM64( &TMP$1736$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1736$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 8ll);
			if( (TEMPO2DTYPE$1 & 480ll) == 0ll ) goto label$1375;
			{
				TEMPO2DTYPE$1 = 8ll;
				label$1375:;
			}
			if( ((((int64)-(TEMPODTYPE$1 == 9ll) | (int64)-(TEMPODTYPE$1 == 14ll)) | (int64)-(TEMPO2DTYPE$1 == 9ll)) | (int64)-(TEMPO2DTYPE$1 == 14ll)) == 0ll ) goto label$1377;
			{
				FBSTRING TMP$1738$4;
				FBSTRING TMP$1740$4;
				FBSTRING TMP$1741$4;
				__builtin_memset( &TMP$1738$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1738$4, -1ll, (void*)"mov edx, 0", 11ll, 0 );
				HWRITEASM64( &TMP$1738$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1738$4 );
				__builtin_memset( &TMP$1741$4, 0, 24ll );
				__builtin_memset( &TMP$1740$4, 0, 24ll );
				FBSTRING* vr$1520 = fb_StrConcat( &TMP$1740$4, (void*)"div ", 5ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1741$4, -1ll, (void*)vr$1520, -1ll, 0 );
				HWRITEASM64( &TMP$1741$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1741$4 );
			}
			goto label$1376;
			label$1377:;
			{
				FBSTRING TMP$1743$4;
				FBSTRING TMP$1745$4;
				FBSTRING TMP$1746$4;
				__builtin_memset( &TMP$1743$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1743$4, -1ll, (void*)"cqo", 4ll, 0 );
				HWRITEASM64( &TMP$1743$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1743$4 );
				__builtin_memset( &TMP$1746$4, 0, 24ll );
				__builtin_memset( &TMP$1745$4, 0, 24ll );
				FBSTRING* vr$1532 = fb_StrConcat( &TMP$1745$4, (void*)"idiv ", 6ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1746$4, -1ll, (void*)vr$1532, -1ll, 0 );
				HWRITEASM64( &TMP$1746$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1746$4 );
			}
			label$1376:;
			if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1379;
			{
				FBSTRING TMP$1747$4;
				FBSTRING TMP$1748$4;
				FBSTRING TMP$1749$4;
				__builtin_memset( &TMP$1749$4, 0, 24ll );
				__builtin_memset( &TMP$1747$4, 0, 24ll );
				FBSTRING* vr$1540 = fb_StrConcat( &TMP$1747$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1748$4, 0, 24ll );
				FBSTRING* vr$1543 = fb_StrConcat( &TMP$1748$4, (void*)vr$1540, -1ll, (void*)", rax", 6ll );
				fb_StrAssign( (void*)&TMP$1749$4, -1ll, (void*)vr$1543, -1ll, 0 );
				HWRITEASM64( &TMP$1749$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1749$4 );
			}
			goto label$1378;
			label$1379:;
			{
				FBSTRING TMP$1750$4;
				FBSTRING TMP$1751$4;
				FBSTRING TMP$1752$4;
				__builtin_memset( &TMP$1752$4, 0, 24ll );
				__builtin_memset( &TMP$1750$4, 0, 24ll );
				FBSTRING* vr$1551 = fb_StrConcat( &TMP$1750$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1751$4, 0, 24ll );
				FBSTRING* vr$1554 = fb_StrConcat( &TMP$1751$4, (void*)vr$1551, -1ll, (void*)", rax", 6ll );
				fb_StrAssign( (void*)&TMP$1752$4, -1ll, (void*)vr$1554, -1ll, 0 );
				HWRITEASM64( &TMP$1752$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1752$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1378:;
		}
		goto label$1215;
		label$1380:;
		{
			FBSTRING TMP$1761$3;
			FBSTRING TMP$1762$3;
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) == -2ll ) goto label$1382;
			{
				int32 vr$1560 = fb_StrCompare( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
				if( (int64)vr$1560 == 0ll ) goto label$1384;
				{
					FBSTRING TMP$1753$5;
					FBSTRING TMP$1754$5;
					FBSTRING TMP$1755$5;
					FBSTRING TMP$1756$5;
					TEMPO$1 = (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll);
					REG_FINDFREE( (int32)TEMPO$1, -1ll );
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -2;
					__builtin_memset( &TMP$1756$5, 0, 24ll );
					int32 vr$1566 = REG_FINDREAL( (int32)TEMPO$1 );
					__builtin_memset( &TMP$1753$5, 0, 24ll );
					FBSTRING* vr$1571 = fb_StrConcat( &TMP$1753$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$1566 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1754$5, 0, 24ll );
					FBSTRING* vr$1574 = fb_StrConcat( &TMP$1754$5, (void*)vr$1571, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1755$5, 0, 24ll );
					FBSTRING* vr$1577 = fb_StrConcat( &TMP$1755$5, (void*)vr$1574, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
					fb_StrAssign( (void*)&TMP$1756$5, -1ll, (void*)vr$1577, -1ll, 0 );
					HWRITEASM64( &TMP$1756$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1756$5 );
					int32 vr$1582 = fb_StrCompare( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
					if( (int64)vr$1582 != 0ll ) goto label$1386;
					{
						int32 vr$1585 = REG_FINDREAL( (int32)TEMPO$1 );
						fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$1585 << (3ll & 63ll))), 0ll, 0 );
					}
					label$1386:;
					label$1385:;
					if( VRREG$1 != 3ll ) goto label$1388;
					{
						int32 vr$1590 = REG_FINDREAL( (int32)TEMPO$1 );
						VRREG$1 = (int64)vr$1590;
						label$1388:;
					}
				}
				label$1384:;
				label$1383:;
			}
			goto label$1381;
			label$1382:;
			{
				*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | 8ll);
			}
			label$1381:;
			if( *(int64*)V2$1 != 0ll ) goto label$1390;
			{
				FBSTRING TMP$1757$4;
				FBSTRING TMP$1758$4;
				FBSTRING TMP$1759$4;
				FBSTRING TMP$1760$4;
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) != -2ll ) goto label$1392;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -3;
					label$1392:;
				}
				uint8* vr$1597 = REG_TEMPO(  );
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$1597, 0ll, 0 );
				if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) != -3ll ) goto label$1394;
				{
					*(int32*)((uint8*)REGHANDLE$ + 12ll) = -2;
					label$1394:;
				}
				__builtin_memset( &TMP$1760$4, 0, 24ll );
				__builtin_memset( &TMP$1757$4, 0, 24ll );
				FBSTRING* vr$1605 = fb_StrConcat( &TMP$1757$4, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$1758$4, 0, 24ll );
				FBSTRING* vr$1608 = fb_StrConcat( &TMP$1758$4, (void*)vr$1605, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1759$4, 0, 24ll );
				FBSTRING* vr$1611 = fb_StrConcat( &TMP$1759$4, (void*)vr$1608, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1760$4, -1ll, (void*)vr$1611, -1ll, 0 );
				HWRITEASM64( &TMP$1760$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1760$4 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
			}
			label$1390:;
			label$1389:;
			__builtin_memset( &TMP$1762$3, 0, 24ll );
			__builtin_memset( &TMP$1761$3, 0, 24ll );
			FBSTRING* vr$1621 = fb_StrConcat( &TMP$1761$3, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1762$3, -1ll, (void*)vr$1621, -1ll, 0 );
			HWRITEASM64( &TMP$1762$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1762$3 );
			TEMPO2DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 8ll);
			if( (TEMPO2DTYPE$1 & 480ll) == 0ll ) goto label$1396;
			{
				TEMPO2DTYPE$1 = 8ll;
				label$1396:;
			}
			if( ((((int64)-(TEMPODTYPE$1 == 9ll) | (int64)-(TEMPODTYPE$1 == 14ll)) | (int64)-(TEMPO2DTYPE$1 == 9ll)) | (int64)-(TEMPO2DTYPE$1 == 14ll)) == 0ll ) goto label$1398;
			{
				FBSTRING TMP$1763$4;
				FBSTRING TMP$1764$4;
				FBSTRING TMP$1765$4;
				__builtin_memset( &TMP$1763$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1763$4, -1ll, (void*)"mov edx, 0", 11ll, 0 );
				HWRITEASM64( &TMP$1763$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1763$4 );
				__builtin_memset( &TMP$1765$4, 0, 24ll );
				__builtin_memset( &TMP$1764$4, 0, 24ll );
				FBSTRING* vr$1642 = fb_StrConcat( &TMP$1764$4, (void*)"div ", 5ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1765$4, -1ll, (void*)vr$1642, -1ll, 0 );
				HWRITEASM64( &TMP$1765$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1765$4 );
			}
			goto label$1397;
			label$1398:;
			{
				FBSTRING TMP$1766$4;
				FBSTRING TMP$1767$4;
				FBSTRING TMP$1768$4;
				__builtin_memset( &TMP$1766$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1766$4, -1ll, (void*)"cqo", 4ll, 0 );
				HWRITEASM64( &TMP$1766$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1766$4 );
				__builtin_memset( &TMP$1768$4, 0, 24ll );
				__builtin_memset( &TMP$1767$4, 0, 24ll );
				FBSTRING* vr$1654 = fb_StrConcat( &TMP$1767$4, (void*)"idiv ", 6ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$1768$4, -1ll, (void*)vr$1654, -1ll, 0 );
				HWRITEASM64( &TMP$1768$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1768$4 );
			}
			label$1397:;
			if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1400;
			{
				FBSTRING TMP$1770$4;
				FBSTRING TMP$1771$4;
				FBSTRING TMP$1772$4;
				__builtin_memset( &TMP$1772$4, 0, 24ll );
				__builtin_memset( &TMP$1770$4, 0, 24ll );
				FBSTRING* vr$1662 = fb_StrConcat( &TMP$1770$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$1771$4, 0, 24ll );
				FBSTRING* vr$1665 = fb_StrConcat( &TMP$1771$4, (void*)vr$1662, -1ll, (void*)", rdx", 6ll );
				fb_StrAssign( (void*)&TMP$1772$4, -1ll, (void*)vr$1665, -1ll, 0 );
				HWRITEASM64( &TMP$1772$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1772$4 );
			}
			goto label$1399;
			label$1400:;
			{
				FBSTRING TMP$1773$4;
				FBSTRING TMP$1774$4;
				FBSTRING TMP$1775$4;
				__builtin_memset( &TMP$1775$4, 0, 24ll );
				__builtin_memset( &TMP$1773$4, 0, 24ll );
				FBSTRING* vr$1673 = fb_StrConcat( &TMP$1773$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (VRREG$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1774$4, 0, 24ll );
				FBSTRING* vr$1676 = fb_StrConcat( &TMP$1774$4, (void*)vr$1673, -1ll, (void*)", rdx", 6ll );
				fb_StrAssign( (void*)&TMP$1775$4, -1ll, (void*)vr$1676, -1ll, 0 );
				HWRITEASM64( &TMP$1775$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1775$4 );
				RESTORE_VRREG( VR$1, VRREG$1 );
			}
			label$1399:;
		}
		goto label$1215;
		label$1401:;
		{
			FBSTRING TMP$1776$3;
			FBSTRING TMP$1779$3;
			FBSTRING TMP$1780$3;
			FBSTRING TMP$1781$3;
			__builtin_memset( &TMP$1776$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1776$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1776$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1776$3 );
			__builtin_memset( &TMP$1780$3, 0, 24ll );
			uint8* vr$1685 = HGETBOPCODE( OP$1 );
			__builtin_memset( &TMP$1779$3, 0, 24ll );
			FBSTRING* vr$1688 = fb_StrConcat( &TMP$1779$3, (void*)"FOUND AN ERROR : op int needs to be coded : ", 45ll, (void*)vr$1685, 0ll );
			fb_StrAssign( (void*)&TMP$1780$3, -1ll, (void*)vr$1688, -1ll, 0 );
			HWRITEASM64( &TMP$1780$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1780$3 );
			__builtin_memset( &TMP$1781$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1781$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1781$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1781$3 );
		}
		goto label$1215;
		label$1216:;
		static const void* tmp$3861[23ll] = {
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
		if( (TMP$1515$2 - 28ull) > 22ull ) goto label$1401;
		goto *tmp$3861[TMP$1515$2 - 28ull];
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

static void _EMITBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	int64 TMP$1782$1;
	int64 TMP$1783$1;
	int64 TMP$1784$1;
	int64 TMP$1785$1;
	label$1402:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	if( LABEL$1 == (struct $8FBSYMBOL*)0ull ) goto label$1405;
	{
	}
	goto label$1404;
	label$1405:;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1406;
	{
	}
	goto label$1404;
	label$1406:;
	{
	}
	label$1404:;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1408;
	{
	}
	goto label$1407;
	label$1408:;
	{
	}
	label$1407:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$1412;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll) & 480ll) == 0ll ) goto label$1409;
	TMP$1782$1 = 24ll;
	goto label$3005;
	label$1409:;
	TMP$1782$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll) & 31ll;
	label$3005:;
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$1410;
	TMP$1783$1 = 24ll;
	goto label$3006;
	label$1410:;
	TMP$1783$1 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
	label$3006:;
	if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll) & 480ll) == 0ll ) goto label$1411;
	TMP$1784$1 = 24ll;
	goto label$3007;
	label$1411:;
	TMP$1784$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll) & 31ll;
	label$3007:;
	TMP$1785$1 = (int64)-((((int64)-(*(int64*)((uint8*)V1$1 + 8ll) != *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll)) & (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$1782$1 * 56ll)) == 0ll)) & (int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$1783$1 * 56ll)) + 8ll) != *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$1784$1 * 56ll)) + 8ll))) != 0ll);
	goto label$3004;
	label$1412:;
	TMP$1785$1 = 0ll;
	label$3004:;
	if( TMP$1785$1 == 0ll ) goto label$1414;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 8ll);
		*($11FB_DATATYPE*)((uint8*)V1$1 + 8ll) = *($11FB_DATATYPE*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll);
		_SETVREGDATATYPE( V1$1, DTYPE$1, (struct $8FBSYMBOL*)0ull );
	}
	label$1414:;
	label$1413:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	label$1403:;
}

static void _EMITUOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$1812$1;
	label$1415:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 24ll );
	int32 VRREG$1;
	__builtin_memset( &VRREG$1, 0, 4ll );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4ll );
	$11FB_DATATYPE TEMPODTYPE$1;
	__builtin_memset( &TEMPODTYPE$1, 0, 8ll );
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1418;
	{
	}
	goto label$1417;
	label$1418:;
	{
	}
	label$1417:;
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1420;
	{
		if( *(int64*)V1$1 == 4ll ) goto label$1422;
		{
			{
				$15IRVREGTYPE_ENUM TMP$1786$4;
				TMP$1786$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$1786$4 != 4ll ) goto label$1424;
				label$1425:;
				{
					int32 vr$10 = REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
					VRREG$1 = vr$10;
				}
				goto label$1423;
				label$1424:;
				{
					FBSTRING TMP$1787$5;
					FBSTRING TMP$1790$5;
					FBSTRING TMP$1791$5;
					__builtin_memset( &TMP$1787$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1787$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1787$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1787$5 );
					__builtin_memset( &TMP$1790$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1790$5, -1ll, (void*)"FOUND AN ERROR : in emituop typ not handled vr", 47ll, 0 );
					HWRITEASM64( &TMP$1790$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1790$5 );
					__builtin_memset( &TMP$1791$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1791$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1791$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1791$5 );
				}
				label$1426:;
				label$1423:;
			}
		}
		goto label$1421;
		label$1422:;
		{
			*(int64*)((uint8*)VR$1 + 24ll) = *(int64*)((uint8*)V1$1 + 24ll);
			int32 vr$27 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
			VRREG$1 = vr$27;
		}
		label$1421:;
	}
	label$1420:;
	label$1419:;
	TEMPODTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 8ll);
	if( (TEMPODTYPE$1 & 480ll) == 0ll ) goto label$1428;
	{
		TEMPODTYPE$1 = 8ll;
		label$1428:;
	}
	{
		if( TEMPODTYPE$1 == 8ll ) goto label$1431;
		label$1432:;
		if( TEMPODTYPE$1 == 9ll ) goto label$1431;
		label$1433:;
		if( TEMPODTYPE$1 == 13ll ) goto label$1431;
		label$1434:;
		if( TEMPODTYPE$1 == 14ll ) goto label$1431;
		label$1435:;
		if( TEMPODTYPE$1 == 16ll ) goto label$1431;
		label$1436:;
		if( TEMPODTYPE$1 != 10ll ) goto label$1430;
		label$1431:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"QWORD PTR ", 11ll, 0 );
		}
		goto label$1429;
		label$1430:;
		if( TEMPODTYPE$1 == 11ll ) goto label$1438;
		label$1439:;
		if( TEMPODTYPE$1 == 12ll ) goto label$1438;
		label$1440:;
		if( TEMPODTYPE$1 != 15ll ) goto label$1437;
		label$1438:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
		}
		goto label$1429;
		label$1437:;
		if( TEMPODTYPE$1 == 5ll ) goto label$1442;
		label$1443:;
		if( TEMPODTYPE$1 != 6ll ) goto label$1441;
		label$1442:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
		}
		goto label$1429;
		label$1441:;
		if( TEMPODTYPE$1 == 2ll ) goto label$1445;
		label$1446:;
		if( TEMPODTYPE$1 == 3ll ) goto label$1445;
		label$1447:;
		if( TEMPODTYPE$1 == 1ll ) goto label$1445;
		label$1448:;
		if( TEMPODTYPE$1 != 4ll ) goto label$1444;
		label$1445:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"BYTE PTR ", 10ll, 0 );
		}
		goto label$1429;
		label$1444:;
		{
			FBSTRING TMP$1792$3;
			FBSTRING TMP$1793$3;
			FBSTRING TMP$1794$3;
			FBSTRING TMP$1795$3;
			__builtin_memset( &TMP$1792$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1792$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1792$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1792$3 );
			__builtin_memset( &TMP$1794$3, 0, 24ll );
			FBSTRING* vr$40 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
			__builtin_memset( &TMP$1793$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$1793$3, (void*)"FOUND AN ERROR : BOP datatype not handled 01 = ", 48ll, (void*)vr$40, -1ll );
			fb_StrAssign( (void*)&TMP$1794$3, -1ll, (void*)vr$43, -1ll, 0 );
			HWRITEASM64( &TMP$1794$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1794$3 );
			__builtin_memset( &TMP$1795$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1795$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1795$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1795$3 );
		}
		label$1449:;
		label$1429:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$1796$2;
		TMP$1796$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$1796$2 != 4ll ) goto label$1451;
		label$1452:;
		{
			if( TEMPODTYPE$1 != 1ll ) goto label$1454;
			{
				int32 vr$54 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)vr$54 << (3ll & 63ll))), 0ll, 0 );
			}
			goto label$1453;
			label$1454:;
			{
				int32 vr$60 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$60 << (3ll & 63ll))), 0ll, 0 );
			}
			label$1453:;
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"", 1ll, 0 );
		}
		goto label$1450;
		label$1451:;
		if( TMP$1796$2 != 2ll ) goto label$1455;
		label$1456:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1450;
		label$1455:;
		if( TMP$1796$2 != 3ll ) goto label$1457;
		label$1458:;
		{
			FBSTRING TMP$1797$3;
			FBSTRING TMP$1798$3;
			FBSTRING TMP$1799$3;
			int32 vr$70 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
			FBSTRING* vr$74 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			__builtin_memset( &TMP$1797$3, 0, 24ll );
			FBSTRING* vr$77 = fb_StrConcat( &TMP$1797$3, (void*)vr$74, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$1798$3, 0, 24ll );
			FBSTRING* vr$80 = fb_StrConcat( &TMP$1798$3, (void*)vr$77, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$70 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1799$3, 0, 24ll );
			FBSTRING* vr$83 = fb_StrConcat( &TMP$1799$3, (void*)vr$80, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$83, -1ll, 0 );
		}
		goto label$1450;
		label$1457:;
		if( TMP$1796$2 != 5ll ) goto label$1459;
		label$1460:;
		{
			FBSTRING TMP$1800$3;
			FBSTRING TMP$1801$3;
			FBSTRING TMP$1802$3;
			FBSTRING* vr$86 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			uint8* vr$88 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
			__builtin_memset( &TMP$1800$3, 0, 24ll );
			FBSTRING* vr$91 = fb_StrConcat( &TMP$1800$3, (void*)vr$88, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$1801$3, 0, 24ll );
			FBSTRING* vr$94 = fb_StrConcat( &TMP$1801$3, (void*)vr$91, -1ll, (void*)vr$86, -1ll );
			__builtin_memset( &TMP$1802$3, 0, 24ll );
			FBSTRING* vr$97 = fb_StrConcat( &TMP$1802$3, (void*)vr$94, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$97, -1ll, 0 );
		}
		goto label$1450;
		label$1459:;
		if( TMP$1796$2 != 0ll ) goto label$1461;
		label$1462:;
		{
		}
		goto label$1450;
		label$1461:;
		if( TMP$1796$2 != 1ll ) goto label$1463;
		label$1464:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$1466;
			{
				FBSTRING TMP$1803$4;
				FBSTRING TMP$1804$4;
				FBSTRING TMP$1805$4;
				FBSTRING* vr$109 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$111 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$1803$4, 0, 24ll );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$1803$4, (void*)vr$111, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$1804$4, 0, 24ll );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$1804$4, (void*)vr$114, -1ll, (void*)vr$109, -1ll );
				__builtin_memset( &TMP$1805$4, 0, 24ll );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$1805$4, (void*)vr$117, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$120, -1ll, 0 );
			}
			goto label$1465;
			label$1466:;
			{
				FBSTRING TMP$1806$4;
				FBSTRING* vr$123 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$1806$4, 0, 24ll );
				FBSTRING* vr$126 = fb_StrConcat( &TMP$1806$4, (void*)vr$123, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$126, -1ll, 0 );
			}
			label$1465:;
		}
		goto label$1450;
		label$1463:;
		{
			FBSTRING TMP$1807$3;
			FBSTRING TMP$1810$3;
			FBSTRING TMP$1811$3;
			__builtin_memset( &TMP$1807$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1807$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1807$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1807$3 );
			__builtin_memset( &TMP$1810$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1810$3, -1ll, (void*)"FOUND AN ERROR : in uop typ not handled v1", 43ll, 0 );
			HWRITEASM64( &TMP$1810$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1810$3 );
			__builtin_memset( &TMP$1811$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1811$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1811$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1811$3 );
		}
		label$1467:;
		label$1450:;
	}
	int32 vr$141 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$141 == 0ll ) goto label$1469;
	{
		EMITOP3_OP4( &OP3$1 );
		label$1469:;
	}
	__builtin_memset( &TMP$1812$1, 0, 24ll );
	FBSTRING* vr$148 = fb_StrConcat( &TMP$1812$1, (void*)&PREFIX$1, -1ll, (void*)&OP1$1, -1ll );
	fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$148, -1ll, 0 );
	if( OP$1 != 52ll ) goto label$1471;
	{
		if( ((int64)-(VR$1 != (struct $6IRVREG*)0ull) & (int64)-(*(int64*)V1$1 != 4ll)) == 0ll ) goto label$1473;
		{
			{
				if( TEMPODTYPE$1 == 8ll ) goto label$1476;
				label$1477:;
				if( TEMPODTYPE$1 == 9ll ) goto label$1476;
				label$1478:;
				if( TEMPODTYPE$1 == 13ll ) goto label$1476;
				label$1479:;
				if( TEMPODTYPE$1 == 14ll ) goto label$1476;
				label$1480:;
				if( TEMPODTYPE$1 != 10ll ) goto label$1475;
				label$1476:;
				{
					FBSTRING TMP$1813$5;
					FBSTRING TMP$1814$5;
					FBSTRING TMP$1815$5;
					FBSTRING TMP$1816$5;
					__builtin_memset( &TMP$1816$5, 0, 24ll );
					__builtin_memset( &TMP$1813$5, 0, 24ll );
					FBSTRING* vr$160 = fb_StrConcat( &TMP$1813$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1814$5, 0, 24ll );
					FBSTRING* vr$163 = fb_StrConcat( &TMP$1814$5, (void*)vr$160, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1815$5, 0, 24ll );
					FBSTRING* vr$166 = fb_StrConcat( &TMP$1815$5, (void*)vr$163, -1ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1816$5, -1ll, (void*)vr$166, -1ll, 0 );
					HWRITEASM64( &TMP$1816$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1816$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1474;
				label$1475:;
				if( TEMPODTYPE$1 == 11ll ) goto label$1482;
				label$1483:;
				if( TEMPODTYPE$1 != 12ll ) goto label$1481;
				label$1482:;
				{
					FBSTRING TMP$1817$5;
					FBSTRING TMP$1818$5;
					FBSTRING TMP$1819$5;
					FBSTRING TMP$1820$5;
					__builtin_memset( &TMP$1820$5, 0, 24ll );
					__builtin_memset( &TMP$1817$5, 0, 24ll );
					FBSTRING* vr$179 = fb_StrConcat( &TMP$1817$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1818$5, 0, 24ll );
					FBSTRING* vr$182 = fb_StrConcat( &TMP$1818$5, (void*)vr$179, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1819$5, 0, 24ll );
					FBSTRING* vr$185 = fb_StrConcat( &TMP$1819$5, (void*)vr$182, -1ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1820$5, -1ll, (void*)vr$185, -1ll, 0 );
					HWRITEASM64( &TMP$1820$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1820$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1474;
				label$1481:;
				if( TEMPODTYPE$1 == 5ll ) goto label$1485;
				label$1486:;
				if( TEMPODTYPE$1 != 6ll ) goto label$1484;
				label$1485:;
				{
					FBSTRING TMP$1821$5;
					FBSTRING TMP$1822$5;
					FBSTRING TMP$1823$5;
					FBSTRING TMP$1824$5;
					__builtin_memset( &TMP$1824$5, 0, 24ll );
					__builtin_memset( &TMP$1821$5, 0, 24ll );
					FBSTRING* vr$198 = fb_StrConcat( &TMP$1821$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRW$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1822$5, 0, 24ll );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$1822$5, (void*)vr$198, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1823$5, 0, 24ll );
					FBSTRING* vr$204 = fb_StrConcat( &TMP$1823$5, (void*)vr$201, -1ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1824$5, -1ll, (void*)vr$204, -1ll, 0 );
					HWRITEASM64( &TMP$1824$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1824$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1474;
				label$1484:;
				if( TEMPODTYPE$1 == 2ll ) goto label$1488;
				label$1489:;
				if( TEMPODTYPE$1 == 3ll ) goto label$1488;
				label$1490:;
				if( TEMPODTYPE$1 == 1ll ) goto label$1488;
				label$1491:;
				if( TEMPODTYPE$1 != 4ll ) goto label$1487;
				label$1488:;
				{
					FBSTRING TMP$1825$5;
					FBSTRING TMP$1826$5;
					FBSTRING TMP$1827$5;
					FBSTRING TMP$1828$5;
					__builtin_memset( &TMP$1828$5, 0, 24ll );
					__builtin_memset( &TMP$1825$5, 0, 24ll );
					FBSTRING* vr$217 = fb_StrConcat( &TMP$1825$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRB$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$1826$5, 0, 24ll );
					FBSTRING* vr$220 = fb_StrConcat( &TMP$1826$5, (void*)vr$217, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$1827$5, 0, 24ll );
					FBSTRING* vr$223 = fb_StrConcat( &TMP$1827$5, (void*)vr$220, -1ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$1828$5, -1ll, (void*)vr$223, -1ll, 0 );
					HWRITEASM64( &TMP$1828$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1828$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1474;
				label$1487:;
				{
					FBSTRING TMP$1829$5;
					FBSTRING TMP$1830$5;
					FBSTRING TMP$1831$5;
					FBSTRING TMP$1832$5;
					__builtin_memset( &TMP$1829$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1829$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1829$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1829$5 );
					__builtin_memset( &TMP$1831$5, 0, 24ll );
					FBSTRING* vr$236 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
					__builtin_memset( &TMP$1830$5, 0, 24ll );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$1830$5, (void*)"FOUND AN ERROR : BOP datatype not handled 011 = ", 49ll, (void*)vr$236, -1ll );
					fb_StrAssign( (void*)&TMP$1831$5, -1ll, (void*)vr$239, -1ll, 0 );
					HWRITEASM64( &TMP$1831$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1831$5 );
					__builtin_memset( &TMP$1832$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$1832$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$1832$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$1832$5 );
				}
				label$1492:;
				label$1474:;
			}
		}
		label$1473:;
		label$1472:;
		if( TEMPODTYPE$1 != 1ll ) goto label$1494;
		{
			FBSTRING TMP$1834$3;
			FBSTRING TMP$1835$3;
			FBSTRING TMP$1836$3;
			FBSTRING TMP$1837$3;
			FBSTRING TMP$1839$3;
			FBSTRING TMP$1840$3;
			__builtin_memset( &TMP$1837$3, 0, 24ll );
			__builtin_memset( &TMP$1834$3, 0, 24ll );
			FBSTRING* vr$252 = fb_StrConcat( &TMP$1834$3, (void*)"test ", 6ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1835$3, 0, 24ll );
			FBSTRING* vr$255 = fb_StrConcat( &TMP$1835$3, (void*)vr$252, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1836$3, 0, 24ll );
			FBSTRING* vr$258 = fb_StrConcat( &TMP$1836$3, (void*)vr$255, -1ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1837$3, -1ll, (void*)vr$258, -1ll, 0 );
			HWRITEASM64( &TMP$1837$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1837$3 );
			__builtin_memset( &TMP$1840$3, 0, 24ll );
			__builtin_memset( &TMP$1839$3, 0, 24ll );
			FBSTRING* vr$266 = fb_StrConcat( &TMP$1839$3, (void*)"sete ", 6ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1840$3, -1ll, (void*)vr$266, -1ll, 0 );
			HWRITEASM64( &TMP$1840$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1840$3 );
		}
		goto label$1493;
		label$1494:;
		{
			FBSTRING TMP$1841$3;
			FBSTRING TMP$1842$3;
			__builtin_memset( &TMP$1842$3, 0, 24ll );
			__builtin_memset( &TMP$1841$3, 0, 24ll );
			FBSTRING* vr$274 = fb_StrConcat( &TMP$1841$3, (void*)"not ", 5ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1842$3, -1ll, (void*)vr$274, -1ll, 0 );
			HWRITEASM64( &TMP$1842$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1842$3 );
		}
		label$1493:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1471:;
	label$1470:;
	if( *(int64*)((uint8*)V1$1 + 8ll) != 15ll ) goto label$1496;
	{
		if( *(int64*)V1$1 != 4ll ) goto label$1498;
		{
			FBSTRING TMP$1844$3;
			FBSTRING TMP$1845$3;
			__builtin_memset( &TMP$1845$3, 0, 24ll );
			__builtin_memset( &TMP$1844$3, 0, 24ll );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$1844$3, (void*)"movd xmm0, ", 12ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1845$3, -1ll, (void*)vr$287, -1ll, 0 );
			HWRITEASM64( &TMP$1845$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1845$3 );
		}
		goto label$1497;
		label$1498:;
		{
			FBSTRING TMP$1847$3;
			FBSTRING TMP$1848$3;
			__builtin_memset( &TMP$1848$3, 0, 24ll );
			__builtin_memset( &TMP$1847$3, 0, 24ll );
			FBSTRING* vr$295 = fb_StrConcat( &TMP$1847$3, (void*)"movss xmm0, ", 13ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1848$3, -1ll, (void*)vr$295, -1ll, 0 );
			HWRITEASM64( &TMP$1848$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1848$3 );
		}
		label$1497:;
		{
			if( OP$1 != 60ll ) goto label$1500;
			label$1501:;
			{
				FBSTRING TMP$1850$4;
				__builtin_memset( &TMP$1850$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1850$4, -1ll, (void*)"cosf", 5ll, 0 );
				SAVE_CALL( &TMP$1850$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1850$4 );
			}
			goto label$1499;
			label$1500:;
			if( OP$1 != 58ll ) goto label$1502;
			label$1503:;
			{
				FBSTRING TMP$1852$4;
				__builtin_memset( &TMP$1852$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1852$4, -1ll, (void*)"sinf", 5ll, 0 );
				SAVE_CALL( &TMP$1852$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1852$4 );
			}
			goto label$1499;
			label$1502:;
			if( OP$1 != 69ll ) goto label$1504;
			label$1505:;
			{
				FBSTRING TMP$1854$4;
				__builtin_memset( &TMP$1854$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1854$4, -1ll, (void*)"expf", 5ll, 0 );
				SAVE_CALL( &TMP$1854$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1854$4 );
			}
			goto label$1499;
			label$1504:;
			if( OP$1 != 68ll ) goto label$1506;
			label$1507:;
			{
				FBSTRING TMP$1856$4;
				__builtin_memset( &TMP$1856$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1856$4, -1ll, (void*)"logf", 5ll, 0 );
				SAVE_CALL( &TMP$1856$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1856$4 );
			}
			goto label$1499;
			label$1506:;
			if( OP$1 != 61ll ) goto label$1508;
			label$1509:;
			{
				FBSTRING TMP$1858$4;
				__builtin_memset( &TMP$1858$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1858$4, -1ll, (void*)"acosf", 6ll, 0 );
				SAVE_CALL( &TMP$1858$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1858$4 );
			}
			goto label$1499;
			label$1508:;
			if( OP$1 != 59ll ) goto label$1510;
			label$1511:;
			{
				FBSTRING TMP$1860$4;
				__builtin_memset( &TMP$1860$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1860$4, -1ll, (void*)"asinf", 6ll, 0 );
				SAVE_CALL( &TMP$1860$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1860$4 );
			}
			goto label$1499;
			label$1510:;
			if( OP$1 != 62ll ) goto label$1512;
			label$1513:;
			{
				FBSTRING TMP$1862$4;
				__builtin_memset( &TMP$1862$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1862$4, -1ll, (void*)"tanf", 5ll, 0 );
				SAVE_CALL( &TMP$1862$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1862$4 );
			}
			goto label$1499;
			label$1512:;
			if( OP$1 != 63ll ) goto label$1514;
			label$1515:;
			{
				FBSTRING TMP$1864$4;
				__builtin_memset( &TMP$1864$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1864$4, -1ll, (void*)"atanf", 6ll, 0 );
				SAVE_CALL( &TMP$1864$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1864$4 );
			}
			goto label$1499;
			label$1514:;
			if( OP$1 != 65ll ) goto label$1516;
			label$1517:;
			{
				FBSTRING TMP$1866$4;
				__builtin_memset( &TMP$1866$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1866$4, -1ll, (void*)"sqrtss\x09xmm0, xmm0", 18ll, 0 );
				HWRITEASM64( &TMP$1866$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1866$4 );
			}
			goto label$1499;
			label$1516:;
			if( OP$1 != 56ll ) goto label$1518;
			label$1519:;
			{
				FBSTRING TMP$1868$4;
				FBSTRING TMP$1870$4;
				FBSTRING TMP$1872$4;
				FBSTRING TMP$1874$4;
				__builtin_memset( &TMP$1868$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1868$4, -1ll, (void*)"mov eax, 0x7FFFFFFF", 20ll, 0 );
				HWRITEASM64( &TMP$1868$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1868$4 );
				__builtin_memset( &TMP$1870$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1870$4, -1ll, (void*)"movd xmm1, eax", 15ll, 0 );
				HWRITEASM64( &TMP$1870$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1870$4 );
				__builtin_memset( &TMP$1872$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1872$4, -1ll, (void*)"andps xmm1, xmm0", 17ll, 0 );
				HWRITEASM64( &TMP$1872$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1872$4 );
				__builtin_memset( &TMP$1874$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1874$4, -1ll, (void*)"movd xmm0, xmm1", 16ll, 0 );
				HWRITEASM64( &TMP$1874$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1874$4 );
				RESTORE_VRREG( VR$1, (int64)VRREG$1 );
			}
			goto label$1499;
			label$1518:;
			if( OP$1 != 57ll ) goto label$1520;
			label$1521:;
			{
				FBSTRING TMP$1876$4;
				__builtin_memset( &TMP$1876$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1876$4, -1ll, (void*)"fb_SGNSingle", 13ll, 0 );
				SAVE_CALL( &TMP$1876$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1876$4 );
			}
			goto label$1499;
			label$1520:;
			if( OP$1 != 72ll ) goto label$1522;
			label$1523:;
			{
				FBSTRING TMP$1878$4;
				__builtin_memset( &TMP$1878$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1878$4, -1ll, (void*)"fb_FRACf", 9ll, 0 );
				SAVE_CALL( &TMP$1878$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1878$4 );
			}
			goto label$1499;
			label$1522:;
			if( OP$1 != 71ll ) goto label$1524;
			label$1525:;
			{
				FBSTRING TMP$1880$4;
				__builtin_memset( &TMP$1880$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1880$4, -1ll, (void*)"fb_FIXSingle", 13ll, 0 );
				SAVE_CALL( &TMP$1880$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1880$4 );
			}
			goto label$1499;
			label$1524:;
			if( OP$1 != 70ll ) goto label$1526;
			label$1527:;
			{
				FBSTRING TMP$1882$4;
				__builtin_memset( &TMP$1882$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1882$4, -1ll, (void*)"floorf", 7ll, 0 );
				SAVE_CALL( &TMP$1882$4, VR$1, (int64)VRREG$1 );
				fb_StrDelete( (FBSTRING*)&TMP$1882$4 );
			}
			goto label$1499;
			label$1526:;
			if( OP$1 != 54ll ) goto label$1528;
			label$1529:;
			{
				FBSTRING TMP$1885$4;
				FBSTRING TMP$1886$4;
				FBSTRING TMP$1888$4;
				__builtin_memset( &TMP$1885$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1885$4, -1ll, (void*)"mov eax, 0x80000000", 20ll, 0 );
				HWRITEASM64( &TMP$1885$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1885$4 );
				__builtin_memset( &TMP$1886$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1886$4, -1ll, (void*)"movd xmm1, eax", 15ll, 0 );
				HWRITEASM64( &TMP$1886$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1886$4 );
				__builtin_memset( &TMP$1888$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1888$4, -1ll, (void*)"xorps xmm0, xmm1", 17ll, 0 );
				HWRITEASM64( &TMP$1888$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1888$4 );
				RESTORE_VRREG( VR$1, (int64)VRREG$1 );
			}
			goto label$1499;
			label$1528:;
			{
				FBSTRING TMP$1889$4;
				FBSTRING TMP$1892$4;
				FBSTRING TMP$1893$4;
				__builtin_memset( &TMP$1889$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1889$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$1889$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1889$4 );
				__builtin_memset( &TMP$1892$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1892$4, -1ll, (void*)"FOUND AN ERROR : in uop not handled for single", 47ll, 0 );
				HWRITEASM64( &TMP$1892$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1892$4 );
				__builtin_memset( &TMP$1893$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$1893$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$1893$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1893$4 );
			}
			label$1530:;
			label$1499:;
		}
		if( OP$1 != 57ll ) goto label$1532;
		{
			FBSTRING TMP$1895$3;
			FBSTRING TMP$1896$3;
			FBSTRING TMP$1897$3;
			__builtin_memset( &TMP$1897$3, 0, 24ll );
			__builtin_memset( &TMP$1895$3, 0, 24ll );
			FBSTRING* vr$410 = fb_StrConcat( &TMP$1895$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1896$3, 0, 24ll );
			FBSTRING* vr$413 = fb_StrConcat( &TMP$1896$3, (void*)vr$410, -1ll, (void*)", eax", 6ll );
			fb_StrAssign( (void*)&TMP$1897$3, -1ll, (void*)vr$413, -1ll, 0 );
			HWRITEASM64( &TMP$1897$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1897$3 );
		}
		goto label$1531;
		label$1532:;
		{
			FBSTRING TMP$1898$3;
			FBSTRING TMP$1899$3;
			FBSTRING TMP$1900$3;
			__builtin_memset( &TMP$1900$3, 0, 24ll );
			__builtin_memset( &TMP$1898$3, 0, 24ll );
			FBSTRING* vr$422 = fb_StrConcat( &TMP$1898$3, (void*)"movd ", 6ll, *(void**)((uint8*)REGSTRD$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1899$3, 0, 24ll );
			FBSTRING* vr$425 = fb_StrConcat( &TMP$1899$3, (void*)vr$422, -1ll, (void*)", xmm0", 7ll );
			fb_StrAssign( (void*)&TMP$1900$3, -1ll, (void*)vr$425, -1ll, 0 );
			HWRITEASM64( &TMP$1900$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1900$3 );
		}
		label$1531:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1496:;
	label$1495:;
	if( ((int64)-(OP$1 == 56ll) & (int64)-(*(int64*)((uint8*)V1$1 + 8ll) != 16ll)) == 0ll ) goto label$1534;
	{
		FBSTRING TMP$1901$2;
		FBSTRING TMP$1902$2;
		FBSTRING TMP$1907$2;
		FBSTRING TMP$1909$2;
		FBSTRING TMP$1911$2;
		__builtin_memset( &TMP$1902$2, 0, 24ll );
		__builtin_memset( &TMP$1901$2, 0, 24ll );
		FBSTRING* vr$440 = fb_StrConcat( &TMP$1901$2, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1902$2, -1ll, (void*)vr$440, -1ll, 0 );
		HWRITEASM64( &TMP$1902$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1902$2 );
		if( (int64)*(int32*)((uint8*)REGHANDLE$ + 12ll) == -2ll ) goto label$1536;
		{
			FBSTRING TMP$1903$3;
			FBSTRING TMP$1904$3;
			FBSTRING TMP$1905$3;
			FBSTRING TMP$1906$3;
			TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 12ll);
			REG_FINDFREE( TEMPO$1, -1ll );
			*(int32*)((uint8*)REGHANDLE$ + 12ll) = -2;
			__builtin_memset( &TMP$1906$3, 0, 24ll );
			int32 vr$446 = REG_FINDREAL( TEMPO$1 );
			__builtin_memset( &TMP$1903$3, 0, 24ll );
			FBSTRING* vr$451 = fb_StrConcat( &TMP$1903$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$446 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1904$3, 0, 24ll );
			FBSTRING* vr$454 = fb_StrConcat( &TMP$1904$3, (void*)vr$451, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1905$3, 0, 24ll );
			FBSTRING* vr$457 = fb_StrConcat( &TMP$1905$3, (void*)vr$454, -1ll, *(void**)((uint8*)REGSTRQ$ + 24ll), 0ll );
			fb_StrAssign( (void*)&TMP$1906$3, -1ll, (void*)vr$457, -1ll, 0 );
			HWRITEASM64( &TMP$1906$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1906$3 );
			if( (int64)VRREG$1 != 3ll ) goto label$1538;
			{
				int32 vr$462 = REG_FINDREAL( TEMPO$1 );
				VRREG$1 = vr$462;
				label$1538:;
			}
		}
		goto label$1535;
		label$1536:;
		{
			*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | 8ll);
		}
		label$1535:;
		__builtin_memset( &TMP$1907$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1907$2, -1ll, (void*)"cqo", 4ll, 0 );
		HWRITEASM64( &TMP$1907$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1907$2 );
		__builtin_memset( &TMP$1909$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1909$2, -1ll, (void*)"xor rax, rdx", 13ll, 0 );
		HWRITEASM64( &TMP$1909$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1909$2 );
		__builtin_memset( &TMP$1911$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1911$2, -1ll, (void*)"sub rax, rdx", 13ll, 0 );
		HWRITEASM64( &TMP$1911$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1911$2 );
		if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1540;
		{
			FBSTRING TMP$1912$3;
			FBSTRING TMP$1913$3;
			FBSTRING TMP$1914$3;
			__builtin_memset( &TMP$1914$3, 0, 24ll );
			__builtin_memset( &TMP$1912$3, 0, 24ll );
			FBSTRING* vr$482 = fb_StrConcat( &TMP$1912$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1913$3, 0, 24ll );
			FBSTRING* vr$485 = fb_StrConcat( &TMP$1913$3, (void*)vr$482, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1914$3, -1ll, (void*)vr$485, -1ll, 0 );
			HWRITEASM64( &TMP$1914$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1914$3 );
		}
		goto label$1539;
		label$1540:;
		{
			FBSTRING TMP$1915$3;
			FBSTRING TMP$1916$3;
			FBSTRING TMP$1917$3;
			__builtin_memset( &TMP$1917$3, 0, 24ll );
			__builtin_memset( &TMP$1915$3, 0, 24ll );
			FBSTRING* vr$494 = fb_StrConcat( &TMP$1915$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1916$3, 0, 24ll );
			FBSTRING* vr$497 = fb_StrConcat( &TMP$1916$3, (void*)vr$494, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1917$3, -1ll, (void*)vr$497, -1ll, 0 );
			HWRITEASM64( &TMP$1917$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1917$3 );
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
		}
		label$1539:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1534:;
	label$1533:;
	if( ((int64)-(OP$1 == 54ll) & (int64)-(*(int64*)((uint8*)V1$1 + 8ll) != 16ll)) == 0ll ) goto label$1542;
	{
		FBSTRING TMP$1922$2;
		FBSTRING TMP$1923$2;
		if( ((int64)-(VR$1 != (struct $6IRVREG*)0ull) & (int64)-(*(int64*)V1$1 != 4ll)) == 0ll ) goto label$1544;
		{
			FBSTRING TMP$1918$3;
			FBSTRING TMP$1919$3;
			FBSTRING TMP$1920$3;
			FBSTRING TMP$1921$3;
			__builtin_memset( &TMP$1921$3, 0, 24ll );
			__builtin_memset( &TMP$1918$3, 0, 24ll );
			FBSTRING* vr$519 = fb_StrConcat( &TMP$1918$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1919$3, 0, 24ll );
			FBSTRING* vr$522 = fb_StrConcat( &TMP$1919$3, (void*)vr$519, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$1920$3, 0, 24ll );
			FBSTRING* vr$525 = fb_StrConcat( &TMP$1920$3, (void*)vr$522, -1ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1921$3, -1ll, (void*)vr$525, -1ll, 0 );
			HWRITEASM64( &TMP$1921$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1921$3 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll, 0 );
		}
		label$1544:;
		label$1543:;
		__builtin_memset( &TMP$1923$2, 0, 24ll );
		__builtin_memset( &TMP$1922$2, 0, 24ll );
		FBSTRING* vr$536 = fb_StrConcat( &TMP$1922$2, (void*)"neg ", 5ll, (void*)&OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1923$2, -1ll, (void*)vr$536, -1ll, 0 );
		HWRITEASM64( &TMP$1923$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1923$2 );
		if( VR$1 == (struct $6IRVREG*)0ull ) goto label$1546;
		{
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
			label$1546:;
		}
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1542:;
	label$1541:;
	if( ((int64)-(OP$1 == 57ll) & (int64)-(*(int64*)((uint8*)V1$1 + 8ll) != 16ll)) == 0ll ) goto label$1548;
	{
		FBSTRING TMP$1931$2;
		FBSTRING TMP$1933$2;
		int32 vr$549 = fb_StrCompare( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 16ll), 0ll );
		if( (int64)vr$549 == 0ll ) goto label$1550;
		{
			FBSTRING TMP$1928$3;
			FBSTRING TMP$1929$3;
			if( (int64)*(int32*)((uint8*)REGHANDLE$ + 8ll) == -2ll ) goto label$1552;
			{
				FBSTRING TMP$1924$4;
				FBSTRING TMP$1925$4;
				FBSTRING TMP$1926$4;
				FBSTRING TMP$1927$4;
				TEMPO$1 = *(int32*)((uint8*)REGHANDLE$ + 8ll);
				REG_FINDFREE( TEMPO$1, -1ll );
				*(int32*)((uint8*)REGHANDLE$ + 8ll) = -2;
				__builtin_memset( &TMP$1927$4, 0, 24ll );
				int32 vr$553 = REG_FINDREAL( TEMPO$1 );
				__builtin_memset( &TMP$1924$4, 0, 24ll );
				FBSTRING* vr$558 = fb_StrConcat( &TMP$1924$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$553 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$1925$4, 0, 24ll );
				FBSTRING* vr$561 = fb_StrConcat( &TMP$1925$4, (void*)vr$558, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$1926$4, 0, 24ll );
				FBSTRING* vr$564 = fb_StrConcat( &TMP$1926$4, (void*)vr$561, -1ll, *(void**)((uint8*)REGSTRQ$ + 16ll), 0ll );
				fb_StrAssign( (void*)&TMP$1927$4, -1ll, (void*)vr$564, -1ll, 0 );
				HWRITEASM64( &TMP$1927$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$1927$4 );
				int32 vr$568 = REG_FINDREAL( TEMPO$1 );
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$568 << (3ll & 63ll))), 0ll, 0 );
				if( (int64)VRREG$1 != 2ll ) goto label$1554;
				{
					int32 vr$573 = REG_FINDREAL( TEMPO$1 );
					VRREG$1 = vr$573;
					label$1554:;
				}
			}
			goto label$1551;
			label$1552:;
			{
				*(int32*)((uint8*)&CTX$ + 224ll) = (int32)((int64)*(int32*)((uint8*)&CTX$ + 224ll) | 4ll);
			}
			label$1551:;
			__builtin_memset( &TMP$1929$3, 0, 24ll );
			__builtin_memset( &TMP$1928$3, 0, 24ll );
			FBSTRING* vr$581 = fb_StrConcat( &TMP$1928$3, (void*)"mov rcx, ", 10ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$1929$3, -1ll, (void*)vr$581, -1ll, 0 );
			HWRITEASM64( &TMP$1929$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1929$3 );
		}
		label$1550:;
		label$1549:;
		__builtin_memset( &TMP$1931$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1931$2, -1ll, (void*)"fb_SGNl", 8ll, 0 );
		SAVE_CALL( &TMP$1931$2, VR$1, (int64)VRREG$1 );
		fb_StrDelete( (FBSTRING*)&TMP$1931$2 );
		__builtin_memset( &TMP$1933$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$1933$2, -1ll, (void*)"movsxd rax, eax", 16ll, 0 );
		HWRITEASM64( &TMP$1933$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1933$2 );
		if( VR$1 != (struct $6IRVREG*)0ull ) goto label$1556;
		{
			FBSTRING TMP$1934$3;
			FBSTRING TMP$1935$3;
			FBSTRING TMP$1936$3;
			__builtin_memset( &TMP$1936$3, 0, 24ll );
			__builtin_memset( &TMP$1934$3, 0, 24ll );
			FBSTRING* vr$598 = fb_StrConcat( &TMP$1934$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$1935$3, 0, 24ll );
			FBSTRING* vr$601 = fb_StrConcat( &TMP$1935$3, (void*)vr$598, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1936$3, -1ll, (void*)vr$601, -1ll, 0 );
			HWRITEASM64( &TMP$1936$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1936$3 );
		}
		goto label$1555;
		label$1556:;
		{
			FBSTRING TMP$1937$3;
			FBSTRING TMP$1938$3;
			FBSTRING TMP$1939$3;
			__builtin_memset( &TMP$1939$3, 0, 24ll );
			__builtin_memset( &TMP$1937$3, 0, 24ll );
			FBSTRING* vr$610 = fb_StrConcat( &TMP$1937$3, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$1938$3, 0, 24ll );
			FBSTRING* vr$613 = fb_StrConcat( &TMP$1938$3, (void*)vr$610, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$1939$3, -1ll, (void*)vr$613, -1ll, 0 );
			HWRITEASM64( &TMP$1939$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1939$3 );
		}
		label$1555:;
		fb_StrDelete( (FBSTRING*)&PREFIX$1 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$1416;
	}
	label$1548:;
	label$1547:;
	if( *(int64*)V1$1 != 4ll ) goto label$1558;
	{
		FBSTRING TMP$1941$2;
		FBSTRING TMP$1942$2;
		__builtin_memset( &TMP$1942$2, 0, 24ll );
		__builtin_memset( &TMP$1941$2, 0, 24ll );
		FBSTRING* vr$625 = fb_StrConcat( &TMP$1941$2, (void*)"movq xmm0, ", 12ll, (void*)&OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1942$2, -1ll, (void*)vr$625, -1ll, 0 );
		HWRITEASM64( &TMP$1942$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1942$2 );
	}
	goto label$1557;
	label$1558:;
	{
		FBSTRING TMP$1944$2;
		FBSTRING TMP$1945$2;
		__builtin_memset( &TMP$1945$2, 0, 24ll );
		__builtin_memset( &TMP$1944$2, 0, 24ll );
		FBSTRING* vr$633 = fb_StrConcat( &TMP$1944$2, (void*)"movsd xmm0, ", 13ll, (void*)&OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$1945$2, -1ll, (void*)vr$633, -1ll, 0 );
		HWRITEASM64( &TMP$1945$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1945$2 );
	}
	label$1557:;
	{
		if( OP$1 != 60ll ) goto label$1560;
		label$1561:;
		{
			FBSTRING TMP$1947$3;
			__builtin_memset( &TMP$1947$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1947$3, -1ll, (void*)"cos", 4ll, 0 );
			SAVE_CALL( &TMP$1947$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1947$3 );
		}
		goto label$1559;
		label$1560:;
		if( OP$1 != 58ll ) goto label$1562;
		label$1563:;
		{
			FBSTRING TMP$1949$3;
			__builtin_memset( &TMP$1949$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1949$3, -1ll, (void*)"sin", 4ll, 0 );
			SAVE_CALL( &TMP$1949$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1949$3 );
		}
		goto label$1559;
		label$1562:;
		if( OP$1 != 69ll ) goto label$1564;
		label$1565:;
		{
			FBSTRING TMP$1951$3;
			__builtin_memset( &TMP$1951$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1951$3, -1ll, (void*)"exp", 4ll, 0 );
			SAVE_CALL( &TMP$1951$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1951$3 );
		}
		goto label$1559;
		label$1564:;
		if( OP$1 != 68ll ) goto label$1566;
		label$1567:;
		{
			FBSTRING TMP$1953$3;
			__builtin_memset( &TMP$1953$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1953$3, -1ll, (void*)"log", 4ll, 0 );
			SAVE_CALL( &TMP$1953$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1953$3 );
		}
		goto label$1559;
		label$1566:;
		if( OP$1 != 61ll ) goto label$1568;
		label$1569:;
		{
			FBSTRING TMP$1955$3;
			__builtin_memset( &TMP$1955$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1955$3, -1ll, (void*)"acos", 5ll, 0 );
			SAVE_CALL( &TMP$1955$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1955$3 );
		}
		goto label$1559;
		label$1568:;
		if( OP$1 != 59ll ) goto label$1570;
		label$1571:;
		{
			FBSTRING TMP$1957$3;
			__builtin_memset( &TMP$1957$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1957$3, -1ll, (void*)"asin", 5ll, 0 );
			SAVE_CALL( &TMP$1957$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1957$3 );
		}
		goto label$1559;
		label$1570:;
		if( OP$1 != 62ll ) goto label$1572;
		label$1573:;
		{
			FBSTRING TMP$1959$3;
			__builtin_memset( &TMP$1959$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1959$3, -1ll, (void*)"tan", 4ll, 0 );
			SAVE_CALL( &TMP$1959$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1959$3 );
		}
		goto label$1559;
		label$1572:;
		if( OP$1 != 63ll ) goto label$1574;
		label$1575:;
		{
			FBSTRING TMP$1961$3;
			__builtin_memset( &TMP$1961$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1961$3, -1ll, (void*)"atan", 5ll, 0 );
			SAVE_CALL( &TMP$1961$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1961$3 );
		}
		goto label$1559;
		label$1574:;
		if( OP$1 != 56ll ) goto label$1576;
		label$1577:;
		{
			FBSTRING TMP$1963$3;
			FBSTRING TMP$1965$3;
			FBSTRING TMP$1967$3;
			FBSTRING TMP$1969$3;
			__builtin_memset( &TMP$1963$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1963$3, -1ll, (void*)"mov rax, 0x7FFFFFFFFFFFFFFF", 28ll, 0 );
			HWRITEASM64( &TMP$1963$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1963$3 );
			__builtin_memset( &TMP$1965$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1965$3, -1ll, (void*)"movq xmm1, rax", 15ll, 0 );
			HWRITEASM64( &TMP$1965$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1965$3 );
			__builtin_memset( &TMP$1967$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1967$3, -1ll, (void*)"andpd xmm1, xmm0", 17ll, 0 );
			HWRITEASM64( &TMP$1967$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1967$3 );
			__builtin_memset( &TMP$1969$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1969$3, -1ll, (void*)"movq xmm0, xmm1", 16ll, 0 );
			HWRITEASM64( &TMP$1969$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1969$3 );
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
		}
		goto label$1559;
		label$1576:;
		if( OP$1 != 65ll ) goto label$1578;
		label$1579:;
		{
			FBSTRING TMP$1971$3;
			__builtin_memset( &TMP$1971$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1971$3, -1ll, (void*)"sqrtsd\x09xmm0, xmm0", 18ll, 0 );
			HWRITEASM64( &TMP$1971$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1971$3 );
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
		}
		goto label$1559;
		label$1578:;
		if( OP$1 != 57ll ) goto label$1580;
		label$1581:;
		{
			FBSTRING TMP$1973$3;
			__builtin_memset( &TMP$1973$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1973$3, -1ll, (void*)"fb_SGNDouble", 13ll, 0 );
			SAVE_CALL( &TMP$1973$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1973$3 );
		}
		goto label$1559;
		label$1580:;
		if( OP$1 != 72ll ) goto label$1582;
		label$1583:;
		{
			FBSTRING TMP$1975$3;
			__builtin_memset( &TMP$1975$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1975$3, -1ll, (void*)"fb_FRACd", 9ll, 0 );
			SAVE_CALL( &TMP$1975$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1975$3 );
		}
		goto label$1559;
		label$1582:;
		if( OP$1 != 71ll ) goto label$1584;
		label$1585:;
		{
			FBSTRING TMP$1977$3;
			__builtin_memset( &TMP$1977$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1977$3, -1ll, (void*)"fb_FIXDouble", 13ll, 0 );
			SAVE_CALL( &TMP$1977$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1977$3 );
		}
		goto label$1559;
		label$1584:;
		if( OP$1 != 70ll ) goto label$1586;
		label$1587:;
		{
			FBSTRING TMP$1979$3;
			__builtin_memset( &TMP$1979$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1979$3, -1ll, (void*)"floor", 6ll, 0 );
			SAVE_CALL( &TMP$1979$3, VR$1, (int64)VRREG$1 );
			fb_StrDelete( (FBSTRING*)&TMP$1979$3 );
		}
		goto label$1559;
		label$1586:;
		if( OP$1 != 54ll ) goto label$1588;
		label$1589:;
		{
			FBSTRING TMP$1982$3;
			FBSTRING TMP$1983$3;
			FBSTRING TMP$1985$3;
			__builtin_memset( &TMP$1982$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1982$3, -1ll, (void*)"mov rax, 0x8000000000000000", 28ll, 0 );
			HWRITEASM64( &TMP$1982$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1982$3 );
			__builtin_memset( &TMP$1983$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1983$3, -1ll, (void*)"movq xmm1, rax", 15ll, 0 );
			HWRITEASM64( &TMP$1983$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1983$3 );
			__builtin_memset( &TMP$1985$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1985$3, -1ll, (void*)"xorpd xmm0, xmm1", 17ll, 0 );
			HWRITEASM64( &TMP$1985$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1985$3 );
			RESTORE_VRREG( VR$1, (int64)VRREG$1 );
		}
		goto label$1559;
		label$1588:;
		{
			FBSTRING TMP$1986$3;
			FBSTRING TMP$1989$3;
			FBSTRING TMP$1990$3;
			__builtin_memset( &TMP$1986$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1986$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1986$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1986$3 );
			__builtin_memset( &TMP$1989$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1989$3, -1ll, (void*)"FOUND AN ERROR : in uop not handled for double", 47ll, 0 );
			HWRITEASM64( &TMP$1989$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1989$3 );
			__builtin_memset( &TMP$1990$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$1990$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$1990$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$1990$3 );
		}
		label$1590:;
		label$1559:;
	}
	if( OP$1 != 57ll ) goto label$1592;
	{
		FBSTRING TMP$1992$2;
		FBSTRING TMP$1993$2;
		FBSTRING TMP$1994$2;
		__builtin_memset( &TMP$1994$2, 0, 24ll );
		__builtin_memset( &TMP$1992$2, 0, 24ll );
		FBSTRING* vr$749 = fb_StrConcat( &TMP$1992$2, (void*)"movsxd ", 8ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
		__builtin_memset( &TMP$1993$2, 0, 24ll );
		FBSTRING* vr$752 = fb_StrConcat( &TMP$1993$2, (void*)vr$749, -1ll, (void*)", eax", 6ll );
		fb_StrAssign( (void*)&TMP$1994$2, -1ll, (void*)vr$752, -1ll, 0 );
		HWRITEASM64( &TMP$1994$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1994$2 );
	}
	goto label$1591;
	label$1592:;
	{
		FBSTRING TMP$1995$2;
		FBSTRING TMP$1996$2;
		FBSTRING TMP$1997$2;
		__builtin_memset( &TMP$1997$2, 0, 24ll );
		__builtin_memset( &TMP$1995$2, 0, 24ll );
		FBSTRING* vr$761 = fb_StrConcat( &TMP$1995$2, (void*)"movq ", 6ll, *(void**)((uint8*)REGSTRQ$ + ((int64)VRREG$1 << (3ll & 63ll))), 0ll );
		__builtin_memset( &TMP$1996$2, 0, 24ll );
		FBSTRING* vr$764 = fb_StrConcat( &TMP$1996$2, (void*)vr$761, -1ll, (void*)", xmm0", 7ll );
		fb_StrAssign( (void*)&TMP$1997$2, -1ll, (void*)vr$764, -1ll, 0 );
		HWRITEASM64( &TMP$1997$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$1997$2 );
	}
	label$1591:;
	fb_StrDelete( (FBSTRING*)&PREFIX$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$1416:;
}

static void HEMITROUNDFLOAT( $11FB_DATATYPE DTYPE1$1, $11FB_DATATYPE DTYPE2$1 )
{
	FBSTRING TMP$1999$1;
	FBSTRING TMP$2000$1;
	FBSTRING TMP$2001$1;
	FBSTRING TMP$2011$1;
	FBSTRING TMP$2012$1;
	FBSTRING TMP$2013$1;
	FBSTRING TMP$2014$1;
	FBSTRING TMP$2021$1;
	FBSTRING TMP$2022$1;
	label$1593:;
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 24ll );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 24ll );
	*(boolean*)((uint8*)&CTX$ + 256ll) = (boolean)1ll;
	__builtin_memset( &TMP$1999$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$1999$1, -1ll, (void*)"test DWORD PTR $sse41[rip], 0b10000000000000000000", 51ll, 0 );
	HWRITEASM64( &TMP$1999$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$1999$1 );
	uint8* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$6, 0ll, 0 );
	__builtin_memset( &TMP$2001$1, 0, 24ll );
	__builtin_memset( &TMP$2000$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$2000$1, (void*)"je ", 4ll, (void*)&LNAME1$1, -1ll );
	fb_StrAssign( (void*)&TMP$2001$1, -1ll, (void*)vr$12, -1ll, 0 );
	HWRITEASM64( &TMP$2001$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2001$1 );
	if( DTYPE1$1 != 16ll ) goto label$1596;
	{
		FBSTRING TMP$2003$2;
		__builtin_memset( &TMP$2003$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2003$2, -1ll, (void*)"roundsd xmm0,xmm0,4", 20ll, 0 );
		HWRITEASM64( &TMP$2003$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2003$2 );
		if( DTYPE2$1 == 14ll ) goto label$1598;
		{
			FBSTRING TMP$2005$3;
			__builtin_memset( &TMP$2005$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2005$3, -1ll, (void*)"cvttsd2si rax, xmm0", 20ll, 0 );
			HWRITEASM64( &TMP$2005$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2005$3 );
		}
		label$1598:;
		label$1597:;
	}
	goto label$1595;
	label$1596:;
	{
		FBSTRING TMP$2007$2;
		__builtin_memset( &TMP$2007$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2007$2, -1ll, (void*)"roundss xmm0,xmm0,4", 20ll, 0 );
		HWRITEASM64( &TMP$2007$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2007$2 );
		if( DTYPE2$1 == 14ll ) goto label$1600;
		{
			FBSTRING TMP$2009$3;
			__builtin_memset( &TMP$2009$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2009$3, -1ll, (void*)"cvttss2si rax, xmm0", 20ll, 0 );
			HWRITEASM64( &TMP$2009$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2009$3 );
		}
		label$1600:;
		label$1599:;
	}
	label$1595:;
	uint8* vr$32 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$32, 0ll, 0 );
	__builtin_memset( &TMP$2012$1, 0, 24ll );
	__builtin_memset( &TMP$2011$1, 0, 24ll );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$2011$1, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
	fb_StrAssign( (void*)&TMP$2012$1, -1ll, (void*)vr$38, -1ll, 0 );
	HWRITEASM64( &TMP$2012$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2012$1 );
	__builtin_memset( &TMP$2014$1, 0, 24ll );
	__builtin_memset( &TMP$2013$1, 0, 24ll );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$2013$1, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$2014$1, -1ll, (void*)vr$46, -1ll, 0 );
	HWRITEASM64( &TMP$2014$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2014$1 );
	if( DTYPE1$1 != 16ll ) goto label$1602;
	{
		if( DTYPE2$1 == 14ll ) goto label$1604;
		{
			NO_ROUNDSD( (uint8*)"d" );
		}
		goto label$1603;
		label$1604:;
		{
			FBSTRING TMP$2017$3;
			__builtin_memset( &TMP$2017$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2017$3, -1ll, (void*)"call nearbyint", 15ll, 0 );
			HWRITEASM64( &TMP$2017$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2017$3 );
		}
		label$1603:;
	}
	goto label$1601;
	label$1602:;
	{
		if( DTYPE2$1 == 14ll ) goto label$1606;
		{
			NO_ROUNDSD( (uint8*)"s" );
		}
		goto label$1605;
		label$1606:;
		{
			FBSTRING TMP$2020$3;
			__builtin_memset( &TMP$2020$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2020$3, -1ll, (void*)"call nearbyintf", 16ll, 0 );
			HWRITEASM64( &TMP$2020$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2020$3 );
		}
		label$1605:;
	}
	label$1601:;
	__builtin_memset( &TMP$2022$1, 0, 24ll );
	__builtin_memset( &TMP$2021$1, 0, 24ll );
	FBSTRING* vr$62 = fb_StrConcat( &TMP$2021$1, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$2022$1, -1ll, (void*)vr$62, -1ll, 0 );
	HWRITEASM64( &TMP$2022$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2022$1 );
	fb_StrDelete( (FBSTRING*)&LNAME2$1 );
	fb_StrDelete( (FBSTRING*)&LNAME1$1 );
	label$1594:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int64 TMP$2028$1;
	int64 TMP$2029$1;
	int64 TMP$2030$1;
	int64 TMP$2031$1;
	int64 TMP$2088$1;
	int64 TMP$2233$1;
	int64 TMP$2234$1;
	int64 TMP$2400$1;
	int64 TMP$2401$1;
	int64 TMP$2411$1;
	label$1607:;
	$11FB_DATATYPE V1DTYPE$1;
	__builtin_memset( &V1DTYPE$1, 0, 8ll );
	$11FB_DATATYPE V2DTYPE$1;
	__builtin_memset( &V2DTYPE$1, 0, 8ll );
	$11FB_DATATYPE V1OLD$1;
	__builtin_memset( &V1OLD$1, 0, 8ll );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 24ll );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 24ll );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 24ll );
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 24ll );
	FBSTRING PREFIX1$1;
	__builtin_memset( &PREFIX1$1, 0, 24ll );
	FBSTRING PREFIX2$1;
	__builtin_memset( &PREFIX2$1, 0, 24ll );
	int32 REGRESULT$1;
	__builtin_memset( &REGRESULT$1, 0, 4ll );
	int32 SRCREG$1;
	__builtin_memset( &SRCREG$1, 0, 4ll );
	int32 REG$1;
	__builtin_memset( &REG$1, 0, 4ll );
	if( *(int64*)V1$1 == 4ll ) goto label$1610;
	{
		FBSTRING TMP$2023$2;
		FBSTRING TMP$2026$2;
		FBSTRING TMP$2027$2;
		__builtin_memset( &TMP$2023$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2023$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$2023$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2023$2 );
		__builtin_memset( &TMP$2026$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2026$2, -1ll, (void*)"FOUND AN ERROR : v1 in converting not a reg", 44ll, 0 );
		HWRITEASM64( &TMP$2026$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2026$2 );
		__builtin_memset( &TMP$2027$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2027$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$2027$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2027$2 );
	}
	label$1610:;
	label$1609:;
	V1DTYPE$1 = *(int64*)((uint8*)V1$1 + 8ll) & 511ll;
	V2DTYPE$1 = *(int64*)((uint8*)V2$1 + 8ll) & 511ll;
	if( ((int64)-((V1DTYPE$1 & 480ll) != 0ll) & (int64)-((V2DTYPE$1 & 480ll) != 0ll)) == 0ll ) goto label$1612;
	{
		__builtin_memcpy( V1$1, V2$1, 120 );
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
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1614;
	{
		V1DTYPE$1 = 13ll;
		label$1614:;
	}
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1616;
	{
		V2DTYPE$1 = 13ll;
		label$1616:;
	}
	if( V1DTYPE$1 != 8ll ) goto label$1618;
	{
		V1DTYPE$1 = 13ll;
	}
	goto label$1617;
	label$1618:;
	if( V1DTYPE$1 != 10ll ) goto label$1619;
	{
		V1DTYPE$1 = 13ll;
	}
	goto label$1617;
	label$1619:;
	if( V1DTYPE$1 != 9ll ) goto label$1620;
	{
		V1DTYPE$1 = 14ll;
	}
	label$1620:;
	label$1617:;
	if( V2DTYPE$1 != 8ll ) goto label$1622;
	{
		V2DTYPE$1 = 13ll;
	}
	goto label$1621;
	label$1622:;
	if( V2DTYPE$1 != 10ll ) goto label$1623;
	{
		V2DTYPE$1 = 13ll;
	}
	goto label$1621;
	label$1623:;
	if( V2DTYPE$1 != 9ll ) goto label$1624;
	{
		V2DTYPE$1 = 14ll;
	}
	label$1624:;
	label$1621:;
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1625;
	TMP$2028$1 = 24ll;
	goto label$3008;
	label$1625:;
	TMP$2028$1 = V1DTYPE$1 & 31ll;
	label$3008:;
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1626;
	TMP$2029$1 = 24ll;
	goto label$3009;
	label$1626:;
	TMP$2029$1 = V2DTYPE$1 & 31ll;
	label$3009:;
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1627;
	TMP$2030$1 = 24ll;
	goto label$3010;
	label$1627:;
	TMP$2030$1 = V1DTYPE$1 & 31ll;
	label$3010:;
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1628;
	TMP$2031$1 = 24ll;
	goto label$3011;
	label$1628:;
	TMP$2031$1 = V2DTYPE$1 & 31ll;
	label$3011:;
	if( ((((int64)-(*(int64*)V1$1 == 4ll) & (int64)-(*(int64*)V2$1 == 4ll)) & (int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2028$1 * 56ll)) + 8ll) == *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2029$1 * 56ll)) + 8ll))) & (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2030$1 * 56ll)) == *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2031$1 * 56ll)))) == 0ll ) goto label$1630;
	{
		*(int64*)((uint8*)V1$1 + 24ll) = *(int64*)((uint8*)V2$1 + 24ll);
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
	if( (((int64)-(V1DTYPE$1 == 13ll) & (int64)-(V2DTYPE$1 == 13ll)) | ((int64)-(V1DTYPE$1 == 14ll) & (int64)-(V2DTYPE$1 == 14ll))) == 0ll ) goto label$1632;
	{
		__builtin_memcpy( V1$1, V2$1, 120 );
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
	if( (((int64)-(V1DTYPE$1 == 13ll) & (int64)-(V2DTYPE$1 == 14ll)) | ((int64)-(V2DTYPE$1 == 13ll) & (int64)-(V1DTYPE$1 == 14ll))) == 0ll ) goto label$1634;
	{
		V1OLD$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 8ll);
		__builtin_memcpy( V1$1, V2$1, 120 );
		*($11FB_DATATYPE*)((uint8*)V1$1 + 8ll) = V1OLD$1;
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
	if( ((int64)-(V1DTYPE$1 == 17ll) & (int64)-(V2DTYPE$1 == 20ll)) == 0ll ) goto label$1636;
	{
		__builtin_memcpy( V1$1, V2$1, 120 );
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
	if( ((int64)-(V1DTYPE$1 == 20ll) & (int64)-(V2DTYPE$1 == 20ll)) == 0ll ) goto label$1638;
	{
		__builtin_memcpy( V1$1, V2$1, 120 );
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
	REG_FINDFREE( (int32)*(int64*)((uint8*)V1$1 + 24ll), -1ll );
	int32 vr$142 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
	REGRESULT$1 = vr$142;
	if( V1DTYPE$1 != 17ll ) goto label$1640;
	{
		V1DTYPE$1 = 13ll;
		label$1640:;
	}
	{
		if( V1DTYPE$1 == 13ll ) goto label$1643;
		label$1644:;
		if( V1DTYPE$1 == 14ll ) goto label$1643;
		label$1645:;
		if( V1DTYPE$1 == 16ll ) goto label$1643;
		label$1646:;
		if( V1DTYPE$1 != 20ll ) goto label$1642;
		label$1643:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"QWORD PTR ", 11ll, 0 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$1641;
		label$1642:;
		if( V1DTYPE$1 == 11ll ) goto label$1648;
		label$1649:;
		if( V1DTYPE$1 == 12ll ) goto label$1648;
		label$1650:;
		if( V1DTYPE$1 != 15ll ) goto label$1647;
		label$1648:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$1641;
		label$1647:;
		if( V1DTYPE$1 == 5ll ) goto label$1652;
		label$1653:;
		if( V1DTYPE$1 != 6ll ) goto label$1651;
		label$1652:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$1641;
		label$1651:;
		if( V1DTYPE$1 == 2ll ) goto label$1655;
		label$1656:;
		if( V1DTYPE$1 == 3ll ) goto label$1655;
		label$1657:;
		if( V1DTYPE$1 == 1ll ) goto label$1655;
		label$1658:;
		if( V1DTYPE$1 != 4ll ) goto label$1654;
		label$1655:;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"BYTE PTR ", 10ll, 0 );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$1641;
		label$1654:;
		{
			FBSTRING TMP$2032$3;
			FBSTRING TMP$2036$3;
			FBSTRING TMP$2037$3;
			FBSTRING TMP$2038$3;
			__builtin_memset( &TMP$2032$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2032$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2032$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2032$3 );
			__builtin_memset( &TMP$2037$3, 0, 24ll );
			FBSTRING* vr$165 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
			__builtin_memset( &TMP$2036$3, 0, 24ll );
			FBSTRING* vr$168 = fb_StrConcat( &TMP$2036$3, (void*)"FOUND AN ERROR : converting datatype not handled 01 = ", 55ll, (void*)vr$165, -1ll );
			fb_StrAssign( (void*)&TMP$2037$3, -1ll, (void*)vr$168, -1ll, 0 );
			HWRITEASM64( &TMP$2037$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2037$3 );
			__builtin_memset( &TMP$2038$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2038$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2038$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2038$3 );
		}
		label$1659:;
		label$1641:;
	}
	{
		if( V2DTYPE$1 == 13ll ) goto label$1662;
		label$1663:;
		if( V2DTYPE$1 == 14ll ) goto label$1662;
		label$1664:;
		if( V2DTYPE$1 == 16ll ) goto label$1662;
		label$1665:;
		if( V2DTYPE$1 != 20ll ) goto label$1661;
		label$1662:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"QWORD PTR ", 11ll, 0 );
		}
		goto label$1660;
		label$1661:;
		if( V2DTYPE$1 == 11ll ) goto label$1667;
		label$1668:;
		if( V2DTYPE$1 == 12ll ) goto label$1667;
		label$1669:;
		if( V2DTYPE$1 != 15ll ) goto label$1666;
		label$1667:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
		}
		goto label$1660;
		label$1666:;
		if( V2DTYPE$1 == 5ll ) goto label$1671;
		label$1672:;
		if( V2DTYPE$1 != 6ll ) goto label$1670;
		label$1671:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
		}
		goto label$1660;
		label$1670:;
		if( V2DTYPE$1 == 2ll ) goto label$1674;
		label$1675:;
		if( V2DTYPE$1 == 3ll ) goto label$1674;
		label$1676:;
		if( V2DTYPE$1 == 1ll ) goto label$1674;
		label$1677:;
		if( V2DTYPE$1 != 4ll ) goto label$1673;
		label$1674:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"BYTE PTR ", 10ll, 0 );
		}
		goto label$1660;
		label$1673:;
		if( V2DTYPE$1 != 7ll ) goto label$1678;
		label$1679:;
		{
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) != 2ll ) goto label$1681;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
				V2DTYPE$1 = 6ll;
			}
			goto label$1680;
			label$1681:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) != 4ll ) goto label$1682;
			{
				fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
				V2DTYPE$1 = 12ll;
			}
			goto label$1680;
			label$1682:;
			{
				FBSTRING TMP$2039$4;
				FBSTRING TMP$2042$4;
				FBSTRING TMP$2043$4;
				__builtin_memset( &TMP$2039$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2039$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2039$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2039$4 );
				__builtin_memset( &TMP$2042$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2042$4, -1ll, (void*)"FOUND AN ERROR : converting datatype WCHAR not handled", 55ll, 0 );
				HWRITEASM64( &TMP$2042$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2042$4 );
				__builtin_memset( &TMP$2043$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2043$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2043$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2043$4 );
			}
			label$1680:;
		}
		goto label$1660;
		label$1678:;
		{
			FBSTRING TMP$2044$3;
			FBSTRING TMP$2048$3;
			FBSTRING TMP$2049$3;
			FBSTRING TMP$2050$3;
			__builtin_memset( &TMP$2044$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2044$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2044$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2044$3 );
			__builtin_memset( &TMP$2049$3, 0, 24ll );
			FBSTRING* vr$200 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 8ll) );
			__builtin_memset( &TMP$2048$3, 0, 24ll );
			FBSTRING* vr$203 = fb_StrConcat( &TMP$2048$3, (void*)"FOUND AN ERROR : converting datatype not handled 02 = ", 55ll, (void*)vr$200, -1ll );
			fb_StrAssign( (void*)&TMP$2049$3, -1ll, (void*)vr$203, -1ll, 0 );
			HWRITEASM64( &TMP$2049$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2049$3 );
			__builtin_memset( &TMP$2050$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2050$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2050$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2050$3 );
		}
		label$1683:;
		label$1660:;
	}
	{
		$15IRVREGTYPE_ENUM TMP$2051$2;
		TMP$2051$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2051$2 != 2ll ) goto label$1685;
		label$1686:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1684;
		label$1685:;
		if( TMP$2051$2 != 4ll ) goto label$1687;
		label$1688:;
		{
			fb_StrAssign( (void*)&PREFIX2$1, -1ll, (void*)"", 1ll, 0 );
			int32 vr$217 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
			SRCREG$1 = vr$217;
			if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1690;
			{
				V2DTYPE$1 = 13ll;
				label$1690:;
			}
			{
				if( V2DTYPE$1 == 13ll ) goto label$1693;
				label$1694:;
				if( V2DTYPE$1 == 14ll ) goto label$1693;
				label$1695:;
				if( V2DTYPE$1 != 16ll ) goto label$1692;
				label$1693:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1691;
				label$1692:;
				if( V2DTYPE$1 == 11ll ) goto label$1697;
				label$1698:;
				if( V2DTYPE$1 == 12ll ) goto label$1697;
				label$1699:;
				if( V2DTYPE$1 != 15ll ) goto label$1696;
				label$1697:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1691;
				label$1696:;
				if( V2DTYPE$1 == 5ll ) goto label$1701;
				label$1702:;
				if( V2DTYPE$1 != 6ll ) goto label$1700;
				label$1701:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1691;
				label$1700:;
				if( V2DTYPE$1 == 2ll ) goto label$1704;
				label$1705:;
				if( V2DTYPE$1 == 3ll ) goto label$1704;
				label$1706:;
				if( V2DTYPE$1 == 1ll ) goto label$1704;
				label$1707:;
				if( V2DTYPE$1 != 4ll ) goto label$1703;
				label$1704:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1691;
				label$1703:;
				{
					FBSTRING TMP$2052$5;
					FBSTRING TMP$2056$5;
					FBSTRING TMP$2057$5;
					FBSTRING TMP$2058$5;
					__builtin_memset( &TMP$2052$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2052$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2052$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2052$5 );
					__builtin_memset( &TMP$2057$5, 0, 24ll );
					FBSTRING* vr$237 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 8ll) );
					__builtin_memset( &TMP$2056$5, 0, 24ll );
					FBSTRING* vr$240 = fb_StrConcat( &TMP$2056$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55ll, (void*)vr$237, -1ll );
					fb_StrAssign( (void*)&TMP$2057$5, -1ll, (void*)vr$240, -1ll, 0 );
					HWRITEASM64( &TMP$2057$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2057$5 );
					__builtin_memset( &TMP$2058$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2058$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2058$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2058$5 );
				}
				label$1708:;
				label$1691:;
			}
		}
		goto label$1684;
		label$1687:;
		if( TMP$2051$2 != 1ll ) goto label$1709;
		label$1710:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$1712;
			{
				FBSTRING TMP$2059$4;
				FBSTRING TMP$2060$4;
				FBSTRING TMP$2061$4;
				FBSTRING* vr$258 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				uint8* vr$260 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
				__builtin_memset( &TMP$2059$4, 0, 24ll );
				FBSTRING* vr$263 = fb_StrConcat( &TMP$2059$4, (void*)vr$260, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$2060$4, 0, 24ll );
				FBSTRING* vr$266 = fb_StrConcat( &TMP$2060$4, (void*)vr$263, -1ll, (void*)vr$258, -1ll );
				__builtin_memset( &TMP$2061$4, 0, 24ll );
				FBSTRING* vr$269 = fb_StrConcat( &TMP$2061$4, (void*)vr$266, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$269, -1ll, 0 );
			}
			goto label$1711;
			label$1712:;
			{
				FBSTRING TMP$2062$4;
				FBSTRING* vr$272 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$2062$4, 0, 24ll );
				FBSTRING* vr$275 = fb_StrConcat( &TMP$2062$4, (void*)vr$272, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$275, -1ll, 0 );
			}
			label$1711:;
		}
		goto label$1684;
		label$1709:;
		if( TMP$2051$2 != 3ll ) goto label$1713;
		label$1714:;
		{
			FBSTRING TMP$2063$3;
			FBSTRING TMP$2064$3;
			FBSTRING TMP$2065$3;
			int32 vr$280 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
			FBSTRING* vr$284 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
			__builtin_memset( &TMP$2063$3, 0, 24ll );
			FBSTRING* vr$287 = fb_StrConcat( &TMP$2063$3, (void*)vr$284, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$2064$3, 0, 24ll );
			FBSTRING* vr$290 = fb_StrConcat( &TMP$2064$3, (void*)vr$287, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$280 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$2065$3, 0, 24ll );
			FBSTRING* vr$293 = fb_StrConcat( &TMP$2065$3, (void*)vr$290, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$293, -1ll, 0 );
		}
		goto label$1684;
		label$1713:;
		if( TMP$2051$2 != 5ll ) goto label$1715;
		label$1716:;
		{
			FBSTRING TMP$2066$3;
			FBSTRING TMP$2067$3;
			FBSTRING TMP$2068$3;
			int64 TMP$2069$3;
			int64 TMP$2070$3;
			FBSTRING* vr$296 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
			uint8* vr$298 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
			__builtin_memset( &TMP$2066$3, 0, 24ll );
			FBSTRING* vr$301 = fb_StrConcat( &TMP$2066$3, (void*)vr$298, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$2067$3, 0, 24ll );
			FBSTRING* vr$304 = fb_StrConcat( &TMP$2067$3, (void*)vr$301, -1ll, (void*)vr$296, -1ll );
			__builtin_memset( &TMP$2068$3, 0, 24ll );
			FBSTRING* vr$307 = fb_StrConcat( &TMP$2068$3, (void*)vr$304, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$307, -1ll, 0 );
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 31ll) != 22ll ) goto label$1717;
			TMP$2069$3 = (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 2ll);
			goto label$3012;
			label$1717:;
			TMP$2069$3 = 0ll;
			label$3012:;
			if( TMP$2069$3 == 0ll ) goto label$1718;
			int64 vr$312 = FBGETOPTION( 0ll );
			TMP$2070$3 = (int64)-(vr$312 == 2ll);
			goto label$3013;
			label$1718:;
			TMP$2070$3 = 0ll;
			label$3013:;
			if( TMP$2070$3 == 0ll ) goto label$1720;
			{
				FBSTRING TMP$2072$4;
				FBSTRING TMP$2073$4;
				FBSTRING TMP$2074$4;
				FBSTRING TMP$2075$4;
				FBSTRING TMP$2076$4;
				FBSTRING TMP$2077$4;
				__builtin_memset( &TMP$2074$4, 0, 24ll );
				FBSTRING* vr$315 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
				int64 vr$317 = fb_StrInstr( 1ll, (FBSTRING*)&OP2$1, (FBSTRING*)vr$315 );
				FBSTRING* vr$320 = fb_LEFT( (FBSTRING*)&OP2$1, vr$317 + -1ll );
				__builtin_memset( &TMP$2072$4, 0, 24ll );
				FBSTRING* vr$323 = fb_StrConcat( &TMP$2072$4, (void*)"mov rax, QWORD PTR ", 20ll, (void*)vr$320, -1ll );
				__builtin_memset( &TMP$2073$4, 0, 24ll );
				FBSTRING* vr$326 = fb_StrConcat( &TMP$2073$4, (void*)vr$323, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
				fb_StrAssign( (void*)&TMP$2074$4, -1ll, (void*)vr$326, -1ll, 0 );
				HWRITEASM64( &TMP$2074$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2074$4 );
				__builtin_memset( &TMP$2077$4, 0, 24ll );
				__builtin_memset( &TMP$2075$4, 0, 24ll );
				FBSTRING* vr$334 = fb_StrConcat( &TMP$2075$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2076$4, 0, 24ll );
				FBSTRING* vr$337 = fb_StrConcat( &TMP$2076$4, (void*)vr$334, -1ll, (void*)", rax", 6ll );
				fb_StrAssign( (void*)&TMP$2077$4, -1ll, (void*)vr$337, -1ll, 0 );
				HWRITEASM64( &TMP$2077$4, 3ll );
				fb_StrDelete( (FBSTRING*)&TMP$2077$4 );
			}
			goto label$1719;
			label$1720:;
			{
				FBSTRING TMP$2078$4;
				FBSTRING TMP$2079$4;
				FBSTRING TMP$2080$4;
				FBSTRING TMP$2081$4;
				__builtin_memset( &TMP$2081$4, 0, 24ll );
				__builtin_memset( &TMP$2078$4, 0, 24ll );
				FBSTRING* vr$346 = fb_StrConcat( &TMP$2078$4, (void*)"lea ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2079$4, 0, 24ll );
				FBSTRING* vr$349 = fb_StrConcat( &TMP$2079$4, (void*)vr$346, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2080$4, 0, 24ll );
				FBSTRING* vr$352 = fb_StrConcat( &TMP$2080$4, (void*)vr$349, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2081$4, -1ll, (void*)vr$352, -1ll, 0 );
				HWRITEASM64( &TMP$2081$4, 3ll );
				fb_StrDelete( (FBSTRING*)&TMP$2081$4 );
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
		if( TMP$2051$2 != 0ll ) goto label$1721;
		label$1722:;
		{
			int64 TMP$2082$3;
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"", 1ll, 0 );
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$1723;
			TMP$2082$3 = 24ll;
			goto label$3014;
			label$1723:;
			TMP$2082$3 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
			label$3014:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2082$3 * 56ll)) != 1ll ) goto label$1725;
			{
				FBSTRING* vr$373 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 48ll), *(int64*)((uint8*)V2$1 + 8ll), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$373, -1ll, 0 );
			}
			goto label$1724;
			label$1725:;
			{
				FBSTRING* vr$376 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$376, -1ll, 0 );
			}
			label$1724:;
		}
		goto label$1684;
		label$1721:;
		{
			FBSTRING TMP$2083$3;
			FBSTRING TMP$2086$3;
			FBSTRING TMP$2087$3;
			__builtin_memset( &TMP$2083$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2083$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2083$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2083$3 );
			__builtin_memset( &TMP$2086$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2086$3, -1ll, (void*)"FOUND AN ERROR : store 02 ??", 29ll, 0 );
			HWRITEASM64( &TMP$2086$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2086$3 );
			__builtin_memset( &TMP$2087$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2087$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2087$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2087$3 );
		}
		label$1726:;
		label$1684:;
	}
	int32 vr$391 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$391 == 0ll ) goto label$1728;
	{
		EMITOP3_OP4( &OP4$1 );
		label$1728:;
	}
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1729;
	TMP$2088$1 = 24ll;
	goto label$3015;
	label$1729:;
	TMP$2088$1 = V1DTYPE$1 & 31ll;
	label$3015:;
	if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2088$1 * 56ll)) != 1ll ) goto label$1731;
	{
		int64 TMP$2089$2;
		if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1732;
		TMP$2089$2 = 24ll;
		goto label$3016;
		label$1732:;
		TMP$2089$2 = V2DTYPE$1 & 31ll;
		label$3016:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2089$2 * 56ll)) != 1ll ) goto label$1734;
		{
			if( V1DTYPE$1 != 16ll ) goto label$1736;
			{
				FBSTRING TMP$2094$4;
				FBSTRING TMP$2095$4;
				FBSTRING TMP$2096$4;
				FBSTRING TMP$2097$4;
				FBSTRING TMP$2098$4;
				if( *(int64*)V2$1 != 4ll ) goto label$1738;
				{
					FBSTRING TMP$2090$5;
					FBSTRING TMP$2091$5;
					__builtin_memset( &TMP$2091$5, 0, 24ll );
					__builtin_memset( &TMP$2090$5, 0, 24ll );
					FBSTRING* vr$405 = fb_StrConcat( &TMP$2090$5, (void*)"movd xmm0, ", 12ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2091$5, -1ll, (void*)vr$405, -1ll, 0 );
					HWRITEASM64( &TMP$2091$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2091$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"xmm0", 5ll, 0 );
				}
				label$1738:;
				label$1737:;
				__builtin_memset( &TMP$2095$4, 0, 24ll );
				__builtin_memset( &TMP$2094$4, 0, 24ll );
				FBSTRING* vr$414 = fb_StrConcat( &TMP$2094$4, (void*)"cvtss2sd xmm0, ", 16ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2095$4, -1ll, (void*)vr$414, -1ll, 0 );
				HWRITEASM64( &TMP$2095$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2095$4 );
				__builtin_memset( &TMP$2098$4, 0, 24ll );
				__builtin_memset( &TMP$2096$4, 0, 24ll );
				FBSTRING* vr$422 = fb_StrConcat( &TMP$2096$4, (void*)"movq ", 6ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2097$4, 0, 24ll );
				FBSTRING* vr$425 = fb_StrConcat( &TMP$2097$4, (void*)vr$422, -1ll, (void*)", xmm0", 7ll );
				fb_StrAssign( (void*)&TMP$2098$4, -1ll, (void*)vr$425, -1ll, 0 );
				HWRITEASM64( &TMP$2098$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2098$4 );
			}
			goto label$1735;
			label$1736:;
			{
				FBSTRING TMP$2104$4;
				FBSTRING TMP$2105$4;
				FBSTRING TMP$2106$4;
				FBSTRING TMP$2107$4;
				FBSTRING TMP$2108$4;
				if( *(int64*)V2$1 != 4ll ) goto label$1740;
				{
					FBSTRING TMP$2100$5;
					FBSTRING TMP$2101$5;
					__builtin_memset( &TMP$2101$5, 0, 24ll );
					__builtin_memset( &TMP$2100$5, 0, 24ll );
					FBSTRING* vr$434 = fb_StrConcat( &TMP$2100$5, (void*)"movq xmm1, ", 12ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2101$5, -1ll, (void*)vr$434, -1ll, 0 );
					HWRITEASM64( &TMP$2101$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2101$5 );
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"xmm1", 5ll, 0 );
				}
				label$1740:;
				label$1739:;
				__builtin_memset( &TMP$2105$4, 0, 24ll );
				__builtin_memset( &TMP$2104$4, 0, 24ll );
				FBSTRING* vr$443 = fb_StrConcat( &TMP$2104$4, (void*)"cvtsd2ss xmm0, ", 16ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2105$4, -1ll, (void*)vr$443, -1ll, 0 );
				HWRITEASM64( &TMP$2105$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2105$4 );
				__builtin_memset( &TMP$2108$4, 0, 24ll );
				__builtin_memset( &TMP$2106$4, 0, 24ll );
				FBSTRING* vr$451 = fb_StrConcat( &TMP$2106$4, (void*)"movd ", 6ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2107$4, 0, 24ll );
				FBSTRING* vr$454 = fb_StrConcat( &TMP$2107$4, (void*)vr$451, -1ll, (void*)", xmm0", 7ll );
				fb_StrAssign( (void*)&TMP$2108$4, -1ll, (void*)vr$454, -1ll, 0 );
				HWRITEASM64( &TMP$2108$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2108$4 );
			}
			label$1735:;
		}
		goto label$1733;
		label$1734:;
		{
			FBSTRING TMP$2110$3;
			__builtin_memset( &TMP$2110$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2110$3, -1ll, (void*)"pxor xmm0,xmm0", 15ll, 0 );
			HWRITEASM64( &TMP$2110$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2110$3 );
			{
				if( V2DTYPE$1 != 14ll ) goto label$1742;
				label$1743:;
				{
					if( V1DTYPE$1 != 16ll ) goto label$1745;
					{
						FBSTRING TMP$2111$6;
						FBSTRING TMP$2112$6;
						FBSTRING TMP$2114$6;
						FBSTRING TMP$2116$6;
						FBSTRING TMP$2117$6;
						FBSTRING TMP$2119$6;
						FBSTRING TMP$2120$6;
						FBSTRING TMP$2121$6;
						FBSTRING TMP$2122$6;
						FBSTRING TMP$2123$6;
						FBSTRING TMP$2124$6;
						FBSTRING TMP$2125$6;
						FBSTRING TMP$2126$6;
						FBSTRING TMP$2127$6;
						FBSTRING TMP$2128$6;
						FBSTRING TMP$2130$6;
						FBSTRING TMP$2131$6;
						FBSTRING TMP$2132$6;
						FBSTRING TMP$2133$6;
						FBSTRING TMP$2135$6;
						FBSTRING TMP$2136$6;
						FBSTRING TMP$2138$6;
						FBSTRING TMP$2139$6;
						FBSTRING TMP$2140$6;
						FBSTRING TMP$2141$6;
						FBSTRING TMP$2142$6;
						FBSTRING TMP$2143$6;
						__builtin_memset( &TMP$2112$6, 0, 24ll );
						__builtin_memset( &TMP$2111$6, 0, 24ll );
						FBSTRING* vr$466 = fb_StrConcat( &TMP$2111$6, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2112$6, -1ll, (void*)vr$466, -1ll, 0 );
						HWRITEASM64( &TMP$2112$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2112$6 );
						__builtin_memset( &TMP$2114$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2114$6, -1ll, (void*)"test\x09rax, rax", 14ll, 0 );
						HWRITEASM64( &TMP$2114$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2114$6 );
						uint8* vr$474 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$474, 0ll, 0 );
						__builtin_memset( &TMP$2117$6, 0, 24ll );
						__builtin_memset( &TMP$2116$6, 0, 24ll );
						FBSTRING* vr$480 = fb_StrConcat( &TMP$2116$6, (void*)"js ", 4ll, (void*)&LNAME1$1, -1ll );
						fb_StrAssign( (void*)&TMP$2117$6, -1ll, (void*)vr$480, -1ll, 0 );
						HWRITEASM64( &TMP$2117$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2117$6 );
						__builtin_memset( &TMP$2119$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2119$6, -1ll, (void*)"cvtsi2sd xmm0, rax", 19ll, 0 );
						HWRITEASM64( &TMP$2119$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2119$6 );
						uint8* vr$488 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$488, 0ll, 0 );
						__builtin_memset( &TMP$2121$6, 0, 24ll );
						__builtin_memset( &TMP$2120$6, 0, 24ll );
						FBSTRING* vr$494 = fb_StrConcat( &TMP$2120$6, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2121$6, -1ll, (void*)vr$494, -1ll, 0 );
						HWRITEASM64( &TMP$2121$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2121$6 );
						__builtin_memset( &TMP$2123$6, 0, 24ll );
						__builtin_memset( &TMP$2122$6, 0, 24ll );
						FBSTRING* vr$502 = fb_StrConcat( &TMP$2122$6, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
						fb_StrAssign( (void*)&TMP$2123$6, -1ll, (void*)vr$502, -1ll, 0 );
						HWRITEASM64( &TMP$2123$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2123$6 );
						int32 vr$506 = REG_FINDFREE( 999999, -1ll );
						REG$1 = vr$506;
						fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REG$1 << (3ll & 63ll))), 0ll, 0 );
						*(int32*)((uint8*)REGHANDLE$ + ((int64)REG$1 << (2ll & 63ll))) = -2;
						__builtin_memset( &TMP$2126$6, 0, 24ll );
						__builtin_memset( &TMP$2124$6, 0, 24ll );
						FBSTRING* vr$516 = fb_StrConcat( &TMP$2124$6, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2125$6, 0, 24ll );
						FBSTRING* vr$519 = fb_StrConcat( &TMP$2125$6, (void*)vr$516, -1ll, (void*)", rax", 6ll );
						fb_StrAssign( (void*)&TMP$2126$6, -1ll, (void*)vr$519, -1ll, 0 );
						HWRITEASM64( &TMP$2126$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2126$6 );
						__builtin_memset( &TMP$2128$6, 0, 24ll );
						__builtin_memset( &TMP$2127$6, 0, 24ll );
						FBSTRING* vr$527 = fb_StrConcat( &TMP$2127$6, (void*)"shr ", 5ll, (void*)&REGTEMPO$1, -1ll );
						fb_StrAssign( (void*)&TMP$2128$6, -1ll, (void*)vr$527, -1ll, 0 );
						HWRITEASM64( &TMP$2128$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2128$6 );
						__builtin_memset( &TMP$2130$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2130$6, -1ll, (void*)"and eax, 1", 11ll, 0 );
						HWRITEASM64( &TMP$2130$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2130$6 );
						__builtin_memset( &TMP$2133$6, 0, 24ll );
						__builtin_memset( &TMP$2131$6, 0, 24ll );
						FBSTRING* vr$539 = fb_StrConcat( &TMP$2131$6, (void*)"or ", 4ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2132$6, 0, 24ll );
						FBSTRING* vr$542 = fb_StrConcat( &TMP$2132$6, (void*)vr$539, -1ll, (void*)", rax", 6ll );
						fb_StrAssign( (void*)&TMP$2133$6, -1ll, (void*)vr$542, -1ll, 0 );
						HWRITEASM64( &TMP$2133$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2133$6 );
						__builtin_memset( &TMP$2136$6, 0, 24ll );
						__builtin_memset( &TMP$2135$6, 0, 24ll );
						FBSTRING* vr$550 = fb_StrConcat( &TMP$2135$6, (void*)"cvtsi2sd xmm0, ", 16ll, (void*)&REGTEMPO$1, -1ll );
						fb_StrAssign( (void*)&TMP$2136$6, -1ll, (void*)vr$550, -1ll, 0 );
						HWRITEASM64( &TMP$2136$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2136$6 );
						__builtin_memset( &TMP$2138$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2138$6, -1ll, (void*)"addsd xmm0, xmm0", 17ll, 0 );
						HWRITEASM64( &TMP$2138$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2138$6 );
						__builtin_memset( &TMP$2140$6, 0, 24ll );
						__builtin_memset( &TMP$2139$6, 0, 24ll );
						FBSTRING* vr$562 = fb_StrConcat( &TMP$2139$6, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
						fb_StrAssign( (void*)&TMP$2140$6, -1ll, (void*)vr$562, -1ll, 0 );
						HWRITEASM64( &TMP$2140$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2140$6 );
						__builtin_memset( &TMP$2143$6, 0, 24ll );
						__builtin_memset( &TMP$2141$6, 0, 24ll );
						FBSTRING* vr$570 = fb_StrConcat( &TMP$2141$6, (void*)"movq ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2142$6, 0, 24ll );
						FBSTRING* vr$573 = fb_StrConcat( &TMP$2142$6, (void*)vr$570, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2143$6, -1ll, (void*)vr$573, -1ll, 0 );
						HWRITEASM64( &TMP$2143$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2143$6 );
					}
					goto label$1744;
					label$1745:;
					{
						FBSTRING TMP$2144$6;
						FBSTRING TMP$2145$6;
						FBSTRING TMP$2147$6;
						FBSTRING TMP$2148$6;
						FBSTRING TMP$2149$6;
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
						FBSTRING TMP$2164$6;
						FBSTRING TMP$2166$6;
						FBSTRING TMP$2167$6;
						FBSTRING TMP$2169$6;
						FBSTRING TMP$2170$6;
						FBSTRING TMP$2171$6;
						FBSTRING TMP$2172$6;
						FBSTRING TMP$2173$6;
						FBSTRING TMP$2174$6;
						__builtin_memset( &TMP$2145$6, 0, 24ll );
						__builtin_memset( &TMP$2144$6, 0, 24ll );
						FBSTRING* vr$581 = fb_StrConcat( &TMP$2144$6, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2145$6, -1ll, (void*)vr$581, -1ll, 0 );
						HWRITEASM64( &TMP$2145$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2145$6 );
						__builtin_memset( &TMP$2147$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2147$6, -1ll, (void*)"test rax, rax", 14ll, 0 );
						HWRITEASM64( &TMP$2147$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2147$6 );
						uint8* vr$589 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$589, 0ll, 0 );
						__builtin_memset( &TMP$2149$6, 0, 24ll );
						__builtin_memset( &TMP$2148$6, 0, 24ll );
						FBSTRING* vr$595 = fb_StrConcat( &TMP$2148$6, (void*)"js ", 4ll, (void*)&LNAME1$1, -1ll );
						fb_StrAssign( (void*)&TMP$2149$6, -1ll, (void*)vr$595, -1ll, 0 );
						HWRITEASM64( &TMP$2149$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2149$6 );
						__builtin_memset( &TMP$2151$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2151$6, -1ll, (void*)"cvtsi2ss\x09xmm0, rax", 19ll, 0 );
						HWRITEASM64( &TMP$2151$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2151$6 );
						uint8* vr$603 = SYMBUNIQUELABEL(  );
						fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$603, 0ll, 0 );
						__builtin_memset( &TMP$2153$6, 0, 24ll );
						__builtin_memset( &TMP$2152$6, 0, 24ll );
						FBSTRING* vr$609 = fb_StrConcat( &TMP$2152$6, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2153$6, -1ll, (void*)vr$609, -1ll, 0 );
						HWRITEASM64( &TMP$2153$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2153$6 );
						__builtin_memset( &TMP$2155$6, 0, 24ll );
						__builtin_memset( &TMP$2154$6, 0, 24ll );
						FBSTRING* vr$617 = fb_StrConcat( &TMP$2154$6, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
						fb_StrAssign( (void*)&TMP$2155$6, -1ll, (void*)vr$617, -1ll, 0 );
						HWRITEASM64( &TMP$2155$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2155$6 );
						int32 vr$621 = REG_FINDFREE( 999999, -1ll );
						REG$1 = vr$621;
						fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REG$1 << (3ll & 63ll))), 0ll, 0 );
						*(int32*)((uint8*)REGHANDLE$ + ((int64)REG$1 << (2ll & 63ll))) = -2;
						__builtin_memset( &TMP$2158$6, 0, 24ll );
						__builtin_memset( &TMP$2156$6, 0, 24ll );
						FBSTRING* vr$631 = fb_StrConcat( &TMP$2156$6, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2157$6, 0, 24ll );
						FBSTRING* vr$634 = fb_StrConcat( &TMP$2157$6, (void*)vr$631, -1ll, (void*)", rax", 6ll );
						fb_StrAssign( (void*)&TMP$2158$6, -1ll, (void*)vr$634, -1ll, 0 );
						HWRITEASM64( &TMP$2158$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2158$6 );
						__builtin_memset( &TMP$2160$6, 0, 24ll );
						__builtin_memset( &TMP$2159$6, 0, 24ll );
						FBSTRING* vr$642 = fb_StrConcat( &TMP$2159$6, (void*)"shr ", 5ll, (void*)&REGTEMPO$1, -1ll );
						fb_StrAssign( (void*)&TMP$2160$6, -1ll, (void*)vr$642, -1ll, 0 );
						HWRITEASM64( &TMP$2160$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2160$6 );
						__builtin_memset( &TMP$2161$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2161$6, -1ll, (void*)"and eax, 1", 11ll, 0 );
						HWRITEASM64( &TMP$2161$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2161$6 );
						__builtin_memset( &TMP$2164$6, 0, 24ll );
						__builtin_memset( &TMP$2162$6, 0, 24ll );
						FBSTRING* vr$654 = fb_StrConcat( &TMP$2162$6, (void*)"or ", 4ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2163$6, 0, 24ll );
						FBSTRING* vr$657 = fb_StrConcat( &TMP$2163$6, (void*)vr$654, -1ll, (void*)", rax", 6ll );
						fb_StrAssign( (void*)&TMP$2164$6, -1ll, (void*)vr$657, -1ll, 0 );
						HWRITEASM64( &TMP$2164$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2164$6 );
						__builtin_memset( &TMP$2167$6, 0, 24ll );
						__builtin_memset( &TMP$2166$6, 0, 24ll );
						FBSTRING* vr$665 = fb_StrConcat( &TMP$2166$6, (void*)"cvtsi2ss xmm0, ", 16ll, (void*)&REGTEMPO$1, -1ll );
						fb_StrAssign( (void*)&TMP$2167$6, -1ll, (void*)vr$665, -1ll, 0 );
						HWRITEASM64( &TMP$2167$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2167$6 );
						__builtin_memset( &TMP$2169$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2169$6, -1ll, (void*)"addss xmm0, xmm0", 17ll, 0 );
						HWRITEASM64( &TMP$2169$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2169$6 );
						__builtin_memset( &TMP$2171$6, 0, 24ll );
						__builtin_memset( &TMP$2170$6, 0, 24ll );
						FBSTRING* vr$677 = fb_StrConcat( &TMP$2170$6, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
						fb_StrAssign( (void*)&TMP$2171$6, -1ll, (void*)vr$677, -1ll, 0 );
						HWRITEASM64( &TMP$2171$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2171$6 );
						__builtin_memset( &TMP$2174$6, 0, 24ll );
						__builtin_memset( &TMP$2172$6, 0, 24ll );
						FBSTRING* vr$685 = fb_StrConcat( &TMP$2172$6, (void*)"movd ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2173$6, 0, 24ll );
						FBSTRING* vr$688 = fb_StrConcat( &TMP$2173$6, (void*)vr$685, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2174$6, -1ll, (void*)vr$688, -1ll, 0 );
						HWRITEASM64( &TMP$2174$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2174$6 );
					}
					label$1744:;
				}
				goto label$1741;
				label$1742:;
				if( V2DTYPE$1 != 13ll ) goto label$1746;
				label$1747:;
				{
					if( V1DTYPE$1 != 16ll ) goto label$1749;
					{
						FBSTRING TMP$2175$6;
						FBSTRING TMP$2176$6;
						FBSTRING TMP$2177$6;
						FBSTRING TMP$2178$6;
						FBSTRING TMP$2179$6;
						FBSTRING TMP$2180$6;
						__builtin_memset( &TMP$2177$6, 0, 24ll );
						__builtin_memset( &TMP$2175$6, 0, 24ll );
						FBSTRING* vr$697 = fb_StrConcat( &TMP$2175$6, (void*)"cvtsi2sd xmm0, ", 16ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2176$6, 0, 24ll );
						FBSTRING* vr$700 = fb_StrConcat( &TMP$2176$6, (void*)vr$697, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2177$6, -1ll, (void*)vr$700, -1ll, 0 );
						HWRITEASM64( &TMP$2177$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2177$6 );
						__builtin_memset( &TMP$2180$6, 0, 24ll );
						__builtin_memset( &TMP$2178$6, 0, 24ll );
						FBSTRING* vr$708 = fb_StrConcat( &TMP$2178$6, (void*)"movq ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2179$6, 0, 24ll );
						FBSTRING* vr$711 = fb_StrConcat( &TMP$2179$6, (void*)vr$708, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2180$6, -1ll, (void*)vr$711, -1ll, 0 );
						HWRITEASM64( &TMP$2180$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2180$6 );
					}
					goto label$1748;
					label$1749:;
					{
						FBSTRING TMP$2181$6;
						FBSTRING TMP$2182$6;
						FBSTRING TMP$2183$6;
						FBSTRING TMP$2184$6;
						FBSTRING TMP$2185$6;
						FBSTRING TMP$2186$6;
						__builtin_memset( &TMP$2183$6, 0, 24ll );
						__builtin_memset( &TMP$2181$6, 0, 24ll );
						FBSTRING* vr$720 = fb_StrConcat( &TMP$2181$6, (void*)"cvtsi2ss xmm0, ", 16ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2182$6, 0, 24ll );
						FBSTRING* vr$723 = fb_StrConcat( &TMP$2182$6, (void*)vr$720, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2183$6, -1ll, (void*)vr$723, -1ll, 0 );
						HWRITEASM64( &TMP$2183$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2183$6 );
						__builtin_memset( &TMP$2186$6, 0, 24ll );
						__builtin_memset( &TMP$2184$6, 0, 24ll );
						FBSTRING* vr$731 = fb_StrConcat( &TMP$2184$6, (void*)"movd ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2185$6, 0, 24ll );
						FBSTRING* vr$734 = fb_StrConcat( &TMP$2185$6, (void*)vr$731, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2186$6, -1ll, (void*)vr$734, -1ll, 0 );
						HWRITEASM64( &TMP$2186$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2186$6 );
					}
					label$1748:;
				}
				goto label$1741;
				label$1746:;
				if( V2DTYPE$1 == 11ll ) goto label$1751;
				label$1752:;
				if( V2DTYPE$1 != 12ll ) goto label$1750;
				label$1751:;
				{
					if( V1DTYPE$1 != 16ll ) goto label$1754;
					{
						FBSTRING TMP$2187$6;
						FBSTRING TMP$2188$6;
						FBSTRING TMP$2189$6;
						FBSTRING TMP$2190$6;
						FBSTRING TMP$2191$6;
						FBSTRING TMP$2192$6;
						__builtin_memset( &TMP$2189$6, 0, 24ll );
						__builtin_memset( &TMP$2187$6, 0, 24ll );
						FBSTRING* vr$743 = fb_StrConcat( &TMP$2187$6, (void*)"cvtsi2sd xmm0, ", 16ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2188$6, 0, 24ll );
						FBSTRING* vr$746 = fb_StrConcat( &TMP$2188$6, (void*)vr$743, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2189$6, -1ll, (void*)vr$746, -1ll, 0 );
						HWRITEASM64( &TMP$2189$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2189$6 );
						__builtin_memset( &TMP$2192$6, 0, 24ll );
						__builtin_memset( &TMP$2190$6, 0, 24ll );
						FBSTRING* vr$754 = fb_StrConcat( &TMP$2190$6, (void*)"movq ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2191$6, 0, 24ll );
						FBSTRING* vr$757 = fb_StrConcat( &TMP$2191$6, (void*)vr$754, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2192$6, -1ll, (void*)vr$757, -1ll, 0 );
						HWRITEASM64( &TMP$2192$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2192$6 );
					}
					goto label$1753;
					label$1754:;
					{
						FBSTRING TMP$2193$6;
						FBSTRING TMP$2194$6;
						FBSTRING TMP$2195$6;
						FBSTRING TMP$2196$6;
						FBSTRING TMP$2197$6;
						FBSTRING TMP$2198$6;
						__builtin_memset( &TMP$2195$6, 0, 24ll );
						__builtin_memset( &TMP$2193$6, 0, 24ll );
						FBSTRING* vr$766 = fb_StrConcat( &TMP$2193$6, (void*)"cvtsi2ss xmm0, ", 16ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2194$6, 0, 24ll );
						FBSTRING* vr$769 = fb_StrConcat( &TMP$2194$6, (void*)vr$766, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2195$6, -1ll, (void*)vr$769, -1ll, 0 );
						HWRITEASM64( &TMP$2195$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2195$6 );
						__builtin_memset( &TMP$2198$6, 0, 24ll );
						__builtin_memset( &TMP$2196$6, 0, 24ll );
						FBSTRING* vr$777 = fb_StrConcat( &TMP$2196$6, (void*)"movd ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2197$6, 0, 24ll );
						FBSTRING* vr$780 = fb_StrConcat( &TMP$2197$6, (void*)vr$777, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2198$6, -1ll, (void*)vr$780, -1ll, 0 );
						HWRITEASM64( &TMP$2198$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2198$6 );
					}
					label$1753:;
				}
				goto label$1741;
				label$1750:;
				if( V2DTYPE$1 == 2ll ) goto label$1756;
				label$1757:;
				if( V2DTYPE$1 == 5ll ) goto label$1756;
				label$1758:;
				if( V2DTYPE$1 == 3ll ) goto label$1756;
				label$1759:;
				if( V2DTYPE$1 == 6ll ) goto label$1756;
				label$1760:;
				if( V2DTYPE$1 == 1ll ) goto label$1756;
				label$1761:;
				if( V2DTYPE$1 != 4ll ) goto label$1755;
				label$1756:;
				{
					if( ((int64)-(V2DTYPE$1 == 2ll) | (int64)-(V2DTYPE$1 == 5ll)) == 0ll ) goto label$1763;
					{
						FBSTRING TMP$2200$6;
						FBSTRING TMP$2201$6;
						FBSTRING TMP$2202$6;
						__builtin_memset( &TMP$2202$6, 0, 24ll );
						__builtin_memset( &TMP$2200$6, 0, 24ll );
						FBSTRING* vr$792 = fb_StrConcat( &TMP$2200$6, (void*)"movsx eax, ", 12ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2201$6, 0, 24ll );
						FBSTRING* vr$795 = fb_StrConcat( &TMP$2201$6, (void*)vr$792, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2202$6, -1ll, (void*)vr$795, -1ll, 0 );
						HWRITEASM64( &TMP$2202$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2202$6 );
					}
					goto label$1762;
					label$1763:;
					if( V2DTYPE$1 != 1ll ) goto label$1764;
					{
						FBSTRING TMP$2204$6;
						FBSTRING TMP$2205$6;
						FBSTRING TMP$2206$6;
						FBSTRING TMP$2207$6;
						FBSTRING TMP$2209$6;
						FBSTRING TMP$2211$6;
						FBSTRING TMP$2213$6;
						__builtin_memset( &TMP$2207$6, 0, 24ll );
						__builtin_memset( &TMP$2204$6, 0, 24ll );
						FBSTRING* vr$804 = fb_StrConcat( &TMP$2204$6, (void*)"cmp ", 5ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2205$6, 0, 24ll );
						FBSTRING* vr$807 = fb_StrConcat( &TMP$2205$6, (void*)vr$804, -1ll, (void*)&OP2$1, -1ll );
						__builtin_memset( &TMP$2206$6, 0, 24ll );
						FBSTRING* vr$810 = fb_StrConcat( &TMP$2206$6, (void*)vr$807, -1ll, (void*)", 0", 4ll );
						fb_StrAssign( (void*)&TMP$2207$6, -1ll, (void*)vr$810, -1ll, 0 );
						HWRITEASM64( &TMP$2207$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2207$6 );
						__builtin_memset( &TMP$2209$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2209$6, -1ll, (void*)"setne al", 9ll, 0 );
						HWRITEASM64( &TMP$2209$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2209$6 );
						__builtin_memset( &TMP$2211$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2211$6, -1ll, (void*)"neg al", 7ll, 0 );
						HWRITEASM64( &TMP$2211$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2211$6 );
						__builtin_memset( &TMP$2213$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2213$6, -1ll, (void*)"movsx eax, al", 14ll, 0 );
						HWRITEASM64( &TMP$2213$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2213$6 );
					}
					goto label$1762;
					label$1764:;
					{
						FBSTRING TMP$2215$6;
						FBSTRING TMP$2216$6;
						FBSTRING TMP$2217$6;
						__builtin_memset( &TMP$2217$6, 0, 24ll );
						__builtin_memset( &TMP$2215$6, 0, 24ll );
						FBSTRING* vr$831 = fb_StrConcat( &TMP$2215$6, (void*)"movzx eax, ", 12ll, (void*)&PREFIX2$1, -1ll );
						__builtin_memset( &TMP$2216$6, 0, 24ll );
						FBSTRING* vr$834 = fb_StrConcat( &TMP$2216$6, (void*)vr$831, -1ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$2217$6, -1ll, (void*)vr$834, -1ll, 0 );
						HWRITEASM64( &TMP$2217$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2217$6 );
					}
					label$1762:;
					if( V1DTYPE$1 != 16ll ) goto label$1766;
					{
						FBSTRING TMP$2219$6;
						FBSTRING TMP$2220$6;
						FBSTRING TMP$2221$6;
						FBSTRING TMP$2222$6;
						__builtin_memset( &TMP$2219$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2219$6, -1ll, (void*)"cvtsi2sd xmm0, eax", 19ll, 0 );
						HWRITEASM64( &TMP$2219$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2219$6 );
						__builtin_memset( &TMP$2222$6, 0, 24ll );
						__builtin_memset( &TMP$2220$6, 0, 24ll );
						FBSTRING* vr$846 = fb_StrConcat( &TMP$2220$6, (void*)"movq ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2221$6, 0, 24ll );
						FBSTRING* vr$849 = fb_StrConcat( &TMP$2221$6, (void*)vr$846, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2222$6, -1ll, (void*)vr$849, -1ll, 0 );
						HWRITEASM64( &TMP$2222$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2222$6 );
					}
					goto label$1765;
					label$1766:;
					{
						FBSTRING TMP$2224$6;
						FBSTRING TMP$2225$6;
						FBSTRING TMP$2226$6;
						FBSTRING TMP$2227$6;
						__builtin_memset( &TMP$2224$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2224$6, -1ll, (void*)"cvtsi2ss xmm0, eax", 19ll, 0 );
						HWRITEASM64( &TMP$2224$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2224$6 );
						__builtin_memset( &TMP$2227$6, 0, 24ll );
						__builtin_memset( &TMP$2225$6, 0, 24ll );
						FBSTRING* vr$861 = fb_StrConcat( &TMP$2225$6, (void*)"movd ", 6ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$2226$6, 0, 24ll );
						FBSTRING* vr$864 = fb_StrConcat( &TMP$2226$6, (void*)vr$861, -1ll, (void*)", xmm0", 7ll );
						fb_StrAssign( (void*)&TMP$2227$6, -1ll, (void*)vr$864, -1ll, 0 );
						HWRITEASM64( &TMP$2227$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2227$6 );
					}
					label$1765:;
				}
				goto label$1741;
				label$1755:;
				{
					FBSTRING TMP$2228$5;
					FBSTRING TMP$2231$5;
					FBSTRING TMP$2232$5;
					__builtin_memset( &TMP$2228$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2228$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2228$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2228$5 );
					__builtin_memset( &TMP$2231$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2231$5, -1ll, (void*)"FOUND AN ERROR : Converting datatype not handled 04", 52ll, 0 );
					HWRITEASM64( &TMP$2231$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2231$5 );
					__builtin_memset( &TMP$2232$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2232$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2232$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2232$5 );
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
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1768;
	TMP$2233$1 = 24ll;
	goto label$3017;
	label$1768:;
	TMP$2233$1 = V2DTYPE$1 & 31ll;
	label$3017:;
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1769;
	TMP$2234$1 = 24ll;
	goto label$3018;
	label$1769:;
	TMP$2234$1 = V1DTYPE$1 & 31ll;
	label$3018:;
	if( ((int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2233$1 * 56ll)) == 1ll) & (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2234$1 * 56ll)) == 0ll)) == 0ll ) goto label$1771;
	{
		if( V2DTYPE$1 != 16ll ) goto label$1773;
		{
			if( V1DTYPE$1 != 14ll ) goto label$1775;
			{
				FBSTRING TMP$2236$4;
				FBSTRING TMP$2238$4;
				FBSTRING TMP$2239$4;
				FBSTRING TMP$2240$4;
				FBSTRING TMP$2242$4;
				FBSTRING TMP$2244$4;
				FBSTRING TMP$2246$4;
				FBSTRING TMP$2247$4;
				FBSTRING TMP$2248$4;
				FBSTRING TMP$2249$4;
				FBSTRING TMP$2250$4;
				FBSTRING TMP$2251$4;
				FBSTRING TMP$2252$4;
				FBSTRING TMP$2254$4;
				FBSTRING TMP$2256$4;
				FBSTRING TMP$2257$4;
				FBSTRING TMP$2260$4;
				FBSTRING TMP$2261$4;
				FBSTRING TMP$2262$4;
				FBSTRING TMP$2264$4;
				FBSTRING TMP$2265$4;
				FBSTRING TMP$2266$4;
				FBSTRING TMP$2267$4;
				FBSTRING TMP$2268$4;
				FBSTRING TMP$2269$4;
				FBSTRING TMP$2270$4;
				__builtin_memset( &TMP$2236$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2236$4, -1ll, (void*)"mov rax, 4890909195324358656", 29ll, 0 );
				HWRITEASM64( &TMP$2236$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2236$4 );
				__builtin_memset( &TMP$2238$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2238$4, -1ll, (void*)"movq xmm2, rax", 15ll, 0 );
				HWRITEASM64( &TMP$2238$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2238$4 );
				__builtin_memset( &TMP$2240$4, 0, 24ll );
				__builtin_memset( &TMP$2239$4, 0, 24ll );
				FBSTRING* vr$910 = fb_StrConcat( &TMP$2239$4, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2240$4, -1ll, (void*)vr$910, -1ll, 0 );
				HWRITEASM64( &TMP$2240$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2240$4 );
				__builtin_memset( &TMP$2242$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2242$4, -1ll, (void*)"movq xmm0, rax", 15ll, 0 );
				HWRITEASM64( &TMP$2242$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2242$4 );
				HEMITROUNDFLOAT( 16ll, 14ll );
				__builtin_memset( &TMP$2244$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2244$4, -1ll, (void*)"ucomisd xmm0, xmm2", 19ll, 0 );
				HWRITEASM64( &TMP$2244$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2244$4 );
				uint8* vr$922 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$922, 0ll, 0 );
				__builtin_memset( &TMP$2247$4, 0, 24ll );
				__builtin_memset( &TMP$2246$4, 0, 24ll );
				FBSTRING* vr$928 = fb_StrConcat( &TMP$2246$4, (void*)"jnb ", 5ll, (void*)&LNAME1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2247$4, -1ll, (void*)vr$928, -1ll, 0 );
				HWRITEASM64( &TMP$2247$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2247$4 );
				__builtin_memset( &TMP$2248$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2248$4, -1ll, (void*)"cvttsd2si rax, xmm0", 20ll, 0 );
				HWRITEASM64( &TMP$2248$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2248$4 );
				uint8* vr$936 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$936, 0ll, 0 );
				__builtin_memset( &TMP$2250$4, 0, 24ll );
				__builtin_memset( &TMP$2249$4, 0, 24ll );
				FBSTRING* vr$942 = fb_StrConcat( &TMP$2249$4, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2250$4, -1ll, (void*)vr$942, -1ll, 0 );
				HWRITEASM64( &TMP$2250$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2250$4 );
				__builtin_memset( &TMP$2252$4, 0, 24ll );
				__builtin_memset( &TMP$2251$4, 0, 24ll );
				FBSTRING* vr$950 = fb_StrConcat( &TMP$2251$4, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$2252$4, -1ll, (void*)vr$950, -1ll, 0 );
				HWRITEASM64( &TMP$2252$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2252$4 );
				__builtin_memset( &TMP$2254$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2254$4, -1ll, (void*)"movsd\x09xmm1, xmm2", 17ll, 0 );
				HWRITEASM64( &TMP$2254$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2254$4 );
				__builtin_memset( &TMP$2256$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2256$4, -1ll, (void*)"subsd\x09xmm0, xmm1", 17ll, 0 );
				HWRITEASM64( &TMP$2256$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2256$4 );
				__builtin_memset( &TMP$2257$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2257$4, -1ll, (void*)"cvttsd2si rax, xmm0", 20ll, 0 );
				HWRITEASM64( &TMP$2257$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2257$4 );
				int32 vr$966 = REG_FINDFREE( 999999, -1ll );
				REG$1 = vr$966;
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REG$1 << (3ll & 63ll))), 0ll, 0 );
				*(int32*)((uint8*)REGHANDLE$ + ((int64)REG$1 << (2ll & 63ll))) = -2;
				__builtin_memset( &TMP$2262$4, 0, 24ll );
				__builtin_memset( &TMP$2260$4, 0, 24ll );
				FBSTRING* vr$976 = fb_StrConcat( &TMP$2260$4, (void*)"movabs ", 8ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$2261$4, 0, 24ll );
				FBSTRING* vr$979 = fb_StrConcat( &TMP$2261$4, (void*)vr$976, -1ll, (void*)", -9223372036854775808", 23ll );
				fb_StrAssign( (void*)&TMP$2262$4, -1ll, (void*)vr$979, -1ll, 0 );
				HWRITEASM64( &TMP$2262$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2262$4 );
				__builtin_memset( &TMP$2265$4, 0, 24ll );
				__builtin_memset( &TMP$2264$4, 0, 24ll );
				FBSTRING* vr$987 = fb_StrConcat( &TMP$2264$4, (void*)"xor rax,", 9ll, (void*)&REGTEMPO$1, -1ll );
				fb_StrAssign( (void*)&TMP$2265$4, -1ll, (void*)vr$987, -1ll, 0 );
				HWRITEASM64( &TMP$2265$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2265$4 );
				__builtin_memset( &TMP$2267$4, 0, 24ll );
				__builtin_memset( &TMP$2266$4, 0, 24ll );
				FBSTRING* vr$995 = fb_StrConcat( &TMP$2266$4, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$2267$4, -1ll, (void*)vr$995, -1ll, 0 );
				HWRITEASM64( &TMP$2267$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2267$4 );
				__builtin_memset( &TMP$2270$4, 0, 24ll );
				__builtin_memset( &TMP$2268$4, 0, 24ll );
				FBSTRING* vr$1003 = fb_StrConcat( &TMP$2268$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2269$4, 0, 24ll );
				FBSTRING* vr$1006 = fb_StrConcat( &TMP$2269$4, (void*)vr$1003, -1ll, (void*)", rax", 6ll );
				fb_StrAssign( (void*)&TMP$2270$4, -1ll, (void*)vr$1006, -1ll, 0 );
				HWRITEASM64( &TMP$2270$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2270$4 );
			}
			goto label$1774;
			label$1775:;
			if( (((((((((int64)-(V1DTYPE$1 == 13ll) | (int64)-(V1DTYPE$1 == 11ll)) | (int64)-(V1DTYPE$1 == 12ll)) | (int64)-(V1DTYPE$1 == 5ll)) | (int64)-(V1DTYPE$1 == 6ll)) | (int64)-(V1DTYPE$1 == 2ll)) | (int64)-(V1DTYPE$1 == 3ll)) | (int64)-(V1DTYPE$1 == 1ll)) | (int64)-(V1DTYPE$1 == 4ll)) == 0ll ) goto label$1776;
			{
				if( *(int64*)V2$1 != 4ll ) goto label$1778;
				{
					FBSTRING TMP$2271$5;
					FBSTRING TMP$2272$5;
					__builtin_memset( &TMP$2272$5, 0, 24ll );
					__builtin_memset( &TMP$2271$5, 0, 24ll );
					FBSTRING* vr$1032 = fb_StrConcat( &TMP$2271$5, (void*)"movq xmm0, ", 12ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2272$5, -1ll, (void*)vr$1032, -1ll, 0 );
					HWRITEASM64( &TMP$2272$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2272$5 );
				}
				goto label$1777;
				label$1778:;
				{
					FBSTRING TMP$2273$5;
					FBSTRING TMP$2274$5;
					__builtin_memset( &TMP$2274$5, 0, 24ll );
					__builtin_memset( &TMP$2273$5, 0, 24ll );
					FBSTRING* vr$1040 = fb_StrConcat( &TMP$2273$5, (void*)"movsd xmm0, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2274$5, -1ll, (void*)vr$1040, -1ll, 0 );
					HWRITEASM64( &TMP$2274$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2274$5 );
				}
				label$1777:;
				HEMITROUNDFLOAT( 16ll, 2147483648ll );
				if( V1DTYPE$1 != 13ll ) goto label$1780;
				{
					FBSTRING TMP$2275$5;
					FBSTRING TMP$2276$5;
					FBSTRING TMP$2277$5;
					__builtin_memset( &TMP$2277$5, 0, 24ll );
					__builtin_memset( &TMP$2275$5, 0, 24ll );
					FBSTRING* vr$1048 = fb_StrConcat( &TMP$2275$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2276$5, 0, 24ll );
					FBSTRING* vr$1051 = fb_StrConcat( &TMP$2276$5, (void*)vr$1048, -1ll, (void*)", rax", 6ll );
					fb_StrAssign( (void*)&TMP$2277$5, -1ll, (void*)vr$1051, -1ll, 0 );
					HWRITEASM64( &TMP$2277$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2277$5 );
				}
				goto label$1779;
				label$1780:;
				if( ((int64)-(V1DTYPE$1 == 11ll) | (int64)-(V1DTYPE$1 == 12ll)) == 0ll ) goto label$1781;
				{
					FBSTRING TMP$2278$5;
					FBSTRING TMP$2279$5;
					FBSTRING TMP$2280$5;
					__builtin_memset( &TMP$2280$5, 0, 24ll );
					__builtin_memset( &TMP$2278$5, 0, 24ll );
					FBSTRING* vr$1062 = fb_StrConcat( &TMP$2278$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2279$5, 0, 24ll );
					FBSTRING* vr$1065 = fb_StrConcat( &TMP$2279$5, (void*)vr$1062, -1ll, (void*)", eax", 6ll );
					fb_StrAssign( (void*)&TMP$2280$5, -1ll, (void*)vr$1065, -1ll, 0 );
					HWRITEASM64( &TMP$2280$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2280$5 );
				}
				goto label$1779;
				label$1781:;
				if( ((int64)-(V1DTYPE$1 == 5ll) | (int64)-(V1DTYPE$1 == 6ll)) == 0ll ) goto label$1782;
				{
					FBSTRING TMP$2282$5;
					FBSTRING TMP$2283$5;
					FBSTRING TMP$2284$5;
					__builtin_memset( &TMP$2284$5, 0, 24ll );
					__builtin_memset( &TMP$2282$5, 0, 24ll );
					FBSTRING* vr$1076 = fb_StrConcat( &TMP$2282$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2283$5, 0, 24ll );
					FBSTRING* vr$1079 = fb_StrConcat( &TMP$2283$5, (void*)vr$1076, -1ll, (void*)", ax", 5ll );
					fb_StrAssign( (void*)&TMP$2284$5, -1ll, (void*)vr$1079, -1ll, 0 );
					HWRITEASM64( &TMP$2284$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2284$5 );
				}
				goto label$1779;
				label$1782:;
				{
					FBSTRING TMP$2288$5;
					FBSTRING TMP$2289$5;
					FBSTRING TMP$2290$5;
					if( V1DTYPE$1 != 1ll ) goto label$1784;
					{
						FBSTRING TMP$2286$6;
						FBSTRING TMP$2287$6;
						__builtin_memset( &TMP$2286$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2286$6, -1ll, (void*)"cmp rax, 0", 11ll, 0 );
						HWRITEASM64( &TMP$2286$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2286$6 );
						__builtin_memset( &TMP$2287$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2287$6, -1ll, (void*)"setne al", 9ll, 0 );
						HWRITEASM64( &TMP$2287$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2287$6 );
					}
					label$1784:;
					label$1783:;
					__builtin_memset( &TMP$2290$5, 0, 24ll );
					__builtin_memset( &TMP$2288$5, 0, 24ll );
					FBSTRING* vr$1095 = fb_StrConcat( &TMP$2288$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2289$5, 0, 24ll );
					FBSTRING* vr$1098 = fb_StrConcat( &TMP$2289$5, (void*)vr$1095, -1ll, (void*)", al", 5ll );
					fb_StrAssign( (void*)&TMP$2290$5, -1ll, (void*)vr$1098, -1ll, 0 );
					HWRITEASM64( &TMP$2290$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2290$5 );
				}
				label$1779:;
			}
			goto label$1774;
			label$1776:;
			{
				FBSTRING TMP$2291$4;
				FBSTRING TMP$2294$4;
				FBSTRING TMP$2295$4;
				__builtin_memset( &TMP$2291$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2291$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2291$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2291$4 );
				__builtin_memset( &TMP$2294$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2294$4, -1ll, (void*)"FOUND AN ERROR : Converting float to int 01", 44ll, 0 );
				HWRITEASM64( &TMP$2294$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2294$4 );
				__builtin_memset( &TMP$2295$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2295$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2295$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2295$4 );
			}
			label$1774:;
		}
		goto label$1772;
		label$1773:;
		{
			if( V1DTYPE$1 != 14ll ) goto label$1786;
			{
				FBSTRING TMP$2297$4;
				FBSTRING TMP$2298$4;
				FBSTRING TMP$2299$4;
				FBSTRING TMP$2300$4;
				FBSTRING TMP$2302$4;
				FBSTRING TMP$2304$4;
				FBSTRING TMP$2305$4;
				FBSTRING TMP$2306$4;
				FBSTRING TMP$2307$4;
				FBSTRING TMP$2308$4;
				FBSTRING TMP$2309$4;
				FBSTRING TMP$2310$4;
				FBSTRING TMP$2311$4;
				FBSTRING TMP$2313$4;
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
				FBSTRING TMP$2326$4;
				__builtin_memset( &TMP$2297$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2297$4, -1ll, (void*)"mov rax, 1593835520", 20ll, 0 );
				HWRITEASM64( &TMP$2297$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2297$4 );
				__builtin_memset( &TMP$2298$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2298$4, -1ll, (void*)"movq xmm2, rax", 15ll, 0 );
				HWRITEASM64( &TMP$2298$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2298$4 );
				__builtin_memset( &TMP$2300$4, 0, 24ll );
				__builtin_memset( &TMP$2299$4, 0, 24ll );
				FBSTRING* vr$1126 = fb_StrConcat( &TMP$2299$4, (void*)"mov eax, ", 10ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2300$4, -1ll, (void*)vr$1126, -1ll, 0 );
				HWRITEASM64( &TMP$2300$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2300$4 );
				__builtin_memset( &TMP$2302$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2302$4, -1ll, (void*)"movd xmm0, eax", 15ll, 0 );
				HWRITEASM64( &TMP$2302$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2302$4 );
				HEMITROUNDFLOAT( 15ll, 14ll );
				__builtin_memset( &TMP$2304$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2304$4, -1ll, (void*)"ucomiss xmm0, xmm2", 19ll, 0 );
				HWRITEASM64( &TMP$2304$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2304$4 );
				uint8* vr$1138 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$1138, 0ll, 0 );
				__builtin_memset( &TMP$2306$4, 0, 24ll );
				__builtin_memset( &TMP$2305$4, 0, 24ll );
				FBSTRING* vr$1144 = fb_StrConcat( &TMP$2305$4, (void*)"jnb ", 5ll, (void*)&LNAME1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2306$4, -1ll, (void*)vr$1144, -1ll, 0 );
				HWRITEASM64( &TMP$2306$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2306$4 );
				__builtin_memset( &TMP$2307$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2307$4, -1ll, (void*)"cvttss2si rax, xmm0", 20ll, 0 );
				HWRITEASM64( &TMP$2307$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2307$4 );
				uint8* vr$1152 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$1152, 0ll, 0 );
				__builtin_memset( &TMP$2309$4, 0, 24ll );
				__builtin_memset( &TMP$2308$4, 0, 24ll );
				FBSTRING* vr$1158 = fb_StrConcat( &TMP$2308$4, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2309$4, -1ll, (void*)vr$1158, -1ll, 0 );
				HWRITEASM64( &TMP$2309$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2309$4 );
				__builtin_memset( &TMP$2311$4, 0, 24ll );
				__builtin_memset( &TMP$2310$4, 0, 24ll );
				FBSTRING* vr$1166 = fb_StrConcat( &TMP$2310$4, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$2311$4, -1ll, (void*)vr$1166, -1ll, 0 );
				HWRITEASM64( &TMP$2311$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2311$4 );
				__builtin_memset( &TMP$2313$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2313$4, -1ll, (void*)"movss\x09xmm1, xmm2", 17ll, 0 );
				HWRITEASM64( &TMP$2313$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2313$4 );
				__builtin_memset( &TMP$2315$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2315$4, -1ll, (void*)"subss\x09xmm0, xmm1", 17ll, 0 );
				HWRITEASM64( &TMP$2315$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2315$4 );
				__builtin_memset( &TMP$2316$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2316$4, -1ll, (void*)"cvttss2si rax, xmm0", 20ll, 0 );
				HWRITEASM64( &TMP$2316$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2316$4 );
				int32 vr$1182 = REG_FINDFREE( 999999, -1ll );
				REG$1 = vr$1182;
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REG$1 << (3ll & 63ll))), 0ll, 0 );
				*(int32*)((uint8*)REGHANDLE$ + ((int64)REG$1 << (2ll & 63ll))) = -2;
				__builtin_memset( &TMP$2319$4, 0, 24ll );
				__builtin_memset( &TMP$2317$4, 0, 24ll );
				FBSTRING* vr$1192 = fb_StrConcat( &TMP$2317$4, (void*)"movabs ", 8ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$2318$4, 0, 24ll );
				FBSTRING* vr$1195 = fb_StrConcat( &TMP$2318$4, (void*)vr$1192, -1ll, (void*)", -9223372036854775808", 23ll );
				fb_StrAssign( (void*)&TMP$2319$4, -1ll, (void*)vr$1195, -1ll, 0 );
				HWRITEASM64( &TMP$2319$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2319$4 );
				__builtin_memset( &TMP$2321$4, 0, 24ll );
				__builtin_memset( &TMP$2320$4, 0, 24ll );
				FBSTRING* vr$1203 = fb_StrConcat( &TMP$2320$4, (void*)"xor rax,", 9ll, (void*)&REGTEMPO$1, -1ll );
				fb_StrAssign( (void*)&TMP$2321$4, -1ll, (void*)vr$1203, -1ll, 0 );
				HWRITEASM64( &TMP$2321$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2321$4 );
				__builtin_memset( &TMP$2323$4, 0, 24ll );
				__builtin_memset( &TMP$2322$4, 0, 24ll );
				FBSTRING* vr$1211 = fb_StrConcat( &TMP$2322$4, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$2323$4, -1ll, (void*)vr$1211, -1ll, 0 );
				HWRITEASM64( &TMP$2323$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2323$4 );
				__builtin_memset( &TMP$2326$4, 0, 24ll );
				__builtin_memset( &TMP$2324$4, 0, 24ll );
				FBSTRING* vr$1219 = fb_StrConcat( &TMP$2324$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2325$4, 0, 24ll );
				FBSTRING* vr$1222 = fb_StrConcat( &TMP$2325$4, (void*)vr$1219, -1ll, (void*)", rax", 6ll );
				fb_StrAssign( (void*)&TMP$2326$4, -1ll, (void*)vr$1222, -1ll, 0 );
				HWRITEASM64( &TMP$2326$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2326$4 );
			}
			goto label$1785;
			label$1786:;
			if( (((((((((int64)-(V1DTYPE$1 == 13ll) | (int64)-(V1DTYPE$1 == 11ll)) | (int64)-(V1DTYPE$1 == 12ll)) | (int64)-(V1DTYPE$1 == 5ll)) | (int64)-(V1DTYPE$1 == 6ll)) | (int64)-(V1DTYPE$1 == 2ll)) | (int64)-(V1DTYPE$1 == 3ll)) | (int64)-(V1DTYPE$1 == 1ll)) | (int64)-(V1DTYPE$1 == 4ll)) == 0ll ) goto label$1787;
			{
				if( *(int64*)V2$1 != 4ll ) goto label$1789;
				{
					FBSTRING TMP$2327$5;
					FBSTRING TMP$2328$5;
					__builtin_memset( &TMP$2328$5, 0, 24ll );
					__builtin_memset( &TMP$2327$5, 0, 24ll );
					FBSTRING* vr$1248 = fb_StrConcat( &TMP$2327$5, (void*)"movd xmm0, ", 12ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2328$5, -1ll, (void*)vr$1248, -1ll, 0 );
					HWRITEASM64( &TMP$2328$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2328$5 );
				}
				goto label$1788;
				label$1789:;
				{
					FBSTRING TMP$2329$5;
					FBSTRING TMP$2330$5;
					__builtin_memset( &TMP$2330$5, 0, 24ll );
					__builtin_memset( &TMP$2329$5, 0, 24ll );
					FBSTRING* vr$1256 = fb_StrConcat( &TMP$2329$5, (void*)"movss xmm0, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2330$5, -1ll, (void*)vr$1256, -1ll, 0 );
					HWRITEASM64( &TMP$2330$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2330$5 );
				}
				label$1788:;
				HEMITROUNDFLOAT( 15ll, 2147483648ll );
				if( V1DTYPE$1 != 13ll ) goto label$1791;
				{
					FBSTRING TMP$2331$5;
					FBSTRING TMP$2332$5;
					FBSTRING TMP$2333$5;
					__builtin_memset( &TMP$2333$5, 0, 24ll );
					__builtin_memset( &TMP$2331$5, 0, 24ll );
					FBSTRING* vr$1264 = fb_StrConcat( &TMP$2331$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2332$5, 0, 24ll );
					FBSTRING* vr$1267 = fb_StrConcat( &TMP$2332$5, (void*)vr$1264, -1ll, (void*)", rax", 6ll );
					fb_StrAssign( (void*)&TMP$2333$5, -1ll, (void*)vr$1267, -1ll, 0 );
					HWRITEASM64( &TMP$2333$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2333$5 );
				}
				goto label$1790;
				label$1791:;
				if( ((int64)-(V1DTYPE$1 == 11ll) | (int64)-(V1DTYPE$1 == 12ll)) == 0ll ) goto label$1792;
				{
					FBSTRING TMP$2334$5;
					FBSTRING TMP$2335$5;
					FBSTRING TMP$2336$5;
					__builtin_memset( &TMP$2336$5, 0, 24ll );
					__builtin_memset( &TMP$2334$5, 0, 24ll );
					FBSTRING* vr$1278 = fb_StrConcat( &TMP$2334$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2335$5, 0, 24ll );
					FBSTRING* vr$1281 = fb_StrConcat( &TMP$2335$5, (void*)vr$1278, -1ll, (void*)", eax", 6ll );
					fb_StrAssign( (void*)&TMP$2336$5, -1ll, (void*)vr$1281, -1ll, 0 );
					HWRITEASM64( &TMP$2336$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2336$5 );
				}
				goto label$1790;
				label$1792:;
				if( ((int64)-(V1DTYPE$1 == 5ll) | (int64)-(V1DTYPE$1 == 6ll)) == 0ll ) goto label$1793;
				{
					FBSTRING TMP$2337$5;
					FBSTRING TMP$2338$5;
					FBSTRING TMP$2339$5;
					__builtin_memset( &TMP$2339$5, 0, 24ll );
					__builtin_memset( &TMP$2337$5, 0, 24ll );
					FBSTRING* vr$1292 = fb_StrConcat( &TMP$2337$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2338$5, 0, 24ll );
					FBSTRING* vr$1295 = fb_StrConcat( &TMP$2338$5, (void*)vr$1292, -1ll, (void*)", ax", 5ll );
					fb_StrAssign( (void*)&TMP$2339$5, -1ll, (void*)vr$1295, -1ll, 0 );
					HWRITEASM64( &TMP$2339$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2339$5 );
				}
				goto label$1790;
				label$1793:;
				{
					FBSTRING TMP$2342$5;
					FBSTRING TMP$2343$5;
					FBSTRING TMP$2344$5;
					if( V1DTYPE$1 != 1ll ) goto label$1795;
					{
						FBSTRING TMP$2340$6;
						FBSTRING TMP$2341$6;
						__builtin_memset( &TMP$2340$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2340$6, -1ll, (void*)"cmp rax, 0", 11ll, 0 );
						HWRITEASM64( &TMP$2340$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2340$6 );
						__builtin_memset( &TMP$2341$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2341$6, -1ll, (void*)"setne al", 9ll, 0 );
						HWRITEASM64( &TMP$2341$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2341$6 );
					}
					label$1795:;
					label$1794:;
					__builtin_memset( &TMP$2344$5, 0, 24ll );
					__builtin_memset( &TMP$2342$5, 0, 24ll );
					FBSTRING* vr$1311 = fb_StrConcat( &TMP$2342$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2343$5, 0, 24ll );
					FBSTRING* vr$1314 = fb_StrConcat( &TMP$2343$5, (void*)vr$1311, -1ll, (void*)", al", 5ll );
					fb_StrAssign( (void*)&TMP$2344$5, -1ll, (void*)vr$1314, -1ll, 0 );
					HWRITEASM64( &TMP$2344$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2344$5 );
				}
				label$1790:;
			}
			goto label$1785;
			label$1787:;
			{
				FBSTRING TMP$2345$4;
				FBSTRING TMP$2348$4;
				FBSTRING TMP$2349$4;
				__builtin_memset( &TMP$2345$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2345$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2345$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2345$4 );
				__builtin_memset( &TMP$2348$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2348$4, -1ll, (void*)"FOUND AN ERROR : Converting float to int 02", 44ll, 0 );
				HWRITEASM64( &TMP$2348$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2348$4 );
				__builtin_memset( &TMP$2349$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2349$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2349$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2349$4 );
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
	if( ((int64)-(V1DTYPE$1 == 20ll) | (int64)-(V2DTYPE$1 == 20ll)) == 0ll ) goto label$1797;
	{
		if( V2DTYPE$1 != 20ll ) goto label$1799;
		{
			FBSTRING TMP$2350$3;
			FBSTRING TMP$2351$3;
			FBSTRING TMP$2352$3;
			FBSTRING TMP$2353$3;
			__builtin_memset( &TMP$2353$3, 0, 24ll );
			__builtin_memset( &TMP$2350$3, 0, 24ll );
			FBSTRING* vr$1347 = fb_StrConcat( &TMP$2350$3, (void*)"lea ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2351$3, 0, 24ll );
			FBSTRING* vr$1350 = fb_StrConcat( &TMP$2351$3, (void*)vr$1347, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$2352$3, 0, 24ll );
			FBSTRING* vr$1353 = fb_StrConcat( &TMP$2352$3, (void*)vr$1350, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$2353$3, -1ll, (void*)vr$1353, -1ll, 0 );
			HWRITEASM64( &TMP$2353$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2353$3 );
			if( V1DTYPE$1 != 13ll ) goto label$1801;
			{
				FBSTRING TMP$2355$4;
				FBSTRING TMP$2356$4;
				FBSTRING TMP$2357$4;
				FBSTRING TMP$2358$4;
				FBSTRING TMP$2359$4;
				__builtin_memset( &TMP$2359$4, 0, 24ll );
				__builtin_memset( &TMP$2355$4, 0, 24ll );
				FBSTRING* vr$1362 = fb_StrConcat( &TMP$2355$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2356$4, 0, 24ll );
				FBSTRING* vr$1365 = fb_StrConcat( &TMP$2356$4, (void*)vr$1362, -1ll, (void*)", QWORD PTR [", 14ll );
				__builtin_memset( &TMP$2357$4, 0, 24ll );
				FBSTRING* vr$1368 = fb_StrConcat( &TMP$2357$4, (void*)vr$1365, -1ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2358$4, 0, 24ll );
				FBSTRING* vr$1371 = fb_StrConcat( &TMP$2358$4, (void*)vr$1368, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$2359$4, -1ll, (void*)vr$1371, -1ll, 0 );
				HWRITEASM64( &TMP$2359$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2359$4 );
			}
			goto label$1800;
			label$1801:;
			if( V1DTYPE$1 == 20ll ) goto label$1802;
			{
				FBSTRING TMP$2360$4;
				FBSTRING TMP$2363$4;
				FBSTRING TMP$2364$4;
				__builtin_memset( &TMP$2360$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2360$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2360$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2360$4 );
				__builtin_memset( &TMP$2363$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2363$4, -1ll, (void*)"FOUND AN ERROR : Converting struct to datatype not handled 01", 62ll, 0 );
				HWRITEASM64( &TMP$2363$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2363$4 );
				__builtin_memset( &TMP$2364$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2364$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2364$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2364$4 );
			}
			label$1802:;
			label$1800:;
		}
		goto label$1798;
		label$1799:;
		{
			FBSTRING TMP$2365$3;
			FBSTRING TMP$2368$3;
			FBSTRING TMP$2369$3;
			__builtin_memset( &TMP$2365$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2365$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2365$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2365$3 );
			__builtin_memset( &TMP$2368$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2368$3, -1ll, (void*)"FOUND AN ERROR : Converting to struct not handled 02", 53ll, 0 );
			HWRITEASM64( &TMP$2368$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2368$3 );
			__builtin_memset( &TMP$2369$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2369$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2369$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2369$3 );
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
	if( V1DTYPE$1 != 1ll ) goto label$1804;
	{
		if( *(int64*)V2$1 != 0ll ) goto label$1806;
		{
			int32 vr$1410 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"0", 2ll );
			int32 vr$1414 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"0x0000000000000000", 19ll );
			int32 vr$1419 = fb_StrCompare( (void*)&OP2$1, -1ll, (void*)"0x00000000", 11ll );
			if( (((int64)-((int64)vr$1410 == 0ll) | (int64)-((int64)vr$1414 == 0ll)) | (int64)-((int64)vr$1419 == 0ll)) == 0ll ) goto label$1808;
			{
				FBSTRING TMP$2372$4;
				FBSTRING TMP$2373$4;
				FBSTRING TMP$2374$4;
				__builtin_memset( &TMP$2374$4, 0, 24ll );
				__builtin_memset( &TMP$2372$4, 0, 24ll );
				FBSTRING* vr$1427 = fb_StrConcat( &TMP$2372$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2373$4, 0, 24ll );
				FBSTRING* vr$1430 = fb_StrConcat( &TMP$2373$4, (void*)vr$1427, -1ll, (void*)", 0", 4ll );
				fb_StrAssign( (void*)&TMP$2374$4, -1ll, (void*)vr$1430, -1ll, 0 );
				HWRITEASM64( &TMP$2374$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2374$4 );
			}
			goto label$1807;
			label$1808:;
			{
				FBSTRING TMP$2375$4;
				FBSTRING TMP$2376$4;
				FBSTRING TMP$2377$4;
				__builtin_memset( &TMP$2377$4, 0, 24ll );
				__builtin_memset( &TMP$2375$4, 0, 24ll );
				FBSTRING* vr$1438 = fb_StrConcat( &TMP$2375$4, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2376$4, 0, 24ll );
				FBSTRING* vr$1441 = fb_StrConcat( &TMP$2376$4, (void*)vr$1438, -1ll, (void*)", 1", 4ll );
				fb_StrAssign( (void*)&TMP$2377$4, -1ll, (void*)vr$1441, -1ll, 0 );
				HWRITEASM64( &TMP$2377$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2377$4 );
			}
			label$1807:;
		}
		goto label$1805;
		label$1806:;
		{
			FBSTRING TMP$2378$3;
			FBSTRING TMP$2379$3;
			FBSTRING TMP$2380$3;
			FBSTRING TMP$2381$3;
			FBSTRING TMP$2382$3;
			FBSTRING TMP$2383$3;
			FBSTRING TMP$2384$3;
			FBSTRING TMP$2385$3;
			__builtin_memset( &TMP$2381$3, 0, 24ll );
			__builtin_memset( &TMP$2378$3, 0, 24ll );
			FBSTRING* vr$1450 = fb_StrConcat( &TMP$2378$3, (void*)"cmp ", 5ll, (void*)&PREFIX2$1, -1ll );
			__builtin_memset( &TMP$2379$3, 0, 24ll );
			FBSTRING* vr$1453 = fb_StrConcat( &TMP$2379$3, (void*)vr$1450, -1ll, (void*)&OP2$1, -1ll );
			__builtin_memset( &TMP$2380$3, 0, 24ll );
			FBSTRING* vr$1456 = fb_StrConcat( &TMP$2380$3, (void*)vr$1453, -1ll, (void*)", 0", 4ll );
			fb_StrAssign( (void*)&TMP$2381$3, -1ll, (void*)vr$1456, -1ll, 0 );
			HWRITEASM64( &TMP$2381$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2381$3 );
			__builtin_memset( &TMP$2382$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2382$3, -1ll, (void*)"setne al", 9ll, 0 );
			HWRITEASM64( &TMP$2382$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2382$3 );
			__builtin_memset( &TMP$2385$3, 0, 24ll );
			__builtin_memset( &TMP$2383$3, 0, 24ll );
			FBSTRING* vr$1468 = fb_StrConcat( &TMP$2383$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2384$3, 0, 24ll );
			FBSTRING* vr$1471 = fb_StrConcat( &TMP$2384$3, (void*)vr$1468, -1ll, (void*)", al", 5ll );
			fb_StrAssign( (void*)&TMP$2385$3, -1ll, (void*)vr$1471, -1ll, 0 );
			HWRITEASM64( &TMP$2385$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2385$3 );
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
	if( V2DTYPE$1 != 1ll ) goto label$1810;
	{
		FBSTRING TMP$2386$2;
		FBSTRING TMP$2387$2;
		FBSTRING TMP$2388$2;
		FBSTRING TMP$2389$2;
		FBSTRING TMP$2390$2;
		FBSTRING TMP$2391$2;
		int64 TMP$2392$2;
		__builtin_memset( &TMP$2389$2, 0, 24ll );
		__builtin_memset( &TMP$2386$2, 0, 24ll );
		FBSTRING* vr$1489 = fb_StrConcat( &TMP$2386$2, (void*)"cmp ", 5ll, (void*)&PREFIX2$1, -1ll );
		__builtin_memset( &TMP$2387$2, 0, 24ll );
		FBSTRING* vr$1492 = fb_StrConcat( &TMP$2387$2, (void*)vr$1489, -1ll, (void*)&OP2$1, -1ll );
		__builtin_memset( &TMP$2388$2, 0, 24ll );
		FBSTRING* vr$1495 = fb_StrConcat( &TMP$2388$2, (void*)vr$1492, -1ll, (void*)", 0", 4ll );
		fb_StrAssign( (void*)&TMP$2389$2, -1ll, (void*)vr$1495, -1ll, 0 );
		HWRITEASM64( &TMP$2389$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2389$2 );
		__builtin_memset( &TMP$2390$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2390$2, -1ll, (void*)"setne al", 9ll, 0 );
		HWRITEASM64( &TMP$2390$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2390$2 );
		__builtin_memset( &TMP$2391$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2391$2, -1ll, (void*)"neg al", 7ll, 0 );
		HWRITEASM64( &TMP$2391$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2391$2 );
		if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1811;
		TMP$2392$2 = 24ll;
		goto label$3019;
		label$1811:;
		TMP$2392$2 = V1DTYPE$1 & 31ll;
		label$3019:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2392$2 * 56ll)) + 8ll) != 1ll ) goto label$1813;
		{
			FBSTRING TMP$2393$3;
			FBSTRING TMP$2394$3;
			FBSTRING TMP$2395$3;
			__builtin_memset( &TMP$2395$3, 0, 24ll );
			__builtin_memset( &TMP$2393$3, 0, 24ll );
			FBSTRING* vr$1514 = fb_StrConcat( &TMP$2393$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2394$3, 0, 24ll );
			FBSTRING* vr$1517 = fb_StrConcat( &TMP$2394$3, (void*)vr$1514, -1ll, (void*)", al", 5ll );
			fb_StrAssign( (void*)&TMP$2395$3, -1ll, (void*)vr$1517, -1ll, 0 );
			HWRITEASM64( &TMP$2395$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2395$3 );
		}
		goto label$1812;
		label$1813:;
		{
			FBSTRING TMP$2397$3;
			FBSTRING TMP$2398$3;
			FBSTRING TMP$2399$3;
			__builtin_memset( &TMP$2399$3, 0, 24ll );
			__builtin_memset( &TMP$2397$3, 0, 24ll );
			FBSTRING* vr$1525 = fb_StrConcat( &TMP$2397$3, (void*)"movsx ", 7ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2398$3, 0, 24ll );
			FBSTRING* vr$1528 = fb_StrConcat( &TMP$2398$3, (void*)vr$1525, -1ll, (void*)", al", 5ll );
			fb_StrAssign( (void*)&TMP$2399$3, -1ll, (void*)vr$1528, -1ll, 0 );
			HWRITEASM64( &TMP$2399$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2399$3 );
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
	if( (V1DTYPE$1 & 480ll) == 0ll ) goto label$1814;
	TMP$2400$1 = 24ll;
	goto label$3020;
	label$1814:;
	TMP$2400$1 = V1DTYPE$1 & 31ll;
	label$3020:;
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1815;
	TMP$2401$1 = 24ll;
	goto label$3021;
	label$1815:;
	TMP$2401$1 = V2DTYPE$1 & 31ll;
	label$3021:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2400$1 * 56ll)) + 8ll) > *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2401$1 * 56ll)) + 8ll) ) goto label$1817;
	{
		FBSTRING TMP$2406$2;
		FBSTRING TMP$2407$2;
		FBSTRING TMP$2408$2;
		FBSTRING TMP$2409$2;
		FBSTRING TMP$2410$2;
		if( *(int64*)V2$1 != 4ll ) goto label$1819;
		{
			fb_StrAssign( (void*)&PREFIX1$1, -1ll, (void*)"", 1ll, 0 );
			{
				if( V1DTYPE$1 == 11ll ) goto label$1822;
				label$1823:;
				if( V1DTYPE$1 == 12ll ) goto label$1822;
				label$1824:;
				if( V1DTYPE$1 != 15ll ) goto label$1821;
				label$1822:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1820;
				label$1821:;
				if( V1DTYPE$1 == 5ll ) goto label$1826;
				label$1827:;
				if( V1DTYPE$1 != 6ll ) goto label$1825;
				label$1826:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1820;
				label$1825:;
				if( V1DTYPE$1 == 2ll ) goto label$1829;
				label$1830:;
				if( V1DTYPE$1 == 3ll ) goto label$1829;
				label$1831:;
				if( V1DTYPE$1 != 4ll ) goto label$1828;
				label$1829:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1820;
				label$1828:;
				if( V1DTYPE$1 != 1ll ) goto label$1832;
				label$1833:;
				{
				}
				goto label$1820;
				label$1832:;
				if( V1DTYPE$1 == 13ll ) goto label$1835;
				label$1836:;
				if( V1DTYPE$1 == 14ll ) goto label$1835;
				label$1837:;
				if( V1DTYPE$1 != 16ll ) goto label$1834;
				label$1835:;
				{
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)SRCREG$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1820;
				label$1834:;
				{
					FBSTRING TMP$2402$5;
					FBSTRING TMP$2403$5;
					FBSTRING TMP$2404$5;
					FBSTRING TMP$2405$5;
					__builtin_memset( &TMP$2402$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2402$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2402$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2402$5 );
					__builtin_memset( &TMP$2404$5, 0, 24ll );
					FBSTRING* vr$1567 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 8ll) );
					__builtin_memset( &TMP$2403$5, 0, 24ll );
					FBSTRING* vr$1570 = fb_StrConcat( &TMP$2403$5, (void*)"FOUND AN ERROR : Converting datatype not handled 03 = ", 55ll, (void*)vr$1567, -1ll );
					fb_StrAssign( (void*)&TMP$2404$5, -1ll, (void*)vr$1570, -1ll, 0 );
					HWRITEASM64( &TMP$2404$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2404$5 );
					__builtin_memset( &TMP$2405$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2405$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2405$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2405$5 );
				}
				label$1838:;
				label$1820:;
			}
		}
		label$1819:;
		label$1818:;
		__builtin_memset( &TMP$2410$2, 0, 24ll );
		__builtin_memset( &TMP$2406$2, 0, 24ll );
		FBSTRING* vr$1584 = fb_StrConcat( &TMP$2406$2, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2407$2, 0, 24ll );
		FBSTRING* vr$1587 = fb_StrConcat( &TMP$2407$2, (void*)vr$1584, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$2408$2, 0, 24ll );
		FBSTRING* vr$1590 = fb_StrConcat( &TMP$2408$2, (void*)vr$1587, -1ll, (void*)&PREFIX1$1, -1ll );
		__builtin_memset( &TMP$2409$2, 0, 24ll );
		FBSTRING* vr$1593 = fb_StrConcat( &TMP$2409$2, (void*)vr$1590, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2410$2, -1ll, (void*)vr$1593, -1ll, 0 );
		HWRITEASM64( &TMP$2410$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2410$2 );
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
	if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1839;
	TMP$2411$1 = 24ll;
	goto label$3022;
	label$1839:;
	TMP$2411$1 = V2DTYPE$1 & 31ll;
	label$3022:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2411$1 * 56ll)) + 16ll) == 0ll ) goto label$1841;
	{
		{
			int64 TMP$2412$3;
			int64 TMP$2413$3;
			if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1842;
			TMP$2412$3 = 24ll;
			goto label$3023;
			label$1842:;
			TMP$2412$3 = V2DTYPE$1 & 31ll;
			label$3023:;
			TMP$2413$3 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2412$3 * 56ll)) + 8ll);
			if( TMP$2413$3 == 1ll ) goto label$1845;
			label$1846:;
			if( TMP$2413$3 != 2ll ) goto label$1844;
			label$1845:;
			{
				FBSTRING TMP$2414$4;
				FBSTRING TMP$2415$4;
				FBSTRING TMP$2416$4;
				FBSTRING TMP$2417$4;
				FBSTRING TMP$2418$4;
				__builtin_memset( &TMP$2418$4, 0, 24ll );
				__builtin_memset( &TMP$2414$4, 0, 24ll );
				FBSTRING* vr$1618 = fb_StrConcat( &TMP$2414$4, (void*)"movsx ", 7ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2415$4, 0, 24ll );
				FBSTRING* vr$1621 = fb_StrConcat( &TMP$2415$4, (void*)vr$1618, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2416$4, 0, 24ll );
				FBSTRING* vr$1624 = fb_StrConcat( &TMP$2416$4, (void*)vr$1621, -1ll, (void*)&PREFIX2$1, -1ll );
				__builtin_memset( &TMP$2417$4, 0, 24ll );
				FBSTRING* vr$1627 = fb_StrConcat( &TMP$2417$4, (void*)vr$1624, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2418$4, -1ll, (void*)vr$1627, -1ll, 0 );
				HWRITEASM64( &TMP$2418$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2418$4 );
			}
			goto label$1843;
			label$1844:;
			if( TMP$2413$3 != 4ll ) goto label$1847;
			label$1848:;
			{
				FBSTRING TMP$2419$4;
				FBSTRING TMP$2420$4;
				FBSTRING TMP$2421$4;
				FBSTRING TMP$2422$4;
				FBSTRING TMP$2423$4;
				__builtin_memset( &TMP$2423$4, 0, 24ll );
				__builtin_memset( &TMP$2419$4, 0, 24ll );
				FBSTRING* vr$1637 = fb_StrConcat( &TMP$2419$4, (void*)"movsxd ", 8ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2420$4, 0, 24ll );
				FBSTRING* vr$1640 = fb_StrConcat( &TMP$2420$4, (void*)vr$1637, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2421$4, 0, 24ll );
				FBSTRING* vr$1643 = fb_StrConcat( &TMP$2421$4, (void*)vr$1640, -1ll, (void*)&PREFIX2$1, -1ll );
				__builtin_memset( &TMP$2422$4, 0, 24ll );
				FBSTRING* vr$1646 = fb_StrConcat( &TMP$2422$4, (void*)vr$1643, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2423$4, -1ll, (void*)vr$1646, -1ll, 0 );
				HWRITEASM64( &TMP$2423$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2423$4 );
			}
			goto label$1843;
			label$1847:;
			{
				FBSTRING TMP$2424$4;
				FBSTRING TMP$2427$4;
				FBSTRING TMP$2428$4;
				__builtin_memset( &TMP$2424$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2424$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2424$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2424$4 );
				__builtin_memset( &TMP$2427$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2427$4, -1ll, (void*)"FOUND AN ERROR : in conv something missing 01", 46ll, 0 );
				HWRITEASM64( &TMP$2427$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2427$4 );
				__builtin_memset( &TMP$2428$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2428$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2428$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2428$4 );
			}
			label$1849:;
			label$1843:;
		}
	}
	goto label$1840;
	label$1841:;
	{
		{
			int64 TMP$2429$3;
			int64 TMP$2430$3;
			if( (V2DTYPE$1 & 480ll) == 0ll ) goto label$1850;
			TMP$2429$3 = 24ll;
			goto label$3024;
			label$1850:;
			TMP$2429$3 = V2DTYPE$1 & 31ll;
			label$3024:;
			TMP$2430$3 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2429$3 * 56ll)) + 8ll);
			if( TMP$2430$3 == 1ll ) goto label$1853;
			label$1854:;
			if( TMP$2430$3 != 2ll ) goto label$1852;
			label$1853:;
			{
				FBSTRING TMP$2431$4;
				FBSTRING TMP$2432$4;
				FBSTRING TMP$2433$4;
				FBSTRING TMP$2434$4;
				FBSTRING TMP$2435$4;
				__builtin_memset( &TMP$2435$4, 0, 24ll );
				__builtin_memset( &TMP$2431$4, 0, 24ll );
				FBSTRING* vr$1671 = fb_StrConcat( &TMP$2431$4, (void*)"movzx ", 7ll, (void*)&OP1$1, -1ll );
				__builtin_memset( &TMP$2432$4, 0, 24ll );
				FBSTRING* vr$1674 = fb_StrConcat( &TMP$2432$4, (void*)vr$1671, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2433$4, 0, 24ll );
				FBSTRING* vr$1677 = fb_StrConcat( &TMP$2433$4, (void*)vr$1674, -1ll, (void*)&PREFIX2$1, -1ll );
				__builtin_memset( &TMP$2434$4, 0, 24ll );
				FBSTRING* vr$1680 = fb_StrConcat( &TMP$2434$4, (void*)vr$1677, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2435$4, -1ll, (void*)vr$1680, -1ll, 0 );
				HWRITEASM64( &TMP$2435$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2435$4 );
			}
			goto label$1851;
			label$1852:;
			if( TMP$2430$3 != 4ll ) goto label$1855;
			label$1856:;
			{
				FBSTRING TMP$2436$4;
				FBSTRING TMP$2437$4;
				FBSTRING TMP$2438$4;
				FBSTRING TMP$2439$4;
				FBSTRING TMP$2440$4;
				FBSTRING TMP$2441$4;
				FBSTRING TMP$2442$4;
				FBSTRING TMP$2443$4;
				__builtin_memset( &TMP$2439$4, 0, 24ll );
				__builtin_memset( &TMP$2436$4, 0, 24ll );
				FBSTRING* vr$1690 = fb_StrConcat( &TMP$2436$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2437$4, 0, 24ll );
				FBSTRING* vr$1693 = fb_StrConcat( &TMP$2437$4, (void*)vr$1690, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2438$4, 0, 24ll );
				FBSTRING* vr$1696 = fb_StrConcat( &TMP$2438$4, (void*)vr$1693, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2439$4, -1ll, (void*)vr$1696, -1ll, 0 );
				HWRITEASM64( &TMP$2439$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2439$4 );
				__builtin_memset( &TMP$2443$4, 0, 24ll );
				__builtin_memset( &TMP$2440$4, 0, 24ll );
				FBSTRING* vr$1707 = fb_StrConcat( &TMP$2440$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2441$4, 0, 24ll );
				FBSTRING* vr$1710 = fb_StrConcat( &TMP$2441$4, (void*)vr$1707, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2442$4, 0, 24ll );
				FBSTRING* vr$1713 = fb_StrConcat( &TMP$2442$4, (void*)vr$1710, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)REGRESULT$1 << (3ll & 63ll))), 0ll );
				fb_StrAssign( (void*)&TMP$2443$4, -1ll, (void*)vr$1713, -1ll, 0 );
				HWRITEASM64( &TMP$2443$4, 3ll );
				fb_StrDelete( (FBSTRING*)&TMP$2443$4 );
			}
			goto label$1851;
			label$1855:;
			{
				FBSTRING TMP$2444$4;
				FBSTRING TMP$2447$4;
				FBSTRING TMP$2448$4;
				__builtin_memset( &TMP$2444$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2444$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2444$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2444$4 );
				__builtin_memset( &TMP$2447$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2447$4, -1ll, (void*)"FOUND AN ERROR : in conv something missing 02", 46ll, 0 );
				HWRITEASM64( &TMP$2447$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2447$4 );
				__builtin_memset( &TMP$2448$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2448$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2448$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2448$4 );
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
	FBSTRING TMP$2463$1;
	FBSTRING TMP$2464$1;
	FBSTRING TMP$2465$1;
	label$1858:;
	FBSTRING DEST$1;
	__builtin_memset( &DEST$1, 0, 24ll );
	int64 LGTV1$1;
	LGTV1$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 80ll);
	int64 OFSV2$1;
	OFSV2$1 = *(int64*)((uint8*)V2$1 + 64ll);
	$15FB_STRUCT_INREG RETIN2REGS$1;
	RETIN2REGS$1 = *($15FB_STRUCT_INREG*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 224ll);
	int32 vr$6 = fb_StrCompare( (void*)OP3$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$6 == 0ll ) goto label$1861;
	{
		EMITOP3_OP4( OP3$1 );
		label$1861:;
	}
	if( ((int64)-(RETIN2REGS$1 == 2ll) | (int64)-(RETIN2REGS$1 == 3ll)) == 0ll ) goto label$1863;
	{
		FBSTRING TMP$2449$2;
		FBSTRING TMP$2450$2;
		FBSTRING TMP$2451$2;
		__builtin_memset( &TMP$2451$2, 0, 24ll );
		__builtin_memset( &TMP$2449$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$2449$2, (void*)"mov ", 5ll, (void*)OP1$1, -1ll );
		__builtin_memset( &TMP$2450$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$2450$2, (void*)vr$14, -1ll, (void*)", rax", 6ll );
		fb_StrAssign( (void*)&TMP$2451$2, -1ll, (void*)vr$17, -1ll, 0 );
		HWRITEASM64( &TMP$2451$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2451$2 );
	}
	goto label$1862;
	label$1863:;
	{
		FBSTRING TMP$2452$2;
		FBSTRING TMP$2453$2;
		FBSTRING TMP$2454$2;
		FBSTRING TMP$2456$2;
		__builtin_memset( &TMP$2454$2, 0, 24ll );
		__builtin_memset( &TMP$2452$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$2452$2, (void*)"movq ", 6ll, (void*)OP1$1, -1ll );
		__builtin_memset( &TMP$2453$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$2453$2, (void*)vr$24, -1ll, (void*)", xmm0", 7ll );
		fb_StrAssign( (void*)&TMP$2454$2, -1ll, (void*)vr$27, -1ll, 0 );
		HWRITEASM64( &TMP$2454$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2454$2 );
		__builtin_memset( &TMP$2456$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2456$2, -1ll, (void*)"movq rdx, xmm1", 15ll, 0 );
		HWRITEASM64( &TMP$2456$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2456$2 );
	}
	label$1862:;
	if( ((int64)-((uint64)(int64)*(uint8*)*(uint8**)OP1$1 == 45ull) & ((((int64)-(LGTV1$1 == 9ll) | (int64)-(LGTV1$1 == 10ll)) | (int64)-(LGTV1$1 == 12ll)) | (int64)-(LGTV1$1 == 16ll))) == 0ll ) goto label$1865;
	{
		FBSTRING TMP$2457$2;
		FBSTRING TMP$2459$2;
		FBSTRING TMP$2460$2;
		FBSTRING TMP$2461$2;
		FBSTRING TMP$2462$2;
		FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"[rbp]", 5ll );
		int64 vr$48 = fb_StrInstr( 1ll, (FBSTRING*)OP1$1, (FBSTRING*)vr$47 );
		FBSTRING* vr$50 = fb_LEFT( (FBSTRING*)OP1$1, vr$48 + -1ll );
		int32 vr$51 = fb_VALINT( (FBSTRING*)vr$50 );
		FBSTRING* vr$54 = fb_LongintToStr( (int64)vr$51 + 8ll );
		__builtin_memset( &TMP$2457$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$2457$2, (void*)vr$54, -1ll, (void*)"[rbp]", 6ll );
		fb_StrAssign( (void*)OP1$1, -1ll, (void*)vr$57, -1ll, 0 );
		{
			uint64 TMP$2458$3;
			TMP$2458$3 = (uint64)LGTV1$1;
			goto label$1867;
			label$1868:;
			{
				fb_StrAssign( (void*)&DEST$1, -1ll, (void*)"dl", 3ll, 0 );
			}
			goto label$1866;
			label$1869:;
			{
				fb_StrAssign( (void*)&DEST$1, -1ll, (void*)"dx", 3ll, 0 );
			}
			goto label$1866;
			label$1870:;
			{
				fb_StrAssign( (void*)&DEST$1, -1ll, (void*)"edx", 4ll, 0 );
			}
			goto label$1866;
			label$1871:;
			{
				fb_StrAssign( (void*)&DEST$1, -1ll, (void*)"rdx", 4ll, 0 );
			}
			goto label$1866;
			label$1867:;
			static const void* tmp$3862[8ll] = {
				&&label$1868,
				&&label$1869,
				&&label$1866,
				&&label$1870,
				&&label$1866,
				&&label$1866,
				&&label$1866,
				&&label$1871,
			};
			if( (TMP$2458$3 - 9ull) > 7ull ) goto label$1866;
			goto *tmp$3862[TMP$2458$3 - 9ull];
			label$1866:;
		}
		__builtin_memset( &TMP$2462$2, 0, 24ll );
		__builtin_memset( &TMP$2459$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$2459$2, (void*)"mov ", 5ll, (void*)OP1$1, -1ll );
		__builtin_memset( &TMP$2460$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$2460$2, (void*)vr$66, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$2461$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$2461$2, (void*)vr$69, -1ll, (void*)&DEST$1, -1ll );
		fb_StrAssign( (void*)&TMP$2462$2, -1ll, (void*)vr$72, -1ll, 0 );
		HWRITEASM64( &TMP$2462$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2462$2 );
		fb_StrDelete( (FBSTRING*)&DEST$1 );
		goto label$1859;
	}
	label$1865:;
	label$1864:;
	__builtin_memset( &TMP$2464$1, 0, 24ll );
	__builtin_memset( &TMP$2463$1, 0, 24ll );
	FBSTRING* vr$80 = fb_StrConcat( &TMP$2463$1, (void*)"lea rax, ", 10ll, (void*)OP1$1, -1ll );
	fb_StrAssign( (void*)&TMP$2464$1, -1ll, (void*)vr$80, -1ll, 0 );
	HWRITEASM64( &TMP$2464$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2464$1 );
	__builtin_memset( &TMP$2465$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$2465$1, -1ll, (void*)"add rax, 8", 11ll, 0 );
	HWRITEASM64( &TMP$2465$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$2465$1 );
	{
		uint64 TMP$2466$2;
		TMP$2466$2 = (uint64)LGTV1$1;
		goto label$1873;
		label$1874:;
		{
			FBSTRING TMP$2468$3;
			__builtin_memset( &TMP$2468$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2468$3, -1ll, (void*)"mov [rax], dl", 14ll, 0 );
			HWRITEASM64( &TMP$2468$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2468$3 );
		}
		goto label$1872;
		label$1875:;
		{
			FBSTRING TMP$2470$3;
			__builtin_memset( &TMP$2470$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2470$3, -1ll, (void*)"mov [rax], dx", 14ll, 0 );
			HWRITEASM64( &TMP$2470$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2470$3 );
		}
		goto label$1872;
		label$1876:;
		{
			FBSTRING TMP$2471$3;
			FBSTRING TMP$2473$3;
			FBSTRING TMP$2475$3;
			__builtin_memset( &TMP$2471$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2471$3, -1ll, (void*)"mov [rax], dx", 14ll, 0 );
			HWRITEASM64( &TMP$2471$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2471$3 );
			__builtin_memset( &TMP$2473$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2473$3, -1ll, (void*)"shr rdx, 2", 11ll, 0 );
			HWRITEASM64( &TMP$2473$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2473$3 );
			__builtin_memset( &TMP$2475$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2475$3, -1ll, (void*)"mov [rax+2], dl", 16ll, 0 );
			HWRITEASM64( &TMP$2475$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2475$3 );
		}
		goto label$1872;
		label$1877:;
		{
			FBSTRING TMP$2477$3;
			__builtin_memset( &TMP$2477$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2477$3, -1ll, (void*)"mov [rax], edx", 15ll, 0 );
			HWRITEASM64( &TMP$2477$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2477$3 );
		}
		goto label$1872;
		label$1878:;
		{
			FBSTRING TMP$2478$3;
			FBSTRING TMP$2480$3;
			FBSTRING TMP$2482$3;
			__builtin_memset( &TMP$2478$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2478$3, -1ll, (void*)"mov [rax], edx", 15ll, 0 );
			HWRITEASM64( &TMP$2478$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2478$3 );
			__builtin_memset( &TMP$2480$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2480$3, -1ll, (void*)"shr rdx, 4", 11ll, 0 );
			HWRITEASM64( &TMP$2480$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2480$3 );
			__builtin_memset( &TMP$2482$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2482$3, -1ll, (void*)"mov [rax+4], dl", 16ll, 0 );
			HWRITEASM64( &TMP$2482$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2482$3 );
		}
		goto label$1872;
		label$1879:;
		{
			FBSTRING TMP$2483$3;
			FBSTRING TMP$2484$3;
			FBSTRING TMP$2486$3;
			__builtin_memset( &TMP$2483$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2483$3, -1ll, (void*)"mov [rax], edx", 15ll, 0 );
			HWRITEASM64( &TMP$2483$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2483$3 );
			__builtin_memset( &TMP$2484$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2484$3, -1ll, (void*)"shr rdx, 4", 11ll, 0 );
			HWRITEASM64( &TMP$2484$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2484$3 );
			__builtin_memset( &TMP$2486$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2486$3, -1ll, (void*)"mov [rax+4], dx", 16ll, 0 );
			HWRITEASM64( &TMP$2486$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2486$3 );
		}
		goto label$1872;
		label$1880:;
		{
			FBSTRING TMP$2487$3;
			FBSTRING TMP$2488$3;
			FBSTRING TMP$2489$3;
			FBSTRING TMP$2490$3;
			FBSTRING TMP$2492$3;
			__builtin_memset( &TMP$2487$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2487$3, -1ll, (void*)"mov [rax], edx", 15ll, 0 );
			HWRITEASM64( &TMP$2487$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2487$3 );
			__builtin_memset( &TMP$2488$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2488$3, -1ll, (void*)"shr rdx, 4", 11ll, 0 );
			HWRITEASM64( &TMP$2488$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2488$3 );
			__builtin_memset( &TMP$2489$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2489$3, -1ll, (void*)"mov [rax+4], dx", 16ll, 0 );
			HWRITEASM64( &TMP$2489$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2489$3 );
			__builtin_memset( &TMP$2490$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2490$3, -1ll, (void*)"shr rdx, 2", 11ll, 0 );
			HWRITEASM64( &TMP$2490$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2490$3 );
			__builtin_memset( &TMP$2492$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2492$3, -1ll, (void*)"mov [rax+6], dl", 16ll, 0 );
			HWRITEASM64( &TMP$2492$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2492$3 );
		}
		goto label$1872;
		label$1881:;
		{
			FBSTRING TMP$2494$3;
			__builtin_memset( &TMP$2494$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2494$3, -1ll, (void*)"mov [rax], rdx", 15ll, 0 );
			HWRITEASM64( &TMP$2494$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2494$3 );
		}
		goto label$1872;
		label$1873:;
		static const void* tmp$3863[8ll] = {
			&&label$1874,
			&&label$1875,
			&&label$1876,
			&&label$1877,
			&&label$1878,
			&&label$1879,
			&&label$1880,
			&&label$1881,
		};
		if( (TMP$2466$2 - 9ull) > 7ull ) goto label$1872;
		goto *tmp$3863[TMP$2466$2 - 9ull];
		label$1872:;
	}
	fb_StrDelete( (FBSTRING*)&DEST$1 );
	label$1859:;
}

static int64 HISSTRUCTIN2REGS( struct $6IRVREG* V1$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1882:;
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 511ll) != 20ll ) goto label$1885;
	{
		fb$result$1 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) + 224ll) != 0ll);
		goto label$1883;
	}
	label$1885:;
	label$1884:;
	fb$result$1 = 0ll;
	goto label$1883;
	label$1883:;
	return fb$result$1;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int64 TMP$2495$1;
	int64 TMP$2496$1;
	label$1886:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING OP4$1;
	__builtin_memset( &OP4$1, 0, 24ll );
	FBSTRING PREFIX$1;
	__builtin_memset( &PREFIX$1, 0, 24ll );
	FBSTRING CODE1$1;
	__builtin_memset( &CODE1$1, 0, 24ll );
	FBSTRING CODE2$1;
	__builtin_memset( &CODE2$1, 0, 24ll );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 24ll );
	int32 TEMPO$1;
	__builtin_memset( &TEMPO$1, 0, 4ll );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$1888;
	TMP$2495$1 = 24ll;
	goto label$3025;
	label$1888:;
	TMP$2495$1 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
	label$3025:;
	if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$1889;
	TMP$2496$1 = 24ll;
	goto label$3026;
	label$1889:;
	TMP$2496$1 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
	label$3026:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2495$1 * 56ll)) + 8ll) >= *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$2496$1 * 56ll)) + 8ll) ) goto label$1891;
	{
		struct $6IRVREG* TEMP0$2;
		struct $6IRVREG* vr$21 = IRHLALLOCVREG( *(int64*)((uint8*)V1$1 + 8ll), (struct $8FBSYMBOL*)0ull );
		TEMP0$2 = vr$21;
		_EMITCONVERT( TEMP0$2, V2$1 );
		__builtin_memcpy( V2$1, TEMP0$2, 120 );
	}
	label$1891:;
	label$1890:;
	{
		$15IRVREGTYPE_ENUM TMP$2497$2;
		TMP$2497$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2497$2 != 2ll ) goto label$1893;
		label$1894:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$1892;
		label$1893:;
		if( TMP$2497$2 != 4ll ) goto label$1895;
		label$1896:;
		{
			if( *(int64*)V2$1 != 0ll ) goto label$1898;
			{
				FBSTRING TMP$2498$4;
				FBSTRING TMP$2501$4;
				FBSTRING TMP$2502$4;
				__builtin_memset( &TMP$2498$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2498$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2498$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2498$4 );
				__builtin_memset( &TMP$2501$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2501$4, -1ll, (void*)"FOUND AN ERROR : In emitstore used to be sure that case IMM to REG may happen.... report to dev", 96ll, 0 );
				HWRITEASM64( &TMP$2501$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2501$4 );
				__builtin_memset( &TMP$2502$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2502$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2502$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2502$4 );
				if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) >= 0ll) & (int64)-(*(int64*)((uint8*)V2$1 + 48ll) <= 2147483647ll)) == 0ll ) goto label$1900;
				{
					int32 vr$45 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)vr$45 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1899;
				label$1900:;
				{
					int32 vr$51 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$51 << (3ll & 63ll))), 0ll, 0 );
				}
				label$1899:;
			}
			goto label$1897;
			label$1898:;
			{
				DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 8ll);
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$1902;
				{
					DTYPE$1 = 8ll;
					label$1902:;
				}
				{
					if( DTYPE$1 == 8ll ) goto label$1905;
					label$1906:;
					if( DTYPE$1 == 9ll ) goto label$1905;
					label$1907:;
					if( DTYPE$1 == 13ll ) goto label$1905;
					label$1908:;
					if( DTYPE$1 == 14ll ) goto label$1905;
					label$1909:;
					if( DTYPE$1 == 16ll ) goto label$1905;
					label$1910:;
					if( DTYPE$1 != 10ll ) goto label$1904;
					label$1905:;
					{
						int32 vr$59 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$59 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1903;
					label$1904:;
					if( DTYPE$1 == 11ll ) goto label$1912;
					label$1913:;
					if( DTYPE$1 == 12ll ) goto label$1912;
					label$1914:;
					if( DTYPE$1 != 15ll ) goto label$1911;
					label$1912:;
					{
						int32 vr$65 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)vr$65 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1903;
					label$1911:;
					if( DTYPE$1 == 5ll ) goto label$1916;
					label$1917:;
					if( DTYPE$1 != 6ll ) goto label$1915;
					label$1916:;
					{
						int32 vr$71 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)vr$71 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1903;
					label$1915:;
					if( DTYPE$1 == 2ll ) goto label$1919;
					label$1920:;
					if( DTYPE$1 == 3ll ) goto label$1919;
					label$1921:;
					if( DTYPE$1 == 1ll ) goto label$1919;
					label$1922:;
					if( DTYPE$1 != 4ll ) goto label$1918;
					label$1919:;
					{
						int32 vr$77 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)vr$77 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$1903;
					label$1918:;
					{
						FBSTRING TMP$2503$6;
						FBSTRING TMP$2507$6;
						FBSTRING TMP$2508$6;
						FBSTRING TMP$2509$6;
						__builtin_memset( &TMP$2503$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2503$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2503$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2503$6 );
						__builtin_memset( &TMP$2508$6, 0, 24ll );
						FBSTRING* vr$87 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 8ll) );
						__builtin_memset( &TMP$2507$6, 0, 24ll );
						FBSTRING* vr$90 = fb_StrConcat( &TMP$2507$6, (void*)"FOUND AN ERROR : Storing datatype not handled 01 = ", 52ll, (void*)vr$87, -1ll );
						fb_StrAssign( (void*)&TMP$2508$6, -1ll, (void*)vr$90, -1ll, 0 );
						HWRITEASM64( &TMP$2508$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2508$6 );
						__builtin_memset( &TMP$2509$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2509$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2509$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2509$6 );
					}
					label$1923:;
					label$1903:;
				}
			}
			label$1897:;
		}
		goto label$1892;
		label$1895:;
		if( TMP$2497$2 != 1ll ) goto label$1924;
		label$1925:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$1927;
			{
				FBSTRING TMP$2510$4;
				FBSTRING TMP$2511$4;
				FBSTRING TMP$2512$4;
				FBSTRING* vr$108 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$110 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$2510$4, 0, 24ll );
				FBSTRING* vr$113 = fb_StrConcat( &TMP$2510$4, (void*)vr$110, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$2511$4, 0, 24ll );
				FBSTRING* vr$116 = fb_StrConcat( &TMP$2511$4, (void*)vr$113, -1ll, (void*)vr$108, -1ll );
				__builtin_memset( &TMP$2512$4, 0, 24ll );
				FBSTRING* vr$119 = fb_StrConcat( &TMP$2512$4, (void*)vr$116, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$119, -1ll, 0 );
			}
			goto label$1926;
			label$1927:;
			{
				FBSTRING TMP$2513$4;
				FBSTRING* vr$122 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$2513$4, 0, 24ll );
				FBSTRING* vr$125 = fb_StrConcat( &TMP$2513$4, (void*)vr$122, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$125, -1ll, 0 );
			}
			label$1926:;
		}
		goto label$1892;
		label$1924:;
		if( TMP$2497$2 != 3ll ) goto label$1928;
		label$1929:;
		{
			if( *(int64*)((uint8*)V1$1 + 64ll) == 0ll ) goto label$1931;
			{
				if( *(struct $6IRVREG**)((uint8*)V1$1 + 80ll) != (struct $6IRVREG*)0ull ) goto label$1933;
				{
					if( ((int64)-(*(int64*)((uint8*)V1$1 + 64ll) < -2147483648ll) | (int64)-(*(uint64*)((uint8*)V1$1 + 64ll) > 4294967295ull)) == 0ll ) goto label$1935;
					{
						FBSTRING TMP$2514$6;
						FBSTRING* vr$135 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						__builtin_memset( &TMP$2514$6, 0, 24ll );
						FBSTRING* vr$138 = fb_StrConcat( &TMP$2514$6, (void*)"mov rax, ", 10ll, (void*)vr$135, -1ll );
						fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$138, -1ll, 0 );
					}
					goto label$1934;
					label$1935:;
					{
						FBSTRING TMP$2515$6;
						FBSTRING* vr$141 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						__builtin_memset( &TMP$2515$6, 0, 24ll );
						FBSTRING* vr$144 = fb_StrConcat( &TMP$2515$6, (void*)"mov eax, ", 10ll, (void*)vr$141, -1ll );
						fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$144, -1ll, 0 );
					}
					label$1934:;
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[rax]", 6ll, 0 );
				}
				goto label$1932;
				label$1933:;
				{
					FBSTRING TMP$2516$5;
					FBSTRING TMP$2517$5;
					FBSTRING TMP$2518$5;
					int32 vr$150 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
					FBSTRING* vr$154 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					__builtin_memset( &TMP$2516$5, 0, 24ll );
					FBSTRING* vr$157 = fb_StrConcat( &TMP$2516$5, (void*)vr$154, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$2517$5, 0, 24ll );
					FBSTRING* vr$160 = fb_StrConcat( &TMP$2517$5, (void*)vr$157, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$150 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2518$5, 0, 24ll );
					FBSTRING* vr$163 = fb_StrConcat( &TMP$2518$5, (void*)vr$160, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$163, -1ll, 0 );
				}
				label$1932:;
			}
			goto label$1930;
			label$1931:;
			{
				FBSTRING TMP$2519$4;
				FBSTRING TMP$2520$4;
				int32 vr$168 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
				__builtin_memset( &TMP$2519$4, 0, 24ll );
				FBSTRING* vr$173 = fb_StrConcat( &TMP$2519$4, (void*)"[", 2ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$168 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2520$4, 0, 24ll );
				FBSTRING* vr$176 = fb_StrConcat( &TMP$2520$4, (void*)vr$173, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$176, -1ll, 0 );
			}
			label$1930:;
		}
		goto label$1892;
		label$1928:;
		if( TMP$2497$2 != 5ll ) goto label$1936;
		label$1937:;
		{
			FBSTRING TMP$2521$3;
			FBSTRING TMP$2522$3;
			FBSTRING TMP$2523$3;
			FBSTRING* vr$179 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			uint8* vr$181 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
			__builtin_memset( &TMP$2521$3, 0, 24ll );
			FBSTRING* vr$184 = fb_StrConcat( &TMP$2521$3, (void*)vr$181, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$2522$3, 0, 24ll );
			FBSTRING* vr$187 = fb_StrConcat( &TMP$2522$3, (void*)vr$184, -1ll, (void*)vr$179, -1ll );
			__builtin_memset( &TMP$2523$3, 0, 24ll );
			FBSTRING* vr$190 = fb_StrConcat( &TMP$2523$3, (void*)vr$187, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$190, -1ll, 0 );
		}
		goto label$1892;
		label$1936:;
		{
			FBSTRING TMP$2524$3;
			FBSTRING TMP$2527$3;
			FBSTRING TMP$2528$3;
			__builtin_memset( &TMP$2524$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2524$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2524$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2524$3 );
			__builtin_memset( &TMP$2527$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2527$3, -1ll, (void*)"FOUND AN ERROR : store 01", 26ll, 0 );
			HWRITEASM64( &TMP$2527$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2527$3 );
			__builtin_memset( &TMP$2528$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2528$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2528$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2528$3 );
		}
		label$1938:;
		label$1892:;
	}
	int64 vr$204 = HISSTRUCTIN2REGS( V2$1 );
	if( vr$204 == 0ll ) goto label$1940;
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
		$15IRVREGTYPE_ENUM TMP$2529$2;
		TMP$2529$2 = *($15IRVREGTYPE_ENUM*)V2$1;
		if( TMP$2529$2 != 2ll ) goto label$1942;
		label$1943:;
		{
			PREPARE_IDX( V2$1, &OP2$1, &OP4$1 );
		}
		goto label$1941;
		label$1942:;
		if( TMP$2529$2 != 4ll ) goto label$1944;
		label$1945:;
		{
			DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V2$1 + 8ll);
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$1947;
			{
				DTYPE$1 = 8ll;
				label$1947:;
			}
			{
				if( DTYPE$1 == 8ll ) goto label$1950;
				label$1951:;
				if( DTYPE$1 == 9ll ) goto label$1950;
				label$1952:;
				if( DTYPE$1 == 13ll ) goto label$1950;
				label$1953:;
				if( DTYPE$1 == 14ll ) goto label$1950;
				label$1954:;
				if( DTYPE$1 == 16ll ) goto label$1950;
				label$1955:;
				if( DTYPE$1 != 10ll ) goto label$1949;
				label$1950:;
				{
					int32 vr$222 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$222 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1948;
				label$1949:;
				if( DTYPE$1 == 11ll ) goto label$1957;
				label$1958:;
				if( DTYPE$1 == 12ll ) goto label$1957;
				label$1959:;
				if( DTYPE$1 != 15ll ) goto label$1956;
				label$1957:;
				{
					int32 vr$228 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)vr$228 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1948;
				label$1956:;
				if( DTYPE$1 == 5ll ) goto label$1961;
				label$1962:;
				if( DTYPE$1 != 6ll ) goto label$1960;
				label$1961:;
				{
					int32 vr$234 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)vr$234 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1948;
				label$1960:;
				if( DTYPE$1 == 2ll ) goto label$1964;
				label$1965:;
				if( DTYPE$1 == 3ll ) goto label$1964;
				label$1966:;
				if( DTYPE$1 == 1ll ) goto label$1964;
				label$1967:;
				if( DTYPE$1 != 4ll ) goto label$1963;
				label$1964:;
				{
					int32 vr$240 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)vr$240 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$1948;
				label$1963:;
				{
					FBSTRING TMP$2530$5;
					FBSTRING TMP$2534$5;
					FBSTRING TMP$2535$5;
					FBSTRING TMP$2536$5;
					__builtin_memset( &TMP$2530$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2530$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2530$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2530$5 );
					__builtin_memset( &TMP$2535$5, 0, 24ll );
					FBSTRING* vr$250 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 8ll) );
					__builtin_memset( &TMP$2534$5, 0, 24ll );
					FBSTRING* vr$253 = fb_StrConcat( &TMP$2534$5, (void*)"FOUND AN ERROR : Storing datatype not handled 02 = ", 52ll, (void*)vr$250, -1ll );
					fb_StrAssign( (void*)&TMP$2535$5, -1ll, (void*)vr$253, -1ll, 0 );
					HWRITEASM64( &TMP$2535$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2535$5 );
					__builtin_memset( &TMP$2536$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2536$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2536$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2536$5 );
				}
				label$1968:;
				label$1948:;
			}
		}
		goto label$1941;
		label$1944:;
		if( TMP$2529$2 != 1ll ) goto label$1969;
		label$1970:;
		{
			int64 TMP$2537$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$1971;
			TMP$2537$3 = (int64)-(((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) != 0ll);
			goto label$3027;
			label$1971:;
			TMP$2537$3 = 0ll;
			label$3027:;
			if( TMP$2537$3 == 0ll ) goto label$1973;
			{
				FBSTRING TMP$2538$4;
				FBSTRING TMP$2539$4;
				FBSTRING TMP$2540$4;
				FBSTRING* vr$273 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				uint8* vr$275 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
				__builtin_memset( &TMP$2538$4, 0, 24ll );
				FBSTRING* vr$278 = fb_StrConcat( &TMP$2538$4, (void*)vr$275, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$2539$4, 0, 24ll );
				FBSTRING* vr$281 = fb_StrConcat( &TMP$2539$4, (void*)vr$278, -1ll, (void*)vr$273, -1ll );
				__builtin_memset( &TMP$2540$4, 0, 24ll );
				FBSTRING* vr$284 = fb_StrConcat( &TMP$2540$4, (void*)vr$281, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$284, -1ll, 0 );
			}
			goto label$1972;
			label$1973:;
			{
				FBSTRING TMP$2541$4;
				FBSTRING* vr$287 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$2541$4, 0, 24ll );
				FBSTRING* vr$290 = fb_StrConcat( &TMP$2541$4, (void*)vr$287, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$290, -1ll, 0 );
			}
			label$1972:;
		}
		goto label$1941;
		label$1969:;
		if( TMP$2529$2 != 3ll ) goto label$1974;
		label$1975:;
		{
			if( *(struct $6IRVREG**)((uint8*)V2$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$1977;
			{
				FBSTRING TMP$2542$4;
				FBSTRING TMP$2543$4;
				FBSTRING TMP$2544$4;
				int32 vr$296 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
				FBSTRING* vr$300 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$2542$4, 0, 24ll );
				FBSTRING* vr$303 = fb_StrConcat( &TMP$2542$4, (void*)vr$300, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$2543$4, 0, 24ll );
				FBSTRING* vr$306 = fb_StrConcat( &TMP$2543$4, (void*)vr$303, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$296 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2544$4, 0, 24ll );
				FBSTRING* vr$309 = fb_StrConcat( &TMP$2544$4, (void*)vr$306, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$309, -1ll, 0 );
			}
			goto label$1976;
			label$1977:;
			{
				FBSTRING TMP$2545$4;
				FBSTRING TMP$2546$4;
				FBSTRING* vr$312 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$2545$4, 0, 24ll );
				FBSTRING* vr$315 = fb_StrConcat( &TMP$2545$4, (void*)"[", 2ll, (void*)vr$312, -1ll );
				__builtin_memset( &TMP$2546$4, 0, 24ll );
				FBSTRING* vr$318 = fb_StrConcat( &TMP$2546$4, (void*)vr$315, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$318, -1ll, 0 );
			}
			label$1976:;
		}
		goto label$1941;
		label$1974:;
		if( TMP$2529$2 != 5ll ) goto label$1978;
		label$1979:;
		{
			FBSTRING TMP$2547$3;
			FBSTRING TMP$2548$3;
			FBSTRING TMP$2549$3;
			FBSTRING* vr$321 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
			uint8* vr$323 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
			__builtin_memset( &TMP$2547$3, 0, 24ll );
			FBSTRING* vr$326 = fb_StrConcat( &TMP$2547$3, (void*)vr$323, 0ll, (void*)"[rip+", 6ll );
			__builtin_memset( &TMP$2548$3, 0, 24ll );
			FBSTRING* vr$329 = fb_StrConcat( &TMP$2548$3, (void*)vr$326, -1ll, (void*)vr$321, -1ll );
			__builtin_memset( &TMP$2549$3, 0, 24ll );
			FBSTRING* vr$332 = fb_StrConcat( &TMP$2549$3, (void*)vr$329, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$332, -1ll, 0 );
		}
		goto label$1941;
		label$1978:;
		if( TMP$2529$2 != 0ll ) goto label$1980;
		label$1981:;
		{
			int64 TMP$2550$3;
			if( ((int64)-(*(int64*)((uint8*)V1$1 + 8ll) == 1ll) & (int64)-(*(int64*)((uint8*)V2$1 + 48ll) != 0ll)) == 0ll ) goto label$1983;
			{
				*(int64*)((uint8*)V2$1 + 48ll) = 1ll;
			}
			label$1983:;
			label$1982:;
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$1984;
			TMP$2550$3 = 24ll;
			goto label$3028;
			label$1984:;
			TMP$2550$3 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
			label$3028:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2550$3 * 56ll)) != 1ll ) goto label$1986;
			{
				FBSTRING* vr$347 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 48ll), *(int64*)((uint8*)V2$1 + 8ll), (int8)0 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$347, -1ll, 0 );
			}
			goto label$1985;
			label$1986:;
			{
				FBSTRING* vr$350 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$350, -1ll, 0 );
			}
			label$1985:;
		}
		goto label$1941;
		label$1980:;
		{
			FBSTRING TMP$2551$3;
			FBSTRING TMP$2552$3;
			FBSTRING TMP$2553$3;
			__builtin_memset( &TMP$2551$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2551$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2551$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2551$3 );
			__builtin_memset( &TMP$2552$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2552$3, -1ll, (void*)"FOUND AN ERROR : store 02 ??", 29ll, 0 );
			HWRITEASM64( &TMP$2552$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2552$3 );
			__builtin_memset( &TMP$2553$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2553$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2553$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2553$3 );
		}
		label$1987:;
		label$1941:;
	}
	DTYPE$1 = *(int64*)((uint8*)V1$1 + 8ll) & 511ll;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$1989;
	{
		DTYPE$1 = 8ll;
		label$1989:;
	}
	{
		if( DTYPE$1 == 8ll ) goto label$1992;
		label$1993:;
		if( DTYPE$1 == 9ll ) goto label$1992;
		label$1994:;
		if( DTYPE$1 == 13ll ) goto label$1992;
		label$1995:;
		if( DTYPE$1 == 14ll ) goto label$1992;
		label$1996:;
		if( DTYPE$1 == 16ll ) goto label$1992;
		label$1997:;
		if( DTYPE$1 != 10ll ) goto label$1991;
		label$1992:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"QWORD PTR ", 11ll, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"mov rax, ", 10ll, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", rax", 6ll, 0 );
		}
		goto label$1990;
		label$1991:;
		if( DTYPE$1 == 11ll ) goto label$1999;
		label$2000:;
		if( DTYPE$1 == 12ll ) goto label$1999;
		label$2001:;
		if( DTYPE$1 != 15ll ) goto label$1998;
		label$1999:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"mov eax, ", 10ll, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", eax", 6ll, 0 );
		}
		goto label$1990;
		label$1998:;
		if( DTYPE$1 == 5ll ) goto label$2003;
		label$2004:;
		if( DTYPE$1 != 6ll ) goto label$2002;
		label$2003:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"movzx eax, ", 12ll, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", ax", 5ll, 0 );
		}
		goto label$1990;
		label$2002:;
		if( DTYPE$1 == 2ll ) goto label$2006;
		label$2007:;
		if( DTYPE$1 == 3ll ) goto label$2006;
		label$2008:;
		if( DTYPE$1 == 1ll ) goto label$2006;
		label$2009:;
		if( DTYPE$1 != 4ll ) goto label$2005;
		label$2006:;
		{
			fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"BYTE PTR ", 10ll, 0 );
			fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"mov al, ", 9ll, 0 );
			fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", al", 5ll, 0 );
		}
		goto label$1990;
		label$2005:;
		if( DTYPE$1 != 7ll ) goto label$2010;
		label$2011:;
		{
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) != 2ll ) goto label$2013;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"WORD PTR ", 10ll, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"movzx eax, ", 12ll, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", ax", 5ll, 0 );
			}
			goto label$2012;
			label$2013:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) != 4ll ) goto label$2014;
			{
				fb_StrAssign( (void*)&PREFIX$1, -1ll, (void*)"DWORD PTR ", 11ll, 0 );
				fb_StrAssign( (void*)&CODE1$1, -1ll, (void*)"mov eax, ", 10ll, 0 );
				fb_StrAssign( (void*)&CODE2$1, -1ll, (void*)", eax", 6ll, 0 );
			}
			goto label$2012;
			label$2014:;
			{
				FBSTRING TMP$2555$4;
				FBSTRING TMP$2558$4;
				FBSTRING TMP$2559$4;
				__builtin_memset( &TMP$2555$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2555$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2555$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2555$4 );
				__builtin_memset( &TMP$2558$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2558$4, -1ll, (void*)"FOUND AN ERROR : emitstore datatype WCHAR not handled", 54ll, 0 );
				HWRITEASM64( &TMP$2558$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2558$4 );
				__builtin_memset( &TMP$2559$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2559$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2559$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2559$4 );
			}
			label$2012:;
		}
		goto label$1990;
		label$2010:;
		{
			FBSTRING TMP$2560$3;
			FBSTRING TMP$2564$3;
			FBSTRING TMP$2565$3;
			FBSTRING TMP$2566$3;
			__builtin_memset( &TMP$2560$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2560$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2560$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2560$3 );
			__builtin_memset( &TMP$2565$3, 0, 24ll );
			FBSTRING* vr$402 = fb_LongintToStr( DTYPE$1 );
			__builtin_memset( &TMP$2564$3, 0, 24ll );
			FBSTRING* vr$405 = fb_StrConcat( &TMP$2564$3, (void*)"FOUND AN ERROR : emitstore datatype not handled 03= ", 53ll, (void*)vr$402, -1ll );
			fb_StrAssign( (void*)&TMP$2565$3, -1ll, (void*)vr$405, -1ll, 0 );
			HWRITEASM64( &TMP$2565$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2565$3 );
			__builtin_memset( &TMP$2566$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2566$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2566$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2566$3 );
		}
		label$2015:;
		label$1990:;
	}
	if( ((int64)-(*(int64*)V1$1 == 1ll) & (int64)-(*(int64*)V2$1 == 1ll)) == 0ll ) goto label$2017;
	{
		int64 TMP$2567$2;
		FBSTRING TMP$2578$2;
		FBSTRING TMP$2579$2;
		FBSTRING TMP$2580$2;
		FBSTRING TMP$2581$2;
		FBSTRING TMP$2582$2;
		FBSTRING TMP$2583$2;
		FBSTRING TMP$2584$2;
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2018;
		int64 vr$418 = FBGETOPTION( 0ll );
		TMP$2567$2 = (int64)-(vr$418 == 2ll);
		goto label$3029;
		label$2018:;
		TMP$2567$2 = 0ll;
		label$3029:;
		if( TMP$2567$2 == 0ll ) goto label$2020;
		{
			int64 TMP$2568$3;
			int64 TMP$2574$3;
			if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2021;
			TMP$2568$3 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) != 0ll);
			goto label$3030;
			label$2021:;
			TMP$2568$3 = 0ll;
			label$3030:;
			if( TMP$2568$3 == 0ll ) goto label$2023;
			{
				FBSTRING TMP$2569$4;
				FBSTRING TMP$2570$4;
				FBSTRING TMP$2571$4;
				FBSTRING TMP$2572$4;
				FBSTRING TMP$2573$4;
				int32 vr$425 = REG_FINDFREE( 999998, -1ll );
				TEMPO$1 = vr$425;
				fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
				*(int32*)((uint8*)REGHANDLE$ + ((int64)TEMPO$1 << (2ll & 63ll))) = -2;
				__builtin_memset( &TMP$2573$4, 0, 24ll );
				uint8* vr$433 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$2569$4, 0, 24ll );
				FBSTRING* vr$437 = fb_StrConcat( &TMP$2569$4, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
				__builtin_memset( &TMP$2570$4, 0, 24ll );
				FBSTRING* vr$440 = fb_StrConcat( &TMP$2570$4, (void*)vr$437, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2571$4, 0, 24ll );
				FBSTRING* vr$443 = fb_StrConcat( &TMP$2571$4, (void*)vr$440, -1ll, (void*)vr$433, 0ll );
				__builtin_memset( &TMP$2572$4, 0, 24ll );
				FBSTRING* vr$446 = fb_StrConcat( &TMP$2572$4, (void*)vr$443, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
				fb_StrAssign( (void*)&TMP$2573$4, -1ll, (void*)vr$446, -1ll, 0 );
				HWRITEASM64( &TMP$2573$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2573$4 );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[", 2ll, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)"]", 2ll, 0 );
			}
			label$2023:;
			label$2022:;
			if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2024;
			TMP$2574$3 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 8ll) != 0ll);
			goto label$3031;
			label$2024:;
			TMP$2574$3 = 0ll;
			label$3031:;
			if( TMP$2574$3 == 0ll ) goto label$2026;
			{
				FBSTRING TMP$2575$4;
				FBSTRING TMP$2576$4;
				FBSTRING TMP$2577$4;
				__builtin_memset( &TMP$2577$4, 0, 24ll );
				uint8* vr$461 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
				__builtin_memset( &TMP$2575$4, 0, 24ll );
				FBSTRING* vr$464 = fb_StrConcat( &TMP$2575$4, (void*)"mov rax, ", 10ll, (void*)vr$461, 0ll );
				__builtin_memset( &TMP$2576$4, 0, 24ll );
				FBSTRING* vr$467 = fb_StrConcat( &TMP$2576$4, (void*)vr$464, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
				fb_StrAssign( (void*)&TMP$2577$4, -1ll, (void*)vr$467, -1ll, 0 );
				HWRITEASM64( &TMP$2577$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2577$4 );
				fb_StrAssign( (void*)&OP2$1, -1ll, (void*)"[rax]", 6ll, 0 );
			}
			label$2026:;
			label$2025:;
		}
		label$2020:;
		label$2019:;
		__builtin_memset( &TMP$2580$2, 0, 24ll );
		__builtin_memset( &TMP$2578$2, 0, 24ll );
		FBSTRING* vr$478 = fb_StrConcat( &TMP$2578$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2579$2, 0, 24ll );
		FBSTRING* vr$481 = fb_StrConcat( &TMP$2579$2, (void*)vr$478, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2580$2, -1ll, (void*)vr$481, -1ll, 0 );
		HWRITEASM64( &TMP$2580$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2580$2 );
		__builtin_memset( &TMP$2584$2, 0, 24ll );
		__builtin_memset( &TMP$2581$2, 0, 24ll );
		FBSTRING* vr$491 = fb_StrConcat( &TMP$2581$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2582$2, 0, 24ll );
		FBSTRING* vr$494 = fb_StrConcat( &TMP$2582$2, (void*)vr$491, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2583$2, 0, 24ll );
		FBSTRING* vr$497 = fb_StrConcat( &TMP$2583$2, (void*)vr$494, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2584$2, -1ll, (void*)vr$497, -1ll, 0 );
		HWRITEASM64( &TMP$2584$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2584$2 );
	}
	goto label$2016;
	label$2017:;
	if( ((int64)-(*(int64*)V1$1 == 2ll) & (int64)-(*(int64*)V2$1 == 2ll)) == 0ll ) goto label$2027;
	{
		FBSTRING TMP$2585$2;
		FBSTRING TMP$2586$2;
		FBSTRING TMP$2587$2;
		FBSTRING TMP$2588$2;
		FBSTRING TMP$2589$2;
		FBSTRING TMP$2590$2;
		FBSTRING TMP$2591$2;
		int32 vr$507 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$507 == 0ll ) goto label$2029;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2029:;
		}
		__builtin_memset( &TMP$2587$2, 0, 24ll );
		__builtin_memset( &TMP$2585$2, 0, 24ll );
		FBSTRING* vr$516 = fb_StrConcat( &TMP$2585$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2586$2, 0, 24ll );
		FBSTRING* vr$519 = fb_StrConcat( &TMP$2586$2, (void*)vr$516, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2587$2, -1ll, (void*)vr$519, -1ll, 0 );
		HWRITEASM64( &TMP$2587$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2587$2 );
		int32 vr$524 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$524 == 0ll ) goto label$2031;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2031:;
		}
		__builtin_memset( &TMP$2591$2, 0, 24ll );
		__builtin_memset( &TMP$2588$2, 0, 24ll );
		FBSTRING* vr$533 = fb_StrConcat( &TMP$2588$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2589$2, 0, 24ll );
		FBSTRING* vr$536 = fb_StrConcat( &TMP$2589$2, (void*)vr$533, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2590$2, 0, 24ll );
		FBSTRING* vr$539 = fb_StrConcat( &TMP$2590$2, (void*)vr$536, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2591$2, -1ll, (void*)vr$539, -1ll, 0 );
		HWRITEASM64( &TMP$2591$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2591$2 );
	}
	goto label$2016;
	label$2027:;
	if( (((int64)-(*(int64*)V1$1 == 1ll) & (int64)-(*(int64*)V2$1 == 3ll)) | ((int64)-(*(int64*)V1$1 == 3ll) & (int64)-(*(int64*)V2$1 == 1ll))) == 0ll ) goto label$2032;
	{
		FBSTRING TMP$2592$2;
		FBSTRING TMP$2593$2;
		FBSTRING TMP$2594$2;
		FBSTRING TMP$2595$2;
		FBSTRING TMP$2596$2;
		FBSTRING TMP$2597$2;
		FBSTRING TMP$2598$2;
		__builtin_memset( &TMP$2594$2, 0, 24ll );
		__builtin_memset( &TMP$2592$2, 0, 24ll );
		FBSTRING* vr$560 = fb_StrConcat( &TMP$2592$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2593$2, 0, 24ll );
		FBSTRING* vr$563 = fb_StrConcat( &TMP$2593$2, (void*)vr$560, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2594$2, -1ll, (void*)vr$563, -1ll, 0 );
		HWRITEASM64( &TMP$2594$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2594$2 );
		__builtin_memset( &TMP$2598$2, 0, 24ll );
		__builtin_memset( &TMP$2595$2, 0, 24ll );
		FBSTRING* vr$573 = fb_StrConcat( &TMP$2595$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2596$2, 0, 24ll );
		FBSTRING* vr$576 = fb_StrConcat( &TMP$2596$2, (void*)vr$573, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2597$2, 0, 24ll );
		FBSTRING* vr$579 = fb_StrConcat( &TMP$2597$2, (void*)vr$576, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2598$2, -1ll, (void*)vr$579, -1ll, 0 );
		HWRITEASM64( &TMP$2598$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2598$2 );
	}
	goto label$2016;
	label$2032:;
	if( (((int64)-(*(int64*)V1$1 == 1ll) & (int64)-(*(int64*)V2$1 == 2ll)) | ((int64)-(*(int64*)V1$1 == 2ll) & (int64)-(*(int64*)V2$1 == 1ll))) == 0ll ) goto label$2033;
	{
		FBSTRING TMP$2599$2;
		FBSTRING TMP$2600$2;
		FBSTRING TMP$2601$2;
		FBSTRING TMP$2602$2;
		FBSTRING TMP$2603$2;
		FBSTRING TMP$2604$2;
		FBSTRING TMP$2605$2;
		int32 vr$595 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$595 == 0ll ) goto label$2035;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2035:;
		}
		__builtin_memset( &TMP$2601$2, 0, 24ll );
		__builtin_memset( &TMP$2599$2, 0, 24ll );
		FBSTRING* vr$604 = fb_StrConcat( &TMP$2599$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2600$2, 0, 24ll );
		FBSTRING* vr$607 = fb_StrConcat( &TMP$2600$2, (void*)vr$604, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2601$2, -1ll, (void*)vr$607, -1ll, 0 );
		HWRITEASM64( &TMP$2601$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2601$2 );
		int32 vr$612 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$612 == 0ll ) goto label$2037;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2037:;
		}
		__builtin_memset( &TMP$2605$2, 0, 24ll );
		__builtin_memset( &TMP$2602$2, 0, 24ll );
		FBSTRING* vr$621 = fb_StrConcat( &TMP$2602$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2603$2, 0, 24ll );
		FBSTRING* vr$624 = fb_StrConcat( &TMP$2603$2, (void*)vr$621, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2604$2, 0, 24ll );
		FBSTRING* vr$627 = fb_StrConcat( &TMP$2604$2, (void*)vr$624, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2605$2, -1ll, (void*)vr$627, -1ll, 0 );
		HWRITEASM64( &TMP$2605$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2605$2 );
	}
	goto label$2016;
	label$2033:;
	if( (((int64)-(*(int64*)V1$1 == 3ll) & (int64)-(*(int64*)V2$1 == 2ll)) | ((int64)-(*(int64*)V1$1 == 2ll) & (int64)-(*(int64*)V2$1 == 3ll))) == 0ll ) goto label$2038;
	{
		FBSTRING TMP$2606$2;
		FBSTRING TMP$2607$2;
		FBSTRING TMP$2608$2;
		FBSTRING TMP$2609$2;
		FBSTRING TMP$2610$2;
		FBSTRING TMP$2611$2;
		FBSTRING TMP$2612$2;
		int32 vr$643 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$643 == 0ll ) goto label$2040;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2040:;
		}
		__builtin_memset( &TMP$2608$2, 0, 24ll );
		__builtin_memset( &TMP$2606$2, 0, 24ll );
		FBSTRING* vr$652 = fb_StrConcat( &TMP$2606$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2607$2, 0, 24ll );
		FBSTRING* vr$655 = fb_StrConcat( &TMP$2607$2, (void*)vr$652, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2608$2, -1ll, (void*)vr$655, -1ll, 0 );
		HWRITEASM64( &TMP$2608$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2608$2 );
		int32 vr$660 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$660 == 0ll ) goto label$2042;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2042:;
		}
		__builtin_memset( &TMP$2612$2, 0, 24ll );
		__builtin_memset( &TMP$2609$2, 0, 24ll );
		FBSTRING* vr$669 = fb_StrConcat( &TMP$2609$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2610$2, 0, 24ll );
		FBSTRING* vr$672 = fb_StrConcat( &TMP$2610$2, (void*)vr$669, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2611$2, 0, 24ll );
		FBSTRING* vr$675 = fb_StrConcat( &TMP$2611$2, (void*)vr$672, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2612$2, -1ll, (void*)vr$675, -1ll, 0 );
		HWRITEASM64( &TMP$2612$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2612$2 );
	}
	goto label$2016;
	label$2038:;
	if( ((int64)-(*(int64*)V1$1 == 3ll) & (int64)-(*(int64*)V2$1 == 3ll)) == 0ll ) goto label$2043;
	{
		FBSTRING TMP$2613$2;
		FBSTRING TMP$2614$2;
		FBSTRING TMP$2615$2;
		FBSTRING TMP$2616$2;
		FBSTRING TMP$2617$2;
		FBSTRING TMP$2618$2;
		FBSTRING TMP$2619$2;
		__builtin_memset( &TMP$2615$2, 0, 24ll );
		__builtin_memset( &TMP$2613$2, 0, 24ll );
		FBSTRING* vr$690 = fb_StrConcat( &TMP$2613$2, (void*)&CODE1$1, -1ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2614$2, 0, 24ll );
		FBSTRING* vr$693 = fb_StrConcat( &TMP$2614$2, (void*)vr$690, -1ll, (void*)&OP2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2615$2, -1ll, (void*)vr$693, -1ll, 0 );
		HWRITEASM64( &TMP$2615$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2615$2 );
		__builtin_memset( &TMP$2619$2, 0, 24ll );
		__builtin_memset( &TMP$2616$2, 0, 24ll );
		FBSTRING* vr$703 = fb_StrConcat( &TMP$2616$2, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
		__builtin_memset( &TMP$2617$2, 0, 24ll );
		FBSTRING* vr$706 = fb_StrConcat( &TMP$2617$2, (void*)vr$703, -1ll, (void*)&OP1$1, -1ll );
		__builtin_memset( &TMP$2618$2, 0, 24ll );
		FBSTRING* vr$709 = fb_StrConcat( &TMP$2618$2, (void*)vr$706, -1ll, (void*)&CODE2$1, -1ll );
		fb_StrAssign( (void*)&TMP$2619$2, -1ll, (void*)vr$709, -1ll, 0 );
		HWRITEASM64( &TMP$2619$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2619$2 );
	}
	goto label$2016;
	label$2043:;
	{
		int32 vr$714 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$714 == 0ll ) goto label$2045;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2045:;
		}
		int32 vr$718 = fb_StrCompare( (void*)&OP4$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$718 == 0ll ) goto label$2047;
		{
			EMITOP3_OP4( &OP4$1 );
			label$2047:;
		}
		if( *(int64*)V2$1 != 0ll ) goto label$2049;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2620$4;
				TMP$2620$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2620$4 != 4ll ) goto label$2051;
				label$2052:;
				{
					FBSTRING TMP$2622$5;
					FBSTRING TMP$2623$5;
					FBSTRING TMP$2624$5;
					FBSTRING TMP$2625$5;
					FBSTRING TMP$2626$5;
					__builtin_memset( &TMP$2626$5, 0, 24ll );
					__builtin_memset( &TMP$2622$5, 0, 24ll );
					FBSTRING* vr$729 = fb_StrConcat( &TMP$2622$5, (void*)"movNOTUSED? ", 13ll, (void*)&PREFIX$1, -1ll );
					__builtin_memset( &TMP$2623$5, 0, 24ll );
					FBSTRING* vr$732 = fb_StrConcat( &TMP$2623$5, (void*)vr$729, -1ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$2624$5, 0, 24ll );
					FBSTRING* vr$735 = fb_StrConcat( &TMP$2624$5, (void*)vr$732, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$2625$5, 0, 24ll );
					FBSTRING* vr$738 = fb_StrConcat( &TMP$2625$5, (void*)vr$735, -1ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2626$5, -1ll, (void*)vr$738, -1ll, 0 );
					HWRITEASM64( &TMP$2626$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2626$5 );
				}
				goto label$2050;
				label$2051:;
				if( TMP$2620$4 == 1ll ) goto label$2054;
				label$2055:;
				if( TMP$2620$4 == 2ll ) goto label$2054;
				label$2056:;
				if( TMP$2620$4 != 3ll ) goto label$2053;
				label$2054:;
				{
					int64 TMP$2627$5;
					if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2057;
					int64 vr$742 = FBGETOPTION( 0ll );
					TMP$2627$5 = (int64)-(vr$742 == 2ll);
					goto label$3032;
					label$2057:;
					TMP$2627$5 = 0ll;
					label$3032:;
					if( TMP$2627$5 == 0ll ) goto label$2059;
					{
						int64 TMP$2628$6;
						if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2060;
						TMP$2628$6 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) != 0ll);
						goto label$3033;
						label$2060:;
						TMP$2628$6 = 0ll;
						label$3033:;
						if( TMP$2628$6 == 0ll ) goto label$2062;
						{
							FBSTRING TMP$2629$7;
							FBSTRING TMP$2630$7;
							FBSTRING TMP$2631$7;
							FBSTRING TMP$2632$7;
							FBSTRING TMP$2633$7;
							int32 vr$749 = REG_FINDFREE( 999998, -1ll );
							TEMPO$1 = vr$749;
							fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
							*(int32*)((uint8*)REGHANDLE$ + ((int64)TEMPO$1 << (2ll & 63ll))) = -2;
							__builtin_memset( &TMP$2633$7, 0, 24ll );
							uint8* vr$757 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
							__builtin_memset( &TMP$2629$7, 0, 24ll );
							FBSTRING* vr$761 = fb_StrConcat( &TMP$2629$7, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2630$7, 0, 24ll );
							FBSTRING* vr$764 = fb_StrConcat( &TMP$2630$7, (void*)vr$761, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2631$7, 0, 24ll );
							FBSTRING* vr$767 = fb_StrConcat( &TMP$2631$7, (void*)vr$764, -1ll, (void*)vr$757, 0ll );
							__builtin_memset( &TMP$2632$7, 0, 24ll );
							FBSTRING* vr$770 = fb_StrConcat( &TMP$2632$7, (void*)vr$767, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
							fb_StrAssign( (void*)&TMP$2633$7, -1ll, (void*)vr$770, -1ll, 0 );
							HWRITEASM64( &TMP$2633$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2633$7 );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[", 2ll, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
							fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)"]", 2ll, 0 );
						}
						label$2062:;
						label$2061:;
					}
					label$2059:;
					label$2058:;
					{
						if( DTYPE$1 != 15ll ) goto label$2064;
						label$2065:;
						{
							FBSTRING TMP$2634$7;
							FBSTRING TMP$2635$7;
							FBSTRING TMP$2636$7;
							FBSTRING TMP$2637$7;
							FBSTRING TMP$2638$7;
							__builtin_memset( &TMP$2638$7, 0, 24ll );
							__builtin_memset( &TMP$2634$7, 0, 24ll );
							FBSTRING* vr$784 = fb_StrConcat( &TMP$2634$7, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
							__builtin_memset( &TMP$2635$7, 0, 24ll );
							FBSTRING* vr$787 = fb_StrConcat( &TMP$2635$7, (void*)vr$784, -1ll, (void*)&OP1$1, -1ll );
							__builtin_memset( &TMP$2636$7, 0, 24ll );
							FBSTRING* vr$790 = fb_StrConcat( &TMP$2636$7, (void*)vr$787, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2637$7, 0, 24ll );
							FBSTRING* vr$793 = fb_StrConcat( &TMP$2637$7, (void*)vr$790, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$2638$7, -1ll, (void*)vr$793, -1ll, 0 );
							HWRITEASM64( &TMP$2638$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2638$7 );
						}
						goto label$2063;
						label$2064:;
						if( DTYPE$1 != 16ll ) goto label$2066;
						label$2067:;
						{
							FBSTRING TMP$2639$7;
							FBSTRING TMP$2640$7;
							FBSTRING TMP$2641$7;
							FBSTRING TMP$2642$7;
							FBSTRING TMP$2643$7;
							FBSTRING TMP$2644$7;
							__builtin_memset( &TMP$2640$7, 0, 24ll );
							__builtin_memset( &TMP$2639$7, 0, 24ll );
							FBSTRING* vr$801 = fb_StrConcat( &TMP$2639$7, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$2640$7, -1ll, (void*)vr$801, -1ll, 0 );
							HWRITEASM64( &TMP$2640$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2640$7 );
							__builtin_memset( &TMP$2644$7, 0, 24ll );
							__builtin_memset( &TMP$2641$7, 0, 24ll );
							FBSTRING* vr$810 = fb_StrConcat( &TMP$2641$7, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
							__builtin_memset( &TMP$2642$7, 0, 24ll );
							FBSTRING* vr$813 = fb_StrConcat( &TMP$2642$7, (void*)vr$810, -1ll, (void*)&OP1$1, -1ll );
							__builtin_memset( &TMP$2643$7, 0, 24ll );
							FBSTRING* vr$816 = fb_StrConcat( &TMP$2643$7, (void*)vr$813, -1ll, (void*)", rax", 6ll );
							fb_StrAssign( (void*)&TMP$2644$7, -1ll, (void*)vr$816, -1ll, 0 );
							HWRITEASM64( &TMP$2644$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2644$7 );
						}
						goto label$2063;
						label$2066:;
						if( DTYPE$1 == 8ll ) goto label$2069;
						label$2070:;
						if( DTYPE$1 == 9ll ) goto label$2069;
						label$2071:;
						if( DTYPE$1 == 13ll ) goto label$2069;
						label$2072:;
						if( DTYPE$1 == 14ll ) goto label$2069;
						label$2073:;
						if( DTYPE$1 != 10ll ) goto label$2068;
						label$2069:;
						{
							if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) < -2147483648ll) | (int64)-(*(uint64*)((uint8*)V2$1 + 48ll) > 4294967295ull)) == 0ll ) goto label$2075;
							{
								FBSTRING TMP$2645$8;
								FBSTRING TMP$2646$8;
								FBSTRING TMP$2647$8;
								FBSTRING TMP$2648$8;
								FBSTRING TMP$2649$8;
								FBSTRING TMP$2650$8;
								__builtin_memset( &TMP$2646$8, 0, 24ll );
								__builtin_memset( &TMP$2645$8, 0, 24ll );
								FBSTRING* vr$829 = fb_StrConcat( &TMP$2645$8, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
								fb_StrAssign( (void*)&TMP$2646$8, -1ll, (void*)vr$829, -1ll, 0 );
								HWRITEASM64( &TMP$2646$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2646$8 );
								__builtin_memset( &TMP$2650$8, 0, 24ll );
								__builtin_memset( &TMP$2647$8, 0, 24ll );
								FBSTRING* vr$838 = fb_StrConcat( &TMP$2647$8, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
								__builtin_memset( &TMP$2648$8, 0, 24ll );
								FBSTRING* vr$841 = fb_StrConcat( &TMP$2648$8, (void*)vr$838, -1ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$2649$8, 0, 24ll );
								FBSTRING* vr$844 = fb_StrConcat( &TMP$2649$8, (void*)vr$841, -1ll, (void*)", rax", 6ll );
								fb_StrAssign( (void*)&TMP$2650$8, -1ll, (void*)vr$844, -1ll, 0 );
								HWRITEASM64( &TMP$2650$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2650$8 );
							}
							goto label$2074;
							label$2075:;
							if( *(uint64*)((uint8*)V2$1 + 48ll) < 2147483648ull ) goto label$2076;
							{
								FBSTRING TMP$2651$8;
								FBSTRING TMP$2652$8;
								FBSTRING TMP$2653$8;
								FBSTRING TMP$2654$8;
								FBSTRING TMP$2655$8;
								FBSTRING TMP$2656$8;
								__builtin_memset( &TMP$2652$8, 0, 24ll );
								__builtin_memset( &TMP$2651$8, 0, 24ll );
								FBSTRING* vr$853 = fb_StrConcat( &TMP$2651$8, (void*)"mov eax, ", 10ll, (void*)&OP2$1, -1ll );
								fb_StrAssign( (void*)&TMP$2652$8, -1ll, (void*)vr$853, -1ll, 0 );
								HWRITEASM64( &TMP$2652$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2652$8 );
								__builtin_memset( &TMP$2656$8, 0, 24ll );
								__builtin_memset( &TMP$2653$8, 0, 24ll );
								FBSTRING* vr$862 = fb_StrConcat( &TMP$2653$8, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
								__builtin_memset( &TMP$2654$8, 0, 24ll );
								FBSTRING* vr$865 = fb_StrConcat( &TMP$2654$8, (void*)vr$862, -1ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$2655$8, 0, 24ll );
								FBSTRING* vr$868 = fb_StrConcat( &TMP$2655$8, (void*)vr$865, -1ll, (void*)", rax", 6ll );
								fb_StrAssign( (void*)&TMP$2656$8, -1ll, (void*)vr$868, -1ll, 0 );
								HWRITEASM64( &TMP$2656$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2656$8 );
							}
							goto label$2074;
							label$2076:;
							{
								FBSTRING TMP$2657$8;
								FBSTRING TMP$2658$8;
								FBSTRING TMP$2659$8;
								FBSTRING TMP$2660$8;
								FBSTRING TMP$2661$8;
								__builtin_memset( &TMP$2661$8, 0, 24ll );
								__builtin_memset( &TMP$2657$8, 0, 24ll );
								FBSTRING* vr$878 = fb_StrConcat( &TMP$2657$8, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
								__builtin_memset( &TMP$2658$8, 0, 24ll );
								FBSTRING* vr$881 = fb_StrConcat( &TMP$2658$8, (void*)vr$878, -1ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$2659$8, 0, 24ll );
								FBSTRING* vr$884 = fb_StrConcat( &TMP$2659$8, (void*)vr$881, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$2660$8, 0, 24ll );
								FBSTRING* vr$887 = fb_StrConcat( &TMP$2660$8, (void*)vr$884, -1ll, (void*)&OP2$1, -1ll );
								fb_StrAssign( (void*)&TMP$2661$8, -1ll, (void*)vr$887, -1ll, 0 );
								HWRITEASM64( &TMP$2661$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2661$8 );
							}
							label$2074:;
						}
						goto label$2063;
						label$2068:;
						{
							FBSTRING TMP$2662$7;
							FBSTRING TMP$2663$7;
							FBSTRING TMP$2664$7;
							FBSTRING TMP$2665$7;
							FBSTRING TMP$2666$7;
							__builtin_memset( &TMP$2666$7, 0, 24ll );
							__builtin_memset( &TMP$2662$7, 0, 24ll );
							FBSTRING* vr$897 = fb_StrConcat( &TMP$2662$7, (void*)"mov ", 5ll, (void*)&PREFIX$1, -1ll );
							__builtin_memset( &TMP$2663$7, 0, 24ll );
							FBSTRING* vr$900 = fb_StrConcat( &TMP$2663$7, (void*)vr$897, -1ll, (void*)&OP1$1, -1ll );
							__builtin_memset( &TMP$2664$7, 0, 24ll );
							FBSTRING* vr$903 = fb_StrConcat( &TMP$2664$7, (void*)vr$900, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2665$7, 0, 24ll );
							FBSTRING* vr$906 = fb_StrConcat( &TMP$2665$7, (void*)vr$903, -1ll, (void*)&OP2$1, -1ll );
							fb_StrAssign( (void*)&TMP$2666$7, -1ll, (void*)vr$906, -1ll, 0 );
							HWRITEASM64( &TMP$2666$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2666$7 );
						}
						label$2077:;
						label$2063:;
					}
				}
				goto label$2050;
				label$2053:;
				{
					FBSTRING TMP$2667$5;
					FBSTRING TMP$2670$5;
					FBSTRING TMP$2671$5;
					__builtin_memset( &TMP$2667$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2667$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2667$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2667$5 );
					__builtin_memset( &TMP$2670$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2670$5, -1ll, (void*)"FOUND AN ERROR : in store perhaps OFS not handled", 50ll, 0 );
					HWRITEASM64( &TMP$2670$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2670$5 );
					__builtin_memset( &TMP$2671$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2671$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2671$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2671$5 );
				}
				label$2078:;
				label$2050:;
			}
		}
		goto label$2048;
		label$2049:;
		if( *(int64*)V2$1 != 5ll ) goto label$2079;
		{
			int64 TMP$2672$3;
			int64 TMP$2673$3;
			int64 TMP$2679$3;
			FBSTRING TMP$2686$3;
			FBSTRING TMP$2687$3;
			FBSTRING TMP$2688$3;
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 31ll) != 22ll ) goto label$2080;
			TMP$2672$3 = (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 2ll);
			goto label$3034;
			label$2080:;
			TMP$2672$3 = 0ll;
			label$3034:;
			if( TMP$2672$3 == 0ll ) goto label$2081;
			int64 vr$926 = FBGETOPTION( 0ll );
			TMP$2673$3 = (int64)-(vr$926 == 2ll);
			goto label$3035;
			label$2081:;
			TMP$2673$3 = 0ll;
			label$3035:;
			if( TMP$2673$3 == 0ll ) goto label$2083;
			{
				FBSTRING TMP$2674$4;
				FBSTRING TMP$2675$4;
				FBSTRING TMP$2676$4;
				__builtin_memset( &TMP$2676$4, 0, 24ll );
				FBSTRING* vr$929 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
				int64 vr$931 = fb_StrInstr( 1ll, (FBSTRING*)&OP2$1, (FBSTRING*)vr$929 );
				FBSTRING* vr$934 = fb_LEFT( (FBSTRING*)&OP2$1, vr$931 + -1ll );
				__builtin_memset( &TMP$2674$4, 0, 24ll );
				FBSTRING* vr$937 = fb_StrConcat( &TMP$2674$4, (void*)"mov rax, QWORD PTR ", 20ll, (void*)vr$934, -1ll );
				__builtin_memset( &TMP$2675$4, 0, 24ll );
				FBSTRING* vr$940 = fb_StrConcat( &TMP$2675$4, (void*)vr$937, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
				fb_StrAssign( (void*)&TMP$2676$4, -1ll, (void*)vr$940, -1ll, 0 );
				HWRITEASM64( &TMP$2676$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2676$4 );
			}
			goto label$2082;
			label$2083:;
			{
				FBSTRING TMP$2677$4;
				FBSTRING TMP$2678$4;
				__builtin_memset( &TMP$2678$4, 0, 24ll );
				__builtin_memset( &TMP$2677$4, 0, 24ll );
				FBSTRING* vr$948 = fb_StrConcat( &TMP$2677$4, (void*)"lea rax, ", 10ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2678$4, -1ll, (void*)vr$948, -1ll, 0 );
				HWRITEASM64( &TMP$2678$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2678$4 );
			}
			label$2082:;
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2084;
			int64 vr$952 = FBGETOPTION( 0ll );
			TMP$2679$3 = (int64)-(vr$952 == 2ll);
			goto label$3036;
			label$2084:;
			TMP$2679$3 = 0ll;
			label$3036:;
			if( TMP$2679$3 == 0ll ) goto label$2086;
			{
				int64 TMP$2680$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2087;
				TMP$2680$4 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) != 0ll);
				goto label$3037;
				label$2087:;
				TMP$2680$4 = 0ll;
				label$3037:;
				if( TMP$2680$4 == 0ll ) goto label$2089;
				{
					FBSTRING TMP$2681$5;
					FBSTRING TMP$2682$5;
					FBSTRING TMP$2683$5;
					FBSTRING TMP$2684$5;
					FBSTRING TMP$2685$5;
					int32 vr$959 = REG_FINDFREE( 999998, -1ll );
					TEMPO$1 = vr$959;
					fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)TEMPO$1 << (3ll & 63ll))), 0ll, 0 );
					*(int32*)((uint8*)REGHANDLE$ + ((int64)TEMPO$1 << (2ll & 63ll))) = -2;
					__builtin_memset( &TMP$2685$5, 0, 24ll );
					uint8* vr$967 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$2681$5, 0, 24ll );
					FBSTRING* vr$971 = fb_StrConcat( &TMP$2681$5, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
					__builtin_memset( &TMP$2682$5, 0, 24ll );
					FBSTRING* vr$974 = fb_StrConcat( &TMP$2682$5, (void*)vr$971, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$2683$5, 0, 24ll );
					FBSTRING* vr$977 = fb_StrConcat( &TMP$2683$5, (void*)vr$974, -1ll, (void*)vr$967, 0ll );
					__builtin_memset( &TMP$2684$5, 0, 24ll );
					FBSTRING* vr$980 = fb_StrConcat( &TMP$2684$5, (void*)vr$977, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
					fb_StrAssign( (void*)&TMP$2685$5, -1ll, (void*)vr$980, -1ll, 0 );
					HWRITEASM64( &TMP$2685$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2685$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[", 2ll, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
					fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)"]", 2ll, 0 );
				}
				label$2089:;
				label$2088:;
			}
			label$2086:;
			label$2085:;
			__builtin_memset( &TMP$2688$3, 0, 24ll );
			__builtin_memset( &TMP$2686$3, 0, 24ll );
			FBSTRING* vr$992 = fb_StrConcat( &TMP$2686$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2687$3, 0, 24ll );
			FBSTRING* vr$995 = fb_StrConcat( &TMP$2687$3, (void*)vr$992, -1ll, (void*)", rax", 6ll );
			fb_StrAssign( (void*)&TMP$2688$3, -1ll, (void*)vr$995, -1ll, 0 );
			HWRITEASM64( &TMP$2688$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2688$3 );
		}
		goto label$2048;
		label$2079:;
		{
			int64 TMP$2689$3;
			FBSTRING TMP$2694$3;
			FBSTRING TMP$2695$3;
			FBSTRING TMP$2696$3;
			FBSTRING TMP$2697$3;
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2090;
			int64 vr$999 = FBGETOPTION( 0ll );
			TMP$2689$3 = (int64)-(vr$999 == 2ll);
			goto label$3038;
			label$2090:;
			TMP$2689$3 = 0ll;
			label$3038:;
			if( TMP$2689$3 == 0ll ) goto label$2092;
			{
				int64 TMP$2690$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2093;
				TMP$2690$4 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) != 0ll);
				goto label$3039;
				label$2093:;
				TMP$2690$4 = 0ll;
				label$3039:;
				if( TMP$2690$4 == 0ll ) goto label$2095;
				{
					FBSTRING TMP$2691$5;
					FBSTRING TMP$2692$5;
					FBSTRING TMP$2693$5;
					__builtin_memset( &TMP$2693$5, 0, 24ll );
					uint8* vr$1008 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$2691$5, 0, 24ll );
					FBSTRING* vr$1011 = fb_StrConcat( &TMP$2691$5, (void*)"mov rax, ", 10ll, (void*)vr$1008, 0ll );
					__builtin_memset( &TMP$2692$5, 0, 24ll );
					FBSTRING* vr$1014 = fb_StrConcat( &TMP$2692$5, (void*)vr$1011, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
					fb_StrAssign( (void*)&TMP$2693$5, -1ll, (void*)vr$1014, -1ll, 0 );
					HWRITEASM64( &TMP$2693$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2693$5 );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[rax]", 6ll, 0 );
				}
				label$2095:;
				label$2094:;
			}
			label$2092:;
			label$2091:;
			__builtin_memset( &TMP$2697$3, 0, 24ll );
			__builtin_memset( &TMP$2694$3, 0, 24ll );
			FBSTRING* vr$1024 = fb_StrConcat( &TMP$2694$3, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
			__builtin_memset( &TMP$2695$3, 0, 24ll );
			FBSTRING* vr$1027 = fb_StrConcat( &TMP$2695$3, (void*)vr$1024, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$2696$3, 0, 24ll );
			FBSTRING* vr$1030 = fb_StrConcat( &TMP$2696$3, (void*)vr$1027, -1ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$2697$3, -1ll, (void*)vr$1030, -1ll, 0 );
			HWRITEASM64( &TMP$2697$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2697$3 );
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
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)V1$1 + 8ll) & 511ll;
	int64 LGT$1;
	__builtin_memset( &LGT$1, 0, 8ll );
	{
		$15IRVREGTYPE_ENUM TMP$2698$2;
		TMP$2698$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$2698$2 != 2ll ) goto label$2099;
		label$2100:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2098;
		label$2099:;
		if( TMP$2698$2 != 1ll ) goto label$2101;
		label$2102:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2104;
			{
				FBSTRING TMP$2699$4;
				FBSTRING TMP$2700$4;
				FBSTRING TMP$2701$4;
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$21 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$2699$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$2699$4, (void*)vr$21, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$2700$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$2700$4, (void*)vr$24, -1ll, (void*)vr$19, -1ll );
				__builtin_memset( &TMP$2701$4, 0, 24ll );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$2701$4, (void*)vr$27, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$30, -1ll, 0 );
			}
			goto label$2103;
			label$2104:;
			{
				FBSTRING TMP$2702$4;
				FBSTRING* vr$33 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$2702$4, 0, 24ll );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$2702$4, (void*)vr$33, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$36, -1ll, 0 );
			}
			label$2103:;
		}
		goto label$2098;
		label$2101:;
		if( TMP$2698$2 != 3ll ) goto label$2105;
		label$2106:;
		{
			FBSTRING TMP$2703$3;
			FBSTRING TMP$2704$3;
			FBSTRING TMP$2705$3;
			FBSTRING TMP$2706$3;
			FBSTRING TMP$2709$3;
			FBSTRING TMP$2710$3;
			int32 vr$41 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
			FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			__builtin_memset( &TMP$2703$3, 0, 24ll );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$2703$3, (void*)vr$45, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$2704$3, 0, 24ll );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$2704$3, (void*)vr$48, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$41 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$2705$3, 0, 24ll );
			FBSTRING* vr$54 = fb_StrConcat( &TMP$2705$3, (void*)vr$51, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$54, -1ll, 0 );
			__builtin_memset( &TMP$2706$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2706$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2706$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2706$3 );
			__builtin_memset( &TMP$2709$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2709$3, -1ll, (void*)"FOUND AN ERROR : in loadres OFS not handled", 44ll, 0 );
			HWRITEASM64( &TMP$2709$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2709$3 );
			__builtin_memset( &TMP$2710$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2710$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2710$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2710$3 );
		}
		goto label$2098;
		label$2105:;
		if( TMP$2698$2 != 4ll ) goto label$2107;
		label$2108:;
		{
			int32 vr$70 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$70 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$2098;
		label$2107:;
		{
			FBSTRING TMP$2711$3;
			FBSTRING TMP$2714$3;
			FBSTRING TMP$2715$3;
			__builtin_memset( &TMP$2711$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2711$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2711$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2711$3 );
			__builtin_memset( &TMP$2714$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2714$3, -1ll, (void*)"FOUND AN ERROR : in loadres typ not handled", 44ll, 0 );
			HWRITEASM64( &TMP$2714$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2714$3 );
			__builtin_memset( &TMP$2715$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2715$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2715$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2715$3 );
		}
		label$2109:;
		label$2098:;
	}
	int64 vr$86 = HISSTRUCTIN2REGS( V1$1 );
	if( vr$86 == 0ll ) goto label$2111;
	{
		int64 TMP$2716$2;
		FBSTRING TMP$2722$2;
		if( *(int64*)V1$1 != 1ll ) goto label$2112;
		TMP$2716$2 = (int64)-(((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) != 0ll);
		goto label$3040;
		label$2112:;
		TMP$2716$2 = -1ll;
		label$3040:;
		if( TMP$2716$2 == 0ll ) goto label$2114;
		{
			FBSTRING TMP$2717$3;
			FBSTRING TMP$2720$3;
			FBSTRING TMP$2721$3;
			__builtin_memset( &TMP$2717$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2717$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2717$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2717$3 );
			__builtin_memset( &TMP$2720$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2720$3, -1ll, (void*)"FOUND AN ERROR : IR_VREGTYPE not handled in emitloadres (linux)", 64ll, 0 );
			HWRITEASM64( &TMP$2720$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2720$3 );
			__builtin_memset( &TMP$2721$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$2721$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$2721$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2721$3 );
		}
		label$2114:;
		label$2113:;
		LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 80ll);
		FBSTRING* vr$114 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) + 8ll );
		__builtin_memset( &TMP$2722$2, 0, 24ll );
		FBSTRING* vr$117 = fb_StrConcat( &TMP$2722$2, (void*)vr$114, -1ll, (void*)"[rbp]", 6ll );
		fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$117, -1ll, 0 );
		{
			uint64 TMP$2723$3;
			TMP$2723$3 = *(uint64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 64ll) + 224ll);
			goto label$2116;
			label$2117:;
			{
				FBSTRING TMP$2724$4;
				FBSTRING TMP$2725$4;
				FBSTRING TMP$2727$4;
				FBSTRING TMP$2728$4;
				__builtin_memset( &TMP$2725$4, 0, 24ll );
				__builtin_memset( &TMP$2724$4, 0, 24ll );
				FBSTRING* vr$126 = fb_StrConcat( &TMP$2724$4, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2725$4, -1ll, (void*)vr$126, -1ll, 0 );
				HWRITEASM64( &TMP$2725$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2725$4 );
				__builtin_memset( &TMP$2728$4, 0, 24ll );
				__builtin_memset( &TMP$2727$4, 0, 24ll );
				FBSTRING* vr$134 = fb_StrConcat( &TMP$2727$4, (void*)"mov rdx, ", 10ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2728$4, -1ll, (void*)vr$134, -1ll, 0 );
				HWRITEASM64( &TMP$2728$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2728$4 );
			}
			goto label$2115;
			label$2118:;
			{
				FBSTRING TMP$2729$4;
				FBSTRING TMP$2730$4;
				__builtin_memset( &TMP$2730$4, 0, 24ll );
				__builtin_memset( &TMP$2729$4, 0, 24ll );
				FBSTRING* vr$142 = fb_StrConcat( &TMP$2729$4, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2730$4, -1ll, (void*)vr$142, -1ll, 0 );
				HWRITEASM64( &TMP$2730$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2730$4 );
				if( LGT$1 != 12ll ) goto label$2120;
				{
					FBSTRING TMP$2731$5;
					FBSTRING TMP$2732$5;
					__builtin_memset( &TMP$2732$5, 0, 24ll );
					__builtin_memset( &TMP$2731$5, 0, 24ll );
					FBSTRING* vr$150 = fb_StrConcat( &TMP$2731$5, (void*)"movss xmm0, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2732$5, -1ll, (void*)vr$150, -1ll, 0 );
					HWRITEASM64( &TMP$2732$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2732$5 );
				}
				goto label$2119;
				label$2120:;
				{
					FBSTRING TMP$2733$5;
					FBSTRING TMP$2734$5;
					__builtin_memset( &TMP$2734$5, 0, 24ll );
					__builtin_memset( &TMP$2733$5, 0, 24ll );
					FBSTRING* vr$158 = fb_StrConcat( &TMP$2733$5, (void*)"movsd xmm0, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2734$5, -1ll, (void*)vr$158, -1ll, 0 );
					HWRITEASM64( &TMP$2734$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2734$5 );
				}
				label$2119:;
			}
			goto label$2115;
			label$2121:;
			{
				FBSTRING TMP$2735$4;
				FBSTRING TMP$2736$4;
				FBSTRING TMP$2737$4;
				FBSTRING TMP$2738$4;
				FBSTRING TMP$2739$4;
				FBSTRING TMP$2740$4;
				__builtin_memset( &TMP$2736$4, 0, 24ll );
				__builtin_memset( &TMP$2735$4, 0, 24ll );
				FBSTRING* vr$166 = fb_StrConcat( &TMP$2735$4, (void*)"movsd xmm0, ", 13ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2736$4, -1ll, (void*)vr$166, -1ll, 0 );
				HWRITEASM64( &TMP$2736$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2736$4 );
				__builtin_memset( &TMP$2740$4, 0, 24ll );
				__builtin_memset( &TMP$2737$4, 0, 24ll );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$2737$4, (void*)"mov ", 5ll, *(void**)REGSTRQ$, 0ll );
				__builtin_memset( &TMP$2738$4, 0, 24ll );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$2738$4, (void*)vr$174, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2739$4, 0, 24ll );
				FBSTRING* vr$180 = fb_StrConcat( &TMP$2739$4, (void*)vr$177, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$2740$4, -1ll, (void*)vr$180, -1ll, 0 );
				HWRITEASM64( &TMP$2740$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2740$4 );
			}
			goto label$2115;
			label$2122:;
			{
				FBSTRING TMP$2741$4;
				FBSTRING TMP$2742$4;
				__builtin_memset( &TMP$2742$4, 0, 24ll );
				__builtin_memset( &TMP$2741$4, 0, 24ll );
				FBSTRING* vr$188 = fb_StrConcat( &TMP$2741$4, (void*)"movsd xmm0, ", 13ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2742$4, -1ll, (void*)vr$188, -1ll, 0 );
				HWRITEASM64( &TMP$2742$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2742$4 );
				if( LGT$1 != 12ll ) goto label$2124;
				{
					FBSTRING TMP$2744$5;
					FBSTRING TMP$2745$5;
					__builtin_memset( &TMP$2745$5, 0, 24ll );
					__builtin_memset( &TMP$2744$5, 0, 24ll );
					FBSTRING* vr$196 = fb_StrConcat( &TMP$2744$5, (void*)"movss xmm1, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2745$5, -1ll, (void*)vr$196, -1ll, 0 );
					HWRITEASM64( &TMP$2745$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2745$5 );
				}
				goto label$2123;
				label$2124:;
				{
					FBSTRING TMP$2747$5;
					FBSTRING TMP$2748$5;
					__builtin_memset( &TMP$2748$5, 0, 24ll );
					__builtin_memset( &TMP$2747$5, 0, 24ll );
					FBSTRING* vr$204 = fb_StrConcat( &TMP$2747$5, (void*)"movsd xmm1, ", 13ll, (void*)&OP2$1, -1ll );
					fb_StrAssign( (void*)&TMP$2748$5, -1ll, (void*)vr$204, -1ll, 0 );
					HWRITEASM64( &TMP$2748$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2748$5 );
				}
				label$2123:;
			}
			goto label$2115;
			label$2116:;
			static const void* tmp$3864[5ll] = {
				&&label$2117,
				&&label$2118,
				&&label$2115,
				&&label$2121,
				&&label$2122,
			};
			if( (TMP$2723$3 - 2ull) > 4ull ) goto label$2115;
			goto *tmp$3864[TMP$2723$3 - 2ull];
			label$2115:;
		}
	}
	goto label$2110;
	label$2111:;
	{
		int64 TMP$2749$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$2125;
		TMP$2749$2 = 24ll;
		goto label$3041;
		label$2125:;
		TMP$2749$2 = DTYPE$1 & 31ll;
		label$3041:;
		if( TMP$2749$2 != 24ll ) goto label$2127;
		{
			DTYPE$1 = 8ll;
			label$2127:;
		}
		int32 vr$211 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$211 == 0ll ) goto label$2129;
		{
			EMITOP3_OP4( &OP3$1 );
			label$2129:;
		}
		{
			if( DTYPE$1 != 16ll ) goto label$2131;
			label$2132:;
			{
				FBSTRING TMP$2750$4;
				FBSTRING TMP$2751$4;
				__builtin_memset( &TMP$2751$4, 0, 24ll );
				__builtin_memset( &TMP$2750$4, 0, 24ll );
				FBSTRING* vr$218 = fb_StrConcat( &TMP$2750$4, (void*)"movq xmm0, ", 12ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2751$4, -1ll, (void*)vr$218, -1ll, 0 );
				HWRITEASM64( &TMP$2751$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2751$4 );
			}
			goto label$2130;
			label$2131:;
			if( DTYPE$1 != 15ll ) goto label$2133;
			label$2134:;
			{
				FBSTRING TMP$2752$4;
				FBSTRING TMP$2753$4;
				__builtin_memset( &TMP$2753$4, 0, 24ll );
				__builtin_memset( &TMP$2752$4, 0, 24ll );
				FBSTRING* vr$226 = fb_StrConcat( &TMP$2752$4, (void*)"movd xmm0, ", 12ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2753$4, -1ll, (void*)vr$226, -1ll, 0 );
				HWRITEASM64( &TMP$2753$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2753$4 );
			}
			goto label$2130;
			label$2133:;
			if( DTYPE$1 == 8ll ) goto label$2136;
			label$2137:;
			if( DTYPE$1 == 9ll ) goto label$2136;
			label$2138:;
			if( DTYPE$1 == 13ll ) goto label$2136;
			label$2139:;
			if( DTYPE$1 == 14ll ) goto label$2136;
			label$2140:;
			if( DTYPE$1 != 10ll ) goto label$2135;
			label$2136:;
			{
				FBSTRING TMP$2754$4;
				FBSTRING TMP$2755$4;
				FBSTRING TMP$2756$4;
				FBSTRING TMP$2757$4;
				__builtin_memset( &TMP$2757$4, 0, 24ll );
				__builtin_memset( &TMP$2754$4, 0, 24ll );
				FBSTRING* vr$234 = fb_StrConcat( &TMP$2754$4, (void*)"mov ", 5ll, *(void**)REGSTRQ$, 0ll );
				__builtin_memset( &TMP$2755$4, 0, 24ll );
				FBSTRING* vr$237 = fb_StrConcat( &TMP$2755$4, (void*)vr$234, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2756$4, 0, 24ll );
				FBSTRING* vr$240 = fb_StrConcat( &TMP$2756$4, (void*)vr$237, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2757$4, -1ll, (void*)vr$240, -1ll, 0 );
				HWRITEASM64( &TMP$2757$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2757$4 );
			}
			goto label$2130;
			label$2135:;
			if( DTYPE$1 == 11ll ) goto label$2142;
			label$2143:;
			if( DTYPE$1 != 12ll ) goto label$2141;
			label$2142:;
			{
				FBSTRING TMP$2758$4;
				FBSTRING TMP$2759$4;
				FBSTRING TMP$2760$4;
				FBSTRING TMP$2761$4;
				__builtin_memset( &TMP$2761$4, 0, 24ll );
				__builtin_memset( &TMP$2758$4, 0, 24ll );
				FBSTRING* vr$248 = fb_StrConcat( &TMP$2758$4, (void*)"mov ", 5ll, *(void**)REGSTRD$, 0ll );
				__builtin_memset( &TMP$2759$4, 0, 24ll );
				FBSTRING* vr$251 = fb_StrConcat( &TMP$2759$4, (void*)vr$248, -1ll, (void*)", DWORD PTR ", 13ll );
				__builtin_memset( &TMP$2760$4, 0, 24ll );
				FBSTRING* vr$254 = fb_StrConcat( &TMP$2760$4, (void*)vr$251, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2761$4, -1ll, (void*)vr$254, -1ll, 0 );
				HWRITEASM64( &TMP$2761$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2761$4 );
			}
			goto label$2130;
			label$2141:;
			if( DTYPE$1 == 5ll ) goto label$2145;
			label$2146:;
			if( DTYPE$1 != 6ll ) goto label$2144;
			label$2145:;
			{
				FBSTRING TMP$2762$4;
				FBSTRING TMP$2763$4;
				FBSTRING TMP$2764$4;
				FBSTRING TMP$2765$4;
				__builtin_memset( &TMP$2765$4, 0, 24ll );
				__builtin_memset( &TMP$2762$4, 0, 24ll );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$2762$4, (void*)"movzx ", 7ll, *(void**)REGSTRQ$, 0ll );
				__builtin_memset( &TMP$2763$4, 0, 24ll );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$2763$4, (void*)vr$262, -1ll, (void*)", WORD PTR ", 12ll );
				__builtin_memset( &TMP$2764$4, 0, 24ll );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$2764$4, (void*)vr$265, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2765$4, -1ll, (void*)vr$268, -1ll, 0 );
				HWRITEASM64( &TMP$2765$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2765$4 );
			}
			goto label$2130;
			label$2144:;
			if( DTYPE$1 == 2ll ) goto label$2148;
			label$2149:;
			if( DTYPE$1 == 3ll ) goto label$2148;
			label$2150:;
			if( DTYPE$1 == 1ll ) goto label$2148;
			label$2151:;
			if( DTYPE$1 != 4ll ) goto label$2147;
			label$2148:;
			{
				FBSTRING TMP$2766$4;
				FBSTRING TMP$2767$4;
				FBSTRING TMP$2768$4;
				FBSTRING TMP$2769$4;
				__builtin_memset( &TMP$2769$4, 0, 24ll );
				__builtin_memset( &TMP$2766$4, 0, 24ll );
				FBSTRING* vr$276 = fb_StrConcat( &TMP$2766$4, (void*)"movzx ", 7ll, *(void**)REGSTRQ$, 0ll );
				__builtin_memset( &TMP$2767$4, 0, 24ll );
				FBSTRING* vr$279 = fb_StrConcat( &TMP$2767$4, (void*)vr$276, -1ll, (void*)", BYTE PTR ", 12ll );
				__builtin_memset( &TMP$2768$4, 0, 24ll );
				FBSTRING* vr$282 = fb_StrConcat( &TMP$2768$4, (void*)vr$279, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2769$4, -1ll, (void*)vr$282, -1ll, 0 );
				HWRITEASM64( &TMP$2769$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2769$4 );
			}
			goto label$2130;
			label$2147:;
			{
				FBSTRING TMP$2770$4;
				FBSTRING TMP$2774$4;
				FBSTRING TMP$2775$4;
				FBSTRING TMP$2776$4;
				__builtin_memset( &TMP$2770$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2770$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2770$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2770$4 );
				__builtin_memset( &TMP$2775$4, 0, 24ll );
				FBSTRING* vr$292 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 8ll) );
				__builtin_memset( &TMP$2774$4, 0, 24ll );
				FBSTRING* vr$295 = fb_StrConcat( &TMP$2774$4, (void*)"FOUND AN ERROR : in loadres datatype not handled = ", 52ll, (void*)vr$292, -1ll );
				fb_StrAssign( (void*)&TMP$2775$4, -1ll, (void*)vr$295, -1ll, 0 );
				HWRITEASM64( &TMP$2775$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2775$4 );
				__builtin_memset( &TMP$2776$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2776$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2776$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2776$4 );
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

static void _EMITADDR( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	int64 TMP$2782$1;
	label$2153:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	if( *(int64*)VR$1 == 4ll ) goto label$2156;
	{
		FBSTRING TMP$2777$2;
		FBSTRING TMP$2780$2;
		FBSTRING TMP$2781$2;
		__builtin_memset( &TMP$2777$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2777$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$2777$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2777$2 );
		__builtin_memset( &TMP$2780$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2780$2, -1ll, (void*)"FOUND AN ERROR : vr in addrof/deref not a reg", 46ll, 0 );
		HWRITEASM64( &TMP$2780$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2780$2 );
		__builtin_memset( &TMP$2781$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$2781$2, -1ll, (void*)"", 1ll, 0 );
		HWRITEASM64( &TMP$2781$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$2781$2 );
		fb_StrDelete( (FBSTRING*)&OP3$1 );
		fb_StrDelete( (FBSTRING*)&OP1$1 );
		goto label$2154;
	}
	label$2156:;
	label$2155:;
	if( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2157;
	$19FB_CVA_LIST_TYPEDEF vr$22 = SYMBGETVALISTTYPE( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 56ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 64ll) );
	TMP$2782$1 = (int64)-((struct $8FBSYMBOL*)((int64)-(vr$22 == 3ll) & (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 65536ll) != 0ll)) != (struct $8FBSYMBOL*)0ull);
	goto label$3042;
	label$2157:;
	TMP$2782$1 = 0ll;
	label$3042:;
	if( TMP$2782$1 == 0ll ) goto label$2159;
	{
		if( OP$1 != 22ll ) goto label$2161;
		{
			OP$1 = 76ll;
		}
		label$2161:;
		label$2160:;
	}
	label$2159:;
	label$2158:;
	REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
	{
		if( OP$1 != 22ll ) goto label$2163;
		label$2164:;
		{
			FBSTRING TMP$2804$3;
			FBSTRING TMP$2805$3;
			FBSTRING TMP$2806$3;
			FBSTRING TMP$2807$3;
			{
				$15IRVREGTYPE_ENUM TMP$2783$4;
				TMP$2783$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2783$4 != 2ll ) goto label$2166;
				label$2167:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2165;
				label$2166:;
				if( TMP$2783$4 != 1ll ) goto label$2168;
				label$2169:;
				{
					if( (((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) | (int64)-(*(int64*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) == 7ll)) == 0ll ) goto label$2171;
					{
						FBSTRING TMP$2784$6;
						FBSTRING TMP$2785$6;
						FBSTRING TMP$2786$6;
						FBSTRING* vr$49 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						uint8* vr$51 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
						__builtin_memset( &TMP$2784$6, 0, 24ll );
						FBSTRING* vr$54 = fb_StrConcat( &TMP$2784$6, (void*)vr$51, 0ll, (void*)"[rip+", 6ll );
						__builtin_memset( &TMP$2785$6, 0, 24ll );
						FBSTRING* vr$57 = fb_StrConcat( &TMP$2785$6, (void*)vr$54, -1ll, (void*)vr$49, -1ll );
						__builtin_memset( &TMP$2786$6, 0, 24ll );
						FBSTRING* vr$60 = fb_StrConcat( &TMP$2786$6, (void*)vr$57, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$60, -1ll, 0 );
					}
					goto label$2170;
					label$2171:;
					{
						FBSTRING TMP$2787$6;
						FBSTRING* vr$63 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						__builtin_memset( &TMP$2787$6, 0, 24ll );
						FBSTRING* vr$66 = fb_StrConcat( &TMP$2787$6, (void*)vr$63, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$66, -1ll, 0 );
					}
					label$2170:;
				}
				goto label$2165;
				label$2168:;
				if( TMP$2783$4 != 3ll ) goto label$2172;
				label$2173:;
				{
					FBSTRING TMP$2788$5;
					FBSTRING TMP$2789$5;
					FBSTRING TMP$2790$5;
					int32 vr$71 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
					FBSTRING* vr$75 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					__builtin_memset( &TMP$2788$5, 0, 24ll );
					FBSTRING* vr$78 = fb_StrConcat( &TMP$2788$5, (void*)vr$75, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$2789$5, 0, 24ll );
					FBSTRING* vr$81 = fb_StrConcat( &TMP$2789$5, (void*)vr$78, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$71 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2790$5, 0, 24ll );
					FBSTRING* vr$84 = fb_StrConcat( &TMP$2790$5, (void*)vr$81, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$84, -1ll, 0 );
				}
				goto label$2165;
				label$2172:;
				if( TMP$2783$4 != 5ll ) goto label$2174;
				label$2175:;
				{
					FBSTRING TMP$2791$5;
					FBSTRING TMP$2792$5;
					FBSTRING TMP$2793$5;
					FBSTRING TMP$2794$5;
					FBSTRING TMP$2797$5;
					FBSTRING TMP$2798$5;
					FBSTRING* vr$87 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					uint8* vr$89 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$2791$5, 0, 24ll );
					FBSTRING* vr$92 = fb_StrConcat( &TMP$2791$5, (void*)vr$89, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$2792$5, 0, 24ll );
					FBSTRING* vr$95 = fb_StrConcat( &TMP$2792$5, (void*)vr$92, -1ll, (void*)vr$87, -1ll );
					__builtin_memset( &TMP$2793$5, 0, 24ll );
					FBSTRING* vr$98 = fb_StrConcat( &TMP$2793$5, (void*)vr$95, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$98, -1ll, 0 );
					__builtin_memset( &TMP$2794$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2794$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2794$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2794$5 );
					__builtin_memset( &TMP$2797$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2797$5, -1ll, (void*)"FOUND AN ERROR : in emitaddr OFS not handled", 45ll, 0 );
					HWRITEASM64( &TMP$2797$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2797$5 );
					__builtin_memset( &TMP$2798$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2798$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2798$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2798$5 );
				}
				goto label$2165;
				label$2174:;
				{
					FBSTRING TMP$2799$5;
					FBSTRING TMP$2802$5;
					FBSTRING TMP$2803$5;
					__builtin_memset( &TMP$2799$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2799$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2799$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2799$5 );
					__builtin_memset( &TMP$2802$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2802$5, -1ll, (void*)"FOUND AN ERROR : typ in addrof not handled", 43ll, 0 );
					HWRITEASM64( &TMP$2802$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2802$5 );
					__builtin_memset( &TMP$2803$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2803$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2803$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2803$5 );
				}
				label$2176:;
				label$2165:;
			}
			int32 vr$125 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$125 == 0ll ) goto label$2178;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2178:;
			}
			__builtin_memset( &TMP$2807$3, 0, 24ll );
			int32 vr$132 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
			__builtin_memset( &TMP$2804$3, 0, 24ll );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$2804$3, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$132 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$2805$3, 0, 24ll );
			FBSTRING* vr$140 = fb_StrConcat( &TMP$2805$3, (void*)vr$137, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$2806$3, 0, 24ll );
			FBSTRING* vr$143 = fb_StrConcat( &TMP$2806$3, (void*)vr$140, -1ll, (void*)&OP1$1, -1ll );
			fb_StrAssign( (void*)&TMP$2807$3, -1ll, (void*)vr$143, -1ll, 0 );
			HWRITEASM64( &TMP$2807$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$2807$3 );
		}
		goto label$2162;
		label$2163:;
		if( OP$1 != 76ll ) goto label$2179;
		label$2180:;
		{
			{
				$15IRVREGTYPE_ENUM TMP$2808$4;
				TMP$2808$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$2808$4 != 2ll ) goto label$2182;
				label$2183:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
					int32 vr$151 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
					if( (int64)vr$151 == 0ll ) goto label$2185;
					{
						EMITOP3_OP4( &OP3$1 );
						label$2185:;
					}
				}
				goto label$2181;
				label$2182:;
				if( TMP$2808$4 != 1ll ) goto label$2186;
				label$2187:;
				{
					if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2189;
					{
						int64 TMP$2809$6;
						int64 TMP$2810$6;
						if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 8ll) == 0ll ) goto label$2190;
						TMP$2809$6 = (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 2ll);
						goto label$3043;
						label$2190:;
						TMP$2809$6 = 0ll;
						label$3043:;
						if( TMP$2809$6 == 0ll ) goto label$2191;
						int64 vr$167 = FBGETOPTION( 0ll );
						TMP$2810$6 = (int64)-(vr$167 == 2ll);
						goto label$3044;
						label$2191:;
						TMP$2810$6 = 0ll;
						label$3044:;
						if( TMP$2810$6 == 0ll ) goto label$2193;
						{
							FBSTRING TMP$2811$7;
							FBSTRING TMP$2812$7;
							FBSTRING TMP$2813$7;
							__builtin_memset( &TMP$2813$7, 0, 24ll );
							uint8* vr$171 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
							__builtin_memset( &TMP$2811$7, 0, 24ll );
							FBSTRING* vr$174 = fb_StrConcat( &TMP$2811$7, (void*)"mov rax, ", 10ll, (void*)vr$171, 0ll );
							__builtin_memset( &TMP$2812$7, 0, 24ll );
							FBSTRING* vr$177 = fb_StrConcat( &TMP$2812$7, (void*)vr$174, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
							fb_StrAssign( (void*)&TMP$2813$7, -1ll, (void*)vr$177, -1ll, 0 );
							HWRITEASM64( &TMP$2813$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$2813$7 );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[rax]", 6ll, 0 );
						}
						goto label$2192;
						label$2193:;
						{
							FBSTRING TMP$2814$7;
							FBSTRING TMP$2815$7;
							FBSTRING TMP$2816$7;
							FBSTRING* vr$183 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
							uint8* vr$185 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
							__builtin_memset( &TMP$2814$7, 0, 24ll );
							FBSTRING* vr$188 = fb_StrConcat( &TMP$2814$7, (void*)vr$185, 0ll, (void*)"[rip+", 6ll );
							__builtin_memset( &TMP$2815$7, 0, 24ll );
							FBSTRING* vr$191 = fb_StrConcat( &TMP$2815$7, (void*)vr$188, -1ll, (void*)vr$183, -1ll );
							__builtin_memset( &TMP$2816$7, 0, 24ll );
							FBSTRING* vr$194 = fb_StrConcat( &TMP$2816$7, (void*)vr$191, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$194, -1ll, 0 );
						}
						label$2192:;
					}
					goto label$2188;
					label$2189:;
					{
						FBSTRING TMP$2817$6;
						FBSTRING* vr$197 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						__builtin_memset( &TMP$2817$6, 0, 24ll );
						FBSTRING* vr$200 = fb_StrConcat( &TMP$2817$6, (void*)vr$197, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$200, -1ll, 0 );
					}
					label$2188:;
				}
				goto label$2181;
				label$2186:;
				if( TMP$2808$4 != 3ll ) goto label$2194;
				label$2195:;
				{
					FBSTRING TMP$2818$5;
					FBSTRING TMP$2819$5;
					FBSTRING TMP$2820$5;
					int32 vr$205 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
					FBSTRING* vr$209 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					__builtin_memset( &TMP$2818$5, 0, 24ll );
					FBSTRING* vr$212 = fb_StrConcat( &TMP$2818$5, (void*)vr$209, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$2819$5, 0, 24ll );
					FBSTRING* vr$215 = fb_StrConcat( &TMP$2819$5, (void*)vr$212, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$205 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2820$5, 0, 24ll );
					FBSTRING* vr$218 = fb_StrConcat( &TMP$2820$5, (void*)vr$215, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$218, -1ll, 0 );
				}
				goto label$2181;
				label$2194:;
				if( TMP$2808$4 != 5ll ) goto label$2196;
				label$2197:;
				{
					FBSTRING TMP$2821$5;
					FBSTRING TMP$2822$5;
					FBSTRING TMP$2823$5;
					FBSTRING* vr$221 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					uint8* vr$223 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$2821$5, 0, 24ll );
					FBSTRING* vr$226 = fb_StrConcat( &TMP$2821$5, (void*)vr$223, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$2822$5, 0, 24ll );
					FBSTRING* vr$229 = fb_StrConcat( &TMP$2822$5, (void*)vr$226, -1ll, (void*)vr$221, -1ll );
					__builtin_memset( &TMP$2823$5, 0, 24ll );
					FBSTRING* vr$232 = fb_StrConcat( &TMP$2823$5, (void*)vr$229, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$232, -1ll, 0 );
				}
				goto label$2181;
				label$2196:;
				if( TMP$2808$4 != 4ll ) goto label$2198;
				label$2199:;
				{
					FBSTRING TMP$2824$5;
					FBSTRING TMP$2825$5;
					int32 vr$236 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
					__builtin_memset( &TMP$2824$5, 0, 24ll );
					FBSTRING* vr$241 = fb_StrConcat( &TMP$2824$5, (void*)"[", 2ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$236 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2825$5, 0, 24ll );
					FBSTRING* vr$244 = fb_StrConcat( &TMP$2825$5, (void*)vr$241, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$244, -1ll, 0 );
				}
				goto label$2181;
				label$2198:;
				{
					FBSTRING TMP$2826$5;
					FBSTRING TMP$2829$5;
					FBSTRING TMP$2830$5;
					__builtin_memset( &TMP$2826$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2826$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2826$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2826$5 );
					__builtin_memset( &TMP$2829$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2829$5, -1ll, (void*)"FOUND AN ERROR : typ in deref not handled", 42ll, 0 );
					HWRITEASM64( &TMP$2829$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2829$5 );
					__builtin_memset( &TMP$2830$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$2830$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$2830$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2830$5 );
				}
				label$2200:;
				label$2181:;
			}
			if( *(int64*)V1$1 != 5ll ) goto label$2202;
			{
				FBSTRING TMP$2831$4;
				FBSTRING TMP$2832$4;
				FBSTRING TMP$2833$4;
				FBSTRING TMP$2834$4;
				__builtin_memset( &TMP$2834$4, 0, 24ll );
				int32 vr$263 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
				__builtin_memset( &TMP$2831$4, 0, 24ll );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$2831$4, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$263 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2832$4, 0, 24ll );
				FBSTRING* vr$271 = fb_StrConcat( &TMP$2832$4, (void*)vr$268, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2833$4, 0, 24ll );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$2833$4, (void*)vr$271, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2834$4, -1ll, (void*)vr$274, -1ll, 0 );
				HWRITEASM64( &TMP$2834$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2834$4 );
			}
			goto label$2201;
			label$2202:;
			{
				FBSTRING TMP$2835$4;
				FBSTRING TMP$2836$4;
				FBSTRING TMP$2837$4;
				FBSTRING TMP$2838$4;
				__builtin_memset( &TMP$2838$4, 0, 24ll );
				int32 vr$282 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
				__builtin_memset( &TMP$2835$4, 0, 24ll );
				FBSTRING* vr$287 = fb_StrConcat( &TMP$2835$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$282 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2836$4, 0, 24ll );
				FBSTRING* vr$290 = fb_StrConcat( &TMP$2836$4, (void*)vr$287, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$2837$4, 0, 24ll );
				FBSTRING* vr$293 = fb_StrConcat( &TMP$2837$4, (void*)vr$290, -1ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$2838$4, -1ll, (void*)vr$293, -1ll, 0 );
				HWRITEASM64( &TMP$2838$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2838$4 );
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

static void HDOCALL( struct $8FBSYMBOL* PROC$1, FBSTRING* PNAME$1, FBSTRING* FIRSTMOV$1, struct $6IRVREG* VR$1, int64 LEVEL$1, boolean VARIADIC$1, boolean CALLPTR$1 )
{
	int64 TMP$2848$1;
	int64 TMP$3233$1;
	label$2213:;
	int64 REG2$1;
	__builtin_memset( &REG2$1, 0, 8ll );
	int64 CPTARG$1;
	__builtin_memset( &CPTARG$1, 0, 8ll );
	int64 CPTINT$1;
	__builtin_memset( &CPTINT$1, 0, 8ll );
	int64 CPTFLOAT$1;
	__builtin_memset( &CPTFLOAT$1, 0, 8ll );
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* V2$1;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 24ll );
	boolean TOSTACK$1;
	__builtin_memset( &TOSTACK$1, 0, 1ll );
	int64 PARAMTYPE$1;
	__builtin_memset( &PARAMTYPE$1, 0, 8ll );
	int64 LGT$1;
	__builtin_memset( &LGT$1, 0, 8ll );
	int64 OFST$1;
	__builtin_memset( &OFST$1, 0, 8ll );
	FBSTRING PUSHSTR$1[301];
	__builtin_memset( (FBSTRING*)PUSHSTR$1, 0, 7224ll );
	struct $8FBARRAY1I8FBSTRINGE {
		FBSTRING* DATA;
		FBSTRING* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I8FBSTRINGE ) == 72 );
	struct $8FBARRAY1I8FBSTRINGE tmp$2847$1;
	*(FBSTRING**)&tmp$2847$1 = (FBSTRING*)PUSHSTR$1;
	*(FBSTRING**)((uint8*)&tmp$2847$1 + 8ll) = (FBSTRING*)PUSHSTR$1;
	*(int64*)((uint8*)&tmp$2847$1 + 16ll) = 7224ll;
	*(int64*)((uint8*)&tmp$2847$1 + 24ll) = 24ll;
	*(int64*)((uint8*)&tmp$2847$1 + 32ll) = 1ll;
	*(int64*)((uint8*)&tmp$2847$1 + 40ll) = 49ll;
	*(int64*)((uint8*)&tmp$2847$1 + 48ll) = 301ll;
	*(int64*)((uint8*)&tmp$2847$1 + 56ll) = 0ll;
	*(int64*)((uint8*)&tmp$2847$1 + 64ll) = 300ll;
	int64 PUSHNBSTR$1;
	__builtin_memset( &PUSHNBSTR$1, 0, 8ll );
	int64 PUSHSIZE$1;
	__builtin_memset( &PUSHSIZE$1, 0, 8ll );
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 8ll );
	$15FB_STRUCT_INREG RETIN2REGS$1;
	__builtin_memset( &RETIN2REGS$1, 0, 8ll );
	*(boolean*)((uint8*)&CTX$ + 257ll) = (boolean)1ll;
	if( CALLPTR$1 == (boolean)0ll ) goto label$2216;
	{
		REG_CALLPTR( PNAME$1, FIRSTMOV$1 );
		label$2216:;
	}
	*(int64*)((uint8*)&CTX$ + 216ll) = *(int64*)((uint8*)&CTX$ + 192ll) + 104ll;
	*(int64*)((uint8*)&CTX$ + 208ll) = *(int64*)((uint8*)&CTX$ + 216ll);
	void* vr$21 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll) );
	ARG$1 = (struct $9IRCALLARG*)vr$21;
	label$2217:;
	if( ARG$1 == (struct $9IRCALLARG*)0ull ) goto label$2219;
	TMP$2848$1 = (int64)-((struct $9IRCALLARG*)(int64)-(*(int64*)((uint8*)ARG$1 + 16ll) == LEVEL$1) != (struct $9IRCALLARG*)0ull);
	goto label$3045;
	label$2219:;
	TMP$2848$1 = 0ll;
	label$3045:;
	if( TMP$2848$1 == 0ll ) goto label$2218;
	{
		int64 TMP$2938$2;
		void* vr$25 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$25;
		V2$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 8ll);
		fb_StrAssign( (void*)&OP3$1, -1ll, (void*)"", 1ll, 0 );
		REG2$1 = -1ll;
		$19FB_CVA_LIST_TYPEDEF vr$33 = SYMBGETVALISTTYPE( *(int64*)((uint8*)V2$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) );
		if( ((int64)-((*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll) & (int64)-(vr$33 == 3ll)) == 0ll ) goto label$2221;
		{
			struct $6IRVREG* vr$36 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
			TEMPO1$1 = vr$36;
			_EMITADDR( 22ll, V2$1, TEMPO1$1 );
			__builtin_memcpy( V2$1, TEMPO1$1, 120 );
		}
		label$2221:;
		label$2220:;
		DTYPE$1 = *(int64*)((uint8*)V2$1 + 8ll) & 511ll;
		{
			$15IRVREGTYPE_ENUM TMP$2849$3;
			TMP$2849$3 = *($15IRVREGTYPE_ENUM*)V2$1;
			if( TMP$2849$3 != 2ll ) goto label$2223;
			label$2224:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$2226;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$2228;
					{
						if( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) == -1ll ) goto label$2230;
						{
							FBSTRING TMP$2850$7;
							FBSTRING TMP$2851$7;
							FBSTRING TMP$2852$7;
							int32 vr$48 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
							REG2$1 = (int64)vr$48;
							FBSTRING* vr$52 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
							__builtin_memset( &TMP$2850$7, 0, 24ll );
							FBSTRING* vr$55 = fb_StrConcat( &TMP$2850$7, (void*)vr$52, -1ll, (void*)"[", 2ll );
							__builtin_memset( &TMP$2851$7, 0, 24ll );
							FBSTRING* vr$58 = fb_StrConcat( &TMP$2851$7, (void*)vr$55, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$2852$7, 0, 24ll );
							FBSTRING* vr$61 = fb_StrConcat( &TMP$2852$7, (void*)vr$58, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$61, -1ll, 0 );
						}
						goto label$2229;
						label$2230:;
						{
							FBSTRING TMP$2853$7;
							FBSTRING TMP$2854$7;
							FBSTRING TMP$2855$7;
							FBSTRING TMP$2856$7;
							FBSTRING TMP$2857$7;
							FBSTRING TMP$2858$7;
							FBSTRING TMP$2859$7;
							FBSTRING TMP$2860$7;
							int32 vr$67 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 80ll) + 24ll) );
							REG2$1 = (int64)vr$67;
							__builtin_memset( &TMP$2853$7, 0, 24ll );
							FBSTRING* vr$73 = fb_StrConcat( &TMP$2853$7, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$2854$7, 0, 24ll );
							FBSTRING* vr$76 = fb_StrConcat( &TMP$2854$7, (void*)vr$73, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2855$7, 0, 24ll );
							FBSTRING* vr$79 = fb_StrConcat( &TMP$2855$7, (void*)vr$76, -1ll, (void*)"[", 2ll );
							__builtin_memset( &TMP$2856$7, 0, 24ll );
							FBSTRING* vr$82 = fb_StrConcat( &TMP$2856$7, (void*)vr$79, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$2857$7, 0, 24ll );
							FBSTRING* vr$85 = fb_StrConcat( &TMP$2857$7, (void*)vr$82, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$85, -1ll, 0 );
							FBSTRING* vr$89 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
							__builtin_memset( &TMP$2858$7, 0, 24ll );
							FBSTRING* vr$92 = fb_StrConcat( &TMP$2858$7, (void*)vr$89, -1ll, (void*)"[", 2ll );
							__builtin_memset( &TMP$2859$7, 0, 24ll );
							FBSTRING* vr$95 = fb_StrConcat( &TMP$2859$7, (void*)vr$92, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$2860$7, 0, 24ll );
							FBSTRING* vr$98 = fb_StrConcat( &TMP$2860$7, (void*)vr$95, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$98, -1ll, 0 );
						}
						label$2229:;
					}
					goto label$2227;
					label$2228:;
					{
						uint8* vr$100 = REG_TEMPO(  );
						fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$100, 0ll, 0 );
						if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2232;
						{
							FBSTRING TMP$2861$7;
							FBSTRING TMP$2862$7;
							FBSTRING TMP$2863$7;
							FBSTRING TMP$2864$7;
							FBSTRING TMP$2865$7;
							FBSTRING TMP$2866$7;
							FBSTRING TMP$2868$7;
							FBSTRING TMP$2869$7;
							FBSTRING TMP$2870$7;
							FBSTRING* vr$115 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 64ll) );
							uint8* vr$118 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) );
							__builtin_memset( &TMP$2861$7, 0, 24ll );
							FBSTRING* vr$122 = fb_StrConcat( &TMP$2861$7, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2862$7, 0, 24ll );
							FBSTRING* vr$125 = fb_StrConcat( &TMP$2862$7, (void*)vr$122, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2863$7, 0, 24ll );
							FBSTRING* vr$128 = fb_StrConcat( &TMP$2863$7, (void*)vr$125, -1ll, (void*)vr$118, 0ll );
							__builtin_memset( &TMP$2864$7, 0, 24ll );
							FBSTRING* vr$131 = fb_StrConcat( &TMP$2864$7, (void*)vr$128, -1ll, (void*)"[rip+", 6ll );
							__builtin_memset( &TMP$2865$7, 0, 24ll );
							FBSTRING* vr$134 = fb_StrConcat( &TMP$2865$7, (void*)vr$131, -1ll, (void*)vr$115, -1ll );
							__builtin_memset( &TMP$2866$7, 0, 24ll );
							FBSTRING* vr$137 = fb_StrConcat( &TMP$2866$7, (void*)vr$134, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$137, -1ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)"\x0D\x0A", 3ll, 0 );
							FBSTRING* vr$141 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)vr$141, -1ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)"mov ", 5ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)", ", 3ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)"[", 2ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)"]", 2ll, 0 );
							fb_StrConcatAssign( (void*)&OP3$1, -1ll, (void*)" #NO", 5ll, 0 );
							FBSTRING* vr$154 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
							__builtin_memset( &TMP$2868$7, 0, 24ll );
							FBSTRING* vr$157 = fb_StrConcat( &TMP$2868$7, (void*)vr$154, -1ll, (void*)"[", 2ll );
							__builtin_memset( &TMP$2869$7, 0, 24ll );
							FBSTRING* vr$160 = fb_StrConcat( &TMP$2869$7, (void*)vr$157, -1ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2870$7, 0, 24ll );
							FBSTRING* vr$163 = fb_StrConcat( &TMP$2870$7, (void*)vr$160, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$163, -1ll, 0 );
						}
						goto label$2231;
						label$2232:;
						{
							FBSTRING TMP$2871$7;
							FBSTRING TMP$2872$7;
							FBSTRING TMP$2873$7;
							FBSTRING TMP$2874$7;
							FBSTRING TMP$2875$7;
							FBSTRING TMP$2876$7;
							FBSTRING TMP$2877$7;
							FBSTRING* vr$167 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 64ll) );
							__builtin_memset( &TMP$2871$7, 0, 24ll );
							FBSTRING* vr$171 = fb_StrConcat( &TMP$2871$7, (void*)"mov ", 5ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2872$7, 0, 24ll );
							FBSTRING* vr$174 = fb_StrConcat( &TMP$2872$7, (void*)vr$171, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2873$7, 0, 24ll );
							FBSTRING* vr$177 = fb_StrConcat( &TMP$2873$7, (void*)vr$174, -1ll, (void*)vr$167, -1ll );
							__builtin_memset( &TMP$2874$7, 0, 24ll );
							FBSTRING* vr$180 = fb_StrConcat( &TMP$2874$7, (void*)vr$177, -1ll, (void*)"[rbp]", 6ll );
							fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$180, -1ll, 0 );
							FBSTRING* vr$184 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
							__builtin_memset( &TMP$2875$7, 0, 24ll );
							FBSTRING* vr$187 = fb_StrConcat( &TMP$2875$7, (void*)vr$184, -1ll, (void*)"[", 2ll );
							__builtin_memset( &TMP$2876$7, 0, 24ll );
							FBSTRING* vr$190 = fb_StrConcat( &TMP$2876$7, (void*)vr$187, -1ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2877$7, 0, 24ll );
							FBSTRING* vr$193 = fb_StrConcat( &TMP$2877$7, (void*)vr$190, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$193, -1ll, 0 );
						}
						label$2231:;
					}
					label$2227:;
				}
				goto label$2225;
				label$2226:;
				{
					uint8* vr$195 = REG_TEMPO(  );
					fb_StrAssign( (void*)&REGTEMPO$1, -1ll, (void*)vr$195, 0ll, 0 );
					if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2234;
					{
						FBSTRING TMP$2878$6;
						FBSTRING TMP$2879$6;
						FBSTRING TMP$2880$6;
						FBSTRING TMP$2881$6;
						FBSTRING TMP$2882$6;
						FBSTRING TMP$2883$6;
						FBSTRING* vr$207 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
						uint8* vr$209 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
						__builtin_memset( &TMP$2878$6, 0, 24ll );
						FBSTRING* vr$213 = fb_StrConcat( &TMP$2878$6, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2879$6, 0, 24ll );
						FBSTRING* vr$216 = fb_StrConcat( &TMP$2879$6, (void*)vr$213, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$2880$6, 0, 24ll );
						FBSTRING* vr$219 = fb_StrConcat( &TMP$2880$6, (void*)vr$216, -1ll, (void*)vr$209, 0ll );
						__builtin_memset( &TMP$2881$6, 0, 24ll );
						FBSTRING* vr$222 = fb_StrConcat( &TMP$2881$6, (void*)vr$219, -1ll, (void*)"[rip+", 6ll );
						__builtin_memset( &TMP$2882$6, 0, 24ll );
						FBSTRING* vr$225 = fb_StrConcat( &TMP$2882$6, (void*)vr$222, -1ll, (void*)vr$207, -1ll );
						__builtin_memset( &TMP$2883$6, 0, 24ll );
						FBSTRING* vr$228 = fb_StrConcat( &TMP$2883$6, (void*)vr$225, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$228, -1ll, 0 );
					}
					goto label$2233;
					label$2234:;
					{
						FBSTRING TMP$2884$6;
						FBSTRING TMP$2885$6;
						FBSTRING TMP$2886$6;
						FBSTRING TMP$2887$6;
						FBSTRING* vr$231 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
						__builtin_memset( &TMP$2884$6, 0, 24ll );
						FBSTRING* vr$235 = fb_StrConcat( &TMP$2884$6, (void*)"lea ", 5ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2885$6, 0, 24ll );
						FBSTRING* vr$238 = fb_StrConcat( &TMP$2885$6, (void*)vr$235, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$2886$6, 0, 24ll );
						FBSTRING* vr$241 = fb_StrConcat( &TMP$2886$6, (void*)vr$238, -1ll, (void*)vr$231, -1ll );
						__builtin_memset( &TMP$2887$6, 0, 24ll );
						FBSTRING* vr$244 = fb_StrConcat( &TMP$2887$6, (void*)vr$241, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$244, -1ll, 0 );
					}
					label$2233:;
					if( *(int64*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) != 4ll ) goto label$2236;
					{
						FBSTRING TMP$2888$6;
						FBSTRING TMP$2889$6;
						FBSTRING TMP$2890$6;
						FBSTRING TMP$2891$6;
						int32 vr$251 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
						REG2$1 = (int64)vr$251;
						__builtin_memset( &TMP$2888$6, 0, 24ll );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$2888$6, (void*)"[", 2ll, (void*)&REGTEMPO$1, -1ll );
						__builtin_memset( &TMP$2889$6, 0, 24ll );
						FBSTRING* vr$260 = fb_StrConcat( &TMP$2889$6, (void*)vr$257, -1ll, (void*)"+", 2ll );
						__builtin_memset( &TMP$2890$6, 0, 24ll );
						FBSTRING* vr$263 = fb_StrConcat( &TMP$2890$6, (void*)vr$260, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$2891$6, 0, 24ll );
						FBSTRING* vr$266 = fb_StrConcat( &TMP$2891$6, (void*)vr$263, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$266, -1ll, 0 );
					}
					goto label$2235;
					label$2236:;
					if( *(int64*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) != 1ll ) goto label$2237;
					{
						if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2239;
						{
							FBSTRING TMP$2892$7;
							FBSTRING TMP$2893$7;
							FBSTRING TMP$2894$7;
							FBSTRING TMP$2895$7;
							FBSTRING TMP$2896$7;
							FBSTRING TMP$2897$7;
							FBSTRING TMP$2898$7;
							FBSTRING TMP$2899$7;
							FBSTRING TMP$2900$7;
							FBSTRING* vr$283 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 64ll) );
							uint8* vr$286 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 56ll) );
							FBSTRING* vr$289 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
							__builtin_memset( &TMP$2892$7, 0, 24ll );
							FBSTRING* vr$292 = fb_StrConcat( &TMP$2892$7, (void*)"\x0D\x0A", 3ll, (void*)vr$289, -1ll );
							__builtin_memset( &TMP$2893$7, 0, 24ll );
							FBSTRING* vr$295 = fb_StrConcat( &TMP$2893$7, (void*)vr$292, -1ll, (void*)"add ", 5ll );
							__builtin_memset( &TMP$2894$7, 0, 24ll );
							FBSTRING* vr$298 = fb_StrConcat( &TMP$2894$7, (void*)vr$295, -1ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2895$7, 0, 24ll );
							FBSTRING* vr$301 = fb_StrConcat( &TMP$2895$7, (void*)vr$298, -1ll, (void*)", ", 3ll );
							__builtin_memset( &TMP$2896$7, 0, 24ll );
							FBSTRING* vr$304 = fb_StrConcat( &TMP$2896$7, (void*)vr$301, -1ll, (void*)vr$286, 0ll );
							__builtin_memset( &TMP$2897$7, 0, 24ll );
							FBSTRING* vr$307 = fb_StrConcat( &TMP$2897$7, (void*)vr$304, -1ll, (void*)"[rip+", 6ll );
							__builtin_memset( &TMP$2898$7, 0, 24ll );
							FBSTRING* vr$310 = fb_StrConcat( &TMP$2898$7, (void*)vr$307, -1ll, (void*)vr$283, -1ll );
							__builtin_memset( &TMP$2899$7, 0, 24ll );
							FBSTRING* vr$313 = fb_StrConcat( &TMP$2899$7, (void*)vr$310, -1ll, (void*)"]", 2ll );
							__builtin_memset( &TMP$2900$7, 0, 24ll );
							FBSTRING* vr$317 = fb_StrConcat( &TMP$2900$7, (void*)&OP3$1, -1ll, (void*)vr$313, -1ll );
							fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$317, -1ll, 0 );
						}
						goto label$2238;
						label$2239:;
						{
							FBSTRING TMP$2901$7;
							FBSTRING TMP$2902$7;
							FBSTRING TMP$2903$7;
							FBSTRING TMP$2904$7;
							FBSTRING TMP$2905$7;
							FBSTRING TMP$2906$7;
							FBSTRING TMP$2907$7;
							FBSTRING* vr$321 = fb_LongintToStr( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 64ll) );
							FBSTRING* vr$324 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
							__builtin_memset( &TMP$2901$7, 0, 24ll );
							FBSTRING* vr$327 = fb_StrConcat( &TMP$2901$7, (void*)"\x0D\x0A", 3ll, (void*)vr$324, -1ll );
							__builtin_memset( &TMP$2902$7, 0, 24ll );
							FBSTRING* vr$330 = fb_StrConcat( &TMP$2902$7, (void*)vr$327, -1ll, (void*)"add ", 5ll );
							__builtin_memset( &TMP$2903$7, 0, 24ll );
							FBSTRING* vr$333 = fb_StrConcat( &TMP$2903$7, (void*)vr$330, -1ll, (void*)&REGTEMPO$1, -1ll );
							__builtin_memset( &TMP$2904$7, 0, 24ll );
							FBSTRING* vr$336 = fb_StrConcat( &TMP$2904$7, (void*)vr$333, -1ll, (void*)",", 2ll );
							__builtin_memset( &TMP$2905$7, 0, 24ll );
							FBSTRING* vr$339 = fb_StrConcat( &TMP$2905$7, (void*)vr$336, -1ll, (void*)vr$321, -1ll );
							__builtin_memset( &TMP$2906$7, 0, 24ll );
							FBSTRING* vr$342 = fb_StrConcat( &TMP$2906$7, (void*)vr$339, -1ll, (void*)"[rbp]", 6ll );
							__builtin_memset( &TMP$2907$7, 0, 24ll );
							FBSTRING* vr$346 = fb_StrConcat( &TMP$2907$7, (void*)&OP3$1, -1ll, (void*)vr$342, -1ll );
							fb_StrAssign( (void*)&OP3$1, -1ll, (void*)vr$346, -1ll, 0 );
						}
						label$2238:;
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[", 2ll, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)&REGTEMPO$1, -1ll, 0 );
						fb_StrConcatAssign( (void*)&OP1$1, -1ll, (void*)"]", 2ll, 0 );
					}
					goto label$2235;
					label$2237:;
					{
						FBSTRING TMP$2908$6;
						FBSTRING TMP$2911$6;
						FBSTRING TMP$2912$6;
						__builtin_memset( &TMP$2908$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2908$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2908$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2908$6 );
						__builtin_memset( &TMP$2911$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2911$6, -1ll, (void*)"FOUND AN ERROR : hdocall error with idx", 40ll, 0 );
						HWRITEASM64( &TMP$2911$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2911$6 );
						__builtin_memset( &TMP$2912$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2912$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2912$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2912$6 );
					}
					label$2235:;
				}
				label$2225:;
			}
			goto label$2222;
			label$2223:;
			if( TMP$2849$3 != 4ll ) goto label$2240;
			label$2241:;
			{
				int64 TMP$2913$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$2242;
				TMP$2913$4 = 24ll;
				goto label$3046;
				label$2242:;
				TMP$2913$4 = DTYPE$1 & 31ll;
				label$3046:;
				if( TMP$2913$4 != 24ll ) goto label$2244;
				{
					DTYPE$1 = 8ll;
					label$2244:;
				}
				int32 vr$368 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
				REG2$1 = (int64)vr$368;
				{
					if( DTYPE$1 == 8ll ) goto label$2247;
					label$2248:;
					if( DTYPE$1 == 9ll ) goto label$2247;
					label$2249:;
					if( DTYPE$1 == 13ll ) goto label$2247;
					label$2250:;
					if( DTYPE$1 == 14ll ) goto label$2247;
					label$2251:;
					if( DTYPE$1 == 16ll ) goto label$2247;
					label$2252:;
					if( DTYPE$1 == 10ll ) goto label$2247;
					label$2253:;
					if( DTYPE$1 != 20ll ) goto label$2246;
					label$2247:;
					{
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$2245;
					label$2246:;
					if( DTYPE$1 == 11ll ) goto label$2255;
					label$2256:;
					if( DTYPE$1 == 12ll ) goto label$2255;
					label$2257:;
					if( DTYPE$1 != 15ll ) goto label$2254;
					label$2255:;
					{
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + (REG2$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$2245;
					label$2254:;
					if( DTYPE$1 == 5ll ) goto label$2259;
					label$2260:;
					if( DTYPE$1 != 6ll ) goto label$2258;
					label$2259:;
					{
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + (REG2$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$2245;
					label$2258:;
					if( DTYPE$1 == 2ll ) goto label$2262;
					label$2263:;
					if( DTYPE$1 == 3ll ) goto label$2262;
					label$2264:;
					if( DTYPE$1 == 1ll ) goto label$2262;
					label$2265:;
					if( DTYPE$1 != 4ll ) goto label$2261;
					label$2262:;
					{
						fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + (REG2$1 << (3ll & 63ll))), 0ll, 0 );
					}
					goto label$2245;
					label$2261:;
					{
						FBSTRING TMP$2914$6;
						FBSTRING TMP$2918$6;
						FBSTRING TMP$2919$6;
						FBSTRING TMP$2920$6;
						__builtin_memset( &TMP$2914$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2914$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2914$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2914$6 );
						__builtin_memset( &TMP$2919$6, 0, 24ll );
						FBSTRING* vr$383 = fb_LongintToStr( DTYPE$1 );
						__builtin_memset( &TMP$2918$6, 0, 24ll );
						FBSTRING* vr$386 = fb_StrConcat( &TMP$2918$6, (void*)"FOUND AN ERROR : in hdocall datatype not handled 01 = ", 55ll, (void*)vr$383, -1ll );
						fb_StrAssign( (void*)&TMP$2919$6, -1ll, (void*)vr$386, -1ll, 0 );
						HWRITEASM64( &TMP$2919$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2919$6 );
						__builtin_memset( &TMP$2920$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$2920$6, -1ll, (void*)"", 1ll, 0 );
						HWRITEASM64( &TMP$2920$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$2920$6 );
					}
					label$2266:;
					label$2245:;
				}
			}
			goto label$2222;
			label$2240:;
			if( TMP$2849$3 != 1ll ) goto label$2267;
			label$2268:;
			{
				int64 TMP$2921$4;
				if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2269;
				TMP$2921$4 = (int64)-(((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) != 0ll);
				goto label$3047;
				label$2269:;
				TMP$2921$4 = 0ll;
				label$3047:;
				if( TMP$2921$4 == 0ll ) goto label$2271;
				{
					FBSTRING TMP$2922$5;
					FBSTRING TMP$2923$5;
					FBSTRING TMP$2924$5;
					FBSTRING* vr$406 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
					uint8* vr$408 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
					__builtin_memset( &TMP$2922$5, 0, 24ll );
					FBSTRING* vr$411 = fb_StrConcat( &TMP$2922$5, (void*)vr$408, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$2923$5, 0, 24ll );
					FBSTRING* vr$414 = fb_StrConcat( &TMP$2923$5, (void*)vr$411, -1ll, (void*)vr$406, -1ll );
					__builtin_memset( &TMP$2924$5, 0, 24ll );
					FBSTRING* vr$417 = fb_StrConcat( &TMP$2924$5, (void*)vr$414, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$417, -1ll, 0 );
				}
				goto label$2270;
				label$2271:;
				{
					FBSTRING TMP$2925$5;
					FBSTRING* vr$420 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
					__builtin_memset( &TMP$2925$5, 0, 24ll );
					FBSTRING* vr$423 = fb_StrConcat( &TMP$2925$5, (void*)vr$420, -1ll, (void*)"[rbp]", 6ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$423, -1ll, 0 );
				}
				label$2270:;
			}
			goto label$2222;
			label$2267:;
			if( TMP$2849$3 != 3ll ) goto label$2272;
			label$2273:;
			{
				FBSTRING TMP$2926$4;
				FBSTRING TMP$2927$4;
				FBSTRING TMP$2928$4;
				int32 vr$428 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
				REG2$1 = (int64)vr$428;
				FBSTRING* vr$432 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				__builtin_memset( &TMP$2926$4, 0, 24ll );
				FBSTRING* vr$435 = fb_StrConcat( &TMP$2926$4, (void*)vr$432, -1ll, (void*)"[", 2ll );
				__builtin_memset( &TMP$2927$4, 0, 24ll );
				FBSTRING* vr$438 = fb_StrConcat( &TMP$2927$4, (void*)vr$435, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$2928$4, 0, 24ll );
				FBSTRING* vr$441 = fb_StrConcat( &TMP$2928$4, (void*)vr$438, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$441, -1ll, 0 );
			}
			goto label$2222;
			label$2272:;
			if( TMP$2849$3 != 5ll ) goto label$2274;
			label$2275:;
			{
				FBSTRING TMP$2929$4;
				FBSTRING TMP$2930$4;
				FBSTRING TMP$2931$4;
				FBSTRING* vr$444 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
				uint8* vr$446 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
				__builtin_memset( &TMP$2929$4, 0, 24ll );
				FBSTRING* vr$449 = fb_StrConcat( &TMP$2929$4, (void*)vr$446, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$2930$4, 0, 24ll );
				FBSTRING* vr$452 = fb_StrConcat( &TMP$2930$4, (void*)vr$449, -1ll, (void*)vr$444, -1ll );
				__builtin_memset( &TMP$2931$4, 0, 24ll );
				FBSTRING* vr$455 = fb_StrConcat( &TMP$2931$4, (void*)vr$452, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$455, -1ll, 0 );
			}
			goto label$2222;
			label$2274:;
			if( TMP$2849$3 != 0ll ) goto label$2276;
			label$2277:;
			{
				int64 TMP$2932$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$2278;
				TMP$2932$4 = 24ll;
				goto label$3048;
				label$2278:;
				TMP$2932$4 = DTYPE$1 & 31ll;
				label$3048:;
				if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2932$4 * 56ll)) != 1ll ) goto label$2280;
				{
					FBSTRING* vr$461 = HFLOATTOHEX_ASM64( *(double*)((uint8*)V2$1 + 48ll), DTYPE$1, (int8)0 );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$461, -1ll, 0 );
				}
				goto label$2279;
				label$2280:;
				{
					if( DTYPE$1 != 1ll ) goto label$2282;
					{
						if( *(int64*)((uint8*)V2$1 + 48ll) == 0ll ) goto label$2284;
						{
							*(int64*)((uint8*)V2$1 + 48ll) = 1ll;
						}
						label$2284:;
						label$2283:;
					}
					label$2282:;
					label$2281:;
					FBSTRING* vr$466 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 48ll) );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$466, -1ll, 0 );
				}
				label$2279:;
			}
			goto label$2222;
			label$2276:;
			{
				FBSTRING TMP$2933$4;
				FBSTRING TMP$2936$4;
				FBSTRING TMP$2937$4;
				__builtin_memset( &TMP$2933$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2933$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2933$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2933$4 );
				__builtin_memset( &TMP$2936$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2936$4, -1ll, (void*)"FOUND AN ERROR : in hdocall typ not handled ", 45ll, 0 );
				HWRITEASM64( &TMP$2936$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2936$4 );
				__builtin_memset( &TMP$2937$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$2937$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$2937$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$2937$4 );
			}
			label$2285:;
			label$2222:;
		}
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$2286;
		TMP$2938$2 = 24ll;
		goto label$3049;
		label$2286:;
		TMP$2938$2 = DTYPE$1 & 31ll;
		label$3049:;
		if( TMP$2938$2 != 24ll ) goto label$2288;
		{
			DTYPE$1 = 8ll;
			label$2288:;
		}
		int64 vr$486 = PARAM_ANALYZE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll), &CPTARG$1, &CPTINT$1, &CPTFLOAT$1 );
		PARAMTYPE$1 = vr$486;
		if( PARAMTYPE$1 < 10ll ) goto label$2290;
		{
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2292;
			{
				if( *(int64*)V2$1 != 0ll ) goto label$2294;
				{
					int64 TMP$2939$5;
					PUSHSIZE$1 = PUSHSIZE$1 + 8ll;
					if( (DTYPE$1 & 480ll) == 0ll ) goto label$2295;
					TMP$2939$5 = 24ll;
					goto label$3050;
					label$2295:;
					TMP$2939$5 = DTYPE$1 & 31ll;
					label$3050:;
					if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$2939$5 * 56ll)) != 1ll ) goto label$2297;
					{
						if( DTYPE$1 != 15ll ) goto label$2299;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push ", 6ll, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
						}
						goto label$2298;
						label$2299:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push rax", 9ll, 0 );
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"mov rax, ", 10ll, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
						}
						label$2298:;
					}
					goto label$2296;
					label$2297:;
					if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) >= -2147483648ll) & (int64)-(*(uint64*)((uint8*)V2$1 + 48ll) < 2147483648ull)) == 0ll ) goto label$2300;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push ", 6ll, 0 );
						fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
					}
					goto label$2296;
					label$2300:;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push rax", 9ll, 0 );
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"mov rax, ", 10ll, 0 );
						fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
					}
					label$2296:;
				}
				goto label$2293;
				label$2294:;
				{
					if( DTYPE$1 != 20ll ) goto label$2302;
					{
						LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll);
						PUSHSIZE$1 = PUSHSIZE$1 + LGT$1;
						if( LGT$1 <= 8ll ) goto label$2304;
						{
							FBSTRING TMP$2945$7;
							OFST$1 = LGT$1 % 8ll;
							if( OFST$1 != 0ll ) goto label$2306;
							{
								OFST$1 = 8ll;
								label$2306:;
							}
							label$2307:;
							if( LGT$1 <= 0ll ) goto label$2308;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push [rax]", 11ll, 0 );
								if( LGT$1 <= 8ll ) goto label$2310;
								{
									PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
									fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"sub rax, 8", 11ll, 0 );
								}
								label$2310:;
								label$2309:;
								LGT$1 = LGT$1 + -8ll;
							}
							goto label$2307;
							label$2308:;
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
							FBSTRING* vr$542 = fb_LongintToStr( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) - OFST$1 );
							__builtin_memset( &TMP$2945$7, 0, 24ll );
							FBSTRING* vr$545 = fb_StrConcat( &TMP$2945$7, (void*)"add rax, ", 10ll, (void*)vr$542, -1ll );
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)vr$545, -1ll, 0 );
							if( *(int64*)V2$1 != 4ll ) goto label$2312;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"mov rax, ", 10ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
							}
							goto label$2311;
							label$2312:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"lea rax, ", 10ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
							}
							label$2311:;
						}
						goto label$2303;
						label$2304:;
						{
							PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
							fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push ", 6ll, 0 );
							fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
						}
						label$2303:;
					}
					goto label$2301;
					label$2302:;
					{
						PUSHSIZE$1 = PUSHSIZE$1 + 8ll;
						if( *(int64*)V2$1 != 5ll ) goto label$2314;
						{
							int64 TMP$2946$7;
							if( (*(int64*)((uint8*)V2$1 + 8ll) & 31ll) != 22ll ) goto label$2315;
							int64 vr$571 = FBGETOPTION( 0ll );
							TMP$2946$7 = (int64)-(vr$571 == 2ll);
							goto label$3051;
							label$2315:;
							TMP$2946$7 = 0ll;
							label$3051:;
							if( TMP$2946$7 == 0ll ) goto label$2317;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push rax", 9ll, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"mov rax, QWORD PTR ", 20ll, 0 );
								FBSTRING* vr$579 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
								int64 vr$581 = fb_StrInstr( 1ll, (FBSTRING*)&OP1$1, (FBSTRING*)vr$579 );
								FBSTRING* vr$584 = fb_LEFT( (FBSTRING*)&OP1$1, vr$581 + -1ll );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)vr$584, -1ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"@GOTPCREL[rip]", 15ll, 0 );
							}
							goto label$2316;
							label$2317:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push rax", 9ll, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"lea rax, ", 10ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
							}
							label$2316:;
						}
						goto label$2313;
						label$2314:;
						{
							if( *(int64*)V2$1 != 4ll ) goto label$2319;
							{
								fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + (REG2$1 << (3ll & 63ll))), 0ll, 0 );
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push ", 6ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
							}
							goto label$2318;
							label$2319:;
							{
								PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
								fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)"push ", 6ll, 0 );
								fb_StrConcatAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP1$1, -1ll, 0 );
							}
							label$2318:;
						}
						label$2313:;
					}
					label$2301:;
					int32 vr$614 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
					if( (int64)vr$614 == 0ll ) goto label$2321;
					{
						PUSHNBSTR$1 = PUSHNBSTR$1 + 1ll;
						fb_StrAssign( (void*)((uint8*)PUSHSTR$1 + (PUSHNBSTR$1 * 24ll)), -1ll, (void*)&OP3$1, -1ll, 0 );
					}
					label$2321:;
					label$2320:;
				}
				label$2293:;
			}
			goto label$2291;
			label$2292:;
			{
				int32 vr$621 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
				if( (int64)vr$621 == 0ll ) goto label$2323;
				{
					EMITOP3_OP4( &OP3$1 );
					label$2323:;
				}
				if( PARAMTYPE$1 != 11ll ) goto label$2325;
				{
					if( DTYPE$1 != 20ll ) goto label$2327;
					{
						LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll);
					}
					goto label$2326;
					label$2327:;
					{
						LGT$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (DTYPE$1 * 56ll)) + 8ll);
					}
					label$2326:;
					if( *(int64*)V2$1 != 4ll ) goto label$2329;
					{
						{
							uint64 TMP$2947$7;
							TMP$2947$7 = (uint64)LGT$1;
							goto label$2331;
							label$2332:;
							{
								FBSTRING TMP$2950$8;
								FBSTRING TMP$2951$8;
								FBSTRING TMP$2952$8;
								FBSTRING TMP$2953$8;
								__builtin_memset( &TMP$2953$8, 0, 24ll );
								FBSTRING* vr$632 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2950$8, 0, 24ll );
								FBSTRING* vr$635 = fb_StrConcat( &TMP$2950$8, (void*)"mov byte PTR ", 14ll, (void*)vr$632, -1ll );
								__builtin_memset( &TMP$2951$8, 0, 24ll );
								FBSTRING* vr$638 = fb_StrConcat( &TMP$2951$8, (void*)vr$635, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$2952$8, 0, 24ll );
								FBSTRING* vr$641 = fb_StrConcat( &TMP$2952$8, (void*)vr$638, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2953$8, -1ll, (void*)vr$641, -1ll, 0 );
								HWRITEASM64( &TMP$2953$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2953$8 );
							}
							goto label$2330;
							label$2333:;
							{
								FBSTRING TMP$2954$8;
								FBSTRING TMP$2955$8;
								FBSTRING TMP$2956$8;
								FBSTRING TMP$2957$8;
								__builtin_memset( &TMP$2957$8, 0, 24ll );
								FBSTRING* vr$649 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2954$8, 0, 24ll );
								FBSTRING* vr$652 = fb_StrConcat( &TMP$2954$8, (void*)"mov WORD PTR ", 14ll, (void*)vr$649, -1ll );
								__builtin_memset( &TMP$2955$8, 0, 24ll );
								FBSTRING* vr$655 = fb_StrConcat( &TMP$2955$8, (void*)vr$652, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$2956$8, 0, 24ll );
								FBSTRING* vr$658 = fb_StrConcat( &TMP$2956$8, (void*)vr$655, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2957$8, -1ll, (void*)vr$658, -1ll, 0 );
								HWRITEASM64( &TMP$2957$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2957$8 );
							}
							goto label$2330;
							label$2334:;
							{
								FBSTRING TMP$2958$8;
								FBSTRING TMP$2959$8;
								FBSTRING TMP$2960$8;
								FBSTRING TMP$2961$8;
								__builtin_memset( &TMP$2961$8, 0, 24ll );
								FBSTRING* vr$666 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2958$8, 0, 24ll );
								FBSTRING* vr$669 = fb_StrConcat( &TMP$2958$8, (void*)"mov DWORD PTR ", 15ll, (void*)vr$666, -1ll );
								__builtin_memset( &TMP$2959$8, 0, 24ll );
								FBSTRING* vr$672 = fb_StrConcat( &TMP$2959$8, (void*)vr$669, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$2960$8, 0, 24ll );
								FBSTRING* vr$675 = fb_StrConcat( &TMP$2960$8, (void*)vr$672, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2961$8, -1ll, (void*)vr$675, -1ll, 0 );
								HWRITEASM64( &TMP$2961$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2961$8 );
							}
							goto label$2330;
							label$2335:;
							{
								FBSTRING TMP$2962$8;
								FBSTRING TMP$2963$8;
								FBSTRING TMP$2964$8;
								FBSTRING TMP$2965$8;
								__builtin_memset( &TMP$2965$8, 0, 24ll );
								FBSTRING* vr$683 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2962$8, 0, 24ll );
								FBSTRING* vr$686 = fb_StrConcat( &TMP$2962$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$683, -1ll );
								__builtin_memset( &TMP$2963$8, 0, 24ll );
								FBSTRING* vr$689 = fb_StrConcat( &TMP$2963$8, (void*)vr$686, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$2964$8, 0, 24ll );
								FBSTRING* vr$692 = fb_StrConcat( &TMP$2964$8, (void*)vr$689, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2965$8, -1ll, (void*)vr$692, -1ll, 0 );
								HWRITEASM64( &TMP$2965$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2965$8 );
							}
							goto label$2330;
							label$2331:;
							static const void* tmp$3865[8ll] = {
								&&label$2332,
								&&label$2333,
								&&label$2330,
								&&label$2334,
								&&label$2330,
								&&label$2330,
								&&label$2330,
								&&label$2335,
							};
							if( (TMP$2947$7 - 1ull) > 7ull ) goto label$2330;
							goto *tmp$3865[TMP$2947$7 - 1ull];
							label$2330:;
						}
					}
					goto label$2328;
					label$2329:;
					{
						{
							uint64 TMP$2966$7;
							TMP$2966$7 = (uint64)LGT$1;
							goto label$2337;
							label$2338:;
							{
								FBSTRING TMP$2967$8;
								FBSTRING TMP$2968$8;
								FBSTRING TMP$2970$8;
								FBSTRING TMP$2971$8;
								FBSTRING TMP$2972$8;
								__builtin_memset( &TMP$2968$8, 0, 24ll );
								__builtin_memset( &TMP$2967$8, 0, 24ll );
								FBSTRING* vr$700 = fb_StrConcat( &TMP$2967$8, (void*)"mov al, ", 9ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2968$8, -1ll, (void*)vr$700, -1ll, 0 );
								HWRITEASM64( &TMP$2968$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2968$8 );
								__builtin_memset( &TMP$2972$8, 0, 24ll );
								FBSTRING* vr$707 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2970$8, 0, 24ll );
								FBSTRING* vr$710 = fb_StrConcat( &TMP$2970$8, (void*)"mov byte PTR ", 14ll, (void*)vr$707, -1ll );
								__builtin_memset( &TMP$2971$8, 0, 24ll );
								FBSTRING* vr$713 = fb_StrConcat( &TMP$2971$8, (void*)vr$710, -1ll, (void*)"[rsp], al", 10ll );
								fb_StrAssign( (void*)&TMP$2972$8, -1ll, (void*)vr$713, -1ll, 0 );
								HWRITEASM64( &TMP$2972$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2972$8 );
							}
							goto label$2336;
							label$2339:;
							{
								FBSTRING TMP$2974$8;
								FBSTRING TMP$2975$8;
								FBSTRING TMP$2977$8;
								FBSTRING TMP$2978$8;
								FBSTRING TMP$2979$8;
								__builtin_memset( &TMP$2975$8, 0, 24ll );
								__builtin_memset( &TMP$2974$8, 0, 24ll );
								FBSTRING* vr$721 = fb_StrConcat( &TMP$2974$8, (void*)"mov ax, ", 9ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2975$8, -1ll, (void*)vr$721, -1ll, 0 );
								HWRITEASM64( &TMP$2975$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2975$8 );
								__builtin_memset( &TMP$2979$8, 0, 24ll );
								FBSTRING* vr$728 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2977$8, 0, 24ll );
								FBSTRING* vr$731 = fb_StrConcat( &TMP$2977$8, (void*)"mov WORD PTR ", 14ll, (void*)vr$728, -1ll );
								__builtin_memset( &TMP$2978$8, 0, 24ll );
								FBSTRING* vr$734 = fb_StrConcat( &TMP$2978$8, (void*)vr$731, -1ll, (void*)"[rsp], ax", 10ll );
								fb_StrAssign( (void*)&TMP$2979$8, -1ll, (void*)vr$734, -1ll, 0 );
								HWRITEASM64( &TMP$2979$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2979$8 );
							}
							goto label$2336;
							label$2340:;
							{
								FBSTRING TMP$2980$8;
								FBSTRING TMP$2981$8;
								FBSTRING TMP$2983$8;
								FBSTRING TMP$2984$8;
								FBSTRING TMP$2985$8;
								__builtin_memset( &TMP$2981$8, 0, 24ll );
								__builtin_memset( &TMP$2980$8, 0, 24ll );
								FBSTRING* vr$742 = fb_StrConcat( &TMP$2980$8, (void*)"mov eax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2981$8, -1ll, (void*)vr$742, -1ll, 0 );
								HWRITEASM64( &TMP$2981$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2981$8 );
								__builtin_memset( &TMP$2985$8, 0, 24ll );
								FBSTRING* vr$749 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2983$8, 0, 24ll );
								FBSTRING* vr$752 = fb_StrConcat( &TMP$2983$8, (void*)"mov DWORD PTR ", 15ll, (void*)vr$749, -1ll );
								__builtin_memset( &TMP$2984$8, 0, 24ll );
								FBSTRING* vr$755 = fb_StrConcat( &TMP$2984$8, (void*)vr$752, -1ll, (void*)"[rsp], eax", 11ll );
								fb_StrAssign( (void*)&TMP$2985$8, -1ll, (void*)vr$755, -1ll, 0 );
								HWRITEASM64( &TMP$2985$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2985$8 );
							}
							goto label$2336;
							label$2341:;
							{
								FBSTRING TMP$2986$8;
								FBSTRING TMP$2987$8;
								FBSTRING TMP$2989$8;
								FBSTRING TMP$2990$8;
								FBSTRING TMP$2991$8;
								__builtin_memset( &TMP$2987$8, 0, 24ll );
								__builtin_memset( &TMP$2986$8, 0, 24ll );
								FBSTRING* vr$763 = fb_StrConcat( &TMP$2986$8, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$2987$8, -1ll, (void*)vr$763, -1ll, 0 );
								HWRITEASM64( &TMP$2987$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2987$8 );
								__builtin_memset( &TMP$2991$8, 0, 24ll );
								FBSTRING* vr$770 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$2989$8, 0, 24ll );
								FBSTRING* vr$773 = fb_StrConcat( &TMP$2989$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$770, -1ll );
								__builtin_memset( &TMP$2990$8, 0, 24ll );
								FBSTRING* vr$776 = fb_StrConcat( &TMP$2990$8, (void*)vr$773, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$2991$8, -1ll, (void*)vr$776, -1ll, 0 );
								HWRITEASM64( &TMP$2991$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$2991$8 );
							}
							goto label$2336;
							label$2337:;
							static const void* tmp$3866[8ll] = {
								&&label$2338,
								&&label$2339,
								&&label$2336,
								&&label$2340,
								&&label$2336,
								&&label$2336,
								&&label$2336,
								&&label$2341,
							};
							if( (TMP$2966$7 - 1ull) > 7ull ) goto label$2336;
							goto *tmp$3866[TMP$2966$7 - 1ull];
							label$2336:;
						}
					}
					label$2328:;
				}
				goto label$2324;
				label$2325:;
				if( PARAMTYPE$1 != 12ll ) goto label$2342;
				{
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
					FBSTRING TMP$3002$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$), (int32)REG2$1 );
					__builtin_memset( &TMP$2995$5, 0, 24ll );
					__builtin_memset( &TMP$2992$5, 0, 24ll );
					FBSTRING* vr$791 = fb_StrConcat( &TMP$2992$5, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2993$5, 0, 24ll );
					FBSTRING* vr$794 = fb_StrConcat( &TMP$2993$5, (void*)vr$791, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$2994$5, 0, 24ll );
					FBSTRING* vr$797 = fb_StrConcat( &TMP$2994$5, (void*)vr$794, -1ll, (void*)&OP1$1, -1ll );
					fb_StrAssign( (void*)&TMP$2995$5, -1ll, (void*)vr$797, -1ll, 0 );
					HWRITEASM64( &TMP$2995$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$2995$5 );
					*(int64*)((uint8*)&CTX$ + 216ll) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + *(int64*)((uint8*)&CTX$ + 216ll)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + -1ll);
					*(int64*)((uint8*)&CTX$ + 216ll) = (*(int64*)((uint8*)&CTX$ + 216ll) + -(*(int64*)((uint8*)&CTX$ + 216ll) % 8ll)) + 8ll;
					fb_StrAssign( (void*)&REGTEMPO$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll, 0 );
					__builtin_memset( &TMP$2997$5, 0, 24ll );
					FBSTRING* vr$824 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
					__builtin_memset( &TMP$2996$5, 0, 24ll );
					FBSTRING* vr$827 = fb_StrConcat( &TMP$2996$5, (void*)vr$824, -1ll, (void*)"[rbp]", 6ll );
					fb_StrAssign( (void*)&TMP$2997$5, -1ll, (void*)vr$827, -1ll, 0 );
					MEMCOPY( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll), &REGTEMPO$1, &TMP$2997$5, 1, 1 );
					fb_StrDelete( (FBSTRING*)&TMP$2997$5 );
					__builtin_memset( &TMP$3002$5, 0, 24ll );
					FBSTRING* vr$836 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
					__builtin_memset( &TMP$2998$5, 0, 24ll );
					FBSTRING* vr$843 = fb_StrConcat( &TMP$2998$5, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$2999$5, 0, 24ll );
					FBSTRING* vr$846 = fb_StrConcat( &TMP$2999$5, (void*)vr$843, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$3000$5, 0, 24ll );
					FBSTRING* vr$849 = fb_StrConcat( &TMP$3000$5, (void*)vr$846, -1ll, (void*)vr$836, -1ll );
					__builtin_memset( &TMP$3001$5, 0, 24ll );
					FBSTRING* vr$852 = fb_StrConcat( &TMP$3001$5, (void*)vr$849, -1ll, (void*)"[rbp]", 6ll );
					fb_StrAssign( (void*)&TMP$3002$5, -1ll, (void*)vr$852, -1ll, 0 );
					HWRITEASM64( &TMP$3002$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3002$5 );
					if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2344;
					{
						FBSTRING TMP$3003$6;
						FBSTRING TMP$3004$6;
						FBSTRING TMP$3005$6;
						FBSTRING TMP$3006$6;
						__builtin_memset( &TMP$3006$6, 0, 24ll );
						FBSTRING* vr$867 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
						__builtin_memset( &TMP$3003$6, 0, 24ll );
						FBSTRING* vr$870 = fb_StrConcat( &TMP$3003$6, (void*)"mov QWORD PTR ", 15ll, (void*)vr$867, -1ll );
						__builtin_memset( &TMP$3004$6, 0, 24ll );
						FBSTRING* vr$873 = fb_StrConcat( &TMP$3004$6, (void*)vr$870, -1ll, (void*)"[rsp], ", 8ll );
						__builtin_memset( &TMP$3005$6, 0, 24ll );
						FBSTRING* vr$876 = fb_StrConcat( &TMP$3005$6, (void*)vr$873, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						fb_StrAssign( (void*)&TMP$3006$6, -1ll, (void*)vr$876, -1ll, 0 );
						HWRITEASM64( &TMP$3006$6, 3ll );
						fb_StrDelete( (FBSTRING*)&TMP$3006$6 );
					}
					label$2344:;
					label$2343:;
				}
				goto label$2324;
				label$2342:;
				{
					if( *(int64*)V2$1 != 0ll ) goto label$2346;
					{
						if( DTYPE$1 != 15ll ) goto label$2348;
						{
							FBSTRING TMP$3011$7;
							FBSTRING TMP$3012$7;
							FBSTRING TMP$3013$7;
							if( *(double*)((uint8*)V2$1 + 48ll) != 0x0p+0 ) goto label$2350;
							{
								FBSTRING TMP$3008$8;
								__builtin_memset( &TMP$3008$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3008$8, -1ll, (void*)"xor eax, eax", 13ll, 0 );
								HWRITEASM64( &TMP$3008$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3008$8 );
							}
							goto label$2349;
							label$2350:;
							{
								FBSTRING TMP$3009$8;
								FBSTRING TMP$3010$8;
								__builtin_memset( &TMP$3010$8, 0, 24ll );
								__builtin_memset( &TMP$3009$8, 0, 24ll );
								FBSTRING* vr$890 = fb_StrConcat( &TMP$3009$8, (void*)"mov eax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3010$8, -1ll, (void*)vr$890, -1ll, 0 );
								HWRITEASM64( &TMP$3010$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3010$8 );
							}
							label$2349:;
							__builtin_memset( &TMP$3013$7, 0, 24ll );
							FBSTRING* vr$897 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
							__builtin_memset( &TMP$3011$7, 0, 24ll );
							FBSTRING* vr$900 = fb_StrConcat( &TMP$3011$7, (void*)"mov DWORD PTR ", 15ll, (void*)vr$897, -1ll );
							__builtin_memset( &TMP$3012$7, 0, 24ll );
							FBSTRING* vr$903 = fb_StrConcat( &TMP$3012$7, (void*)vr$900, -1ll, (void*)"[rsp], eax", 11ll );
							fb_StrAssign( (void*)&TMP$3013$7, -1ll, (void*)vr$903, -1ll, 0 );
							HWRITEASM64( &TMP$3013$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3013$7 );
						}
						goto label$2347;
						label$2348:;
						if( DTYPE$1 != 16ll ) goto label$2351;
						{
							FBSTRING TMP$3018$7;
							FBSTRING TMP$3019$7;
							FBSTRING TMP$3020$7;
							if( *(double*)((uint8*)V2$1 + 48ll) != 0x0p+0 ) goto label$2353;
							{
								FBSTRING TMP$3015$8;
								__builtin_memset( &TMP$3015$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3015$8, -1ll, (void*)"xor rax, rax", 13ll, 0 );
								HWRITEASM64( &TMP$3015$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3015$8 );
							}
							goto label$2352;
							label$2353:;
							{
								FBSTRING TMP$3016$8;
								FBSTRING TMP$3017$8;
								__builtin_memset( &TMP$3017$8, 0, 24ll );
								__builtin_memset( &TMP$3016$8, 0, 24ll );
								FBSTRING* vr$916 = fb_StrConcat( &TMP$3016$8, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3017$8, -1ll, (void*)vr$916, -1ll, 0 );
								HWRITEASM64( &TMP$3017$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3017$8 );
							}
							label$2352:;
							__builtin_memset( &TMP$3020$7, 0, 24ll );
							FBSTRING* vr$923 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
							__builtin_memset( &TMP$3018$7, 0, 24ll );
							FBSTRING* vr$926 = fb_StrConcat( &TMP$3018$7, (void*)"mov QWORD PTR ", 15ll, (void*)vr$923, -1ll );
							__builtin_memset( &TMP$3019$7, 0, 24ll );
							FBSTRING* vr$929 = fb_StrConcat( &TMP$3019$7, (void*)vr$926, -1ll, (void*)"[rsp], rax", 11ll );
							fb_StrAssign( (void*)&TMP$3020$7, -1ll, (void*)vr$929, -1ll, 0 );
							HWRITEASM64( &TMP$3020$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3020$7 );
						}
						goto label$2347;
						label$2351:;
						{
							if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) < -2147483648ll) | (int64)-(*(uint64*)((uint8*)V2$1 + 48ll) > 4294967295ull)) == 0ll ) goto label$2355;
							{
								FBSTRING TMP$3021$8;
								FBSTRING TMP$3022$8;
								FBSTRING TMP$3023$8;
								FBSTRING TMP$3024$8;
								FBSTRING TMP$3025$8;
								__builtin_memset( &TMP$3022$8, 0, 24ll );
								__builtin_memset( &TMP$3021$8, 0, 24ll );
								FBSTRING* vr$942 = fb_StrConcat( &TMP$3021$8, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3022$8, -1ll, (void*)vr$942, -1ll, 0 );
								HWRITEASM64( &TMP$3022$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3022$8 );
								__builtin_memset( &TMP$3025$8, 0, 24ll );
								FBSTRING* vr$949 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3023$8, 0, 24ll );
								FBSTRING* vr$952 = fb_StrConcat( &TMP$3023$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$949, -1ll );
								__builtin_memset( &TMP$3024$8, 0, 24ll );
								FBSTRING* vr$955 = fb_StrConcat( &TMP$3024$8, (void*)vr$952, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$3025$8, -1ll, (void*)vr$955, -1ll, 0 );
								HWRITEASM64( &TMP$3025$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3025$8 );
							}
							goto label$2354;
							label$2355:;
							if( *(uint64*)((uint8*)V2$1 + 48ll) < 2147483648ull ) goto label$2356;
							{
								FBSTRING TMP$3026$8;
								FBSTRING TMP$3027$8;
								FBSTRING TMP$3028$8;
								FBSTRING TMP$3029$8;
								FBSTRING TMP$3030$8;
								__builtin_memset( &TMP$3027$8, 0, 24ll );
								__builtin_memset( &TMP$3026$8, 0, 24ll );
								FBSTRING* vr$964 = fb_StrConcat( &TMP$3026$8, (void*)"mov eax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3027$8, -1ll, (void*)vr$964, -1ll, 0 );
								HWRITEASM64( &TMP$3027$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3027$8 );
								__builtin_memset( &TMP$3030$8, 0, 24ll );
								FBSTRING* vr$971 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3028$8, 0, 24ll );
								FBSTRING* vr$974 = fb_StrConcat( &TMP$3028$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$971, -1ll );
								__builtin_memset( &TMP$3029$8, 0, 24ll );
								FBSTRING* vr$977 = fb_StrConcat( &TMP$3029$8, (void*)vr$974, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$3030$8, -1ll, (void*)vr$977, -1ll, 0 );
								HWRITEASM64( &TMP$3030$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3030$8 );
							}
							goto label$2354;
							label$2356:;
							{
								FBSTRING TMP$3031$8;
								FBSTRING TMP$3032$8;
								FBSTRING TMP$3033$8;
								FBSTRING TMP$3034$8;
								__builtin_memset( &TMP$3034$8, 0, 24ll );
								FBSTRING* vr$985 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3031$8, 0, 24ll );
								FBSTRING* vr$988 = fb_StrConcat( &TMP$3031$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$985, -1ll );
								__builtin_memset( &TMP$3032$8, 0, 24ll );
								FBSTRING* vr$991 = fb_StrConcat( &TMP$3032$8, (void*)vr$988, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$3033$8, 0, 24ll );
								FBSTRING* vr$994 = fb_StrConcat( &TMP$3033$8, (void*)vr$991, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3034$8, -1ll, (void*)vr$994, -1ll, 0 );
								HWRITEASM64( &TMP$3034$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3034$8 );
							}
							label$2354:;
						}
						label$2347:;
					}
					goto label$2345;
					label$2346:;
					{
						if( *(int64*)V2$1 != 4ll ) goto label$2358;
						{
							if( DTYPE$1 != 20ll ) goto label$2360;
							{
								FBSTRING TMP$3035$8;
								FBSTRING TMP$3036$8;
								FBSTRING TMP$3037$8;
								FBSTRING TMP$3038$8;
								FBSTRING TMP$3039$8;
								FBSTRING TMP$3040$8;
								FBSTRING TMP$3041$8;
								FBSTRING TMP$3042$8;
								*(int64*)((uint8*)&CTX$ + 216ll) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + *(int64*)((uint8*)&CTX$ + 216ll)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + -1ll);
								*(int64*)((uint8*)&CTX$ + 216ll) = (*(int64*)((uint8*)&CTX$ + 216ll) + -(*(int64*)((uint8*)&CTX$ + 216ll) % 8ll)) + 8ll;
								__builtin_memset( &TMP$3036$8, 0, 24ll );
								FBSTRING* vr$1017 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
								__builtin_memset( &TMP$3035$8, 0, 24ll );
								FBSTRING* vr$1020 = fb_StrConcat( &TMP$3035$8, (void*)vr$1017, -1ll, (void*)"[rbp]", 6ll );
								fb_StrAssign( (void*)&TMP$3036$8, -1ll, (void*)vr$1020, -1ll, 0 );
								MEMCOPY( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll), &OP1$1, &TMP$3036$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3036$8 );
								__builtin_memset( &TMP$3039$8, 0, 24ll );
								FBSTRING* vr$1029 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
								__builtin_memset( &TMP$3037$8, 0, 24ll );
								FBSTRING* vr$1032 = fb_StrConcat( &TMP$3037$8, (void*)"mov rax, ", 10ll, (void*)vr$1029, -1ll );
								__builtin_memset( &TMP$3038$8, 0, 24ll );
								FBSTRING* vr$1035 = fb_StrConcat( &TMP$3038$8, (void*)vr$1032, -1ll, (void*)"[rbp]", 6ll );
								fb_StrAssign( (void*)&TMP$3039$8, -1ll, (void*)vr$1035, -1ll, 0 );
								HWRITEASM64( &TMP$3039$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3039$8 );
								__builtin_memset( &TMP$3042$8, 0, 24ll );
								FBSTRING* vr$1042 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3040$8, 0, 24ll );
								FBSTRING* vr$1045 = fb_StrConcat( &TMP$3040$8, (void*)"mov ", 5ll, (void*)vr$1042, -1ll );
								__builtin_memset( &TMP$3041$8, 0, 24ll );
								FBSTRING* vr$1048 = fb_StrConcat( &TMP$3041$8, (void*)vr$1045, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$3042$8, -1ll, (void*)vr$1048, -1ll, 0 );
								HWRITEASM64( &TMP$3042$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3042$8 );
							}
							goto label$2359;
							label$2360:;
							{
								FBSTRING TMP$3043$8;
								FBSTRING TMP$3044$8;
								FBSTRING TMP$3045$8;
								FBSTRING TMP$3046$8;
								__builtin_memset( &TMP$3046$8, 0, 24ll );
								FBSTRING* vr$1056 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3043$8, 0, 24ll );
								FBSTRING* vr$1059 = fb_StrConcat( &TMP$3043$8, (void*)"mov ", 5ll, (void*)vr$1056, -1ll );
								__builtin_memset( &TMP$3044$8, 0, 24ll );
								FBSTRING* vr$1062 = fb_StrConcat( &TMP$3044$8, (void*)vr$1059, -1ll, (void*)"[rsp], ", 8ll );
								__builtin_memset( &TMP$3045$8, 0, 24ll );
								FBSTRING* vr$1065 = fb_StrConcat( &TMP$3045$8, (void*)vr$1062, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3046$8, -1ll, (void*)vr$1065, -1ll, 0 );
								HWRITEASM64( &TMP$3046$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3046$8 );
							}
							label$2359:;
						}
						goto label$2357;
						label$2358:;
						{
							if( ((int64)-(*(int64*)V2$1 == 5ll) | (int64)-(DTYPE$1 == 20ll)) == 0ll ) goto label$2362;
							{
								int64 TMP$3047$8;
								int64 TMP$3048$8;
								if( (*(int64*)((uint8*)V2$1 + 8ll) & 31ll) != 22ll ) goto label$2363;
								TMP$3047$8 = (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 2ll);
								goto label$3052;
								label$2363:;
								TMP$3047$8 = 0ll;
								label$3052:;
								if( TMP$3047$8 == 0ll ) goto label$2364;
								int64 vr$1076 = FBGETOPTION( 0ll );
								TMP$3048$8 = (int64)-(vr$1076 == 2ll);
								goto label$3053;
								label$2364:;
								TMP$3048$8 = 0ll;
								label$3053:;
								if( TMP$3048$8 == 0ll ) goto label$2366;
								{
									FBSTRING TMP$3049$9;
									FBSTRING TMP$3050$9;
									FBSTRING TMP$3051$9;
									__builtin_memset( &TMP$3051$9, 0, 24ll );
									FBSTRING* vr$1079 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
									int64 vr$1081 = fb_StrInstr( 1ll, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1079 );
									FBSTRING* vr$1084 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1081 + -1ll );
									__builtin_memset( &TMP$3049$9, 0, 24ll );
									FBSTRING* vr$1087 = fb_StrConcat( &TMP$3049$9, (void*)"mov rax, QWORD PTR ", 20ll, (void*)vr$1084, -1ll );
									__builtin_memset( &TMP$3050$9, 0, 24ll );
									FBSTRING* vr$1090 = fb_StrConcat( &TMP$3050$9, (void*)vr$1087, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
									fb_StrAssign( (void*)&TMP$3051$9, -1ll, (void*)vr$1090, -1ll, 0 );
									HWRITEASM64( &TMP$3051$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3051$9 );
								}
								goto label$2365;
								label$2366:;
								{
									FBSTRING TMP$3052$9;
									FBSTRING TMP$3053$9;
									__builtin_memset( &TMP$3053$9, 0, 24ll );
									__builtin_memset( &TMP$3052$9, 0, 24ll );
									FBSTRING* vr$1098 = fb_StrConcat( &TMP$3052$9, (void*)"lea rax, ", 10ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3053$9, -1ll, (void*)vr$1098, -1ll, 0 );
									HWRITEASM64( &TMP$3053$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3053$9 );
								}
								label$2365:;
							}
							goto label$2361;
							label$2362:;
							{
								FBSTRING TMP$3054$8;
								FBSTRING TMP$3055$8;
								__builtin_memset( &TMP$3055$8, 0, 24ll );
								__builtin_memset( &TMP$3054$8, 0, 24ll );
								FBSTRING* vr$1106 = fb_StrConcat( &TMP$3054$8, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3055$8, -1ll, (void*)vr$1106, -1ll, 0 );
								HWRITEASM64( &TMP$3055$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3055$8 );
							}
							label$2361:;
							if( DTYPE$1 != 20ll ) goto label$2368;
							{
								FBSTRING TMP$3056$8;
								FBSTRING TMP$3057$8;
								FBSTRING TMP$3058$8;
								FBSTRING TMP$3059$8;
								FBSTRING TMP$3060$8;
								FBSTRING TMP$3061$8;
								FBSTRING TMP$3062$8;
								FBSTRING TMP$3063$8;
								FBSTRING TMP$3064$8;
								*(int64*)((uint8*)&CTX$ + 216ll) = (((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + *(int64*)((uint8*)&CTX$ + 216ll)) + *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll)) + -1ll) & ~(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll) + -1ll);
								*(int64*)((uint8*)&CTX$ + 216ll) = (*(int64*)((uint8*)&CTX$ + 216ll) + -(*(int64*)((uint8*)&CTX$ + 216ll) % 8ll)) + 8ll;
								__builtin_memset( &TMP$3058$8, 0, 24ll );
								FBSTRING* vr$1128 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
								__builtin_memset( &TMP$3057$8, 0, 24ll );
								FBSTRING* vr$1131 = fb_StrConcat( &TMP$3057$8, (void*)vr$1128, -1ll, (void*)"[rbp]", 6ll );
								fb_StrAssign( (void*)&TMP$3058$8, -1ll, (void*)vr$1131, -1ll, 0 );
								__builtin_memset( &TMP$3056$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3056$8, -1ll, (void*)"rax", 4ll, 0 );
								MEMCOPY( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll), &TMP$3056$8, &TMP$3058$8, 0, 1 );
								fb_StrDelete( (FBSTRING*)&TMP$3058$8 );
								fb_StrDelete( (FBSTRING*)&TMP$3056$8 );
								__builtin_memset( &TMP$3061$8, 0, 24ll );
								FBSTRING* vr$1143 = fb_LongintToStr( -(*(int64*)((uint8*)&CTX$ + 216ll)) );
								__builtin_memset( &TMP$3059$8, 0, 24ll );
								FBSTRING* vr$1146 = fb_StrConcat( &TMP$3059$8, (void*)"lea rax, ", 10ll, (void*)vr$1143, -1ll );
								__builtin_memset( &TMP$3060$8, 0, 24ll );
								FBSTRING* vr$1149 = fb_StrConcat( &TMP$3060$8, (void*)vr$1146, -1ll, (void*)"[rbp]", 6ll );
								fb_StrAssign( (void*)&TMP$3061$8, -1ll, (void*)vr$1149, -1ll, 0 );
								HWRITEASM64( &TMP$3061$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3061$8 );
								__builtin_memset( &TMP$3064$8, 0, 24ll );
								FBSTRING* vr$1156 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3062$8, 0, 24ll );
								FBSTRING* vr$1159 = fb_StrConcat( &TMP$3062$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1156, -1ll );
								__builtin_memset( &TMP$3063$8, 0, 24ll );
								FBSTRING* vr$1162 = fb_StrConcat( &TMP$3063$8, (void*)vr$1159, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$3064$8, -1ll, (void*)vr$1162, -1ll, 0 );
								HWRITEASM64( &TMP$3064$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3064$8 );
							}
							goto label$2367;
							label$2368:;
							{
								FBSTRING TMP$3065$8;
								FBSTRING TMP$3066$8;
								FBSTRING TMP$3067$8;
								__builtin_memset( &TMP$3067$8, 0, 24ll );
								FBSTRING* vr$1169 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
								__builtin_memset( &TMP$3065$8, 0, 24ll );
								FBSTRING* vr$1172 = fb_StrConcat( &TMP$3065$8, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1169, -1ll );
								__builtin_memset( &TMP$3066$8, 0, 24ll );
								FBSTRING* vr$1175 = fb_StrConcat( &TMP$3066$8, (void*)vr$1172, -1ll, (void*)"[rsp], rax", 11ll );
								fb_StrAssign( (void*)&TMP$3067$8, -1ll, (void*)vr$1175, -1ll, 0 );
								HWRITEASM64( &TMP$3067$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3067$8 );
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
			int32 vr$1180 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$1180 == 0ll ) goto label$2370;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2370:;
			}
			if( *(int64*)V2$1 != 0ll ) goto label$2372;
			{
				if( DTYPE$1 != 15ll ) goto label$2374;
				{
					FBSTRING TMP$3071$5;
					FBSTRING TMP$3072$5;
					FBSTRING TMP$3073$5;
					if( *(double*)((uint8*)V2$1 + 48ll) != 0x0p+0 ) goto label$2376;
					{
						FBSTRING TMP$3068$6;
						__builtin_memset( &TMP$3068$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3068$6, -1ll, (void*)"xor eax, eax", 13ll, 0 );
						HWRITEASM64( &TMP$3068$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3068$6 );
					}
					goto label$2375;
					label$2376:;
					{
						FBSTRING TMP$3069$6;
						FBSTRING TMP$3070$6;
						__builtin_memset( &TMP$3070$6, 0, 24ll );
						__builtin_memset( &TMP$3069$6, 0, 24ll );
						FBSTRING* vr$1193 = fb_StrConcat( &TMP$3069$6, (void*)"mov eax, ", 10ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3070$6, -1ll, (void*)vr$1193, -1ll, 0 );
						HWRITEASM64( &TMP$3070$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3070$6 );
					}
					label$2375:;
					__builtin_memset( &TMP$3073$5, 0, 24ll );
					FBSTRING* vr$1199 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
					__builtin_memset( &TMP$3071$5, 0, 24ll );
					FBSTRING* vr$1202 = fb_StrConcat( &TMP$3071$5, (void*)"movd xmm", 9ll, (void*)vr$1199, -1ll );
					__builtin_memset( &TMP$3072$5, 0, 24ll );
					FBSTRING* vr$1205 = fb_StrConcat( &TMP$3072$5, (void*)vr$1202, -1ll, (void*)", eax", 6ll );
					fb_StrAssign( (void*)&TMP$3073$5, -1ll, (void*)vr$1205, -1ll, 0 );
					HWRITEASM64( &TMP$3073$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3073$5 );
				}
				goto label$2373;
				label$2374:;
				if( DTYPE$1 != 16ll ) goto label$2377;
				{
					FBSTRING TMP$3077$5;
					FBSTRING TMP$3078$5;
					FBSTRING TMP$3079$5;
					if( *(double*)((uint8*)V2$1 + 48ll) != 0x0p+0 ) goto label$2379;
					{
						FBSTRING TMP$3074$6;
						__builtin_memset( &TMP$3074$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3074$6, -1ll, (void*)"xor eax, eax", 13ll, 0 );
						HWRITEASM64( &TMP$3074$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3074$6 );
					}
					goto label$2378;
					label$2379:;
					{
						FBSTRING TMP$3075$6;
						FBSTRING TMP$3076$6;
						__builtin_memset( &TMP$3076$6, 0, 24ll );
						__builtin_memset( &TMP$3075$6, 0, 24ll );
						FBSTRING* vr$1218 = fb_StrConcat( &TMP$3075$6, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3076$6, -1ll, (void*)vr$1218, -1ll, 0 );
						HWRITEASM64( &TMP$3076$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3076$6 );
					}
					label$2378:;
					__builtin_memset( &TMP$3079$5, 0, 24ll );
					FBSTRING* vr$1224 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
					__builtin_memset( &TMP$3077$5, 0, 24ll );
					FBSTRING* vr$1227 = fb_StrConcat( &TMP$3077$5, (void*)"movq xmm", 9ll, (void*)vr$1224, -1ll );
					__builtin_memset( &TMP$3078$5, 0, 24ll );
					FBSTRING* vr$1230 = fb_StrConcat( &TMP$3078$5, (void*)vr$1227, -1ll, (void*)", rax", 6ll );
					fb_StrAssign( (void*)&TMP$3079$5, -1ll, (void*)vr$1230, -1ll, 0 );
					HWRITEASM64( &TMP$3079$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3079$5 );
					if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2381;
					{
						FBSTRING TMP$3080$6;
						FBSTRING TMP$3081$6;
						FBSTRING TMP$3082$6;
						__builtin_memset( &TMP$3082$6, 0, 24ll );
						FBSTRING* vr$1241 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
						__builtin_memset( &TMP$3080$6, 0, 24ll );
						FBSTRING* vr$1244 = fb_StrConcat( &TMP$3080$6, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1241, -1ll );
						__builtin_memset( &TMP$3081$6, 0, 24ll );
						FBSTRING* vr$1247 = fb_StrConcat( &TMP$3081$6, (void*)vr$1244, -1ll, (void*)"[rsp], rax", 11ll );
						fb_StrAssign( (void*)&TMP$3082$6, -1ll, (void*)vr$1247, -1ll, 0 );
						HWRITEASM64( &TMP$3082$6, 3ll );
						fb_StrDelete( (FBSTRING*)&TMP$3082$6 );
					}
					label$2381:;
					label$2380:;
				}
				goto label$2373;
				label$2377:;
				{
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$), (int32)REG2$1 );
					if( *(int64*)((uint8*)V2$1 + 48ll) != 0ll ) goto label$2383;
					{
						FBSTRING TMP$3083$6;
						FBSTRING TMP$3084$6;
						FBSTRING TMP$3085$6;
						FBSTRING TMP$3086$6;
						__builtin_memset( &TMP$3086$6, 0, 24ll );
						__builtin_memset( &TMP$3083$6, 0, 24ll );
						FBSTRING* vr$1266 = fb_StrConcat( &TMP$3083$6, (void*)"xor ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$3084$6, 0, 24ll );
						FBSTRING* vr$1269 = fb_StrConcat( &TMP$3084$6, (void*)vr$1266, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$3085$6, 0, 24ll );
						FBSTRING* vr$1272 = fb_StrConcat( &TMP$3085$6, (void*)vr$1269, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						fb_StrAssign( (void*)&TMP$3086$6, -1ll, (void*)vr$1272, -1ll, 0 );
						HWRITEASM64( &TMP$3086$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3086$6 );
					}
					goto label$2382;
					label$2383:;
					if( ((int64)-(*(int64*)((uint8*)V2$1 + 48ll) > 0ll) & (int64)-(*(int64*)((uint8*)V2$1 + 48ll) <= 2147483647ll)) == 0ll ) goto label$2384;
					{
						FBSTRING TMP$3087$6;
						FBSTRING TMP$3088$6;
						FBSTRING TMP$3089$6;
						FBSTRING TMP$3090$6;
						__builtin_memset( &TMP$3090$6, 0, 24ll );
						__builtin_memset( &TMP$3087$6, 0, 24ll );
						FBSTRING* vr$1289 = fb_StrConcat( &TMP$3087$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$3088$6, 0, 24ll );
						FBSTRING* vr$1292 = fb_StrConcat( &TMP$3088$6, (void*)vr$1289, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$3089$6, 0, 24ll );
						FBSTRING* vr$1295 = fb_StrConcat( &TMP$3089$6, (void*)vr$1292, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3090$6, -1ll, (void*)vr$1295, -1ll, 0 );
						HWRITEASM64( &TMP$3090$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3090$6 );
					}
					goto label$2382;
					label$2384:;
					{
						{
							if( DTYPE$1 == 8ll ) goto label$2387;
							label$2388:;
							if( DTYPE$1 == 9ll ) goto label$2387;
							label$2389:;
							if( DTYPE$1 == 13ll ) goto label$2387;
							label$2390:;
							if( DTYPE$1 == 14ll ) goto label$2387;
							label$2391:;
							if( DTYPE$1 != 10ll ) goto label$2386;
							label$2387:;
							{
								FBSTRING TMP$3091$8;
								FBSTRING TMP$3092$8;
								FBSTRING TMP$3093$8;
								FBSTRING TMP$3094$8;
								__builtin_memset( &TMP$3094$8, 0, 24ll );
								__builtin_memset( &TMP$3091$8, 0, 24ll );
								FBSTRING* vr$1307 = fb_StrConcat( &TMP$3091$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3092$8, 0, 24ll );
								FBSTRING* vr$1310 = fb_StrConcat( &TMP$3092$8, (void*)vr$1307, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3093$8, 0, 24ll );
								FBSTRING* vr$1313 = fb_StrConcat( &TMP$3093$8, (void*)vr$1310, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3094$8, -1ll, (void*)vr$1313, -1ll, 0 );
								HWRITEASM64( &TMP$3094$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3094$8 );
							}
							goto label$2385;
							label$2386:;
							{
								FBSTRING TMP$3095$8;
								FBSTRING TMP$3096$8;
								FBSTRING TMP$3097$8;
								FBSTRING TMP$3098$8;
								__builtin_memset( &TMP$3098$8, 0, 24ll );
								__builtin_memset( &TMP$3095$8, 0, 24ll );
								FBSTRING* vr$1325 = fb_StrConcat( &TMP$3095$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3096$8, 0, 24ll );
								FBSTRING* vr$1328 = fb_StrConcat( &TMP$3096$8, (void*)vr$1325, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3097$8, 0, 24ll );
								FBSTRING* vr$1331 = fb_StrConcat( &TMP$3097$8, (void*)vr$1328, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3098$8, -1ll, (void*)vr$1331, -1ll, 0 );
								HWRITEASM64( &TMP$3098$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3098$8 );
							}
							label$2392:;
							label$2385:;
						}
					}
					label$2382:;
					if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2394;
					{
						FBSTRING TMP$3099$6;
						FBSTRING TMP$3100$6;
						FBSTRING TMP$3101$6;
						FBSTRING TMP$3102$6;
						__builtin_memset( &TMP$3102$6, 0, 24ll );
						FBSTRING* vr$1346 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
						__builtin_memset( &TMP$3099$6, 0, 24ll );
						FBSTRING* vr$1349 = fb_StrConcat( &TMP$3099$6, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1346, -1ll );
						__builtin_memset( &TMP$3100$6, 0, 24ll );
						FBSTRING* vr$1352 = fb_StrConcat( &TMP$3100$6, (void*)vr$1349, -1ll, (void*)"[rsp], ", 8ll );
						__builtin_memset( &TMP$3101$6, 0, 24ll );
						FBSTRING* vr$1355 = fb_StrConcat( &TMP$3101$6, (void*)vr$1352, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						fb_StrAssign( (void*)&TMP$3102$6, -1ll, (void*)vr$1355, -1ll, 0 );
						HWRITEASM64( &TMP$3102$6, 3ll );
						fb_StrDelete( (FBSTRING*)&TMP$3102$6 );
					}
					label$2394:;
					label$2393:;
				}
				label$2373:;
			}
			goto label$2371;
			label$2372:;
			if( DTYPE$1 != 20ll ) goto label$2395;
			{
				LGT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) + 80ll);
				if( *(int64*)V2$1 != 4ll ) goto label$2397;
				{
					FBSTRING TMP$3103$5;
					FBSTRING TMP$3104$5;
					__builtin_memset( &TMP$3103$5, 0, 24ll );
					FBSTRING* vr$1365 = fb_StrConcat( &TMP$3103$5, (void*)"[", 2ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$3104$5, 0, 24ll );
					FBSTRING* vr$1368 = fb_StrConcat( &TMP$3104$5, (void*)vr$1365, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$1368, -1ll, 0 );
				}
				label$2397:;
				label$2396:;
				if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2399;
				{
					{
						uint64 TMP$3105$6;
						TMP$3105$6 = (uint64)PARAMTYPE$1;
						goto label$2401;
						label$2402:;
						{
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
						}
						goto label$2400;
						label$2403:;
						{
							REG_FILLR( 8ll, &OP1$1, CPTINT$1 + -1ll, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
						}
						goto label$2400;
						label$2404:;
						{
							REG_FILLR( 8ll, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
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
							REG_FILLX( 8ll, &OP1$1, CPTFLOAT$1 );
							REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
						}
						goto label$2400;
						label$2407:;
						{
							REG_FILLX( 8ll, &OP1$1, CPTFLOAT$1 + -1ll );
							REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
						}
						goto label$2400;
						label$2401:;
						static const void* tmp$3867[6ll] = {
							&&label$2402,
							&&label$2405,
							&&label$2403,
							&&label$2404,
							&&label$2406,
							&&label$2407,
						};
						if( TMP$3105$6 > 5ull ) goto label$2400;
						goto *tmp$3867[TMP$3105$6 - 0ull];
						label$2400:;
					}
				}
				goto label$2398;
				label$2399:;
				{
					if( PARAMTYPE$1 != 0ll ) goto label$2409;
					{
						REG_FILLR( LGT$1, &OP1$1, CPTINT$1, (struct $7FBARRAYIiE*)&LISTREG$, (int32)REG2$1 );
					}
					goto label$2408;
					label$2409:;
					if( PARAMTYPE$1 != 1ll ) goto label$2410;
					{
						REG_FILLX( LGT$1, &OP1$1, CPTFLOAT$1 );
					}
					goto label$2408;
					label$2410:;
					{
						if( *(int64*)V2$1 != 4ll ) goto label$2412;
						{
							{
								uint64 TMP$3106$8;
								TMP$3106$8 = (uint64)LGT$1;
								goto label$2414;
								label$2415:;
								{
									FBSTRING TMP$3107$9;
									FBSTRING TMP$3108$9;
									FBSTRING TMP$3109$9;
									FBSTRING TMP$3110$9;
									__builtin_memset( &TMP$3110$9, 0, 24ll );
									FBSTRING* vr$1395 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3107$9, 0, 24ll );
									FBSTRING* vr$1398 = fb_StrConcat( &TMP$3107$9, (void*)"mov byte PTR ", 14ll, (void*)vr$1395, -1ll );
									__builtin_memset( &TMP$3108$9, 0, 24ll );
									FBSTRING* vr$1401 = fb_StrConcat( &TMP$3108$9, (void*)vr$1398, -1ll, (void*)"[rsp], ", 8ll );
									__builtin_memset( &TMP$3109$9, 0, 24ll );
									FBSTRING* vr$1404 = fb_StrConcat( &TMP$3109$9, (void*)vr$1401, -1ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3110$9, -1ll, (void*)vr$1404, -1ll, 0 );
									HWRITEASM64( &TMP$3110$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3110$9 );
								}
								goto label$2413;
								label$2416:;
								{
									FBSTRING TMP$3111$9;
									FBSTRING TMP$3112$9;
									FBSTRING TMP$3113$9;
									FBSTRING TMP$3114$9;
									__builtin_memset( &TMP$3114$9, 0, 24ll );
									FBSTRING* vr$1412 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3111$9, 0, 24ll );
									FBSTRING* vr$1415 = fb_StrConcat( &TMP$3111$9, (void*)"mov WORD PTR ", 14ll, (void*)vr$1412, -1ll );
									__builtin_memset( &TMP$3112$9, 0, 24ll );
									FBSTRING* vr$1418 = fb_StrConcat( &TMP$3112$9, (void*)vr$1415, -1ll, (void*)"[rsp], ", 8ll );
									__builtin_memset( &TMP$3113$9, 0, 24ll );
									FBSTRING* vr$1421 = fb_StrConcat( &TMP$3113$9, (void*)vr$1418, -1ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3114$9, -1ll, (void*)vr$1421, -1ll, 0 );
									HWRITEASM64( &TMP$3114$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3114$9 );
								}
								goto label$2413;
								label$2417:;
								{
									FBSTRING TMP$3115$9;
									FBSTRING TMP$3116$9;
									FBSTRING TMP$3117$9;
									FBSTRING TMP$3118$9;
									__builtin_memset( &TMP$3118$9, 0, 24ll );
									FBSTRING* vr$1429 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3115$9, 0, 24ll );
									FBSTRING* vr$1432 = fb_StrConcat( &TMP$3115$9, (void*)"mov DWORD PTR ", 15ll, (void*)vr$1429, -1ll );
									__builtin_memset( &TMP$3116$9, 0, 24ll );
									FBSTRING* vr$1435 = fb_StrConcat( &TMP$3116$9, (void*)vr$1432, -1ll, (void*)"[rsp], ", 8ll );
									__builtin_memset( &TMP$3117$9, 0, 24ll );
									FBSTRING* vr$1438 = fb_StrConcat( &TMP$3117$9, (void*)vr$1435, -1ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3118$9, -1ll, (void*)vr$1438, -1ll, 0 );
									HWRITEASM64( &TMP$3118$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3118$9 );
								}
								goto label$2413;
								label$2418:;
								{
									FBSTRING TMP$3119$9;
									FBSTRING TMP$3120$9;
									FBSTRING TMP$3121$9;
									FBSTRING TMP$3122$9;
									__builtin_memset( &TMP$3122$9, 0, 24ll );
									FBSTRING* vr$1446 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3119$9, 0, 24ll );
									FBSTRING* vr$1449 = fb_StrConcat( &TMP$3119$9, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1446, -1ll );
									__builtin_memset( &TMP$3120$9, 0, 24ll );
									FBSTRING* vr$1452 = fb_StrConcat( &TMP$3120$9, (void*)vr$1449, -1ll, (void*)"[rsp], ", 8ll );
									__builtin_memset( &TMP$3121$9, 0, 24ll );
									FBSTRING* vr$1455 = fb_StrConcat( &TMP$3121$9, (void*)vr$1452, -1ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3122$9, -1ll, (void*)vr$1455, -1ll, 0 );
									HWRITEASM64( &TMP$3122$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3122$9 );
								}
								goto label$2413;
								label$2414:;
								static const void* tmp$3868[8ll] = {
									&&label$2415,
									&&label$2416,
									&&label$2413,
									&&label$2417,
									&&label$2413,
									&&label$2413,
									&&label$2413,
									&&label$2418,
								};
								if( (TMP$3106$8 - 1ull) > 7ull ) goto label$2413;
								goto *tmp$3868[TMP$3106$8 - 1ull];
								label$2413:;
							}
						}
						goto label$2411;
						label$2412:;
						{
							{
								uint64 TMP$3123$8;
								TMP$3123$8 = (uint64)LGT$1;
								goto label$2420;
								label$2421:;
								{
									FBSTRING TMP$3124$9;
									FBSTRING TMP$3125$9;
									FBSTRING TMP$3126$9;
									FBSTRING TMP$3127$9;
									FBSTRING TMP$3128$9;
									__builtin_memset( &TMP$3125$9, 0, 24ll );
									__builtin_memset( &TMP$3124$9, 0, 24ll );
									FBSTRING* vr$1463 = fb_StrConcat( &TMP$3124$9, (void*)"mov al, ", 9ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3125$9, -1ll, (void*)vr$1463, -1ll, 0 );
									HWRITEASM64( &TMP$3125$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3125$9 );
									__builtin_memset( &TMP$3128$9, 0, 24ll );
									FBSTRING* vr$1470 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3126$9, 0, 24ll );
									FBSTRING* vr$1473 = fb_StrConcat( &TMP$3126$9, (void*)"mov byte PTR ", 14ll, (void*)vr$1470, -1ll );
									__builtin_memset( &TMP$3127$9, 0, 24ll );
									FBSTRING* vr$1476 = fb_StrConcat( &TMP$3127$9, (void*)vr$1473, -1ll, (void*)"[rsp], al", 10ll );
									fb_StrAssign( (void*)&TMP$3128$9, -1ll, (void*)vr$1476, -1ll, 0 );
									HWRITEASM64( &TMP$3128$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3128$9 );
								}
								goto label$2419;
								label$2422:;
								{
									FBSTRING TMP$3129$9;
									FBSTRING TMP$3130$9;
									FBSTRING TMP$3131$9;
									FBSTRING TMP$3132$9;
									FBSTRING TMP$3133$9;
									__builtin_memset( &TMP$3130$9, 0, 24ll );
									__builtin_memset( &TMP$3129$9, 0, 24ll );
									FBSTRING* vr$1484 = fb_StrConcat( &TMP$3129$9, (void*)"mov ax, ", 9ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3130$9, -1ll, (void*)vr$1484, -1ll, 0 );
									HWRITEASM64( &TMP$3130$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3130$9 );
									__builtin_memset( &TMP$3133$9, 0, 24ll );
									FBSTRING* vr$1491 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3131$9, 0, 24ll );
									FBSTRING* vr$1494 = fb_StrConcat( &TMP$3131$9, (void*)"mov WORD PTR ", 14ll, (void*)vr$1491, -1ll );
									__builtin_memset( &TMP$3132$9, 0, 24ll );
									FBSTRING* vr$1497 = fb_StrConcat( &TMP$3132$9, (void*)vr$1494, -1ll, (void*)"[rsp], ax", 10ll );
									fb_StrAssign( (void*)&TMP$3133$9, -1ll, (void*)vr$1497, -1ll, 0 );
									HWRITEASM64( &TMP$3133$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3133$9 );
								}
								goto label$2419;
								label$2423:;
								{
									FBSTRING TMP$3134$9;
									FBSTRING TMP$3135$9;
									FBSTRING TMP$3136$9;
									FBSTRING TMP$3137$9;
									FBSTRING TMP$3138$9;
									__builtin_memset( &TMP$3135$9, 0, 24ll );
									__builtin_memset( &TMP$3134$9, 0, 24ll );
									FBSTRING* vr$1505 = fb_StrConcat( &TMP$3134$9, (void*)"mov eax, ", 10ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3135$9, -1ll, (void*)vr$1505, -1ll, 0 );
									HWRITEASM64( &TMP$3135$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3135$9 );
									__builtin_memset( &TMP$3138$9, 0, 24ll );
									FBSTRING* vr$1512 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3136$9, 0, 24ll );
									FBSTRING* vr$1515 = fb_StrConcat( &TMP$3136$9, (void*)"mov DWORD PTR ", 15ll, (void*)vr$1512, -1ll );
									__builtin_memset( &TMP$3137$9, 0, 24ll );
									FBSTRING* vr$1518 = fb_StrConcat( &TMP$3137$9, (void*)vr$1515, -1ll, (void*)"[rsp], eax", 11ll );
									fb_StrAssign( (void*)&TMP$3138$9, -1ll, (void*)vr$1518, -1ll, 0 );
									HWRITEASM64( &TMP$3138$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3138$9 );
								}
								goto label$2419;
								label$2424:;
								{
									FBSTRING TMP$3139$9;
									FBSTRING TMP$3140$9;
									FBSTRING TMP$3141$9;
									FBSTRING TMP$3142$9;
									FBSTRING TMP$3143$9;
									__builtin_memset( &TMP$3140$9, 0, 24ll );
									__builtin_memset( &TMP$3139$9, 0, 24ll );
									FBSTRING* vr$1526 = fb_StrConcat( &TMP$3139$9, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
									fb_StrAssign( (void*)&TMP$3140$9, -1ll, (void*)vr$1526, -1ll, 0 );
									HWRITEASM64( &TMP$3140$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3140$9 );
									__builtin_memset( &TMP$3143$9, 0, 24ll );
									FBSTRING* vr$1533 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
									__builtin_memset( &TMP$3141$9, 0, 24ll );
									FBSTRING* vr$1536 = fb_StrConcat( &TMP$3141$9, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1533, -1ll );
									__builtin_memset( &TMP$3142$9, 0, 24ll );
									FBSTRING* vr$1539 = fb_StrConcat( &TMP$3142$9, (void*)vr$1536, -1ll, (void*)"[rsp], rax", 11ll );
									fb_StrAssign( (void*)&TMP$3143$9, -1ll, (void*)vr$1539, -1ll, 0 );
									HWRITEASM64( &TMP$3143$9, 0ll );
									fb_StrDelete( (FBSTRING*)&TMP$3143$9 );
								}
								goto label$2419;
								label$2420:;
								static const void* tmp$3869[8ll] = {
									&&label$2421,
									&&label$2422,
									&&label$2419,
									&&label$2423,
									&&label$2419,
									&&label$2419,
									&&label$2419,
									&&label$2424,
								};
								if( (TMP$3123$8 - 1ull) > 7ull ) goto label$2419;
								goto *tmp$3869[TMP$3123$8 - 1ull];
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
				if( *(int64*)V2$1 != 5ll ) goto label$2426;
				{
					int64 TMP$3144$5;
					int64 TMP$3145$5;
					REG_TRANSFER( *(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$), (int32)REG2$1 );
					if( (*(int64*)((uint8*)V2$1 + 8ll) & 31ll) != 22ll ) goto label$2427;
					TMP$3144$5 = (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 2ll);
					goto label$3054;
					label$2427:;
					TMP$3144$5 = 0ll;
					label$3054:;
					if( TMP$3144$5 == 0ll ) goto label$2428;
					int64 vr$1550 = FBGETOPTION( 0ll );
					TMP$3145$5 = (int64)-(vr$1550 == 2ll);
					goto label$3055;
					label$2428:;
					TMP$3145$5 = 0ll;
					label$3055:;
					if( TMP$3145$5 == 0ll ) goto label$2430;
					{
						FBSTRING TMP$3146$6;
						FBSTRING TMP$3147$6;
						FBSTRING TMP$3148$6;
						FBSTRING TMP$3149$6;
						FBSTRING TMP$3150$6;
						__builtin_memset( &TMP$3150$6, 0, 24ll );
						FBSTRING* vr$1553 = fb_StrAllocTempDescZEx( (uint8*)"[", 1ll );
						int64 vr$1555 = fb_StrInstr( 1ll, (FBSTRING*)&OP1$1, (FBSTRING*)vr$1553 );
						FBSTRING* vr$1558 = fb_LEFT( (FBSTRING*)&OP1$1, vr$1555 + -1ll );
						__builtin_memset( &TMP$3146$6, 0, 24ll );
						FBSTRING* vr$1565 = fb_StrConcat( &TMP$3146$6, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$3147$6, 0, 24ll );
						FBSTRING* vr$1568 = fb_StrConcat( &TMP$3147$6, (void*)vr$1565, -1ll, (void*)", QWORD PTR ", 13ll );
						__builtin_memset( &TMP$3148$6, 0, 24ll );
						FBSTRING* vr$1571 = fb_StrConcat( &TMP$3148$6, (void*)vr$1568, -1ll, (void*)vr$1558, -1ll );
						__builtin_memset( &TMP$3149$6, 0, 24ll );
						FBSTRING* vr$1574 = fb_StrConcat( &TMP$3149$6, (void*)vr$1571, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
						fb_StrAssign( (void*)&TMP$3150$6, -1ll, (void*)vr$1574, -1ll, 0 );
						HWRITEASM64( &TMP$3150$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3150$6 );
					}
					goto label$2429;
					label$2430:;
					{
						FBSTRING TMP$3151$6;
						FBSTRING TMP$3152$6;
						FBSTRING TMP$3153$6;
						FBSTRING TMP$3154$6;
						__builtin_memset( &TMP$3154$6, 0, 24ll );
						__builtin_memset( &TMP$3151$6, 0, 24ll );
						FBSTRING* vr$1586 = fb_StrConcat( &TMP$3151$6, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						__builtin_memset( &TMP$3152$6, 0, 24ll );
						FBSTRING* vr$1589 = fb_StrConcat( &TMP$3152$6, (void*)vr$1586, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$3153$6, 0, 24ll );
						FBSTRING* vr$1592 = fb_StrConcat( &TMP$3153$6, (void*)vr$1589, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3154$6, -1ll, (void*)vr$1592, -1ll, 0 );
						HWRITEASM64( &TMP$3154$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3154$6 );
					}
					label$2429:;
					if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2432;
					{
						FBSTRING TMP$3155$6;
						FBSTRING TMP$3156$6;
						FBSTRING TMP$3157$6;
						FBSTRING TMP$3158$6;
						__builtin_memset( &TMP$3158$6, 0, 24ll );
						FBSTRING* vr$1607 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
						__builtin_memset( &TMP$3155$6, 0, 24ll );
						FBSTRING* vr$1610 = fb_StrConcat( &TMP$3155$6, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1607, -1ll );
						__builtin_memset( &TMP$3156$6, 0, 24ll );
						FBSTRING* vr$1613 = fb_StrConcat( &TMP$3156$6, (void*)vr$1610, -1ll, (void*)"[rsp], ", 8ll );
						__builtin_memset( &TMP$3157$6, 0, 24ll );
						FBSTRING* vr$1616 = fb_StrConcat( &TMP$3157$6, (void*)vr$1613, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
						fb_StrAssign( (void*)&TMP$3158$6, -1ll, (void*)vr$1616, -1ll, 0 );
						HWRITEASM64( &TMP$3158$6, 3ll );
						fb_StrDelete( (FBSTRING*)&TMP$3158$6 );
					}
					label$2432:;
					label$2431:;
				}
				goto label$2425;
				label$2426:;
				{
					int64 TMP$3159$5;
					if( (DTYPE$1 & 480ll) == 0ll ) goto label$2433;
					TMP$3159$5 = 24ll;
					goto label$3056;
					label$2433:;
					TMP$3159$5 = DTYPE$1 & 31ll;
					label$3056:;
					if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$3159$5 * 56ll)) != 1ll ) goto label$2435;
					{
						if( DTYPE$1 != 16ll ) goto label$2437;
						{
							if( *(int64*)V2$1 != 4ll ) goto label$2439;
							{
								FBSTRING TMP$3160$8;
								FBSTRING TMP$3161$8;
								FBSTRING TMP$3162$8;
								FBSTRING TMP$3163$8;
								__builtin_memset( &TMP$3163$8, 0, 24ll );
								FBSTRING* vr$1627 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
								__builtin_memset( &TMP$3160$8, 0, 24ll );
								FBSTRING* vr$1630 = fb_StrConcat( &TMP$3160$8, (void*)"movq xmm", 9ll, (void*)vr$1627, -1ll );
								__builtin_memset( &TMP$3161$8, 0, 24ll );
								FBSTRING* vr$1633 = fb_StrConcat( &TMP$3161$8, (void*)vr$1630, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3162$8, 0, 24ll );
								FBSTRING* vr$1636 = fb_StrConcat( &TMP$3162$8, (void*)vr$1633, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3163$8, -1ll, (void*)vr$1636, -1ll, 0 );
								HWRITEASM64( &TMP$3163$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3163$8 );
							}
							goto label$2438;
							label$2439:;
							{
								FBSTRING TMP$3165$8;
								FBSTRING TMP$3166$8;
								FBSTRING TMP$3167$8;
								FBSTRING TMP$3168$8;
								__builtin_memset( &TMP$3168$8, 0, 24ll );
								FBSTRING* vr$1643 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
								__builtin_memset( &TMP$3165$8, 0, 24ll );
								FBSTRING* vr$1646 = fb_StrConcat( &TMP$3165$8, (void*)"movsd xmm", 10ll, (void*)vr$1643, -1ll );
								__builtin_memset( &TMP$3166$8, 0, 24ll );
								FBSTRING* vr$1649 = fb_StrConcat( &TMP$3166$8, (void*)vr$1646, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3167$8, 0, 24ll );
								FBSTRING* vr$1652 = fb_StrConcat( &TMP$3167$8, (void*)vr$1649, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3168$8, -1ll, (void*)vr$1652, -1ll, 0 );
								HWRITEASM64( &TMP$3168$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3168$8 );
							}
							label$2438:;
						}
						goto label$2436;
						label$2437:;
						{
							if( *(int64*)V2$1 != 4ll ) goto label$2441;
							{
								FBSTRING TMP$3169$8;
								FBSTRING TMP$3170$8;
								FBSTRING TMP$3171$8;
								FBSTRING TMP$3172$8;
								__builtin_memset( &TMP$3172$8, 0, 24ll );
								FBSTRING* vr$1660 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
								__builtin_memset( &TMP$3169$8, 0, 24ll );
								FBSTRING* vr$1663 = fb_StrConcat( &TMP$3169$8, (void*)"movd xmm", 9ll, (void*)vr$1660, -1ll );
								__builtin_memset( &TMP$3170$8, 0, 24ll );
								FBSTRING* vr$1666 = fb_StrConcat( &TMP$3170$8, (void*)vr$1663, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3171$8, 0, 24ll );
								FBSTRING* vr$1669 = fb_StrConcat( &TMP$3171$8, (void*)vr$1666, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3172$8, -1ll, (void*)vr$1669, -1ll, 0 );
								HWRITEASM64( &TMP$3172$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3172$8 );
							}
							goto label$2440;
							label$2441:;
							{
								FBSTRING TMP$3174$8;
								FBSTRING TMP$3175$8;
								FBSTRING TMP$3176$8;
								FBSTRING TMP$3177$8;
								__builtin_memset( &TMP$3177$8, 0, 24ll );
								FBSTRING* vr$1676 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
								__builtin_memset( &TMP$3174$8, 0, 24ll );
								FBSTRING* vr$1679 = fb_StrConcat( &TMP$3174$8, (void*)"movss xmm", 10ll, (void*)vr$1676, -1ll );
								__builtin_memset( &TMP$3175$8, 0, 24ll );
								FBSTRING* vr$1682 = fb_StrConcat( &TMP$3175$8, (void*)vr$1679, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3176$8, 0, 24ll );
								FBSTRING* vr$1685 = fb_StrConcat( &TMP$3176$8, (void*)vr$1682, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3177$8, -1ll, (void*)vr$1685, -1ll, 0 );
								HWRITEASM64( &TMP$3177$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3177$8 );
							}
							label$2440:;
						}
						label$2436:;
						if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2443;
						{
							FBSTRING TMP$3180$7;
							FBSTRING TMP$3181$7;
							FBSTRING TMP$3182$7;
							FBSTRING TMP$3183$7;
							FBSTRING TMP$3185$7;
							FBSTRING TMP$3186$7;
							FBSTRING TMP$3187$7;
							FBSTRING TMP$3188$7;
							__builtin_memset( &TMP$3183$7, 0, 24ll );
							FBSTRING* vr$1695 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
							FBSTRING* vr$1698 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
							__builtin_memset( &TMP$3180$7, 0, 24ll );
							FBSTRING* vr$1701 = fb_StrConcat( &TMP$3180$7, (void*)"movsd QWORD PTR ", 17ll, (void*)vr$1698, -1ll );
							__builtin_memset( &TMP$3181$7, 0, 24ll );
							FBSTRING* vr$1704 = fb_StrConcat( &TMP$3181$7, (void*)vr$1701, -1ll, (void*)"[rsp], xmm", 11ll );
							__builtin_memset( &TMP$3182$7, 0, 24ll );
							FBSTRING* vr$1707 = fb_StrConcat( &TMP$3182$7, (void*)vr$1704, -1ll, (void*)vr$1695, -1ll );
							fb_StrAssign( (void*)&TMP$3183$7, -1ll, (void*)vr$1707, -1ll, 0 );
							HWRITEASM64( &TMP$3183$7, 3ll );
							fb_StrDelete( (FBSTRING*)&TMP$3183$7 );
							__builtin_memset( &TMP$3188$7, 0, 24ll );
							FBSTRING* vr$1713 = fb_LongintToStr( CPTFLOAT$1 + -1ll );
							__builtin_memset( &TMP$3185$7, 0, 24ll );
							FBSTRING* vr$1720 = fb_StrConcat( &TMP$3185$7, (void*)"movq ", 6ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$3186$7, 0, 24ll );
							FBSTRING* vr$1723 = fb_StrConcat( &TMP$3186$7, (void*)vr$1720, -1ll, (void*)", xmm", 6ll );
							__builtin_memset( &TMP$3187$7, 0, 24ll );
							FBSTRING* vr$1726 = fb_StrConcat( &TMP$3187$7, (void*)vr$1723, -1ll, (void*)vr$1713, -1ll );
							fb_StrAssign( (void*)&TMP$3188$7, -1ll, (void*)vr$1726, -1ll, 0 );
							HWRITEASM64( &TMP$3188$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3188$7 );
						}
						label$2443:;
						label$2442:;
					}
					goto label$2434;
					label$2435:;
					{
						int64 TMP$3194$6;
						REG_TRANSFER( *(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$), (int32)REG2$1 );
						if( DTYPE$1 != 19ll ) goto label$2445;
						{
							if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2447;
							{
								FBSTRING TMP$3189$8;
								FBSTRING TMP$3192$8;
								FBSTRING TMP$3193$8;
								__builtin_memset( &TMP$3189$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3189$8, -1ll, (void*)"", 1ll, 0 );
								HWRITEASM64( &TMP$3189$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3189$8 );
								__builtin_memset( &TMP$3192$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3192$8, -1ll, (void*)"FOUND AN ERROR : in hdocall Va_list and target linux could be a problem", 72ll, 0 );
								HWRITEASM64( &TMP$3192$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3192$8 );
								__builtin_memset( &TMP$3193$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3193$8, -1ll, (void*)"", 1ll, 0 );
								HWRITEASM64( &TMP$3193$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3193$8 );
							}
							goto label$2446;
							label$2447:;
							{
								DTYPE$1 = 8ll;
							}
							label$2446:;
						}
						label$2445:;
						label$2444:;
						if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2448;
						int64 vr$1745 = FBGETOPTION( 0ll );
						TMP$3194$6 = (int64)-(vr$1745 == 2ll);
						goto label$3057;
						label$2448:;
						TMP$3194$6 = 0ll;
						label$3057:;
						if( TMP$3194$6 == 0ll ) goto label$2450;
						{
							int64 TMP$3195$7;
							if( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$2451;
							TMP$3195$7 = (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 8ll) != 0ll);
							goto label$3058;
							label$2451:;
							TMP$3195$7 = 0ll;
							label$3058:;
							if( TMP$3195$7 == 0ll ) goto label$2453;
							{
								FBSTRING TMP$3196$8;
								FBSTRING TMP$3197$8;
								FBSTRING TMP$3198$8;
								__builtin_memset( &TMP$3198$8, 0, 24ll );
								uint8* vr$1754 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
								__builtin_memset( &TMP$3196$8, 0, 24ll );
								FBSTRING* vr$1757 = fb_StrConcat( &TMP$3196$8, (void*)"mov rax, ", 10ll, (void*)vr$1754, 0ll );
								__builtin_memset( &TMP$3197$8, 0, 24ll );
								FBSTRING* vr$1760 = fb_StrConcat( &TMP$3197$8, (void*)vr$1757, -1ll, (void*)"@GOTPCREL[rip]", 15ll );
								fb_StrAssign( (void*)&TMP$3198$8, -1ll, (void*)vr$1760, -1ll, 0 );
								HWRITEASM64( &TMP$3198$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3198$8 );
								fb_StrAssign( (void*)&OP1$1, -1ll, (void*)"[rax]", 6ll, 0 );
							}
							label$2453:;
							label$2452:;
						}
						label$2450:;
						label$2449:;
						{
							if( DTYPE$1 == 8ll ) goto label$2456;
							label$2457:;
							if( DTYPE$1 == 9ll ) goto label$2456;
							label$2458:;
							if( DTYPE$1 == 13ll ) goto label$2456;
							label$2459:;
							if( DTYPE$1 == 14ll ) goto label$2456;
							label$2460:;
							if( DTYPE$1 != 10ll ) goto label$2455;
							label$2456:;
							{
								FBSTRING TMP$3199$8;
								FBSTRING TMP$3200$8;
								FBSTRING TMP$3201$8;
								FBSTRING TMP$3202$8;
								__builtin_memset( &TMP$3202$8, 0, 24ll );
								__builtin_memset( &TMP$3199$8, 0, 24ll );
								FBSTRING* vr$1773 = fb_StrConcat( &TMP$3199$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3200$8, 0, 24ll );
								FBSTRING* vr$1776 = fb_StrConcat( &TMP$3200$8, (void*)vr$1773, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3201$8, 0, 24ll );
								FBSTRING* vr$1779 = fb_StrConcat( &TMP$3201$8, (void*)vr$1776, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3202$8, -1ll, (void*)vr$1779, -1ll, 0 );
								HWRITEASM64( &TMP$3202$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3202$8 );
							}
							goto label$2454;
							label$2455:;
							if( DTYPE$1 == 11ll ) goto label$2462;
							label$2463:;
							if( DTYPE$1 != 12ll ) goto label$2461;
							label$2462:;
							{
								FBSTRING TMP$3203$8;
								FBSTRING TMP$3204$8;
								FBSTRING TMP$3205$8;
								FBSTRING TMP$3206$8;
								__builtin_memset( &TMP$3206$8, 0, 24ll );
								__builtin_memset( &TMP$3203$8, 0, 24ll );
								FBSTRING* vr$1791 = fb_StrConcat( &TMP$3203$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRD$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3204$8, 0, 24ll );
								FBSTRING* vr$1794 = fb_StrConcat( &TMP$3204$8, (void*)vr$1791, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3205$8, 0, 24ll );
								FBSTRING* vr$1797 = fb_StrConcat( &TMP$3205$8, (void*)vr$1794, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3206$8, -1ll, (void*)vr$1797, -1ll, 0 );
								HWRITEASM64( &TMP$3206$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3206$8 );
							}
							goto label$2454;
							label$2461:;
							if( DTYPE$1 == 5ll ) goto label$2465;
							label$2466:;
							if( DTYPE$1 != 6ll ) goto label$2464;
							label$2465:;
							{
								FBSTRING TMP$3207$8;
								FBSTRING TMP$3208$8;
								FBSTRING TMP$3209$8;
								FBSTRING TMP$3210$8;
								__builtin_memset( &TMP$3210$8, 0, 24ll );
								__builtin_memset( &TMP$3207$8, 0, 24ll );
								FBSTRING* vr$1809 = fb_StrConcat( &TMP$3207$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRW$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3208$8, 0, 24ll );
								FBSTRING* vr$1812 = fb_StrConcat( &TMP$3208$8, (void*)vr$1809, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3209$8, 0, 24ll );
								FBSTRING* vr$1815 = fb_StrConcat( &TMP$3209$8, (void*)vr$1812, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3210$8, -1ll, (void*)vr$1815, -1ll, 0 );
								HWRITEASM64( &TMP$3210$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3210$8 );
							}
							goto label$2454;
							label$2464:;
							if( DTYPE$1 == 2ll ) goto label$2468;
							label$2469:;
							if( DTYPE$1 == 3ll ) goto label$2468;
							label$2470:;
							if( DTYPE$1 == 1ll ) goto label$2468;
							label$2471:;
							if( DTYPE$1 != 4ll ) goto label$2467;
							label$2468:;
							{
								FBSTRING TMP$3211$8;
								FBSTRING TMP$3212$8;
								FBSTRING TMP$3213$8;
								FBSTRING TMP$3214$8;
								__builtin_memset( &TMP$3214$8, 0, 24ll );
								__builtin_memset( &TMP$3211$8, 0, 24ll );
								FBSTRING* vr$1827 = fb_StrConcat( &TMP$3211$8, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRB$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
								__builtin_memset( &TMP$3212$8, 0, 24ll );
								FBSTRING* vr$1830 = fb_StrConcat( &TMP$3212$8, (void*)vr$1827, -1ll, (void*)", ", 3ll );
								__builtin_memset( &TMP$3213$8, 0, 24ll );
								FBSTRING* vr$1833 = fb_StrConcat( &TMP$3213$8, (void*)vr$1830, -1ll, (void*)&OP1$1, -1ll );
								fb_StrAssign( (void*)&TMP$3214$8, -1ll, (void*)vr$1833, -1ll, 0 );
								HWRITEASM64( &TMP$3214$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3214$8 );
							}
							goto label$2454;
							label$2467:;
							{
								FBSTRING TMP$3215$8;
								FBSTRING TMP$3219$8;
								FBSTRING TMP$3220$8;
								FBSTRING TMP$3221$8;
								__builtin_memset( &TMP$3215$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3215$8, -1ll, (void*)"", 1ll, 0 );
								HWRITEASM64( &TMP$3215$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3215$8 );
								__builtin_memset( &TMP$3220$8, 0, 24ll );
								FBSTRING* vr$1842 = fb_LongintToStr( DTYPE$1 );
								__builtin_memset( &TMP$3219$8, 0, 24ll );
								FBSTRING* vr$1845 = fb_StrConcat( &TMP$3219$8, (void*)"FOUND AN ERROR : in hdocall datatype not handled 03 = ", 55ll, (void*)vr$1842, -1ll );
								fb_StrAssign( (void*)&TMP$3220$8, -1ll, (void*)vr$1845, -1ll, 0 );
								HWRITEASM64( &TMP$3220$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3220$8 );
								__builtin_memset( &TMP$3221$8, 0, 24ll );
								fb_StrAssign( (void*)&TMP$3221$8, -1ll, (void*)"", 1ll, 0 );
								HWRITEASM64( &TMP$3221$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3221$8 );
							}
							label$2472:;
							label$2454:;
						}
						if( ((int64)-((int64)-VARIADIC$1 == -1ll) & (int64)-(*(int64*)((uint8*)&CTX$ + 408ll) == 0ll)) == 0ll ) goto label$2474;
						{
							FBSTRING TMP$3222$7;
							FBSTRING TMP$3223$7;
							FBSTRING TMP$3224$7;
							FBSTRING TMP$3225$7;
							__builtin_memset( &TMP$3225$7, 0, 24ll );
							FBSTRING* vr$1864 = fb_LongintToStr( (CPTARG$1 << (3ll & 63ll)) + -8ll );
							__builtin_memset( &TMP$3222$7, 0, 24ll );
							FBSTRING* vr$1867 = fb_StrConcat( &TMP$3222$7, (void*)"mov QWORD PTR ", 15ll, (void*)vr$1864, -1ll );
							__builtin_memset( &TMP$3223$7, 0, 24ll );
							FBSTRING* vr$1870 = fb_StrConcat( &TMP$3223$7, (void*)vr$1867, -1ll, (void*)"[rsp], ", 8ll );
							__builtin_memset( &TMP$3224$7, 0, 24ll );
							FBSTRING* vr$1873 = fb_StrConcat( &TMP$3224$7, (void*)vr$1870, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)*(int32*)((CPTINT$1 << (2ll & 63ll)) + *(int64*)&LISTREG$) << (3ll & 63ll))), 0ll );
							fb_StrAssign( (void*)&TMP$3225$7, -1ll, (void*)vr$1873, -1ll, 0 );
							HWRITEASM64( &TMP$3225$7, 3ll );
							fb_StrDelete( (FBSTRING*)&TMP$3225$7 );
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
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll), (void*)ARG$1 );
		ARG$1 = PREV$1;
	}
	goto label$2217;
	label$2218:;
	if( CPTARG$1 <= *(int64*)((uint8*)&CTX$ + 160ll) ) goto label$2476;
	{
		*(int64*)((uint8*)&CTX$ + 160ll) = CPTARG$1;
		label$2476:;
	}
	int32 vr$1878 = fb_StrCompare( (void*)FIRSTMOV$1, -1ll, (void*)"", 1ll );
	if( (int64)vr$1878 == 0ll ) goto label$2478;
	{
		HWRITEASM64( FIRSTMOV$1, 0ll );
		label$2478:;
	}
	if( CALLPTR$1 == (boolean)0ll ) goto label$2480;
	{
		FBSTRING TMP$3226$2;
		FBSTRING TMP$3227$2;
		__builtin_memset( &TMP$3227$2, 0, 24ll );
		__builtin_memset( &TMP$3226$2, 0, 24ll );
		FBSTRING* vr$1883 = fb_StrConcat( &TMP$3226$2, (void*)"call ", 6ll, (void*)PNAME$1, -1ll );
		fb_StrAssign( (void*)&TMP$3227$2, -1ll, (void*)vr$1883, -1ll, 0 );
		REG_FREEABLE( &TMP$3227$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3227$2 );
		label$2480:;
	}
	if( PUSHSIZE$1 == 0ll ) goto label$2482;
	{
		if( (PUSHSIZE$1 % 16ll) == 0ll ) goto label$2484;
		{
			FBSTRING TMP$3229$3;
			PUSHSIZE$1 = (((PUSHSIZE$1 + ((PUSHSIZE$1 >> (63ll & 63ll)) & 15ll)) >> (4ll & 63ll)) << (4ll & 63ll)) + 16ll;
			__builtin_memset( &TMP$3229$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3229$3, -1ll, (void*)"sub rsp, 8", 11ll, 0 );
			HWRITEASM64( &TMP$3229$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3229$3 );
		}
		label$2484:;
		label$2483:;
		{
			int64 ISTR$3;
			ISTR$3 = PUSHNBSTR$1;
			goto label$2485;
			label$2488:;
			{
				FBSTRING* vr$1900 = fb_RIGHT( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 24ll)), 3ll );
				int32 vr$1901 = fb_StrCompare( (void*)vr$1900, -1ll, (void*)"#NO", 4ll );
				if( (int64)vr$1901 != 0ll ) goto label$2490;
				{
					HWRITEASM64( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 24ll)), 3ll );
				}
				goto label$2489;
				label$2490:;
				{
					HWRITEASM64( (FBSTRING*)((uint8*)PUSHSTR$1 + (ISTR$3 * 24ll)), 0ll );
				}
				label$2489:;
			}
			label$2486:;
			ISTR$3 = ISTR$3 + -1ll;
			label$2485:;
			if( ISTR$3 >= 1ll ) goto label$2488;
			label$2487:;
		}
	}
	label$2482:;
	label$2481:;
	if( CALLPTR$1 == (boolean)0ll ) goto label$2492;
	{
		REG_ALLOWED( (boolean)1ll );
		label$2492:;
	}
	REG_SAVE(  );
	if( (int64)-VARIADIC$1 != -1ll ) goto label$2494;
	{
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2496;
		{
			int64 TMP$3230$3;
			FBSTRING TMP$3231$3;
			FBSTRING TMP$3232$3;
			__builtin_memset( &TMP$3232$3, 0, 24ll );
			if( CPTFLOAT$1 > 8ll ) goto label$2497;
			TMP$3230$3 = CPTFLOAT$1;
			goto label$3059;
			label$2497:;
			TMP$3230$3 = 8ll;
			label$3059:;
			FBSTRING* vr$1910 = fb_LongintToStr( TMP$3230$3 );
			__builtin_memset( &TMP$3231$3, 0, 24ll );
			FBSTRING* vr$1913 = fb_StrConcat( &TMP$3231$3, (void*)"mov eax, ", 10ll, (void*)vr$1910, -1ll );
			fb_StrAssign( (void*)&TMP$3232$3, -1ll, (void*)vr$1913, -1ll, 0 );
			HWRITEASM64( &TMP$3232$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3232$3 );
		}
		label$2496:;
		label$2495:;
	}
	label$2494:;
	label$2493:;
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2498;
	int64 vr$1917 = FBGETOPTION( 0ll );
	TMP$3233$1 = (int64)-(vr$1917 == 2ll);
	goto label$3060;
	label$2498:;
	TMP$3233$1 = 0ll;
	label$3060:;
	if( TMP$3233$1 == 0ll ) goto label$2500;
	{
		FBSTRING TMP$3234$2;
		FBSTRING TMP$3235$2;
		FBSTRING TMP$3236$2;
		__builtin_memset( &TMP$3236$2, 0, 24ll );
		__builtin_memset( &TMP$3234$2, 0, 24ll );
		FBSTRING* vr$1922 = fb_StrConcat( &TMP$3234$2, (void*)"call ", 6ll, (void*)PNAME$1, -1ll );
		__builtin_memset( &TMP$3235$2, 0, 24ll );
		FBSTRING* vr$1925 = fb_StrConcat( &TMP$3235$2, (void*)vr$1922, -1ll, (void*)"@PLT", 5ll );
		fb_StrAssign( (void*)&TMP$3236$2, -1ll, (void*)vr$1925, -1ll, 0 );
		HWRITEASM64( &TMP$3236$2, 1ll );
		fb_StrDelete( (FBSTRING*)&TMP$3236$2 );
	}
	goto label$2499;
	label$2500:;
	{
		FBSTRING TMP$3237$2;
		FBSTRING TMP$3238$2;
		__builtin_memset( &TMP$3238$2, 0, 24ll );
		__builtin_memset( &TMP$3237$2, 0, 24ll );
		FBSTRING* vr$1932 = fb_StrConcat( &TMP$3237$2, (void*)"call ", 6ll, (void*)PNAME$1, -1ll );
		fb_StrAssign( (void*)&TMP$3238$2, -1ll, (void*)vr$1932, -1ll, 0 );
		HWRITEASM64( &TMP$3238$2, 1ll );
		fb_StrDelete( (FBSTRING*)&TMP$3238$2 );
	}
	label$2499:;
	if( PUSHSIZE$1 == 0ll ) goto label$2502;
	{
		FBSTRING TMP$3240$2;
		FBSTRING TMP$3241$2;
		__builtin_memset( &TMP$3241$2, 0, 24ll );
		FBSTRING* vr$1937 = fb_LongintToStr( PUSHSIZE$1 );
		__builtin_memset( &TMP$3240$2, 0, 24ll );
		FBSTRING* vr$1940 = fb_StrConcat( &TMP$3240$2, (void*)"add rsp, ", 10ll, (void*)vr$1937, -1ll );
		fb_StrAssign( (void*)&TMP$3241$2, -1ll, (void*)vr$1940, -1ll, 0 );
		HWRITEASM64( &TMP$3241$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3241$2 );
		PUSHSIZE$1 = 0ll;
		PUSHNBSTR$1 = 0ll;
	}
	label$2502:;
	label$2501:;
	if( *(int64*)((uint8*)&CTX$ + 216ll) <= *(int64*)((uint8*)&CTX$ + 200ll) ) goto label$2504;
	{
		*(int64*)((uint8*)&CTX$ + 200ll) = *(int64*)((uint8*)&CTX$ + 216ll);
		label$2504:;
	}
	*(int64*)((uint8*)&CTX$ + 208ll) = 0ll;
	*(boolean*)((uint8*)&CTX$ + 257ll) = (boolean)0ll;
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$2506;
	{
		int64 vr$1944 = HISSTRUCTIN2REGS( VR$1 );
		if( vr$1944 == 0ll ) goto label$2508;
		{
			*($15IRVREGTYPE_ENUM*)VR$1 = 1ll;
			*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 192ll) + (*(int64*)((uint8*)SYMB_DTYPETB$ + 736ll) << (1ll & 63ll));
			*(int64*)((uint8*)VR$1 + 64ll) = -(*(int64*)((uint8*)&CTX$ + 192ll));
			{
				uint64 TMP$3242$4;
				TMP$3242$4 = *(uint64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) + 224ll);
				goto label$2510;
				label$2511:;
				{
					FBSTRING TMP$3244$5;
					FBSTRING TMP$3245$5;
					FBSTRING TMP$3246$5;
					FBSTRING TMP$3248$5;
					FBSTRING TMP$3249$5;
					FBSTRING TMP$3250$5;
					__builtin_memset( &TMP$3246$5, 0, 24ll );
					FBSTRING* vr$1954 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					__builtin_memset( &TMP$3244$5, 0, 24ll );
					FBSTRING* vr$1957 = fb_StrConcat( &TMP$3244$5, (void*)"mov ", 5ll, (void*)vr$1954, -1ll );
					__builtin_memset( &TMP$3245$5, 0, 24ll );
					FBSTRING* vr$1960 = fb_StrConcat( &TMP$3245$5, (void*)vr$1957, -1ll, (void*)"[rbp], rax", 11ll );
					fb_StrAssign( (void*)&TMP$3246$5, -1ll, (void*)vr$1960, -1ll, 0 );
					HWRITEASM64( &TMP$3246$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3246$5 );
					__builtin_memset( &TMP$3250$5, 0, 24ll );
					FBSTRING* vr$1967 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) + 8ll );
					__builtin_memset( &TMP$3248$5, 0, 24ll );
					FBSTRING* vr$1970 = fb_StrConcat( &TMP$3248$5, (void*)"mov ", 5ll, (void*)vr$1967, -1ll );
					__builtin_memset( &TMP$3249$5, 0, 24ll );
					FBSTRING* vr$1973 = fb_StrConcat( &TMP$3249$5, (void*)vr$1970, -1ll, (void*)"[rbp], rdx", 11ll );
					fb_StrAssign( (void*)&TMP$3250$5, -1ll, (void*)vr$1973, -1ll, 0 );
					HWRITEASM64( &TMP$3250$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3250$5 );
				}
				goto label$2509;
				label$2512:;
				{
					FBSTRING TMP$3251$5;
					FBSTRING TMP$3252$5;
					FBSTRING TMP$3253$5;
					FBSTRING TMP$3255$5;
					FBSTRING TMP$3256$5;
					FBSTRING TMP$3257$5;
					__builtin_memset( &TMP$3253$5, 0, 24ll );
					FBSTRING* vr$1979 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					__builtin_memset( &TMP$3251$5, 0, 24ll );
					FBSTRING* vr$1982 = fb_StrConcat( &TMP$3251$5, (void*)"mov ", 5ll, (void*)vr$1979, -1ll );
					__builtin_memset( &TMP$3252$5, 0, 24ll );
					FBSTRING* vr$1985 = fb_StrConcat( &TMP$3252$5, (void*)vr$1982, -1ll, (void*)"[rbp], rax", 11ll );
					fb_StrAssign( (void*)&TMP$3253$5, -1ll, (void*)vr$1985, -1ll, 0 );
					HWRITEASM64( &TMP$3253$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3253$5 );
					__builtin_memset( &TMP$3257$5, 0, 24ll );
					FBSTRING* vr$1992 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) + 8ll );
					__builtin_memset( &TMP$3255$5, 0, 24ll );
					FBSTRING* vr$1995 = fb_StrConcat( &TMP$3255$5, (void*)"movq ", 6ll, (void*)vr$1992, -1ll );
					__builtin_memset( &TMP$3256$5, 0, 24ll );
					FBSTRING* vr$1998 = fb_StrConcat( &TMP$3256$5, (void*)vr$1995, -1ll, (void*)"[rbp], xmm0", 12ll );
					fb_StrAssign( (void*)&TMP$3257$5, -1ll, (void*)vr$1998, -1ll, 0 );
					HWRITEASM64( &TMP$3257$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3257$5 );
				}
				goto label$2509;
				label$2513:;
				{
					FBSTRING TMP$3258$5;
					FBSTRING TMP$3259$5;
					FBSTRING TMP$3260$5;
					FBSTRING TMP$3261$5;
					FBSTRING TMP$3262$5;
					FBSTRING TMP$3263$5;
					__builtin_memset( &TMP$3260$5, 0, 24ll );
					FBSTRING* vr$2004 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					__builtin_memset( &TMP$3258$5, 0, 24ll );
					FBSTRING* vr$2007 = fb_StrConcat( &TMP$3258$5, (void*)"movq ", 6ll, (void*)vr$2004, -1ll );
					__builtin_memset( &TMP$3259$5, 0, 24ll );
					FBSTRING* vr$2010 = fb_StrConcat( &TMP$3259$5, (void*)vr$2007, -1ll, (void*)"[rbp], xmm0", 12ll );
					fb_StrAssign( (void*)&TMP$3260$5, -1ll, (void*)vr$2010, -1ll, 0 );
					HWRITEASM64( &TMP$3260$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3260$5 );
					__builtin_memset( &TMP$3263$5, 0, 24ll );
					FBSTRING* vr$2017 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) + 8ll );
					__builtin_memset( &TMP$3261$5, 0, 24ll );
					FBSTRING* vr$2020 = fb_StrConcat( &TMP$3261$5, (void*)"mov ", 5ll, (void*)vr$2017, -1ll );
					__builtin_memset( &TMP$3262$5, 0, 24ll );
					FBSTRING* vr$2023 = fb_StrConcat( &TMP$3262$5, (void*)vr$2020, -1ll, (void*)"[rbp], rax", 11ll );
					fb_StrAssign( (void*)&TMP$3263$5, -1ll, (void*)vr$2023, -1ll, 0 );
					HWRITEASM64( &TMP$3263$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3263$5 );
				}
				goto label$2509;
				label$2514:;
				{
					FBSTRING TMP$3264$5;
					FBSTRING TMP$3265$5;
					FBSTRING TMP$3266$5;
					FBSTRING TMP$3268$5;
					FBSTRING TMP$3269$5;
					FBSTRING TMP$3270$5;
					__builtin_memset( &TMP$3266$5, 0, 24ll );
					FBSTRING* vr$2029 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					__builtin_memset( &TMP$3264$5, 0, 24ll );
					FBSTRING* vr$2032 = fb_StrConcat( &TMP$3264$5, (void*)"movq ", 6ll, (void*)vr$2029, -1ll );
					__builtin_memset( &TMP$3265$5, 0, 24ll );
					FBSTRING* vr$2035 = fb_StrConcat( &TMP$3265$5, (void*)vr$2032, -1ll, (void*)"[rbp], xmm0", 12ll );
					fb_StrAssign( (void*)&TMP$3266$5, -1ll, (void*)vr$2035, -1ll, 0 );
					HWRITEASM64( &TMP$3266$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3266$5 );
					__builtin_memset( &TMP$3270$5, 0, 24ll );
					FBSTRING* vr$2042 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) + 8ll );
					__builtin_memset( &TMP$3268$5, 0, 24ll );
					FBSTRING* vr$2045 = fb_StrConcat( &TMP$3268$5, (void*)"movq ", 6ll, (void*)vr$2042, -1ll );
					__builtin_memset( &TMP$3269$5, 0, 24ll );
					FBSTRING* vr$2048 = fb_StrConcat( &TMP$3269$5, (void*)vr$2045, -1ll, (void*)"[rbp], xmm1", 12ll );
					fb_StrAssign( (void*)&TMP$3270$5, -1ll, (void*)vr$2048, -1ll, 0 );
					HWRITEASM64( &TMP$3270$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3270$5 );
				}
				goto label$2509;
				label$2510:;
				static const void* tmp$3870[5ll] = {
					&&label$2511,
					&&label$2512,
					&&label$2509,
					&&label$2513,
					&&label$2514,
				};
				if( (TMP$3242$4 - 2ull) > 4ull ) goto label$2509;
				goto *tmp$3870[TMP$3242$4 - 2ull];
				label$2509:;
			}
		}
		goto label$2507;
		label$2508:;
		{
			int64 TMP$3271$3;
			DTYPE$1 = *(int64*)((uint8*)VR$1 + 8ll) & 511ll;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$2515;
			TMP$3271$3 = 24ll;
			goto label$3061;
			label$2515:;
			TMP$3271$3 = DTYPE$1 & 31ll;
			label$3061:;
			if( TMP$3271$3 != 24ll ) goto label$2517;
			{
				DTYPE$1 = 8ll;
				label$2517:;
			}
			if( DTYPE$1 != 16ll ) goto label$2519;
			{
				FBSTRING TMP$3273$4;
				__builtin_memset( &TMP$3273$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3273$4, -1ll, (void*)"movq rax, xmm0", 15ll, 0 );
				HWRITEASM64( &TMP$3273$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3273$4 );
			}
			goto label$2518;
			label$2519:;
			if( DTYPE$1 != 15ll ) goto label$2520;
			{
				FBSTRING TMP$3275$4;
				__builtin_memset( &TMP$3275$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3275$4, -1ll, (void*)"movd eax, xmm0", 15ll, 0 );
				HWRITEASM64( &TMP$3275$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3275$4 );
			}
			label$2520:;
			label$2518:;
			fb_StrAssign( (void*)&OP3$1, -1ll, (void*)"", 1ll, 0 );
			REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
			{
				$15IRVREGTYPE_ENUM TMP$3276$4;
				TMP$3276$4 = *($15IRVREGTYPE_ENUM*)VR$1;
				if( TMP$3276$4 != 2ll ) goto label$2522;
				label$2523:;
				{
					PREPARE_IDX( VR$1, &OP1$1, &OP3$1 );
				}
				goto label$2521;
				label$2522:;
				if( TMP$3276$4 != 4ll ) goto label$2524;
				label$2525:;
				{
					{
						if( DTYPE$1 == 8ll ) goto label$2528;
						label$2529:;
						if( DTYPE$1 == 9ll ) goto label$2528;
						label$2530:;
						if( DTYPE$1 == 13ll ) goto label$2528;
						label$2531:;
						if( DTYPE$1 == 14ll ) goto label$2528;
						label$2532:;
						if( DTYPE$1 == 16ll ) goto label$2528;
						label$2533:;
						if( DTYPE$1 != 10ll ) goto label$2527;
						label$2528:;
						{
							int32 vr$2072 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
							fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$2072 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$2526;
						label$2527:;
						if( DTYPE$1 == 11ll ) goto label$2535;
						label$2536:;
						if( DTYPE$1 == 12ll ) goto label$2535;
						label$2537:;
						if( DTYPE$1 != 15ll ) goto label$2534;
						label$2535:;
						{
							int32 vr$2078 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
							fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRD$ + ((int64)vr$2078 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$2526;
						label$2534:;
						if( DTYPE$1 == 5ll ) goto label$2539;
						label$2540:;
						if( DTYPE$1 != 6ll ) goto label$2538;
						label$2539:;
						{
							int32 vr$2084 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
							fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRW$ + ((int64)vr$2084 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$2526;
						label$2538:;
						if( DTYPE$1 == 2ll ) goto label$2542;
						label$2543:;
						if( DTYPE$1 == 3ll ) goto label$2542;
						label$2544:;
						if( DTYPE$1 == 1ll ) goto label$2542;
						label$2545:;
						if( DTYPE$1 != 4ll ) goto label$2541;
						label$2542:;
						{
							int32 vr$2090 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
							fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRB$ + ((int64)vr$2090 << (3ll & 63ll))), 0ll, 0 );
						}
						goto label$2526;
						label$2541:;
						{
							FBSTRING TMP$3277$7;
							FBSTRING TMP$3281$7;
							FBSTRING TMP$3282$7;
							FBSTRING TMP$3283$7;
							__builtin_memset( &TMP$3277$7, 0, 24ll );
							fb_StrAssign( (void*)&TMP$3277$7, -1ll, (void*)"", 1ll, 0 );
							HWRITEASM64( &TMP$3277$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3277$7 );
							__builtin_memset( &TMP$3282$7, 0, 24ll );
							FBSTRING* vr$2099 = fb_LongintToStr( DTYPE$1 );
							__builtin_memset( &TMP$3281$7, 0, 24ll );
							FBSTRING* vr$2102 = fb_StrConcat( &TMP$3281$7, (void*)"FOUND AN ERROR : in hdocall datatype not handled 04 = ", 55ll, (void*)vr$2099, -1ll );
							fb_StrAssign( (void*)&TMP$3282$7, -1ll, (void*)vr$2102, -1ll, 0 );
							HWRITEASM64( &TMP$3282$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3282$7 );
							__builtin_memset( &TMP$3283$7, 0, 24ll );
							fb_StrAssign( (void*)&TMP$3283$7, -1ll, (void*)"", 1ll, 0 );
							HWRITEASM64( &TMP$3283$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3283$7 );
							fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + 136ll), 0ll, 0 );
						}
						label$2546:;
						label$2526:;
					}
				}
				goto label$2521;
				label$2524:;
				if( TMP$3276$4 != 1ll ) goto label$2547;
				label$2548:;
				{
					if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VR$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2550;
					{
						FBSTRING TMP$3284$6;
						FBSTRING TMP$3285$6;
						FBSTRING TMP$3286$6;
						FBSTRING* vr$2121 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
						uint8* vr$2123 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VR$1 + 56ll) );
						__builtin_memset( &TMP$3284$6, 0, 24ll );
						FBSTRING* vr$2126 = fb_StrConcat( &TMP$3284$6, (void*)vr$2123, 0ll, (void*)"[rip+", 6ll );
						__builtin_memset( &TMP$3285$6, 0, 24ll );
						FBSTRING* vr$2129 = fb_StrConcat( &TMP$3285$6, (void*)vr$2126, -1ll, (void*)vr$2121, -1ll );
						__builtin_memset( &TMP$3286$6, 0, 24ll );
						FBSTRING* vr$2132 = fb_StrConcat( &TMP$3286$6, (void*)vr$2129, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$2132, -1ll, 0 );
					}
					goto label$2549;
					label$2550:;
					{
						FBSTRING TMP$3287$6;
						FBSTRING* vr$2135 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
						__builtin_memset( &TMP$3287$6, 0, 24ll );
						FBSTRING* vr$2138 = fb_StrConcat( &TMP$3287$6, (void*)vr$2135, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$2138, -1ll, 0 );
					}
					label$2549:;
				}
				goto label$2521;
				label$2547:;
				if( TMP$3276$4 != 3ll ) goto label$2551;
				label$2552:;
				{
					FBSTRING TMP$3288$5;
					FBSTRING TMP$3289$5;
					FBSTRING TMP$3290$5;
					int32 vr$2143 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 80ll) + 24ll) );
					FBSTRING* vr$2147 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					__builtin_memset( &TMP$3288$5, 0, 24ll );
					FBSTRING* vr$2150 = fb_StrConcat( &TMP$3288$5, (void*)vr$2147, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$3289$5, 0, 24ll );
					FBSTRING* vr$2153 = fb_StrConcat( &TMP$3289$5, (void*)vr$2150, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$2143 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$3290$5, 0, 24ll );
					FBSTRING* vr$2156 = fb_StrConcat( &TMP$3290$5, (void*)vr$2153, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$2156, -1ll, 0 );
				}
				goto label$2521;
				label$2551:;
				if( TMP$3276$4 != 5ll ) goto label$2553;
				label$2554:;
				{
					FBSTRING TMP$3291$5;
					FBSTRING TMP$3292$5;
					FBSTRING TMP$3293$5;
					FBSTRING TMP$3294$5;
					FBSTRING TMP$3297$5;
					FBSTRING TMP$3298$5;
					FBSTRING* vr$2159 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 64ll) );
					uint8* vr$2161 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VR$1 + 56ll) );
					__builtin_memset( &TMP$3291$5, 0, 24ll );
					FBSTRING* vr$2164 = fb_StrConcat( &TMP$3291$5, (void*)vr$2161, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$3292$5, 0, 24ll );
					FBSTRING* vr$2167 = fb_StrConcat( &TMP$3292$5, (void*)vr$2164, -1ll, (void*)vr$2159, -1ll );
					__builtin_memset( &TMP$3293$5, 0, 24ll );
					FBSTRING* vr$2170 = fb_StrConcat( &TMP$3293$5, (void*)vr$2167, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$2170, -1ll, 0 );
					__builtin_memset( &TMP$3294$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3294$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3294$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3294$5 );
					__builtin_memset( &TMP$3297$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3297$5, -1ll, (void*)"FOUND AN ERROR : in hdocall OFS not handled", 44ll, 0 );
					HWRITEASM64( &TMP$3297$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3297$5 );
					__builtin_memset( &TMP$3298$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3298$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3298$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3298$5 );
				}
				goto label$2521;
				label$2553:;
				{
					FBSTRING TMP$3299$5;
					FBSTRING TMP$3302$5;
					FBSTRING TMP$3303$5;
					FBSTRING TMP$3304$5;
					__builtin_memset( &TMP$3299$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3299$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3299$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3299$5 );
					__builtin_memset( &TMP$3303$5, 0, 24ll );
					FBSTRING* vr$2190 = fb_LongintToStr( *(int64*)VR$1 );
					__builtin_memset( &TMP$3302$5, 0, 24ll );
					FBSTRING* vr$2193 = fb_StrConcat( &TMP$3302$5, (void*)"FOUND AN ERROR : in hdocall typ not handled =", 46ll, (void*)vr$2190, -1ll );
					fb_StrAssign( (void*)&TMP$3303$5, -1ll, (void*)vr$2193, -1ll, 0 );
					HWRITEASM64( &TMP$3303$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3303$5 );
					__builtin_memset( &TMP$3304$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3304$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3304$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3304$5 );
				}
				label$2555:;
				label$2521:;
			}
			int32 vr$2202 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$2202 == 0ll ) goto label$2557;
			{
				EMITOP3_OP4( &OP3$1 );
				label$2557:;
			}
			{
				if( DTYPE$1 == 8ll ) goto label$2560;
				label$2561:;
				if( DTYPE$1 == 9ll ) goto label$2560;
				label$2562:;
				if( DTYPE$1 == 13ll ) goto label$2560;
				label$2563:;
				if( DTYPE$1 == 14ll ) goto label$2560;
				label$2564:;
				if( DTYPE$1 == 16ll ) goto label$2560;
				label$2565:;
				if( DTYPE$1 != 10ll ) goto label$2559;
				label$2560:;
				{
					FBSTRING TMP$3305$5;
					FBSTRING TMP$3306$5;
					FBSTRING TMP$3307$5;
					FBSTRING TMP$3308$5;
					__builtin_memset( &TMP$3308$5, 0, 24ll );
					__builtin_memset( &TMP$3305$5, 0, 24ll );
					FBSTRING* vr$2209 = fb_StrConcat( &TMP$3305$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$3306$5, 0, 24ll );
					FBSTRING* vr$2212 = fb_StrConcat( &TMP$3306$5, (void*)vr$2209, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$3307$5, 0, 24ll );
					FBSTRING* vr$2215 = fb_StrConcat( &TMP$3307$5, (void*)vr$2212, -1ll, *(void**)REGSTRQ$, 0ll );
					fb_StrAssign( (void*)&TMP$3308$5, -1ll, (void*)vr$2215, -1ll, 0 );
					HWRITEASM64( &TMP$3308$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3308$5 );
				}
				goto label$2558;
				label$2559:;
				if( DTYPE$1 == 11ll ) goto label$2567;
				label$2568:;
				if( DTYPE$1 == 12ll ) goto label$2567;
				label$2569:;
				if( DTYPE$1 != 15ll ) goto label$2566;
				label$2567:;
				{
					FBSTRING TMP$3309$5;
					FBSTRING TMP$3310$5;
					FBSTRING TMP$3311$5;
					FBSTRING TMP$3312$5;
					__builtin_memset( &TMP$3312$5, 0, 24ll );
					__builtin_memset( &TMP$3309$5, 0, 24ll );
					FBSTRING* vr$2223 = fb_StrConcat( &TMP$3309$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$3310$5, 0, 24ll );
					FBSTRING* vr$2226 = fb_StrConcat( &TMP$3310$5, (void*)vr$2223, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$3311$5, 0, 24ll );
					FBSTRING* vr$2229 = fb_StrConcat( &TMP$3311$5, (void*)vr$2226, -1ll, *(void**)REGSTRD$, 0ll );
					fb_StrAssign( (void*)&TMP$3312$5, -1ll, (void*)vr$2229, -1ll, 0 );
					HWRITEASM64( &TMP$3312$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3312$5 );
				}
				goto label$2558;
				label$2566:;
				if( DTYPE$1 == 5ll ) goto label$2571;
				label$2572:;
				if( DTYPE$1 != 6ll ) goto label$2570;
				label$2571:;
				{
					FBSTRING TMP$3313$5;
					FBSTRING TMP$3314$5;
					FBSTRING TMP$3315$5;
					FBSTRING TMP$3316$5;
					__builtin_memset( &TMP$3316$5, 0, 24ll );
					__builtin_memset( &TMP$3313$5, 0, 24ll );
					FBSTRING* vr$2237 = fb_StrConcat( &TMP$3313$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$3314$5, 0, 24ll );
					FBSTRING* vr$2240 = fb_StrConcat( &TMP$3314$5, (void*)vr$2237, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$3315$5, 0, 24ll );
					FBSTRING* vr$2243 = fb_StrConcat( &TMP$3315$5, (void*)vr$2240, -1ll, *(void**)REGSTRW$, 0ll );
					fb_StrAssign( (void*)&TMP$3316$5, -1ll, (void*)vr$2243, -1ll, 0 );
					HWRITEASM64( &TMP$3316$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3316$5 );
				}
				goto label$2558;
				label$2570:;
				if( DTYPE$1 == 2ll ) goto label$2574;
				label$2575:;
				if( DTYPE$1 == 3ll ) goto label$2574;
				label$2576:;
				if( DTYPE$1 == 1ll ) goto label$2574;
				label$2577:;
				if( DTYPE$1 != 4ll ) goto label$2573;
				label$2574:;
				{
					FBSTRING TMP$3317$5;
					FBSTRING TMP$3318$5;
					FBSTRING TMP$3319$5;
					FBSTRING TMP$3320$5;
					__builtin_memset( &TMP$3320$5, 0, 24ll );
					__builtin_memset( &TMP$3317$5, 0, 24ll );
					FBSTRING* vr$2251 = fb_StrConcat( &TMP$3317$5, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
					__builtin_memset( &TMP$3318$5, 0, 24ll );
					FBSTRING* vr$2254 = fb_StrConcat( &TMP$3318$5, (void*)vr$2251, -1ll, (void*)", ", 3ll );
					__builtin_memset( &TMP$3319$5, 0, 24ll );
					FBSTRING* vr$2257 = fb_StrConcat( &TMP$3319$5, (void*)vr$2254, -1ll, *(void**)REGSTRB$, 0ll );
					fb_StrAssign( (void*)&TMP$3320$5, -1ll, (void*)vr$2257, -1ll, 0 );
					HWRITEASM64( &TMP$3320$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3320$5 );
				}
				goto label$2558;
				label$2573:;
				{
					FBSTRING TMP$3321$5;
					FBSTRING TMP$3325$5;
					FBSTRING TMP$3326$5;
					FBSTRING TMP$3327$5;
					__builtin_memset( &TMP$3321$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3321$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3321$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3321$5 );
					__builtin_memset( &TMP$3326$5, 0, 24ll );
					FBSTRING* vr$2266 = fb_LongintToStr( DTYPE$1 );
					__builtin_memset( &TMP$3325$5, 0, 24ll );
					FBSTRING* vr$2269 = fb_StrConcat( &TMP$3325$5, (void*)"FOUND AN ERROR : in hdocall datatype not handled 05 = ", 55ll, (void*)vr$2266, -1ll );
					fb_StrAssign( (void*)&TMP$3326$5, -1ll, (void*)vr$2269, -1ll, 0 );
					HWRITEASM64( &TMP$3326$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3326$5 );
					__builtin_memset( &TMP$3327$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3327$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3327$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3327$5 );
				}
				label$2578:;
				label$2558:;
			}
		}
		label$2507:;
	}
	label$2506:;
	label$2505:;
	fb_ArrayDestructStr( (struct $7FBARRAYIvE*)&tmp$2847$1 );
	fb_StrDelete( (FBSTRING*)&REGTEMPO$1 );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2214:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1, struct $6IRVREG* VR$1, int64 LEVEL$1 )
{
	FBSTRING TMP$3328$1;
	FBSTRING TMP$3329$1;
	label$2579:;
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1ll );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$2582;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$2584;
		{
			VARIADIC$1 = (boolean)1ll;
		}
		label$2584:;
		label$2583:;
	}
	label$2582:;
	label$2581:;
	__builtin_memset( &TMP$3329$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3329$1, -1ll, (void*)"", 1ll, 0 );
	__builtin_memset( &TMP$3328$1, 0, 24ll );
	uint8* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&TMP$3328$1, -1ll, (void*)vr$7, 0ll, 0 );
	HDOCALL( PROC$1, &TMP$3328$1, &TMP$3329$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3329$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3328$1 );
	label$2580:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int64 BYTESTOPOP$1, int64 LEVEL$1 )
{
	label$2585:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	boolean VARIADIC$1;
	__builtin_memset( &VARIADIC$1, 0, 1ll );
	struct $8FBSYMBOL* PARAM$1;
	__builtin_memset( &PARAM$1, 0, 8ll );
	{
		$15IRVREGTYPE_ENUM TMP$3330$2;
		TMP$3330$2 = *($15IRVREGTYPE_ENUM*)V1$1;
		if( TMP$3330$2 != 4ll ) goto label$2588;
		label$2589:;
		{
			int32 vr$7 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
			fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$7 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$2587;
		label$2588:;
		if( TMP$3330$2 != 2ll ) goto label$2590;
		label$2591:;
		{
			PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
		}
		goto label$2587;
		label$2590:;
		if( TMP$3330$2 != 3ll ) goto label$2592;
		label$2593:;
		{
			FBSTRING TMP$3331$3;
			FBSTRING TMP$3332$3;
			FBSTRING TMP$3333$3;
			int32 vr$16 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
			FBSTRING* vr$20 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
			__builtin_memset( &TMP$3331$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$3331$3, (void*)vr$20, -1ll, (void*)"[", 2ll );
			__builtin_memset( &TMP$3332$3, 0, 24ll );
			FBSTRING* vr$26 = fb_StrConcat( &TMP$3332$3, (void*)vr$23, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$16 << (3ll & 63ll))), 0ll );
			__builtin_memset( &TMP$3333$3, 0, 24ll );
			FBSTRING* vr$29 = fb_StrConcat( &TMP$3333$3, (void*)vr$26, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$29, -1ll, 0 );
		}
		goto label$2587;
		label$2592:;
		if( TMP$3330$2 != 5ll ) goto label$2594;
		label$2595:;
		{
			uint8* vr$32 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
			fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$32, 0ll, 0 );
		}
		goto label$2587;
		label$2594:;
		if( TMP$3330$2 != 0ll ) goto label$2596;
		label$2597:;
		{
			FBSTRING TMP$3334$3;
			FBSTRING TMP$3337$3;
			FBSTRING TMP$3338$3;
			__builtin_memset( &TMP$3334$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3334$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$3334$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3334$3 );
			__builtin_memset( &TMP$3337$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3337$3, -1ll, (void*)"FOUND AN ERROR : Never IMM as first operand", 44ll, 0 );
			HWRITEASM64( &TMP$3337$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3337$3 );
			__builtin_memset( &TMP$3338$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3338$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$3338$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3338$3 );
		}
		goto label$2587;
		label$2596:;
		if( TMP$3330$2 != 1ll ) goto label$2598;
		label$2599:;
		{
			if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2601;
			{
				FBSTRING TMP$3339$4;
				FBSTRING TMP$3340$4;
				FBSTRING TMP$3341$4;
				FBSTRING* vr$56 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$58 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$3339$4, 0, 24ll );
				FBSTRING* vr$61 = fb_StrConcat( &TMP$3339$4, (void*)vr$58, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$3340$4, 0, 24ll );
				FBSTRING* vr$64 = fb_StrConcat( &TMP$3340$4, (void*)vr$61, -1ll, (void*)vr$56, -1ll );
				__builtin_memset( &TMP$3341$4, 0, 24ll );
				FBSTRING* vr$67 = fb_StrConcat( &TMP$3341$4, (void*)vr$64, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$67, -1ll, 0 );
			}
			goto label$2600;
			label$2601:;
			{
				FBSTRING TMP$3342$4;
				FBSTRING* vr$70 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				__builtin_memset( &TMP$3342$4, 0, 24ll );
				FBSTRING* vr$73 = fb_StrConcat( &TMP$3342$4, (void*)vr$70, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$73, -1ll, 0 );
			}
			label$2600:;
		}
		goto label$2587;
		label$2598:;
		{
			FBSTRING TMP$3343$3;
			FBSTRING TMP$3344$3;
			FBSTRING TMP$3345$3;
			__builtin_memset( &TMP$3343$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3343$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$3343$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3343$3 );
			__builtin_memset( &TMP$3344$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3344$3, -1ll, (void*)"FOUND AN ERROR : in loadoperand typ not handled v1", 51ll, 0 );
			HWRITEASM64( &TMP$3344$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3344$3 );
			__builtin_memset( &TMP$3345$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3345$3, -1ll, (void*)"", 1ll, 0 );
			HWRITEASM64( &TMP$3345$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3345$3 );
		}
		label$2602:;
		label$2587:;
	}
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$2604;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$2606;
		{
			VARIADIC$1 = (boolean)1ll;
		}
		label$2606:;
		label$2605:;
	}
	label$2604:;
	label$2603:;
	HDOCALL( PROC$1, &OP1$1, &OP3$1, VR$1, LEVEL$1, VARIADIC$1, (boolean)1ll );
	fb_StrDelete( (FBSTRING*)&OP3$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	label$2586:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$3347$1;
	FBSTRING TMP$3348$1;
	FBSTRING TMP$3349$1;
	label$2607:;
	int64 REG$1;
	__builtin_memset( &REG$1, 0, 8ll );
	if( *(int64*)((uint8*)V1$1 + 24ll) != (int64)*(int32*)((uint8*)&CTX$ + 232ll) ) goto label$2610;
	{
		REG$1 = (int64)*(int32*)((uint8*)&CTX$ + 228ll);
		*(int32*)((uint8*)&CTX$ + 236ll) = 0;
		*(int32*)((uint8*)&CTX$ + 232ll) = -2;
	}
	goto label$2609;
	label$2610:;
	{
		int32 vr$6 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
		REG$1 = (int64)vr$6;
	}
	label$2609:;
	__builtin_memset( &TMP$3349$1, 0, 24ll );
	__builtin_memset( &TMP$3347$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$3347$1, (void*)"jmp [", 6ll, *(void**)((uint8*)REGSTRQ$ + (REG$1 << (3ll & 63ll))), 0ll );
	__builtin_memset( &TMP$3348$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$3348$1, (void*)vr$12, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$3349$1, -1ll, (void*)vr$15, -1ll, 0 );
	HWRITEASM64( &TMP$3349$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3349$1 );
	label$2608:;
}

static void _EMITBRANCH( int64 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$3350$1;
	FBSTRING TMP$3351$1;
	FBSTRING TMP$3352$1;
	label$2611:;
	__builtin_memset( &TMP$3352$1, 0, 24ll );
	uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	uint8* vr$2 = HGETBOPCODE( OP$1 );
	__builtin_memset( &TMP$3350$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3350$1, (void*)vr$2, 0ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$3351$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$3351$1, (void*)vr$5, -1ll, (void*)vr$1, 0ll );
	fb_StrAssign( (void*)&TMP$3352$1, -1ll, (void*)vr$8, -1ll, 0 );
	HWRITEASM64( &TMP$3352$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3352$1 );
	if( *(int64*)((uint8*)&CTX$ + 416ll) == 0ll ) goto label$2614;
	{
		*(int32*)((uint8*)REGHANDLE$ + (*(int64*)((uint8*)&CTX$ + 416ll) << (2ll & 63ll))) = -2;
		*(int64*)((uint8*)&CTX$ + 416ll) = 0ll;
	}
	label$2614:;
	label$2613:;
	if( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) == (struct $8FBSYMBOL*)0ull ) goto label$2616;
	{
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) = LABEL$1;
	}
	label$2616:;
	label$2615:;
	if( OP$1 == 98ll ) goto label$2618;
	{
		REG_MARK( LABEL$1 );
	}
	label$2618:;
	label$2617:;
	label$2612:;
}

static void _EMITRETURN( int64 BYTESTOPOP$1 )
{
	FBSTRING TMP$3354$1;
	FBSTRING TMP$3355$1;
	label$2619:;
	__builtin_memset( &TMP$3354$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3354$1, -1ll, (void*)"pop rax # dummy pop for gosub", 30ll, 0 );
	HWRITEASM64( &TMP$3354$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3354$1 );
	__builtin_memset( &TMP$3355$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3355$1, -1ll, (void*)"ret", 4ll, 0 );
	HWRITEASM64( &TMP$3355$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3355$1 );
	label$2620:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int64 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$3356$1;
	label$2621:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	FBSTRING OP1$1;
	FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
	__builtin_memset( &TMP$3356$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$3356$1, (void*)vr$2, -1ll, (void*)"[rbp]", 6ll );
	fb_StrInit( (void*)&OP1$1, -1ll, (void*)vr$5, -1ll, 0 );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4ll );
	if( LABELCOUNT$1 != 0ll ) goto label$2624;
	{
		FBSTRING TMP$3357$2;
		FBSTRING TMP$3358$2;
		__builtin_memset( &TMP$3358$2, 0, 24ll );
		uint8* vr$10 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3357$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$3357$2, (void*)"jmp ", 5ll, (void*)vr$10, 0ll );
		fb_StrAssign( (void*)&TMP$3358$2, -1ll, (void*)vr$13, -1ll, 0 );
		HWRITEASM64( &TMP$3358$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3358$2 );
	}
	goto label$2623;
	label$2624:;
	{
		FBSTRING TMP$3359$2;
		FBSTRING TMP$3360$2;
		FBSTRING TMP$3371$2;
		FBSTRING TMP$3372$2;
		FBSTRING TMP$3373$2;
		FBSTRING TMP$3374$2;
		FBSTRING TMP$3377$2;
		FBSTRING TMP$3378$2;
		FBSTRING TMP$3379$2;
		FBSTRING TMP$3380$2;
		FBSTRING TMP$3381$2;
		FBSTRING TMP$3382$2;
		FBSTRING TMP$3383$2;
		FBSTRING TMP$3389$2;
		uint8* vr$17 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$17, 0ll, 0 );
		__builtin_memset( &TMP$3360$2, 0, 24ll );
		__builtin_memset( &TMP$3359$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$3359$2, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
		fb_StrAssign( (void*)&TMP$3360$2, -1ll, (void*)vr$23, -1ll, 0 );
		HWRITEASM64( &TMP$3360$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3360$2 );
		if( ((int64)-(BIAS$1 > 2147483647ull) & (int64)-(BIAS$1 < 18446744071562067968ull)) == 0ll ) goto label$2626;
		{
			FBSTRING TMP$3361$3;
			FBSTRING TMP$3362$3;
			FBSTRING TMP$3363$3;
			FBSTRING TMP$3364$3;
			FBSTRING TMP$3366$3;
			FBSTRING TMP$3367$3;
			int32 vr$30 = REG_FINDFREE( 999998, -1ll );
			fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$30 << (3ll & 63ll))), 0ll, 0 );
			__builtin_memset( &TMP$3364$3, 0, 24ll );
			FBSTRING* vr$35 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3361$3, 0, 24ll );
			FBSTRING* vr$39 = fb_StrConcat( &TMP$3361$3, (void*)"mov ", 5ll, (void*)&OP2$1, -1ll );
			__builtin_memset( &TMP$3362$3, 0, 24ll );
			FBSTRING* vr$42 = fb_StrConcat( &TMP$3362$3, (void*)vr$39, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$3363$3, 0, 24ll );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$3363$3, (void*)vr$42, -1ll, (void*)vr$35, -1ll );
			fb_StrAssign( (void*)&TMP$3364$3, -1ll, (void*)vr$45, -1ll, 0 );
			HWRITEASM64( &TMP$3364$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3364$3 );
			__builtin_memset( &TMP$3367$3, 0, 24ll );
			__builtin_memset( &TMP$3366$3, 0, 24ll );
			FBSTRING* vr$53 = fb_StrConcat( &TMP$3366$3, (void*)"sub rax, ", 10ll, (void*)&OP2$1, -1ll );
			fb_StrAssign( (void*)&TMP$3367$3, -1ll, (void*)vr$53, -1ll, 0 );
			HWRITEASM64( &TMP$3367$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3367$3 );
		}
		goto label$2625;
		label$2626:;
		{
			FBSTRING TMP$3368$3;
			FBSTRING TMP$3369$3;
			__builtin_memset( &TMP$3369$3, 0, 24ll );
			FBSTRING* vr$58 = fb_ULongintToStr( BIAS$1 );
			__builtin_memset( &TMP$3368$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$3368$3, (void*)"sub rax, ", 10ll, (void*)vr$58, -1ll );
			fb_StrAssign( (void*)&TMP$3369$3, -1ll, (void*)vr$61, -1ll, 0 );
			HWRITEASM64( &TMP$3369$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3369$3 );
		}
		label$2625:;
		__builtin_memset( &TMP$3372$2, 0, 24ll );
		FBSTRING* vr$66 = fb_ULongintToStr( SPAN$1 );
		__builtin_memset( &TMP$3371$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$3371$2, (void*)"cmp rax, ", 10ll, (void*)vr$66, -1ll );
		fb_StrAssign( (void*)&TMP$3372$2, -1ll, (void*)vr$69, -1ll, 0 );
		HWRITEASM64( &TMP$3372$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3372$2 );
		__builtin_memset( &TMP$3374$2, 0, 24ll );
		uint8* vr$74 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$3373$2, 0, 24ll );
		FBSTRING* vr$77 = fb_StrConcat( &TMP$3373$2, (void*)"ja ", 4ll, (void*)vr$74, 0ll );
		fb_StrAssign( (void*)&TMP$3374$2, -1ll, (void*)vr$77, -1ll, 0 );
		HWRITEASM64( &TMP$3374$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3374$2 );
		__builtin_memset( &TMP$3379$2, 0, 24ll );
		__builtin_memset( &TMP$3377$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$3377$2, (void*)"jmp QWORD PTR [", 16ll, (void*)&LNAME$1, -1ll );
		__builtin_memset( &TMP$3378$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$3378$2, (void*)vr$85, -1ll, (void*)"+rax*8]", 8ll );
		fb_StrAssign( (void*)&TMP$3379$2, -1ll, (void*)vr$88, -1ll, 0 );
		HWRITEASM64( &TMP$3379$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3379$2 );
		__builtin_memset( &TMP$3380$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3380$2, -1ll, (void*)".data", 6ll, 0 );
		ASM_SECTION( &TMP$3380$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3380$2 );
		__builtin_memset( &TMP$3381$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3381$2, -1ll, (void*)".align 8", 9ll, 0 );
		HWRITEASM64( &TMP$3381$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3381$2 );
		__builtin_memset( &TMP$3383$2, 0, 24ll );
		__builtin_memset( &TMP$3382$2, 0, 24ll );
		FBSTRING* vr$104 = fb_StrConcat( &TMP$3382$2, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$3383$2, -1ll, (void*)vr$104, -1ll, 0 );
		HWRITEASM64( &TMP$3383$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3383$2 );
		{
			int64 ISEL$3;
			ISEL$3 = 0ll;
			int64 TMP$3384$3;
			TMP$3384$3 = (int64)SPAN$1;
			goto label$2627;
			label$2630:;
			{
				if( (uint64)ISEL$3 != *(uint64*)((uint8*)VALUES$1 + ((int64)IDX$1 << (3ll & 63ll))) ) goto label$2632;
				{
					FBSTRING TMP$3385$5;
					FBSTRING TMP$3386$5;
					__builtin_memset( &TMP$3386$5, 0, 24ll );
					uint8* vr$115 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + ((int64)IDX$1 << (3ll & 63ll))) );
					__builtin_memset( &TMP$3385$5, 0, 24ll );
					FBSTRING* vr$118 = fb_StrConcat( &TMP$3385$5, (void*)".quad ", 7ll, (void*)vr$115, 0ll );
					fb_StrAssign( (void*)&TMP$3386$5, -1ll, (void*)vr$118, -1ll, 0 );
					HWRITEASM64( &TMP$3386$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3386$5 );
					IDX$1 = (int32)((int64)IDX$1 + 1ll);
				}
				goto label$2631;
				label$2632:;
				{
					FBSTRING TMP$3387$5;
					FBSTRING TMP$3388$5;
					__builtin_memset( &TMP$3388$5, 0, 24ll );
					uint8* vr$126 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
					__builtin_memset( &TMP$3387$5, 0, 24ll );
					FBSTRING* vr$129 = fb_StrConcat( &TMP$3387$5, (void*)".quad ", 7ll, (void*)vr$126, 0ll );
					fb_StrAssign( (void*)&TMP$3388$5, -1ll, (void*)vr$129, -1ll, 0 );
					HWRITEASM64( &TMP$3388$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3388$5 );
				}
				label$2631:;
			}
			label$2628:;
			ISEL$3 = ISEL$3 + 1ll;
			label$2627:;
			if( ISEL$3 <= TMP$3384$3 ) goto label$2630;
			label$2629:;
		}
		__builtin_memset( &TMP$3389$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3389$2, -1ll, (void*)".text", 6ll, 0 );
		ASM_SECTION( &TMP$3389$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3389$2 );
	}
	label$2623:;
	fb_StrDelete( (FBSTRING*)&OP2$1 );
	fb_StrDelete( (FBSTRING*)&OP1$1 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$2622:;
}

static void _EMITMEM( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$2633:;
	FBSTRING OP1$1;
	__builtin_memset( &OP1$1, 0, 24ll );
	FBSTRING OP2$1;
	__builtin_memset( &OP2$1, 0, 24ll );
	FBSTRING OP3$1;
	__builtin_memset( &OP3$1, 0, 24ll );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 24ll );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 24ll );
	FBSTRING INSTRUC$1;
	fb_StrInit( (void*)&INSTRUC$1, -1ll, (void*)"mov ", 5ll, 0 );
	uint8* REGTEMPO$1;
	__builtin_memset( &REGTEMPO$1, 0, 8ll );
	int32 DESTTYP$1;
	DESTTYP$1 = 0;
	int32 SRCTYP$1;
	SRCTYP$1 = 0;
	int32 REGSRC$1;
	__builtin_memset( &REGSRC$1, 0, 4ll );
	{
		if( OP$1 != 107ll ) goto label$2636;
		label$2637:;
		{
			if( *(int64*)V1$1 != 4ll ) goto label$2639;
			{
				int32 vr$11 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
				REGSRC$1 = vr$11;
				fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll, 0 );
				SRCTYP$1 = 1;
			}
			goto label$2638;
			label$2639:;
			if( *(int64*)V1$1 != 1ll ) goto label$2640;
			{
				if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2642;
				{
					FBSTRING TMP$3390$5;
					FBSTRING TMP$3391$5;
					FBSTRING TMP$3392$5;
					FBSTRING* vr$26 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					uint8* vr$28 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$3390$5, 0, 24ll );
					FBSTRING* vr$31 = fb_StrConcat( &TMP$3390$5, (void*)vr$28, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$3391$5, 0, 24ll );
					FBSTRING* vr$34 = fb_StrConcat( &TMP$3391$5, (void*)vr$31, -1ll, (void*)vr$26, -1ll );
					__builtin_memset( &TMP$3392$5, 0, 24ll );
					FBSTRING* vr$37 = fb_StrConcat( &TMP$3392$5, (void*)vr$34, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$37, -1ll, 0 );
				}
				goto label$2641;
				label$2642:;
				{
					FBSTRING TMP$3393$5;
					FBSTRING* vr$40 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					__builtin_memset( &TMP$3393$5, 0, 24ll );
					FBSTRING* vr$43 = fb_StrConcat( &TMP$3393$5, (void*)vr$40, -1ll, (void*)"[rbp]", 6ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$43, -1ll, 0 );
				}
				label$2641:;
				SRCTYP$1 = 0;
			}
			goto label$2638;
			label$2640:;
			if( *(int64*)V1$1 != 5ll ) goto label$2643;
			{
				FBSTRING TMP$3394$4;
				FBSTRING TMP$3395$4;
				FBSTRING TMP$3396$4;
				FBSTRING* vr$47 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
				uint8* vr$49 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
				__builtin_memset( &TMP$3394$4, 0, 24ll );
				FBSTRING* vr$52 = fb_StrConcat( &TMP$3394$4, (void*)vr$49, 0ll, (void*)"[rip+", 6ll );
				__builtin_memset( &TMP$3395$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$3395$4, (void*)vr$52, -1ll, (void*)vr$47, -1ll );
				__builtin_memset( &TMP$3396$4, 0, 24ll );
				FBSTRING* vr$58 = fb_StrConcat( &TMP$3396$4, (void*)vr$55, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$58, -1ll, 0 );
				SRCTYP$1 = 1;
				fb_StrAssign( (void*)&INSTRUC$1, -1ll, (void*)"lea ", 5ll, 0 );
			}
			goto label$2638;
			label$2643:;
			{
				FBSTRING TMP$3397$4;
				FBSTRING TMP$3400$4;
				FBSTRING TMP$3401$4;
				__builtin_memset( &TMP$3397$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3397$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3397$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3397$4 );
				__builtin_memset( &TMP$3400$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3400$4, -1ll, (void*)"FOUND AN ERROR : Memclear v1 not a reg nor a var", 49ll, 0 );
				HWRITEASM64( &TMP$3400$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3400$4 );
				__builtin_memset( &TMP$3401$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3401$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3401$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3401$4 );
				fb_StrDelete( (FBSTRING*)&INSTRUC$1 );
				fb_StrDelete( (FBSTRING*)&LNAME2$1 );
				fb_StrDelete( (FBSTRING*)&LNAME1$1 );
				fb_StrDelete( (FBSTRING*)&OP3$1 );
				fb_StrDelete( (FBSTRING*)&OP2$1 );
				fb_StrDelete( (FBSTRING*)&OP1$1 );
				goto label$2634;
			}
			label$2638:;
			if( *(int64*)V2$1 != 4ll ) goto label$2645;
			{
				FBSTRING TMP$3402$4;
				FBSTRING TMP$3403$4;
				FBSTRING TMP$3404$4;
				FBSTRING TMP$3405$4;
				FBSTRING TMP$3407$4;
				FBSTRING TMP$3408$4;
				FBSTRING TMP$3409$4;
				FBSTRING TMP$3410$4;
				FBSTRING TMP$3411$4;
				FBSTRING TMP$3412$4;
				FBSTRING TMP$3414$4;
				FBSTRING TMP$3416$4;
				FBSTRING TMP$3417$4;
				FBSTRING TMP$3418$4;
				FBSTRING TMP$3419$4;
				FBSTRING TMP$3420$4;
				FBSTRING TMP$3421$4;
				FBSTRING TMP$3422$4;
				int32 vr$82 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
				fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$82 << (3ll & 63ll))), 0ll, 0 );
				__builtin_memset( &TMP$3405$4, 0, 24ll );
				__builtin_memset( &TMP$3402$4, 0, 24ll );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$3402$4, (void*)"test ", 6ll, (void*)&OP2$1, -1ll );
				__builtin_memset( &TMP$3403$4, 0, 24ll );
				FBSTRING* vr$94 = fb_StrConcat( &TMP$3403$4, (void*)vr$91, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$3404$4, 0, 24ll );
				FBSTRING* vr$97 = fb_StrConcat( &TMP$3404$4, (void*)vr$94, -1ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$3405$4, -1ll, (void*)vr$97, -1ll, 0 );
				HWRITEASM64( &TMP$3405$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3405$4 );
				uint8* vr$101 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$101, 0ll, 0 );
				__builtin_memset( &TMP$3408$4, 0, 24ll );
				__builtin_memset( &TMP$3407$4, 0, 24ll );
				FBSTRING* vr$107 = fb_StrConcat( &TMP$3407$4, (void*)"jz ", 4ll, (void*)&LNAME2$1, -1ll );
				fb_StrAssign( (void*)&TMP$3408$4, -1ll, (void*)vr$107, -1ll, 0 );
				HWRITEASM64( &TMP$3408$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3408$4 );
				__builtin_memset( &TMP$3410$4, 0, 24ll );
				__builtin_memset( &TMP$3409$4, 0, 24ll );
				FBSTRING* vr$115 = fb_StrConcat( &TMP$3409$4, (void*)"mov rax, ", 10ll, (void*)&OP1$1, -1ll );
				fb_StrAssign( (void*)&TMP$3410$4, -1ll, (void*)vr$115, -1ll, 0 );
				HWRITEASM64( &TMP$3410$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3410$4 );
				uint8* vr$119 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$119, 0ll, 0 );
				__builtin_memset( &TMP$3412$4, 0, 24ll );
				__builtin_memset( &TMP$3411$4, 0, 24ll );
				FBSTRING* vr$125 = fb_StrConcat( &TMP$3411$4, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$3412$4, -1ll, (void*)vr$125, -1ll, 0 );
				HWRITEASM64( &TMP$3412$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3412$4 );
				__builtin_memset( &TMP$3414$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3414$4, -1ll, (void*)"mov BYTE PTR [rax], 0", 22ll, 0 );
				HWRITEASM64( &TMP$3414$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3414$4 );
				__builtin_memset( &TMP$3416$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3416$4, -1ll, (void*)"inc rax", 8ll, 0 );
				HWRITEASM64( &TMP$3416$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3416$4 );
				__builtin_memset( &TMP$3418$4, 0, 24ll );
				__builtin_memset( &TMP$3417$4, 0, 24ll );
				FBSTRING* vr$141 = fb_StrConcat( &TMP$3417$4, (void*)"dec ", 5ll, (void*)&OP2$1, -1ll );
				fb_StrAssign( (void*)&TMP$3418$4, -1ll, (void*)vr$141, -1ll, 0 );
				HWRITEASM64( &TMP$3418$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3418$4 );
				__builtin_memset( &TMP$3420$4, 0, 24ll );
				__builtin_memset( &TMP$3419$4, 0, 24ll );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$3419$4, (void*)"jnz ", 5ll, (void*)&LNAME1$1, -1ll );
				fb_StrAssign( (void*)&TMP$3420$4, -1ll, (void*)vr$149, -1ll, 0 );
				HWRITEASM64( &TMP$3420$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3420$4 );
				__builtin_memset( &TMP$3422$4, 0, 24ll );
				__builtin_memset( &TMP$3421$4, 0, 24ll );
				FBSTRING* vr$157 = fb_StrConcat( &TMP$3421$4, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
				fb_StrAssign( (void*)&TMP$3422$4, -1ll, (void*)vr$157, -1ll, 0 );
				HWRITEASM64( &TMP$3422$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3422$4 );
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
			if( *(int64*)V2$1 == 0ll ) goto label$2647;
			{
				FBSTRING TMP$3423$4;
				FBSTRING TMP$3426$4;
				FBSTRING TMP$3427$4;
				__builtin_memset( &TMP$3423$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3423$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3423$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3423$4 );
				__builtin_memset( &TMP$3426$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3426$4, -1ll, (void*)"FOUND AN ERROR : Memclear without an immediat as size", 54ll, 0 );
				HWRITEASM64( &TMP$3426$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3426$4 );
				__builtin_memset( &TMP$3427$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3427$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3427$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3427$4 );
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
			if( *(int64*)((uint8*)V2$1 + 48ll) != 0ll ) goto label$2649;
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
				int64 TMP$3428$4;
				TMP$3428$4 = *(int64*)((uint8*)V2$1 + 48ll);
				if( TMP$3428$4 > 8ll ) goto label$2652;
				label$2653:;
				if( TMP$3428$4 == 3ll ) goto label$2652;
				label$2654:;
				if( TMP$3428$4 == 5ll ) goto label$2652;
				label$2655:;
				if( TMP$3428$4 == 6ll ) goto label$2652;
				label$2656:;
				if( TMP$3428$4 != 7ll ) goto label$2651;
				label$2652:;
				{
					MEMCLEAR( *(int64*)((uint8*)V2$1 + 48ll), &OP1$1, SRCTYP$1 );
				}
				goto label$2650;
				label$2651:;
				if( TMP$3428$4 != 1ll ) goto label$2657;
				label$2658:;
				{
					if( *(int64*)V1$1 != 4ll ) goto label$2660;
					{
						FBSTRING TMP$3430$6;
						FBSTRING TMP$3431$6;
						FBSTRING TMP$3432$6;
						__builtin_memset( &TMP$3432$6, 0, 24ll );
						__builtin_memset( &TMP$3430$6, 0, 24ll );
						FBSTRING* vr$201 = fb_StrConcat( &TMP$3430$6, (void*)"mov BYTE PTR [", 15ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$3431$6, 0, 24ll );
						FBSTRING* vr$204 = fb_StrConcat( &TMP$3431$6, (void*)vr$201, -1ll, (void*)"], 0", 5ll );
						fb_StrAssign( (void*)&TMP$3432$6, -1ll, (void*)vr$204, -1ll, 0 );
						HWRITEASM64( &TMP$3432$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3432$6 );
					}
					goto label$2659;
					label$2660:;
					{
						FBSTRING TMP$3434$6;
						FBSTRING TMP$3435$6;
						FBSTRING TMP$3436$6;
						FBSTRING TMP$3437$6;
						__builtin_memset( &TMP$3436$6, 0, 24ll );
						__builtin_memset( &TMP$3434$6, 0, 24ll );
						FBSTRING* vr$213 = fb_StrConcat( &TMP$3434$6, (void*)&INSTRUC$1, -1ll, (void*)"rax, ", 6ll );
						__builtin_memset( &TMP$3435$6, 0, 24ll );
						FBSTRING* vr$216 = fb_StrConcat( &TMP$3435$6, (void*)vr$213, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3436$6, -1ll, (void*)vr$216, -1ll, 0 );
						HWRITEASM64( &TMP$3436$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3436$6 );
						__builtin_memset( &TMP$3437$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3437$6, -1ll, (void*)"mov BYTE PTR [rax], 0", 22ll, 0 );
						HWRITEASM64( &TMP$3437$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3437$6 );
					}
					label$2659:;
				}
				goto label$2650;
				label$2657:;
				if( TMP$3428$4 != 2ll ) goto label$2661;
				label$2662:;
				{
					if( *(int64*)V1$1 != 4ll ) goto label$2664;
					{
						FBSTRING TMP$3439$6;
						FBSTRING TMP$3440$6;
						FBSTRING TMP$3441$6;
						__builtin_memset( &TMP$3441$6, 0, 24ll );
						__builtin_memset( &TMP$3439$6, 0, 24ll );
						FBSTRING* vr$229 = fb_StrConcat( &TMP$3439$6, (void*)"mov WORD PTR [", 15ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$3440$6, 0, 24ll );
						FBSTRING* vr$232 = fb_StrConcat( &TMP$3440$6, (void*)vr$229, -1ll, (void*)"], 0", 5ll );
						fb_StrAssign( (void*)&TMP$3441$6, -1ll, (void*)vr$232, -1ll, 0 );
						HWRITEASM64( &TMP$3441$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3441$6 );
					}
					goto label$2663;
					label$2664:;
					{
						FBSTRING TMP$3442$6;
						FBSTRING TMP$3443$6;
						FBSTRING TMP$3444$6;
						FBSTRING TMP$3446$6;
						__builtin_memset( &TMP$3444$6, 0, 24ll );
						__builtin_memset( &TMP$3442$6, 0, 24ll );
						FBSTRING* vr$241 = fb_StrConcat( &TMP$3442$6, (void*)&INSTRUC$1, -1ll, (void*)"rax, ", 6ll );
						__builtin_memset( &TMP$3443$6, 0, 24ll );
						FBSTRING* vr$244 = fb_StrConcat( &TMP$3443$6, (void*)vr$241, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3444$6, -1ll, (void*)vr$244, -1ll, 0 );
						HWRITEASM64( &TMP$3444$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3444$6 );
						__builtin_memset( &TMP$3446$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3446$6, -1ll, (void*)"mov WORD PTR [rax], 0", 22ll, 0 );
						HWRITEASM64( &TMP$3446$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3446$6 );
					}
					label$2663:;
				}
				goto label$2650;
				label$2661:;
				if( TMP$3428$4 != 4ll ) goto label$2665;
				label$2666:;
				{
					if( *(int64*)V1$1 != 4ll ) goto label$2668;
					{
						FBSTRING TMP$3448$6;
						FBSTRING TMP$3449$6;
						FBSTRING TMP$3450$6;
						__builtin_memset( &TMP$3450$6, 0, 24ll );
						__builtin_memset( &TMP$3448$6, 0, 24ll );
						FBSTRING* vr$257 = fb_StrConcat( &TMP$3448$6, (void*)"mov DWORD PTR [", 16ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$3449$6, 0, 24ll );
						FBSTRING* vr$260 = fb_StrConcat( &TMP$3449$6, (void*)vr$257, -1ll, (void*)"], 0", 5ll );
						fb_StrAssign( (void*)&TMP$3450$6, -1ll, (void*)vr$260, -1ll, 0 );
						HWRITEASM64( &TMP$3450$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3450$6 );
					}
					goto label$2667;
					label$2668:;
					{
						FBSTRING TMP$3451$6;
						FBSTRING TMP$3452$6;
						FBSTRING TMP$3453$6;
						FBSTRING TMP$3455$6;
						__builtin_memset( &TMP$3453$6, 0, 24ll );
						__builtin_memset( &TMP$3451$6, 0, 24ll );
						FBSTRING* vr$269 = fb_StrConcat( &TMP$3451$6, (void*)&INSTRUC$1, -1ll, (void*)"rax, ", 6ll );
						__builtin_memset( &TMP$3452$6, 0, 24ll );
						FBSTRING* vr$272 = fb_StrConcat( &TMP$3452$6, (void*)vr$269, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3453$6, -1ll, (void*)vr$272, -1ll, 0 );
						HWRITEASM64( &TMP$3453$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3453$6 );
						__builtin_memset( &TMP$3455$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3455$6, -1ll, (void*)"mov DWORD PTR [rax], 0", 23ll, 0 );
						HWRITEASM64( &TMP$3455$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3455$6 );
					}
					label$2667:;
				}
				goto label$2650;
				label$2665:;
				if( TMP$3428$4 != 8ll ) goto label$2669;
				label$2670:;
				{
					if( *(int64*)V1$1 != 4ll ) goto label$2672;
					{
						FBSTRING TMP$3456$6;
						FBSTRING TMP$3457$6;
						FBSTRING TMP$3458$6;
						__builtin_memset( &TMP$3458$6, 0, 24ll );
						__builtin_memset( &TMP$3456$6, 0, 24ll );
						FBSTRING* vr$285 = fb_StrConcat( &TMP$3456$6, (void*)"mov QWORD PTR [", 16ll, (void*)&OP1$1, -1ll );
						__builtin_memset( &TMP$3457$6, 0, 24ll );
						FBSTRING* vr$288 = fb_StrConcat( &TMP$3457$6, (void*)vr$285, -1ll, (void*)"], 0", 5ll );
						fb_StrAssign( (void*)&TMP$3458$6, -1ll, (void*)vr$288, -1ll, 0 );
						HWRITEASM64( &TMP$3458$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3458$6 );
					}
					goto label$2671;
					label$2672:;
					{
						FBSTRING TMP$3459$6;
						FBSTRING TMP$3460$6;
						FBSTRING TMP$3461$6;
						FBSTRING TMP$3463$6;
						__builtin_memset( &TMP$3461$6, 0, 24ll );
						__builtin_memset( &TMP$3459$6, 0, 24ll );
						FBSTRING* vr$297 = fb_StrConcat( &TMP$3459$6, (void*)&INSTRUC$1, -1ll, (void*)"rax, ", 6ll );
						__builtin_memset( &TMP$3460$6, 0, 24ll );
						FBSTRING* vr$300 = fb_StrConcat( &TMP$3460$6, (void*)vr$297, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3461$6, -1ll, (void*)vr$300, -1ll, 0 );
						HWRITEASM64( &TMP$3461$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3461$6 );
						__builtin_memset( &TMP$3463$6, 0, 24ll );
						fb_StrAssign( (void*)&TMP$3463$6, -1ll, (void*)"mov QWORD PTR [rax], 0", 23ll, 0 );
						HWRITEASM64( &TMP$3463$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3463$6 );
					}
					label$2671:;
				}
				label$2669:;
				label$2650:;
			}
		}
		goto label$2635;
		label$2636:;
		if( OP$1 != 105ll ) goto label$2673;
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
				$15IRVREGTYPE_ENUM TMP$3464$4;
				TMP$3464$4 = *($15IRVREGTYPE_ENUM*)V1$1;
				if( TMP$3464$4 != 2ll ) goto label$2678;
				label$2679:;
				{
					PREPARE_IDX( V1$1, &OP1$1, &OP3$1 );
				}
				goto label$2677;
				label$2678:;
				if( TMP$3464$4 != 4ll ) goto label$2680;
				label$2681:;
				{
					int32 vr$319 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
					fb_StrAssign( (void*)&OP1$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$319 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$2677;
				label$2680:;
				if( TMP$3464$4 != 1ll ) goto label$2682;
				label$2683:;
				{
					if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2685;
					{
						FBSTRING TMP$3465$6;
						FBSTRING TMP$3466$6;
						FBSTRING TMP$3467$6;
						FBSTRING* vr$333 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						uint8* vr$335 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
						__builtin_memset( &TMP$3465$6, 0, 24ll );
						FBSTRING* vr$338 = fb_StrConcat( &TMP$3465$6, (void*)vr$335, 0ll, (void*)"[rip+", 6ll );
						__builtin_memset( &TMP$3466$6, 0, 24ll );
						FBSTRING* vr$341 = fb_StrConcat( &TMP$3466$6, (void*)vr$338, -1ll, (void*)vr$333, -1ll );
						__builtin_memset( &TMP$3467$6, 0, 24ll );
						FBSTRING* vr$344 = fb_StrConcat( &TMP$3467$6, (void*)vr$341, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$344, -1ll, 0 );
					}
					goto label$2684;
					label$2685:;
					{
						FBSTRING TMP$3468$6;
						FBSTRING* vr$347 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
						__builtin_memset( &TMP$3468$6, 0, 24ll );
						FBSTRING* vr$350 = fb_StrConcat( &TMP$3468$6, (void*)vr$347, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$350, -1ll, 0 );
					}
					label$2684:;
				}
				goto label$2677;
				label$2682:;
				if( TMP$3464$4 != 3ll ) goto label$2686;
				label$2687:;
				{
					FBSTRING TMP$3469$5;
					FBSTRING TMP$3470$5;
					FBSTRING TMP$3471$5;
					int32 vr$355 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
					FBSTRING* vr$359 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					__builtin_memset( &TMP$3469$5, 0, 24ll );
					FBSTRING* vr$362 = fb_StrConcat( &TMP$3469$5, (void*)vr$359, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$3470$5, 0, 24ll );
					FBSTRING* vr$365 = fb_StrConcat( &TMP$3470$5, (void*)vr$362, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$355 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$3471$5, 0, 24ll );
					FBSTRING* vr$368 = fb_StrConcat( &TMP$3471$5, (void*)vr$365, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$368, -1ll, 0 );
				}
				goto label$2677;
				label$2686:;
				if( TMP$3464$4 != 5ll ) goto label$2688;
				label$2689:;
				{
					FBSTRING TMP$3472$5;
					FBSTRING TMP$3473$5;
					FBSTRING TMP$3474$5;
					FBSTRING* vr$371 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 64ll) );
					uint8* vr$373 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					__builtin_memset( &TMP$3472$5, 0, 24ll );
					FBSTRING* vr$376 = fb_StrConcat( &TMP$3472$5, (void*)vr$373, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$3473$5, 0, 24ll );
					FBSTRING* vr$379 = fb_StrConcat( &TMP$3473$5, (void*)vr$376, -1ll, (void*)vr$371, -1ll );
					__builtin_memset( &TMP$3474$5, 0, 24ll );
					FBSTRING* vr$382 = fb_StrConcat( &TMP$3474$5, (void*)vr$379, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$382, -1ll, 0 );
					DESTTYP$1 = 1;
				}
				goto label$2677;
				label$2688:;
				if( TMP$3464$4 != 0ll ) goto label$2690;
				label$2691:;
				{
					FBSTRING TMP$3475$5;
					FBSTRING TMP$3476$5;
					FBSTRING* vr$385 = fb_LongintToStr( *(int64*)((uint8*)V1$1 + 48ll) );
					__builtin_memset( &TMP$3475$5, 0, 24ll );
					FBSTRING* vr$388 = fb_StrConcat( &TMP$3475$5, (void*)"[", 2ll, (void*)vr$385, -1ll );
					__builtin_memset( &TMP$3476$5, 0, 24ll );
					FBSTRING* vr$391 = fb_StrConcat( &TMP$3476$5, (void*)vr$388, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$391, -1ll, 0 );
				}
				goto label$2677;
				label$2690:;
				{
					FBSTRING TMP$3477$5;
					FBSTRING TMP$3480$5;
					FBSTRING TMP$3481$5;
					__builtin_memset( &TMP$3477$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3477$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3477$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3477$5 );
					__builtin_memset( &TMP$3480$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3480$5, -1ll, (void*)"FOUND AN ERROR : memcopy 01 type not handled", 45ll, 0 );
					HWRITEASM64( &TMP$3480$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3480$5 );
					__builtin_memset( &TMP$3481$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3481$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3481$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3481$5 );
				}
				label$2692:;
				label$2677:;
			}
			{
				$15IRVREGTYPE_ENUM TMP$3482$4;
				TMP$3482$4 = *($15IRVREGTYPE_ENUM*)V2$1;
				if( TMP$3482$4 != 4ll ) goto label$2694;
				label$2695:;
				{
					int32 vr$408 = REG_FINDREAL( (int32)*(int64*)((uint8*)V2$1 + 24ll) );
					REGSRC$1 = vr$408;
					fb_StrAssign( (void*)&OP2$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll, 0 );
				}
				goto label$2693;
				label$2694:;
				if( TMP$3482$4 != 1ll ) goto label$2696;
				label$2697:;
				{
					if( ((int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 2ll) != 0ll) | (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) + 8ll) & 1ll) != 0ll)) == 0ll ) goto label$2699;
					{
						FBSTRING TMP$3483$6;
						FBSTRING TMP$3484$6;
						FBSTRING TMP$3485$6;
						FBSTRING* vr$422 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
						uint8* vr$424 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
						__builtin_memset( &TMP$3483$6, 0, 24ll );
						FBSTRING* vr$427 = fb_StrConcat( &TMP$3483$6, (void*)vr$424, 0ll, (void*)"[rip+", 6ll );
						__builtin_memset( &TMP$3484$6, 0, 24ll );
						FBSTRING* vr$430 = fb_StrConcat( &TMP$3484$6, (void*)vr$427, -1ll, (void*)vr$422, -1ll );
						__builtin_memset( &TMP$3485$6, 0, 24ll );
						FBSTRING* vr$433 = fb_StrConcat( &TMP$3485$6, (void*)vr$430, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$433, -1ll, 0 );
					}
					goto label$2698;
					label$2699:;
					{
						FBSTRING TMP$3486$6;
						FBSTRING* vr$436 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
						__builtin_memset( &TMP$3486$6, 0, 24ll );
						FBSTRING* vr$439 = fb_StrConcat( &TMP$3486$6, (void*)vr$436, -1ll, (void*)"[rbp]", 6ll );
						fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$439, -1ll, 0 );
					}
					label$2698:;
				}
				goto label$2693;
				label$2696:;
				if( TMP$3482$4 != 5ll ) goto label$2700;
				label$2701:;
				{
					FBSTRING TMP$3487$5;
					FBSTRING TMP$3488$5;
					FBSTRING TMP$3489$5;
					FBSTRING* vr$442 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
					uint8* vr$444 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)V2$1 + 56ll) );
					__builtin_memset( &TMP$3487$5, 0, 24ll );
					FBSTRING* vr$447 = fb_StrConcat( &TMP$3487$5, (void*)vr$444, 0ll, (void*)"[rip+", 6ll );
					__builtin_memset( &TMP$3488$5, 0, 24ll );
					FBSTRING* vr$450 = fb_StrConcat( &TMP$3488$5, (void*)vr$447, -1ll, (void*)vr$442, -1ll );
					__builtin_memset( &TMP$3489$5, 0, 24ll );
					FBSTRING* vr$453 = fb_StrConcat( &TMP$3489$5, (void*)vr$450, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$453, -1ll, 0 );
					SRCTYP$1 = 1;
				}
				goto label$2693;
				label$2700:;
				if( TMP$3482$4 != 3ll ) goto label$2702;
				label$2703:;
				{
					FBSTRING TMP$3490$5;
					FBSTRING TMP$3491$5;
					FBSTRING TMP$3492$5;
					int32 vr$458 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll) );
					FBSTRING* vr$462 = fb_LongintToStr( *(int64*)((uint8*)V2$1 + 64ll) );
					__builtin_memset( &TMP$3490$5, 0, 24ll );
					FBSTRING* vr$465 = fb_StrConcat( &TMP$3490$5, (void*)vr$462, -1ll, (void*)"[", 2ll );
					__builtin_memset( &TMP$3491$5, 0, 24ll );
					FBSTRING* vr$468 = fb_StrConcat( &TMP$3491$5, (void*)vr$465, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$458 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$3492$5, 0, 24ll );
					FBSTRING* vr$471 = fb_StrConcat( &TMP$3492$5, (void*)vr$468, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$471, -1ll, 0 );
				}
				goto label$2693;
				label$2702:;
				{
					FBSTRING TMP$3493$5;
					FBSTRING TMP$3496$5;
					FBSTRING TMP$3497$5;
					__builtin_memset( &TMP$3493$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3493$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3493$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3493$5 );
					__builtin_memset( &TMP$3496$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3496$5, -1ll, (void*)"FOUND AN ERROR : Memcopy v2 not a reg nor a var nor ofs nor ptr", 64ll, 0 );
					HWRITEASM64( &TMP$3496$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3496$5 );
					__builtin_memset( &TMP$3497$5, 0, 24ll );
					fb_StrAssign( (void*)&TMP$3497$5, -1ll, (void*)"", 1ll, 0 );
					HWRITEASM64( &TMP$3497$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3497$5 );
				}
				label$2704:;
				label$2693:;
			}
			int32 vr$486 = fb_StrCompare( (void*)&OP3$1, -1ll, (void*)"", 1ll );
			if( (int64)vr$486 == 0ll ) goto label$2706;
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
					MEMCOPY( BYTES$1, &OP2$1, &OP1$1, SRCTYP$1, DESTTYP$1 );
				}
				goto label$2707;
				label$2708:;
				{
					if( *(int64*)V2$1 != 1ll ) goto label$2716;
					{
						FBSTRING TMP$3498$6;
						FBSTRING TMP$3499$6;
						FBSTRING TMP$3500$6;
						FBSTRING TMP$3501$6;
						__builtin_memset( &TMP$3499$6, 0, 24ll );
						__builtin_memset( &TMP$3498$6, 0, 24ll );
						FBSTRING* vr$496 = fb_StrConcat( &TMP$3498$6, (void*)"mov rax, ", 10ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$3499$6, -1ll, (void*)vr$496, -1ll, 0 );
						HWRITEASM64( &TMP$3499$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3499$6 );
						__builtin_memset( &TMP$3500$6, 0, 24ll );
						FBSTRING* vr$502 = fb_StrConcat( &TMP$3500$6, (void*)"[", 2ll, (void*)REGTEMPO$1, 0ll );
						__builtin_memset( &TMP$3501$6, 0, 24ll );
						FBSTRING* vr$505 = fb_StrConcat( &TMP$3501$6, (void*)vr$502, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP2$1, -1ll, (void*)vr$505, -1ll, 0 );
					}
					goto label$2715;
					label$2716:;
					if( *(int64*)V2$1 == 4ll ) goto label$2717;
					{
						FBSTRING TMP$3502$6;
						FBSTRING TMP$3503$6;
						__builtin_memset( &TMP$3503$6, 0, 24ll );
						__builtin_memset( &TMP$3502$6, 0, 24ll );
						FBSTRING* vr$512 = fb_StrConcat( &TMP$3502$6, (void*)"lea rax, ", 10ll, (void*)&OP2$1, -1ll );
						fb_StrAssign( (void*)&TMP$3503$6, -1ll, (void*)vr$512, -1ll, 0 );
						HWRITEASM64( &TMP$3503$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3503$6 );
						REGSRC$1 = 0;
					}
					label$2717:;
					label$2715:;
					if( *(int64*)V1$1 != 1ll ) goto label$2719;
					{
						FBSTRING TMP$3504$6;
						FBSTRING TMP$3505$6;
						FBSTRING TMP$3506$6;
						FBSTRING TMP$3507$6;
						FBSTRING TMP$3508$6;
						FBSTRING TMP$3509$6;
						uint8* vr$517 = REG_TEMPO(  );
						REGTEMPO$1 = vr$517;
						__builtin_memset( &TMP$3507$6, 0, 24ll );
						__builtin_memset( &TMP$3504$6, 0, 24ll );
						FBSTRING* vr$522 = fb_StrConcat( &TMP$3504$6, (void*)"mov ", 5ll, (void*)REGTEMPO$1, 0ll );
						__builtin_memset( &TMP$3505$6, 0, 24ll );
						FBSTRING* vr$525 = fb_StrConcat( &TMP$3505$6, (void*)vr$522, -1ll, (void*)", ", 3ll );
						__builtin_memset( &TMP$3506$6, 0, 24ll );
						FBSTRING* vr$528 = fb_StrConcat( &TMP$3506$6, (void*)vr$525, -1ll, (void*)&OP1$1, -1ll );
						fb_StrAssign( (void*)&TMP$3507$6, -1ll, (void*)vr$528, -1ll, 0 );
						HWRITEASM64( &TMP$3507$6, 0ll );
						fb_StrDelete( (FBSTRING*)&TMP$3507$6 );
						__builtin_memset( &TMP$3508$6, 0, 24ll );
						FBSTRING* vr$534 = fb_StrConcat( &TMP$3508$6, (void*)"[", 2ll, (void*)REGTEMPO$1, 0ll );
						__builtin_memset( &TMP$3509$6, 0, 24ll );
						FBSTRING* vr$537 = fb_StrConcat( &TMP$3509$6, (void*)vr$534, -1ll, (void*)"]", 2ll );
						fb_StrAssign( (void*)&OP1$1, -1ll, (void*)vr$537, -1ll, 0 );
					}
					label$2719:;
					label$2718:;
					{
						if( BYTES$1 != 1ll ) goto label$2721;
						label$2722:;
						{
							FBSTRING TMP$3511$7;
							FBSTRING TMP$3512$7;
							FBSTRING TMP$3513$7;
							__builtin_memset( &TMP$3513$7, 0, 24ll );
							__builtin_memset( &TMP$3511$7, 0, 24ll );
							FBSTRING* vr$544 = fb_StrConcat( &TMP$3511$7, (void*)"mov al, [", 10ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$3512$7, 0, 24ll );
							FBSTRING* vr$547 = fb_StrConcat( &TMP$3512$7, (void*)vr$544, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&TMP$3513$7, -1ll, (void*)vr$547, -1ll, 0 );
							HWRITEASM64( &TMP$3513$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3513$7 );
							if( *(int64*)V1$1 != 4ll ) goto label$2724;
							{
								FBSTRING TMP$3514$8;
								FBSTRING TMP$3515$8;
								FBSTRING TMP$3516$8;
								__builtin_memset( &TMP$3516$8, 0, 24ll );
								__builtin_memset( &TMP$3514$8, 0, 24ll );
								FBSTRING* vr$556 = fb_StrConcat( &TMP$3514$8, (void*)"mov BYTE PTR [", 15ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3515$8, 0, 24ll );
								FBSTRING* vr$559 = fb_StrConcat( &TMP$3515$8, (void*)vr$556, -1ll, (void*)"], al", 6ll );
								fb_StrAssign( (void*)&TMP$3516$8, -1ll, (void*)vr$559, -1ll, 0 );
								HWRITEASM64( &TMP$3516$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3516$8 );
							}
							goto label$2723;
							label$2724:;
							{
								FBSTRING TMP$3517$8;
								FBSTRING TMP$3518$8;
								FBSTRING TMP$3519$8;
								__builtin_memset( &TMP$3519$8, 0, 24ll );
								__builtin_memset( &TMP$3517$8, 0, 24ll );
								FBSTRING* vr$567 = fb_StrConcat( &TMP$3517$8, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3518$8, 0, 24ll );
								FBSTRING* vr$570 = fb_StrConcat( &TMP$3518$8, (void*)vr$567, -1ll, (void*)", al", 5ll );
								fb_StrAssign( (void*)&TMP$3519$8, -1ll, (void*)vr$570, -1ll, 0 );
								HWRITEASM64( &TMP$3519$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3519$8 );
							}
							label$2723:;
						}
						goto label$2720;
						label$2721:;
						if( BYTES$1 != 2ll ) goto label$2725;
						label$2726:;
						{
							FBSTRING TMP$3521$7;
							FBSTRING TMP$3522$7;
							FBSTRING TMP$3523$7;
							__builtin_memset( &TMP$3523$7, 0, 24ll );
							__builtin_memset( &TMP$3521$7, 0, 24ll );
							FBSTRING* vr$579 = fb_StrConcat( &TMP$3521$7, (void*)"mov ax, [", 10ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$3522$7, 0, 24ll );
							FBSTRING* vr$582 = fb_StrConcat( &TMP$3522$7, (void*)vr$579, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&TMP$3523$7, -1ll, (void*)vr$582, -1ll, 0 );
							HWRITEASM64( &TMP$3523$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3523$7 );
							if( *(int64*)V1$1 != 4ll ) goto label$2728;
							{
								FBSTRING TMP$3524$8;
								FBSTRING TMP$3525$8;
								FBSTRING TMP$3526$8;
								__builtin_memset( &TMP$3526$8, 0, 24ll );
								__builtin_memset( &TMP$3524$8, 0, 24ll );
								FBSTRING* vr$591 = fb_StrConcat( &TMP$3524$8, (void*)"mov WORD PTR [", 15ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3525$8, 0, 24ll );
								FBSTRING* vr$594 = fb_StrConcat( &TMP$3525$8, (void*)vr$591, -1ll, (void*)"], ax", 6ll );
								fb_StrAssign( (void*)&TMP$3526$8, -1ll, (void*)vr$594, -1ll, 0 );
								HWRITEASM64( &TMP$3526$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3526$8 );
							}
							goto label$2727;
							label$2728:;
							{
								FBSTRING TMP$3527$8;
								FBSTRING TMP$3528$8;
								FBSTRING TMP$3529$8;
								__builtin_memset( &TMP$3529$8, 0, 24ll );
								__builtin_memset( &TMP$3527$8, 0, 24ll );
								FBSTRING* vr$602 = fb_StrConcat( &TMP$3527$8, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3528$8, 0, 24ll );
								FBSTRING* vr$605 = fb_StrConcat( &TMP$3528$8, (void*)vr$602, -1ll, (void*)", ax", 5ll );
								fb_StrAssign( (void*)&TMP$3529$8, -1ll, (void*)vr$605, -1ll, 0 );
								HWRITEASM64( &TMP$3529$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3529$8 );
							}
							label$2727:;
						}
						goto label$2720;
						label$2725:;
						if( BYTES$1 != 4ll ) goto label$2729;
						label$2730:;
						{
							FBSTRING TMP$3531$7;
							FBSTRING TMP$3532$7;
							FBSTRING TMP$3533$7;
							__builtin_memset( &TMP$3533$7, 0, 24ll );
							__builtin_memset( &TMP$3531$7, 0, 24ll );
							FBSTRING* vr$614 = fb_StrConcat( &TMP$3531$7, (void*)"mov eax, [", 11ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$3532$7, 0, 24ll );
							FBSTRING* vr$617 = fb_StrConcat( &TMP$3532$7, (void*)vr$614, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&TMP$3533$7, -1ll, (void*)vr$617, -1ll, 0 );
							HWRITEASM64( &TMP$3533$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3533$7 );
							if( *(int64*)V1$1 != 4ll ) goto label$2732;
							{
								FBSTRING TMP$3534$8;
								FBSTRING TMP$3535$8;
								FBSTRING TMP$3536$8;
								__builtin_memset( &TMP$3536$8, 0, 24ll );
								__builtin_memset( &TMP$3534$8, 0, 24ll );
								FBSTRING* vr$626 = fb_StrConcat( &TMP$3534$8, (void*)"mov DWORD PTR [", 16ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3535$8, 0, 24ll );
								FBSTRING* vr$629 = fb_StrConcat( &TMP$3535$8, (void*)vr$626, -1ll, (void*)"], eax", 7ll );
								fb_StrAssign( (void*)&TMP$3536$8, -1ll, (void*)vr$629, -1ll, 0 );
								HWRITEASM64( &TMP$3536$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3536$8 );
							}
							goto label$2731;
							label$2732:;
							{
								FBSTRING TMP$3537$8;
								FBSTRING TMP$3538$8;
								FBSTRING TMP$3539$8;
								__builtin_memset( &TMP$3539$8, 0, 24ll );
								__builtin_memset( &TMP$3537$8, 0, 24ll );
								FBSTRING* vr$637 = fb_StrConcat( &TMP$3537$8, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3538$8, 0, 24ll );
								FBSTRING* vr$640 = fb_StrConcat( &TMP$3538$8, (void*)vr$637, -1ll, (void*)", eax", 6ll );
								fb_StrAssign( (void*)&TMP$3539$8, -1ll, (void*)vr$640, -1ll, 0 );
								HWRITEASM64( &TMP$3539$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3539$8 );
							}
							label$2731:;
						}
						goto label$2720;
						label$2729:;
						if( BYTES$1 != 8ll ) goto label$2733;
						label$2734:;
						{
							FBSTRING TMP$3540$7;
							FBSTRING TMP$3541$7;
							FBSTRING TMP$3542$7;
							__builtin_memset( &TMP$3542$7, 0, 24ll );
							__builtin_memset( &TMP$3540$7, 0, 24ll );
							FBSTRING* vr$649 = fb_StrConcat( &TMP$3540$7, (void*)"mov rax, [", 11ll, *(void**)((uint8*)REGSTRQ$ + ((int64)REGSRC$1 << (3ll & 63ll))), 0ll );
							__builtin_memset( &TMP$3541$7, 0, 24ll );
							FBSTRING* vr$652 = fb_StrConcat( &TMP$3541$7, (void*)vr$649, -1ll, (void*)"]", 2ll );
							fb_StrAssign( (void*)&TMP$3542$7, -1ll, (void*)vr$652, -1ll, 0 );
							HWRITEASM64( &TMP$3542$7, 0ll );
							fb_StrDelete( (FBSTRING*)&TMP$3542$7 );
							if( *(int64*)V1$1 != 4ll ) goto label$2736;
							{
								FBSTRING TMP$3543$8;
								FBSTRING TMP$3544$8;
								FBSTRING TMP$3545$8;
								__builtin_memset( &TMP$3545$8, 0, 24ll );
								__builtin_memset( &TMP$3543$8, 0, 24ll );
								FBSTRING* vr$661 = fb_StrConcat( &TMP$3543$8, (void*)"mov QWORD PTR [", 16ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3544$8, 0, 24ll );
								FBSTRING* vr$664 = fb_StrConcat( &TMP$3544$8, (void*)vr$661, -1ll, (void*)"], rax", 7ll );
								fb_StrAssign( (void*)&TMP$3545$8, -1ll, (void*)vr$664, -1ll, 0 );
								HWRITEASM64( &TMP$3545$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3545$8 );
							}
							goto label$2735;
							label$2736:;
							{
								FBSTRING TMP$3546$8;
								FBSTRING TMP$3547$8;
								FBSTRING TMP$3548$8;
								__builtin_memset( &TMP$3548$8, 0, 24ll );
								__builtin_memset( &TMP$3546$8, 0, 24ll );
								FBSTRING* vr$672 = fb_StrConcat( &TMP$3546$8, (void*)"mov ", 5ll, (void*)&OP1$1, -1ll );
								__builtin_memset( &TMP$3547$8, 0, 24ll );
								FBSTRING* vr$675 = fb_StrConcat( &TMP$3547$8, (void*)vr$672, -1ll, (void*)", rax", 6ll );
								fb_StrAssign( (void*)&TMP$3548$8, -1ll, (void*)vr$675, -1ll, 0 );
								HWRITEASM64( &TMP$3548$8, 0ll );
								fb_StrDelete( (FBSTRING*)&TMP$3548$8 );
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
	__builtin_memset( &ASMLINE$1, 0, 24ll );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$2741:;
	if( N$1 == (struct $9ASTASMTOK*)0ull ) goto label$2742;
	{
		{
			$14AST_ASMTOKTYPE TMP$3549$3;
			TMP$3549$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$3549$3 != 0ll ) goto label$2744;
			label$2745:;
			{
				FBSTRING TMP$3550$4;
				__builtin_memset( &TMP$3550$4, 0, 24ll );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$3550$4, (void*)&ASMLINE$1, -1ll, *(void**)((uint8*)N$1 + 8ll), 0ll );
				fb_StrAssign( (void*)&ASMLINE$1, -1ll, (void*)vr$6, -1ll, 0 );
			}
			goto label$2743;
			label$2744:;
			if( TMP$3549$3 != 1ll ) goto label$2746;
			label$2747:;
			{
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) + 88ll);
				if( OFS$4 == 0ll ) goto label$2749;
				{
					int64 vr$11 = fb_StrLen( (void*)&ASMLINE$1, -1ll );
					FBSTRING* vr$14 = fb_LEFT( (FBSTRING*)&ASMLINE$1, vr$11 + -1ll );
					fb_StrAssign( (void*)&ASMLINE$1, -1ll, (void*)vr$14, -1ll, 0 );
					FBSTRING* vr$16 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1ll, (void*)vr$16, -1ll, 0 );
					fb_StrConcatAssign( (void*)&ASMLINE$1, -1ll, (void*)"[rbp", 5ll, 0 );
				}
				goto label$2748;
				label$2749:;
				{
					FBSTRING TMP$3552$5;
					uint8* vr$20 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
					__builtin_memset( &TMP$3552$5, 0, 24ll );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$3552$5, (void*)&ASMLINE$1, -1ll, (void*)vr$20, 0ll );
					fb_StrAssign( (void*)&ASMLINE$1, -1ll, (void*)vr$24, -1ll, 0 );
				}
				label$2748:;
			}
			goto label$2743;
			label$2746:;
			{
				FBSTRING TMP$3553$4;
				FBSTRING TMP$3556$4;
				FBSTRING TMP$3557$4;
				__builtin_memset( &TMP$3553$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3553$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3553$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3553$4 );
				__builtin_memset( &TMP$3556$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3556$4, -1ll, (void*)"FOUND AN ERROR : in emitasm token unknown", 42ll, 0 );
				HWRITEASM64( &TMP$3556$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3556$4 );
				__builtin_memset( &TMP$3557$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3557$4, -1ll, (void*)"", 1ll, 0 );
				HWRITEASM64( &TMP$3557$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3557$4 );
			}
			label$2750:;
			label$2743:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 16ll);
	}
	goto label$2741;
	label$2742:;
	HWRITEASM64( &ASMLINE$1, 0ll );
	fb_StrDelete( (FBSTRING*)&ASMLINE$1 );
	label$2740:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$3559$1;
	FBSTRING TMP$3563$1;
	FBSTRING TMP$3564$1;
	FBSTRING TMP$3565$1;
	FBSTRING TMP$3566$1;
	label$2751:;
	int64 ALIGN$1;
	__builtin_memset( &ALIGN$1, 0, 8ll );
	if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll ) goto label$2754;
	{
		ALIGN$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) + 192ll);
	}
	goto label$2753;
	label$2754:;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$2756;
		{
			ALIGN$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 736ll);
		}
		goto label$2755;
		label$2756:;
		{
			int64 TMP$3558$3;
			if( ((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$2757;
			TMP$3558$3 = 24ll;
			goto label$3062;
			label$2757:;
			TMP$3558$3 = (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 31ll;
			label$3062:;
			ALIGN$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$3558$3 * 56ll)) + 8ll);
		}
		label$2755:;
	}
	label$2753:;
	__builtin_memset( &TMP$3559$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3559$1, -1ll, (void*)".data", 6ll, 0 );
	ASM_SECTION( &TMP$3559$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3559$1 );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) == 0ll ) goto label$2759;
	{
		FBSTRING TMP$3560$2;
		FBSTRING TMP$3561$2;
		__builtin_memset( &TMP$3561$2, 0, 24ll );
		uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$3560$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$3560$2, (void*)".globl ", 8ll, (void*)vr$21, 0ll );
		fb_StrAssign( (void*)&TMP$3561$2, -1ll, (void*)vr$24, -1ll, 0 );
		HWRITEASM64( &TMP$3561$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3561$2 );
	}
	label$2759:;
	label$2758:;
	__builtin_memset( &TMP$3564$1, 0, 24ll );
	FBSTRING* vr$29 = fb_LongintToStr( ALIGN$1 );
	__builtin_memset( &TMP$3563$1, 0, 24ll );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$3563$1, (void*)".align ", 8ll, (void*)vr$29, -1ll );
	fb_StrAssign( (void*)&TMP$3564$1, -1ll, (void*)vr$32, -1ll, 0 );
	HWRITEASM64( &TMP$3564$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3564$1 );
	__builtin_memset( &TMP$3566$1, 0, 24ll );
	uint8* vr$37 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$3565$1, 0, 24ll );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$3565$1, (void*)vr$37, 0ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$3566$1, -1ll, (void*)vr$40, -1ll, 0 );
	HWRITEASM64( &TMP$3566$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3566$1 );
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 16ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) != 0ll)) == 0ll ) goto label$2761;
	{
	}
	goto label$2760;
	label$2761:;
	{
		if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$2763;
		{
			EDBGEMITGLOBALVAR_ASM64( SYM$1, 1ll );
			label$2763:;
		}
	}
	label$2760:;
	label$2752:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	FBSTRING TMP$3574$1;
	FBSTRING TMP$3575$1;
	FBSTRING TMP$3576$1;
	FBSTRING TMP$3577$1;
	FBSTRING TMP$3578$1;
	label$2764:;
	FBSTRING SIZ$1;
	__builtin_memset( &SIZ$1, 0, 24ll );
	int32 LGT$1;
	__builtin_memset( &LGT$1, 0, 4ll );
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$2767;
	{
		DTYPE$1 = 8ll;
		label$2767:;
	}
	if( ((int64)-(DTYPE$1 == 1ll) & (int64)-(VALUE$1 != 0ll)) == 0ll ) goto label$2769;
	{
		VALUE$1 = 1ll;
	}
	label$2769:;
	label$2768:;
	{
		int64 TMP$3567$2;
		uint64 TMP$3568$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$2770;
		TMP$3567$2 = 24ll;
		goto label$3063;
		label$2770:;
		TMP$3567$2 = DTYPE$1 & 31ll;
		label$3063:;
		TMP$3568$2 = *(uint64*)(((uint8*)SYMB_DTYPETB$ + (TMP$3567$2 * 56ll)) + 8ll);
		goto label$2772;
		label$2773:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1ll, (void*)".byte", 6ll, 0 );
			LGT$1 = 2;
		}
		goto label$2771;
		label$2774:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1ll, (void*)".word", 6ll, 0 );
			LGT$1 = 4;
		}
		goto label$2771;
		label$2775:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1ll, (void*)".long", 6ll, 0 );
			LGT$1 = 8;
		}
		goto label$2771;
		label$2776:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1ll, (void*)".quad", 6ll, 0 );
			LGT$1 = 16;
		}
		goto label$2771;
		label$2777:;
		{
			fb_StrAssign( (void*)&SIZ$1, -1ll, (void*)".quad", 6ll, 0 );
			LGT$1 = 8;
		}
		goto label$2771;
		label$2772:;
		static const void* tmp$3871[8ll] = {
			&&label$2773,
			&&label$2774,
			&&label$2777,
			&&label$2775,
			&&label$2777,
			&&label$2777,
			&&label$2777,
			&&label$2776,
		};
		if( (TMP$3568$2 - 1ull) > 7ull ) goto label$2777;
		goto *tmp$3871[TMP$3568$2 - 1ull];
		label$2771:;
	}
	__builtin_memset( &TMP$3578$1, 0, 24ll );
	FBSTRING* vr$17 = fb_LongintToStr( VALUE$1 );
	FBSTRING* vr$19 = fb_HEX_l( (uint64)VALUE$1 );
	FBSTRING* vr$20 = fb_RIGHT( (FBSTRING*)vr$19, (int64)LGT$1 );
	__builtin_memset( &TMP$3574$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$3574$1, (void*)&SIZ$1, -1ll, (void*)" 0x", 4ll );
	__builtin_memset( &TMP$3575$1, 0, 24ll );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$3575$1, (void*)vr$24, -1ll, (void*)vr$20, -1ll );
	__builtin_memset( &TMP$3576$1, 0, 24ll );
	FBSTRING* vr$30 = fb_StrConcat( &TMP$3576$1, (void*)vr$27, -1ll, (void*)" # ", 4ll );
	__builtin_memset( &TMP$3577$1, 0, 24ll );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$3577$1, (void*)vr$30, -1ll, (void*)vr$17, -1ll );
	fb_StrAssign( (void*)&TMP$3578$1, -1ll, (void*)vr$33, -1ll, 0 );
	HWRITEASM64( &TMP$3578$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3578$1 );
	fb_StrDelete( (FBSTRING*)&SIZ$1 );
	label$2765:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	FBSTRING TMP$3579$1;
	label$2778:;
	__builtin_memset( &TMP$3579$1, 0, 24ll );
	FBSTRING* vr$3 = HFLOATTOHEX_ASM64( VALUE$1, *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, (int8)1 );
	fb_StrAssign( (void*)&TMP$3579$1, -1ll, (void*)vr$3, -1ll, 0 );
	HWRITEASM64( &TMP$3579$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3579$1 );
	label$2779:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$3587$1;
	FBSTRING TMP$3590$1;
	FBSTRING TMP$3591$1;
	label$2780:;
	IRHLEMITPROCBEGIN(  );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 88ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 136ll), -1ll, (void*)"", 1ll, 0 );
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 384ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 392ll) = (struct $8FBSYMBOL*)0ull;
	*(int32*)((uint8*)&CTX$ + 232ll) = -2;
	*(int32*)((uint8*)&CTX$ + 236ll) = 0;
	*(int64*)((uint8*)&CTX$ + 424ll) = 0ll;
	*(boolean*)((uint8*)&CTX$ + 400ll) = (boolean)0ll;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 112ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 8ll) = 3ll;
	*(boolean*)((uint8*)&CTX$ + 257ll) = (boolean)0ll;
	*(int64*)((uint8*)&CTXDBG$ + 8ll) = -1ll;
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	*(int64*)((uint8*)&CTX$ + 168ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 176ll) = 0ll;
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2783;
	{
		*(int64*)((uint8*)&CTX$ + 184ll) = 16ll;
		*(int64*)((uint8*)&CTX$ + 192ll) = 40ll;
	}
	goto label$2782;
	label$2783:;
	{
		*(int64*)((uint8*)&CTX$ + 184ll) = 8ll;
		*(int64*)((uint8*)&CTX$ + 192ll) = 56ll;
	}
	label$2782:;
	*(int64*)((uint8*)&CTX$ + 160ll) = 0ll;
	*(int32*)((uint8*)&CTX$ + 224ll) = 0;
	*(int64*)((uint8*)&CTX$ + 200ll) = 0ll;
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 256ll) == 0ll ) goto label$2785;
	{
		FBSTRING TMP$3581$2;
		FBSTRING TMP$3583$2;
		FBSTRING TMP$3584$2;
		FBSTRING TMP$3585$2;
		FBSTRING TMP$3586$2;
		__builtin_memset( &TMP$3581$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3581$2, -1ll, (void*)".drectve", 9ll, 0 );
		ASM_SECTION( &TMP$3581$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3581$2 );
		__builtin_memset( &TMP$3585$2, 0, 24ll );
		uint8* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3583$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$3583$2, (void*)".ascii \x22 -export:", 18ll, (void*)vr$11, 0ll );
		__builtin_memset( &TMP$3584$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$3584$2, (void*)vr$14, -1ll, (void*)"\x22", 2ll );
		fb_StrAssign( (void*)&TMP$3585$2, -1ll, (void*)vr$17, -1ll, 0 );
		HWRITEASM64( &TMP$3585$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3585$2 );
		__builtin_memset( &TMP$3586$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3586$2, -1ll, (void*)".text", 6ll, 0 );
		ASM_SECTION( &TMP$3586$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3586$2 );
	}
	label$2785:;
	label$2784:;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$2787;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$2789;
		{
			*(boolean*)((uint8*)&CTX$ + 400ll) = (boolean)1ll;
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2791;
			{
				*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 192ll) + 112ll;
			}
			label$2791:;
			label$2790:;
		}
		label$2789:;
		label$2788:;
	}
	label$2787:;
	label$2786:;
	__builtin_memset( &TMP$3587$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3587$1, -1ll, (void*)".text", 6ll, 0 );
	HWRITEASM64( &TMP$3587$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3587$1 );
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 64ll) != 0ll ) goto label$2793;
	{
		FBSTRING TMP$3588$2;
		FBSTRING TMP$3589$2;
		__builtin_memset( &TMP$3589$2, 0, 24ll );
		uint8* vr$35 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$3588$2, 0, 24ll );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$3588$2, (void*)".globl ", 8ll, (void*)vr$35, 0ll );
		fb_StrAssign( (void*)&TMP$3589$2, -1ll, (void*)vr$38, -1ll, 0 );
		HWRITEASM64( &TMP$3589$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3589$2 );
	}
	label$2793:;
	label$2792:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	__builtin_memset( &TMP$3591$1, 0, 24ll );
	uint8* vr$44 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$3590$1, 0, 24ll );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$3590$1, (void*)vr$44, 0ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$3591$1, -1ll, (void*)vr$47, -1ll, 0 );
	HWRITEASM64( &TMP$3591$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3591$1 );
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$2795;
	{
		EDBGEMITPROCHEADER_ASM64( PROC$1 );
		label$2795:;
	}
	*(int64*)((uint8*)&CTX$ + 8ll) = 4ll;
	label$2781:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$3688$1;
	label$2796:;
	int32 IDX$1;
	__builtin_memset( &IDX$1, 0, 4ll );
	FBSTRING RESTREG$1;
	__builtin_memset( &RESTREG$1, 0, 24ll );
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 24ll );
	if( *(int64*)((uint8*)&CTX$ + 200ll) <= *(int64*)((uint8*)&CTX$ + 192ll) ) goto label$2799;
	{
		*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 200ll);
		label$2799:;
	}
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 0ll ) goto label$2801;
	{
		if( *(int64*)((uint8*)&CTX$ + 160ll) == 0ll ) goto label$2803;
		{
			int64 TMP$3592$3;
			if( *(int64*)((uint8*)&CTX$ + 160ll) <= 4ll ) goto label$2804;
			TMP$3592$3 = *(int64*)((uint8*)&CTX$ + 160ll) << (3ll & 63ll);
			goto label$3064;
			label$2804:;
			TMP$3592$3 = 32ll;
			label$3064:;
			*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 192ll) + TMP$3592$3;
			label$2803:;
		}
	}
	goto label$2800;
	label$2801:;
	{
		*(int64*)((uint8*)&CTX$ + 192ll) = *(int64*)((uint8*)&CTX$ + 192ll) + (*(int64*)((uint8*)&CTX$ + 160ll) << (3ll & 63ll));
	}
	label$2800:;
	*(int64*)((uint8*)&CTX$ + 192ll) = (*(int64*)((uint8*)&CTX$ + 192ll) + 15ll) & -16ll;
	*(int64*)((uint8*)&CTX$ + 8ll) = 3ll;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) != 0ll ) goto label$2806;
	{
		FBSTRING TMP$3594$2;
		FBSTRING TMP$3596$2;
		FBSTRING TMP$3598$2;
		FBSTRING TMP$3599$2;
		__builtin_memset( &TMP$3594$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3594$2, -1ll, (void*)"push rbp", 9ll, 0 );
		HWRITEASM64( &TMP$3594$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3594$2 );
		__builtin_memset( &TMP$3596$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3596$2, -1ll, (void*)"mov  rbp,rsp", 13ll, 0 );
		HWRITEASM64( &TMP$3596$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3596$2 );
		__builtin_memset( &TMP$3599$2, 0, 24ll );
		FBSTRING* vr$20 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 192ll) );
		__builtin_memset( &TMP$3598$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$3598$2, (void*)"sub rsp, ", 10ll, (void*)vr$20, -1ll );
		fb_StrAssign( (void*)&TMP$3599$2, -1ll, (void*)vr$23, -1ll, 0 );
		HWRITEASM64( &TMP$3599$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3599$2 );
		if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 2ll) == 0ll ) goto label$2808;
		{
			FBSTRING TMP$3601$3;
			__builtin_memset( &TMP$3601$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3601$3, -1ll, (void*)"mov QWORD PTR -8[rbp], rbx", 27ll, 0 );
			HWRITEASM64( &TMP$3601$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3601$3 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  rbx, QWORD PTR -8[rbp]\x0D\x0A", 30ll, 0 );
			FBSTRING* vr$35 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
			fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$35, -1ll, 0 );
			label$2808:;
		}
		if( *(int64*)((uint8*)&CTX$ + 408ll) != 0ll ) goto label$2810;
		{
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 32ll) == 0ll ) goto label$2812;
			{
				FBSTRING TMP$3605$4;
				__builtin_memset( &TMP$3605$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3605$4, -1ll, (void*)"mov QWORD PTR -16[rbp], rdi", 28ll, 0 );
				HWRITEASM64( &TMP$3605$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3605$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  rdi, QWORD PTR -16[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$45 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$45, -1ll, 0 );
				label$2812:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 16ll) == 0ll ) goto label$2814;
			{
				FBSTRING TMP$3609$4;
				__builtin_memset( &TMP$3609$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3609$4, -1ll, (void*)"mov QWORD PTR -24[rbp], rsi", 28ll, 0 );
				HWRITEASM64( &TMP$3609$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3609$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  rsi, QWORD PTR -24[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$55 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$55, -1ll, 0 );
				label$2814:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 4096ll) == 0ll ) goto label$2816;
			{
				FBSTRING TMP$3613$4;
				__builtin_memset( &TMP$3613$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3613$4, -1ll, (void*)"mov QWORD PTR -32[rbp], r12", 28ll, 0 );
				HWRITEASM64( &TMP$3613$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3613$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r12, QWORD PTR -32[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$65 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$65, -1ll, 0 );
				label$2816:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 8192ll) == 0ll ) goto label$2818;
			{
				FBSTRING TMP$3617$4;
				__builtin_memset( &TMP$3617$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3617$4, -1ll, (void*)"mov QWORD PTR -40[rbp], r13", 28ll, 0 );
				HWRITEASM64( &TMP$3617$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3617$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r13, QWORD PTR -40[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$75 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$75, -1ll, 0 );
				label$2818:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 16384ll) == 0ll ) goto label$2820;
			{
				FBSTRING TMP$3621$4;
				__builtin_memset( &TMP$3621$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3621$4, -1ll, (void*)"mov QWORD PTR -48[rbp], r14", 28ll, 0 );
				HWRITEASM64( &TMP$3621$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3621$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r14, QWORD PTR -48[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$85 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$85, -1ll, 0 );
				label$2820:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 32768ll) == 0ll ) goto label$2822;
			{
				FBSTRING TMP$3625$4;
				__builtin_memset( &TMP$3625$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3625$4, -1ll, (void*)"mov QWORD PTR -56[rbp], r15", 28ll, 0 );
				HWRITEASM64( &TMP$3625$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3625$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r15, QWORD PTR -56[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$95 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$95, -1ll, 0 );
				label$2822:;
			}
		}
		goto label$2809;
		label$2810:;
		{
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 4096ll) == 0ll ) goto label$2824;
			{
				FBSTRING TMP$3629$4;
				__builtin_memset( &TMP$3629$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3629$4, -1ll, (void*)"mov QWORD PTR -16[rbp], r12", 28ll, 0 );
				HWRITEASM64( &TMP$3629$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3629$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r12, QWORD PTR -16[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$105 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$105, -1ll, 0 );
				label$2824:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 8192ll) == 0ll ) goto label$2826;
			{
				FBSTRING TMP$3633$4;
				__builtin_memset( &TMP$3633$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3633$4, -1ll, (void*)"mov QWORD PTR -24[rbp], r13", 28ll, 0 );
				HWRITEASM64( &TMP$3633$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3633$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r13, QWORD PTR -24[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$115 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$115, -1ll, 0 );
				label$2826:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 16384ll) == 0ll ) goto label$2828;
			{
				FBSTRING TMP$3637$4;
				__builtin_memset( &TMP$3637$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3637$4, -1ll, (void*)"mov QWORD PTR -32[rbp], r14", 28ll, 0 );
				HWRITEASM64( &TMP$3637$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3637$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r14, QWORD PTR -32[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$125 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$125, -1ll, 0 );
				label$2828:;
			}
			if( ((int64)*(int32*)((uint8*)&CTX$ + 224ll) & 32768ll) == 0ll ) goto label$2830;
			{
				FBSTRING TMP$3641$4;
				__builtin_memset( &TMP$3641$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3641$4, -1ll, (void*)"mov QWORD PTR -40[rbp], r15", 28ll, 0 );
				HWRITEASM64( &TMP$3641$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3641$4 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)"mov  r15, QWORD PTR -40[rbp]\x0D\x0A", 31ll, 0 );
				FBSTRING* vr$135 = fb_StrFill1( *(int64*)&CTX$ * 3ll, 32 );
				fb_StrConcatAssign( (void*)&RESTREG$1, -1ll, (void*)vr$135, -1ll, 0 );
				label$2830:;
			}
		}
		label$2809:;
		int32 vr$138 = fb_StrCompare( (void*)&RESTREG$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$138 == 0ll ) goto label$2832;
		{
			FBSTRING* vr$141 = fb_RTRIM( (FBSTRING*)&RESTREG$1 );
			fb_StrAssign( (void*)&RESTREG$1, -1ll, (void*)vr$141, -1ll, 0 );
			label$2832:;
		}
	}
	label$2806:;
	label$2805:;
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2834;
	{
		if( *(boolean*)((uint8*)&CTX$ + 400ll) == (boolean)0ll ) goto label$2836;
		{
			FBSTRING TMP$3657$3;
			FBSTRING TMP$3658$3;
			FBSTRING TMP$3659$3;
			FBSTRING TMP$3676$3;
			FBSTRING TMP$3677$3;
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 1ll ) goto label$2838;
			{
				FBSTRING TMP$3645$4;
				__builtin_memset( &TMP$3645$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3645$4, -1ll, (void*)"mov QWORD PTR -152[rbp], rdi", 29ll, 0 );
				HWRITEASM64( &TMP$3645$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3645$4 );
				label$2838:;
			}
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 2ll ) goto label$2840;
			{
				FBSTRING TMP$3647$4;
				__builtin_memset( &TMP$3647$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3647$4, -1ll, (void*)"mov QWORD PTR -144[rbp], rsi", 29ll, 0 );
				HWRITEASM64( &TMP$3647$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3647$4 );
				label$2840:;
			}
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 3ll ) goto label$2842;
			{
				FBSTRING TMP$3649$4;
				__builtin_memset( &TMP$3649$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3649$4, -1ll, (void*)"mov QWORD PTR -136[rbp], rdx", 29ll, 0 );
				HWRITEASM64( &TMP$3649$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3649$4 );
				label$2842:;
			}
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 4ll ) goto label$2844;
			{
				FBSTRING TMP$3651$4;
				__builtin_memset( &TMP$3651$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3651$4, -1ll, (void*)"mov QWORD PTR -128[rbp], rcx", 29ll, 0 );
				HWRITEASM64( &TMP$3651$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3651$4 );
				label$2844:;
			}
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 5ll ) goto label$2846;
			{
				FBSTRING TMP$3653$4;
				__builtin_memset( &TMP$3653$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3653$4, -1ll, (void*)"mov QWORD PTR -120[rbp], r8", 28ll, 0 );
				HWRITEASM64( &TMP$3653$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3653$4 );
				label$2846:;
			}
			if( *(int64*)((uint8*)&CTX$ + 168ll) >= 6ll ) goto label$2848;
			{
				FBSTRING TMP$3655$4;
				__builtin_memset( &TMP$3655$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3655$4, -1ll, (void*)"mov QWORD PTR -112[rbp], r9", 28ll, 0 );
				HWRITEASM64( &TMP$3655$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3655$4 );
				label$2848:;
			}
			uint8* vr$167 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$167, 0ll, 0 );
			__builtin_memset( &TMP$3657$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3657$3, -1ll, (void*)"test eax, eax", 14ll, 0 );
			HWRITEASM64( &TMP$3657$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3657$3 );
			__builtin_memset( &TMP$3659$3, 0, 24ll );
			__builtin_memset( &TMP$3658$3, 0, 24ll );
			FBSTRING* vr$177 = fb_StrConcat( &TMP$3658$3, (void*)"jz ", 4ll, (void*)&LNAME$1, -1ll );
			fb_StrAssign( (void*)&TMP$3659$3, -1ll, (void*)vr$177, -1ll, 0 );
			HWRITEASM64( &TMP$3659$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3659$3 );
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 1ll ) goto label$2850;
			{
				FBSTRING TMP$3661$4;
				__builtin_memset( &TMP$3661$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3661$4, -1ll, (void*)"movq QWORD PTR -104[rbp], xmm0", 31ll, 0 );
				HWRITEASM64( &TMP$3661$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3661$4 );
				label$2850:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 2ll ) goto label$2852;
			{
				FBSTRING TMP$3663$4;
				__builtin_memset( &TMP$3663$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3663$4, -1ll, (void*)"movq QWORD PTR -96[rbp], xmm1", 30ll, 0 );
				HWRITEASM64( &TMP$3663$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3663$4 );
				label$2852:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 3ll ) goto label$2854;
			{
				FBSTRING TMP$3665$4;
				__builtin_memset( &TMP$3665$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3665$4, -1ll, (void*)"movq QWORD PTR -88[rbp], xmm2", 30ll, 0 );
				HWRITEASM64( &TMP$3665$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3665$4 );
				label$2854:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 4ll ) goto label$2856;
			{
				FBSTRING TMP$3667$4;
				__builtin_memset( &TMP$3667$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3667$4, -1ll, (void*)"movq QWORD PTR -80[rbp], xmm3", 30ll, 0 );
				HWRITEASM64( &TMP$3667$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3667$4 );
				label$2856:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 5ll ) goto label$2858;
			{
				FBSTRING TMP$3669$4;
				__builtin_memset( &TMP$3669$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3669$4, -1ll, (void*)"movq QWORD PTR -72[rbp], xmm4", 30ll, 0 );
				HWRITEASM64( &TMP$3669$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3669$4 );
				label$2858:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 6ll ) goto label$2860;
			{
				FBSTRING TMP$3671$4;
				__builtin_memset( &TMP$3671$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3671$4, -1ll, (void*)"movq QWORD PTR -64[rbp], xmm5", 30ll, 0 );
				HWRITEASM64( &TMP$3671$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3671$4 );
				label$2860:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 7ll ) goto label$2862;
			{
				FBSTRING TMP$3673$4;
				__builtin_memset( &TMP$3673$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3673$4, -1ll, (void*)"movq QWORD PTR -56[rbp], xmm6", 30ll, 0 );
				HWRITEASM64( &TMP$3673$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3673$4 );
				label$2862:;
			}
			if( *(int64*)((uint8*)&CTX$ + 176ll) >= 8ll ) goto label$2864;
			{
				FBSTRING TMP$3675$4;
				__builtin_memset( &TMP$3675$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3675$4, -1ll, (void*)"movq QWORD PTR -48[rbp], xmm7", 30ll, 0 );
				HWRITEASM64( &TMP$3675$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3675$4 );
				label$2864:;
			}
			__builtin_memset( &TMP$3677$3, 0, 24ll );
			__builtin_memset( &TMP$3676$3, 0, 24ll );
			FBSTRING* vr$217 = fb_StrConcat( &TMP$3676$3, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
			fb_StrAssign( (void*)&TMP$3677$3, -1ll, (void*)vr$217, -1ll, 0 );
			HWRITEASM64( &TMP$3677$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3677$3 );
		}
		label$2836:;
		label$2835:;
	}
	label$2834:;
	label$2833:;
	*(int64*)((uint8*)&CTX$ + 8ll) = 5ll;
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$2866;
	{
		FBSTRING TMP$3678$2;
		FBSTRING TMP$3679$2;
		FBSTRING TMP$3680$2;
		FBSTRING TMP$3681$2;
		FBSTRING TMP$3682$2;
		FBSTRING TMP$3683$2;
		uint8* vr$221 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$221, 0ll, 0 );
		__builtin_memset( &TMP$3681$2, 0, 24ll );
		uint8* vr$224 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 64ll) );
		__builtin_memset( &TMP$3679$2, 0, 24ll );
		FBSTRING* vr$228 = fb_StrConcat( &TMP$3679$2, (void*)&LNAME$1, -1ll, (void*)"-", 2ll );
		__builtin_memset( &TMP$3680$2, 0, 24ll );
		FBSTRING* vr$231 = fb_StrConcat( &TMP$3680$2, (void*)vr$228, -1ll, (void*)vr$224, 0ll );
		fb_StrAssign( (void*)&TMP$3681$2, -1ll, (void*)vr$231, -1ll, 0 );
		__builtin_memset( &TMP$3678$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3678$2, -1ll, (void*)"", 1ll, 0 );
		DBG_ADDSTAB( &TMP$3678$2, (uint8)224u, (int16)0, &TMP$3681$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3681$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3678$2 );
		__builtin_memset( &TMP$3683$2, 0, 24ll );
		__builtin_memset( &TMP$3682$2, 0, 24ll );
		FBSTRING* vr$243 = fb_StrConcat( &TMP$3682$2, (void*)&LNAME$1, -1ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$3683$2, -1ll, (void*)vr$243, -1ll, 0 );
		HWRITEASM64( &TMP$3683$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3683$2 );
	}
	label$2866:;
	label$2865:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) != 0ll ) goto label$2868;
	{
		FBSTRING TMP$3685$2;
		FBSTRING TMP$3687$2;
		int32 vr$250 = fb_StrCompare( (void*)&RESTREG$1, -1ll, (void*)"", 1ll );
		if( (int64)vr$250 == 0ll ) goto label$2870;
		{
			HWRITEASM64( &RESTREG$1, 0ll );
			label$2870:;
		}
		__builtin_memset( &TMP$3685$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3685$2, -1ll, (void*)"mov rsp,rbp", 12ll, 0 );
		HWRITEASM64( &TMP$3685$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3685$2 );
		__builtin_memset( &TMP$3687$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3687$2, -1ll, (void*)"pop rbp", 8ll, 0 );
		HWRITEASM64( &TMP$3687$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3687$2 );
	}
	label$2868:;
	label$2867:;
	__builtin_memset( &TMP$3688$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3688$1, -1ll, (void*)"ret", 4ll, 0 );
	HWRITEASM64( &TMP$3688$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3688$1 );
	if( *(int64*)((uint8*)&ENV$ + 296ll) != -1ll ) goto label$2872;
	{
		FBSTRING TMP$3689$2;
		FBSTRING TMP$3690$2;
		FBSTRING TMP$3691$2;
		FBSTRING TMP$3692$2;
		FBSTRING TMP$3693$2;
		FBSTRING TMP$3694$2;
		FBSTRING LNAME$2;
		uint8* vr$265 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&LNAME$2, -1ll, (void*)vr$265, 0ll, 0 );
		__builtin_memset( &TMP$3692$2, 0, 24ll );
		uint8* vr$268 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTXDBG$ + 64ll) );
		__builtin_memset( &TMP$3690$2, 0, 24ll );
		FBSTRING* vr$272 = fb_StrConcat( &TMP$3690$2, (void*)&LNAME$2, -1ll, (void*)"-", 2ll );
		__builtin_memset( &TMP$3691$2, 0, 24ll );
		FBSTRING* vr$275 = fb_StrConcat( &TMP$3691$2, (void*)vr$272, -1ll, (void*)vr$268, 0ll );
		fb_StrAssign( (void*)&TMP$3692$2, -1ll, (void*)vr$275, -1ll, 0 );
		__builtin_memset( &TMP$3689$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3689$2, -1ll, (void*)"", 1ll, 0 );
		DBG_ADDSTAB( &TMP$3689$2, (uint8)36u, (int16)0, &TMP$3692$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3692$2 );
		fb_StrDelete( (FBSTRING*)&TMP$3689$2 );
		__builtin_memset( &TMP$3694$2, 0, 24ll );
		__builtin_memset( &TMP$3693$2, 0, 24ll );
		FBSTRING* vr$287 = fb_StrConcat( &TMP$3693$2, (void*)&LNAME$2, -1ll, (void*)":", 2ll );
		fb_StrAssign( (void*)&TMP$3694$2, -1ll, (void*)vr$287, -1ll, 0 );
		HWRITEASM64( &TMP$3694$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3694$2 );
		fb_StrDelete( (FBSTRING*)&LNAME$2 );
	}
	label$2872:;
	label$2871:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&CTX$ + 264ll) );
	*(int32*)((uint8*)&CTX$ + 376ll) = 0;
	IRHLEMITPROCEND(  );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 40ll), -1ll, (void*)((uint8*)&CTX$ + 88ll), -1ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 40ll), -1ll, (void*)((uint8*)&CTX$ + 112ll), -1ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 40ll), -1ll, (void*)((uint8*)&CTX$ + 136ll), -1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 8ll) = 0ll;
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	fb_StrDelete( (FBSTRING*)&RESTREG$1 );
	label$2797:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$2873:;
	FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1ll, (void*)vr$0, 0ll, 0 );
	int64 SYMDTYPE$1;
	SYMDTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	int64 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 32505856ll);
	if( OFS$1 == 0ll ) goto label$2876;
	{
		FBSTRING TMP$3695$2;
		FBSTRING TMP$3696$2;
		FBSTRING TMP$3697$2;
		FBSTRING TMP$3698$2;
		__builtin_memset( &TMP$3698$2, 0, 24ll );
		FBSTRING* vr$22 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$3695$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$3695$2, (void*)".quad ", 7ll, (void*)&S$1, -1ll );
		__builtin_memset( &TMP$3696$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$3696$2, (void*)vr$26, -1ll, (void*)"+", 2ll );
		__builtin_memset( &TMP$3697$2, 0, 24ll );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$3697$2, (void*)vr$29, -1ll, (void*)vr$22, -1ll );
		fb_StrAssign( (void*)&TMP$3698$2, -1ll, (void*)vr$32, -1ll, 0 );
		HWRITEASM64( &TMP$3698$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3698$2 );
	}
	goto label$2875;
	label$2876:;
	{
		FBSTRING TMP$3699$2;
		FBSTRING TMP$3700$2;
		__builtin_memset( &TMP$3700$2, 0, 24ll );
		__builtin_memset( &TMP$3699$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$3699$2, (void*)".quad ", 7ll, (void*)&S$1, -1ll );
		fb_StrAssign( (void*)&TMP$3700$2, -1ll, (void*)vr$40, -1ll, 0 );
		HWRITEASM64( &TMP$3700$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3700$2 );
	}
	label$2875:;
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$2874:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	FBSTRING TMP$3702$1;
	FBSTRING TMP$3703$1;
	label$2877:;
	__builtin_memset( &TMP$3703$1, 0, 24ll );
	FBSTRING* vr$1 = fb_LongintToStr( BYTES$1 );
	__builtin_memset( &TMP$3702$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$3702$1, (void*)".zero ", 7ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$3703$1, -1ll, (void*)vr$4, -1ll, 0 );
	HWRITEASM64( &TMP$3703$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3703$1 );
	label$2878:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$3705$1;
	FBSTRING TMP$3706$1;
	FBSTRING TMP$3707$1;
	FBSTRING TMP$3708$1;
	label$2879:;
	__builtin_memset( &TMP$3705$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$3705$1, -1ll, (void*)".fbctinf", 9ll, 0 );
	ASM_SECTION( &TMP$3705$1 );
	fb_StrDelete( (FBSTRING*)&TMP$3705$1 );
	__builtin_memset( &TMP$3708$1, 0, 24ll );
	__builtin_memset( &TMP$3706$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$3706$1, (void*)".ascii \x22", 9ll, (void*)S$1, 0ll );
	__builtin_memset( &TMP$3707$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$3707$1, (void*)vr$7, -1ll, (void*)"\x5C" "0\x22", 4ll );
	fb_StrAssign( (void*)&TMP$3708$1, -1ll, (void*)vr$10, -1ll, 0 );
	HWRITEASM64( &TMP$3708$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3708$1 );
	label$2880:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	FBSTRING TMP$3712$1;
	FBSTRING TMP$3713$1;
	FBSTRING TMP$3714$1;
	label$2881:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	if( VARLENGTH$1 != 0ll ) goto label$2884;
	{
		FBSTRING TMP$3710$2;
		__builtin_memset( &TMP$3710$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$3710$2, -1ll, (void*)".byte 0 # 0", 12ll, 0 );
		HWRITEASM64( &TMP$3710$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3710$2 );
		goto label$2882;
	}
	label$2884:;
	label$2883:;
	if( VARLENGTH$1 >= LITLENGTH$1 ) goto label$2886;
	{
		FBSTRING TMP$3711$2;
		ERRREPORTWARN( 9ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		__builtin_memset( &TMP$3711$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrAllocTempDescZ( (uint8*)LITERAL$1 );
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)vr$6, VARLENGTH$1 );
		fb_StrAssign( (void*)&TMP$3711$2, -1ll, (void*)vr$7, -1ll, 0 );
		uint8* vr$9 = HESCAPE( (uint8*)*(uint8**)&TMP$3711$2 );
		S$1 = vr$9;
		fb_StrDelete( (FBSTRING*)&TMP$3711$2 );
	}
	goto label$2885;
	label$2886:;
	{
		uint8* vr$11 = HESCAPE( (uint8*)LITERAL$1 );
		S$1 = vr$11;
	}
	label$2885:;
	__builtin_memset( &TMP$3714$1, 0, 24ll );
	__builtin_memset( &TMP$3712$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$3712$1, (void*)".ascii \x22", 9ll, (void*)S$1, 0ll );
	__builtin_memset( &TMP$3713$1, 0, 24ll );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$3713$1, (void*)vr$15, -1ll, (void*)"\x5C" "0\x22", 4ll );
	fb_StrAssign( (void*)&TMP$3714$1, -1ll, (void*)vr$18, -1ll, 0 );
	HWRITEASM64( &TMP$3714$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$3714$1 );
	if( LITLENGTH$1 >= VARLENGTH$1 ) goto label$2888;
	{
		FBSTRING TMP$3715$2;
		FBSTRING TMP$3716$2;
		__builtin_memset( &TMP$3716$2, 0, 24ll );
		FBSTRING* vr$24 = fb_LongintToStr( VARLENGTH$1 - LITLENGTH$1 );
		__builtin_memset( &TMP$3715$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$3715$2, (void*)".zero ", 7ll, (void*)vr$24, -1ll );
		fb_StrAssign( (void*)&TMP$3716$2, -1ll, (void*)vr$27, -1ll, 0 );
		HWRITEASM64( &TMP$3716$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3716$2 );
	}
	label$2888:;
	label$2887:;
	label$2882:;
}

static void _EMITVARINIWSTR( int64 TOTLGT$1, uint16* LITSTR$1, int64 LITLGT$1 )
{
	FBSTRING TMP$3725$1;
	FBSTRING TMP$3726$1;
	FBSTRING TMP$3727$1;
	label$2889:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 24ll );
	int64 WCLEN$1;
	WCLEN$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
	if( TOTLGT$1 != 0ll ) goto label$2892;
	{
		if( WCLEN$1 != 2ll ) goto label$2894;
		{
			FBSTRING TMP$3719$3;
			__builtin_memset( &TMP$3719$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3719$3, -1ll, (void*)".word 0", 8ll, 0 );
			HWRITEASM64( &TMP$3719$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3719$3 );
		}
		goto label$2893;
		label$2894:;
		{
			FBSTRING TMP$3721$3;
			__builtin_memset( &TMP$3721$3, 0, 24ll );
			fb_StrAssign( (void*)&TMP$3721$3, -1ll, (void*)".long 0", 8ll, 0 );
			HWRITEASM64( &TMP$3721$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$3721$3 );
		}
		label$2893:;
		fb_StrDelete( (FBSTRING*)&OSTR$1 );
		goto label$2890;
	}
	label$2892:;
	label$2891:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$2896;
	{
		uint16* TMP$3722$2;
		ERRREPORTWARN( 9ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		uint16* vr$11 = fb_WstrLeft( (uint16*)LITSTR$1, TOTLGT$1 );
		TMP$3722$2 = vr$11;
		uint8* vr$12 = HESCAPEW( TMP$3722$2 );
		S$1 = vr$12;
		fb_WstrDelete( (uint16*)TMP$3722$2 );
	}
	goto label$2895;
	label$2896:;
	{
		uint8* vr$13 = HESCAPEW( LITSTR$1 );
		S$1 = vr$13;
	}
	label$2895:;
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"\x5C" "0\x5C" "0\x5C" "0\x5C" "0", 8ll );
	FBSTRING* vr$16 = fb_LEFT( (FBSTRING*)vr$15, *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) << (1ll & 63ll) );
	__builtin_memset( &TMP$3725$1, 0, 24ll );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$3725$1, (void*)".ascii \x22", 9ll, (void*)S$1, 0ll );
	__builtin_memset( &TMP$3726$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$3726$1, (void*)vr$19, -1ll, (void*)vr$16, -1ll );
	__builtin_memset( &TMP$3727$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$3727$1, (void*)vr$22, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$25, -1ll, 0 );
	HWRITEASM64( &OSTR$1, 0ll );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$2898;
	{
		FBSTRING TMP$3728$2;
		FBSTRING TMP$3729$2;
		__builtin_memset( &TMP$3729$2, 0, 24ll );
		FBSTRING* vr$31 = fb_LongintToStr( (TOTLGT$1 - LITLGT$1) * WCLEN$1 );
		__builtin_memset( &TMP$3728$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$3728$2, (void*)".zero ", 7ll, (void*)vr$31, -1ll );
		fb_StrAssign( (void*)&TMP$3729$2, -1ll, (void*)vr$34, -1ll, 0 );
		HWRITEASM64( &TMP$3729$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$3729$2 );
	}
	label$2898:;
	label$2897:;
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$2890:;
}

static void _EMITMACRO( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$2899:;
	struct $6IRVREG* TEMPO1$1;
	__builtin_memset( &TEMPO1$1, 0, 8ll );
	struct $6IRVREG* TEMPO2$1;
	__builtin_memset( &TEMPO2$1, 0, 8ll );
	int32 SAVEREG$1;
	__builtin_memset( &SAVEREG$1, 0, 4ll );
	int32 STARTARG$1;
	__builtin_memset( &STARTARG$1, 0, 4ll );
	int32 VREG$1;
	__builtin_memset( &VREG$1, 0, 4ll );
	FBSTRING REGVALIST$1;
	__builtin_memset( &REGVALIST$1, 0, 24ll );
	FBSTRING LNAME1$1;
	__builtin_memset( &LNAME1$1, 0, 24ll );
	FBSTRING LNAME2$1;
	__builtin_memset( &LNAME2$1, 0, 24ll );
	if( *(int64*)((uint8*)&CTX$ + 408ll) != 0ll ) goto label$2902;
	{
		*($11FB_DATATYPE*)((uint8*)V1$1 + 8ll) = 8ll;
	}
	label$2902:;
	label$2901:;
	{
		if( OP$1 != 109ll ) goto label$2904;
		label$2905:;
		{
			struct $6IRVREG* vr$9 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
			TEMPO1$1 = vr$9;
			REG_FINDFREE( (int32)*(int64*)((uint8*)TEMPO1$1 + 24ll), -1ll );
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2907;
			{
				FBSTRING TMP$3731$4;
				FBSTRING TMP$3732$4;
				FBSTRING TMP$3733$4;
				FBSTRING TMP$3734$4;
				FBSTRING TMP$3736$4;
				FBSTRING TMP$3737$4;
				FBSTRING TMP$3738$4;
				FBSTRING TMP$3739$4;
				int64 TMP$3740$4;
				int64 TMP$3741$4;
				FBSTRING TMP$3743$4;
				FBSTRING TMP$3744$4;
				FBSTRING TMP$3745$4;
				FBSTRING TMP$3747$4;
				FBSTRING TMP$3748$4;
				FBSTRING TMP$3749$4;
				FBSTRING TMP$3751$4;
				FBSTRING TMP$3753$4;
				FBSTRING TMP$3754$4;
				FBSTRING TMP$3755$4;
				_EMITADDR( 22ll, V1$1, TEMPO1$1 );
				int32 vr$14 = REG_FINDREAL( (int32)*(int64*)((uint8*)TEMPO1$1 + 24ll) );
				fb_StrAssign( (void*)&REGVALIST$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$14 << (3ll & 63ll))), 0ll, 0 );
				__builtin_memset( &TMP$3734$4, 0, 24ll );
				FBSTRING* vr$20 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 168ll) << (3ll & 63ll) );
				__builtin_memset( &TMP$3731$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$3731$4, (void*)"mov DWORD PTR [", 16ll, (void*)&REGVALIST$1, -1ll );
				__builtin_memset( &TMP$3732$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$3732$4, (void*)vr$24, -1ll, (void*)"], ", 4ll );
				__builtin_memset( &TMP$3733$4, 0, 24ll );
				FBSTRING* vr$30 = fb_StrConcat( &TMP$3733$4, (void*)vr$27, -1ll, (void*)vr$20, -1ll );
				fb_StrAssign( (void*)&TMP$3734$4, -1ll, (void*)vr$30, -1ll, 0 );
				HWRITEASM64( &TMP$3734$4, 1ll );
				fb_StrDelete( (FBSTRING*)&TMP$3734$4 );
				__builtin_memset( &TMP$3739$4, 0, 24ll );
				FBSTRING* vr$37 = fb_LongintToStr( (*(int64*)((uint8*)&CTX$ + 176ll) << (3ll & 63ll)) + 48ll );
				__builtin_memset( &TMP$3736$4, 0, 24ll );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$3736$4, (void*)"mov DWORD PTR 4[", 17ll, (void*)&REGVALIST$1, -1ll );
				__builtin_memset( &TMP$3737$4, 0, 24ll );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$3737$4, (void*)vr$41, -1ll, (void*)"], ", 4ll );
				__builtin_memset( &TMP$3738$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$3738$4, (void*)vr$44, -1ll, (void*)vr$37, -1ll );
				fb_StrAssign( (void*)&TMP$3739$4, -1ll, (void*)vr$47, -1ll, 0 );
				HWRITEASM64( &TMP$3739$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3739$4 );
				if( *(int64*)((uint8*)&CTX$ + 168ll) > 6ll ) goto label$2908;
				TMP$3740$4 = 0ll;
				goto label$3065;
				label$2908:;
				TMP$3740$4 = *(int64*)((uint8*)&CTX$ + 168ll) + -6ll;
				label$3065:;
				if( *(int64*)((uint8*)&CTX$ + 176ll) > 8ll ) goto label$2909;
				TMP$3741$4 = 0ll;
				goto label$3066;
				label$2909:;
				TMP$3741$4 = *(int64*)((uint8*)&CTX$ + 176ll) + -8ll;
				label$3066:;
				STARTARG$1 = (int32)(((TMP$3740$4 + TMP$3741$4) << (3ll & 63ll)) + 16ll);
				__builtin_memset( &TMP$3745$4, 0, 24ll );
				FBSTRING* vr$58 = fb_IntToStr( STARTARG$1 );
				__builtin_memset( &TMP$3743$4, 0, 24ll );
				FBSTRING* vr$61 = fb_StrConcat( &TMP$3743$4, (void*)"lea rax,", 9ll, (void*)vr$58, -1ll );
				__builtin_memset( &TMP$3744$4, 0, 24ll );
				FBSTRING* vr$64 = fb_StrConcat( &TMP$3744$4, (void*)vr$61, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&TMP$3745$4, -1ll, (void*)vr$64, -1ll, 0 );
				HWRITEASM64( &TMP$3745$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3745$4 );
				__builtin_memset( &TMP$3749$4, 0, 24ll );
				__builtin_memset( &TMP$3747$4, 0, 24ll );
				FBSTRING* vr$72 = fb_StrConcat( &TMP$3747$4, (void*)"mov QWORD PTR 8[", 17ll, (void*)&REGVALIST$1, -1ll );
				__builtin_memset( &TMP$3748$4, 0, 24ll );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$3748$4, (void*)vr$72, -1ll, (void*)"], rax", 7ll );
				fb_StrAssign( (void*)&TMP$3749$4, -1ll, (void*)vr$75, -1ll, 0 );
				HWRITEASM64( &TMP$3749$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3749$4 );
				__builtin_memset( &TMP$3751$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$3751$4, -1ll, (void*)"lea rax, -152[rbp]", 19ll, 0 );
				HWRITEASM64( &TMP$3751$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3751$4 );
				__builtin_memset( &TMP$3755$4, 0, 24ll );
				__builtin_memset( &TMP$3753$4, 0, 24ll );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$3753$4, (void*)"mov QWORD PTR 16[", 18ll, (void*)&REGVALIST$1, -1ll );
				__builtin_memset( &TMP$3754$4, 0, 24ll );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$3754$4, (void*)vr$87, -1ll, (void*)"], rax", 7ll );
				fb_StrAssign( (void*)&TMP$3755$4, -1ll, (void*)vr$90, -1ll, 0 );
				HWRITEASM64( &TMP$3755$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3755$4 );
			}
			goto label$2906;
			label$2907:;
			{
				FBSTRING TMP$3756$4;
				FBSTRING TMP$3757$4;
				FBSTRING TMP$3758$4;
				FBSTRING TMP$3759$4;
				FBSTRING TMP$3760$4;
				__builtin_memset( &TMP$3760$4, 0, 24ll );
				FBSTRING* vr$97 = fb_LongintToStr( (*(int64*)((uint8*)&CTX$ + 168ll) << (3ll & 63ll)) + 16ll );
				int32 vr$100 = REG_FINDREAL( (int32)*(int64*)((uint8*)TEMPO1$1 + 24ll) );
				__builtin_memset( &TMP$3756$4, 0, 24ll );
				FBSTRING* vr$105 = fb_StrConcat( &TMP$3756$4, (void*)"lea ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$100 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$3757$4, 0, 24ll );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$3757$4, (void*)vr$105, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$3758$4, 0, 24ll );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$3758$4, (void*)vr$108, -1ll, (void*)vr$97, -1ll );
				__builtin_memset( &TMP$3759$4, 0, 24ll );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$3759$4, (void*)vr$111, -1ll, (void*)"[rbp]", 6ll );
				fb_StrAssign( (void*)&TMP$3760$4, -1ll, (void*)vr$114, -1ll, 0 );
				HWRITEASM64( &TMP$3760$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3760$4 );
				_EMITSTORE( V1$1, TEMPO1$1 );
			}
			label$2906:;
			if( *(int64*)V2$1 != 3ll ) goto label$2911;
			{
				VREG$1 = (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 80ll) + 24ll);
				{
					int64 IREG$5;
					IREG$5 = 1ll;
					label$2915:;
					{
						if( (int64)*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2ll & 63ll))) != (int64)VREG$1 ) goto label$2917;
						{
							*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2ll & 63ll))) = -2;
							goto label$2914;
						}
						label$2917:;
						label$2916:;
					}
					label$2913:;
					IREG$5 = IREG$5 + 1ll;
					label$2912:;
					if( IREG$5 <= 15ll ) goto label$2915;
					label$2914:;
				}
			}
			label$2911:;
			label$2910:;
		}
		goto label$2903;
		label$2904:;
		if( OP$1 != 112ll ) goto label$2918;
		label$2919:;
		{
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2921;
			{
				struct $6IRVREG* vr$127 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
				TEMPO1$1 = vr$127;
				REG_FINDFREE( (int32)*(int64*)((uint8*)VR$1 + 24ll), -1ll );
				_EMITADDR( 22ll, V1$1, TEMPO1$1 );
				int32 vr$132 = REG_FINDREAL( (int32)*(int64*)((uint8*)TEMPO1$1 + 24ll) );
				fb_StrAssign( (void*)&REGVALIST$1, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$132 << (3ll & 63ll))), 0ll, 0 );
				uint8* vr$136 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME1$1, -1ll, (void*)vr$136, 0ll, 0 );
				uint8* vr$138 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)&LNAME2$1, -1ll, (void*)vr$138, 0ll, 0 );
				if( ((int64)-(*(int64*)((uint8*)VR$1 + 8ll) == 16ll) | (int64)-(*(int64*)((uint8*)VR$1 + 8ll) == 15ll)) == 0ll ) goto label$2923;
				{
					FBSTRING TMP$3763$5;
					FBSTRING TMP$3764$5;
					FBSTRING TMP$3765$5;
					FBSTRING TMP$3767$5;
					FBSTRING TMP$3768$5;
					FBSTRING TMP$3770$5;
					FBSTRING TMP$3771$5;
					FBSTRING TMP$3772$5;
					FBSTRING TMP$3775$5;
					FBSTRING TMP$3776$5;
					FBSTRING TMP$3777$5;
					FBSTRING TMP$3779$5;
					FBSTRING TMP$3780$5;
					FBSTRING TMP$3781$5;
					FBSTRING TMP$3782$5;
					FBSTRING TMP$3783$5;
					FBSTRING TMP$3784$5;
					FBSTRING TMP$3785$5;
					FBSTRING TMP$3787$5;
					FBSTRING TMP$3788$5;
					FBSTRING TMP$3789$5;
					FBSTRING TMP$3791$5;
					FBSTRING TMP$3792$5;
					FBSTRING TMP$3793$5;
					FBSTRING TMP$3794$5;
					FBSTRING TMP$3795$5;
					FBSTRING TMP$3797$5;
					FBSTRING TMP$3798$5;
					FBSTRING TMP$3799$5;
					__builtin_memset( &TMP$3765$5, 0, 24ll );
					__builtin_memset( &TMP$3763$5, 0, 24ll );
					FBSTRING* vr$149 = fb_StrConcat( &TMP$3763$5, (void*)"cmp DWORD PTR 4[", 17ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3764$5, 0, 24ll );
					FBSTRING* vr$152 = fb_StrConcat( &TMP$3764$5, (void*)vr$149, -1ll, (void*)"], 104", 7ll );
					fb_StrAssign( (void*)&TMP$3765$5, -1ll, (void*)vr$152, -1ll, 0 );
					HWRITEASM64( &TMP$3765$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3765$5 );
					__builtin_memset( &TMP$3768$5, 0, 24ll );
					__builtin_memset( &TMP$3767$5, 0, 24ll );
					FBSTRING* vr$160 = fb_StrConcat( &TMP$3767$5, (void*)"jg ", 4ll, (void*)&LNAME1$1, -1ll );
					fb_StrAssign( (void*)&TMP$3768$5, -1ll, (void*)vr$160, -1ll, 0 );
					HWRITEASM64( &TMP$3768$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3768$5 );
					__builtin_memset( &TMP$3772$5, 0, 24ll );
					__builtin_memset( &TMP$3770$5, 0, 24ll );
					FBSTRING* vr$168 = fb_StrConcat( &TMP$3770$5, (void*)"mov eax, DWORD PTR 4[", 22ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3771$5, 0, 24ll );
					FBSTRING* vr$171 = fb_StrConcat( &TMP$3771$5, (void*)vr$168, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3772$5, -1ll, (void*)vr$171, -1ll, 0 );
					HWRITEASM64( &TMP$3772$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3772$5 );
					__builtin_memset( &TMP$3777$5, 0, 24ll );
					__builtin_memset( &TMP$3775$5, 0, 24ll );
					FBSTRING* vr$179 = fb_StrConcat( &TMP$3775$5, (void*)"add DWORD PTR 4[", 17ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3776$5, 0, 24ll );
					FBSTRING* vr$182 = fb_StrConcat( &TMP$3776$5, (void*)vr$179, -1ll, (void*)"], 8", 5ll );
					fb_StrAssign( (void*)&TMP$3777$5, -1ll, (void*)vr$182, -1ll, 0 );
					HWRITEASM64( &TMP$3777$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3777$5 );
					__builtin_memset( &TMP$3781$5, 0, 24ll );
					__builtin_memset( &TMP$3779$5, 0, 24ll );
					FBSTRING* vr$190 = fb_StrConcat( &TMP$3779$5, (void*)"add rax, QWORD PTR 16[", 23ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3780$5, 0, 24ll );
					FBSTRING* vr$193 = fb_StrConcat( &TMP$3780$5, (void*)vr$190, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3781$5, -1ll, (void*)vr$193, -1ll, 0 );
					HWRITEASM64( &TMP$3781$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3781$5 );
					__builtin_memset( &TMP$3783$5, 0, 24ll );
					__builtin_memset( &TMP$3782$5, 0, 24ll );
					FBSTRING* vr$201 = fb_StrConcat( &TMP$3782$5, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
					fb_StrAssign( (void*)&TMP$3783$5, -1ll, (void*)vr$201, -1ll, 0 );
					HWRITEASM64( &TMP$3783$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3783$5 );
					__builtin_memset( &TMP$3785$5, 0, 24ll );
					__builtin_memset( &TMP$3784$5, 0, 24ll );
					FBSTRING* vr$209 = fb_StrConcat( &TMP$3784$5, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
					fb_StrAssign( (void*)&TMP$3785$5, -1ll, (void*)vr$209, -1ll, 0 );
					HWRITEASM64( &TMP$3785$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3785$5 );
					__builtin_memset( &TMP$3789$5, 0, 24ll );
					__builtin_memset( &TMP$3787$5, 0, 24ll );
					FBSTRING* vr$217 = fb_StrConcat( &TMP$3787$5, (void*)"mov rax, QWORD PTR 8[", 22ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3788$5, 0, 24ll );
					FBSTRING* vr$220 = fb_StrConcat( &TMP$3788$5, (void*)vr$217, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3789$5, -1ll, (void*)vr$220, -1ll, 0 );
					HWRITEASM64( &TMP$3789$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3789$5 );
					__builtin_memset( &TMP$3793$5, 0, 24ll );
					__builtin_memset( &TMP$3791$5, 0, 24ll );
					FBSTRING* vr$228 = fb_StrConcat( &TMP$3791$5, (void*)"add QWORD PTR 8[", 17ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3792$5, 0, 24ll );
					FBSTRING* vr$231 = fb_StrConcat( &TMP$3792$5, (void*)vr$228, -1ll, (void*)"], 8", 5ll );
					fb_StrAssign( (void*)&TMP$3793$5, -1ll, (void*)vr$231, -1ll, 0 );
					HWRITEASM64( &TMP$3793$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3793$5 );
					__builtin_memset( &TMP$3795$5, 0, 24ll );
					__builtin_memset( &TMP$3794$5, 0, 24ll );
					FBSTRING* vr$239 = fb_StrConcat( &TMP$3794$5, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
					fb_StrAssign( (void*)&TMP$3795$5, -1ll, (void*)vr$239, -1ll, 0 );
					HWRITEASM64( &TMP$3795$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3795$5 );
					__builtin_memset( &TMP$3799$5, 0, 24ll );
					int32 vr$246 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
					__builtin_memset( &TMP$3797$5, 0, 24ll );
					FBSTRING* vr$251 = fb_StrConcat( &TMP$3797$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$246 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$3798$5, 0, 24ll );
					FBSTRING* vr$254 = fb_StrConcat( &TMP$3798$5, (void*)vr$251, -1ll, (void*)", [rax]", 8ll );
					fb_StrAssign( (void*)&TMP$3799$5, -1ll, (void*)vr$254, -1ll, 0 );
					HWRITEASM64( &TMP$3799$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3799$5 );
				}
				goto label$2922;
				label$2923:;
				{
					FBSTRING TMP$3802$5;
					FBSTRING TMP$3803$5;
					FBSTRING TMP$3804$5;
					FBSTRING TMP$3805$5;
					FBSTRING TMP$3806$5;
					FBSTRING TMP$3808$5;
					FBSTRING TMP$3809$5;
					FBSTRING TMP$3810$5;
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
					FBSTRING TMP$3832$5;
					__builtin_memset( &TMP$3804$5, 0, 24ll );
					__builtin_memset( &TMP$3802$5, 0, 24ll );
					FBSTRING* vr$262 = fb_StrConcat( &TMP$3802$5, (void*)"cmp DWORD PTR [", 16ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3803$5, 0, 24ll );
					FBSTRING* vr$265 = fb_StrConcat( &TMP$3803$5, (void*)vr$262, -1ll, (void*)"], 40", 6ll );
					fb_StrAssign( (void*)&TMP$3804$5, -1ll, (void*)vr$265, -1ll, 0 );
					HWRITEASM64( &TMP$3804$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3804$5 );
					__builtin_memset( &TMP$3806$5, 0, 24ll );
					__builtin_memset( &TMP$3805$5, 0, 24ll );
					FBSTRING* vr$273 = fb_StrConcat( &TMP$3805$5, (void*)"jg ", 4ll, (void*)&LNAME1$1, -1ll );
					fb_StrAssign( (void*)&TMP$3806$5, -1ll, (void*)vr$273, -1ll, 0 );
					HWRITEASM64( &TMP$3806$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3806$5 );
					__builtin_memset( &TMP$3810$5, 0, 24ll );
					__builtin_memset( &TMP$3808$5, 0, 24ll );
					FBSTRING* vr$281 = fb_StrConcat( &TMP$3808$5, (void*)"mov eax, DWORD PTR [", 21ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3809$5, 0, 24ll );
					FBSTRING* vr$284 = fb_StrConcat( &TMP$3809$5, (void*)vr$281, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3810$5, -1ll, (void*)vr$284, -1ll, 0 );
					HWRITEASM64( &TMP$3810$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3810$5 );
					__builtin_memset( &TMP$3814$5, 0, 24ll );
					__builtin_memset( &TMP$3812$5, 0, 24ll );
					FBSTRING* vr$292 = fb_StrConcat( &TMP$3812$5, (void*)"add DWORD PTR [", 16ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3813$5, 0, 24ll );
					FBSTRING* vr$295 = fb_StrConcat( &TMP$3813$5, (void*)vr$292, -1ll, (void*)"], 8", 5ll );
					fb_StrAssign( (void*)&TMP$3814$5, -1ll, (void*)vr$295, -1ll, 0 );
					HWRITEASM64( &TMP$3814$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3814$5 );
					__builtin_memset( &TMP$3817$5, 0, 24ll );
					__builtin_memset( &TMP$3815$5, 0, 24ll );
					FBSTRING* vr$303 = fb_StrConcat( &TMP$3815$5, (void*)"add rax, QWORD PTR 16[", 23ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3816$5, 0, 24ll );
					FBSTRING* vr$306 = fb_StrConcat( &TMP$3816$5, (void*)vr$303, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3817$5, -1ll, (void*)vr$306, -1ll, 0 );
					HWRITEASM64( &TMP$3817$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3817$5 );
					__builtin_memset( &TMP$3819$5, 0, 24ll );
					__builtin_memset( &TMP$3818$5, 0, 24ll );
					FBSTRING* vr$314 = fb_StrConcat( &TMP$3818$5, (void*)"jmp ", 5ll, (void*)&LNAME2$1, -1ll );
					fb_StrAssign( (void*)&TMP$3819$5, -1ll, (void*)vr$314, -1ll, 0 );
					HWRITEASM64( &TMP$3819$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3819$5 );
					__builtin_memset( &TMP$3821$5, 0, 24ll );
					__builtin_memset( &TMP$3820$5, 0, 24ll );
					FBSTRING* vr$322 = fb_StrConcat( &TMP$3820$5, (void*)&LNAME1$1, -1ll, (void*)":", 2ll );
					fb_StrAssign( (void*)&TMP$3821$5, -1ll, (void*)vr$322, -1ll, 0 );
					HWRITEASM64( &TMP$3821$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3821$5 );
					__builtin_memset( &TMP$3824$5, 0, 24ll );
					__builtin_memset( &TMP$3822$5, 0, 24ll );
					FBSTRING* vr$330 = fb_StrConcat( &TMP$3822$5, (void*)"mov rax, QWORD PTR 8[", 22ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3823$5, 0, 24ll );
					FBSTRING* vr$333 = fb_StrConcat( &TMP$3823$5, (void*)vr$330, -1ll, (void*)"]", 2ll );
					fb_StrAssign( (void*)&TMP$3824$5, -1ll, (void*)vr$333, -1ll, 0 );
					HWRITEASM64( &TMP$3824$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3824$5 );
					__builtin_memset( &TMP$3827$5, 0, 24ll );
					__builtin_memset( &TMP$3825$5, 0, 24ll );
					FBSTRING* vr$341 = fb_StrConcat( &TMP$3825$5, (void*)"add QWORD PTR 8[", 17ll, (void*)&REGVALIST$1, -1ll );
					__builtin_memset( &TMP$3826$5, 0, 24ll );
					FBSTRING* vr$344 = fb_StrConcat( &TMP$3826$5, (void*)vr$341, -1ll, (void*)"], 8", 5ll );
					fb_StrAssign( (void*)&TMP$3827$5, -1ll, (void*)vr$344, -1ll, 0 );
					HWRITEASM64( &TMP$3827$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3827$5 );
					__builtin_memset( &TMP$3829$5, 0, 24ll );
					__builtin_memset( &TMP$3828$5, 0, 24ll );
					FBSTRING* vr$352 = fb_StrConcat( &TMP$3828$5, (void*)&LNAME2$1, -1ll, (void*)":", 2ll );
					fb_StrAssign( (void*)&TMP$3829$5, -1ll, (void*)vr$352, -1ll, 0 );
					HWRITEASM64( &TMP$3829$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3829$5 );
					__builtin_memset( &TMP$3832$5, 0, 24ll );
					int32 vr$359 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
					__builtin_memset( &TMP$3830$5, 0, 24ll );
					FBSTRING* vr$364 = fb_StrConcat( &TMP$3830$5, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$359 << (3ll & 63ll))), 0ll );
					__builtin_memset( &TMP$3831$5, 0, 24ll );
					FBSTRING* vr$367 = fb_StrConcat( &TMP$3831$5, (void*)vr$364, -1ll, (void*)", [rax]", 8ll );
					fb_StrAssign( (void*)&TMP$3832$5, -1ll, (void*)vr$367, -1ll, 0 );
					HWRITEASM64( &TMP$3832$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$3832$5 );
				}
				label$2922:;
			}
			goto label$2920;
			label$2921:;
			{
				FBSTRING TMP$3834$4;
				FBSTRING TMP$3835$4;
				FBSTRING TMP$3836$4;
				FBSTRING TMP$3837$4;
				FBSTRING TMP$3838$4;
				if( *(int64*)V1$1 != 3ll ) goto label$2925;
				{
					int32 vr$375 = REG_FINDREAL( (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll) );
					SAVEREG$1 = vr$375;
				}
				goto label$2924;
				label$2925:;
				if( *(int64*)V1$1 != 4ll ) goto label$2926;
				{
					int32 vr$379 = REG_FINDREAL( (int32)*(int64*)((uint8*)V1$1 + 24ll) );
					SAVEREG$1 = vr$379;
				}
				label$2926:;
				label$2924:;
				if( ((int64)-(*(int64*)V1$1 != 4ll) | (int64)-((int64)-((*(int64*)((uint8*)V1$1 + 8ll) & 480ll) != 0ll) == -1ll)) == 0ll ) goto label$2928;
				{
					_EMITADDR( 76ll, V1$1, VR$1 );
					if( *(int64*)V1$1 != 3ll ) goto label$2930;
					{
						*(int32*)((uint8*)REGHANDLE$ + ((int64)SAVEREG$1 << (2ll & 63ll))) = (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll);
					}
					goto label$2929;
					label$2930:;
					if( *(int64*)V1$1 != 4ll ) goto label$2931;
					{
						*(int32*)((uint8*)REGHANDLE$ + ((int64)SAVEREG$1 << (2ll & 63ll))) = (int32)*(int64*)((uint8*)V1$1 + 24ll);
					}
					label$2931:;
					label$2929:;
					struct $6IRVREG* vr$398 = IRHLALLOCVRIMM( 8ll, (struct $8FBSYMBOL*)0ull, 8ll );
					TEMPO1$1 = vr$398;
					_EMITBOP( 28ll, V1$1, TEMPO1$1, (struct $6IRVREG*)0ull, (struct $8FBSYMBOL*)0ull );
				}
				goto label$2927;
				label$2928:;
				{
					*(int64*)((uint8*)VR$1 + 24ll) = *(int64*)((uint8*)V1$1 + 24ll);
				}
				label$2927:;
				__builtin_memset( &TMP$3838$4, 0, 24ll );
				int32 vr$404 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
				int32 vr$409 = REG_FINDREAL( (int32)*(int64*)((uint8*)VR$1 + 24ll) );
				__builtin_memset( &TMP$3834$4, 0, 24ll );
				FBSTRING* vr$414 = fb_StrConcat( &TMP$3834$4, (void*)"mov ", 5ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$409 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$3835$4, 0, 24ll );
				FBSTRING* vr$417 = fb_StrConcat( &TMP$3835$4, (void*)vr$414, -1ll, (void*)", [", 4ll );
				__builtin_memset( &TMP$3836$4, 0, 24ll );
				FBSTRING* vr$420 = fb_StrConcat( &TMP$3836$4, (void*)vr$417, -1ll, *(void**)((uint8*)REGSTRQ$ + ((int64)vr$404 << (3ll & 63ll))), 0ll );
				__builtin_memset( &TMP$3837$4, 0, 24ll );
				FBSTRING* vr$423 = fb_StrConcat( &TMP$3837$4, (void*)vr$420, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$3838$4, -1ll, (void*)vr$423, -1ll, 0 );
				HWRITEASM64( &TMP$3838$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$3838$4 );
			}
			label$2920:;
		}
		goto label$2903;
		label$2918:;
		if( OP$1 != 110ll ) goto label$2932;
		label$2933:;
		{
			if( *(int64*)V1$1 != 3ll ) goto label$2935;
			{
				VREG$1 = (int32)*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 80ll) + 24ll);
				{
					int64 IREG$5;
					IREG$5 = 1ll;
					label$2939:;
					{
						if( (int64)*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2ll & 63ll))) != (int64)VREG$1 ) goto label$2941;
						{
							*(int32*)((uint8*)REGHANDLE$ + (IREG$5 << (2ll & 63ll))) = -2;
							goto label$2938;
						}
						label$2941:;
						label$2940:;
					}
					label$2937:;
					IREG$5 = IREG$5 + 1ll;
					label$2936:;
					if( IREG$5 <= 15ll ) goto label$2939;
					label$2938:;
				}
			}
			label$2935:;
			label$2934:;
		}
		goto label$2903;
		label$2932:;
		if( OP$1 != 111ll ) goto label$2942;
		label$2943:;
		{
			if( *(int64*)((uint8*)&CTX$ + 408ll) != 2ll ) goto label$2945;
			{
				struct $6IRVREG* vr$436 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
				TEMPO1$1 = vr$436;
				_EMITADDR( 22ll, V1$1, TEMPO1$1 );
				struct $6IRVREG* vr$437 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
				TEMPO2$1 = vr$437;
				_EMITADDR( 22ll, V2$1, TEMPO2$1 );
				_EMITMEM( 105ll, TEMPO1$1, TEMPO2$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) + 80ll) );
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

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int64 IS_ARRAY$1 )
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
