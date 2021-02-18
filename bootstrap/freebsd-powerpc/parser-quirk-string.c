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
typedef int32 $13AST_NODECLASS;
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
struct $7ASTNODE;
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
typedef int32 $8FB_TOKEN;
typedef int32 $8LEXCHECK;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 120 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int32, void*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
uint32* fb_WstrConcatWA( uint32*, void*, int32 );
uint32* fb_WstrConcatAssign( uint32*, int32, uint32* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
uint32 fb_ASC( FBSTRING*, int32 );
uint32 fb_WstrAsc( uint32*, int32 );
FBSTRING* fb_CHR( int32, ... );
uint32* fb_WstrChr( int32, ... );
FBSTRING* fb_OCT_i( uint32 );
double fb_CVD( FBSTRING* );
float fb_CVS( FBSTRING* );
int16 fb_CVSHORT( FBSTRING* );
int32 fb_CVL( FBSTRING* );
int64 fb_CVLONGINT( FBSTRING* );
static void fb_ctor__parserzquirkzstring( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
int32 ASTCONSTEQZERO( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
uint8* HUNESCAPE( uint8* );
uint32* HUNESCAPEW( uint32* );
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CGTINPARENSONLYEXPR( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64, int32 );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASSIGNMID( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLSTRLRSET( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRFILL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRASC( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLSTRCHR( int32, struct $7FBARRAYIP7ASTNODEE*, int32 );
struct $7ASTNODE* RTLSTRINSTR( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRINSTRREV( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRRTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRLTRIM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRCASE( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLMEMCOPYCLEAR( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* CSTRCHR( int32 );
static struct $7ASTNODE* CSTRASC( void );
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

int32 CMIDSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	struct $7ASTNODE* EXPR4$1;
	fb$result$1 = 0;
	LEXSKIPTOKEN( 8192 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$13;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$12;
	label$13:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$12:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$15;
	{
		goto label$11;
	}
	label$15:;
	label$14:;
	int32 vr$3 = ASTISCONSTANT( EXPR1$1 );
	if( vr$3 == 0 ) goto label$17;
	{
		ERRREPORT( 119, -1, (uint8*)0u );
	}
	label$17:;
	label$16:;
	int32 vr$4 = LEXGETTOKEN( 0 );
	if( vr$4 == 44 ) goto label$19;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$18;
	label$19:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$18:;
	struct $7ASTNODE* vr$5 = HMATCHEXPR( 8 );
	EXPR2$1 = vr$5;
	if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$21;
	{
		goto label$11;
	}
	label$21:;
	label$20:;
	int32 vr$6 = HMATCH( 44, 0 );
	if( vr$6 == 0 ) goto label$23;
	{
		struct $7ASTNODE* vr$7 = HMATCHEXPR( 8 );
		EXPR3$1 = vr$7;
		if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$25;
		{
			goto label$11;
		}
		label$25:;
		label$24:;
	}
	goto label$22;
	label$23:;
	{
		struct $7ASTNODE* vr$8 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR3$1 = vr$8;
	}
	label$22:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$27;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$26;
	label$27:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$26:;
	int32 vr$10 = CASSIGNTOKEN(  );
	if( vr$10 != 0 ) goto label$29;
	{
		ERRREPORT( 10, 0, (uint8*)0u );
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$11 = HMATCHEXPR( 17 );
	EXPR4$1 = vr$11;
	if( EXPR4$1 != (struct $7ASTNODE*)0u ) goto label$31;
	{
		goto label$11;
	}
	label$31:;
	label$30:;
	struct $7ASTNODE* vr$12 = RTLSTRASSIGNMID( EXPR1$1, EXPR2$1, EXPR3$1, EXPR4$1 );
	fb$result$1 = -(vr$12 != (struct $7ASTNODE*)0u);
	label$11:;
	return fb$result$1;
}

int32 CLRSETSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$32:;
	struct $7ASTNODE* DSTEXPR$1;
	struct $7ASTNODE* SRCEXPR$1;
	int32 DTYPE1$1;
	int32 DTYPE2$1;
	struct $8FBSYMBOL* DST$1;
	struct $8FBSYMBOL* SRC$1;
	int32 IS_RSET$1;
	fb$result$1 = 0;
	IS_RSET$1 = -(TK$1 == 417);
	LEXSKIPTOKEN( 2048 );
	struct $7ASTNODE* vr$2 = CVARORDEREF( 0 );
	DSTEXPR$1 = vr$2;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$35;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		struct $8FBSYMBOL* vr$3 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$4 = ASTNEWVAR( vr$3, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		DSTEXPR$1 = vr$4;
	}
	label$35:;
	label$34:;
	ASTTRYOVLSTRINGCONV( &DSTEXPR$1 );
	DTYPE1$1 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
	{
		uint32 TMP$94$2;
		TMP$94$2 = (uint32)DTYPE1$1;
		goto label$37;
		label$38:;
		{
			if( (IS_RSET$1 & -(DTYPE1$1 == 20)) == 0 ) goto label$40;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				IS_RSET$1 = 0;
			}
			label$40:;
			label$39:;
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
			if( SYM$3 != (struct $8FBSYMBOL*)0u ) goto label$42;
			{
				if( *(int32*)DSTEXPR$1 != 20 ) goto label$44;
				{
					struct $8FBSYMBOL* TMP$95$5;
					if( *(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 64) == (struct $7ASTNODE*)0u ) goto label$45;
					TMP$95$5 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)DSTEXPR$1 + 64) + 12);
					goto label$67;
					label$45:;
					TMP$95$5 = (struct $8FBSYMBOL*)0u;
					label$67:;
					SYM$3 = TMP$95$5;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			if( SYM$3 != (struct $8FBSYMBOL*)0u ) goto label$47;
			{
				ERRREPORT( 14, -1, (uint8*)0u );
			}
			goto label$46;
			label$47:;
			{
				if( (-((*(int32*)((uint8*)SYM$3 + 4) & 2048) != 0) | -((*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) != 0)) == 0 ) goto label$49;
				{
					ERRREPORT( 119, -1, (uint8*)0u );
				}
				label$49:;
				label$48:;
			}
			label$46:;
		}
		goto label$36;
		label$50:;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( DSTEXPR$1 );
			struct $8FBSYMBOL* vr$22 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$23 = ASTNEWVAR( vr$22, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			DSTEXPR$1 = vr$23;
		}
		goto label$36;
		label$37:;
		static const void* tmp$97[17] = {
			&&label$38,
			&&label$50,
			&&label$50,
			&&label$38,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$50,
			&&label$38,
			&&label$38,
			&&label$50,
			&&label$38,
		};
		if( (TMP$94$2 - 4u) > 16u ) goto label$50;
		goto *tmp$97[TMP$94$2 - 4u];
		label$36:;
	}
	int32 vr$24 = HMATCH( 44, 0 );
	if( vr$24 != 0 ) goto label$52;
	{
		int32 vr$25 = CASSIGNTOKEN(  );
		if( vr$25 != 0 ) goto label$54;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		label$54:;
		label$53:;
	}
	label$52:;
	label$51:;
	struct $7ASTNODE* vr$26 = HMATCHEXPR( DTYPE1$1 );
	SRCEXPR$1 = vr$26;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$56;
	{
		goto label$33;
	}
	label$56:;
	label$55:;
	ASTTRYOVLSTRINGCONV( &SRCEXPR$1 );
	DTYPE2$1 = *(int32*)((uint8*)SRCEXPR$1 + 4) & 511;
	{
		uint32 TMP$96$2;
		TMP$96$2 = (uint32)DTYPE2$1;
		goto label$58;
		label$59:;
		{
		}
		goto label$57;
		label$60:;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			struct $8FBSYMBOL* vr$30 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$31 = ASTNEWVAR( vr$30, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			SRCEXPR$1 = vr$31;
		}
		goto label$57;
		label$58:;
		static const void* tmp$98[17] = {
			&&label$59,
			&&label$60,
			&&label$60,
			&&label$59,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$60,
			&&label$59,
			&&label$59,
			&&label$60,
			&&label$59,
		};
		if( (TMP$96$2 - 4u) > 16u ) goto label$60;
		goto *tmp$98[TMP$96$2 - 4u];
		label$57:;
	}
	if( (-(DTYPE1$1 == 20) | -(DTYPE2$1 == 20)) == 0 ) goto label$62;
	{
		if( DTYPE1$1 == DTYPE2$1 ) goto label$64;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1;
			goto label$33;
		}
		label$64:;
		label$63:;
		DST$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
		SRC$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 12);
		if( (-(DST$1 == (struct $8FBSYMBOL*)0u) | -(SRC$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$66;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			ASTDELTREE( SRCEXPR$1 );
			ASTDELTREE( DSTEXPR$1 );
			fb$result$1 = -1;
			goto label$33;
		}
		label$66:;
		label$65:;
		int32 vr$44 = RTLMEMCOPYCLEAR( DSTEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)DST$1 + 32) + 40), SRCEXPR$1, *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SRC$1 + 32) + 40) );
		fb$result$1 = vr$44;
	}
	goto label$61;
	label$62:;
	{
		int32 vr$45 = RTLSTRLRSET( DSTEXPR$1, SRCEXPR$1, IS_RSET$1 );
		fb$result$1 = vr$45;
	}
	label$61:;
	label$33:;
	return fb$result$1;
}

struct $7ASTNODE* CCVXFUNCT( $8FB_TOKEN TK$1 )
{
	int32 TMP$112$1;
	int32 TMP$115$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	LEXSKIPTOKEN( 2048 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = -2147483648u;
	if( TK$1 != 424 ) goto label$141;
	int32 vr$1 = HMATCH( 301, 0 );
	TMP$112$1 = -(vr$1 != 0);
	goto label$224;
	label$141:;
	TMP$112$1 = 0;
	label$224:;
	if( TMP$112$1 == 0 ) goto label$143;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8 );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$145;
		{
			LGT$2 = 0ll;
			label$145:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0 );
		DTYPE$1 = vr$5;
		int32 vr$6 = HMATCH( 300, 0 );
		if( vr$6 != 0 ) goto label$147;
		{
			ERRREPORT( 309, 0, (uint8*)0u );
		}
		label$147:;
		label$146:;
	}
	label$143:;
	label$142:;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 == 40 ) goto label$149;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$148;
	label$149:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$148:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$151;
	{
		goto label$140;
	}
	label$151:;
	label$150:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$153;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$152;
	label$153:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$152:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0u;
	int32 IS_STR$1;
	IS_STR$1 = 0;
	{
		int32 TMP$113$2;
		TMP$113$2 = *(int32*)((uint8*)EXPR1$1 + 4) & 511;
		if( TMP$113$2 != 4 ) goto label$155;
		label$156:;
		{
			struct $8FBSYMBOL* vr$12 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$12;
			IS_STR$1 = -1;
		}
		goto label$154;
		label$155:;
		if( TMP$113$2 == 17 ) goto label$158;
		label$159:;
		if( TMP$113$2 == 18 ) goto label$158;
		label$160:;
		if( TMP$113$2 != 7 ) goto label$157;
		label$158:;
		{
			IS_STR$1 = -1;
		}
		label$157:;
		label$154:;
	}
	int32 ALLOWCONST$1;
	ALLOWCONST$1 = -1;
	$11FB_DATATYPE FUNCTYPE$1;
	{
		uint32 TMP$114$2;
		TMP$114$2 = (uint32)TK$1;
		goto label$162;
		label$163:;
		{
			FUNCTYPE$1 = 16;
			ALLOWCONST$1 = 0;
		}
		goto label$161;
		label$164:;
		{
			FUNCTYPE$1 = 15;
			ALLOWCONST$1 = 0;
		}
		goto label$161;
		label$165:;
		{
			if( DTYPE$1 == -2147483648u ) goto label$167;
			{
				FUNCTYPE$1 = DTYPE$1;
			}
			goto label$166;
			label$167:;
			{
				FUNCTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 892);
			}
			label$166:;
		}
		goto label$161;
		label$168:;
		{
			FUNCTYPE$1 = 11;
		}
		goto label$161;
		label$169:;
		{
			FUNCTYPE$1 = 5;
		}
		goto label$161;
		label$170:;
		{
			FUNCTYPE$1 = 13;
		}
		goto label$161;
		label$162:;
		static const void* tmp$131[5] = {
			&&label$163,
			&&label$164,
			&&label$165,
			&&label$168,
			&&label$169,
		};
		if( (TMP$114$2 - 422u) > 4u ) goto label$170;
		goto *tmp$131[TMP$114$2 - 422u];
		label$161:;
	}
	uint8* ZS$1;
	int32 ZSLEN$1;
	if( (-(ALLOWCONST$1 != 0) & -(LITSYM$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$172;
	{
		uint8* vr$17 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 56) );
		ZS$1 = vr$17;
		int32 vr$18 = fb_StrLen( (void*)ZS$1, 0 );
		ZSLEN$1 = vr$18;
	}
	goto label$171;
	label$172:;
	{
		ZS$1 = (uint8*)0u;
		ZSLEN$1 = 0;
	}
	label$171:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	if( IS_STR$1 != 0 ) goto label$173;
	TMP$115$1 = -(FUNCTYPE$1 == 5);
	goto label$225;
	label$173:;
	TMP$115$1 = -1;
	label$225:;
	if( TMP$115$1 == 0 ) goto label$175;
	{
		int32 TMP$116$2;
		if( (FUNCTYPE$1 & 480) == 0 ) goto label$176;
		TMP$116$2 = 24;
		goto label$226;
		label$176:;
		TMP$116$2 = FUNCTYPE$1 & 31;
		label$226:;
		if( ZSLEN$1 < *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$116$2 * 28)) + 4) ) goto label$178;
		{
			{
				if( FUNCTYPE$1 != 16 ) goto label$180;
				label$181:;
				{
					FBSTRING* vr$23 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					double vr$24 = fb_CVD( (FBSTRING*)vr$23 );
					struct $7ASTNODE* vr$25 = ASTNEWCONSTF( vr$24, 16 );
					FUNCEXPR$1 = vr$25;
				}
				goto label$179;
				label$180:;
				if( FUNCTYPE$1 != 15 ) goto label$182;
				label$183:;
				{
					FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
					float vr$27 = fb_CVS( (FBSTRING*)vr$26 );
					struct $7ASTNODE* vr$29 = ASTNEWCONSTF( (double)vr$27, 15 );
					FUNCEXPR$1 = vr$29;
				}
				goto label$179;
				label$182:;
				{
					{
						int32 TMP$117$6;
						int32 TMP$118$6;
						if( (FUNCTYPE$1 & 480) == 0 ) goto label$185;
						TMP$117$6 = 24;
						goto label$227;
						label$185:;
						TMP$117$6 = FUNCTYPE$1 & 31;
						label$227:;
						TMP$118$6 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$117$6 * 28)) + 4);
						if( TMP$118$6 != 2 ) goto label$187;
						label$188:;
						{
							FBSTRING* vr$33 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int16 vr$34 = fb_CVSHORT( (FBSTRING*)vr$33 );
							struct $7ASTNODE* vr$36 = ASTNEWCONSTI( (int64)vr$34, 5, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$36;
						}
						goto label$186;
						label$187:;
						if( TMP$118$6 != 4 ) goto label$189;
						label$190:;
						{
							FBSTRING* vr$37 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int32 vr$38 = fb_CVL( (FBSTRING*)vr$37 );
							struct $7ASTNODE* vr$40 = ASTNEWCONSTI( (int64)vr$38, FUNCTYPE$1, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$40;
						}
						goto label$186;
						label$189:;
						{
							FBSTRING* vr$41 = fb_StrAllocTempDescZ( (uint8*)ZS$1 );
							int64 vr$42 = fb_CVLONGINT( (FBSTRING*)vr$41 );
							struct $7ASTNODE* vr$43 = ASTNEWCONSTI( vr$42, FUNCTYPE$1, (struct $8FBSYMBOL*)0u );
							FUNCEXPR$1 = vr$43;
						}
						label$191:;
						label$186:;
					}
				}
				label$184:;
				label$179:;
			}
			ASTDELNODE( EXPR1$1 );
		}
		goto label$177;
		label$178:;
		{
			{
				if( FUNCTYPE$1 != 16 ) goto label$193;
				label$194:;
				{
					struct $8FBSYMBOL* vr$44 = RTLPROCLOOKUP( (uint8*)"fb_CVD", 37 );
					struct $7ASTNODE* vr$45 = ASTNEWCALL( vr$44, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$45;
				}
				goto label$192;
				label$193:;
				if( FUNCTYPE$1 != 15 ) goto label$195;
				label$196:;
				{
					struct $8FBSYMBOL* vr$46 = RTLPROCLOOKUP( (uint8*)"fb_CVS", 38 );
					struct $7ASTNODE* vr$47 = ASTNEWCALL( vr$46, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$47;
				}
				goto label$192;
				label$195:;
				{
					{
						int32 TMP$121$6;
						int32 TMP$122$6;
						if( (FUNCTYPE$1 & 480) == 0 ) goto label$198;
						TMP$121$6 = 24;
						goto label$228;
						label$198:;
						TMP$121$6 = FUNCTYPE$1 & 31;
						label$228:;
						TMP$122$6 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$121$6 * 28)) + 4);
						if( TMP$122$6 != 2 ) goto label$200;
						label$201:;
						{
							struct $8FBSYMBOL* vr$51 = RTLPROCLOOKUP( (uint8*)"fb_CVSHORT", 40 );
							struct $7ASTNODE* vr$52 = ASTNEWCALL( vr$51, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$52;
						}
						goto label$199;
						label$200:;
						if( TMP$122$6 != 4 ) goto label$202;
						label$203:;
						{
							struct $8FBSYMBOL* vr$53 = RTLPROCLOOKUP( (uint8*)"fb_CVL", 39 );
							struct $7ASTNODE* vr$54 = ASTNEWCALL( vr$53, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$54;
						}
						goto label$199;
						label$202:;
						{
							struct $8FBSYMBOL* vr$55 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINT", 41 );
							struct $7ASTNODE* vr$56 = ASTNEWCALL( vr$55, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$56;
						}
						label$204:;
						label$199:;
					}
				}
				label$197:;
				label$192:;
			}
			struct $7ASTNODE* vr$57 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
			if( vr$57 != (struct $7ASTNODE*)0u ) goto label$206;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$206:;
			label$205:;
		}
		label$177:;
	}
	goto label$174;
	label$175:;
	{
		{
			if( FUNCTYPE$1 != 16 ) goto label$208;
			label$209:;
			{
				struct $8FBSYMBOL* vr$58 = RTLPROCLOOKUP( (uint8*)"fb_CVDFROMLONGINT", 42 );
				struct $7ASTNODE* vr$59 = ASTNEWCALL( vr$58, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$59;
			}
			goto label$207;
			label$208:;
			if( FUNCTYPE$1 != 15 ) goto label$210;
			label$211:;
			{
				struct $8FBSYMBOL* vr$60 = RTLPROCLOOKUP( (uint8*)"fb_CVSFROML", 43 );
				struct $7ASTNODE* vr$61 = ASTNEWCALL( vr$60, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$61;
			}
			goto label$207;
			label$210:;
			{
				int32 TMP$128$4;
				if( (FUNCTYPE$1 & 480) == 0 ) goto label$213;
				TMP$128$4 = 24;
				goto label$229;
				label$213:;
				TMP$128$4 = FUNCTYPE$1 & 31;
				label$229:;
				if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$128$4 * 28)) + 4) != 4 ) goto label$215;
				{
					struct $8FBSYMBOL* vr$65 = RTLPROCLOOKUP( (uint8*)"fb_CVLFROMS", 44 );
					struct $7ASTNODE* vr$66 = ASTNEWCALL( vr$65, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$66;
				}
				goto label$214;
				label$215:;
				{
					struct $8FBSYMBOL* vr$67 = RTLPROCLOOKUP( (uint8*)"fb_CVLONGINTFROMD", 45 );
					struct $7ASTNODE* vr$68 = ASTNEWCALL( vr$67, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$68;
				}
				label$214:;
			}
			label$212:;
			label$207:;
		}
		if( FUNCEXPR$1 == (struct $7ASTNODE*)0u ) goto label$217;
		{
			struct $7ASTNODE* vr$69 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
			if( vr$69 != (struct $7ASTNODE*)0u ) goto label$219;
			{
				FUNCEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$219:;
			label$218:;
		}
		label$217:;
		label$216:;
	}
	label$174:;
	if( FUNCEXPR$1 == (struct $7ASTNODE*)0u ) goto label$221;
	{
		struct $7ASTNODE* vr$70 = ASTNEWCONV( FUNCTYPE$1, (struct $8FBSYMBOL*)0u, FUNCEXPR$1, 0, (int32*)0u );
		FUNCEXPR$1 = vr$70;
	}
	label$221:;
	label$220:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$223;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
	}
	label$223:;
	label$222:;
	fb$result$1 = FUNCEXPR$1;
	label$140:;
	return fb$result$1;
}

struct $7ASTNODE* CMKXFUNCT( $8FB_TOKEN TK$1 )
{
	int32 TMP$132$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$230:;
	LEXSKIPTOKEN( 8192 );
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = -2147483648u;
	if( TK$1 != 430 ) goto label$232;
	int32 vr$1 = HMATCH( 301, 0 );
	TMP$132$1 = -(vr$1 != 0);
	goto label$271;
	label$232:;
	TMP$132$1 = 0;
	label$271:;
	if( TMP$132$1 == 0 ) goto label$234;
	{
		int64 LGT$2;
		struct $7ASTNODE* vr$3 = CGTINPARENSONLYEXPR(  );
		int64 vr$4 = CCONSTINTEXPR( vr$3, 8 );
		LGT$2 = vr$4;
		if( LGT$2 != 8ll ) goto label$236;
		{
			LGT$2 = 0ll;
			label$236:;
		}
		$11FB_DATATYPE vr$5 = HINTEGERTYPEFROMBITSIZE( LGT$2, 0 );
		DTYPE$1 = vr$5;
		int32 vr$6 = HMATCH( 300, 0 );
		if( vr$6 != 0 ) goto label$238;
		{
			ERRREPORT( 309, 0, (uint8*)0u );
		}
		label$238:;
		label$237:;
	}
	label$234:;
	label$233:;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 == 40 ) goto label$240;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$239;
	label$240:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$239:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* vr$8 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$8;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$242;
	{
		goto label$231;
	}
	label$242:;
	label$241:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$244;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$243;
	label$244:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$243:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	if( EXPR1$1 == (struct $7ASTNODE*)0u ) goto label$246;
	{
		{
			uint32 TMP$133$3;
			TMP$133$3 = (uint32)TK$1;
			goto label$248;
			label$249:;
			{
				struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_MKD", 31 );
				struct $7ASTNODE* vr$11 = ASTNEWCALL( vr$10, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$11;
			}
			goto label$247;
			label$250:;
			{
				struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_MKS", 32 );
				struct $7ASTNODE* vr$13 = ASTNEWCALL( vr$12, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$13;
			}
			goto label$247;
			label$251:;
			{
				if( DTYPE$1 != -2147483648u ) goto label$253;
				{
					DTYPE$1 = *($11FB_DATATYPE*)((uint8*)&ENV$ + 892);
				}
				label$253:;
				label$252:;
				if( (DTYPE$1 & 511) != 8 ) goto label$255;
				{
					struct $8FBSYMBOL* vr$15 = RTLPROCLOOKUP( (uint8*)"fb_MKI", 33 );
					struct $7ASTNODE* vr$16 = ASTNEWCALL( vr$15, (struct $7ASTNODE*)0u );
					FUNCEXPR$1 = vr$16;
				}
				goto label$254;
				label$255:;
				{
					{
						int32 TMP$137$6;
						int32 TMP$138$6;
						if( (DTYPE$1 & 480) == 0 ) goto label$256;
						TMP$137$6 = 24;
						goto label$272;
						label$256:;
						TMP$137$6 = DTYPE$1 & 31;
						label$272:;
						TMP$138$6 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$137$6 * 28)) + 20);
						if( TMP$138$6 != 3 ) goto label$258;
						label$259:;
						{
							struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 35 );
							struct $7ASTNODE* vr$21 = ASTNEWCALL( vr$20, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$21;
						}
						goto label$257;
						label$258:;
						if( TMP$138$6 != 5 ) goto label$260;
						label$261:;
						{
							struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 34 );
							struct $7ASTNODE* vr$23 = ASTNEWCALL( vr$22, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$23;
						}
						goto label$257;
						label$260:;
						if( TMP$138$6 != 7 ) goto label$262;
						label$263:;
						{
							struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 36 );
							struct $7ASTNODE* vr$25 = ASTNEWCALL( vr$24, (struct $7ASTNODE*)0u );
							FUNCEXPR$1 = vr$25;
						}
						label$262:;
						label$257:;
					}
				}
				label$254:;
			}
			goto label$247;
			label$264:;
			{
				struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_MKL", 34 );
				struct $7ASTNODE* vr$27 = ASTNEWCALL( vr$26, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$27;
			}
			goto label$247;
			label$265:;
			{
				struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_MKSHORT", 35 );
				struct $7ASTNODE* vr$29 = ASTNEWCALL( vr$28, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$29;
			}
			goto label$247;
			label$266:;
			{
				struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_MKLONGINT", 36 );
				struct $7ASTNODE* vr$31 = ASTNEWCALL( vr$30, (struct $7ASTNODE*)0u );
				FUNCEXPR$1 = vr$31;
			}
			goto label$247;
			label$248:;
			static const void* tmp$142[5] = {
				&&label$249,
				&&label$250,
				&&label$251,
				&&label$264,
				&&label$265,
			};
			if( (TMP$133$3 - 428u) > 4u ) goto label$266;
			goto *tmp$142[TMP$133$3 - 428u];
			label$247:;
		}
		struct $7ASTNODE* vr$32 = ASTNEWARG( FUNCEXPR$1, EXPR1$1, -2147483648u, -1 );
		if( vr$32 != (struct $7ASTNODE*)0u ) goto label$268;
		{
			FUNCEXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$268:;
		label$267:;
	}
	label$246:;
	label$245:;
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$270;
	{
		ERRREPORT( 24, 0, (uint8*)0u );
	}
	label$270:;
	label$269:;
	fb$result$1 = FUNCEXPR$1;
	label$231:;
	return fb$result$1;
}

struct $7ASTNODE* CSTRINGFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$273:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* EXPR2$1;
	struct $7ASTNODE* EXPR3$1;
	int32 DCLASS$1;
	int32 DTYPE$1;
	int32 IS_ANY$1;
	int32 IS_WSTR$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		if( TK$1 == 421 ) goto label$277;
		label$278:;
		if( TK$1 != 434 ) goto label$276;
		label$277:;
		{
			$8LEXCHECK TMP$143$3;
			IS_WSTR$1 = -(TK$1 == 434);
			if( IS_WSTR$1 == 0 ) goto label$279;
			TMP$143$3 = 2048;
			goto label$408;
			label$279:;
			TMP$143$3 = 8192;
			label$408:;
			LEXSKIPTOKEN( TMP$143$3 );
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 == 40 ) goto label$281;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$280;
			label$281:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$280:;
			struct $7ASTNODE* vr$3 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$3;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$283;
			{
				goto label$274;
			}
			label$283:;
			label$282:;
			int32 vr$4 = LEXGETTOKEN( 0 );
			if( vr$4 == 41 ) goto label$285;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$284;
			label$285:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$284:;
			if( IS_WSTR$1 != 0 ) goto label$287;
			{
				struct $7ASTNODE* vr$6 = RTLTOSTR( EXPR1$1, -(*(int32*)((uint8*)&ENV$ + 136) == 3) );
				EXPR1$1 = vr$6;
			}
			goto label$286;
			label$287:;
			{
				struct $7ASTNODE* vr$7 = RTLTOWSTR( EXPR1$1 );
				EXPR1$1 = vr$7;
			}
			label$286:;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$289;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$8;
			}
			label$289:;
			label$288:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$276:;
		if( TK$1 != 435 ) goto label$290;
		label$291:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$9 = LEXGETTOKEN( 0 );
			if( vr$9 == 40 ) goto label$293;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$292;
			label$293:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$292:;
			struct $7ASTNODE* vr$10 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$10;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$295;
			{
				goto label$274;
			}
			label$295:;
			label$294:;
			int32 vr$11 = LEXGETTOKEN( 0 );
			if( vr$11 == 44 ) goto label$297;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$296;
			label$297:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$296:;
			struct $7ASTNODE* vr$12 = HMATCHEXPR( 8 );
			EXPR2$1 = vr$12;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$299;
			{
				goto label$274;
			}
			label$299:;
			label$298:;
			int32 vr$13 = HMATCH( 44, 0 );
			if( vr$13 == 0 ) goto label$301;
			{
				struct $7ASTNODE* vr$14 = HMATCHEXPR( 8 );
				EXPR3$1 = vr$14;
				if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$303;
				{
					goto label$274;
				}
				label$303:;
				label$302:;
			}
			goto label$300;
			label$301:;
			{
				struct $7ASTNODE* vr$15 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR3$1 = vr$15;
			}
			label$300:;
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( vr$16 == 41 ) goto label$305;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$304;
			label$305:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$304:;
			struct $7ASTNODE* vr$17 = RTLSTRMID( EXPR1$1, EXPR2$1, EXPR3$1 );
			EXPR1$1 = vr$17;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$307;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$18 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$18;
			}
			label$307:;
			label$306:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$290:;
		if( TK$1 == 369 ) goto label$309;
		label$310:;
		if( TK$1 != 371 ) goto label$308;
		label$309:;
		{
			$8LEXCHECK TMP$144$3;
			IS_WSTR$1 = -(TK$1 == 371);
			if( IS_WSTR$1 == 0 ) goto label$311;
			TMP$144$3 = 2048;
			goto label$409;
			label$311:;
			TMP$144$3 = 8192;
			label$409:;
			LEXSKIPTOKEN( TMP$144$3 );
			int32 vr$20 = LEXGETTOKEN( 0 );
			if( vr$20 == 40 ) goto label$313;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$312;
			label$313:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$312:;
			struct $7ASTNODE* vr$21 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$21;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$315;
			{
				goto label$274;
			}
			label$315:;
			label$314:;
			int32 vr$22 = LEXGETTOKEN( 0 );
			if( vr$22 == 44 ) goto label$317;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$316;
			label$317:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$316:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 8 );
			EXPR2$1 = vr$23;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$319;
			{
				goto label$274;
			}
			label$319:;
			label$318:;
			int32 vr$24 = LEXGETTOKEN( 0 );
			if( vr$24 == 41 ) goto label$321;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$320;
			label$321:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$320:;
			if( IS_WSTR$1 != 0 ) goto label$323;
			{
				struct $7ASTNODE* vr$25 = RTLSTRFILL( EXPR1$1, EXPR2$1 );
				EXPR1$1 = vr$25;
			}
			goto label$322;
			label$323:;
			{
				struct $7ASTNODE* vr$26 = RTLWSTRFILL( EXPR1$1, EXPR2$1 );
				EXPR1$1 = vr$26;
			}
			label$322:;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$325;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$27 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$27;
			}
			label$325:;
			label$324:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$308:;
		if( TK$1 == 419 ) goto label$327;
		label$328:;
		if( TK$1 != 420 ) goto label$326;
		label$327:;
		{
			$8LEXCHECK TMP$145$3;
			IS_WSTR$1 = -(TK$1 == 420);
			if( IS_WSTR$1 == 0 ) goto label$329;
			TMP$145$3 = 2048;
			goto label$410;
			label$329:;
			TMP$145$3 = 8192;
			label$410:;
			LEXSKIPTOKEN( TMP$145$3 );
			struct $7ASTNODE* vr$29 = CSTRCHR( IS_WSTR$1 );
			fb$result$1 = vr$29;
		}
		goto label$275;
		label$326:;
		if( TK$1 != 418 ) goto label$330;
		label$331:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$30 = CSTRASC(  );
			fb$result$1 = vr$30;
		}
		goto label$275;
		label$330:;
		if( TK$1 != 436 ) goto label$332;
		label$333:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$31 = LEXGETTOKEN( 0 );
			if( vr$31 == 40 ) goto label$335;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$334;
			label$335:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$334:;
			struct $7ASTNODE* vr$32 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$32;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$337;
			{
				goto label$274;
			}
			label$337:;
			label$336:;
			int32 vr$33 = LEXGETTOKEN( 0 );
			if( vr$33 == 44 ) goto label$339;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$338;
			label$339:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$338:;
			int32 vr$34 = HMATCH( 372, 2048 );
			IS_ANY$1 = vr$34;
			struct $7ASTNODE* vr$35 = HMATCHEXPR( 17 );
			EXPR2$1 = vr$35;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$341;
			{
				goto label$274;
			}
			label$341:;
			label$340:;
			EXPR3$1 = (struct $7ASTNODE*)0u;
			if( IS_ANY$1 != 0 ) goto label$343;
			{
				int32 vr$36 = HMATCH( 44, 0 );
				if( vr$36 == 0 ) goto label$345;
				{
					int32 vr$37 = HMATCH( 372, 2048 );
					IS_ANY$1 = vr$37;
					struct $7ASTNODE* vr$38 = HMATCHEXPR( 17 );
					EXPR3$1 = vr$38;
					if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$347;
					{
						goto label$274;
					}
					label$347:;
					label$346:;
				}
				label$345:;
				label$344:;
			}
			label$343:;
			label$342:;
			if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$349;
			{
				EXPR3$1 = EXPR2$1;
				EXPR2$1 = EXPR1$1;
				struct $7ASTNODE* vr$39 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$39;
			}
			label$349:;
			label$348:;
			int32 vr$40 = LEXGETTOKEN( 0 );
			if( vr$40 == 41 ) goto label$351;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$350;
			label$351:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$350:;
			struct $7ASTNODE* vr$41 = RTLSTRINSTR( EXPR1$1, EXPR2$1, EXPR3$1, IS_ANY$1 );
			EXPR1$1 = vr$41;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$353;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$42 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$42;
			}
			label$353:;
			label$352:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$332:;
		if( TK$1 != 437 ) goto label$354;
		label$355:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$43 = LEXGETTOKEN( 0 );
			if( vr$43 == 40 ) goto label$357;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$356;
			label$357:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$356:;
			struct $7ASTNODE* vr$44 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$44;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$359;
			{
				goto label$274;
			}
			label$359:;
			label$358:;
			int32 vr$45 = LEXGETTOKEN( 0 );
			if( vr$45 == 44 ) goto label$361;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$360;
			label$361:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$360:;
			int32 vr$46 = HMATCH( 372, 2048 );
			IS_ANY$1 = vr$46;
			struct $7ASTNODE* vr$47 = HMATCHEXPR( 17 );
			EXPR2$1 = vr$47;
			if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$363;
			{
				goto label$274;
			}
			label$363:;
			label$362:;
			int32 vr$48 = HMATCH( 44, 0 );
			if( vr$48 == 0 ) goto label$365;
			{
				struct $7ASTNODE* vr$49 = HMATCHEXPR( 8 );
				EXPR3$1 = vr$49;
				if( EXPR3$1 != (struct $7ASTNODE*)0u ) goto label$367;
				{
					goto label$274;
				}
				label$367:;
				label$366:;
			}
			goto label$364;
			label$365:;
			{
				struct $7ASTNODE* vr$50 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR3$1 = vr$50;
			}
			label$364:;
			int32 vr$51 = LEXGETTOKEN( 0 );
			if( vr$51 == 41 ) goto label$369;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$368;
			label$369:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$368:;
			struct $7ASTNODE* vr$52 = RTLSTRINSTRREV( EXPR3$1, EXPR1$1, EXPR2$1, IS_ANY$1 );
			EXPR1$1 = vr$52;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$371;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$53 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$53;
			}
			label$371:;
			label$370:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$354:;
		if( TK$1 == 438 ) goto label$373;
		label$374:;
		if( TK$1 == 440 ) goto label$373;
		label$375:;
		if( TK$1 != 439 ) goto label$372;
		label$373:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$54 = LEXGETTOKEN( 0 );
			if( vr$54 == 40 ) goto label$377;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$376;
			label$377:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$376:;
			struct $7ASTNODE* vr$55 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$55;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$379;
			{
				goto label$274;
			}
			label$379:;
			label$378:;
			int32 vr$56 = HMATCH( 44, 0 );
			if( vr$56 == 0 ) goto label$381;
			{
				int32 vr$57 = HMATCH( 372, 2048 );
				IS_ANY$1 = vr$57;
				struct $7ASTNODE* vr$58 = HMATCHEXPR( 17 );
				EXPR2$1 = vr$58;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$383;
				{
					goto label$274;
				}
				label$383:;
				label$382:;
			}
			goto label$380;
			label$381:;
			{
				IS_ANY$1 = 0;
				EXPR2$1 = (struct $7ASTNODE*)0u;
			}
			label$380:;
			int32 vr$59 = LEXGETTOKEN( 0 );
			if( vr$59 == 41 ) goto label$385;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$384;
			label$385:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$384:;
			{
				if( TK$1 != 438 ) goto label$387;
				label$388:;
				{
					struct $7ASTNODE* vr$60 = RTLSTRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$60;
				}
				goto label$386;
				label$387:;
				if( TK$1 != 440 ) goto label$389;
				label$390:;
				{
					struct $7ASTNODE* vr$61 = RTLSTRLTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$61;
				}
				goto label$386;
				label$389:;
				if( TK$1 != 439 ) goto label$391;
				label$392:;
				{
					struct $7ASTNODE* vr$62 = RTLSTRRTRIM( EXPR1$1, EXPR2$1, IS_ANY$1 );
					EXPR1$1 = vr$62;
				}
				label$391:;
				label$386:;
			}
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$394;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				struct $7ASTNODE* vr$63 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR1$1 = vr$63;
			}
			label$394:;
			label$393:;
			fb$result$1 = EXPR1$1;
		}
		goto label$275;
		label$372:;
		if( TK$1 == 441 ) goto label$396;
		label$397:;
		if( TK$1 != 442 ) goto label$395;
		label$396:;
		{
			LEXSKIPTOKEN( 8192 );
			int32 vr$64 = LEXGETTOKEN( 0 );
			if( vr$64 == 40 ) goto label$399;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$398;
			label$399:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$398:;
			struct $7ASTNODE* vr$65 = HMATCHEXPR( 17 );
			EXPR1$1 = vr$65;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$401;
			{
				goto label$274;
			}
			label$401:;
			label$400:;
			int32 vr$66 = HMATCH( 44, 0 );
			if( vr$66 == 0 ) goto label$403;
			{
				struct $7ASTNODE* vr$67 = HMATCHEXPR( 8 );
				EXPR2$1 = vr$67;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$405;
				{
					goto label$274;
				}
				label$405:;
				label$404:;
			}
			goto label$402;
			label$403:;
			{
				EXPR2$1 = (struct $7ASTNODE*)0u;
			}
			label$402:;
			int32 vr$68 = LEXGETTOKEN( 0 );
			if( vr$68 == 41 ) goto label$407;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$406;
			label$407:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$406:;
			struct $7ASTNODE* vr$70 = RTLSTRCASE( EXPR1$1, EXPR2$1, -(TK$1 == 441) );
			fb$result$1 = vr$70;
		}
		label$395:;
		label$275:;
	}
	label$274:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static struct $7ASTNODE* CSTRCHR( int32 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$68:;
	static uint8 O$1[12];
	static uint8 ZS$1[417];
	static uint32 WS$1[417];
	int32 V$1;
	int32 I$1;
	int32 CNT$1;
	int32 ISCONST$1;
	struct $7ASTNODE* EXPRTB$1[32];
	struct $8FBARRAY1IP7ASTNODEE {
		struct $7ASTNODE** DATA;
		struct $7ASTNODE** PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP7ASTNODEE ) == 36 );
	struct $8FBARRAY1IP7ASTNODEE tmp$99$1;
	*(struct $7ASTNODE***)&tmp$99$1 = (struct $7ASTNODE**)EXPRTB$1;
	*(struct $7ASTNODE***)((uint8*)&tmp$99$1 + 4) = (struct $7ASTNODE**)EXPRTB$1;
	*(int32*)((uint8*)&tmp$99$1 + 8) = 128;
	*(int32*)((uint8*)&tmp$99$1 + 12) = 4;
	*(int32*)((uint8*)&tmp$99$1 + 16) = 1;
	*(int32*)((uint8*)&tmp$99$1 + 20) = 49;
	*(int32*)((uint8*)&tmp$99$1 + 24) = 32;
	*(int32*)((uint8*)&tmp$99$1 + 28) = 0;
	*(int32*)((uint8*)&tmp$99$1 + 32) = 31;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 40 ) goto label$71;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$70;
	label$71:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$70:;
	CNT$1 = 0;
	label$72:;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 12 );
		*(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (CNT$1 << (2 & 31))) = vr$4;
		if( *(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (CNT$1 << (2 & 31))) != (struct $7ASTNODE*)0u ) goto label$76;
		{
			goto label$69;
		}
		label$76:;
		label$75:;
		CNT$1 = CNT$1 + 1;
		if( CNT$1 < 32 ) goto label$78;
		{
			goto label$73;
		}
		label$78:;
		label$77:;
	}
	label$74:;
	int32 vr$8 = HMATCH( 44, 0 );
	if( vr$8 != 0 ) goto label$72;
	label$73:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 == 41 ) goto label$80;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$79;
	label$80:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$79:;
	ISCONST$1 = -1;
	{
		I$1 = 0;
		int32 TMP$100$2;
		TMP$100$2 = CNT$1 + -1;
		goto label$81;
		label$84:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$1 << (2 & 31))) == 16 ) goto label$86;
			{
				ISCONST$1 = 0;
				goto label$83;
			}
			label$86:;
			label$85:;
			int32 vr$14 = ASTCONSTEQZERO( *(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$1 << (2 & 31))) );
			if( vr$14 == 0 ) goto label$88;
			{
				ISCONST$1 = 0;
				goto label$83;
			}
			label$88:;
			label$87:;
		}
		label$82:;
		I$1 = I$1 + 1;
		label$81:;
		if( I$1 <= TMP$100$2 ) goto label$84;
		label$83:;
	}
	if( ISCONST$1 == 0 ) goto label$90;
	{
		if( IS_WSTR$1 != 0 ) goto label$92;
		{
			fb_StrAssign( (void*)ZS$1, 417, (void*)"", 1, 0 );
		}
		goto label$91;
		label$92:;
		{
			fb_WstrAssignFromA( (uint32*)WS$1, 417, (void*)"", 1 );
		}
		label$91:;
		{
			I$1 = 0;
			int32 TMP$101$3;
			TMP$101$3 = CNT$1 + -1;
			goto label$93;
			label$96:;
			{
				int64 vr$18 = ASTCONSTFLUSHTOINT( *(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$1 << (2 & 31))), 12 );
				V$1 = (int32)vr$18;
				*(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$1 << (2 & 31))) = (struct $7ASTNODE*)0u;
				if( IS_WSTR$1 != 0 ) goto label$98;
				{
					if( (uint64)V$1 <= 255ull ) goto label$100;
					{
						V$1 = 255;
					}
					label$100:;
					label$99:;
					if( (-(V$1 < 32) | -(V$1 > 127)) == 0 ) goto label$102;
					{
						FBSTRING TMP$103$6;
						FBSTRING TMP$104$6;
						FBSTRING TMP$105$6;
						__builtin_memset( &TMP$103$6, 0, 12 );
						FBSTRING* vr$27 = fb_StrConcat( &TMP$103$6, (void*)ZS$1, 417, (void*)"\x1B", 2 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$27, -1, 0 );
						FBSTRING* vr$28 = fb_OCT_i( (uint32)V$1 );
						fb_StrAssign( (void*)O$1, 12, (void*)vr$28, -1, 0 );
						int32 vr$29 = fb_StrLen( (void*)O$1, 12 );
						FBSTRING* vr$30 = fb_CHR( 1, vr$29 );
						__builtin_memset( &TMP$104$6, 0, 12 );
						FBSTRING* vr$33 = fb_StrConcat( &TMP$104$6, (void*)ZS$1, 417, (void*)vr$30, -1 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$33, -1, 0 );
						__builtin_memset( &TMP$105$6, 0, 12 );
						FBSTRING* vr$36 = fb_StrConcat( &TMP$105$6, (void*)ZS$1, 417, (void*)O$1, 12 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$36, -1, 0 );
					}
					goto label$101;
					label$102:;
					{
						FBSTRING TMP$106$6;
						FBSTRING* vr$37 = fb_CHR( 1, V$1 );
						__builtin_memset( &TMP$106$6, 0, 12 );
						FBSTRING* vr$40 = fb_StrConcat( &TMP$106$6, (void*)ZS$1, 417, (void*)vr$37, -1 );
						fb_StrAssign( (void*)ZS$1, 417, (void*)vr$40, -1, 0 );
					}
					label$101:;
				}
				goto label$97;
				label$98:;
				{
					if( (-(V$1 < 32) | -(V$1 > 127)) == 0 ) goto label$104;
					{
						uint32* TMP$107$6;
						uint32* TMP$108$6;
						uint32* TMP$109$6;
						uint32* vr$44 = fb_WstrConcatWA( (uint32*)WS$1, (void*)"\x1B", 2 );
						TMP$107$6 = vr$44;
						fb_WstrAssign( (uint32*)WS$1, 417, (uint32*)TMP$107$6 );
						fb_WstrDelete( (uint32*)TMP$107$6 );
						FBSTRING* vr$45 = fb_OCT_i( (uint32)V$1 );
						fb_StrAssign( (void*)O$1, 12, (void*)vr$45, -1, 0 );
						int32 vr$46 = fb_StrLen( (void*)O$1, 12 );
						uint32* vr$47 = fb_WstrChr( 1, vr$46 );
						TMP$108$6 = vr$47;
						fb_WstrConcatAssign( (uint32*)WS$1, 417, (uint32*)TMP$108$6 );
						fb_WstrDelete( (uint32*)TMP$108$6 );
						uint32* vr$48 = fb_WstrConcatWA( (uint32*)WS$1, (void*)O$1, 12 );
						TMP$109$6 = vr$48;
						fb_WstrAssign( (uint32*)WS$1, 417, (uint32*)TMP$109$6 );
						fb_WstrDelete( (uint32*)TMP$109$6 );
					}
					goto label$103;
					label$104:;
					{
						uint32* TMP$110$6;
						uint32* vr$49 = fb_WstrChr( 1, V$1 );
						TMP$110$6 = vr$49;
						fb_WstrConcatAssign( (uint32*)WS$1, 417, (uint32*)TMP$110$6 );
						fb_WstrDelete( (uint32*)TMP$110$6 );
					}
					label$103:;
				}
				label$97:;
			}
			label$94:;
			I$1 = I$1 + 1;
			label$93:;
			if( I$1 <= TMP$101$3 ) goto label$96;
			label$95:;
		}
		if( IS_WSTR$1 != 0 ) goto label$106;
		{
			struct $8FBSYMBOL* vr$51 = SYMBALLOCSTRCONST( (uint8*)ZS$1, CNT$1 );
			struct $7ASTNODE* vr$52 = ASTNEWVAR( vr$51, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$52;
		}
		goto label$105;
		label$106:;
		{
			struct $8FBSYMBOL* vr$53 = SYMBALLOCWSTRCONST( (uint32*)WS$1, CNT$1 );
			struct $7ASTNODE* vr$54 = ASTNEWVAR( vr$53, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$54;
		}
		label$105:;
	}
	goto label$89;
	label$90:;
	{
		struct $7ASTNODE* vr$56 = RTLSTRCHR( CNT$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$99$1, IS_WSTR$1 );
		fb$result$1 = vr$56;
	}
	label$89:;
	label$69:;
	return fb$result$1;
}

static struct $7ASTNODE* CSTRASC( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	struct $7ASTNODE* EXPR1$1;
	struct $7ASTNODE* POSEXPR$1;
	int64 P$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$110;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$109;
	label$110:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$109:;
	struct $7ASTNODE* vr$2 = HMATCHEXPR( 17 );
	EXPR1$1 = vr$2;
	if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$112;
	{
		goto label$108;
	}
	label$112:;
	label$111:;
	int32 vr$3 = HMATCH( 44, 0 );
	if( vr$3 == 0 ) goto label$114;
	{
		struct $7ASTNODE* vr$4 = HMATCHEXPR( 8 );
		POSEXPR$1 = vr$4;
		if( POSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$116;
		{
			goto label$108;
		}
		label$116:;
		label$115:;
	}
	goto label$113;
	label$114:;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$113:;
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 == 41 ) goto label$118;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
	}
	goto label$117;
	label$118:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$117:;
	struct $8FBSYMBOL* LITSYM$1;
	LITSYM$1 = (struct $8FBSYMBOL*)0u;
	{
		int32 TMP$111$2;
		TMP$111$2 = *(int32*)((uint8*)EXPR1$1 + 4) & 511;
		if( TMP$111$2 == 4 ) goto label$121;
		label$122:;
		if( TMP$111$2 != 7 ) goto label$120;
		label$121:;
		{
			struct $8FBSYMBOL* vr$8 = ASTGETSTRLITSYMBOL( EXPR1$1 );
			LITSYM$1 = vr$8;
		}
		label$120:;
		label$119:;
	}
	if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$124;
	{
		if( (-((*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7) & -(*(int32*)((uint8*)&ENV$ + 264) == 0)) == 0 ) goto label$126;
		{
			P$1 = -1ll;
		}
		goto label$125;
		label$126:;
		{
			if( POSEXPR$1 == (struct $7ASTNODE*)0u ) goto label$128;
			{
				if( *(int32*)POSEXPR$1 != 16 ) goto label$130;
				{
					int64 vr$15 = ASTCONSTFLUSHTOINT( POSEXPR$1, 8 );
					P$1 = vr$15;
					POSEXPR$1 = (struct $7ASTNODE*)0u;
					if( P$1 >= 0ll ) goto label$132;
					{
						P$1 = 0ll;
					}
					label$132:;
					label$131:;
				}
				goto label$129;
				label$130:;
				{
					P$1 = -1ll;
				}
				label$129:;
			}
			goto label$127;
			label$128:;
			{
				P$1 = 1ll;
			}
			label$127:;
		}
		label$125:;
		if( P$1 < 0ll ) goto label$134;
		{
			if( (*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7 ) goto label$136;
			{
				uint8* ZS$4;
				uint8* vr$19 = HUNESCAPE( *(uint8**)((uint8*)LITSYM$1 + 56) );
				ZS$4 = vr$19;
				FBSTRING* vr$21 = fb_StrAllocTempDescZ( (uint8*)ZS$4 );
				uint32 vr$22 = fb_ASC( (FBSTRING*)vr$21, (int32)P$1 );
				struct $7ASTNODE* vr$24 = ASTNEWCONSTI( (int64)vr$22, 9, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$24;
			}
			goto label$135;
			label$136:;
			{
				uint32* WS$4;
				uint32* vr$26 = HUNESCAPEW( *(uint32**)((uint8*)LITSYM$1 + 56) );
				WS$4 = vr$26;
				uint32 vr$28 = fb_WstrAsc( (uint32*)WS$4, (int32)P$1 );
				struct $7ASTNODE* vr$30 = ASTNEWCONSTI( (int64)vr$28, 9, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$30;
			}
			label$135:;
			ASTDELNODE( EXPR1$1 );
			EXPR1$1 = (struct $7ASTNODE*)0u;
		}
		label$134:;
		label$133:;
	}
	label$124:;
	label$123:;
	if( EXPR1$1 == (struct $7ASTNODE*)0u ) goto label$138;
	{
		struct $7ASTNODE* vr$31 = RTLSTRASC( EXPR1$1, POSEXPR$1 );
		fb$result$1 = vr$31;
	}
	label$138:;
	label$137:;
	label$108:;
	return fb$result$1;
}
