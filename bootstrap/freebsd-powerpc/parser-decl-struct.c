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
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_VALINT( FBSTRING* );
static void fb_ctor__parserzdeclzstruct( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int32 );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLIT( uint8* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
int32 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int32 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, $13FB_SYMBATTRIB, int32 );
void SYMBSTRUCTADDBASE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
void SYMBINSERTINNERUDT( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int32 );
void SYMBRECALCLEN( struct $8FBSYMBOL* );
int32 SYMBCHECKARRAYSIZE( int32, struct $10FBARRAYDIM*, int64, int32 );
int32 SYMBCHECKBITFIELD( struct $8FBSYMBOL*, int32, int64, int32 );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int32 );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBUNIQUELABEL( void );
int32 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
void DZSTRRESET( struct $8DZSTRING* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEADCLASS( int32, $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 CCOMMENT( $8LEXCHECK );
int32 CSTMTSEPARATOR( $8LEXCHECK );
void CCONSTDECL( $13FB_SYMBATTRIB );
void CTYPEDEFMULTDECL( void );
void CTYPEDEFSINGLEDECL( uint8* );
void CENUMDECL( $13FB_SYMBATTRIB );
void CARRAYDECL( int32*, int32*, struct $7FBARRAYIP7ASTNODEE* );
typedef int32 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int32, struct $8FBSYMBOL* );
void CCURRENTPARENTID( void );
typedef int32 $10FB_PROCOPT;
struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32*, $10FB_PROCOPT, int32 );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int32 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWCONSTCTORDTOR( int32, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
int32 HISASSIGNTOKEN( int32 );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
uint8* CALIASATTRIBUTE( void );
void CMETHODATTRIBUTES( struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HSKIPCOMPOUND( int32, int32, $8LEXCHECK );
void HMAYBECONVERTEXPRTB2DIMTB( $13FB_SYMBATTRIB*, int32, struct $7FBARRAYIP7ASTNODEE*, struct $7FBARRAYI10FBARRAYDIME* );
void HCOMPLAINABOUTELLIPSIS( int32, struct $7FBARRAYIP7ASTNODEE*, int32 );
struct $8FBSYMBOL* CVARDECL( $13FB_SYMBATTRIB, int32, int32, int32 );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
void HCOMPLAINABOUTCONSTDYNAMICARRAY( struct $8FBSYMBOL* );
void HSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32, int32 );
static void HTYPEBODY( struct $8FBSYMBOL* );
static void HPATCHBYVALPARAMSTOSELF( struct $8FBSYMBOL* );
static void HPATCHBYVALRESULTTOSELF( struct $8FBSYMBOL* );
static void HBEGINNESTING( struct $8FBSYMBOL* );
static void HTYPEPROTODECL( struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HTYPEENUMDECL( struct $8FBSYMBOL*, int32, int32 );
static void HSETFIELDINITREE( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HFIELDINIT( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HFIELDTYPE( int32*, struct $8FBSYMBOL**, int64* );
static void HARRAYORBITFIELD( int32, int32*, int32*, int32*, struct $7FBARRAYI10FBARRAYDIME*, struct $7ASTNODE** );
static int32 HADDANDINITFIELD( struct $8FBSYMBOL*, uint8*, int32, struct $7FBARRAYI10FBARRAYDIME*, struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64, int32, $13FB_SYMBATTRIB );
static uint8* HFIELDID( struct $8FBSYMBOL* );
static void HTYPEMULTELEMENTDECL( int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HTYPEELEMENTDECL( int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HFIELDDECLWITHEXPLICITDIM( int32, struct $8FBSYMBOL*, int32 );
void HTYPESTATICVARDECL( struct $8FBSYMBOL*, int32 );
static struct $8FBSYMBOL* HTYPEADD( struct $8FBSYMBOL*, uint8*, uint8*, int32, int32, int32, struct $8FBSYMBOL*, int32 );
static int32 CFIELDALIGNMENTATTRIBUTE( void );
static void HDISALLOWNESTEDCLASSES( struct $8FBSYMBOL* );
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

void HTYPESTATICVARDECL( struct $8FBSYMBOL* PARENT$1, int32 ATTRIB$1 )
{
	label$155:;
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 2) == 0 ) goto label$158;
	{
		ERRREPORT( 156, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$156;
	}
	label$158:;
	label$157:;
	HBEGINNESTING( PARENT$1 );
	*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 16384;
	ATTRIB$1 = ATTRIB$1 | 19;
	CVARDECL( ATTRIB$1, 0, 306, 0 );
	label$156:;
}

void CTYPEDECL( $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$265:;
	static uint8 ID$1[129];
	int32 ISUNION$1;
	int32 CHECKID$1;
	struct $8FBSYMBOL* SYM$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	int32 vr$0 = LEXGETTOKEN( 0 );
	ISUNION$1 = -(vr$0 == 337);
	LEXSKIPTOKEN( 2048 );
	CHECKID$1 = -1;
	{
		uint32 TMP$103$2;
		int32 vr$2 = LEXGETCLASS( 0 );
		TMP$103$2 = (uint32)vr$2;
		goto label$268;
		label$269:;
		{
		}
		goto label$267;
		label$270:;
		{
			if( ISUNION$1 != 0 ) goto label$272;
			{
				int32 vr$3 = LEXGETTOKEN( 0 );
				if( vr$3 != 376 ) goto label$274;
				{
					CTYPEDEFMULTDECL(  );
					goto label$266;
				}
				label$274:;
				label$273:;
			}
			label$272:;
			label$271:;
			ERRREPORT( 14, 0, (uint8*)0u );
			CHECKID$1 = 0;
		}
		goto label$267;
		label$275:;
		{
		}
		goto label$267;
		label$276:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			CHECKID$1 = 0;
		}
		goto label$267;
		label$268:;
		static const void* tmp$106[3] = {
			&&label$269,
			&&label$270,
			&&label$275,
		};
		if( TMP$103$2 > 2u ) goto label$276;
		goto *tmp$106[TMP$103$2 - 0u];
		label$267:;
	}
	if( CHECKID$1 == 0 ) goto label$278;
	{
		CCURRENTPARENTID(  );
		if( (*(int32*)((uint8*)&ENV$ + 888) & 524288) == 0 ) goto label$280;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$282;
			{
				if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4120) <= 0 ) goto label$284;
				{
					ERRREPORT( 90, 0, (uint8*)0u );
				}
				label$284:;
				label$283:;
			}
			label$282:;
			label$281:;
		}
		label$280:;
		label$279:;
		LEXEATTOKEN( (uint8*)ID$1, 0 );
	}
	goto label$277;
	label$278:;
	{
		uint8* vr$8 = SYMBUNIQUEID( (boolean)0 );
		fb_StrAssign( (void*)ID$1, 129, (void*)vr$8, 0, 0 );
	}
	label$277:;
	int32 vr$9 = LEXGETTOKEN( 0 );
	if( vr$9 != 376 ) goto label$286;
	{
		if( ISUNION$1 == 0 ) goto label$288;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$288:;
		label$287:;
		CTYPEDEFSINGLEDECL( (uint8*)ID$1 );
		goto label$266;
	}
	label$286:;
	label$285:;
	int32 vr$10 = CCOMPSTMTISALLOWED( 9 );
	if( vr$10 != 0 ) goto label$290;
	{
		HSKIPCOMPOUND( 336, -1, 0 );
		goto label$266;
	}
	label$290:;
	label$289:;
	uint8* PALIAS$1;
	uint8* vr$11 = CALIASATTRIBUTE(  );
	PALIAS$1 = vr$11;
	struct $8FBSYMBOL* BASESUBTYPE$1;
	BASESUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	int32 BASEDTYPE$1;
	BASEDTYPE$1 = 0;
	int32 STRINGTYPE$1;
	STRINGTYPE$1 = 0;
	int32 vr$12 = LEXGETTOKEN( 0 );
	if( vr$12 != 351 ) goto label$292;
	{
		int64 TMP$104$2;
		LEXSKIPTOKEN( 2048 );
		TMP$104$2 = 0ll;
		HSYMBOLTYPE( &BASEDTYPE$1, &BASESUBTYPE$1, &TMP$104$2, 0, -1 );
		if( BASEDTYPE$1 == 20 ) goto label$294;
		{
			if( (-(BASEDTYPE$1 == 7) | -(BASEDTYPE$1 == 4)) == 0 ) goto label$296;
			{
				STRINGTYPE$1 = BASEDTYPE$1;
				BASEDTYPE$1 = 0;
			}
			goto label$295;
			label$296:;
			{
				ERRREPORT( 293, 0, (uint8*)0u );
				BASESUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			}
			label$295:;
		}
		label$294:;
		label$293:;
		if( STRINGTYPE$1 == 0 ) goto label$298;
		{
			int32 vr$19 = LEXGETTOKEN( 0 );
			if( vr$19 != 44 ) goto label$300;
			{
				int64 TMP$105$4;
				LEXSKIPTOKEN( 0 );
				TMP$105$4 = 0ll;
				HSYMBOLTYPE( &BASEDTYPE$1, &BASESUBTYPE$1, &TMP$105$4, 0, -1 );
				if( BASEDTYPE$1 == 20 ) goto label$302;
				{
					ERRREPORT( 293, 0, (uint8*)0u );
					BASESUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$302:;
				label$301:;
			}
			label$300:;
			label$299:;
		}
		label$298:;
		label$297:;
		if( BASESUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$304;
		{
			{
				if( STRINGTYPE$1 != 4 ) goto label$306;
				label$307:;
				{
					if( (*(int32*)((uint8*)BASESUBTYPE$1 + 120) & 65536) == 0 ) goto label$309;
					{
						ERRREPORT( 24, 0, (uint8*)0u );
						STRINGTYPE$1 = 7;
					}
					label$309:;
					label$308:;
				}
				goto label$305;
				label$306:;
				if( STRINGTYPE$1 != 7 ) goto label$310;
				label$311:;
				{
					if( (*(int32*)((uint8*)BASESUBTYPE$1 + 120) & 131072) == 0 ) goto label$313;
					{
						ERRREPORT( 24, 0, (uint8*)0u );
						STRINGTYPE$1 = 4;
					}
					label$313:;
					label$312:;
				}
				goto label$305;
				label$310:;
				{
					if( (*(int32*)((uint8*)BASESUBTYPE$1 + 120) & 131072) == 0 ) goto label$316;
					{
						STRINGTYPE$1 = 4;
					}
					goto label$315;
					label$316:;
					if( (*(int32*)((uint8*)BASESUBTYPE$1 + 120) & 65536) == 0 ) goto label$317;
					{
						STRINGTYPE$1 = 7;
					}
					label$317:;
					label$315:;
				}
				label$314:;
				label$305:;
			}
		}
		label$304:;
		label$303:;
	}
	label$292:;
	label$291:;
	int32 ALIGN$1;
	int32 vr$31 = CFIELDALIGNMENTATTRIBUTE(  );
	ALIGN$1 = vr$31;
	CCOMPSTMTPUSH( 336, -34 );
	struct $7ASTNODE* CURRPROC$1;
	CURRPROC$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 40);
	struct $7ASTNODE* CURRBLOCK$1;
	CURRBLOCK$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 132);
	struct $8FBSYMBOL* CURRPROCSYM$1;
	CURRPROCSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104);
	struct $8FBSYMBOL* CURRBLOCKSYM$1;
	CURRBLOCKSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108);
	int32 SCOPE_DEPTH$1;
	SCOPE_DEPTH$1 = *(int32*)((uint8*)&PARSER$ + 96);
	struct $8FBSYMBOL* vr$32 = HTYPEADD( (struct $8FBSYMBOL*)0u, (uint8*)ID$1, PALIAS$1, ISUNION$1, ALIGN$1, BASEDTYPE$1, BASESUBTYPE$1, STRINGTYPE$1 );
	SYM$1 = vr$32;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 40) = CURRPROC$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 132) = CURRBLOCK$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) = CURRPROCSYM$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) = CURRBLOCKSYM$1;
	*(uint32*)((uint8*)&PARSER$ + 96) = (uint32)SCOPE_DEPTH$1;
	HDISALLOWNESTEDCLASSES( SYM$1 );
	struct $13FB_CMPSTMTSTK* vr$33 = CCOMPSTMTGETTOS( 336, -1 );
	STK$1 = vr$33;
	if( STK$1 == (struct $13FB_CMPSTMTSTK*)0u ) goto label$319;
	{
		CCOMPSTMTPOP( STK$1 );
	}
	label$319:;
	label$318:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 262144) == 0 ) goto label$321;
	{
		struct $10FBSYMCHAIN* CHAIN_$2;
		struct $10FBSYMCHAIN* vr$36 = SYMBLOOKUPAT( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536), (uint8*)ID$1, 0, 0 );
		CHAIN_$2 = vr$36;
		if( CHAIN_$2 == (struct $10FBSYMCHAIN*)0u ) goto label$323;
		{
			if( *(struct $8FBSYMBOL**)CHAIN_$2 == SYM$1 ) goto label$325;
			{
				ERRREPORTEX( 167, (uint8*)ID$1, 0, 1, (uint8*)0u );
			}
			label$325:;
			label$324:;
		}
		label$323:;
		label$322:;
		if( (*(int32*)((uint8*)SYM$1 + 120) & 2048) == 0 ) goto label$327;
		{
			ERRREPORT( 238, 0, (uint8*)0u );
		}
		label$327:;
		label$326:;
	}
	label$321:;
	label$320:;
	if( (*(int32*)((uint8*)SYM$1 + 120) & 32) == 0 ) goto label$329;
	{
		int32 vr$42 = SYMBCOMPISTRIVIAL( SYM$1 );
		if( vr$42 != 0 ) goto label$331;
		{
			HPATCHBYVALPARAMSTOSELF( SYM$1 );
		}
		label$331:;
		label$330:;
	}
	label$329:;
	label$328:;
	if( (*(int32*)((uint8*)SYM$1 + 120) & 64) == 0 ) goto label$333;
	{
		HPATCHBYVALRESULTTOSELF( SYM$1 );
	}
	label$333:;
	label$332:;
	label$266:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static void HBEGINNESTING( struct $8FBSYMBOL* PARENT$1 )
{
	label$10:;
	if( (*(int32*)((uint8*)PARENT$1 + 12) & 262144) != 0 ) goto label$13;
	{
		*($12FB_SYMBSTATS*)((uint8*)PARENT$1 + 12) = *(int32*)((uint8*)PARENT$1 + 12) | 262144;
		SYMBNESTBEGIN( PARENT$1, 0 );
	}
	label$13:;
	label$12:;
	label$11:;
}

static void HTYPEPROTODECL( struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$14:;
	int32 IS_NESTED$1;
	int32 TK$1;
	$13FB_PROCATTRIB PATTRIB$1;
	PATTRIB$1 = 0;
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 2) == 0 ) goto label$17;
	{
		ERRREPORT( 154, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$15;
	}
	label$17:;
	label$16:;
	if( (*(int32*)((uint8*)&ENV$ + 888) & 64) != 0 ) goto label$19;
	{
		ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
	}
	label$19:;
	label$18:;
	HBEGINNESTING( PARENT$1 );
	LEXSKIPTOKEN( 2048 );
	CMETHODATTRIBUTES( PARENT$1, &ATTRIB$1, &PATTRIB$1 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	TK$1 = vr$5;
	{
		if( TK$1 != 347 ) goto label$21;
		label$22:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWVIRTUALCTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TK$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$20;
		label$21:;
		if( TK$1 != 348 ) goto label$23;
		label$24:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWABSTRACTDTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TK$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$20;
		label$23:;
		if( TK$1 != 350 ) goto label$25;
		label$26:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
		}
		label$25:;
		label$20:;
	}
	{
		if( TK$1 == 345 ) goto label$29;
		label$30:;
		if( TK$1 == 346 ) goto label$29;
		label$31:;
		if( TK$1 == 347 ) goto label$29;
		label$32:;
		if( TK$1 == 348 ) goto label$29;
		label$33:;
		if( TK$1 == 349 ) goto label$29;
		label$34:;
		if( TK$1 != 350 ) goto label$28;
		label$29:;
		{
			LEXSKIPTOKEN( 2048 );
			CPROCHEADER( ATTRIB$1, PATTRIB$1, &IS_NESTED$1, 3, TK$1 );
		}
		goto label$27;
		label$28:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$35:;
		label$27:;
	}
	label$15:;
}

static void HTYPEENUMDECL( struct $8FBSYMBOL* PARENT$1, int32 TK$1, int32 ATTRIB$1 )
{
	label$36:;
	if( (*(int32*)((uint8*)PARENT$1 + 120) & 2) == 0 ) goto label$39;
	{
		ERRREPORT( 155, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$37;
	}
	label$39:;
	label$38:;
	HBEGINNESTING( PARENT$1 );
	if( TK$1 != 335 ) goto label$41;
	{
		CCONSTDECL( ATTRIB$1 );
	}
	goto label$40;
	label$41:;
	{
		CENUMDECL( ATTRIB$1 );
	}
	label$40:;
	label$37:;
}

static void HSETFIELDINITREE( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* INITREE$1 )
{
	label$42:;
	if( INITREE$1 == (struct $7ASTNODE*)0u ) goto label$45;
	{
		int32 vr$0 = ASTTYPEINIUSESLOCALS( INITREE$1, 12288 );
		if( vr$0 == 0 ) goto label$47;
		{
			ERRREPORT( 272, -1, (uint8*)0u );
			ASTDELTREE( INITREE$1 );
			INITREE$1 = (struct $7ASTNODE*)0u;
		}
		label$47:;
		label$46:;
	}
	label$45:;
	label$44:;
	ASTFORGETBITFIELDS( INITREE$1 );
	if( INITREE$1 == (struct $7ASTNODE*)0u ) goto label$49;
	{
		*(struct $7ASTNODE**)((uint8*)SYM$1 + 56) = INITREE$1;
	}
	label$49:;
	label$48:;
	label$43:;
}

static void HFIELDINIT( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* BOUNDSTYPEINI$1 )
{
	label$50:;
	struct $8FBSYMBOL* DEFCTOR$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 vr$0 = LEXGETTOKEN( 0 );
	int32 vr$1 = HISASSIGNTOKEN( vr$0 );
	if( vr$1 != 0 ) goto label$53;
	{
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$55;
		{
			if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$57;
			{
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
				struct $8FBSYMBOL* vr$5 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
				if( vr$5 == (struct $8FBSYMBOL*)0u ) goto label$59;
				{
					struct $8FBSYMBOL* vr$6 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
					DEFCTOR$1 = vr$6;
					if( DEFCTOR$1 == (struct $8FBSYMBOL*)0u ) goto label$61;
					{
						int32 vr$7 = SYMBCHECKACCESS( DEFCTOR$1 );
						if( vr$7 != 0 ) goto label$63;
						{
							ERRREPORT( 204, 0, (uint8*)0u );
						}
						label$63:;
						label$62:;
					}
					goto label$60;
					label$61:;
					{
						ERRREPORT( 183, 0, (uint8*)0u );
					}
					label$60:;
				}
				label$59:;
				label$58:;
				struct $8FBSYMBOL* vr$8 = SYMBGETCOMPDTOR( SUBTYPE$1 );
				DEFCTOR$1 = vr$8;
				if( DEFCTOR$1 == (struct $8FBSYMBOL*)0u ) goto label$65;
				{
					int32 vr$9 = SYMBCHECKACCESS( DEFCTOR$1 );
					if( vr$9 != 0 ) goto label$67;
					{
						ERRREPORT( 206, 0, (uint8*)0u );
					}
					label$67:;
					label$66:;
				}
				label$65:;
				label$64:;
			}
			label$57:;
			label$56:;
		}
		label$55:;
		label$54:;
		if( BOUNDSTYPEINI$1 == (struct $7ASTNODE*)0u ) goto label$69;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 4096;
			HBEGINNESTING( PARENT$1 );
			HSETFIELDINITREE( SYM$1, BOUNDSTYPEINI$1 );
		}
		label$69:;
		label$68:;
		goto label$51;
	}
	label$53:;
	label$52:;
	if( (*(int32*)((uint8*)&ENV$ + 888) & 128) != 0 ) goto label$71;
	{
		ERRREPORTNOTALLOWED( 128, 146, (uint8*)0u );
		HSKIPUNTIL( 257, 0, 0, 0 );
		goto label$51;
	}
	label$71:;
	label$70:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$73;
	{
		if( (*(int32*)((uint8*)PARENT$1 + 120) & 3) == 0 ) goto label$75;
		{
			ERRREPORT( 163, 0, (uint8*)0u );
			HSKIPUNTIL( 257, 0, 0, 0 );
			goto label$51;
		}
		label$75:;
		label$74:;
	}
	label$73:;
	label$72:;
	LEXSKIPTOKEN( 0 );
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$77;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$51;
	}
	label$77:;
	label$76:;
	*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 4096;
	int32 vr$19 = LEXGETTOKEN( 0 );
	if( vr$19 != 372 ) goto label$79;
	{
		if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 17 ) goto label$81;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
		}
		goto label$80;
		label$81:;
		{
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 12) = *(int32*)((uint8*)SYM$1 + 12) | 2048;
		}
		label$80:;
		LEXSKIPTOKEN( 2048 );
		goto label$51;
	}
	label$79:;
	label$78:;
	HBEGINNESTING( PARENT$1 );
	struct $7ASTNODE* vr$25 = CINITIALIZER( SYM$1, 1, -2147483648u, (struct $8FBSYMBOL*)0u );
	HSETFIELDINITREE( SYM$1, vr$25 );
	label$51:;
}

static void HFIELDTYPE( int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1 )
{
	label$82:;
	HSYMBOLTYPE( DTYPE$1, SUBTYPE$1, LGT$1, 0, 0 );
	HCOMPLAINIFABSTRACTCLASS( *DTYPE$1, *SUBTYPE$1 );
	label$83:;
}

static void HARRAYORBITFIELD( int32 TOKEN$1, int32* ATTRIB$1, int32* BITS$1, int32* DIMS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, struct $7ASTNODE** BOUNDSTYPEINI$1 )
{
	label$84:;
	static struct $7ASTNODE* EXPRTB$1[8][2];
	struct $8FBARRAY2IP7ASTNODEE {
		struct $7ASTNODE** DATA;
		struct $7ASTNODE** PTR;
		int32 SIZE;
		int32 ELEMENT_LEN;
		int32 DIMENSIONS;
		int32 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[2];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IP7ASTNODEE ) == 48 );
	static struct $8FBARRAY2IP7ASTNODEE tmp$93$1 = { (struct $7ASTNODE**)EXPRTB$1, (struct $7ASTNODE**)EXPRTB$1, 64, 4, 2, 50, { { 8, 0, 7 }, { 2, 0, 1 } } };
	int32 HAVE_BOUNDS$1;
	*BITS$1 = 0;
	*DIMS$1 = 0;
	HAVE_BOUNDS$1 = 0;
	*BOUNDSTYPEINI$1 = (struct $7ASTNODE*)0u;
	int32 vr$3 = HMATCH( 40, 0 );
	if( vr$3 == 0 ) goto label$87;
	{
		struct $7ASTNODE* vr$4 = ASTTYPEINIBEGIN( 8, (struct $8FBSYMBOL*)0u, 0, 0ll );
		*BOUNDSTYPEINI$1 = vr$4;
		CARRAYDECL( DIMS$1, &HAVE_BOUNDS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1 );
		if( HAVE_BOUNDS$1 == 0 ) goto label$89;
		{
			HCOMPLAINABOUTELLIPSIS( *DIMS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1, 77 );
			HMAYBECONVERTEXPRTB2DIMTB( ($13FB_SYMBATTRIB*)ATTRIB$1, *DIMS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1, DTB$1 );
			if( (*ATTRIB$1 & 4) == 0 ) goto label$91;
			{
				{
					int32 I$5;
					I$5 = 0;
					int32 TMP$94$5;
					TMP$94$5 = *DIMS$1 + -1;
					goto label$92;
					label$95:;
					{
						ASTTYPEINIADDASSIGN( *BOUNDSTYPEINI$1, *(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$5 << (3 & 31))), (struct $8FBSYMBOL*)0u, 8, (struct $8FBSYMBOL*)0u );
						ASTTYPEINIADDASSIGN( *BOUNDSTYPEINI$1, *(struct $7ASTNODE**)(((uint8*)EXPRTB$1 + (I$5 << (3 & 31))) + 4), (struct $8FBSYMBOL*)0u, 8, (struct $8FBSYMBOL*)0u );
					}
					label$93:;
					I$5 = I$5 + 1;
					label$92:;
					if( I$5 <= TMP$94$5 ) goto label$95;
					label$94:;
				}
			}
			label$91:;
			label$90:;
		}
		goto label$88;
		label$89:;
		{
			*ATTRIB$1 = *ATTRIB$1 | 4;
		}
		label$88:;
		ASTTYPEINIEND( *BOUNDSTYPEINI$1, -1 );
		if( (~HAVE_BOUNDS$1 | -((*ATTRIB$1 & 4) == 0)) == 0 ) goto label$97;
		{
			ASTDELTREE( *BOUNDSTYPEINI$1 );
			*BOUNDSTYPEINI$1 = (struct $7ASTNODE*)0u;
		}
		label$97:;
		label$96:;
		int32 vr$29 = LEXGETTOKEN( 0 );
		if( vr$29 == 41 ) goto label$99;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
		}
		goto label$98;
		label$99:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$98:;
	}
	goto label$86;
	label$87:;
	{
		if( TOKEN$1 != 310 ) goto label$101;
		{
			ERRREPORT( 63, 0, (uint8*)0u );
			*DIMS$1 = -1;
		}
		label$101:;
		label$100:;
	}
	label$86:;
	int32 vr$31 = LEXGETTOKEN( 0 );
	if( vr$31 != 258 ) goto label$103;
	{
		int32 vr$32 = LEXGETLOOKAHEADCLASS( 1, 0 );
		if( vr$32 != 3 ) goto label$105;
		{
			LEXSKIPTOKEN( 0 );
			uint8* vr$33 = LEXGETTEXT(  );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)vr$33 );
			int32 vr$35 = fb_VALINT( (FBSTRING*)vr$34 );
			*BITS$1 = vr$35;
			LEXSKIPTOKEN( 0 );
			if( (-(*BITS$1 <= 0) | -(*DIMS$1 != 0)) == 0 ) goto label$107;
			{
				ERRREPORT( 17, -1, (uint8*)0u );
				*BITS$1 = 0;
			}
			label$107:;
			label$106:;
		}
		label$105:;
		label$104:;
	}
	label$103:;
	label$102:;
	label$85:;
}

static int32 HADDANDINITFIELD( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int32 DIMS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, struct $7ASTNODE* BOUNDSTYPEINI$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LGT$1, int32 BITS$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$108:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = 0;
	if( DIMS$1 <= 0 ) goto label$111;
	{
		int32 vr$3 = SYMBCHECKARRAYSIZE( DIMS$1, (struct $10FBARRAYDIM*)*(int32*)DTB$1, LGT$1, 0 );
		if( vr$3 != 0 ) goto label$113;
		{
			ERRREPORT( 50, 0, (uint8*)0u );
			DIMS$1 = 1;
			*(int64*)*(int32*)DTB$1 = 0ll;
			*(int64*)((uint8*)*(int32*)DTB$1 + 8) = 0ll;
		}
		label$113:;
		label$112:;
	}
	label$111:;
	label$110:;
	if( BITS$1 <= 0 ) goto label$115;
	{
		int32 vr$6 = SYMBCHECKBITFIELD( PARENT$1, DTYPE$1, LGT$1, BITS$1 );
		if( vr$6 != 0 ) goto label$117;
		{
			ERRREPORT( 78, -1, (uint8*)0u );
			BITS$1 = 0;
		}
		label$117:;
		label$116:;
	}
	label$115:;
	label$114:;
	if( DTYPE$1 != 20 ) goto label$119;
	{
		if( SUBTYPE$1 != PARENT$1 ) goto label$121;
		{
			ERRREPORT( 88, 0, (uint8*)0u );
			DTYPE$1 = 8;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			LGT$1 = 0ll;
		}
		label$121:;
		label$120:;
	}
	label$119:;
	label$118:;
	struct $8FBSYMBOL* vr$7 = SYMBADDFIELD( PARENT$1, ID$1, DIMS$1, DTB$1, DTYPE$1, SUBTYPE$1, LGT$1, BITS$1, ATTRIB$1 );
	SYM$1 = vr$7;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$123;
	{
		ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
		goto label$109;
	}
	label$123:;
	label$122:;
	if( (ATTRIB$1 & 4) == 0 ) goto label$125;
	{
		HCOMPLAINABOUTCONSTDYNAMICARRAY( SYM$1 );
	}
	label$125:;
	label$124:;
	HFIELDINIT( PARENT$1, SYM$1, BOUNDSTYPEINI$1 );
	fb$result$1 = -1;
	label$109:;
	return fb$result$1;
}

static uint8* HFIELDID( struct $8FBSYMBOL* PARENT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$126:;
	static uint8 ID$1[129];
	{
		int32 TMP$95$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$95$2 = vr$1;
		if( TMP$95$2 == 0 ) goto label$130;
		label$131:;
		if( TMP$95$2 == 1 ) goto label$130;
		label$132:;
		if( TMP$95$2 != 2 ) goto label$129;
		label$130:;
		{
			if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 8) == -2147483648u ) goto label$134;
			{
				ERRREPORT( 17, 0, (uint8*)0u );
			}
			label$134:;
			label$133:;
			if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16548) + 4120) <= 0 ) goto label$136;
			{
				ERRREPORT( 90, 0, (uint8*)0u );
			}
			label$136:;
			label$135:;
			int32 vr$6 = LEXGETCLASS( 0 );
			if( vr$6 != 1 ) goto label$138;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 12) & 262144) == 0 ) goto label$140;
				{
					ERRREPORT( 238, 0, (uint8*)0u );
				}
				goto label$139;
				label$140:;
				{
					*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 2048;
				}
				label$139:;
			}
			label$138:;
			label$137:;
			uint8* vr$12 = LEXGETTEXT(  );
			fb_StrAssign( (void*)ID$1, 129, (void*)vr$12, 0, 0 );
			LEXSKIPTOKEN( 0 );
		}
		goto label$128;
		label$129:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			uint8* vr$13 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)ID$1, 129, (void*)vr$13, 0, 0 );
		}
		label$141:;
		label$128:;
	}
	fb$result$1 = (uint8*)ID$1;
	label$127:;
	return fb$result$1;
}

static void HTYPEMULTELEMENTDECL( int32 TOKEN$1, struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$142:;
	static struct $10FBARRAYDIM DTB$1[8];
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
	static struct $8FBARRAY1I10FBARRAYDIME tmp$96$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128, 16, 1, 49, { { 8, 0, 7 } } };
	uint8* ID$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DTYPE$1;
	int32 BITS$1;
	int32 DIMS$1;
	int32 FIELDATTRIB$1;
	int64 LGT$1;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	LEXSKIPTOKEN( 2048 );
	HFIELDTYPE( &DTYPE$1, &SUBTYPE$1, &LGT$1 );
	label$144:;
	{
		FIELDATTRIB$1 = ATTRIB$1;
		uint8* vr$3 = HFIELDID( PARENT$1 );
		ID$1 = vr$3;
		HARRAYORBITFIELD( TOKEN$1, &FIELDATTRIB$1, &BITS$1, &DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$96$1, &BOUNDSTYPEINI$1 );
		HADDANDINITFIELD( PARENT$1, ID$1, DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$96$1, BOUNDSTYPEINI$1, DTYPE$1, SUBTYPE$1, LGT$1, BITS$1, FIELDATTRIB$1 );
	}
	label$146:;
	int32 vr$8 = HMATCH( 44, 0 );
	if( vr$8 != 0 ) goto label$144;
	label$145:;
	label$143:;
}

static void HTYPEELEMENTDECL( int32 TOKEN$1, struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$147:;
	static struct $10FBARRAYDIM DTB$1[8];
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
	static struct $8FBARRAY1I10FBARRAYDIME tmp$97$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128, 16, 1, 49, { { 8, 0, 7 } } };
	uint8* ID$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DTYPE$1;
	int32 BITS$1;
	int32 DIMS$1;
	int64 LGT$1;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	uint8* vr$0 = HFIELDID( PARENT$1 );
	ID$1 = vr$0;
	HARRAYORBITFIELD( TOKEN$1, (int32*)&ATTRIB$1, &BITS$1, &DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$97$1, &BOUNDSTYPEINI$1 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 == 376 ) goto label$150;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
	}
	goto label$149;
	label$150:;
	{
		LEXSKIPTOKEN( 2048 );
	}
	label$149:;
	HFIELDTYPE( &DTYPE$1, &SUBTYPE$1, &LGT$1 );
	HADDANDINITFIELD( PARENT$1, ID$1, DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$97$1, BOUNDSTYPEINI$1, DTYPE$1, SUBTYPE$1, LGT$1, BITS$1, ATTRIB$1 );
	label$148:;
}

static void HFIELDDECLWITHEXPLICITDIM( int32 TOKEN$1, struct $8FBSYMBOL* S$1, int32 ATTRIB$1 )
{
	label$151:;
	LEXSKIPTOKEN( 2048 );
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 376 ) goto label$154;
	{
		HTYPEMULTELEMENTDECL( TOKEN$1, S$1, ATTRIB$1 );
	}
	goto label$153;
	label$154:;
	{
		HTYPEELEMENTDECL( TOKEN$1, S$1, ATTRIB$1 );
	}
	label$153:;
	label$152:;
}

static struct $8FBSYMBOL* HTYPEADD( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 ISUNION$1, int32 ALIGN$1, int32 BASEDTYPE$1, struct $8FBSYMBOL* BASESUBTYPE$1, int32 BASESTRINGTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$159:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$2 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, PARENT$1, (uint8*)ID$1, (uint8*)ID_ALIAS$1, ISUNION$1, ALIGN$1, -(BASESUBTYPE$1 != (struct $8FBSYMBOL*)0u), 0, 0 );
	S$1 = vr$2;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$162;
	{
		ERRREPORTEX( 4, (uint8*)ID$1, 0, 1, (uint8*)0u );
		uint8* vr$4 = SYMBUNIQUELABEL(  );
		struct $8FBSYMBOL* vr$5 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0u, (struct $8FBHASHTB*)0u, PARENT$1, (uint8*)vr$4, (uint8*)0u, ISUNION$1, ALIGN$1, -(BASESUBTYPE$1 != (struct $8FBSYMBOL*)0u), 0, 0 );
		S$1 = vr$5;
	}
	label$162:;
	label$161:;
	{
		if( BASESTRINGTYPE$1 != 4 ) goto label$164;
		label$165:;
		{
			*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 131072;
		}
		goto label$163;
		label$164:;
		if( BASESTRINGTYPE$1 != 7 ) goto label$166;
		label$167:;
		{
			*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 65536;
		}
		label$166:;
		label$163:;
	}
	if( BASESUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$169;
	{
		SYMBSTRUCTADDBASE( S$1, BASESUBTYPE$1 );
	}
	label$169:;
	label$168:;
	CCOMMENT( 0 );
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$171;
	{
		if( *(int32*)((uint8*)&ENV$ + 876) != 0 ) goto label$173;
		{
			struct $7ASTNODE* vr$13 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392) );
			ASTADD( vr$13 );
			DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392) );
		}
		label$173:;
		label$172:;
	}
	label$171:;
	label$170:;
	int32 vr$16 = CSTMTSEPARATOR( 0 );
	if( vr$16 != 0 ) goto label$175;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		HSKIPUNTIL( -1, -1, 0, 0 );
	}
	label$175:;
	label$174:;
	HTYPEBODY( S$1 );
	SYMBSTRUCTEND( S$1, -((*(int32*)((uint8*)S$1 + 12) & 262144) != 0) );
	int32 vr$20 = LEXGETTOKEN( 0 );
	if( vr$20 == 340 ) goto label$177;
	{
		ERRREPORT( 19, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
	}
	goto label$176;
	label$177:;
	{
		$8FB_TOKEN TMP$98$2;
		LEXSKIPTOKEN( 2048 );
		int32 vr$21 = LEXGETTOKEN( 0 );
		if( ISUNION$1 == 0 ) goto label$178;
		TMP$98$2 = 337;
		goto label$355;
		label$178:;
		TMP$98$2 = 336;
		label$355:;
		if( vr$21 == TMP$98$2 ) goto label$180;
		{
			ERRREPORT( 19, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		goto label$179;
		label$180:;
		{
			LEXSKIPTOKEN( 2048 );
		}
		label$179:;
	}
	label$176:;
	fb$result$1 = S$1;
	label$160:;
	return fb$result$1;
}

static int32 CFIELDALIGNMENTATTRIBUTE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$181:;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 491 ) goto label$184;
	{
		fb$result$1 = 0;
		goto label$182;
	}
	label$184:;
	label$183:;
	LEXSKIPTOKEN( 2048 );
	int32 vr$2 = CASSIGNTOKEN(  );
	if( vr$2 != 0 ) goto label$186;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
	}
	label$186:;
	label$185:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$3 = CEXPRESSION(  );
	EXPR$1 = vr$3;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$188;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$4;
	}
	label$188:;
	label$187:;
	if( *(int32*)EXPR$1 == 16 ) goto label$190;
	{
		ERRREPORT( 11, 0, (uint8*)0u );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$6;
	}
	label$190:;
	label$189:;
	int64 ALIGN$1;
	int64 vr$7 = ASTCONSTFLUSHTOINT( EXPR$1, 8 );
	ALIGN$1 = vr$7;
	if( ALIGN$1 >= 0ll ) goto label$192;
	{
		ALIGN$1 = 0ll;
	}
	goto label$191;
	label$192:;
	if( ALIGN$1 <= (int64)*(int32*)((uint8*)&ENV$ + 272) ) goto label$193;
	{
		ALIGN$1 = 0ll;
	}
	goto label$191;
	label$193:;
	if( ALIGN$1 != 3ll ) goto label$194;
	{
		ALIGN$1 = 2ll;
	}
	label$194:;
	label$191:;
	fb$result$1 = (int32)ALIGN$1;
	label$182:;
	return fb$result$1;
}

static void HTYPEBODY( struct $8FBSYMBOL* S$1 )
{
	label$195:;
	int32 ISUNION$1;
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $8FBSYMBOL* INNER$1;
	ATTRIB$1 = 0;
	label$197:;
	{
		{
			uint32 TMP$99$3;
			int32 vr$0 = LEXGETTOKEN( 0 );
			TMP$99$3 = (uint32)vr$0;
			goto label$201;
			label$202:;
			{
				if( (*(int32*)((uint8*)S$1 + 120) & 1) == 0 ) goto label$204;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
				}
				label$204:;
				label$203:;
				{
					int32 TMP$100$5;
					int32 vr$3 = LEXGETTOKEN( 0 );
					TMP$100$5 = vr$3;
					if( TMP$100$5 != 378 ) goto label$206;
					label$207:;
					{
						ATTRIB$1 = 0;
					}
					goto label$205;
					label$206:;
					if( TMP$100$5 != 379 ) goto label$208;
					label$209:;
					{
						ATTRIB$1 = 2097152;
					}
					goto label$205;
					label$208:;
					if( TMP$100$5 != 380 ) goto label$210;
					label$211:;
					{
						ATTRIB$1 = 4194304;
					}
					label$210:;
					label$205:;
				}
				LEXSKIPTOKEN( 2048 );
				int32 vr$4 = LEXGETTOKEN( 0 );
				if( vr$4 == 258 ) goto label$213;
				{
					ERRREPORT( 203, 0, (uint8*)0u );
				}
				label$213:;
				label$212:;
			}
			goto label$200;
			label$214:;
			{
				CCOMMENT( 0 );
			}
			goto label$200;
			label$215:;
			{
				LEXSKIPTOKEN( 0 );
				goto label$199;
			}
			goto label$200;
			label$216:;
			{
				goto label$198;
			}
			goto label$200;
			label$217:;
			{
				{
					int32 TMP$101$5;
					int32 vr$5 = LEXGETLOOKAHEAD( 1, 0 );
					TMP$101$5 = vr$5;
					if( TMP$101$5 == 376 ) goto label$220;
					label$221:;
					if( TMP$101$5 == 40 ) goto label$220;
					label$222:;
					if( TMP$101$5 != 258 ) goto label$219;
					label$220:;
					{
						HTYPEELEMENTDECL( 308, S$1, ATTRIB$1 );
					}
					goto label$218;
					label$219:;
					{
						goto label$198;
					}
					label$223:;
					label$218:;
				}
			}
			goto label$200;
			label$224:;
			{
				{
					uint32 TMP$102$5;
					int32 vr$6 = LEXGETLOOKAHEAD( 1, 0 );
					TMP$102$5 = (uint32)vr$6;
					goto label$226;
					label$227:;
					{
						label$228:;
						int32 vr$7 = LEXGETTOKEN( 0 );
						ISUNION$1 = -(vr$7 == 337);
						if( -((*(int32*)((uint8*)S$1 + 120) & 1) != 0) != ISUNION$1 ) goto label$230;
						{
							ERRREPORT( 17, 0, (uint8*)0u );
							ISUNION$1 = ~ISUNION$1;
						}
						label$230:;
						label$229:;
						LEXSKIPTOKEN( 2048 );
						int32 ALIGN$6;
						int32 vr$13 = CFIELDALIGNMENTATTRIBUTE(  );
						ALIGN$6 = vr$13;
						if( ALIGN$6 != 0 ) goto label$232;
						{
							ALIGN$6 = (int32)*(uint8*)((uint8*)S$1 + 125);
						}
						label$232:;
						label$231:;
						uint8* vr$16 = SYMBUNIQUEID( (boolean)0 );
						struct $8FBSYMBOL* vr$17 = HTYPEADD( S$1, vr$16, (uint8*)0u, ISUNION$1, ALIGN$6, 0, (struct $8FBSYMBOL*)0u, 0 );
						INNER$1 = vr$17;
						if( ISUNION$1 == 0 ) goto label$234;
						{
							*(int32*)((uint8*)INNER$1 + 120) = *(int32*)((uint8*)INNER$1 + 120) | 1;
							*(int32*)((uint8*)S$1 + 120) = *(int32*)((uint8*)S$1 + 120) | 8192;
						}
						label$234:;
						label$233:;
						struct $8FBSYMBOL* WALKSYMBOLS$6;
						WALKSYMBOLS$6 = *(struct $8FBSYMBOL**)((uint8*)INNER$1 + 60);
						label$235:;
						if( WALKSYMBOLS$6 == (struct $8FBSYMBOL*)0u ) goto label$236;
						{
							*($13FB_SYMBATTRIB*)((uint8*)WALKSYMBOLS$6 + 4) = *(int32*)((uint8*)WALKSYMBOLS$6 + 4) | ATTRIB$1;
							WALKSYMBOLS$6 = *(struct $8FBSYMBOL**)((uint8*)WALKSYMBOLS$6 + 176);
						}
						goto label$235;
						label$236:;
						SYMBINSERTINNERUDT( S$1, INNER$1 );
					}
					goto label$225;
					label$237:;
					{
						int32 vr$29 = LEXGETLOOKAHEADCLASS( 2, 0 );
						if( vr$29 == 3 ) goto label$239;
						{
							goto label$228;
						}
						label$239:;
						label$238:;
						HTYPEELEMENTDECL( 308, S$1, ATTRIB$1 );
					}
					goto label$225;
					label$240:;
					{
						HTYPEELEMENTDECL( 308, S$1, ATTRIB$1 );
					}
					goto label$225;
					label$226:;
					static const void* tmp$107[236] = {
						&&label$227,
						&&label$227,
						&&label$237,
						&&label$227,
						&&label$227,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$240,
						&&label$227,
					};
					if( (TMP$102$5 - 256u) > 235u ) goto label$240;
					goto *tmp$107[TMP$102$5 - 256u];
					label$225:;
				}
			}
			goto label$200;
			label$241:;
			{
				HTYPEMULTELEMENTDECL( 308, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$242:;
			{
				HTYPEPROTODECL( S$1, ATTRIB$1 );
			}
			goto label$200;
			label$243:;
			{
				int32 vr$30 = LEXGETTOKEN( 0 );
				HTYPEENUMDECL( S$1, vr$30, ATTRIB$1 );
			}
			goto label$200;
			label$244:;
			{
				HFIELDDECLWITHEXPLICITDIM( 308, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$245:;
			{
				HFIELDDECLWITHEXPLICITDIM( 310, S$1, ATTRIB$1 | 4 );
			}
			goto label$200;
			label$246:;
			{
				LEXSKIPTOKEN( 2048 );
				HTYPESTATICVARDECL( S$1, ATTRIB$1 );
			}
			goto label$200;
			label$247:;
			{
				HTYPEELEMENTDECL( 308, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$201:;
			static const void* tmp$108[125] = {
				&&label$216,
				&&label$215,
				&&label$247,
				&&label$214,
				&&label$214,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$246,
				&&label$244,
				&&label$247,
				&&label$245,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$242,
				&&label$243,
				&&label$224,
				&&label$224,
				&&label$243,
				&&label$247,
				&&label$217,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$247,
				&&label$241,
				&&label$247,
				&&label$202,
				&&label$202,
				&&label$202,
			};
			if( (TMP$99$3 - 256u) > 124u ) goto label$247;
			goto *tmp$108[TMP$99$3 - 256u];
			label$200:;
		}
		CCOMMENT( 0 );
		if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$249;
		{
			if( *(int32*)((uint8*)&ENV$ + 876) != 0 ) goto label$251;
			{
				struct $7ASTNODE* vr$33 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392) );
				ASTADD( vr$33 );
				DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 49392) );
			}
			label$251:;
			label$250:;
		}
		label$249:;
		label$248:;
		int32 vr$36 = CSTMTSEPARATOR( 0 );
		if( vr$36 != 0 ) goto label$253;
		{
			ERRREPORT( 3, 0, (uint8*)0u );
			HSKIPUNTIL( -1, -1, 0, 0 );
		}
		label$253:;
		label$252:;
	}
	label$199:;
	goto label$197;
	label$198:;
	struct $8FBSYMBOL* vr$37 = SYMBUDTGETFIRSTFIELD( S$1 );
	if( vr$37 != (struct $8FBSYMBOL*)0u ) goto label$255;
	{
		ERRREPORT( 256, 0, (uint8*)0u );
	}
	label$255:;
	label$254:;
	label$196:;
}

static void HDISALLOWNESTEDCLASSES( struct $8FBSYMBOL* SYM$1 )
{
	label$256:;
	struct $8FBSYMBOL* MEMBER$1;
	if( *(uint32*)((uint8*)&PARSER$ + 96) <= 0u ) goto label$259;
	{
		MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 60);
		label$260:;
		if( MEMBER$1 == (struct $8FBSYMBOL*)0u ) goto label$261;
		{
			if( *(int32*)MEMBER$1 != 3 ) goto label$263;
			{
				ERRREPORTEX( 263, (uint8*)*(uint8**)((uint8*)MEMBER$1 + 16), 0, 1, (uint8*)0u );
			}
			goto label$262;
			label$263:;
			if( (-(*(int32*)MEMBER$1 == 1) & -((*(int32*)((uint8*)MEMBER$1 + 4) & 16) != 0)) == 0 ) goto label$264;
			{
				ERRREPORTEX( 264, (uint8*)*(uint8**)((uint8*)MEMBER$1 + 16), 0, 1, (uint8*)0u );
			}
			label$264:;
			label$262:;
			MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)MEMBER$1 + 176);
		}
		goto label$260;
		label$261:;
	}
	label$259:;
	label$258:;
	label$257:;
}

static void HPATCHBYVALPARAMSTOSELF( struct $8FBSYMBOL* PARENT$1 )
{
	label$334:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARAM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 60);
	label$336:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$337;
	{
		if( *(int32*)SYM$1 != 3 ) goto label$339;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 76);
			label$340:;
			if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$341;
			{
				if( (-((*(int32*)((uint8*)PARAM$1 + 28) & 511) == 20) & -(*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == PARENT$1)) == 0 ) goto label$343;
				{
					if( *(int32*)((uint8*)PARAM$1 + 56) != 1 ) goto label$345;
					{
						SYMBRECALCLEN( PARAM$1 );
					}
					label$345:;
					label$344:;
				}
				label$343:;
				label$342:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
			}
			goto label$340;
			label$341:;
		}
		label$339:;
		label$338:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$336;
	label$337:;
	label$335:;
}

static void HPATCHBYVALRESULTTOSELF( struct $8FBSYMBOL* PARENT$1 )
{
	label$346:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 60);
	label$348:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$349;
	{
		if( ((-((*(int32*)((uint8*)SYM$1 + 28) & 511) == 20) & -(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) == PARENT$1)) & -((*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0)) == 0 ) goto label$351;
		{
			if( *(int32*)SYM$1 != 3 ) goto label$353;
			{
				SYMBPROCRECALCREALTYPE( SYM$1 );
			}
			goto label$352;
			label$353:;
			if( *(int32*)SYM$1 != 1 ) goto label$354;
			{
				SYMBRECALCLEN( SYM$1 );
			}
			label$354:;
			label$352:;
		}
		label$351:;
		label$350:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$348;
	label$349:;
	label$347:;
}
