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
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
typedef int32 $10FB_SYMBOPT;
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 120 );
typedef int32 $16FB_SYMBLOOKUPOPT;
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 12 );
typedef int32 $9FB_ERRMSG;
typedef int32 $22FB_OVLPROC_MATCH_SCORE;
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $16FB_CALL_ARG_LIST {
	int32 ARGS;
	struct $11FB_CALL_ARG* HEAD;
	struct $11FB_CALL_ARG* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CALL_ARG_LIST ) == 12 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
void free( void* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_HEX_i( uint32 );
static void fb_ctor__symbzproc( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int32 );
typedef int32 $11AST_CONVOPT;
int32 ASTCHECKCONVNONPTRTOPTR( int32, int32, struct $7ASTNODE*, $11AST_CONVOPT );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL*, uint8*, int32, int32, int32 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $16FB_SYMBLOOKUPOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int32, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $16FB_SYMBLOOKUPOPT );
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, int32 );
struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, $9FB_ERRMSG* );
$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32* );
void SYMBPROCSETVTABLEINDEX( struct $8FBSYMBOL*, int32 );
int32 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
int32 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int32, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDVAR( uint8*, uint8*, int32, struct $8FBSYMBOL*, int64, int32, struct $7FBARRAYI10FBARRAYDIME*, $13FB_SYMBATTRIB, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32, int32, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB*, struct $8FBSYMBOL**, struct $10FBSYMBOLTB**, struct $8FBHASHTB** );
struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32 );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int32, struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBPROCFREEEXT( struct $8FBSYMBOL* );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBCALCARGLEN( int32, struct $8FBSYMBOL*, int32 );
int64 SYMBCALCPARAMLEN( int32, struct $8FBSYMBOL*, $12FB_PARAMMODE );
struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $12FB_SYMBCLASS, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int32 TYPEISTRIVIAL( int32, struct $8FBSYMBOL* );
int32 TYPEHASFWDREFINSIGNATURE( int32, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int32, struct $8FBSYMBOL*, int32, int32, struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
void SYMBMANGLERESETABBREV( void );
typedef int32 $12FB_MANGLEOPT;
void SYMBMANGLETYPE( FBSTRING*, int32, struct $8FBSYMBOL*, $12FB_MANGLEOPT );
FBSTRING* HDUMPDYNAMICARRAYDIMENSIONS( int32 );
FBSTRING* SYMBTYPETOSTR( int32, struct $8FBSYMBOL*, int64, int32 );
int32 SYMBGETDEFTYPE( uint8* );
void SYMBSETCOMPCTORHEAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBCHECKCOMPCTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBSETCOMPDTOR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
void SYMBCHECKCOMPLETOP( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
void SYMBSETCOMPOPOVLHEAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int32 SYMBCOMPADDVIRTUAL( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* );
int32 SYMBGETDEFAULTPARAMMODE( int32, struct $8FBSYMBOL* );
int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
static int64 HALIGNTOPOW2( int64, int32 );
static int32 HCANOVERLOAD( struct $8FBSYMBOL* );
static int32 HCANOVERLOADBYDESC( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HADDOVLPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32 );
static struct $8FBSYMBOL* HADDOPOVLPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, $6AST_OP, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
static struct $8FBSYMBOL* HSETUPPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMBOLTB*, struct $8FBHASHTB*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
static $22FB_OVLPROC_MATCH_SCORE HCALCTYPESDIFF( int32, struct $8FBSYMBOL*, int32, int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE );
static $22FB_OVLPROC_MATCH_SCORE HCHECKOVLPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
static $22FB_OVLPROC_MATCH_SCORE HCHECKCASTOVL( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
static void HDELPARAMS( struct $8FBSYMBOL* );
static struct $20FB_GLOBCTORLIST_ITEM* HADDTOGLOBCTORLIST( struct $15FB_GLOBCTORLIST*, struct $8FBSYMBOL* );
static $22FB_OVLPROC_MATCH_SCORE SYMBCALCPARAMMATCH( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HSUBORFUNCTOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HPROCMODETOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HPARAMSTOSTR( FBSTRING*, struct $8FBSYMBOL* );
static void HRESULTTOSTR( FBSTRING*, struct $8FBSYMBOL* );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
extern int32 SYMB_DTYPEMATCHTB$[16][16];
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

void SYMBPROCINIT( void )
{
	label$10:;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99048) = (struct $20FB_GLOBCTORLIST_ITEM*)0u;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99052) = (struct $20FB_GLOBCTORLIST_ITEM*)0u;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 99056), 8, 8, 6 );
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99088) = (struct $20FB_GLOBCTORLIST_ITEM*)0u;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 99092) = (struct $20FB_GLOBCTORLIST_ITEM*)0u;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 99096), 8, 8, 6 );
	label$11:;
}

void SYMBPROCEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 99096) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 99056) );
	label$13:;
}

void SYMBPROCALLOCEXT( struct $8FBSYMBOL* PROC$1 )
{
	label$14:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) != (struct $10FB_PROCEXT*)0u ) goto label$17;
	{
		void* vr$1 = XCALLOCATE( 76 );
		*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) = (struct $10FB_PROCEXT*)vr$1;
	}
	label$17:;
	label$16:;
	label$15:;
}

void SYMBPROCFREEEXT( struct $8FBSYMBOL* PROC$1 )
{
	label$18:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) == (struct $10FB_PROCEXT*)0u ) goto label$21;
	{
		free( *(void**)((uint8*)PROC$1 + 112) );
		*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) = (struct $10FB_PROCEXT*)0u;
	}
	label$21:;
	label$20:;
	label$19:;
}

int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2048) == 0 ) goto label$25;
	{
		goto label$23;
	}
	label$25:;
	label$24:;
	if( (*(int32*)((uint8*)PROC$1 + 28) & 511) != 20 ) goto label$27;
	{
		int32 TMP$93$2;
		if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) == (struct $8FBSYMBOL*)0u ) goto label$28;
		TMP$93$2 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) + 132) != 0);
		goto label$31;
		label$28:;
		TMP$93$2 = 0;
		label$31:;
		if( TMP$93$2 == 0 ) goto label$30;
		{
			goto label$23;
		}
		goto label$29;
		label$30:;
		{
			fb$result$1 = -((*(int32*)((uint8*)PROC$1 + 88) & 511) == 52);
		}
		label$29:;
	}
	label$27:;
	label$26:;
	label$23:;
	return fb$result$1;
}

int64 SYMBCALCARGLEN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 MODE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$34:;
	{
		if( MODE$1 == 2 ) goto label$38;
		label$39:;
		if( MODE$1 != 3 ) goto label$37;
		label$38:;
		{
			fb$result$1 = (int64)*(int32*)((uint8*)&ENV$ + 272);
			goto label$35;
		}
		label$37:;
		label$36:;
	}
	int32 vr$2 = TYPEISTRIVIAL( DTYPE$1, SUBTYPE$1 );
	if( vr$2 != 0 ) goto label$41;
	{
		fb$result$1 = (int64)*(int32*)((uint8*)&ENV$ + 272);
		goto label$35;
	}
	label$41:;
	label$40:;
	int64 vr$4 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
	int64 vr$5 = HALIGNTOPOW2( vr$4, *(int32*)((uint8*)&ENV$ + 272) );
	fb$result$1 = vr$5;
	label$35:;
	return fb$result$1;
}

int64 SYMBCALCPARAMLEN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $12FB_PARAMMODE MODE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$42:;
	if( MODE$1 != 4 ) goto label$45;
	{
		fb$result$1 = 0ll;
	}
	goto label$44;
	label$45:;
	{
		int64 vr$1 = SYMBCALCARGLEN( DTYPE$1, SUBTYPE$1, MODE$1 );
		fb$result$1 = vr$1;
	}
	label$44:;
	label$43:;
	return fb$result$1;
}

int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$46:;
	int64 LENGTH$1;
	LENGTH$1 = 0ll;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$48:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$49;
	{
		int32 vr$6 = TYPEISTRIVIAL( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
		if( (-(*(int32*)((uint8*)PARAM$1 + 56) == 1) & ~vr$6) == 0 ) goto label$51;
		{
			int64 vr$11 = SYMBCALCLEN( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
			LENGTH$1 = LENGTH$1 + vr$11;
		}
		goto label$50;
		label$51:;
		{
			LENGTH$1 = LENGTH$1 + *(int64*)((uint8*)PARAM$1 + 40);
		}
		label$50:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$48;
	label$49:;
	fb$result$1 = LENGTH$1;
	label$47:;
	return fb$result$1;
}

int64 SYMBPROCCALCBYTESTOPOP( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$52:;
	int64 BYTESTOPOP$1;
	BYTESTOPOP$1 = 0ll;
	int32 NOTCDECL$1;
	NOTCDECL$1 = -(*(int32*)((uint8*)PROC$1 + 84) != 3);
	if( NOTCDECL$1 == 0 ) goto label$55;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
		label$56:;
		if( PARAM$2 == (struct $8FBSYMBOL*)0u ) goto label$57;
		{
			BYTESTOPOP$1 = BYTESTOPOP$1 + *(int64*)((uint8*)PARAM$2 + 40);
			PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
		}
		goto label$56;
		label$57:;
	}
	label$55:;
	label$54:;
	int32 vr$7 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$7 == 0 ) goto label$59;
	{
		if( (NOTCDECL$1 | -((*(int32*)((uint8*)&ENV$ + 260) & 8) != 0)) == 0 ) goto label$61;
		{
			BYTESTOPOP$1 = BYTESTOPOP$1 + (int64)*(int32*)((uint8*)&ENV$ + 272);
		}
		label$61:;
		label$60:;
	}
	label$59:;
	label$58:;
	fb$result$1 = BYTESTOPOP$1;
	label$53:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL* PROC$1, uint8* ID$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 DIMENSIONS$1, int32 MODE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	int32 TMP$94$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	struct $8FBSYMBOL* PARAM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	struct $8FBSYMBOL* vr$3 = SYMBNEWSYMBOL( 1, (struct $8FBSYMBOL*)0u, (struct $10FBSYMBOLTB*)((uint8*)PROC$1 + 72), (struct $8FBHASHTB*)0u, 4, (uint8*)ID$1, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, 0 );
	PARAM$1 = vr$3;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$65;
	{
		goto label$63;
	}
	label$65:;
	label$64:;
	*(int16*)((uint8*)PROC$1 + 68) = (int16)((int32)*(int16*)((uint8*)PROC$1 + 68) + 1);
	int64 vr$9 = SYMBCALCPARAMLEN( DTYPE$1, SUBTYPE$1, MODE$1 );
	*(int64*)((uint8*)PARAM$1 + 40) = vr$9;
	*($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56) = MODE$1;
	*(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) = (struct $7ASTNODE*)0u;
	*(int32*)((uint8*)PARAM$1 + 68) = DIMENSIONS$1;
	if( MODE$1 != 3 ) goto label$67;
	{
		struct $8FBSYMBOL* vr$14 = SYMBADDARRAYDESCRIPTORTYPE( DIMENSIONS$1, DTYPE$1, SUBTYPE$1 );
		*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 72) = vr$14;
	}
	goto label$66;
	label$67:;
	{
		*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 72) = (struct $8FBSYMBOL*)0u;
	}
	label$66:;
	if( (DTYPE$1 & 480) == 0 ) goto label$68;
	TMP$94$1 = 24;
	goto label$75;
	label$68:;
	TMP$94$1 = DTYPE$1 & 31;
	label$75:;
	if( TMP$94$1 != 20 ) goto label$70;
	{
		if( MODE$1 != 1 ) goto label$72;
		{
			if( SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$74;
			{
				*(int32*)((uint8*)SUBTYPE$1 + 120) = *(int32*)((uint8*)SUBTYPE$1 + 120) | 32;
			}
			label$74:;
			label$73:;
		}
		label$72:;
		label$71:;
	}
	label$70:;
	label$69:;
	fb$result$1 = PARAM$1;
	label$63:;
	return fb$result$1;
}

void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* OPTEXPR$1 )
{
	label$76:;
	if( OPTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$79;
	{
		goto label$77;
	}
	label$79:;
	label$78:;
	*(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) = OPTEXPR$1;
	*(int16*)((uint8*)PROC$1 + 70) = (int16)((int32)*(int16*)((uint8*)PROC$1 + 70) + 1);
	label$77:;
}

int32 SYMBISPROCOVERLOADOF( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* HEAD_PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$80:;
	struct $8FBSYMBOL* F$1;
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$83;
	{
		fb$result$1 = 0;
		goto label$81;
	}
	label$83:;
	label$82:;
	if( PROC$1 != HEAD_PROC$1 ) goto label$85;
	{
		fb$result$1 = -1;
		goto label$81;
	}
	label$85:;
	label$84:;
	if( (*(int32*)((uint8*)HEAD_PROC$1 + 8) & 1) != 0 ) goto label$87;
	{
		fb$result$1 = 0;
		goto label$81;
	}
	label$87:;
	label$86:;
	F$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 108);
	label$88:;
	if( F$1 == (struct $8FBSYMBOL*)0u ) goto label$89;
	{
		if( PROC$1 != F$1 ) goto label$91;
		{
			fb$result$1 = -1;
			goto label$81;
		}
		label$91:;
		label$90:;
		F$1 = *(struct $8FBSYMBOL**)((uint8*)F$1 + 108);
	}
	goto label$88;
	label$89:;
	fb$result$1 = 0;
	goto label$81;
	label$81:;
	return fb$result$1;
}

void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* PROC$1 )
{
	label$92:;
	int32 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)PROC$1 + 28);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2048) == 0 ) goto label$95;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	}
	label$95:;
	label$94:;
	{
		int32 TMP$95$2;
		TMP$95$2 = DTYPE$1 & 511;
		if( TMP$95$2 == 17 ) goto label$98;
		label$99:;
		if( TMP$95$2 != 7 ) goto label$97;
		label$98:;
		{
			DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
		}
		goto label$96;
		label$97:;
		if( TMP$95$2 != 20 ) goto label$100;
		label$101:;
		{
			if( SUBTYPE$1 != *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$103;
			{
				*(int32*)((uint8*)SUBTYPE$1 + 120) = *(int32*)((uint8*)SUBTYPE$1 + 120) | 64;
			}
			goto label$102;
			label$103:;
			{
				DTYPE$1 = *(int32*)((uint8*)SUBTYPE$1 + 128);
				if( (DTYPE$1 & 31) == 20 ) goto label$105;
				{
					SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$105:;
				label$104:;
			}
			label$102:;
		}
		label$100:;
		label$96:;
	}
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 88) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) = SUBTYPE$1;
	label$93:;
}

struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL* PROC$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$296:;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
	SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)PARENT$1 + 56);
	HASHTB$1 = (struct $8FBHASHTB*)((uint8*)PARENT$1 + 68);
	ATTRIB$1 = ATTRIB$1 | 1;
	struct $8FBSYMBOL* vr$6 = HSETUPPROC( PROC$1, PARENT$1, SYMTB$1, HASHTB$1, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	fb$result$1 = vr$6;
	label$297:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL* PROC$1, $6AST_OP OP$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$298:;
	struct $8FBSYMBOL* SYM$1;
	SYMBPROCALLOCEXT( PROC$1 );
	*($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40) = OP$1;
	struct $8FBSYMBOL* vr$3 = SYMBADDPROC( PROC$1, (uint8*)0u, (uint8*)ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	SYM$1 = vr$3;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$301;
	{
		SYMBPROCFREEEXT( PROC$1 );
		goto label$299;
	}
	label$301:;
	label$300:;
	fb$result$1 = SYM$1;
	label$299:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL* PROC$1, uint8* ID_ALIAS$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$302:;
	struct $8FBSYMBOL* vr$1 = SYMBADDPROC( PROC$1, (uint8*)0u, (uint8*)ID_ALIAS$1, 0, (struct $8FBSYMBOL*)0u, ATTRIB$1, PATTRIB$1, MODE$1, OPTIONS$1 );
	fb$result$1 = vr$1;
	label$303:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( uint8* ID$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1, struct $8FBSYMBOL** PARENT$1, struct $10FBSYMBOLTB** SYMTB$1, struct $8FBHASHTB** HASHTB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$304:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	if( *(uint32*)((uint8*)&PARSER$ + 96) != 0u ) goto label$307;
	{
		*PARENT$1 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352);
		*SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)*PARENT$1 + 56);
		*HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*PARENT$1 + 68);
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 1;
	}
	goto label$306;
	label$307:;
	{
		*PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
		*SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544);
		*HASHTB$1 = (struct $8FBHASHTB*)((uint8*)*PARENT$1 + 68);
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 128;
	}
	label$306:;
	struct $10FBSYMCHAIN* vr$24 = SYMBLOOKUPAT( *PARENT$1, (uint8*)ID$1, -1, 0 );
	CHAIN_$1 = vr$24;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$309;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
	}
	label$309:;
	label$308:;
	label$305:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL* PROC$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 MODE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$310:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMBOLTB* SYMTB$1;
	struct $8FBHASHTB* HASHTB$1;
	FBSTRING ID$1;
	__builtin_memset( &ID$1, 0, 12 );
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 4) = *(int32*)((uint8*)PROC$1 + 4) | ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = *(int32*)((uint8*)PROC$1 + 8) | PATTRIB$1;
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = SUBTYPE$1;
	fb_StrAssign( (void*)&ID$1, -1, (void*)"{fbfp}", 7, 0 );
	SYMBMANGLETYPE( &ID$1, 22, PROC$1, 0 );
	SYMBMANGLERESETABBREV(  );
	fb_StrConcatAssign( (void*)&ID$1, -1, (void*)"$", 2, 0 );
	FBSTRING* vr$13 = fb_HEX_i( (uint32)MODE$1 );
	fb_StrConcatAssign( (void*)&ID$1, -1, (void*)vr$13, -1, 0 );
	struct $8FBSYMBOL* vr$20 = SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE( (uint8*)*(uint8**)&ID$1, &ATTRIB$1, &PATTRIB$1, &PARENT$1, &SYMTB$1, &HASHTB$1 );
	SYM$1 = vr$20;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$313;
	{
		fb$result$1 = SYM$1;
		fb_StrDelete( (FBSTRING*)&ID$1 );
		goto label$311;
	}
	label$313:;
	label$312:;
	uint8* vr$22 = SYMBUNIQUEID( (boolean)0 );
	struct $8FBSYMBOL* vr$23 = HSETUPPROC( PROC$1, PARENT$1, SYMTB$1, HASHTB$1, (uint8*)*(uint8**)&ID$1, (uint8*)vr$22, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 5 );
	SYM$1 = vr$23;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$315;
	{
		*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 16384;
	}
	label$315:;
	label$314:;
	fb$result$1 = SYM$1;
	fb_StrDelete( (FBSTRING*)&ID$1 );
	label$311:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* BASE_PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$316:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* vr$1 = SYMBPREADDPROC( (uint8*)0u );
	PROC$1 = vr$1;
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 96) = *($21FB_PROC_RETURN_METHOD*)((uint8*)BASE_PROC$1 + 96);
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)BASE_PROC$1 + 76);
	label$318:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$319;
	{
		struct $8FBSYMBOL* P$2;
		struct $8FBSYMBOL* vr$11 = SYMBADDPROCPARAM( PROC$1, (uint8*)0u, *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(int32*)((uint8*)PARAM$1 + 68), *(int32*)((uint8*)PARAM$1 + 56), *($13FB_SYMBATTRIB*)((uint8*)PARAM$1 + 4), *($13FB_PROCATTRIB*)((uint8*)PARAM$1 + 8) );
		P$2 = vr$11;
		if( (*(int32*)((uint8*)PARAM$1 + 12) & 2048) == 0 ) goto label$321;
		{
			*($12FB_SYMBSTATS*)((uint8*)P$2 + 12) = *(int32*)((uint8*)P$2 + 12) | 2048;
		}
		label$321:;
		label$320:;
		SYMBMAKEPARAMOPTIONAL( PROC$1, P$2, *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) );
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$318;
	label$319:;
	$13FB_SYMBATTRIB ATTRIBMASK$1;
	ATTRIBMASK$1 = 2048;
	$13FB_PROCATTRIB PATTRIBMASK$1;
	PATTRIBMASK$1 = 2048;
	PATTRIBMASK$1 = PATTRIBMASK$1 | 1024;
	struct $8FBSYMBOL* vr$27 = SYMBADDPROCPTR( PROC$1, *(int32*)((uint8*)BASE_PROC$1 + 28), *(struct $8FBSYMBOL**)((uint8*)BASE_PROC$1 + 32), *(int32*)((uint8*)BASE_PROC$1 + 4) & ATTRIBMASK$1, *(int32*)((uint8*)BASE_PROC$1 + 8) & PATTRIBMASK$1, *(int32*)((uint8*)BASE_PROC$1 + 84) );
	fb$result$1 = vr$27;
	label$317:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBPREADDPROC( uint8* SYMBOL$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$322:;
	struct $8FBSYMBOL* PROC$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 4) );
	PROC$1 = (struct $8FBSYMBOL*)vr$2;
	*($12FB_SYMBCLASS*)PROC$1 = 3;
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 4) = 0;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = 0;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = 0;
	*(uint8**)((uint8*)PROC$1 + 16) = SYMBOL$1;
	*(uint8**)((uint8*)PROC$1 + 20) = (uint8*)0u;
	*(uint8**)((uint8*)PROC$1 + 24) = (uint8*)0u;
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = -2147483648u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = (struct $8FBSYMBOL*)0u;
	*(uint16*)((uint8*)PROC$1 + 36) = (uint16)0u;
	*(int16*)((uint8*)PROC$1 + 38) = (int16)0;
	*(int64*)((uint8*)PROC$1 + 40) = 0ll;
	*(int64*)((uint8*)PROC$1 + 48) = 0ll;
	*(int16*)((uint8*)PROC$1 + 68) = (int16)0;
	*(int16*)((uint8*)PROC$1 + 70) = (int16)0;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 72) = PROC$1;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) = (struct $8FBSYMBOL*)0u;
	*($11FB_FUNCMODE*)((uint8*)PROC$1 + 84) = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 252);
	*($11FB_DATATYPE*)((uint8*)PROC$1 + 88) = -2147483648u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 92) = (struct $8FBSYMBOL*)0u;
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 96) = 0;
	*(tmp$33*)((uint8*)PROC$1 + 100) = (tmp$33)0u;
	*(int16*)((uint8*)PROC$1 + 104) = (int16)0;
	*(int16*)((uint8*)PROC$1 + 106) = (int16)0;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108) = (struct $8FBSYMBOL*)0u;
	*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) = (struct $10FB_PROCEXT*)0u;
	*(struct $10FBSYMBOLTB**)((uint8*)PROC$1 + 164) = (struct $10FBSYMBOLTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) + 56);
	*(struct $8FBHASHTB**)((uint8*)PROC$1 + 144) = (struct $8FBHASHTB*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) + 68);
	*(struct $8HASHITEM**)((uint8*)PROC$1 + 148) = (struct $8HASHITEM*)0u;
	*(uint32*)((uint8*)PROC$1 + 152) = 0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 156) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 160) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 172) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 176) = (struct $8FBSYMBOL*)0u;
	fb$result$1 = PROC$1;
	label$323:;
	return fb$result$1;
}

void _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( int32 PARAMMODE$1, struct $8FBSYMBOL* BYDESCREALSUBTYPE$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$324:;
	{
		if( PARAMMODE$1 != 1 ) goto label$327;
		label$328:;
		{
			int32 vr$2 = TYPEISTRIVIAL( *DTYPE$1, *SUBTYPE$1 );
			if( vr$2 != 0 ) goto label$330;
			{
				*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
			}
			label$330:;
			label$329:;
		}
		goto label$326;
		label$327:;
		if( PARAMMODE$1 != 2 ) goto label$331;
		label$332:;
		{
			*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
		}
		goto label$326;
		label$331:;
		if( PARAMMODE$1 != 3 ) goto label$333;
		label$334:;
		{
			*DTYPE$1 = 52;
			*SUBTYPE$1 = BYDESCREALSUBTYPE$1;
		}
		label$333:;
		label$326:;
	}
	label$325:;
}

void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL* PARAM$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	label$335:;
	*DTYPE$1 = *(int32*)((uint8*)PARAM$1 + 28);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
	_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_( *(int32*)((uint8*)PARAM$1 + 56), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 72), DTYPE$1, SUBTYPE$1 );
	label$336:;
}

struct $8FBSYMBOL* SYMBADDVARFORPARAM( struct $8FBSYMBOL* PARAM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$337:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 36 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$99$1;
	*(struct $10FBARRAYDIM**)&tmp$99$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$99$1 + 4) = (struct $10FBARRAYDIM*)DTB$1;
	*(int32*)((uint8*)&tmp$99$1 + 8) = 16;
	*(int32*)((uint8*)&tmp$99$1 + 12) = 16;
	*(int32*)((uint8*)&tmp$99$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$99$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$99$1 + 24) = 1;
	*(int32*)((uint8*)&tmp$99$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$99$1 + 32) = 0;
	struct $8FBSYMBOL* S$1;
	int32 ATTRIB$1;
	int32 DTYPE$1;
	int32 DIMENSIONS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	DTYPE$1 = *(int32*)((uint8*)PARAM$1 + 28);
	{
		uint32 TMP$100$2;
		TMP$100$2 = *(uint32*)((uint8*)PARAM$1 + 56);
		goto label$340;
		label$341:;
		{
			ATTRIB$1 = 32768;
			int32 vr$6 = TYPEISTRIVIAL( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
			if( vr$6 != 0 ) goto label$343;
			{
				ATTRIB$1 = 65536;
			}
			label$343:;
			label$342:;
		}
		goto label$339;
		label$344:;
		{
			ATTRIB$1 = 65536;
		}
		goto label$339;
		label$345:;
		{
			ATTRIB$1 = 16384;
		}
		goto label$339;
		label$346:;
		{
			goto label$338;
		}
		goto label$339;
		label$340:;
		static const void* tmp$101[3] = {
			&&label$341,
			&&label$344,
			&&label$345,
		};
		if( (TMP$100$2 - 1u) > 2u ) goto label$346;
		goto *tmp$101[TMP$100$2 - 1u];
		label$339:;
	}
	if( (*(int32*)((uint8*)PARAM$1 + 4) & 1048576) == 0 ) goto label$348;
	{
		ATTRIB$1 = ATTRIB$1 | 1048576;
	}
	label$348:;
	label$347:;
	struct $8FBSYMBOL* vr$14 = SYMBADDVAR( (uint8*)*(uint8**)((uint8*)PARAM$1 + 16), (uint8*)0u, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), 0ll, *(int32*)((uint8*)PARAM$1 + 68), (struct $7FBARRAYI10FBARRAYDIME*)&tmp$99$1, ATTRIB$1, 0 );
	S$1 = vr$14;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$350;
	{
		goto label$338;
	}
	label$350:;
	label$349:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 92) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 72);
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 8;
	if( (*(int32*)((uint8*)PARAM$1 + 12) & 2048) == 0 ) goto label$352;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 2048;
	}
	label$352:;
	label$351:;
	if( (*(int32*)((uint8*)PARAM$1 + 12) & 524288) == 0 ) goto label$354;
	{
		*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 524288;
	}
	label$354:;
	label$353:;
	fb$result$1 = S$1;
	label$338:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDVARFORPROCRESULTPARAM( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$355:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 36 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$102$1;
	*(struct $10FBARRAYDIM**)&tmp$102$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$102$1 + 4) = (struct $10FBARRAYDIM*)DTB$1;
	*(int32*)((uint8*)&tmp$102$1 + 8) = 16;
	*(int32*)((uint8*)&tmp$102$1 + 12) = 16;
	*(int32*)((uint8*)&tmp$102$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$102$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$102$1 + 24) = 1;
	*(int32*)((uint8*)&tmp$102$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$102$1 + 32) = 0;
	struct $8FBSYMBOL* S$1;
	int32 vr$3 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$3 != 0 ) goto label$358;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$356;
	}
	label$358:;
	label$357:;
	uint8* vr$6 = SYMBUNIQUEID( (boolean)0 );
	struct $8FBSYMBOL* vr$7 = SYMBADDVAR( (uint8*)vr$6, (uint8*)0u, 20, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32), 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$102$1, 65536, 1 );
	S$1 = vr$7;
	SYMBPROCALLOCEXT( PROC$1 );
	*(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) = S$1;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 8;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = *(int32*)((uint8*)S$1 + 12) | 16;
	fb$result$1 = S$1;
	label$356:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBADDPROCRESULTVAR( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$359:;
	struct $10FBARRAYDIM DTB$1[1];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 36 );
	struct $8FBARRAY1I10FBARRAYDIME tmp$103$1;
	*(struct $10FBARRAYDIM**)&tmp$103$1 = (struct $10FBARRAYDIM*)DTB$1;
	*(struct $10FBARRAYDIM**)((uint8*)&tmp$103$1 + 4) = (struct $10FBARRAYDIM*)DTB$1;
	*(int32*)((uint8*)&tmp$103$1 + 8) = 16;
	*(int32*)((uint8*)&tmp$103$1 + 12) = 16;
	*(int32*)((uint8*)&tmp$103$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$103$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$103$1 + 24) = 1;
	*(int32*)((uint8*)&tmp$103$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$103$1 + 32) = 0;
	struct $8FBSYMBOL* RES$1;
	int32 DTYPE$1;
	uint8* ID$1;
	int32 vr$3 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$3 == 0 ) goto label$362;
	{
		struct $8FBSYMBOL* vr$4 = SYMBGETPROCRESULT( PROC$1 );
		fb$result$1 = vr$4;
		goto label$360;
	}
	label$362:;
	label$361:;
	DTYPE$1 = *(int32*)((uint8*)PROC$1 + 28);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2048) == 0 ) goto label$364;
	{
		DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
	}
	label$364:;
	label$363:;
	struct $8FBSYMBOL* vr$19 = SYMBADDVAR( (uint8*)"fb$result", (uint8*)0u, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32), 0ll, 0, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$103$1, 131072, 1 );
	RES$1 = vr$19;
	SYMBPROCALLOCEXT( PROC$1 );
	*(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) = RES$1;
	struct $7ASTNODE* vr$22 = ASTNEWDECL( RES$1, -1 );
	ASTADD( vr$22 );
	*($12FB_SYMBSTATS*)((uint8*)RES$1 + 12) = *(int32*)((uint8*)RES$1 + 12) | 8;
	*($12FB_SYMBSTATS*)((uint8*)RES$1 + 12) = *(int32*)((uint8*)RES$1 + 12) | 16;
	fb$result$1 = RES$1;
	label$360:;
	return fb$result$1;
}

void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1 )
{
	label$365:;
	int32 DTYPE$1;
	{
		$12FB_SYMBCLASS TMP$105$2;
		TMP$105$2 = *($12FB_SYMBCLASS*)PARENT$1;
		if( TMP$105$2 != 10 ) goto label$368;
		label$369:;
		{
			DTYPE$1 = 20;
		}
		goto label$367;
		label$368:;
		if( TMP$105$2 != 11 ) goto label$370;
		label$371:;
		{
		}
		label$370:;
		label$367:;
	}
	if( (*(int32*)((uint8*)PROC$1 + 4) & 2048) == 0 ) goto label$373;
	{
		DTYPE$1 = DTYPE$1 | 512;
	}
	label$373:;
	label$372:;
	SYMBADDPROCPARAM( PROC$1, (uint8*)"THIS", DTYPE$1, PARENT$1, 0, 2, 524288, 0 );
	label$366:;
}

struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1, $16FB_SYMBLOOKUPOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$374:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* OVL_PARAM$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* OVL_SUBTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 OVL_PARAMS$1;
	int32 PARAMS$1;
	int32 I$1;
	if( (-(OVL_HEAD_PROC$1 == (struct $8FBSYMBOL*)0u) | -(PROC$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$377;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$375;
	}
	label$377:;
	label$376:;
	if( (-(*(int32*)OVL_HEAD_PROC$1 != 3) | -(*(int32*)PROC$1 != 3)) == 0 ) goto label$379;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$375;
	}
	label$379:;
	label$378:;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$381;
	{
		PARAMS$1 = PARAMS$1 + -1;
	}
	label$381:;
	label$380:;
	int32 IS_PROPERTY$1;
	IS_PROPERTY$1 = -((*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 32) != 0);
	OVL$1 = OVL_HEAD_PROC$1;
	label$382:;
	{
		OVL_PARAMS$1 = (int32)*(int16*)((uint8*)OVL$1 + 68);
		if( (*(int32*)((uint8*)OVL$1 + 8) & 2) == 0 ) goto label$386;
		{
			OVL_PARAMS$1 = OVL_PARAMS$1 + -1;
		}
		label$386:;
		label$385:;
		if( IS_PROPERTY$1 == 0 ) goto label$388;
		{
			if( (OPTIONS$1 & 1) == 0 ) goto label$390;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) != 0 ) goto label$392;
				{
					OVL_PARAMS$1 = -1;
				}
				label$392:;
				label$391:;
			}
			goto label$389;
			label$390:;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) == 0 ) goto label$394;
				{
					OVL_PARAMS$1 = -1;
				}
				label$394:;
				label$393:;
			}
			label$389:;
		}
		label$388:;
		label$387:;
		if( PARAMS$1 != OVL_PARAMS$1 ) goto label$396;
		{
			if( PARAMS$1 != 0 ) goto label$398;
			{
				fb$result$1 = OVL$1;
				goto label$375;
			}
			label$398:;
			label$397:;
			OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 80);
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
			label$399:;
			{
				int32 vr$29 = HCANOVERLOADBYDESC( PARAM$1, OVL_PARAM$1 );
				if( vr$29 == 0 ) goto label$403;
				{
					goto label$400;
				}
				label$403:;
				label$402:;
				if( *(int32*)((uint8*)PARAM$1 + 28) == *(int32*)((uint8*)OVL_PARAM$1 + 28) ) goto label$405;
				{
					goto label$400;
				}
				label$405:;
				label$404:;
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 32) ) goto label$407;
				{
					goto label$400;
				}
				label$407:;
				label$406:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
				OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 172);
				OVL_PARAMS$1 = OVL_PARAMS$1 + -1;
			}
			label$401:;
			if( OVL_PARAMS$1 > 0 ) goto label$399;
			label$400:;
			if( OVL_PARAMS$1 != 0 ) goto label$409;
			{
				fb$result$1 = OVL$1;
				goto label$375;
			}
			label$409:;
			label$408:;
		}
		label$396:;
		label$395:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 108);
	}
	label$384:;
	if( OVL$1 != (struct $8FBSYMBOL*)0u ) goto label$382;
	label$383:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	label$375:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP OP$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$410:;
	struct $8FBSYMBOL* OVL$1;
	if( OP$1 == 27 ) goto label$413;
	{
		struct $8FBSYMBOL* vr$1 = SYMBFINDOVERLOADPROC( OVL_HEAD_PROC$1, PROC$1, 0 );
		fb$result$1 = vr$1;
		goto label$411;
	}
	label$413:;
	label$412:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$414:;
	if( OVL$1 == (struct $8FBSYMBOL*)0u ) goto label$415;
	{
		if( *(int32*)((uint8*)PROC$1 + 28) != *(int32*)((uint8*)OVL$1 + 28) ) goto label$417;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) != *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 32) ) goto label$419;
			{
				fb$result$1 = OVL$1;
				goto label$411;
			}
			label$419:;
			label$418:;
		}
		label$417:;
		label$416:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 108);
	}
	goto label$414;
	label$415:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	label$411:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCTORPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$420:;
	if( (*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 8) == 0 ) goto label$423;
	{
		fb$result$1 = OVL_HEAD_PROC$1;
		goto label$421;
	}
	goto label$422;
	label$423:;
	{
		struct $8FBSYMBOL* vr$3 = SYMBFINDOVERLOADPROC( OVL_HEAD_PROC$1, PROC$1, 0 );
		fb$result$1 = vr$3;
		goto label$421;
	}
	label$422:;
	label$421:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL* OVL_HEAD_PROC$1, int32 ARGS$1, struct $11FB_CALL_ARG* ARG_HEAD$1, $9FB_ERRMSG* ERR_NUM$1, $16FB_SYMBLOOKUPOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$591:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* CLOSEST_PROC$1;
	struct $8FBSYMBOL* PARAM$1;
	$22FB_OVLPROC_MATCH_SCORE ARG_MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MAX_MATCHSCORE$1;
	int32 EXACT_MATCHES$1;
	int32 MATCHCOUNT$1;
	struct $11FB_CALL_ARG* ARG$1;
	*ERR_NUM$1 = 0;
	if( OVL_HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$594;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$592;
	}
	label$594:;
	label$593:;
	CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0u;
	MAX_MATCHSCORE$1 = 0;
	MATCHCOUNT$1 = 0;
	int32 IS_PROPERTY$1;
	IS_PROPERTY$1 = -((*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 32) != 0);
	OVL$1 = OVL_HEAD_PROC$1;
	label$595:;
	{
		int32 PARAMS$2;
		PARAMS$2 = (int32)*(int16*)((uint8*)OVL$1 + 68);
		if( (*(int32*)((uint8*)OVL$1 + 8) & 2) == 0 ) goto label$599;
		{
			PARAMS$2 = PARAMS$2 + -1;
		}
		label$599:;
		label$598:;
		if( IS_PROPERTY$1 == 0 ) goto label$601;
		{
			if( (OPTIONS$1 & 1) == 0 ) goto label$603;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) != 0 ) goto label$605;
				{
					PARAMS$2 = -1;
				}
				label$605:;
				label$604:;
			}
			goto label$602;
			label$603:;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) == 0 ) goto label$607;
				{
					PARAMS$2 = -1;
				}
				label$607:;
				label$606:;
			}
			label$602:;
		}
		label$601:;
		label$600:;
		if( ARGS$1 > PARAMS$2 ) goto label$609;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 76);
			if( (*(int32*)((uint8*)OVL$1 + 8) & 2) == 0 ) goto label$611;
			{
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
			}
			label$611:;
			label$610:;
			MATCHSCORE$1 = 0;
			EXACT_MATCHES$1 = 0;
			ARG$1 = ARG_HEAD$1;
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$124$4;
				TMP$124$4 = ARGS$1 + -1;
				goto label$612;
				label$615:;
				{
					$22FB_OVLPROC_MATCH_SCORE vr$22 = HCHECKOVLPARAM( OVL$1, PARAM$1, *(struct $7ASTNODE**)ARG$1, *(int32*)((uint8*)ARG$1 + 4) );
					ARG_MATCHSCORE$1 = vr$22;
					if( ARG_MATCHSCORE$1 != 0 ) goto label$617;
					{
						MATCHSCORE$1 = 0;
						goto label$614;
					}
					label$617:;
					label$616:;
					if( ARG_MATCHSCORE$1 < 52 ) goto label$619;
					{
						EXACT_MATCHES$1 = EXACT_MATCHES$1 + 1;
					}
					label$619:;
					label$618:;
					MATCHSCORE$1 = MATCHSCORE$1 + ARG_MATCHSCORE$1;
					PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
					ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
				}
				label$613:;
				I$4 = I$4 + 1;
				label$612:;
				if( I$4 <= TMP$124$4 ) goto label$615;
				label$614:;
			}
			int32 IS_MATCH$3;
			IS_MATCH$3 = -(ARGS$1 == 0) | -(MATCHSCORE$1 > 0);
			{
				int32 I$4;
				I$4 = ARGS$1;
				int32 TMP$125$4;
				TMP$125$4 = PARAMS$2 + -1;
				goto label$620;
				label$623:;
				{
					if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u ) goto label$625;
					{
						IS_MATCH$3 = 0;
						goto label$622;
					}
					label$625:;
					label$624:;
					PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
				}
				label$621:;
				I$4 = I$4 + 1;
				label$620:;
				if( I$4 <= TMP$125$4 ) goto label$623;
				label$622:;
			}
			if( IS_MATCH$3 == 0 ) goto label$627;
			{
				if( (-(MATCHCOUNT$1 == 0) | -(MATCHSCORE$1 > MAX_MATCHSCORE$1)) == 0 ) goto label$629;
				{
					int32 ELIGIBLE$5;
					ELIGIBLE$5 = -1;
					if( (OPTIONS$1 & 2) == 0 ) goto label$631;
					{
						ELIGIBLE$5 = -(EXACT_MATCHES$1 >= 1);
					}
					label$631:;
					label$630:;
					if( ELIGIBLE$5 == 0 ) goto label$633;
					{
						CLOSEST_PROC$1 = OVL$1;
						MAX_MATCHSCORE$1 = MATCHSCORE$1;
						MATCHCOUNT$1 = 1;
					}
					label$633:;
					label$632:;
				}
				goto label$628;
				label$629:;
				if( MATCHSCORE$1 != MAX_MATCHSCORE$1 ) goto label$634;
				{
					MATCHCOUNT$1 = MATCHCOUNT$1 + 1;
				}
				label$634:;
				label$628:;
			}
			label$627:;
			label$626:;
		}
		label$609:;
		label$608:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 108);
	}
	label$597:;
	if( OVL$1 != (struct $8FBSYMBOL*)0u ) goto label$595;
	label$596:;
	if( MATCHCOUNT$1 <= 1 ) goto label$636;
	{
		*ERR_NUM$1 = 98;
		fb$result$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$635;
	label$636:;
	{
		fb$result$1 = CLOSEST_PROC$1;
	}
	label$635:;
	label$592:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$637:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $11FB_CALL_ARG ARG2$1;
	struct $8FBSYMBOL* PROC$1;
	*ERR_NUM$1 = 0;
	{
		int32 TMP$126$2;
		TMP$126$2 = *(int32*)((uint8*)L$1 + 4) & 511;
		if( TMP$126$2 == 20 ) goto label$641;
		label$642:;
		if( TMP$126$2 != 10 ) goto label$640;
		label$641:;
		{
		}
		goto label$639;
		label$640:;
		{
			{
				int32 TMP$127$4;
				TMP$127$4 = *(int32*)((uint8*)R$1 + 4) & 511;
				if( TMP$127$4 == 20 ) goto label$646;
				label$647:;
				if( TMP$127$4 != 10 ) goto label$645;
				label$646:;
				{
				}
				goto label$644;
				label$645:;
				{
					fb$result$1 = (struct $8FBSYMBOL*)0u;
					goto label$638;
				}
				label$648:;
				label$644:;
			}
		}
		label$643:;
		label$639:;
	}
	*(struct $7ASTNODE**)&ARG1$1 = L$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 4) = -1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 8) = &ARG2$1;
	*(struct $7ASTNODE**)&ARG2$1 = R$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG2$1 + 4) = -1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG2$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $8FBSYMBOL* vr$10 = SYMBFINDCLOSESTOVLPROC( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (2 & 31))) + 99128), 2, &ARG1$1, ERR_NUM$1, 2 );
	PROC$1 = vr$10;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$650;
	{
		if( *(int32*)ERR_NUM$1 == 0 ) goto label$652;
		{
			ERRREPORT( *(int32*)ERR_NUM$1, -1, (uint8*)0u );
		}
		label$652:;
		label$651:;
	}
	label$650:;
	label$649:;
	fb$result$1 = PROC$1;
	label$638:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDSELFBOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$653:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	*ERR_NUM$1 = 0;
	{
		int32 TMP$128$2;
		TMP$128$2 = *(int32*)((uint8*)L$1 + 4) & 511;
		if( TMP$128$2 != 20 ) goto label$656;
		label$657:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) != (struct $12FB_STRUCTEXT*)0u ) goto label$659;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$654;
			}
			label$659:;
			label$658:;
			HEAD_PROC$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) + (OP$1 << (2 & 31))) + 28);
		}
		goto label$655;
		label$656:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$654;
		}
		label$660:;
		label$655:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$662;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$654;
	}
	label$662:;
	label$661:;
	*(struct $7ASTNODE**)&ARG1$1 = R$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 4) = -1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $8FBSYMBOL* vr$10 = SYMBFINDCLOSESTOVLPROC( HEAD_PROC$1, 1, &ARG1$1, ERR_NUM$1, 0 );
	PROC$1 = vr$10;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$664;
	{
		if( *(int32*)ERR_NUM$1 == 0 ) goto label$666;
		{
			ERRREPORT( *(int32*)ERR_NUM$1, -1, (uint8*)0u );
		}
		label$666:;
		label$665:;
	}
	goto label$663;
	label$664:;
	{
		int32 vr$13 = SYMBCHECKACCESS( PROC$1 );
		if( vr$13 != 0 ) goto label$668;
		{
			*ERR_NUM$1 = 202;
			uint8* vr$15 = SYMBGETFULLPROCNAME( PROC$1 );
			ERRREPORTEX( 202, (uint8*)vr$15, 0, 1, (uint8*)0u );
			PROC$1 = (struct $8FBSYMBOL*)0u;
		}
		label$668:;
		label$667:;
	}
	label$663:;
	fb$result$1 = PROC$1;
	label$654:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$669:;
	struct $11FB_CALL_ARG ARG1$1;
	struct $8FBSYMBOL* PROC$1;
	*ERR_NUM$1 = 0;
	{
		int32 TMP$129$2;
		TMP$129$2 = *(int32*)((uint8*)L$1 + 4) & 511;
		if( TMP$129$2 == 20 ) goto label$673;
		label$674:;
		if( TMP$129$2 != 10 ) goto label$672;
		label$673:;
		{
		}
		goto label$671;
		label$672:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$670;
		}
		label$675:;
		label$671:;
	}
	*(struct $7ASTNODE**)&ARG1$1 = L$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 4) = -1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $8FBSYMBOL* vr$7 = SYMBFINDCLOSESTOVLPROC( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (2 & 31))) + 99128), 1, &ARG1$1, ERR_NUM$1, 0 );
	PROC$1 = vr$7;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$677;
	{
		if( *(int32*)ERR_NUM$1 == 0 ) goto label$679;
		{
			ERRREPORT( *(int32*)ERR_NUM$1, -1, (uint8*)0u );
		}
		label$679:;
		label$678:;
	}
	label$677:;
	label$676:;
	fb$result$1 = PROC$1;
	label$670:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDSELFUOPOVLPROC( $6AST_OP OP$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$680:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	*ERR_NUM$1 = 0;
	{
		int32 TMP$130$2;
		TMP$130$2 = *(int32*)((uint8*)L$1 + 4) & 511;
		if( TMP$130$2 != 20 ) goto label$683;
		label$684:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) != (struct $12FB_STRUCTEXT*)0u ) goto label$686;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$681;
			}
			label$686:;
			label$685:;
			HEAD_PROC$1 = *(struct $8FBSYMBOL**)((uint8*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) + (OP$1 << (2 & 31))) + 28);
		}
		goto label$682;
		label$683:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$681;
		}
		label$687:;
		label$682:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$689;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$681;
	}
	label$689:;
	label$688:;
	struct $8FBSYMBOL* vr$9 = SYMBFINDCLOSESTOVLPROC( HEAD_PROC$1, 0, (struct $11FB_CALL_ARG*)0u, ERR_NUM$1, 0 );
	PROC$1 = vr$9;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$691;
	{
		if( *(int32*)ERR_NUM$1 == 0 ) goto label$693;
		{
			ERRREPORT( *(int32*)ERR_NUM$1, -1, (uint8*)0u );
		}
		label$693:;
		label$692:;
	}
	goto label$690;
	label$691:;
	{
		int32 vr$12 = SYMBCHECKACCESS( PROC$1 );
		if( vr$12 != 0 ) goto label$695;
		{
			*ERR_NUM$1 = 202;
			uint8* vr$14 = SYMBGETFULLPROCNAME( PROC$1 );
			ERRREPORTEX( 202, (uint8*)vr$14, 0, 1, (uint8*)0u );
			PROC$1 = (struct $8FBSYMBOL*)0u;
		}
		label$695:;
		label$694:;
	}
	label$690:;
	fb$result$1 = PROC$1;
	label$681:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, struct $7ASTNODE* L$1, $9FB_ERRMSG* ERR_NUM$1, int32 IS_EXPLICIT$1 )
{
	int32 TMP$136$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$718:;
	struct $8FBSYMBOL* PROC_HEAD$1;
	*ERR_NUM$1 = 0;
	{
		int32 TMP$135$2;
		TMP$135$2 = *(int32*)((uint8*)L$1 + 4) & 511;
		if( TMP$135$2 != 20 ) goto label$721;
		label$722:;
		{
			struct $8FBSYMBOL* SUBTYPE$3;
			SUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			if( SUBTYPE$3 != (struct $8FBSYMBOL*)0u ) goto label$724;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$719;
			}
			label$724:;
			label$723:;
			if( *(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) != (struct $12FB_STRUCTEXT*)0u ) goto label$726;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$719;
			}
			label$726:;
			label$725:;
			PROC_HEAD$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)SUBTYPE$3 + 140) + 136);
		}
		goto label$720;
		label$721:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$719;
		}
		label$727:;
		label$720:;
	}
	if( PROC_HEAD$1 != (struct $8FBSYMBOL*)0u ) goto label$729;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$719;
	}
	label$729:;
	label$728:;
	struct $8FBSYMBOL* P$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* CLOSEST_PROC$1;
	$22FB_OVLPROC_MATCH_SCORE MATCHSCORE$1;
	$22FB_OVLPROC_MATCH_SCORE MAX_MATCHSCORE$1;
	int32 MATCHCOUNT$1;
	CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0u;
	MAX_MATCHSCORE$1 = 0;
	MATCHCOUNT$1 = 0;
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$730;
	TMP$136$1 = 24;
	goto label$754;
	label$730:;
	TMP$136$1 = TO_DTYPE$1 & 31;
	label$754:;
	if( TMP$136$1 == 0 ) goto label$732;
	{
		PROC$1 = PROC_HEAD$1;
		label$733:;
		if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$734;
		{
			$22FB_OVLPROC_MATCH_SCORE vr$10 = HCHECKCASTOVL( PROC$1, TO_DTYPE$1, TO_SUBTYPE$1, IS_EXPLICIT$1 );
			MATCHSCORE$1 = vr$10;
			if( MATCHSCORE$1 <= MAX_MATCHSCORE$1 ) goto label$736;
			{
				CLOSEST_PROC$1 = PROC$1;
				MAX_MATCHSCORE$1 = MATCHSCORE$1;
				MATCHCOUNT$1 = 1;
			}
			goto label$735;
			label$736:;
			if( MATCHSCORE$1 != MAX_MATCHSCORE$1 ) goto label$737;
			{
				if( MAX_MATCHSCORE$1 <= 0 ) goto label$739;
				{
					MATCHCOUNT$1 = MATCHCOUNT$1 + 1;
				}
				label$739:;
				label$738:;
			}
			label$737:;
			label$735:;
			PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108);
		}
		goto label$733;
		label$734:;
	}
	goto label$731;
	label$732:;
	{
		PROC$1 = PROC_HEAD$1;
		label$740:;
		if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$741;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) != (struct $8FBSYMBOL*)0u ) goto label$743;
			{
				if( (*(int32*)((uint8*)PROC$1 + 28) & 511) > 16 ) goto label$745;
				{
					if( (*(int32*)((uint8*)PROC$1 + 28) & 511) <= TO_DTYPE$1 ) goto label$747;
					{
						CLOSEST_PROC$1 = PROC$1;
						TO_DTYPE$1 = *(int32*)((uint8*)PROC$1 + 28) & 511;
					}
					label$747:;
					label$746:;
				}
				label$745:;
				label$744:;
			}
			label$743:;
			label$742:;
			PROC$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108);
		}
		goto label$740;
		label$741:;
	}
	label$731:;
	if( MATCHCOUNT$1 <= 1 ) goto label$749;
	{
		*ERR_NUM$1 = 98;
		ERRREPORTPARAM( PROC_HEAD$1, 0, (uint8*)0u, 98 );
		CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$748;
	label$749:;
	{
		if( CLOSEST_PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$751;
		{
			int32 vr$22 = SYMBCHECKACCESS( CLOSEST_PROC$1 );
			if( vr$22 != 0 ) goto label$753;
			{
				*ERR_NUM$1 = 202;
				uint8* vr$24 = SYMBGETFULLPROCNAME( CLOSEST_PROC$1 );
				ERRREPORTEX( 202, (uint8*)vr$24, 0, 1, (uint8*)0u );
				CLOSEST_PROC$1 = (struct $8FBSYMBOL*)0u;
			}
			label$753:;
			label$752:;
		}
		label$751:;
		label$750:;
	}
	label$748:;
	fb$result$1 = CLOSEST_PROC$1;
	label$719:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* EXPR$1, $12FB_PARAMMODE ARG_MODE$1, $9FB_ERRMSG* ERR_NUM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$755:;
	struct $11FB_CALL_ARG ARG1$1;
	*(struct $7ASTNODE**)&ARG1$1 = EXPR$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG1$1 + 4) = ARG_MODE$1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG1$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $8FBSYMBOL* vr$2 = SYMBGETCOMPCTORHEAD( SYM$1 );
	struct $8FBSYMBOL* vr$3 = SYMBFINDCLOSESTOVLPROC( vr$2, 1, &ARG1$1, ERR_NUM$1, 0 );
	fb$result$1 = vr$3;
	label$756:;
	return fb$result$1;
}

void SYMBDELPROTOTYPE( struct $8FBSYMBOL* S$1 )
{
	label$761:;
	if( (int32)*(int16*)((uint8*)S$1 + 68) <= 0 ) goto label$764;
	{
		HDELPARAMS( S$1 );
	}
	label$764:;
	label$763:;
	SYMBPROCFREEEXT( S$1 );
	SYMBFREESYMBOL( S$1 );
	label$762:;
}

struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$769:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | 65538;
	struct $20FB_GLOBCTORLIST_ITEM* vr$5 = HADDTOGLOBCTORLIST( (struct $15FB_GLOBCTORLIST*)((uint8*)&SYMB$ + 99048), PROC$1 );
	fb$result$1 = vr$5;
	label$770:;
	return fb$result$1;
}

struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$771:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | 131074;
	struct $20FB_GLOBCTORLIST_ITEM* vr$5 = HADDTOGLOBCTORLIST( (struct $15FB_GLOBCTORLIST*)((uint8*)&SYMB$ + 99088), PROC$1 );
	fb$result$1 = vr$5;
	label$772:;
	return fb$result$1;
}

$22FB_OVLPROC_MATCH_SCORE SYMBCALCPROCMATCH( struct $8FBSYMBOL* L$1, struct $8FBSYMBOL* R$1, int32* ERRMSG$1 )
{
	$12FB_PARAMMODE TMP$137$1;
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$783:;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	if( (*(int32*)((uint8*)L$1 + 8) & 2048) == 0 ) goto label$785;
	TMP$137$1 = 2;
	goto label$810;
	label$785:;
	TMP$137$1 = 1;
	label$810:;
	$22FB_OVLPROC_MATCH_SCORE vr$7 = TYPECALCMATCH( *(int32*)((uint8*)L$1 + 28), *(struct $8FBSYMBOL**)((uint8*)L$1 + 32), TMP$137$1, *(int32*)((uint8*)R$1 + 28), *(struct $8FBSYMBOL**)((uint8*)R$1 + 32) );
	MATCH$1 = vr$7;
	if( MATCH$1 != 0 ) goto label$787;
	{
		*ERRMSG$1 = 225;
		fb$result$1 = 0;
		goto label$784;
	}
	label$787:;
	label$786:;
	if( -((*(int32*)((uint8*)L$1 + 8) & 2048) != 0) == -((*(int32*)((uint8*)R$1 + 8) & 2048) != 0) ) goto label$789;
	{
		*ERRMSG$1 = 225;
		fb$result$1 = 0;
		goto label$784;
	}
	label$789:;
	label$788:;
	int32 vr$16 = SYMBAREPROCMODESEQUAL( L$1, R$1 );
	if( vr$16 != 0 ) goto label$791;
	{
		*ERRMSG$1 = 226;
		fb$result$1 = 0;
		goto label$784;
	}
	label$791:;
	label$790:;
	if( -((*(int32*)((uint8*)L$1 + 4) & 2048) != 0) == -((*(int32*)((uint8*)R$1 + 4) & 2048) != 0) ) goto label$793;
	{
		if( (*(int32*)((uint8*)L$1 + 4) & 2048) == 0 ) goto label$795;
		{
			*ERRMSG$1 = 229;
		}
		goto label$794;
		label$795:;
		{
			*ERRMSG$1 = 230;
		}
		label$794:;
		fb$result$1 = 0;
		goto label$784;
	}
	label$793:;
	label$792:;
	if( (int32)*(int16*)((uint8*)L$1 + 68) == (int32)*(int16*)((uint8*)R$1 + 68) ) goto label$797;
	{
		*ERRMSG$1 = 231;
		fb$result$1 = 0;
		goto label$784;
	}
	label$797:;
	label$796:;
	struct $8FBSYMBOL* LPARAM$1;
	LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 76);
	struct $8FBSYMBOL* RPARAM$1;
	RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 76);
	if( ((-((*(int32*)((uint8*)L$1 + 8) & 256) != 0) & -((*(int32*)((uint8*)L$1 + 8) & 2) != 0)) & -((*(int32*)((uint8*)R$1 + 8) & 2) != 0)) == 0 ) goto label$799;
	{
		if( (-(LPARAM$1 != (struct $8FBSYMBOL*)0u) & -(RPARAM$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$801;
		{
			if( (-((*(int32*)((uint8*)LPARAM$1 + 4) & 524288) != 0) & -((*(int32*)((uint8*)RPARAM$1 + 4) & 524288) != 0)) == 0 ) goto label$803;
			{
				LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 176);
				RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 176);
			}
			label$803:;
			label$802:;
		}
		label$801:;
		label$800:;
	}
	label$799:;
	label$798:;
	label$804:;
	if( LPARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$805;
	{
		$22FB_OVLPROC_MATCH_SCORE PARAMMATCH$2;
		$22FB_OVLPROC_MATCH_SCORE vr$58 = SYMBCALCPARAMMATCH( RPARAM$1, LPARAM$1 );
		PARAMMATCH$2 = vr$58;
		if( PARAMMATCH$2 != 0 ) goto label$807;
		{
			*ERRMSG$1 = 231;
			fb$result$1 = 0;
			goto label$784;
		}
		label$807:;
		label$806:;
		if( MATCH$1 <= PARAMMATCH$2 ) goto label$809;
		{
			MATCH$1 = PARAMMATCH$2;
		}
		label$809:;
		label$808:;
		LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 176);
		RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 176);
	}
	goto label$804;
	label$805:;
	fb$result$1 = MATCH$1;
	label$784:;
	return fb$result$1;
}

void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL* PROC$1, int32 IS_IMPLICIT$1 )
{
	label$811:;
	struct $8FBSYMBOL* OVERRIDDEN$1;
	struct $8FBSYMBOL* vr$0 = SYMBPROCGETOVERRIDDEN( PROC$1 );
	OVERRIDDEN$1 = vr$0;
	if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0u ) goto label$814;
	{
		int32 ERRMSG$2;
		__builtin_memset( &ERRMSG$2, 0, 4 );
		$22FB_OVLPROC_MATCH_SCORE vr$3 = SYMBCALCPROCMATCH( OVERRIDDEN$1, PROC$1, &ERRMSG$2 );
		if( vr$3 != 0 ) goto label$816;
		{
			if( (IS_IMPLICIT$1 & -(ERRMSG$2 == 226)) == 0 ) goto label$818;
			{
				if( (*(int32*)((uint8*)PROC$1 + 8) & 8) == 0 ) goto label$820;
				{
					ERRMSG$2 = 227;
				}
				goto label$819;
				label$820:;
				{
					ERRMSG$2 = 228;
				}
				label$819:;
			}
			label$818:;
			label$817:;
			ERRREPORT( ERRMSG$2, 0, (uint8*)0u );
		}
		label$816:;
		label$815:;
	}
	label$814:;
	label$813:;
	label$812:;
}

void SYMBPROCSETVTABLEINDEX( struct $8FBSYMBOL* PROC$1, int32 I$1 )
{
	label$821:;
	SYMBPROCALLOCEXT( PROC$1 );
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 68) = I$1;
	label$822:;
}

int32 SYMBPROCGETVTABLEINDEX( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$823:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) == (struct $10FB_PROCEXT*)0u ) goto label$826;
	{
		fb$result$1 = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 68);
	}
	label$826:;
	label$825:;
	label$824:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$827:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) == (struct $10FB_PROCEXT*)0u ) goto label$830;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 72);
	}
	label$830:;
	label$829:;
	label$828:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* PROC$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$831:;
	if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) == (struct $10FB_PROCEXT*)0u ) goto label$834;
	{
		fb$result$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112);
	}
	label$834:;
	label$833:;
	label$832:;
	return fb$result$1;
}

int32 SYMBPROCHASFWDREFINSIGNATURE( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$835:;
	struct $8FBSYMBOL* PARAM$1;
	int32 vr$3 = TYPEHASFWDREFINSIGNATURE( *(int32*)((uint8*)PROC$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) );
	if( vr$3 == 0 ) goto label$838;
	{
		fb$result$1 = -1;
		goto label$836;
	}
	label$838:;
	label$837:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$839:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$840;
	{
		int32 vr$7 = TYPEHASFWDREFINSIGNATURE( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
		if( vr$7 == 0 ) goto label$842;
		{
			fb$result$1 = -1;
			goto label$836;
		}
		label$842:;
		label$841:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$839;
	label$840:;
	fb$result$1 = 0;
	label$836:;
	return fb$result$1;
}

FBSTRING* HDUMPDYNAMICARRAYDIMENSIONS( int32 DIMENSIONS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$874:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"(", 2, 0 );
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$154$2;
		TMP$154$2 = DIMENSIONS$1;
		goto label$876;
		label$879:;
		{
			if( I$2 <= 1 ) goto label$881;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)", ", 3, 0 );
			}
			label$881:;
			label$880:;
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"any", 4, 0 );
		}
		label$877:;
		I$2 = I$2 + 1;
		label$876:;
		if( I$2 <= TMP$154$2 ) goto label$879;
		label$878:;
	}
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)") ", 3, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$875:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

FBSTRING* SYMBPROCPTRTOSTR( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$913:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	HSUBORFUNCTOSTR( &S$1, PROC$1 );
	HPROCMODETOSTR( &S$1, PROC$1 );
	HPARAMSTOSTR( &S$1, PROC$1 );
	HRESULTTOSTR( &S$1, PROC$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$914:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

uint8* SYMBGETFULLPROCNAME( struct $8FBSYMBOL* PROC$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$915:;
	static FBSTRING RES$1;
	fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 144);
	label$917:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$918;
	{
		FBSTRING TMP$177$2;
		FBSTRING TMP$178$2;
		__builtin_memset( &TMP$177$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$177$2, *(void**)((uint8*)NS$1 + 16), 0, (void*)".", 2 );
		__builtin_memset( &TMP$178$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$178$2, (void*)vr$7, -1, (void*)&RES$1, -1 );
		fb_StrAssign( (void*)&RES$1, -1, (void*)vr$10, -1, 0 );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 144);
	}
	goto label$917;
	label$918:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 4) == 0 ) goto label$920;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"constructor", 12, 0 );
	}
	goto label$919;
	label$920:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 8) == 0 ) goto label$921;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"destructor", 11, 0 );
	}
	goto label$919;
	label$921:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 16) == 0 ) goto label$922;
	{
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"operator.", 10, 0 );
		if( *(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) == (struct $10FB_PROCEXT*)0u ) goto label$924;
		{
			FBSTRING TMP$182$3;
			__builtin_memset( &TMP$182$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$182$3, (void*)&RES$1, -1, *(void**)(((uint8*)AST_OPTB$ + (*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40) << (4 & 31))) + 8), 0 );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$25, -1, 0 );
		}
		label$924:;
		label$923:;
	}
	goto label$919;
	label$922:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 32) == 0 ) goto label$925;
	{
		FBSTRING TMP$183$2;
		__builtin_memset( &TMP$183$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$183$2, (void*)&RES$1, -1, *(void**)((uint8*)PROC$1 + 16), 0 );
		fb_StrAssign( (void*)&RES$1, -1, (void*)vr$31, -1, 0 );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)".property.", 11, 0 );
		if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 0 ) goto label$927;
		{
			fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"get", 4, 0 );
		}
		goto label$926;
		label$927:;
		{
			fb_StrConcatAssign( (void*)&RES$1, -1, (void*)"set", 4, 0 );
		}
		label$926:;
	}
	goto label$919;
	label$925:;
	{
		FBSTRING TMP$187$2;
		__builtin_memset( &TMP$187$2, 0, 12 );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$187$2, (void*)&RES$1, -1, *(void**)((uint8*)PROC$1 + 16), 0 );
		fb_StrAssign( (void*)&RES$1, -1, (void*)vr$37, -1, 0 );
	}
	label$919:;
	fb$result$1 = (uint8*)*(uint8**)&RES$1;
	label$916:;
	return fb$result$1;
}

FBSTRING* SYMBMETHODTOSTR( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$928:;
	FBSTRING S$1;
	uint8* vr$1 = SYMBGETFULLPROCNAME( PROC$1 );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$1, 0, 0 );
	HPROCMODETOSTR( &S$1, PROC$1 );
	HPARAMSTOSTR( &S$1, PROC$1 );
	HRESULTTOSTR( &S$1, PROC$1 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$929:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

int32 SYMBGETDEFAULTPARAMMODE( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$930:;
	{
		uint32 TMP$188$2;
		TMP$188$2 = (uint32)(DTYPE$1 & 511);
		goto label$933;
		label$934:;
		{
			fb$result$1 = 2;
			goto label$931;
		}
		goto label$932;
		label$935:;
		{
			fb$result$1 = 1;
			goto label$931;
		}
		goto label$932;
		label$933:;
		static const void* tmp$189[20] = {
			&&label$934,
			&&label$935,
			&&label$935,
			&&label$934,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$935,
			&&label$934,
			&&label$934,
			&&label$935,
			&&label$934,
			&&label$935,
			&&label$935,
			&&label$934,
		};
		if( (TMP$188$2 - 4u) > 19u ) goto label$935;
		goto *tmp$189[TMP$188$2 - 4u];
		label$932:;
	}
	label$931:;
	return fb$result$1;
}

int32 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL* PROCA$1, struct $8FBSYMBOL* PROCB$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$936:;
	int32 A$1;
	int32 B$1;
	A$1 = *(int32*)((uint8*)PROCA$1 + 84);
	B$1 = *(int32*)((uint8*)PROCB$1 + 84);
	{
		if( A$1 == 1 ) goto label$940;
		label$941:;
		if( A$1 != 2 ) goto label$939;
		label$940:;
		{
			{
				if( B$1 == 1 ) goto label$944;
				label$945:;
				if( B$1 != 2 ) goto label$943;
				label$944:;
				{
					fb$result$1 = -1;
					goto label$937;
				}
				label$943:;
				label$942:;
			}
		}
		label$939:;
		label$938:;
	}
	fb$result$1 = -(A$1 == B$1);
	label$937:;
	return fb$result$1;
}

struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST* LIST$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, int32 TO_HEAD$1 )
{
	struct $11FB_CALL_ARG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$946:;
	struct $11FB_CALL_ARG* ARG$1;
	void* vr$1 = LISTNEWNODE( LIST$1 );
	ARG$1 = (struct $11FB_CALL_ARG*)vr$1;
	if( TO_HEAD$1 != 0 ) goto label$949;
	{
		if( *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) != (struct $11FB_CALL_ARG*)0u ) goto label$951;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) = ARG$1;
		}
		goto label$950;
		label$951:;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8) + 8) = ARG$1;
		}
		label$950:;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8) = (struct $11FB_CALL_ARG*)0u;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8) = ARG$1;
	}
	goto label$948;
	label$949:;
	{
		if( *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8) != (struct $11FB_CALL_ARG*)0u ) goto label$953;
		{
			*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 8) = ARG$1;
		}
		label$953:;
		label$952:;
		*(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8) = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
		*(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4) = ARG$1;
	}
	label$948:;
	*(int32*)ARG_LIST$1 = *(int32*)ARG_LIST$1 + 1;
	fb$result$1 = ARG$1;
	label$947:;
	return fb$result$1;
}

void SYMBFREEOVLCALLARGS( struct $5TLIST* LIST$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1 )
{
	label$954:;
	struct $11FB_CALL_ARG* ARG$1;
	__builtin_memset( &ARG$1, 0, 4 );
	struct $11FB_CALL_ARG* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG_LIST$1 + 4);
	label$956:;
	if( ARG$1 == (struct $11FB_CALL_ARG*)0u ) goto label$957;
	{
		NXT$1 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
		LISTDELNODE( LIST$1, (void*)ARG$1 );
		ARG$1 = NXT$1;
	}
	goto label$956;
	label$957:;
	label$955:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static int64 HALIGNTOPOW2( int64 VALUE$1, int32 ALIGN$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$32:;
	fb$result$1 = (VALUE$1 + (int64)(ALIGN$1 + -1)) & (int64)~(ALIGN$1 + -1);
	label$33:;
	return fb$result$1;
}

static int32 HCANOVERLOAD( struct $8FBSYMBOL* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$106:;
	struct $8FBSYMBOL* PPARAM$1;
	if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 0 ) goto label$109;
	{
		fb$result$1 = -1;
		goto label$107;
	}
	label$109:;
	label$108:;
	PPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
	if( *(int32*)((uint8*)PPARAM$1 + 56) != 4 ) goto label$111;
	{
		fb$result$1 = 0;
		goto label$107;
	}
	label$111:;
	label$110:;
	label$112:;
	if( PPARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$113;
	{
		if( *(int32*)((uint8*)PPARAM$1 + 28) != 0 ) goto label$115;
		{
			fb$result$1 = 0;
			goto label$107;
		}
		label$115:;
		label$114:;
		PPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PPARAM$1 + 172);
	}
	goto label$112;
	label$113:;
	fb$result$1 = -1;
	label$107:;
	return fb$result$1;
}

static int32 HCANOVERLOADBYDESC( struct $8FBSYMBOL* A$1, struct $8FBSYMBOL* B$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$116:;
	fb$result$1 = 0;
	if( (-(*(int32*)((uint8*)A$1 + 56) == 3) | -(*(int32*)((uint8*)B$1 + 56) == 3)) == 0 ) goto label$119;
	{
		if( (-(*(int32*)((uint8*)A$1 + 56) == 3) & -(*(int32*)((uint8*)B$1 + 56) == 3)) == 0 ) goto label$121;
		{
			if( (-(*(int32*)((uint8*)A$1 + 68) > 0) & -(*(int32*)((uint8*)B$1 + 68) > 0)) == 0 ) goto label$123;
			{
				fb$result$1 = -(*(int32*)((uint8*)A$1 + 68) != *(int32*)((uint8*)B$1 + 68));
			}
			label$123:;
			label$122:;
		}
		goto label$120;
		label$121:;
		{
			fb$result$1 = -1;
		}
		label$120:;
	}
	label$119:;
	label$118:;
	label$117:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HADDOVLPROC( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 PRESERVECASE$1 )
{
	$10FB_SYMBOPT TMP$96$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$124:;
	struct $8FBSYMBOL* OVL$1;
	struct $8FBSYMBOL* OVL_PARAM$1;
	struct $8FBSYMBOL* PARAM$1;
	int32 OVL_PARAMS$1;
	int32 PARAMS$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( OVL_HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$127;
	{
		goto label$125;
	}
	label$127:;
	label$126:;
	if( -((PATTRIB$1 & 32) != 0) == -((*(int32*)((uint8*)OVL_HEAD_PROC$1 + 8) & 32) != 0) ) goto label$129;
	{
		goto label$125;
	}
	label$129:;
	label$128:;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	if( (PATTRIB$1 & 2) == 0 ) goto label$131;
	{
		PARAMS$1 = PARAMS$1 + -1;
	}
	label$131:;
	label$130:;
	if( PARAMS$1 <= 0 ) goto label$133;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
		if( *(int32*)((uint8*)PARAM$1 + 56) != 4 ) goto label$135;
		{
			goto label$125;
		}
		label$135:;
		label$134:;
		label$136:;
		if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$137;
		{
			if( *(int32*)((uint8*)PARAM$1 + 28) != 0 ) goto label$139;
			{
				goto label$125;
			}
			label$139:;
			label$138:;
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
		}
		goto label$136;
		label$137:;
	}
	label$133:;
	label$132:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$140:;
	{
		OVL_PARAMS$1 = (int32)*(int16*)((uint8*)OVL$1 + 68);
		if( (*(int32*)((uint8*)OVL$1 + 8) & 2) == 0 ) goto label$144;
		{
			OVL_PARAMS$1 = OVL_PARAMS$1 + -1;
		}
		label$144:;
		label$143:;
		if( (PATTRIB$1 & 32) == 0 ) goto label$146;
		{
			if( DTYPE$1 == 0 ) goto label$148;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) != 0 ) goto label$150;
				{
					OVL_PARAMS$1 = -1;
				}
				label$150:;
				label$149:;
			}
			goto label$147;
			label$148:;
			{
				if( (*(int32*)((uint8*)OVL$1 + 28) & 511) == 0 ) goto label$152;
				{
					OVL_PARAMS$1 = -1;
				}
				label$152:;
				label$151:;
			}
			label$147:;
		}
		label$146:;
		label$145:;
		if( OVL_PARAMS$1 != PARAMS$1 ) goto label$154;
		{
			if( PARAMS$1 != 0 ) goto label$156;
			{
				goto label$125;
			}
			label$156:;
			label$155:;
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
			OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 80);
			label$157:;
			{
				int32 vr$26 = HCANOVERLOADBYDESC( PARAM$1, OVL_PARAM$1 );
				if( vr$26 == 0 ) goto label$161;
				{
					goto label$158;
				}
				label$161:;
				label$160:;
				int32 PDTYPE$4;
				PDTYPE$4 = *(int32*)((uint8*)PARAM$1 + 28);
				int32 ODTYPE$4;
				ODTYPE$4 = *(int32*)((uint8*)OVL_PARAM$1 + 28);
				if( ((PDTYPE$4 & 261632) | (ODTYPE$4 & 261632)) == 0 ) goto label$163;
				{
					if( (-(*(int32*)((uint8*)PARAM$1 + 56) == 2) & -(*(int32*)((uint8*)OVL_PARAM$1 + 56) == 2)) == 0 ) goto label$165;
					{
						if( (PDTYPE$4 & 261632) == (ODTYPE$4 & 261632) ) goto label$167;
						{
							goto label$158;
						}
						label$167:;
						label$166:;
					}
					label$165:;
					label$164:;
					if( ((PDTYPE$4 & 261632) & -513) == ((ODTYPE$4 & 261632) & -513) ) goto label$169;
					{
						goto label$158;
					}
					label$169:;
					label$168:;
					PDTYPE$4 = PDTYPE$4 & 511;
					ODTYPE$4 = ODTYPE$4 & 511;
				}
				label$163:;
				label$162:;
				if( PDTYPE$4 == ODTYPE$4 ) goto label$171;
				{
					{
						if( PDTYPE$4 != 36 ) goto label$173;
						label$174:;
						{
							if( ODTYPE$4 == 17 ) goto label$176;
							{
								goto label$158;
							}
							label$176:;
							label$175:;
						}
						goto label$172;
						label$173:;
						if( PDTYPE$4 != 17 ) goto label$177;
						label$178:;
						{
							if( ODTYPE$4 == 36 ) goto label$180;
							{
								goto label$158;
							}
							label$180:;
							label$179:;
						}
						goto label$172;
						label$177:;
						{
							goto label$158;
						}
						label$181:;
						label$172:;
					}
				}
				label$171:;
				label$170:;
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 32) ) goto label$183;
				{
					goto label$158;
				}
				label$183:;
				label$182:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
				OVL_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)OVL_PARAM$1 + 172);
				OVL_PARAMS$1 = OVL_PARAMS$1 + -1;
			}
			label$159:;
			if( OVL_PARAMS$1 > 0 ) goto label$157;
			label$158:;
			if( OVL_PARAMS$1 != 0 ) goto label$185;
			{
				goto label$125;
			}
			label$185:;
			label$184:;
		}
		label$154:;
		label$153:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 108);
	}
	label$142:;
	if( OVL$1 != (struct $8FBSYMBOL*)0u ) goto label$140;
	label$141:;
	if( PRESERVECASE$1 == 0 ) goto label$186;
	TMP$96$1 = 1;
	goto label$958;
	label$186:;
	TMP$96$1 = 0;
	label$958:;
	struct $8FBSYMBOL* vr$51 = SYMBNEWSYMBOL( TMP$96$1, PROC$1, SYMTB$1, HASHTB$1, 3, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
	PROC$1 = vr$51;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$188;
	{
		goto label$125;
	}
	label$188:;
	label$187:;
	if( ID$1 == (uint8*)0u ) goto label$190;
	{
		struct $8FBSYMBOL* NXT$2;
		*(uint32*)((uint8*)PROC$1 + 152) = *(uint32*)((uint8*)OVL_HEAD_PROC$1 + 152);
		*(struct $8HASHITEM**)((uint8*)PROC$1 + 148) = *(struct $8HASHITEM**)((uint8*)OVL_HEAD_PROC$1 + 148);
		NXT$2 = *(struct $8FBSYMBOL**)((uint8*)OVL_HEAD_PROC$1 + 160);
		*(struct $8FBSYMBOL**)((uint8*)OVL_HEAD_PROC$1 + 160) = PROC$1;
		*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 156) = OVL_HEAD_PROC$1;
		*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 160) = NXT$2;
		if( NXT$2 == (struct $8FBSYMBOL*)0u ) goto label$192;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$2 + 156) = PROC$1;
		}
		label$192:;
		label$191:;
	}
	label$190:;
	label$189:;
	fb$result$1 = PROC$1;
	label$125:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HADDOPOVLPROC( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* OVL_HEAD_PROC$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, $6AST_OP OP$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$193:;
	struct $8FBSYMBOL* OVL$1;
	if( OP$1 == 27 ) goto label$196;
	{
		struct $8FBSYMBOL* vr$1 = HADDOVLPROC( PROC$1, OVL_HEAD_PROC$1, SYMTB$1, HASHTB$1, (uint8*)0u, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, 0 );
		fb$result$1 = vr$1;
		goto label$194;
	}
	label$196:;
	label$195:;
	OVL$1 = OVL_HEAD_PROC$1;
	label$197:;
	if( OVL$1 == (struct $8FBSYMBOL*)0u ) goto label$198;
	{
		if( *(int32*)((uint8*)PROC$1 + 28) != *(int32*)((uint8*)OVL$1 + 28) ) goto label$200;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) != *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 32) ) goto label$202;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$194;
			}
			label$202:;
			label$201:;
		}
		label$200:;
		label$199:;
		OVL$1 = *(struct $8FBSYMBOL**)((uint8*)OVL$1 + 108);
	}
	goto label$197;
	label$198:;
	struct $8FBSYMBOL* vr$7 = SYMBNEWSYMBOL( 0, PROC$1, SYMTB$1, HASHTB$1, 3, (uint8*)0u, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
	PROC$1 = vr$7;
	fb$result$1 = PROC$1;
	label$194:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HSETUPPROC( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PARENT$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32 MODE$1, $10FB_SYMBOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$203:;
	int32 STATS$1;
	int32 PRESERVE_CASE$1;
	int32 LOOKUPOPTIONS$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	struct $8FBSYMBOL* OVERRIDDEN$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( DTYPE$1 != -2147483648u ) goto label$206;
	{
		int32 vr$1 = SYMBGETDEFTYPE( ID$1 );
		DTYPE$1 = vr$1;
		SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	label$206:;
	label$205:;
	if( ID_ALIAS$1 != (uint8*)0u ) goto label$208;
	{
		if( *(int32*)((uint8*)&PARSER$ + 100) == 0 ) goto label$210;
		{
			ID_ALIAS$1 = ID$1;
		}
		label$210:;
		label$209:;
		STATS$1 = 0;
	}
	goto label$207;
	label$208:;
	{
		STATS$1 = 512;
	}
	label$207:;
	HEAD_PROC$1 = (struct $8FBSYMBOL*)0u;
	if( (PATTRIB$1 & 12) == 0 ) goto label$212;
	{
		PATTRIB$1 = PATTRIB$1 | 1024;
		if( (PATTRIB$1 & 4) == 0 ) goto label$214;
		{
			struct $8FBSYMBOL* vr$5 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			HEAD_PROC$1 = vr$5;
		}
		goto label$213;
		label$214:;
		{
			struct $8FBSYMBOL* vr$6 = SYMBGETCOMPDTOR( PARENT$1 );
			HEAD_PROC$1 = vr$6;
		}
		label$213:;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$216;
		{
			struct $8FBSYMBOL* vr$7 = SYMBNEWSYMBOL( 0, SYM$1, SYMTB$1, HASHTB$1, 3, (uint8*)0u, ID_ALIAS$1, 0, (struct $8FBSYMBOL*)0u, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$7;
			if( (PATTRIB$1 & 4) == 0 ) goto label$218;
			{
				SYMBSETCOMPCTORHEAD( PARENT$1, PROC$1 );
			}
			goto label$217;
			label$218:;
			{
				SYMBSETCOMPDTOR( PARENT$1, PROC$1 );
			}
			label$217:;
		}
		goto label$215;
		label$216:;
		{
			if( (PATTRIB$1 & 8) == 0 ) goto label$220;
			{
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$204;
			}
			label$220:;
			label$219:;
			struct $8FBSYMBOL* vr$10 = HADDOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, (uint8*)0u, ID_ALIAS$1, 0, (struct $8FBSYMBOL*)0u, ATTRIB$1, PATTRIB$1, 0 );
			PROC$1 = vr$10;
			if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$222;
			{
				goto label$204;
			}
			label$222:;
			label$221:;
		}
		label$215:;
		if( (PATTRIB$1 & 4) == 0 ) goto label$224;
		{
			SYMBCHECKCOMPCTOR( PARENT$1, PROC$1 );
		}
		label$224:;
		label$223:;
	}
	goto label$211;
	label$212:;
	if( (PATTRIB$1 & 16) == 0 ) goto label$225;
	{
		if( *(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 112) != (struct $10FB_PROCEXT*)0u ) goto label$227;
		{
			goto label$228;
		}
		label$227:;
		label$226:;
		$6AST_OP OP$2;
		__builtin_memset( &OP$2, 0, 4 );
		OP$2 = *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 112) + 40);
		struct $8FBSYMBOL* vr$17 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$2 );
		HEAD_PROC$1 = vr$17;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$230;
		{
			struct $8FBSYMBOL* vr$18 = SYMBNEWSYMBOL( 0, SYM$1, SYMTB$1, HASHTB$1, 3, (uint8*)0u, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$18;
			SYMBSETCOMPOPOVLHEAD( PARENT$1, PROC$1 );
		}
		goto label$229;
		label$230:;
		{
			struct $8FBSYMBOL* vr$19 = HADDOPOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, OP$2, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
			PROC$1 = vr$19;
			if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$232;
			{
				goto label$204;
			}
			label$232:;
			label$231:;
			if( OP$2 != 0 ) goto label$234;
			{
				SYMBCHECKCOMPLETOP( PARENT$1, PROC$1 );
			}
			label$234:;
			label$233:;
		}
		label$229:;
	}
	goto label$211;
	label$225:;
	{
		label$228:;
		PRESERVE_CASE$1 = -((OPTIONS$1 & 1) != 0);
		struct $8FBSYMBOL* vr$23 = SYMBNEWSYMBOL( OPTIONS$1 | 32, SYM$1, SYMTB$1, HASHTB$1, 3, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1 );
		PROC$1 = vr$23;
		if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$236;
		{
			struct $8FBSYMBOL* vr$24 = SYMBLOOKUPBYNAMEANDCLASS( PARENT$1, ID$1, 3, PRESERVE_CASE$1, 0 );
			HEAD_PROC$1 = vr$24;
			if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$238;
			{
				goto label$204;
			}
			label$238:;
			label$237:;
			if( (*(int32*)((uint8*)HEAD_PROC$1 + 8) & 1) != 0 ) goto label$240;
			{
				if( (*(int32*)((uint8*)&ENV$ + 888) & 1024) != 0 ) goto label$242;
				{
					goto label$204;
				}
				label$242:;
				label$241:;
			}
			label$240:;
			label$239:;
			struct $8FBSYMBOL* vr$28 = HADDOVLPROC( SYM$1, HEAD_PROC$1, SYMTB$1, HASHTB$1, ID$1, ID_ALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, PRESERVE_CASE$1 );
			PROC$1 = vr$28;
			if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$244;
			{
				goto label$204;
			}
			label$244:;
			label$243:;
			*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = *(int32*)((uint8*)PROC$1 + 8) | 1;
		}
		goto label$235;
		label$236:;
		{
			if( (OPTIONS$1 & 16) != 0 ) goto label$246;
			{
				if( (PATTRIB$1 & 1) == 0 ) goto label$248;
				{
					int32 vr$34 = HCANOVERLOAD( SYM$1 );
					if( vr$34 != 0 ) goto label$250;
					{
						goto label$204;
					}
					label$250:;
					label$249:;
				}
				goto label$247;
				label$248:;
				if( (*(int32*)((uint8*)&ENV$ + 888) & 1024) == 0 ) goto label$251;
				{
					int32 vr$36 = HCANOVERLOAD( SYM$1 );
					if( vr$36 == 0 ) goto label$253;
					{
						*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = *(int32*)((uint8*)PROC$1 + 8) | 1;
					}
					label$253:;
					label$252:;
				}
				label$251:;
				label$247:;
			}
			label$246:;
			label$245:;
		}
		label$235:;
	}
	label$211:;
	if( (OPTIONS$1 & 16) == 0 ) goto label$255;
	{
		STATS$1 = STATS$1 | 32;
	}
	label$255:;
	label$254:;
	*($11FB_FUNCMODE*)((uint8*)PROC$1 + 84) = MODE$1;
	if( *(int32*)((uint8*)&PARSER$ + 24) != 306 ) goto label$257;
	{
		if( (-(*(int32*)((uint8*)&PARSER$ + 100) != 4) & -(*(int32*)((uint8*)&PARSER$ + 100) != 6)) == 0 ) goto label$259;
		{
			STATS$1 = STATS$1 | 2048;
		}
		label$259:;
		label$258:;
	}
	label$257:;
	label$256:;
	SYMBPROCRECALCREALTYPE( PROC$1 );
	if( (OPTIONS$1 & 4) == 0 ) goto label$261;
	{
		STATS$1 = STATS$1 | 8;
	}
	label$261:;
	label$260:;
	*(tmp$33*)((uint8*)PROC$1 + 100) = (tmp$33)0u;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 1) == 0 ) goto label$263;
	{
		int32 PARAMS$2;
		PARAMS$2 = (int32)*(int16*)((uint8*)PROC$1 + 68);
		if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$265;
		{
			PARAMS$2 = PARAMS$2 + -1;
		}
		label$265:;
		label$264:;
		if( HEAD_PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$267;
		{
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108) = *(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 108);
			*(struct $8FBSYMBOL**)((uint8*)HEAD_PROC$1 + 108) = PROC$1;
			if( PARAMS$2 >= (int32)*(int16*)((uint8*)HEAD_PROC$1 + 104) ) goto label$269;
			{
				*(int16*)((uint8*)HEAD_PROC$1 + 104) = (int16)PARAMS$2;
			}
			label$269:;
			label$268:;
			if( PARAMS$2 <= (int32)*(int16*)((uint8*)HEAD_PROC$1 + 106) ) goto label$271;
			{
				*(int16*)((uint8*)HEAD_PROC$1 + 106) = (int16)PARAMS$2;
			}
			label$271:;
			label$270:;
		}
		goto label$266;
		label$267:;
		{
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 108) = (struct $8FBSYMBOL*)0u;
			*(int16*)((uint8*)PROC$1 + 104) = (int16)PARAMS$2;
			*(int16*)((uint8*)PROC$1 + 106) = (int16)PARAMS$2;
		}
		label$266:;
	}
	label$263:;
	label$262:;
	*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | STATS$1;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$273;
	{
		if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$275;
		{
			*(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 140) + 152) = *(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 140) + 152) + 1;
		}
		label$275:;
		label$274:;
		OVERRIDDEN$1 = (struct $8FBSYMBOL*)0u;
		if( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96) == (struct $8FBSYMBOL*)0u ) goto label$277;
		{
			if( (*(int32*)((uint8*)PROC$1 + 8) & 8) == 0 ) goto label$279;
			{
				struct $8FBSYMBOL* vr$90 = SYMBGETCOMPDTOR( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96) + 32) );
				OVERRIDDEN$1 = vr$90;
			}
			goto label$278;
			label$279:;
			if( (*(int32*)((uint8*)PROC$1 + 8) & 16) == 0 ) goto label$280;
			{
				struct $8FBSYMBOL* vr$97 = SYMBGETCOMPOPOVLHEAD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96) + 32), *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40) );
				OVERRIDDEN$1 = vr$97;
				struct $8FBSYMBOL* vr$100 = SYMBFINDOPOVLPROC( *($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40), OVERRIDDEN$1, PROC$1 );
				OVERRIDDEN$1 = vr$100;
			}
			goto label$278;
			label$280:;
			if( ID$1 == (uint8*)0u ) goto label$281;
			{
				struct $8FBSYMBOL* vr$105 = SYMBLOOKUPBYNAMEANDCLASS( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96) + 32), ID$1, 3, -((OPTIONS$1 & 1) != 0), -1 );
				OVERRIDDEN$1 = vr$105;
				LOOKUPOPTIONS$1 = 0;
				if( (*(int32*)((uint8*)PROC$1 + 8) & 32) == 0 ) goto label$283;
				{
					if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 0 ) goto label$285;
					{
						LOOKUPOPTIONS$1 = 1;
					}
					label$285:;
					label$284:;
				}
				label$283:;
				label$282:;
				struct $8FBSYMBOL* vr$110 = SYMBFINDOVERLOADPROC( OVERRIDDEN$1, PROC$1, LOOKUPOPTIONS$1 );
				OVERRIDDEN$1 = vr$110;
			}
			label$281:;
			label$278:;
			if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0u ) goto label$287;
			{
				if( (*(int32*)((uint8*)OVERRIDDEN$1 + 8) & 256) != 0 ) goto label$289;
				{
					OVERRIDDEN$1 = (struct $8FBSYMBOL*)0u;
				}
				label$289:;
				label$288:;
			}
			label$287:;
			label$286:;
		}
		label$277:;
		label$276:;
		if( OVERRIDDEN$1 == (struct $8FBSYMBOL*)0u ) goto label$291;
		{
			if( (*(int32*)((uint8*)OVERRIDDEN$1 + 8) & 512) == 0 ) goto label$293;
			{
				*(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 140) + 152) = *(int32*)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)PARENT$1 + 140) + 152) + -1;
			}
			label$293:;
			label$292:;
			int32 vr$120 = SYMBPROCGETVTABLEINDEX( OVERRIDDEN$1 );
			SYMBPROCSETVTABLEINDEX( PROC$1, vr$120 );
			*(struct $8FBSYMBOL**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 72) = OVERRIDDEN$1;
		}
		goto label$290;
		label$291:;
		{
			if( (*(int32*)((uint8*)PROC$1 + 8) & 256) == 0 ) goto label$295;
			{
				int32 vr$125 = SYMBCOMPADDVIRTUAL( PARENT$1 );
				SYMBPROCSETVTABLEINDEX( PROC$1, vr$125 );
			}
			label$295:;
			label$294:;
		}
		label$290:;
	}
	label$273:;
	label$272:;
	fb$result$1 = PROC$1;
	label$204:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCALCTYPESDIFF( int32 PARAM_DTYPE_IN$1, struct $8FBSYMBOL* PARAM_SUBTYPE$1, int32 PARAM_PTRCNT$1, int32 ARG_DTYPE_IN$1, struct $8FBSYMBOL* ARG_SUBTYPE$1, struct $7ASTNODE* ARG_EXPR$1, $12FB_PARAMMODE MODE$1 )
{
	int32 TMP$106$1;
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$424:;
	int32 ARG_DCLASS$1;
	int32 PARAM_DT$1;
	int32 ARG_DT$1;
	int32 PARAM_DTYPE$1;
	__builtin_memset( &PARAM_DTYPE$1, 0, 4 );
	int32 ARG_DTYPE$1;
	__builtin_memset( &ARG_DTYPE$1, 0, 4 );
	fb$result$1 = 0;
	PARAM_DTYPE$1 = PARAM_DTYPE_IN$1 & 511;
	ARG_DTYPE$1 = ARG_DTYPE_IN$1 & 511;
	if( (ARG_DTYPE$1 & 480) == 0 ) goto label$426;
	TMP$106$1 = 24;
	goto label$959;
	label$426:;
	TMP$106$1 = ARG_DTYPE$1 & 31;
	label$959:;
	ARG_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$106$1 * 28));
	{
		int32 TMP$107$2;
		uint32 TMP$108$2;
		if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$427;
		TMP$107$2 = 24;
		goto label$960;
		label$427:;
		TMP$107$2 = PARAM_DTYPE$1 & 31;
		label$960:;
		TMP$108$2 = *(uint32*)((uint8*)SYMB_DTYPETB$ + (TMP$107$2 * 28));
		goto label$429;
		label$430:;
		{
			{
				uint32 TMP$109$4;
				TMP$109$4 = (uint32)ARG_DCLASS$1;
				goto label$432;
				label$433:;
				{
					int32 TMP$110$5;
					int32 TMP$111$5;
					{
						if( PARAM_DTYPE$1 != 4 ) goto label$435;
						label$436:;
						{
							{
								if( ARG_DTYPE$1 != 4 ) goto label$438;
								label$439:;
								{
									fb$result$1 = 78;
									goto label$425;
								}
								goto label$437;
								label$438:;
								if( ARG_DTYPE$1 != 7 ) goto label$440;
								label$441:;
								{
									fb$result$1 = 26;
									goto label$425;
								}
								label$440:;
								label$437:;
							}
							fb$result$1 = 0;
							goto label$425;
						}
						goto label$434;
						label$435:;
						if( PARAM_DTYPE$1 != 7 ) goto label$442;
						label$443:;
						{
							{
								if( ARG_DTYPE$1 != 4 ) goto label$445;
								label$446:;
								{
									fb$result$1 = 26;
									goto label$425;
								}
								goto label$444;
								label$445:;
								if( ARG_DTYPE$1 != 7 ) goto label$447;
								label$448:;
								{
									fb$result$1 = 78;
									goto label$425;
								}
								label$447:;
								label$444:;
							}
							fb$result$1 = 0;
							goto label$425;
						}
						goto label$434;
						label$442:;
						if( PARAM_DTYPE$1 != 36 ) goto label$449;
						label$450:;
						{
							{
								if( ARG_DTYPE$1 != 4 ) goto label$452;
								label$453:;
								{
									fb$result$1 = 78;
									goto label$425;
								}
								goto label$451;
								label$452:;
								if( ARG_DTYPE$1 != 7 ) goto label$454;
								label$455:;
								{
									fb$result$1 = 26;
									goto label$425;
								}
								label$454:;
								label$451:;
							}
						}
						goto label$434;
						label$449:;
						if( PARAM_DTYPE$1 != 39 ) goto label$456;
						label$457:;
						{
							{
								if( ARG_DTYPE$1 != 4 ) goto label$459;
								label$460:;
								{
									fb$result$1 = 26;
									goto label$425;
								}
								goto label$458;
								label$459:;
								if( ARG_DTYPE$1 != 7 ) goto label$461;
								label$462:;
								{
									fb$result$1 = 78;
									goto label$425;
								}
								label$461:;
								label$458:;
							}
						}
						goto label$434;
						label$456:;
						{
							{
								if( ARG_DTYPE$1 == 4 ) goto label$466;
								label$467:;
								if( ARG_DTYPE$1 != 7 ) goto label$465;
								label$466:;
								{
									if( ARG_EXPR$1 != (struct $7ASTNODE*)0u ) goto label$469;
									{
										fb$result$1 = 0;
										goto label$425;
									}
									label$469:;
									label$468:;
									if( *(int32*)ARG_EXPR$1 == 20 ) goto label$471;
									{
										fb$result$1 = 0;
										goto label$425;
									}
									label$471:;
									label$470:;
								}
								label$465:;
								label$464:;
							}
						}
						label$463:;
						label$434:;
					}
					if( ARG_DTYPE$1 != 10 ) goto label$473;
					{
						ARG_DTYPE$1 = (ARG_DTYPE$1 & -512) | (*(int32*)(((uint8*)SYMB_DTYPETB$ + (ARG_DTYPE$1 * 28)) + 16) & 511);
					}
					label$473:;
					label$472:;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$475;
					{
						if( (ARG_DTYPE$1 & 480) != 0 ) goto label$477;
						{
							if( ARG_EXPR$1 != (struct $7ASTNODE*)0u ) goto label$479;
							{
								fb$result$1 = 0;
								goto label$425;
							}
							label$479:;
							label$478:;
							int32 vr$18 = ASTCHECKCONVNONPTRTOPTR( PARAM_DTYPE$1, ARG_DTYPE$1, ARG_EXPR$1, 0 );
							if( vr$18 == 0 ) goto label$481;
							{
								fb$result$1 = 0;
								goto label$425;
							}
							label$481:;
							label$480:;
							fb$result$1 = 1;
							goto label$425;
						}
						label$477:;
						label$476:;
						if( (-(PARAM_DTYPE$1 == 32) | -(ARG_DTYPE$1 == 32)) == 0 ) goto label$483;
						{
							fb$result$1 = 26;
							goto label$425;
						}
						label$483:;
						label$482:;
						$22FB_OVLPROC_MATCH_SCORE vr$22 = TYPECALCMATCH( PARAM_DTYPE$1, PARAM_SUBTYPE$1, MODE$1, ARG_DTYPE$1, ARG_SUBTYPE$1 );
						fb$result$1 = vr$22;
						goto label$425;
					}
					goto label$474;
					label$475:;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$484;
					{
						fb$result$1 = 0;
						goto label$425;
					}
					label$484:;
					label$474:;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$485;
					TMP$110$5 = 24;
					goto label$961;
					label$485:;
					TMP$110$5 = ARG_DTYPE$1 & 31;
					label$961:;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$486;
					TMP$111$5 = 24;
					goto label$962;
					label$486:;
					TMP$111$5 = PARAM_DTYPE$1 & 31;
					label$962:;
					fb$result$1 = -(*(int32*)(((uint8*)SYMB_DTYPEMATCHTB$ + (((TMP$110$5 << (4 & 31)) + TMP$111$5) << (2 & 31))) + -68)) + 26;
					goto label$425;
				}
				goto label$431;
				label$487:;
				{
					int32 TMP$112$5;
					int32 TMP$113$5;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$489;
					{
						fb$result$1 = 0;
						goto label$425;
					}
					label$489:;
					label$488:;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$490;
					TMP$112$5 = 24;
					goto label$963;
					label$490:;
					TMP$112$5 = ARG_DTYPE$1 & 31;
					label$963:;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$491;
					TMP$113$5 = 24;
					goto label$964;
					label$491:;
					TMP$113$5 = PARAM_DTYPE$1 & 31;
					label$964:;
					fb$result$1 = -(*(int32*)(((uint8*)SYMB_DTYPEMATCHTB$ + (((TMP$112$5 << (4 & 31)) + TMP$113$5) << (2 & 31))) + -68)) + 26;
					goto label$425;
				}
				goto label$431;
				label$492:;
				{
					{
						if( PARAM_DTYPE$1 == 4 ) goto label$495;
						label$496:;
						if( PARAM_DTYPE$1 != 36 ) goto label$494;
						label$495:;
						{
							fb$result$1 = 78;
							goto label$425;
						}
						goto label$493;
						label$494:;
						if( PARAM_DTYPE$1 == 7 ) goto label$498;
						label$499:;
						if( PARAM_DTYPE$1 != 39 ) goto label$497;
						label$498:;
						{
							fb$result$1 = 26;
							goto label$425;
						}
						label$497:;
						label$493:;
					}
				}
				goto label$431;
				label$432:;
				static const void* tmp$190[3] = {
					&&label$433,
					&&label$487,
					&&label$492,
				};
				if( TMP$109$4 > 2u ) goto label$431;
				goto *tmp$190[TMP$109$4 - 0u];
				label$431:;
			}
		}
		goto label$428;
		label$500:;
		{
			{
				uint32 TMP$114$4;
				TMP$114$4 = (uint32)ARG_DCLASS$1;
				goto label$502;
				label$503:;
				{
					int32 TMP$115$5;
					int32 TMP$116$5;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$505;
					{
						fb$result$1 = 0;
						goto label$425;
					}
					label$505:;
					label$504:;
					if( ARG_DTYPE$1 != 10 ) goto label$507;
					{
						ARG_DTYPE$1 = (ARG_DTYPE$1 & -512) | (*(int32*)(((uint8*)SYMB_DTYPETB$ + (ARG_DTYPE$1 * 28)) + 16) & 511);
					}
					label$507:;
					label$506:;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$508;
					TMP$115$5 = 24;
					goto label$965;
					label$508:;
					TMP$115$5 = ARG_DTYPE$1 & 31;
					label$965:;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$509;
					TMP$116$5 = 24;
					goto label$966;
					label$509:;
					TMP$116$5 = PARAM_DTYPE$1 & 31;
					label$966:;
					fb$result$1 = -(*(int32*)(((uint8*)SYMB_DTYPEMATCHTB$ + (((TMP$115$5 << (4 & 31)) + TMP$116$5) << (2 & 31))) + -68)) + 26;
					goto label$425;
				}
				goto label$501;
				label$510:;
				{
					int32 TMP$117$5;
					int32 TMP$118$5;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$511;
					TMP$117$5 = 24;
					goto label$967;
					label$511:;
					TMP$117$5 = ARG_DTYPE$1 & 31;
					label$967:;
					if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$512;
					TMP$118$5 = 24;
					goto label$968;
					label$512:;
					TMP$118$5 = PARAM_DTYPE$1 & 31;
					label$968:;
					fb$result$1 = -(*(int32*)(((uint8*)SYMB_DTYPEMATCHTB$ + (((TMP$117$5 << (4 & 31)) + TMP$118$5) << (2 & 31))) + -68)) + 26;
					goto label$425;
				}
				goto label$501;
				label$502:;
				static const void* tmp$191[2] = {
					&&label$503,
					&&label$510,
				};
				if( TMP$114$4 > 1u ) goto label$501;
				goto *tmp$191[TMP$114$4 - 0u];
				label$501:;
			}
		}
		goto label$428;
		label$513:;
		{
			{
				if( ARG_DCLASS$1 != 2 ) goto label$515;
				label$516:;
				{
					fb$result$1 = 78;
				}
				goto label$514;
				label$515:;
				if( ARG_DCLASS$1 != 0 ) goto label$517;
				label$518:;
				{
					{
						if( ARG_DTYPE$1 != 4 ) goto label$520;
						label$521:;
						{
							fb$result$1 = 78;
						}
						goto label$519;
						label$520:;
						if( ARG_DTYPE$1 != 7 ) goto label$522;
						label$523:;
						{
							fb$result$1 = 26;
						}
						label$522:;
						label$519:;
					}
				}
				label$517:;
				label$514:;
			}
		}
		goto label$428;
		label$429:;
		static const void* tmp$192[3] = {
			&&label$430,
			&&label$500,
			&&label$513,
		};
		if( TMP$108$2 > 2u ) goto label$428;
		goto *tmp$192[TMP$108$2 - 0u];
		label$428:;
	}
	label$425:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCHECKOVLPARAM( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* ARG_EXPR$1, int32 ARG_MODE$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$524:;
	int32 PARAM_DTYPE$1;
	int32 ARG_DTYPE$1;
	int32 PARAM_PTRCNT$1;
	int32 CONST_MATCHES$1;
	struct $8FBSYMBOL* PARAM_SUBTYPE$1;
	struct $8FBSYMBOL* ARG_SUBTYPE$1;
	struct $8FBSYMBOL* ARRAY$1;
	if( ARG_EXPR$1 != (struct $7ASTNODE*)0u ) goto label$527;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) == (struct $7ASTNODE*)0u ) goto label$529;
		{
			fb$result$1 = 78;
			goto label$525;
		}
		goto label$528;
		label$529:;
		{
			fb$result$1 = 0;
			goto label$525;
		}
		label$528:;
	}
	label$527:;
	label$526:;
	PARAM_DTYPE$1 = *(int32*)((uint8*)PARAM$1 + 28);
	PARAM_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
	PARAM_PTRCNT$1 = ((*(int32*)((uint8*)PARAM$1 + 28) & 511) & 480) >> (5 & 31);
	ARG_DTYPE$1 = *(int32*)((uint8*)ARG_EXPR$1 + 4);
	ARG_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)ARG_EXPR$1 + 8);
	{
		$12FB_PARAMMODE TMP$119$2;
		TMP$119$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
		if( TMP$119$2 != 3 ) goto label$531;
		label$532:;
		{
			if( ARG_MODE$1 == 3 ) goto label$534;
			{
				fb$result$1 = 0;
				goto label$525;
			}
			label$534:;
			label$533:;
			$22FB_OVLPROC_MATCH_SCORE MATCH$3;
			$22FB_OVLPROC_MATCH_SCORE vr$12 = TYPECALCMATCH( PARAM_DTYPE$1, PARAM_SUBTYPE$1, *(int32*)((uint8*)PARAM$1 + 56), ARG_DTYPE$1, ARG_SUBTYPE$1 );
			MATCH$3 = vr$12;
			if( MATCH$3 >= 52 ) goto label$536;
			{
				fb$result$1 = 0;
				goto label$525;
			}
			label$536:;
			label$535:;
			ARRAY$1 = *(struct $8FBSYMBOL**)((uint8*)ARG_EXPR$1 + 12);
			if( *(int32*)((uint8*)PARAM$1 + 68) <= 0 ) goto label$538;
			{
				if( (-(*(int32*)((uint8*)PARAM$1 + 68) != *(int32*)((uint8*)ARRAY$1 + 64)) & -(*(int32*)((uint8*)ARRAY$1 + 64) > 0)) == 0 ) goto label$540;
				{
					fb$result$1 = 0;
					goto label$525;
				}
				label$540:;
				label$539:;
			}
			label$538:;
			label$537:;
			fb$result$1 = MATCH$3;
			goto label$525;
		}
		goto label$530;
		label$531:;
		if( TMP$119$2 != 2 ) goto label$541;
		label$542:;
		{
			if( ARG_MODE$1 != 1 ) goto label$544;
			{
				int32 TMP$120$4;
				int32 TMP$121$4;
				if( (ARG_DTYPE$1 & 480) == 0 ) goto label$545;
				TMP$120$4 = 24;
				goto label$969;
				label$545:;
				TMP$120$4 = ARG_DTYPE$1 & 31;
				label$969:;
				if( (ARG_DTYPE$1 & 480) == 0 ) goto label$546;
				TMP$121$4 = 24;
				goto label$970;
				label$546:;
				TMP$121$4 = ARG_DTYPE$1 & 31;
				label$970:;
				if( (-(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$120$4 * 28)) != 0) | -(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$121$4 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 272))) == 0 ) goto label$548;
				{
					fb$result$1 = 0;
					goto label$525;
				}
				label$548:;
				label$547:;
				PARAM_DTYPE$1 = (((PARAM_DTYPE$1 & 31) | ((PARAM_DTYPE$1 & 480) + 32)) | ((PARAM_DTYPE$1 & 261632) << (1 & 31))) | (PARAM_DTYPE$1 & 32505856);
				PARAM_PTRCNT$1 = PARAM_PTRCNT$1 + 1;
			}
			label$544:;
			label$543:;
		}
		label$541:;
		label$530:;
	}
	if( ARG_MODE$1 != 3 ) goto label$550;
	{
		fb$result$1 = 0;
		goto label$525;
	}
	label$550:;
	label$549:;
	static int32 CAST_REC_CNT$1 = 0;
	static int32 CTOR_REC_CNT$1 = 0;
	if( (PARAM_DTYPE$1 & 511) != (ARG_DTYPE$1 & 511) ) goto label$552;
	{
		int32 BASELEVEL$2;
		BASELEVEL$2 = 0;
		$22FB_OVLPROC_MATCH_SCORE MATCH$2;
		MATCH$2 = 0;
		if( PARAM_SUBTYPE$1 != ARG_SUBTYPE$1 ) goto label$554;
		{
			MATCH$2 = 78;
		}
		goto label$553;
		label$554:;
		{
			{
				int32 TMP$122$4;
				TMP$122$4 = PARAM_DTYPE$1 & 31;
				if( TMP$122$4 != 20 ) goto label$556;
				label$557:;
				{
					int32 BASELEVEL$5;
					int32 vr$43 = SYMBGETUDTBASELEVEL( ARG_SUBTYPE$1, PARAM_SUBTYPE$1 );
					BASELEVEL$5 = vr$43;
					if( BASELEVEL$5 <= 0 ) goto label$559;
					{
						MATCH$2 = 78 - BASELEVEL$5;
					}
					label$559:;
					label$558:;
				}
				goto label$555;
				label$556:;
				if( TMP$122$4 != 22 ) goto label$560;
				label$561:;
				{
					int32 TMP$123$5;
					TMP$123$5 = 0;
					$22FB_OVLPROC_MATCH_SCORE vr$46 = SYMBCALCPROCMATCH( PARAM_SUBTYPE$1, ARG_SUBTYPE$1, &TMP$123$5 );
					MATCH$2 = vr$46;
				}
				label$560:;
				label$555:;
			}
		}
		label$553:;
		if( MATCH$2 <= 0 ) goto label$563;
		{
			if( (PARAM_DTYPE$1 & 261632) != (ARG_DTYPE$1 & 261632) ) goto label$565;
			{
				fb$result$1 = MATCH$2;
				goto label$525;
			}
			label$565:;
			label$564:;
			int32 vr$51 = SYMBCHECKCONSTASSIGNTOPLEVEL( PARAM_DTYPE$1, ARG_DTYPE$1, PARAM_SUBTYPE$1, ARG_SUBTYPE$1, *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56), &CONST_MATCHES$1 );
			if( vr$51 == 0 ) goto label$567;
			{
				if( MATCH$2 <= 52 ) goto label$569;
				{
					MATCH$2 = MATCH$2 + -26;
				}
				label$569:;
				label$568:;
				MATCH$2 = MATCH$2 + CONST_MATCHES$1;
				fb$result$1 = MATCH$2;
				goto label$525;
			}
			label$567:;
			label$566:;
			fb$result$1 = 0;
			goto label$525;
		}
		label$563:;
		label$562:;
	}
	label$552:;
	label$551:;
	{
		if( PARAM_DTYPE$1 != 20 ) goto label$571;
		label$572:;
		{
			if( CTOR_REC_CNT$1 != 0 ) goto label$574;
			{
				int32 ERR_NUM$4;
				struct $8FBSYMBOL* PROC$4;
				CTOR_REC_CNT$1 = CTOR_REC_CNT$1 + 1;
				struct $8FBSYMBOL* vr$56 = SYMBFINDCTOROVLPROC( PARAM_SUBTYPE$1, ARG_EXPR$1, ARG_MODE$1, ($9FB_ERRMSG*)&ERR_NUM$4 );
				PROC$4 = vr$56;
				CTOR_REC_CNT$1 = CTOR_REC_CNT$1 + -1;
				if( PROC$4 == (struct $8FBSYMBOL*)0u ) goto label$576;
				{
					fb$result$1 = 6;
					goto label$525;
				}
				label$576:;
				label$575:;
			}
			label$574:;
			label$573:;
			if( CAST_REC_CNT$1 != 0 ) goto label$578;
			{
				int32 ERR_NUM$4;
				struct $8FBSYMBOL* PROC$4;
				CAST_REC_CNT$1 = CAST_REC_CNT$1 + 1;
				struct $8FBSYMBOL* vr$60 = SYMBFINDCASTOVLPROC( PARAM_DTYPE$1, PARAM_SUBTYPE$1, ARG_EXPR$1, ($9FB_ERRMSG*)&ERR_NUM$4, 0 );
				PROC$4 = vr$60;
				CAST_REC_CNT$1 = CAST_REC_CNT$1 + -1;
				if( PROC$4 == (struct $8FBSYMBOL*)0u ) goto label$580;
				{
					fb$result$1 = 6;
					goto label$525;
				}
				label$580:;
				label$579:;
			}
			label$578:;
			label$577:;
			fb$result$1 = 0;
			goto label$525;
		}
		goto label$570;
		label$571:;
		if( PARAM_DTYPE$1 != 10 ) goto label$581;
		label$582:;
		{
			fb$result$1 = 0;
			goto label$525;
		}
		goto label$570;
		label$581:;
		{
			{
				if( ARG_DTYPE$1 != 20 ) goto label$585;
				label$586:;
				{
					if( CAST_REC_CNT$1 != 0 ) goto label$588;
					{
						int32 ERR_NUM$6;
						struct $8FBSYMBOL* PROC$6;
						CAST_REC_CNT$1 = CAST_REC_CNT$1 + 1;
						struct $8FBSYMBOL* vr$65 = SYMBFINDCASTOVLPROC( *(int32*)((uint8*)PARAM$1 + 28), PARAM_SUBTYPE$1, ARG_EXPR$1, ($9FB_ERRMSG*)&ERR_NUM$6, 0 );
						PROC$6 = vr$65;
						CAST_REC_CNT$1 = CAST_REC_CNT$1 + -1;
						if( PROC$6 == (struct $8FBSYMBOL*)0u ) goto label$590;
						{
							fb$result$1 = 6;
							goto label$525;
						}
						label$590:;
						label$589:;
					}
					label$588:;
					label$587:;
					fb$result$1 = 0;
					goto label$525;
				}
				label$585:;
				label$584:;
			}
		}
		label$583:;
		label$570:;
	}
	$22FB_OVLPROC_MATCH_SCORE vr$70 = HCALCTYPESDIFF( *(int32*)((uint8*)PARAM$1 + 28), PARAM_SUBTYPE$1, PARAM_PTRCNT$1, *(int32*)((uint8*)ARG_EXPR$1 + 4), ARG_SUBTYPE$1, ARG_EXPR$1, *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56) );
	fb$result$1 = vr$70;
	label$525:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE HCHECKCASTOVL( struct $8FBSYMBOL* PROC$1, int32 TO_DTYPE$1, struct $8FBSYMBOL* TO_SUBTYPE$1, int32 IS_EXPLICIT$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$696:;
	int32 PROC_DTYPE$1;
	struct $8FBSYMBOL* PROC_SUBTYPE$1;
	PROC_DTYPE$1 = *(int32*)((uint8*)PROC$1 + 28);
	PROC_SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32);
	if( (PROC_DTYPE$1 & 511) != (TO_DTYPE$1 & 511) ) goto label$699;
	{
		if( PROC_SUBTYPE$1 != TO_SUBTYPE$1 ) goto label$701;
		{
			if( PROC_DTYPE$1 != TO_DTYPE$1 ) goto label$703;
			{
				fb$result$1 = 78;
				goto label$697;
			}
			label$703:;
			label$702:;
			fb$result$1 = 52;
			goto label$697;
		}
		label$701:;
		label$700:;
		if( (PROC_DTYPE$1 & 480) == 0 ) goto label$705;
		{
			fb$result$1 = 0;
			goto label$697;
		}
		label$705:;
		label$704:;
	}
	label$699:;
	label$698:;
	if( IS_EXPLICIT$1 == 0 ) goto label$707;
	{
		fb$result$1 = 0;
		goto label$697;
	}
	label$707:;
	label$706:;
	{
		int32 TMP$131$2;
		int32 TMP$132$2;
		if( (PROC_DTYPE$1 & 480) == 0 ) goto label$708;
		TMP$131$2 = 24;
		goto label$971;
		label$708:;
		TMP$131$2 = PROC_DTYPE$1 & 31;
		label$971:;
		TMP$132$2 = TMP$131$2;
		if( TMP$132$2 == 20 ) goto label$711;
		label$712:;
		if( TMP$132$2 != 10 ) goto label$710;
		label$711:;
		{
			fb$result$1 = 0;
			goto label$697;
		}
		goto label$709;
		label$710:;
		{
			{
				int32 TMP$133$4;
				int32 TMP$134$4;
				if( (TO_DTYPE$1 & 480) == 0 ) goto label$714;
				TMP$133$4 = 24;
				goto label$972;
				label$714:;
				TMP$133$4 = TO_DTYPE$1 & 31;
				label$972:;
				TMP$134$4 = TMP$133$4;
				if( TMP$134$4 != 20 ) goto label$716;
				label$717:;
				{
					fb$result$1 = 0;
					goto label$697;
				}
				label$716:;
				label$715:;
			}
		}
		label$713:;
		label$709:;
	}
	$22FB_OVLPROC_MATCH_SCORE vr$14 = HCALCTYPESDIFF( PROC_DTYPE$1, PROC_SUBTYPE$1, ((*(int32*)((uint8*)PROC$1 + 28) & 511) & 480) >> (5 & 31), TO_DTYPE$1, TO_SUBTYPE$1, (struct $7ASTNODE*)0u, 0 );
	fb$result$1 = vr$14;
	label$697:;
	return fb$result$1;
}

static void HDELPARAMS( struct $8FBSYMBOL* PROC$1 )
{
	label$757:;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* NXT$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	label$759:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$760;
	{
		NXT$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		SYMBFREESYMBOL( PARAM$1 );
		PARAM$1 = NXT$1;
	}
	goto label$759;
	label$760:;
	label$758:;
}

static struct $20FB_GLOBCTORLIST_ITEM* HADDTOGLOBCTORLIST( struct $15FB_GLOBCTORLIST* LIST$1, struct $8FBSYMBOL* PROC$1 )
{
	struct $20FB_GLOBCTORLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$765:;
	struct $20FB_GLOBCTORLIST_ITEM* N$1;
	void* vr$3 = LISTNEWNODE( (struct $5TLIST*)((uint8*)LIST$1 + 8) );
	N$1 = (struct $20FB_GLOBCTORLIST_ITEM*)vr$3;
	if( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 4) == (struct $20FB_GLOBCTORLIST_ITEM*)0u ) goto label$768;
	{
		*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 4) + 4) = N$1;
	}
	goto label$767;
	label$768:;
	{
		*(struct $20FB_GLOBCTORLIST_ITEM**)LIST$1 = N$1;
	}
	label$767:;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)N$1 + 4) = (struct $20FB_GLOBCTORLIST_ITEM*)0u;
	*(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)LIST$1 + 4) = N$1;
	*(struct $8FBSYMBOL**)N$1 = PROC$1;
	fb$result$1 = N$1;
	label$766:;
	return fb$result$1;
}

static $22FB_OVLPROC_MATCH_SCORE SYMBCALCPARAMMATCH( struct $8FBSYMBOL* L$1, struct $8FBSYMBOL* R$1 )
{
	$22FB_OVLPROC_MATCH_SCORE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$773:;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	$22FB_OVLPROC_MATCH_SCORE vr$6 = TYPECALCMATCH( *(int32*)((uint8*)L$1 + 28), *(struct $8FBSYMBOL**)((uint8*)L$1 + 32), *(int32*)((uint8*)L$1 + 56), *(int32*)((uint8*)R$1 + 28), *(struct $8FBSYMBOL**)((uint8*)R$1 + 32) );
	MATCH$1 = vr$6;
	if( MATCH$1 != 0 ) goto label$776;
	{
		fb$result$1 = 0;
		goto label$774;
	}
	label$776:;
	label$775:;
	if( *(int32*)((uint8*)L$1 + 56) == *(int32*)((uint8*)R$1 + 56) ) goto label$778;
	{
		fb$result$1 = 0;
		goto label$774;
	}
	label$778:;
	label$777:;
	if( *(int32*)((uint8*)L$1 + 56) != 3 ) goto label$780;
	{
		if( *(int32*)((uint8*)L$1 + 68) == *(int32*)((uint8*)R$1 + 68) ) goto label$782;
		{
			fb$result$1 = 0;
			goto label$774;
		}
		label$782:;
		label$781:;
	}
	label$780:;
	label$779:;
	fb$result$1 = MATCH$1;
	label$774:;
	return fb$result$1;
}

static void HSUBORFUNCTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$843:;
	if( (*(int32*)((uint8*)PROC$1 + 28) & 511) != 0 ) goto label$846;
	{
		FBSTRING TMP$139$2;
		__builtin_memset( &TMP$139$2, 0, 12 );
		FBSTRING* vr$4 = fb_StrConcat( &TMP$139$2, (void*)S$1, -1, (void*)"sub", 4 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$4, -1, 0 );
	}
	goto label$845;
	label$846:;
	{
		FBSTRING TMP$141$2;
		__builtin_memset( &TMP$141$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$141$2, (void*)S$1, -1, (void*)"function", 9 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$7, -1, 0 );
	}
	label$845:;
	label$844:;
}

static void HPROCMODETOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$847:;
	if( (-((*(int32*)((uint8*)PROC$1 + 8) & 4) != 0) | -((*(int32*)((uint8*)PROC$1 + 8) & 8) != 0)) == 0 ) goto label$850;
	{
		{
			$11FB_FUNCMODE TMP$142$3;
			TMP$142$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
			if( TMP$142$3 == 1 ) goto label$853;
			label$854:;
			if( TMP$142$3 != 2 ) goto label$852;
			label$853:;
			{
				FBSTRING TMP$144$4;
				__builtin_memset( &TMP$144$4, 0, 12 );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$144$4, (void*)S$1, -1, (void*)" stdcall", 9 );
				fb_StrAssign( (void*)S$1, -1, (void*)vr$10, -1, 0 );
			}
			goto label$851;
			label$852:;
			if( TMP$142$3 != 4 ) goto label$855;
			label$856:;
			{
				FBSTRING TMP$146$4;
				__builtin_memset( &TMP$146$4, 0, 12 );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$146$4, (void*)S$1, -1, (void*)" pascal", 8 );
				fb_StrAssign( (void*)S$1, -1, (void*)vr$13, -1, 0 );
			}
			label$855:;
			label$851:;
		}
	}
	goto label$849;
	label$850:;
	{
		{
			$11FB_FUNCMODE TMP$147$3;
			TMP$147$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 84);
			if( TMP$147$3 == 1 ) goto label$859;
			label$860:;
			if( TMP$147$3 != 2 ) goto label$858;
			label$859:;
			{
				{
					$11FB_FUNCMODE TMP$148$5;
					TMP$148$5 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 252);
					if( TMP$148$5 == 1 ) goto label$863;
					label$864:;
					if( TMP$148$5 != 2 ) goto label$862;
					label$863:;
					{
					}
					goto label$861;
					label$862:;
					{
						FBSTRING TMP$149$6;
						__builtin_memset( &TMP$149$6, 0, 12 );
						FBSTRING* vr$17 = fb_StrConcat( &TMP$149$6, (void*)S$1, -1, (void*)" stdcall", 9 );
						fb_StrAssign( (void*)S$1, -1, (void*)vr$17, -1, 0 );
					}
					label$865:;
					label$861:;
				}
			}
			goto label$857;
			label$858:;
			if( TMP$147$3 != 4 ) goto label$866;
			label$867:;
			{
				if( *(int32*)((uint8*)&ENV$ + 252) == 4 ) goto label$869;
				{
					FBSTRING TMP$150$5;
					__builtin_memset( &TMP$150$5, 0, 12 );
					FBSTRING* vr$20 = fb_StrConcat( &TMP$150$5, (void*)S$1, -1, (void*)" pascal", 8 );
					fb_StrAssign( (void*)S$1, -1, (void*)vr$20, -1, 0 );
				}
				label$869:;
				label$868:;
			}
			goto label$857;
			label$866:;
			if( TMP$147$3 != 3 ) goto label$870;
			label$871:;
			{
				if( *(int32*)((uint8*)&ENV$ + 252) == 3 ) goto label$873;
				{
					FBSTRING TMP$152$5;
					__builtin_memset( &TMP$152$5, 0, 12 );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$152$5, (void*)S$1, -1, (void*)" cdecl", 7 );
					fb_StrAssign( (void*)S$1, -1, (void*)vr$23, -1, 0 );
				}
				label$873:;
				label$872:;
			}
			label$870:;
			label$857:;
		}
	}
	label$849:;
	label$848:;
}

static void HPARAMSTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING TMP$158$1;
	FBSTRING TMP$171$1;
	label$882:;
	__builtin_memset( &TMP$158$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$158$1, (void*)S$1, -1, (void*)"(", 2 );
	fb_StrAssign( (void*)S$1, -1, (void*)vr$2, -1, 0 );
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	if( (-(PARAM$1 != (struct $8FBSYMBOL*)0u) & -((*(int32*)((uint8*)PROC$1 + 8) & 2) != 0)) == 0 ) goto label$885;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$885:;
	label$884:;
	label$886:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$887;
	{
		$12FB_PARAMMODE PARAMMODE$2;
		PARAMMODE$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
		{
			if( PARAMMODE$2 == 1 ) goto label$890;
			label$891:;
			if( PARAMMODE$2 == 2 ) goto label$890;
			label$892:;
			if( PARAMMODE$2 != 3 ) goto label$889;
			label$890:;
			{
				FBSTRING TMP$165$4;
				FBSTRING TMP$166$4;
				{
					if( PARAMMODE$2 == 1 ) goto label$895;
					label$896:;
					if( PARAMMODE$2 != 2 ) goto label$894;
					label$895:;
					{
						int32 vr$14 = SYMBGETDEFAULTPARAMMODE( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
						if( (-(*(int32*)((uint8*)&ENV$ + 136) == 0) & -(vr$14 != PARAMMODE$2)) == 0 ) goto label$898;
						{
							if( PARAMMODE$2 != 1 ) goto label$900;
							{
								FBSTRING TMP$160$8;
								__builtin_memset( &TMP$160$8, 0, 12 );
								FBSTRING* vr$19 = fb_StrConcat( &TMP$160$8, (void*)S$1, -1, (void*)"byval ", 7 );
								fb_StrAssign( (void*)S$1, -1, (void*)vr$19, -1, 0 );
							}
							goto label$899;
							label$900:;
							{
								FBSTRING TMP$162$8;
								__builtin_memset( &TMP$162$8, 0, 12 );
								FBSTRING* vr$22 = fb_StrConcat( &TMP$162$8, (void*)S$1, -1, (void*)"byref ", 7 );
								fb_StrAssign( (void*)S$1, -1, (void*)vr$22, -1, 0 );
							}
							label$899:;
						}
						label$898:;
						label$897:;
					}
					goto label$893;
					label$894:;
					if( PARAMMODE$2 != 3 ) goto label$901;
					label$902:;
					{
						FBSTRING TMP$163$6;
						FBSTRING* vr$24 = HDUMPDYNAMICARRAYDIMENSIONS( *(int32*)((uint8*)PARAM$1 + 68) );
						__builtin_memset( &TMP$163$6, 0, 12 );
						FBSTRING* vr$27 = fb_StrConcat( &TMP$163$6, (void*)S$1, -1, (void*)vr$24, -1 );
						fb_StrAssign( (void*)S$1, -1, (void*)vr$27, -1, 0 );
					}
					label$901:;
					label$893:;
				}
				FBSTRING* vr$30 = SYMBTYPETOSTR( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), 0ll, 0 );
				__builtin_memset( &TMP$165$4, 0, 12 );
				FBSTRING* vr$33 = fb_StrConcat( &TMP$165$4, (void*)"as ", 4, (void*)vr$30, -1 );
				__builtin_memset( &TMP$166$4, 0, 12 );
				FBSTRING* vr$36 = fb_StrConcat( &TMP$166$4, (void*)S$1, -1, (void*)vr$33, -1 );
				fb_StrAssign( (void*)S$1, -1, (void*)vr$36, -1, 0 );
			}
			goto label$888;
			label$889:;
			if( PARAMMODE$2 != 4 ) goto label$903;
			label$904:;
			{
				FBSTRING TMP$168$4;
				__builtin_memset( &TMP$168$4, 0, 12 );
				FBSTRING* vr$39 = fb_StrConcat( &TMP$168$4, (void*)S$1, -1, (void*)"...", 4 );
				fb_StrAssign( (void*)S$1, -1, (void*)vr$39, -1, 0 );
			}
			label$903:;
			label$888:;
		}
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$906;
		{
			FBSTRING TMP$169$3;
			__builtin_memset( &TMP$169$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$169$3, (void*)S$1, -1, (void*)", ", 3 );
			fb_StrAssign( (void*)S$1, -1, (void*)vr$43, -1, 0 );
		}
		label$906:;
		label$905:;
	}
	goto label$886;
	label$887:;
	__builtin_memset( &TMP$171$1, 0, 12 );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$171$1, (void*)S$1, -1, (void*)")", 2 );
	fb_StrAssign( (void*)S$1, -1, (void*)vr$46, -1, 0 );
	label$883:;
}

static void HRESULTTOSTR( FBSTRING* S$1, struct $8FBSYMBOL* PROC$1 )
{
	label$907:;
	if( (*(int32*)((uint8*)PROC$1 + 28) & 511) == 0 ) goto label$910;
	{
		FBSTRING TMP$175$2;
		FBSTRING TMP$176$2;
		if( (*(int32*)((uint8*)PROC$1 + 8) & 2048) == 0 ) goto label$912;
		{
			FBSTRING TMP$173$3;
			__builtin_memset( &TMP$173$3, 0, 12 );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$173$3, (void*)S$1, -1, (void*)" byref", 7 );
			fb_StrAssign( (void*)S$1, -1, (void*)vr$6, -1, 0 );
		}
		label$912:;
		label$911:;
		FBSTRING* vr$9 = SYMBTYPETOSTR( *(int32*)((uint8*)PROC$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32), 0ll, 0 );
		__builtin_memset( &TMP$175$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$175$2, (void*)" as ", 5, (void*)vr$9, -1 );
		__builtin_memset( &TMP$176$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$176$2, (void*)S$1, -1, (void*)vr$12, -1 );
		fb_StrAssign( (void*)S$1, -1, (void*)vr$15, -1, 0 );
	}
	label$910:;
	label$909:;
	label$908:;
}
