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
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int64 $8FB_TOKEN;
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
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYI10FBARRAYDIME {
	struct $10FBARRAYDIM* DATA;
	struct $10FBARRAYDIM* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI10FBARRAYDIME ) == 240 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 240 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_VALINT( FBSTRING* );
static void fb_ctor__parserzdeclzstruct( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int64 );
void ASTFORGETBITFIELDS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLIT( uint8* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int64, struct $8FBSYMBOL*, int64, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
int64 ASTTYPEINIUSESLOCALS( struct $7ASTNODE*, int64 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBSTRUCTBEGIN( struct $10FBSYMBOLTB*, struct $8FBHASHTB*, struct $8FBSYMBOL*, uint8*, uint8*, int64, int64, int64, $13FB_SYMBATTRIB, int64 );
void SYMBSTRUCTADDBASE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDFIELD( struct $8FBSYMBOL*, uint8*, int64, struct $7FBARRAYI10FBARRAYDIME*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB );
void SYMBINSERTINNERUDT( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBSTRUCTEND( struct $8FBSYMBOL*, int64 );
void SYMBRECALCLEN( struct $8FBSYMBOL* );
int64 SYMBCHECKARRAYSIZE( int64, struct $10FBARRAYDIM*, int64, int64 );
int64 SYMBCHECKBITFIELD( struct $8FBSYMBOL*, int64, int64, int64 );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int64 );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBUNIQUELABEL( void );
int64 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR( struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
void DZSTRRESET( struct $8DZSTRING* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEADCLASS( int64, $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 CCOMMENT( $8LEXCHECK );
int64 CSTMTSEPARATOR( $8LEXCHECK );
void CCONSTDECL( $13FB_SYMBATTRIB );
void CTYPEDEFMULTDECL( void );
void CTYPEDEFSINGLEDECL( uint8* );
void CENUMDECL( $13FB_SYMBATTRIB );
void CARRAYDECL( int64*, int64*, struct $7FBARRAYIP7ASTNODEE* );
typedef int64 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int64, struct $8FBSYMBOL* );
void CCURRENTPARENTID( void );
typedef int64 $10FB_PROCOPT;
struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64*, $10FB_PROCOPT, int64 );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int64 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWCONSTCTORDTOR( int64, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
int64 HISASSIGNTOKEN( int64 );
int64 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
uint8* CALIASATTRIBUTE( void );
void CMETHODATTRIBUTES( struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
void HSKIPCOMPOUND( int64, int64, $8LEXCHECK );
void HMAYBECONVERTEXPRTB2DIMTB( $13FB_SYMBATTRIB*, int64, struct $7FBARRAYIP7ASTNODEE*, struct $7FBARRAYI10FBARRAYDIME* );
void HCOMPLAINABOUTELLIPSIS( int64, struct $7FBARRAYIP7ASTNODEE*, int64 );
struct $8FBSYMBOL* CVARDECL( $13FB_SYMBATTRIB, int64, int64, int64 );
void HCOMPLAINIFABSTRACTCLASS( int64, struct $8FBSYMBOL* );
void HCOMPLAINABOUTCONSTDYNAMICARRAY( struct $8FBSYMBOL* );
void HSYMBOLTYPE( int64*, struct $8FBSYMBOL**, int64*, int64, int64 );
static void HTYPEBODY( struct $8FBSYMBOL* );
static void HPATCHBYVALPARAMSTOSELF( struct $8FBSYMBOL* );
static void HPATCHBYVALRESULTTOSELF( struct $8FBSYMBOL* );
static void HBEGINNESTING( struct $8FBSYMBOL* );
static void HTYPEPROTODECL( struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HTYPEENUMDECL( struct $8FBSYMBOL*, int64, int64 );
static void HSETFIELDINITREE( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HFIELDINIT( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HFIELDTYPE( int64*, struct $8FBSYMBOL**, int64* );
static void HARRAYORBITFIELD( int64, int64*, int64*, int64*, struct $7FBARRAYI10FBARRAYDIME*, struct $7ASTNODE** );
static int64 HADDANDINITFIELD( struct $8FBSYMBOL*, uint8*, int64, struct $7FBARRAYI10FBARRAYDIME*, struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64, int64, $13FB_SYMBATTRIB );
static uint8* HFIELDID( struct $8FBSYMBOL* );
static void HTYPEMULTELEMENTDECL( int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HTYPEELEMENTDECL( int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB );
static void HFIELDDECLWITHEXPLICITDIM( int64, struct $8FBSYMBOL*, int64 );
void HTYPESTATICVARDECL( struct $8FBSYMBOL*, int64 );
static struct $8FBSYMBOL* HTYPEADD( struct $8FBSYMBOL*, uint8*, uint8*, int64, int64, int64, struct $8FBSYMBOL*, int64 );
static int64 CFIELDALIGNMENTATTRIBUTE( void );
static void HDISALLOWNESTEDCLASSES( struct $8FBSYMBOL* );
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
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

void HTYPESTATICVARDECL( struct $8FBSYMBOL* PARENT$1, int64 ATTRIB$1 )
{
	label$155:;
	if( ((int64)*(int32*)((uint8*)PARENT$1 + 208ll) & 2ll) == 0ll ) goto label$158;
	{
		ERRREPORT( 156ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$156;
	}
	label$158:;
	label$157:;
	HBEGINNESTING( PARENT$1 );
	*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 16384ll);
	ATTRIB$1 = ATTRIB$1 | 19ll;
	CVARDECL( ATTRIB$1, 0ll, 306ll, 0ll );
	label$156:;
}

void CTYPEDECL( $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$265:;
	static uint8 ID$1[129];
	int64 ISUNION$1;
	int64 CHECKID$1;
	struct $8FBSYMBOL* SYM$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	int64 vr$0 = LEXGETTOKEN( 0ll );
	ISUNION$1 = (int64)-(vr$0 == 337ll);
	LEXSKIPTOKEN( 2048ll );
	CHECKID$1 = -1ll;
	{
		uint64 TMP$103$2;
		int64 vr$2 = LEXGETCLASS( 0ll );
		TMP$103$2 = (uint64)vr$2;
		goto label$268;
		label$269:;
		{
		}
		goto label$267;
		label$270:;
		{
			if( ISUNION$1 != 0ll ) goto label$272;
			{
				int64 vr$3 = LEXGETTOKEN( 0ll );
				if( vr$3 != 376ll ) goto label$274;
				{
					CTYPEDEFMULTDECL(  );
					goto label$266;
				}
				label$274:;
				label$273:;
			}
			label$272:;
			label$271:;
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			CHECKID$1 = 0ll;
		}
		goto label$267;
		label$275:;
		{
		}
		goto label$267;
		label$276:;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			CHECKID$1 = 0ll;
		}
		goto label$267;
		label$268:;
		static const void* tmp$106[3ll] = {
			&&label$269,
			&&label$270,
			&&label$275,
		};
		if( TMP$103$2 > 2ull ) goto label$276;
		goto *tmp$106[TMP$103$2 - 0ull];
		label$267:;
	}
	if( CHECKID$1 == 0ll ) goto label$278;
	{
		CCURRENTPARENTID(  );
		if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 524288ll) == 0ll ) goto label$280;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$282;
			{
				if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16712ll) + 4144ll) <= 0ll ) goto label$284;
				{
					ERRREPORT( 90ll, 0ll, (uint8*)0ull );
				}
				label$284:;
				label$283:;
			}
			label$282:;
			label$281:;
		}
		label$280:;
		label$279:;
		LEXEATTOKEN( (uint8*)ID$1, 0ll );
	}
	goto label$277;
	label$278:;
	{
		uint8* vr$8 = SYMBUNIQUEID( (boolean)0ll );
		fb_StrAssign( (void*)ID$1, 129ll, (void*)vr$8, 0ll, 0 );
	}
	label$277:;
	int64 vr$9 = LEXGETTOKEN( 0ll );
	if( vr$9 != 376ll ) goto label$286;
	{
		if( ISUNION$1 == 0ll ) goto label$288;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$288:;
		label$287:;
		CTYPEDEFSINGLEDECL( (uint8*)ID$1 );
		goto label$266;
	}
	label$286:;
	label$285:;
	int64 vr$10 = CCOMPSTMTISALLOWED( 9ll );
	if( vr$10 != 0ll ) goto label$290;
	{
		HSKIPCOMPOUND( 336ll, -1ll, 0ll );
		goto label$266;
	}
	label$290:;
	label$289:;
	uint8* PALIAS$1;
	uint8* vr$11 = CALIASATTRIBUTE(  );
	PALIAS$1 = vr$11;
	struct $8FBSYMBOL* BASESUBTYPE$1;
	BASESUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	int64 BASEDTYPE$1;
	BASEDTYPE$1 = 0ll;
	int64 STRINGTYPE$1;
	STRINGTYPE$1 = 0ll;
	int64 vr$12 = LEXGETTOKEN( 0ll );
	if( vr$12 != 351ll ) goto label$292;
	{
		int64 TMP$104$2;
		LEXSKIPTOKEN( 2048ll );
		TMP$104$2 = 0ll;
		HSYMBOLTYPE( &BASEDTYPE$1, &BASESUBTYPE$1, &TMP$104$2, 0ll, -1ll );
		if( BASEDTYPE$1 == 20ll ) goto label$294;
		{
			if( ((int64)-(BASEDTYPE$1 == 7ll) | (int64)-(BASEDTYPE$1 == 4ll)) == 0ll ) goto label$296;
			{
				STRINGTYPE$1 = BASEDTYPE$1;
				BASEDTYPE$1 = 0ll;
			}
			goto label$295;
			label$296:;
			{
				ERRREPORT( 293ll, 0ll, (uint8*)0ull );
				BASESUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
			}
			label$295:;
		}
		label$294:;
		label$293:;
		if( STRINGTYPE$1 == 0ll ) goto label$298;
		{
			int64 vr$19 = LEXGETTOKEN( 0ll );
			if( vr$19 != 44ll ) goto label$300;
			{
				int64 TMP$105$4;
				LEXSKIPTOKEN( 0ll );
				TMP$105$4 = 0ll;
				HSYMBOLTYPE( &BASEDTYPE$1, &BASESUBTYPE$1, &TMP$105$4, 0ll, -1ll );
				if( BASEDTYPE$1 == 20ll ) goto label$302;
				{
					ERRREPORT( 293ll, 0ll, (uint8*)0ull );
					BASESUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
				}
				label$302:;
				label$301:;
			}
			label$300:;
			label$299:;
		}
		label$298:;
		label$297:;
		if( BASESUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$304;
		{
			{
				if( STRINGTYPE$1 != 4ll ) goto label$306;
				label$307:;
				{
					if( ((int64)*(int32*)((uint8*)BASESUBTYPE$1 + 208ll) & 65536ll) == 0ll ) goto label$309;
					{
						ERRREPORT( 24ll, 0ll, (uint8*)0ull );
						STRINGTYPE$1 = 7ll;
					}
					label$309:;
					label$308:;
				}
				goto label$305;
				label$306:;
				if( STRINGTYPE$1 != 7ll ) goto label$310;
				label$311:;
				{
					if( ((int64)*(int32*)((uint8*)BASESUBTYPE$1 + 208ll) & 131072ll) == 0ll ) goto label$313;
					{
						ERRREPORT( 24ll, 0ll, (uint8*)0ull );
						STRINGTYPE$1 = 4ll;
					}
					label$313:;
					label$312:;
				}
				goto label$305;
				label$310:;
				{
					if( ((int64)*(int32*)((uint8*)BASESUBTYPE$1 + 208ll) & 131072ll) == 0ll ) goto label$316;
					{
						STRINGTYPE$1 = 4ll;
					}
					goto label$315;
					label$316:;
					if( ((int64)*(int32*)((uint8*)BASESUBTYPE$1 + 208ll) & 65536ll) == 0ll ) goto label$317;
					{
						STRINGTYPE$1 = 7ll;
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
	int64 ALIGN$1;
	int64 vr$35 = CFIELDALIGNMENTATTRIBUTE(  );
	ALIGN$1 = vr$35;
	CCOMPSTMTPUSH( 336ll, 4294967262ll );
	struct $7ASTNODE* CURRPROC$1;
	CURRPROC$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 80ll);
	struct $7ASTNODE* CURRBLOCK$1;
	CURRBLOCK$1 = *(struct $7ASTNODE**)((uint8*)&AST$ + 264ll);
	struct $8FBSYMBOL* CURRPROCSYM$1;
	CURRPROCSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll);
	struct $8FBSYMBOL* CURRBLOCKSYM$1;
	CURRBLOCKSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll);
	int64 SCOPE_DEPTH$1;
	SCOPE_DEPTH$1 = *(int64*)((uint8*)&PARSER$ + 192ll);
	struct $8FBSYMBOL* vr$36 = HTYPEADD( (struct $8FBSYMBOL*)0ull, (uint8*)ID$1, PALIAS$1, ISUNION$1, ALIGN$1, BASEDTYPE$1, BASESUBTYPE$1, STRINGTYPE$1 );
	SYM$1 = vr$36;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) = CURRPROC$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = CURRBLOCK$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 208ll) = CURRPROCSYM$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) = CURRBLOCKSYM$1;
	*(uint64*)((uint8*)&PARSER$ + 192ll) = (uint64)SCOPE_DEPTH$1;
	HDISALLOWNESTEDCLASSES( SYM$1 );
	struct $13FB_CMPSTMTSTK* vr$37 = CCOMPSTMTGETTOS( 336ll, -1ll );
	STK$1 = vr$37;
	if( STK$1 == (struct $13FB_CMPSTMTSTK*)0ull ) goto label$319;
	{
		CCOMPSTMTPOP( STK$1 );
	}
	label$319:;
	label$318:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 262144ll) == 0ll ) goto label$321;
	{
		struct $10FBSYMCHAIN* CHAIN_$2;
		struct $10FBSYMCHAIN* vr$40 = SYMBLOOKUPAT( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll), (uint8*)ID$1, 0ll, 0ll );
		CHAIN_$2 = vr$40;
		if( CHAIN_$2 == (struct $10FBSYMCHAIN*)0ull ) goto label$323;
		{
			if( *(struct $8FBSYMBOL**)CHAIN_$2 == SYM$1 ) goto label$325;
			{
				ERRREPORTEX( 167ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
			}
			label$325:;
			label$324:;
		}
		label$323:;
		label$322:;
		if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 2048ll) == 0ll ) goto label$327;
		{
			ERRREPORT( 238ll, 0ll, (uint8*)0ull );
		}
		label$327:;
		label$326:;
	}
	label$321:;
	label$320:;
	if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 32ll) == 0ll ) goto label$329;
	{
		int64 vr$48 = SYMBCOMPISTRIVIAL( SYM$1 );
		if( vr$48 != 0ll ) goto label$331;
		{
			HPATCHBYVALPARAMSTOSELF( SYM$1 );
		}
		label$331:;
		label$330:;
	}
	label$329:;
	label$328:;
	if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 64ll) == 0ll ) goto label$333;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	label$5:;
}

static void HBEGINNESTING( struct $8FBSYMBOL* PARENT$1 )
{
	label$10:;
	if( (*(int64*)((uint8*)PARENT$1 + 24ll) & 262144ll) != 0ll ) goto label$13;
	{
		*($12FB_SYMBSTATS*)((uint8*)PARENT$1 + 24ll) = *(int64*)((uint8*)PARENT$1 + 24ll) | 262144ll;
		SYMBNESTBEGIN( PARENT$1, 0ll );
	}
	label$13:;
	label$12:;
	label$11:;
}

static void HTYPEPROTODECL( struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$14:;
	int64 IS_NESTED$1;
	int64 TK$1;
	$13FB_PROCATTRIB PATTRIB$1;
	PATTRIB$1 = 0ll;
	if( ((int64)*(int32*)((uint8*)PARENT$1 + 208ll) & 2ll) == 0ll ) goto label$17;
	{
		ERRREPORT( 154ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$15;
	}
	label$17:;
	label$16:;
	if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 64ll) != 0ll ) goto label$19;
	{
		ERRREPORTNOTALLOWED( 64ll, 146ll, (uint8*)0ull );
	}
	label$19:;
	label$18:;
	HBEGINNESTING( PARENT$1 );
	LEXSKIPTOKEN( 2048ll );
	CMETHODATTRIBUTES( PARENT$1, &ATTRIB$1, &PATTRIB$1 );
	int64 vr$6 = LEXGETTOKEN( 0ll );
	TK$1 = vr$6;
	{
		if( TK$1 != 347ll ) goto label$21;
		label$22:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWVIRTUALCTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TK$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$20;
		label$21:;
		if( TK$1 != 348ll ) goto label$23;
		label$24:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWABSTRACTDTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TK$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$20;
		label$23:;
		if( TK$1 != 350ll ) goto label$25;
		label$26:;
		{
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
		}
		label$25:;
		label$20:;
	}
	{
		if( TK$1 == 345ll ) goto label$29;
		label$30:;
		if( TK$1 == 346ll ) goto label$29;
		label$31:;
		if( TK$1 == 347ll ) goto label$29;
		label$32:;
		if( TK$1 == 348ll ) goto label$29;
		label$33:;
		if( TK$1 == 349ll ) goto label$29;
		label$34:;
		if( TK$1 != 350ll ) goto label$28;
		label$29:;
		{
			LEXSKIPTOKEN( 2048ll );
			CPROCHEADER( ATTRIB$1, PATTRIB$1, &IS_NESTED$1, 3ll, TK$1 );
		}
		goto label$27;
		label$28:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$35:;
		label$27:;
	}
	label$15:;
}

static void HTYPEENUMDECL( struct $8FBSYMBOL* PARENT$1, int64 TK$1, int64 ATTRIB$1 )
{
	label$36:;
	if( ((int64)*(int32*)((uint8*)PARENT$1 + 208ll) & 2ll) == 0ll ) goto label$39;
	{
		ERRREPORT( 155ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$37;
	}
	label$39:;
	label$38:;
	HBEGINNESTING( PARENT$1 );
	if( TK$1 != 335ll ) goto label$41;
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
	if( INITREE$1 == (struct $7ASTNODE*)0ull ) goto label$45;
	{
		int64 vr$0 = ASTTYPEINIUSESLOCALS( INITREE$1, 12288ll );
		if( vr$0 == 0ll ) goto label$47;
		{
			ERRREPORT( 272ll, -1ll, (uint8*)0ull );
			ASTDELTREE( INITREE$1 );
			INITREE$1 = (struct $7ASTNODE*)0ull;
		}
		label$47:;
		label$46:;
	}
	label$45:;
	label$44:;
	ASTFORGETBITFIELDS( INITREE$1 );
	if( INITREE$1 == (struct $7ASTNODE*)0ull ) goto label$49;
	{
		*(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) = INITREE$1;
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
	int64 vr$0 = LEXGETTOKEN( 0ll );
	int64 vr$1 = HISASSIGNTOKEN( vr$0 );
	if( vr$1 != 0ll ) goto label$53;
	{
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$55;
		{
			if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll ) goto label$57;
			{
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
				struct $8FBSYMBOL* vr$5 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
				if( vr$5 == (struct $8FBSYMBOL*)0ull ) goto label$59;
				{
					struct $8FBSYMBOL* vr$6 = SYMBGETCOMPDEFCTOR( SUBTYPE$1 );
					DEFCTOR$1 = vr$6;
					if( DEFCTOR$1 == (struct $8FBSYMBOL*)0ull ) goto label$61;
					{
						int64 vr$7 = SYMBCHECKACCESS( DEFCTOR$1 );
						if( vr$7 != 0ll ) goto label$63;
						{
							ERRREPORT( 204ll, 0ll, (uint8*)0ull );
						}
						label$63:;
						label$62:;
					}
					goto label$60;
					label$61:;
					{
						ERRREPORT( 183ll, 0ll, (uint8*)0ull );
					}
					label$60:;
				}
				label$59:;
				label$58:;
				struct $8FBSYMBOL* vr$8 = SYMBGETCOMPDTOR( SUBTYPE$1 );
				DEFCTOR$1 = vr$8;
				if( DEFCTOR$1 == (struct $8FBSYMBOL*)0ull ) goto label$65;
				{
					int64 vr$9 = SYMBCHECKACCESS( DEFCTOR$1 );
					if( vr$9 != 0ll ) goto label$67;
					{
						ERRREPORT( 206ll, 0ll, (uint8*)0ull );
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
		if( BOUNDSTYPEINI$1 == (struct $7ASTNODE*)0ull ) goto label$69;
		{
			*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 4096ll);
			HBEGINNESTING( PARENT$1 );
			HSETFIELDINITREE( SYM$1, BOUNDSTYPEINI$1 );
		}
		label$69:;
		label$68:;
		goto label$51;
	}
	label$53:;
	label$52:;
	if( (*(int64*)((uint8*)&ENV$ + 1248ll) & 128ll) != 0ll ) goto label$71;
	{
		ERRREPORTNOTALLOWED( 128ll, 146ll, (uint8*)0ull );
		HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
		goto label$51;
	}
	label$71:;
	label$70:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$73;
	{
		if( ((int64)*(int32*)((uint8*)PARENT$1 + 208ll) & 3ll) == 0ll ) goto label$75;
		{
			ERRREPORT( 163ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, 0ll, 0ll, 0ll );
			goto label$51;
		}
		label$75:;
		label$74:;
	}
	label$73:;
	label$72:;
	LEXSKIPTOKEN( 0ll );
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$77;
	{
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$51;
	}
	label$77:;
	label$76:;
	*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 4096ll);
	int64 vr$24 = LEXGETTOKEN( 0ll );
	if( vr$24 != 372ll ) goto label$79;
	{
		if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 17ll ) goto label$81;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
		}
		goto label$80;
		label$81:;
		{
			*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 2048ll;
		}
		label$80:;
		LEXSKIPTOKEN( 2048ll );
		goto label$51;
	}
	label$79:;
	label$78:;
	HBEGINNESTING( PARENT$1 );
	struct $7ASTNODE* vr$30 = CINITIALIZER( SYM$1, 1ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	HSETFIELDINITREE( SYM$1, vr$30 );
	label$51:;
}

static void HFIELDTYPE( int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1 )
{
	label$82:;
	HSYMBOLTYPE( DTYPE$1, SUBTYPE$1, LGT$1, 0ll, 0ll );
	HCOMPLAINIFABSTRACTCLASS( *DTYPE$1, *SUBTYPE$1 );
	label$83:;
}

static void HARRAYORBITFIELD( int64 TOKEN$1, int64* ATTRIB$1, int64* BITS$1, int64* DIMS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, struct $7ASTNODE** BOUNDSTYPEINI$1 )
{
	label$84:;
	static struct $7ASTNODE* EXPRTB$1[8][2];
	struct $8FBARRAY2IP7ASTNODEE {
		struct $7ASTNODE** DATA;
		struct $7ASTNODE** PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[2];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IP7ASTNODEE ) == 96 );
	static struct $8FBARRAY2IP7ASTNODEE tmp$93$1 = { (struct $7ASTNODE**)EXPRTB$1, (struct $7ASTNODE**)EXPRTB$1, 128ll, 8ll, 2ll, 50ll, { { 8ll, 0ll, 7ll }, { 2ll, 0ll, 1ll } } };
	int64 HAVE_BOUNDS$1;
	*BITS$1 = 0ll;
	*DIMS$1 = 0ll;
	HAVE_BOUNDS$1 = 0ll;
	*BOUNDSTYPEINI$1 = (struct $7ASTNODE*)0ull;
	int64 vr$3 = HMATCH( 40ll, 0ll );
	if( vr$3 == 0ll ) goto label$87;
	{
		struct $7ASTNODE* vr$4 = ASTTYPEINIBEGIN( 8ll, (struct $8FBSYMBOL*)0ull, 0ll, 0ll );
		*BOUNDSTYPEINI$1 = vr$4;
		CARRAYDECL( DIMS$1, &HAVE_BOUNDS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1 );
		if( HAVE_BOUNDS$1 == 0ll ) goto label$89;
		{
			HCOMPLAINABOUTELLIPSIS( *DIMS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1, 77ll );
			HMAYBECONVERTEXPRTB2DIMTB( ($13FB_SYMBATTRIB*)ATTRIB$1, *DIMS$1, (struct $7FBARRAYIP7ASTNODEE*)&tmp$93$1, DTB$1 );
			if( (*ATTRIB$1 & 4ll) == 0ll ) goto label$91;
			{
				{
					int64 I$5;
					I$5 = 0ll;
					int64 TMP$94$5;
					TMP$94$5 = *DIMS$1 + -1ll;
					goto label$92;
					label$95:;
					{
						ASTTYPEINIADDASSIGN( *BOUNDSTYPEINI$1, *(struct $7ASTNODE**)((uint8*)EXPRTB$1 + (I$5 << (4ll & 63ll))), (struct $8FBSYMBOL*)0ull, 8ll, (struct $8FBSYMBOL*)0ull );
						ASTTYPEINIADDASSIGN( *BOUNDSTYPEINI$1, *(struct $7ASTNODE**)(((uint8*)EXPRTB$1 + (I$5 << (4ll & 63ll))) + 8ll), (struct $8FBSYMBOL*)0ull, 8ll, (struct $8FBSYMBOL*)0ull );
					}
					label$93:;
					I$5 = I$5 + 1ll;
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
			*ATTRIB$1 = *ATTRIB$1 | 4ll;
		}
		label$88:;
		ASTTYPEINIEND( *BOUNDSTYPEINI$1, -1ll );
		if( (~HAVE_BOUNDS$1 | (int64)-((*ATTRIB$1 & 4ll) == 0ll)) == 0ll ) goto label$97;
		{
			ASTDELTREE( *BOUNDSTYPEINI$1 );
			*BOUNDSTYPEINI$1 = (struct $7ASTNODE*)0ull;
		}
		label$97:;
		label$96:;
		int64 vr$29 = LEXGETTOKEN( 0ll );
		if( vr$29 == 41ll ) goto label$99;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		}
		goto label$98;
		label$99:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$98:;
	}
	goto label$86;
	label$87:;
	{
		if( TOKEN$1 != 310ll ) goto label$101;
		{
			ERRREPORT( 63ll, 0ll, (uint8*)0ull );
			*DIMS$1 = -1ll;
		}
		label$101:;
		label$100:;
	}
	label$86:;
	int64 vr$31 = LEXGETTOKEN( 0ll );
	if( vr$31 != 258ll ) goto label$103;
	{
		int64 vr$32 = LEXGETLOOKAHEADCLASS( 1ll, 0ll );
		if( vr$32 != 3ll ) goto label$105;
		{
			LEXSKIPTOKEN( 0ll );
			uint8* vr$33 = LEXGETTEXT(  );
			FBSTRING* vr$34 = fb_StrAllocTempDescZ( (uint8*)vr$33 );
			int32 vr$35 = fb_VALINT( (FBSTRING*)vr$34 );
			*BITS$1 = (int64)vr$35;
			LEXSKIPTOKEN( 0ll );
			if( ((int64)-(*BITS$1 <= 0ll) | (int64)-(*DIMS$1 != 0ll)) == 0ll ) goto label$107;
			{
				ERRREPORT( 17ll, -1ll, (uint8*)0ull );
				*BITS$1 = 0ll;
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

static int64 HADDANDINITFIELD( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int64 DIMS$1, struct $7FBARRAYI10FBARRAYDIME* DTB$1, struct $7ASTNODE* BOUNDSTYPEINI$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LGT$1, int64 BITS$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$108:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = 0ll;
	if( DIMS$1 <= 0ll ) goto label$111;
	{
		int64 vr$3 = SYMBCHECKARRAYSIZE( DIMS$1, (struct $10FBARRAYDIM*)*(int64*)DTB$1, LGT$1, 0ll );
		if( vr$3 != 0ll ) goto label$113;
		{
			ERRREPORT( 50ll, 0ll, (uint8*)0ull );
			DIMS$1 = 1ll;
			*(int64*)*(int64*)DTB$1 = 0ll;
			*(int64*)((uint8*)*(int64*)DTB$1 + 8ll) = 0ll;
		}
		label$113:;
		label$112:;
	}
	label$111:;
	label$110:;
	if( BITS$1 <= 0ll ) goto label$115;
	{
		int64 vr$6 = SYMBCHECKBITFIELD( PARENT$1, DTYPE$1, LGT$1, BITS$1 );
		if( vr$6 != 0ll ) goto label$117;
		{
			ERRREPORT( 78ll, -1ll, (uint8*)0ull );
			BITS$1 = 0ll;
		}
		label$117:;
		label$116:;
	}
	label$115:;
	label$114:;
	if( DTYPE$1 != 20ll ) goto label$119;
	{
		if( SUBTYPE$1 != PARENT$1 ) goto label$121;
		{
			ERRREPORT( 88ll, 0ll, (uint8*)0ull );
			DTYPE$1 = 8ll;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
			LGT$1 = 0ll;
		}
		label$121:;
		label$120:;
	}
	label$119:;
	label$118:;
	struct $8FBSYMBOL* vr$7 = SYMBADDFIELD( PARENT$1, ID$1, DIMS$1, DTB$1, DTYPE$1, SUBTYPE$1, LGT$1, BITS$1, ATTRIB$1 );
	SYM$1 = vr$7;
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$123;
	{
		ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
		goto label$109;
	}
	label$123:;
	label$122:;
	if( (ATTRIB$1 & 4ll) == 0ll ) goto label$125;
	{
		HCOMPLAINABOUTCONSTDYNAMICARRAY( SYM$1 );
	}
	label$125:;
	label$124:;
	HFIELDINIT( PARENT$1, SYM$1, BOUNDSTYPEINI$1 );
	fb$result$1 = -1ll;
	label$109:;
	return fb$result$1;
}

static uint8* HFIELDID( struct $8FBSYMBOL* PARENT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$126:;
	static uint8 ID$1[129];
	{
		int64 TMP$95$2;
		int64 vr$1 = LEXGETCLASS( 0ll );
		TMP$95$2 = vr$1;
		if( TMP$95$2 == 0ll ) goto label$130;
		label$131:;
		if( TMP$95$2 == 1ll ) goto label$130;
		label$132:;
		if( TMP$95$2 != 2ll ) goto label$129;
		label$130:;
		{
			if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16712ll) + 16ll) == 2147483648ll ) goto label$134;
			{
				ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			}
			label$134:;
			label$133:;
			if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16712ll) + 4144ll) <= 0ll ) goto label$136;
			{
				ERRREPORT( 90ll, 0ll, (uint8*)0ull );
			}
			label$136:;
			label$135:;
			int64 vr$6 = LEXGETCLASS( 0ll );
			if( vr$6 != 1ll ) goto label$138;
			{
				if( (*(int64*)((uint8*)PARENT$1 + 24ll) & 262144ll) == 0ll ) goto label$140;
				{
					ERRREPORT( 238ll, 0ll, (uint8*)0ull );
				}
				goto label$139;
				label$140:;
				{
					*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 2048ll);
				}
				label$139:;
			}
			label$138:;
			label$137:;
			uint8* vr$14 = LEXGETTEXT(  );
			fb_StrAssign( (void*)ID$1, 129ll, (void*)vr$14, 0ll, 0 );
			LEXSKIPTOKEN( 0ll );
		}
		goto label$128;
		label$129:;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			uint8* vr$15 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)ID$1, 129ll, (void*)vr$15, 0ll, 0 );
		}
		label$141:;
		label$128:;
	}
	fb$result$1 = (uint8*)ID$1;
	label$127:;
	return fb$result$1;
}

static void HTYPEMULTELEMENTDECL( int64 TOKEN$1, struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$142:;
	static struct $10FBARRAYDIM DTB$1[8];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
	static struct $8FBARRAY1I10FBARRAYDIME tmp$96$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128ll, 16ll, 1ll, 49ll, { { 8ll, 0ll, 7ll } } };
	uint8* ID$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 DTYPE$1;
	int64 BITS$1;
	int64 DIMS$1;
	int64 FIELDATTRIB$1;
	int64 LGT$1;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	LEXSKIPTOKEN( 2048ll );
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
	int64 vr$8 = HMATCH( 44ll, 0ll );
	if( vr$8 != 0ll ) goto label$144;
	label$145:;
	label$143:;
}

static void HTYPEELEMENTDECL( int64 TOKEN$1, struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB ATTRIB$1 )
{
	label$147:;
	static struct $10FBARRAYDIM DTB$1[8];
	struct $8FBARRAY1I10FBARRAYDIME {
		struct $10FBARRAYDIM* DATA;
		struct $10FBARRAYDIM* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10FBARRAYDIME ) == 72 );
	static struct $8FBARRAY1I10FBARRAYDIME tmp$97$1 = { (struct $10FBARRAYDIM*)DTB$1, (struct $10FBARRAYDIM*)DTB$1, 128ll, 16ll, 1ll, 49ll, { { 8ll, 0ll, 7ll } } };
	uint8* ID$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int64 DTYPE$1;
	int64 BITS$1;
	int64 DIMS$1;
	int64 LGT$1;
	struct $7ASTNODE* BOUNDSTYPEINI$1;
	uint8* vr$0 = HFIELDID( PARENT$1 );
	ID$1 = vr$0;
	HARRAYORBITFIELD( TOKEN$1, (int64*)&ATTRIB$1, &BITS$1, &DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$97$1, &BOUNDSTYPEINI$1 );
	int64 vr$5 = LEXGETTOKEN( 0ll );
	if( vr$5 == 376ll ) goto label$150;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
	}
	goto label$149;
	label$150:;
	{
		LEXSKIPTOKEN( 2048ll );
	}
	label$149:;
	HFIELDTYPE( &DTYPE$1, &SUBTYPE$1, &LGT$1 );
	HADDANDINITFIELD( PARENT$1, ID$1, DIMS$1, (struct $7FBARRAYI10FBARRAYDIME*)&tmp$97$1, BOUNDSTYPEINI$1, DTYPE$1, SUBTYPE$1, LGT$1, BITS$1, ATTRIB$1 );
	label$148:;
}

static void HFIELDDECLWITHEXPLICITDIM( int64 TOKEN$1, struct $8FBSYMBOL* S$1, int64 ATTRIB$1 )
{
	label$151:;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 376ll ) goto label$154;
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

static struct $8FBSYMBOL* HTYPEADD( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, uint8* ID_ALIAS$1, int64 ISUNION$1, int64 ALIGN$1, int64 BASEDTYPE$1, struct $8FBSYMBOL* BASESUBTYPE$1, int64 BASESTRINGTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$159:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$2 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, PARENT$1, (uint8*)ID$1, (uint8*)ID_ALIAS$1, ISUNION$1, ALIGN$1, (int64)-(BASESUBTYPE$1 != (struct $8FBSYMBOL*)0ull), 0ll, 0ll );
	S$1 = vr$2;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$162;
	{
		ERRREPORTEX( 4ll, (uint8*)ID$1, 0ll, 1ll, (uint8*)0ull );
		uint8* vr$4 = SYMBUNIQUELABEL(  );
		struct $8FBSYMBOL* vr$5 = SYMBSTRUCTBEGIN( (struct $10FBSYMBOLTB*)0ull, (struct $8FBHASHTB*)0ull, PARENT$1, (uint8*)vr$4, (uint8*)0ull, ISUNION$1, ALIGN$1, (int64)-(BASESUBTYPE$1 != (struct $8FBSYMBOL*)0ull), 0ll, 0ll );
		S$1 = vr$5;
	}
	label$162:;
	label$161:;
	{
		if( BASESTRINGTYPE$1 != 4ll ) goto label$164;
		label$165:;
		{
			*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 131072ll);
		}
		goto label$163;
		label$164:;
		if( BASESTRINGTYPE$1 != 7ll ) goto label$166;
		label$167:;
		{
			*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 65536ll);
		}
		label$166:;
		label$163:;
	}
	if( BASESUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$169;
	{
		SYMBSTRUCTADDBASE( S$1, BASESUBTYPE$1 );
	}
	label$169:;
	label$168:;
	CCOMMENT( 0ll );
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$171;
	{
		if( *(int64*)((uint8*)&ENV$ + 1224ll) != 0ll ) goto label$173;
		{
			struct $7ASTNODE* vr$17 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 49632ll) );
			ASTADD( vr$17 );
			DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 49632ll) );
		}
		label$173:;
		label$172:;
	}
	label$171:;
	label$170:;
	int64 vr$20 = CSTMTSEPARATOR( 0ll );
	if( vr$20 != 0ll ) goto label$175;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, -1ll, 0ll, 0ll );
	}
	label$175:;
	label$174:;
	HTYPEBODY( S$1 );
	SYMBSTRUCTEND( S$1, (int64)-((*(int64*)((uint8*)S$1 + 24ll) & 262144ll) != 0ll) );
	int64 vr$24 = LEXGETTOKEN( 0ll );
	if( vr$24 == 340ll ) goto label$177;
	{
		ERRREPORT( 19ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
	}
	goto label$176;
	label$177:;
	{
		$8FB_TOKEN TMP$98$2;
		LEXSKIPTOKEN( 2048ll );
		int64 vr$25 = LEXGETTOKEN( 0ll );
		if( ISUNION$1 == 0ll ) goto label$178;
		TMP$98$2 = 337ll;
		goto label$355;
		label$178:;
		TMP$98$2 = 336ll;
		label$355:;
		if( vr$25 == TMP$98$2 ) goto label$180;
		{
			ERRREPORT( 19ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		goto label$179;
		label$180:;
		{
			LEXSKIPTOKEN( 2048ll );
		}
		label$179:;
	}
	label$176:;
	fb$result$1 = S$1;
	label$160:;
	return fb$result$1;
}

static int64 CFIELDALIGNMENTATTRIBUTE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$181:;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 491ll ) goto label$184;
	{
		fb$result$1 = 0ll;
		goto label$182;
	}
	label$184:;
	label$183:;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$2 = CASSIGNTOKEN(  );
	if( vr$2 != 0ll ) goto label$186;
	{
		ERRREPORT( 17ll, 0ll, (uint8*)0ull );
	}
	label$186:;
	label$185:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$3 = CEXPRESSION(  );
	EXPR$1 = vr$3;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$188;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$4 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$4;
	}
	label$188:;
	label$187:;
	if( *(int64*)EXPR$1 == 16ll ) goto label$190;
	{
		ERRREPORT( 11ll, 0ll, (uint8*)0ull );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$6;
	}
	label$190:;
	label$189:;
	int64 ALIGN$1;
	int64 vr$7 = ASTCONSTFLUSHTOINT( EXPR$1, 8ll );
	ALIGN$1 = vr$7;
	if( ALIGN$1 >= 0ll ) goto label$192;
	{
		ALIGN$1 = 0ll;
	}
	goto label$191;
	label$192:;
	if( ALIGN$1 <= *(int64*)((uint8*)&ENV$ + 544ll) ) goto label$193;
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
	fb$result$1 = ALIGN$1;
	label$182:;
	return fb$result$1;
}

static void HTYPEBODY( struct $8FBSYMBOL* S$1 )
{
	label$195:;
	int64 ISUNION$1;
	$13FB_SYMBATTRIB ATTRIB$1;
	struct $8FBSYMBOL* INNER$1;
	ATTRIB$1 = 0ll;
	label$197:;
	{
		{
			uint64 TMP$99$3;
			int64 vr$0 = LEXGETTOKEN( 0ll );
			TMP$99$3 = (uint64)vr$0;
			goto label$201;
			label$202:;
			{
				if( ((int64)*(int32*)((uint8*)S$1 + 208ll) & 1ll) == 0ll ) goto label$204;
				{
					ERRREPORT( 17ll, 0ll, (uint8*)0ull );
				}
				label$204:;
				label$203:;
				{
					int64 TMP$100$5;
					int64 vr$4 = LEXGETTOKEN( 0ll );
					TMP$100$5 = vr$4;
					if( TMP$100$5 != 378ll ) goto label$206;
					label$207:;
					{
						ATTRIB$1 = 0ll;
					}
					goto label$205;
					label$206:;
					if( TMP$100$5 != 379ll ) goto label$208;
					label$209:;
					{
						ATTRIB$1 = 2097152ll;
					}
					goto label$205;
					label$208:;
					if( TMP$100$5 != 380ll ) goto label$210;
					label$211:;
					{
						ATTRIB$1 = 4194304ll;
					}
					label$210:;
					label$205:;
				}
				LEXSKIPTOKEN( 2048ll );
				int64 vr$5 = LEXGETTOKEN( 0ll );
				if( vr$5 == 258ll ) goto label$213;
				{
					ERRREPORT( 203ll, 0ll, (uint8*)0ull );
				}
				label$213:;
				label$212:;
			}
			goto label$200;
			label$214:;
			{
				CCOMMENT( 0ll );
			}
			goto label$200;
			label$215:;
			{
				LEXSKIPTOKEN( 0ll );
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
					int64 TMP$101$5;
					int64 vr$6 = LEXGETLOOKAHEAD( 1ll, 0ll );
					TMP$101$5 = vr$6;
					if( TMP$101$5 == 376ll ) goto label$220;
					label$221:;
					if( TMP$101$5 == 40ll ) goto label$220;
					label$222:;
					if( TMP$101$5 != 258ll ) goto label$219;
					label$220:;
					{
						HTYPEELEMENTDECL( 308ll, S$1, ATTRIB$1 );
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
					uint64 TMP$102$5;
					int64 vr$7 = LEXGETLOOKAHEAD( 1ll, 0ll );
					TMP$102$5 = (uint64)vr$7;
					goto label$226;
					label$227:;
					{
						label$228:;
						int64 vr$8 = LEXGETTOKEN( 0ll );
						ISUNION$1 = (int64)-(vr$8 == 337ll);
						if( (int64)-(((int64)*(int32*)((uint8*)S$1 + 208ll) & 1ll) != 0ll) != ISUNION$1 ) goto label$230;
						{
							ERRREPORT( 17ll, 0ll, (uint8*)0ull );
							ISUNION$1 = ~ISUNION$1;
						}
						label$230:;
						label$229:;
						LEXSKIPTOKEN( 2048ll );
						int64 ALIGN$6;
						int64 vr$15 = CFIELDALIGNMENTATTRIBUTE(  );
						ALIGN$6 = vr$15;
						if( ALIGN$6 != 0ll ) goto label$232;
						{
							ALIGN$6 = (int64)*(uint8*)((uint8*)S$1 + 213ll);
						}
						label$232:;
						label$231:;
						uint8* vr$18 = SYMBUNIQUEID( (boolean)0ll );
						struct $8FBSYMBOL* vr$19 = HTYPEADD( S$1, vr$18, (uint8*)0ull, ISUNION$1, ALIGN$6, 0ll, (struct $8FBSYMBOL*)0ull, 0ll );
						INNER$1 = vr$19;
						if( ISUNION$1 == 0ll ) goto label$234;
						{
							*(int32*)((uint8*)INNER$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)INNER$1 + 208ll) | 1ll);
							*(int32*)((uint8*)S$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)S$1 + 208ll) | 8192ll);
						}
						label$234:;
						label$233:;
						struct $8FBSYMBOL* WALKSYMBOLS$6;
						WALKSYMBOLS$6 = *(struct $8FBSYMBOL**)((uint8*)INNER$1 + 104ll);
						label$235:;
						if( WALKSYMBOLS$6 == (struct $8FBSYMBOL*)0ull ) goto label$236;
						{
							*($13FB_SYMBATTRIB*)((uint8*)WALKSYMBOLS$6 + 8ll) = *(int64*)((uint8*)WALKSYMBOLS$6 + 8ll) | ATTRIB$1;
							WALKSYMBOLS$6 = *(struct $8FBSYMBOL**)((uint8*)WALKSYMBOLS$6 + 312ll);
						}
						goto label$235;
						label$236:;
						SYMBINSERTINNERUDT( S$1, INNER$1 );
					}
					goto label$225;
					label$237:;
					{
						int64 vr$35 = LEXGETLOOKAHEADCLASS( 2ll, 0ll );
						if( vr$35 == 3ll ) goto label$239;
						{
							goto label$228;
						}
						label$239:;
						label$238:;
						HTYPEELEMENTDECL( 308ll, S$1, ATTRIB$1 );
					}
					goto label$225;
					label$240:;
					{
						HTYPEELEMENTDECL( 308ll, S$1, ATTRIB$1 );
					}
					goto label$225;
					label$226:;
					static const void* tmp$107[236ll] = {
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
					if( (TMP$102$5 - 256ull) > 235ull ) goto label$240;
					goto *tmp$107[TMP$102$5 - 256ull];
					label$225:;
				}
			}
			goto label$200;
			label$241:;
			{
				HTYPEMULTELEMENTDECL( 308ll, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$242:;
			{
				HTYPEPROTODECL( S$1, ATTRIB$1 );
			}
			goto label$200;
			label$243:;
			{
				int64 vr$36 = LEXGETTOKEN( 0ll );
				HTYPEENUMDECL( S$1, vr$36, ATTRIB$1 );
			}
			goto label$200;
			label$244:;
			{
				HFIELDDECLWITHEXPLICITDIM( 308ll, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$245:;
			{
				HFIELDDECLWITHEXPLICITDIM( 310ll, S$1, ATTRIB$1 | 4ll );
			}
			goto label$200;
			label$246:;
			{
				LEXSKIPTOKEN( 2048ll );
				HTYPESTATICVARDECL( S$1, ATTRIB$1 );
			}
			goto label$200;
			label$247:;
			{
				HTYPEELEMENTDECL( 308ll, S$1, ATTRIB$1 );
			}
			goto label$200;
			label$201:;
			static const void* tmp$108[125ll] = {
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
			if( (TMP$99$3 - 256ull) > 124ull ) goto label$247;
			goto *tmp$108[TMP$99$3 - 256ull];
			label$200:;
		}
		CCOMMENT( 0ll );
		if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$249;
		{
			if( *(int64*)((uint8*)&ENV$ + 1224ll) != 0ll ) goto label$251;
			{
				struct $7ASTNODE* vr$39 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 49632ll) );
				ASTADD( vr$39 );
				DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 49632ll) );
			}
			label$251:;
			label$250:;
		}
		label$249:;
		label$248:;
		int64 vr$42 = CSTMTSEPARATOR( 0ll );
		if( vr$42 != 0ll ) goto label$253;
		{
			ERRREPORT( 3ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, -1ll, 0ll, 0ll );
		}
		label$253:;
		label$252:;
	}
	label$199:;
	goto label$197;
	label$198:;
	struct $8FBSYMBOL* vr$43 = SYMBUDTGETFIRSTFIELD( S$1 );
	if( vr$43 != (struct $8FBSYMBOL*)0ull ) goto label$255;
	{
		ERRREPORT( 256ll, 0ll, (uint8*)0ull );
	}
	label$255:;
	label$254:;
	label$196:;
}

static void HDISALLOWNESTEDCLASSES( struct $8FBSYMBOL* SYM$1 )
{
	label$256:;
	struct $8FBSYMBOL* MEMBER$1;
	if( *(uint64*)((uint8*)&PARSER$ + 192ll) <= 0ull ) goto label$259;
	{
		MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll);
		label$260:;
		if( MEMBER$1 == (struct $8FBSYMBOL*)0ull ) goto label$261;
		{
			if( *(int64*)MEMBER$1 != 3ll ) goto label$263;
			{
				ERRREPORTEX( 263ll, (uint8*)*(uint8**)((uint8*)MEMBER$1 + 32ll), 0ll, 1ll, (uint8*)0ull );
			}
			goto label$262;
			label$263:;
			if( ((int64)-(*(int64*)MEMBER$1 == 1ll) & (int64)-((*(int64*)((uint8*)MEMBER$1 + 8ll) & 16ll) != 0ll)) == 0ll ) goto label$264;
			{
				ERRREPORTEX( 264ll, (uint8*)*(uint8**)((uint8*)MEMBER$1 + 32ll), 0ll, 1ll, (uint8*)0ull );
			}
			label$264:;
			label$262:;
			MEMBER$1 = *(struct $8FBSYMBOL**)((uint8*)MEMBER$1 + 312ll);
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
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 104ll);
	label$336:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$337;
	{
		if( *(int64*)SYM$1 != 3ll ) goto label$339;
		{
			PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
			label$340:;
			if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$341;
			{
				if( ((int64)-((*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) == 20ll) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == PARENT$1)) == 0ll ) goto label$343;
				{
					if( *(int64*)((uint8*)PARAM$1 + 96ll) != 1ll ) goto label$345;
					{
						SYMBRECALCLEN( PARAM$1 );
					}
					label$345:;
					label$344:;
				}
				label$343:;
				label$342:;
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
			}
			goto label$340;
			label$341:;
		}
		label$339:;
		label$338:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
	}
	goto label$336;
	label$337:;
	label$335:;
}

static void HPATCHBYVALRESULTTOSELF( struct $8FBSYMBOL* PARENT$1 )
{
	label$346:;
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 104ll);
	label$348:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$349;
	{
		if( (((int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) == 20ll) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) == PARENT$1)) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll)) == 0ll ) goto label$351;
		{
			if( *(int64*)SYM$1 != 3ll ) goto label$353;
			{
				SYMBPROCRECALCREALTYPE( SYM$1 );
			}
			goto label$352;
			label$353:;
			if( *(int64*)SYM$1 != 1ll ) goto label$354;
			{
				SYMBRECALCLEN( SYM$1 );
			}
			label$354:;
			label$352:;
		}
		label$351:;
		label$350:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
	}
	goto label$348;
	label$349:;
	label$347:;
}
