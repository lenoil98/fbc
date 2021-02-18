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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
struct $17IRLLVMVARINISCOPE {
	int8 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $17IRLLVMVARINISCOPE ) == 1 );
struct $13IRLLVMCONTEXT {
	int64 INDENT;
	int64 LINENUM;
	FBSTRING VARINI;
	int64 VARINISCOPELEVEL;
	struct $17IRLLVMVARINISCOPE VARINISCOPES[128];
	FBSTRING CTORS;
	FBSTRING DTORS;
	int64 CTORCOUNT;
	int64 DTORCOUNT;
	FBSTRING FBCTINF;
	int64 FBCTINF_LEN;
	int64 SECTION;
	FBSTRING HEAD_TXT;
	FBSTRING BODY_TXT;
	FBSTRING FOOT_TXT;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRLLVMCONTEXT ) == 352 );
typedef int64 $6IR_OPT;
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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef int64 $14IR_OPTIONVALUE;
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
struct $9IRCALLARG {
	struct $8FBSYMBOL* PARAM;
	struct $6IRVREG* VR;
	int64 LEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRCALLARG ) == 24 );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStrLarge( int32, int64, void*, int64 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_DoubleToStr( double );
FBSTRING* fb_StrFill2( int64, FBSTRING* );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
static void fb_ctor__irzllvm( void ) __attribute__(( constructor ));
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
int64 FBIS64BIT( void );
int64 FBGETCPUFAMILY( void );
FBSTRING* ASTDUMPOPTOSTR( $6AST_OP );
void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBISDATADESC( struct $8FBSYMBOL* );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int64, tmp$41 );
int64 HFILEEXISTS( uint8* );
uint8* HUNESCAPE( uint8* );
uint32* HUNESCAPEW( uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
int64 HCHARNEEDSESCAPING( int64, int64 );
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
void IRFOREACHDATASTMT( tmp$41 );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void _ZN13IRLLVMCONTEXTC1Ev( struct $13IRLLVMCONTEXT* );
static void _ZN13IRLLVMCONTEXTaSERKS_( struct $13IRLLVMCONTEXT*, struct $13IRLLVMCONTEXT* );
static void _ZN13IRLLVMCONTEXTD1Ev( struct $13IRLLVMCONTEXT* );
static FBSTRING* HEMITTYPE( int64, struct $8FBSYMBOL* );
static void HEMITSTRUCT( struct $8FBSYMBOL* );
static void _EMITDBG( int64, struct $8FBSYMBOL*, int64, uint8* );
static FBSTRING* HVREGTOSTR( struct $6IRVREG* );
static void HEMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void HEMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void HEMITBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _INIT( void );
static void _END( void );
static void HWRITELINE( FBSTRING* );
static void HINTERNALCOMMAND( FBSTRING* );
static void HASTCOMMAND( FBSTRING* );
static void HWRITELABEL( uint8* );
static FBSTRING* HSYMNAME( struct $8FBSYMBOL* );
static FBSTRING* VREGPRETTY( struct $6IRVREG* );
static FBSTRING* HEMITPARAMNAME( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCCALLCONV( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL*, int64, int64 );
static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* );
static void HEMITUDT( struct $8FBSYMBOL* );
static void HBUILDSTRLIT( FBSTRING*, int64, uint8*, int64 );
static void HBUILDWSTRLIT( FBSTRING*, int64, uint32*, int64 );
static FBSTRING* HEMITSTRLITTYPE( int64 );
static FBSTRING* HEMITSYMTYPE( struct $8FBSYMBOL* );
static void HEMITVARIABLE( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* );
static void HEMITCTORDTORARRAYELEMENT( struct $8FBSYMBOL*, FBSTRING* );
static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* );
static int64 _EMITBEGIN( void );
static void _EMITEND( void );
static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int64 _SUPPORTSOP( int64, int64 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
static void HADDOFFSET( struct $6IRVREG*, int64, struct $8FBSYMBOL*, int64 );
static void HPREPAREADDRESS( struct $6IRVREG* );
static void HLOADVREG( struct $6IRVREG* );
static FBSTRING* HEMITINT( int64, struct $8FBSYMBOL*, int64 );
static FBSTRING* HEMITLONG( int64 );
static FBSTRING* HEMITFLOAT( double );
static int64 HISFIXLENSTR( struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static uint8* HGETBOPCODE( int64, int64 );
static void HLOADOPERANDSANDWRITEBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, int64, struct $8FBSYMBOL* );
static void _EMITBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void HBUILTINUOP( int64, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITUOP( int64, struct $6IRVREG*, struct $6IRVREG* );
static uint8* HGETCONVOPCODE( int64, int64 );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int64, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( uint8*, struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
static void _EMITCALL( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int64, struct $8FBSYMBOL* );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITMACRO( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _EMITCOMMENT( uint8* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void HVARINIELEMENTTYPE( struct $8FBSYMBOL* );
static void HVARINISEPARATOR( void );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void HMAYBEADDCONV( FBSTRING*, int64, struct $8FBSYMBOL*, FBSTRING*, int64, struct $8FBSYMBOL*, FBSTRING* );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITVARINISTR( int64, uint8*, int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int64 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFSTRING( uint8* );
static void _EMITFBCTINFEND( void );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
typedef void (*tmp$37)( void );
typedef int64 (*tmp$38)( void );
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int64 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( int64, struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$56)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint32*, int64 );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$68)( uint8* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$76)( struct $6IRVREG* );
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
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
extern struct $7IR_VTBL IRLLVM_VTBL$;
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
extern struct $10AST_OPINFO AST_OPTB$[121];
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 844304 );
extern struct $7LEX_CTX LEX$;
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
struct $11IRHLCONTEXT {
	int64 REGCOUNT;
	struct $6TFLIST VREGS;
	struct $5TLIST CALLARGS;
};
__FB_STATIC_ASSERT( sizeof( struct $11IRHLCONTEXT ) == 184 );
extern struct $11IRHLCONTEXT IRHL$;
struct $7BUILTIN {
	uint8* DECL;
	int64 USED;
};
__FB_STATIC_ASSERT( sizeof( struct $7BUILTIN ) == 16 );
static struct $7BUILTIN BUILTINS$[18] = { { (uint8*)"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind" }, { (uint8*)"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind" }, { (uint8*)"declare float  @llvm.sin.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.sin.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.cos.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.cos.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.exp.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.exp.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.log.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.log.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.sqrt.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.sqrt.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.floor.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.floor.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.fabs.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.fabs.f64(double) nounwind" }, { (uint8*)"declare float  @llvm.nearbyint.f32(float ) nounwind" }, { (uint8*)"declare double @llvm.nearbyint.f64(double) nounwind" } };
static struct $13IRLLVMCONTEXT CTX$;
static uint8* DTYPENAME$[26] = { (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i8", (uint8*)"i16", (uint8*)"i16", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)"i32", (uint8*)"i32", (uint8*)"i64", (uint8*)"i64", (uint8*)"float", (uint8*)"double", (uint8*)"%FBSTRING", (uint8*)"i8", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)"i8", (uint8*)0ull };
struct $7IR_VTBL IRLLVM_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)0ull, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)0ull, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$53)0ull, (tmp$51)&_EMITADDR, (tmp$54)&_EMITCALL, (tmp$55)&_EMITCALLPTR, (tmp$45)0ull, (tmp$52)&_EMITJUMPPTR, (tmp$56)&_EMITBRANCH, (tmp$57)&_EMITJMPTB, (tmp$58)&_EMITMEM, (tmp$59)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$60)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$61)&_EMITVARINII, (tmp$62)&_EMITVARINIF, (tmp$63)&_EMITVARINIOFS, (tmp$64)&_EMITVARINISTR, (tmp$65)&_EMITVARINIWSTR, (tmp$66)&_EMITVARINIPAD, (tmp$67)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$68)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$69)&IRHLALLOCVREG, (tmp$70)&IRHLALLOCVRIMM, (tmp$71)&IRHLALLOCVRIMMF, (tmp$72)&IRHLALLOCVRVAR, (tmp$73)&IRHLALLOCVRIDX, (tmp$74)&IRHLALLOCVRPTR, (tmp$72)&IRHLALLOCVROFS, (tmp$75)&_SETVREGDATATYPE, (tmp$76)0ull, (tmp$51)0ull, (tmp$44)0ull, (tmp$45)0ull };

__attribute__(( constructor )) static void fb_ctor__irzllvm( void )
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

static void _ZN13IRLLVMCONTEXTC1Ev( struct $13IRLLVMCONTEXT* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 8ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 16ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 40ll), 0, 8ll );
	__builtin_memset( (struct $17IRLLVMVARINISCOPE*)((uint8*)THIS$1 + 48ll), 0, 128ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 176ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 200ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 224ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 232ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 240ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 264ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 272ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 280ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 304ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 328ll), 0, 24ll );
	label$10:;
	label$11:;
}

static void _ZN13IRLLVMCONTEXTaSERKS_( struct $13IRLLVMCONTEXT* THIS$1, struct $13IRLLVMCONTEXT* __FB_RHS__$1 )
{
	int64 TMP$114$1;
	struct $17IRLLVMVARINISCOPE* TMP$115$1;
	struct $17IRLLVMVARINISCOPE* TMP$116$1;
	label$12:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	*(int64*)((uint8*)THIS$1 + 8ll) = *(int64*)((uint8*)__FB_RHS__$1 + 8ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 16ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 16ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 40ll) = *(int64*)((uint8*)__FB_RHS__$1 + 40ll);
	TMP$115$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)THIS$1 + 48ll);
	TMP$116$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)__FB_RHS__$1 + 48ll);
	TMP$114$1 = 0ll;
	label$14:;
	__builtin_memcpy( TMP$115$1, TMP$116$1, 1 );
	TMP$115$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)TMP$115$1 + 1ll);
	TMP$116$1 = (struct $17IRLLVMVARINISCOPE*)((uint8*)TMP$116$1 + 1ll);
	TMP$114$1 = TMP$114$1 + 1ll;
	if( TMP$114$1 != 128ll ) goto label$14;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 176ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 176ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 200ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 200ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 224ll) = *(int64*)((uint8*)__FB_RHS__$1 + 224ll);
	*(int64*)((uint8*)THIS$1 + 232ll) = *(int64*)((uint8*)__FB_RHS__$1 + 232ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 240ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 240ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 264ll) = *(int64*)((uint8*)__FB_RHS__$1 + 264ll);
	*(int64*)((uint8*)THIS$1 + 272ll) = *(int64*)((uint8*)__FB_RHS__$1 + 272ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 280ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 280ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 304ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 304ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 328ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 328ll), -1ll, 0 );
	label$13:;
}

static void _ZN13IRLLVMCONTEXTD1Ev( struct $13IRLLVMCONTEXT* THIS$1 )
{
	label$17:;
	label$18:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 328ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 304ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 280ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 240ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 200ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 176ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 16ll) );
}

static void _INIT( void )
{
	label$19:;
	IRHLINIT(  );
	*($6IR_OPT*)((uint8*)&IR$ + 552ll) = *(int64*)((uint8*)&IR$ + 552ll) | 131074ll;
	int64 vr$1 = FBIS64BIT(  );
	if( vr$1 == 0ll ) goto label$22;
	{
		*(uint8**)((uint8*)DTYPENAME$ + 64ll) = *(uint8**)((uint8*)DTYPENAME$ + 104ll);
		*(uint8**)((uint8*)DTYPENAME$ + 72ll) = *(uint8**)((uint8*)DTYPENAME$ + 112ll);
	}
	goto label$21;
	label$22:;
	{
		*(uint8**)((uint8*)DTYPENAME$ + 64ll) = *(uint8**)((uint8*)DTYPENAME$ + 88ll);
		*(uint8**)((uint8*)DTYPENAME$ + 72ll) = *(uint8**)((uint8*)DTYPENAME$ + 96ll);
	}
	label$21:;
	label$20:;
}

static void _END( void )
{
	label$23:;
	IRHLEND(  );
	label$24:;
}

static void HWRITELINE( FBSTRING* LN$1 )
{
	int64 TMP$125$1;
	FBSTRING TMP$129$1;
	label$25:;
	if( *(int64*)&CTX$ <= 0ll ) goto label$27;
	int64 vr$0 = fb_StrLen( (void*)LN$1, -1ll );
	TMP$125$1 = (int64)-(vr$0 > 0ll);
	goto label$728;
	label$27:;
	TMP$125$1 = 0ll;
	label$728:;
	if( TMP$125$1 == 0ll ) goto label$29;
	{
		FBSTRING TMP$127$2;
		FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1ll );
		FBSTRING* vr$3 = fb_StrFill2( *(int64*)&CTX$, (FBSTRING*)vr$2 );
		__builtin_memset( &TMP$127$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$127$2, (void*)vr$3, -1ll, (void*)LN$1, -1ll );
		fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$6, -1ll, 0 );
	}
	label$29:;
	label$28:;
	__builtin_memset( &TMP$129$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$129$1, (void*)LN$1, -1ll, (void*)"\x0A", 2ll );
	fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$9, -1ll, 0 );
	{
		uint64 TMP$130$2;
		TMP$130$2 = *(uint64*)((uint8*)&CTX$ + 272ll);
		goto label$31;
		label$32:;
		{
			FBSTRING TMP$131$3;
			__builtin_memset( &TMP$131$3, 0, 24ll );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$131$3, (void*)((uint8*)&CTX$ + 280ll), -1ll, (void*)LN$1, -1ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 280ll), -1ll, (void*)vr$13, -1ll, 0 );
		}
		goto label$30;
		label$33:;
		{
			FBSTRING TMP$132$3;
			__builtin_memset( &TMP$132$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$132$3, (void*)((uint8*)&CTX$ + 304ll), -1ll, (void*)LN$1, -1ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 304ll), -1ll, (void*)vr$18, -1ll, 0 );
		}
		goto label$30;
		label$34:;
		{
			FBSTRING TMP$133$3;
			__builtin_memset( &TMP$133$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$133$3, (void*)((uint8*)&CTX$ + 328ll), -1ll, (void*)LN$1, -1ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 328ll), -1ll, (void*)vr$23, -1ll, 0 );
		}
		goto label$30;
		label$31:;
		static const void* tmp$585[3ll] = {
			&&label$32,
			&&label$33,
			&&label$34,
		};
		if( TMP$130$2 > 2ull ) goto label$30;
		goto *tmp$585[TMP$130$2 - 0ull];
		label$30:;
	}
	label$26:;
}

static void HINTERNALCOMMAND( FBSTRING* MESSAGE$1 )
{
	FBSTRING TMP$135$1;
	FBSTRING TMP$136$1;
	label$35:;
	__builtin_memset( &TMP$136$1, 0, 24ll );
	__builtin_memset( &TMP$135$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$135$1, (void*)"; ", 3ll, (void*)MESSAGE$1, -1ll );
	fb_StrAssign( (void*)&TMP$136$1, -1ll, (void*)vr$3, -1ll, 0 );
	HWRITELINE( &TMP$136$1 );
	fb_StrDelete( (FBSTRING*)&TMP$136$1 );
	label$36:;
}

static void HASTCOMMAND( FBSTRING* MESSAGE$1 )
{
	FBSTRING TMP$137$1;
	label$37:;
	__builtin_memset( &TMP$137$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$137$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$137$1 );
	fb_StrDelete( (FBSTRING*)&TMP$137$1 );
	HINTERNALCOMMAND( MESSAGE$1 );
	label$38:;
}

static void HWRITELABEL( uint8* ID$1 )
{
	FBSTRING TMP$139$1;
	FBSTRING TMP$140$1;
	label$39:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	__builtin_memset( &TMP$140$1, 0, 24ll );
	__builtin_memset( &TMP$139$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$139$1, (void*)ID$1, 0ll, (void*)":", 2ll );
	fb_StrAssign( (void*)&TMP$140$1, -1ll, (void*)vr$4, -1ll, 0 );
	HWRITELINE( &TMP$140$1 );
	fb_StrDelete( (FBSTRING*)&TMP$140$1 );
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	label$40:;
}

static FBSTRING* HSYMNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$41:;
	if( *(uint8**)((uint8*)SYM$1 + 40ll) == (uint8*)0ull ) goto label$44;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
	}
	goto label$43;
	label$44:;
	{
		fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll, 0 );
	}
	label$43:;
	label$42:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* VREGPRETTY( struct $6IRVREG* V$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$45:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	{
		$15IRVREGTYPE_ENUM TMP$141$2;
		TMP$141$2 = *($15IRVREGTYPE_ENUM*)V$1;
		if( TMP$141$2 != 0ll ) goto label$48;
		label$49:;
		{
			int64 TMP$142$3;
			if( (*(int64*)((uint8*)V$1 + 8ll) & 480ll) == 0ll ) goto label$50;
			TMP$142$3 = 24ll;
			goto label$729;
			label$50:;
			TMP$142$3 = *(int64*)((uint8*)V$1 + 8ll) & 31ll;
			label$729:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$142$3 * 56ll)) != 1ll ) goto label$52;
			{
				FBSTRING* vr$9 = fb_DoubleToStr( *(double*)((uint8*)V$1 + 48ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$9, -1ll, 0 );
			}
			goto label$51;
			label$52:;
			{
				FBSTRING* vr$12 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 48ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$12, -1ll, 0 );
			}
			label$51:;
		}
		goto label$47;
		label$48:;
		if( TMP$141$2 != 4ll ) goto label$53;
		label$54:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$56;
			{
				FBSTRING* vr$16 = HSYMNAME( *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$16, -1ll, 0 );
			}
			goto label$55;
			label$56:;
			{
				FBSTRING TMP$144$4;
				FBSTRING* vr$19 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 24ll) );
				__builtin_memset( &TMP$144$4, 0, 24ll );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$144$4, (void*)"vr", 3ll, (void*)vr$19, -1ll );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$22, -1ll, 0 );
			}
			label$55:;
		}
		goto label$47;
		label$53:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll) == (struct $8FBSYMBOL*)0ull ) goto label$59;
			{
				FBSTRING* vr$26 = HSYMNAME( *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$26, -1ll, 0 );
			}
			label$59:;
			label$58:;
		}
		label$57:;
		label$47:;
	}
	if( *(struct $6IRVREG**)((uint8*)V$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$61;
	{
		FBSTRING TMP$146$2;
		int64 vr$30 = fb_StrLen( (void*)&S$1, -1ll );
		if( vr$30 <= 0ll ) goto label$63;
		{
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"+", 2ll, 0 );
		}
		label$63:;
		label$62:;
		FBSTRING* vr$33 = VREGPRETTY( *(struct $6IRVREG**)((uint8*)V$1 + 80ll) );
		__builtin_memset( &TMP$146$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$146$2, (void*)&S$1, -1ll, (void*)vr$33, -1ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$37, -1ll, 0 );
	}
	label$61:;
	label$60:;
	if( *(int64*)((uint8*)V$1 + 64ll) == 0ll ) goto label$65;
	{
		FBSTRING TMP$147$2;
		FBSTRING TMP$148$2;
		FBSTRING* vr$41 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 64ll) );
		__builtin_memset( &TMP$147$2, 0, 24ll );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$147$2, (void*)"+", 2ll, (void*)vr$41, -1ll );
		__builtin_memset( &TMP$148$2, 0, 24ll );
		FBSTRING* vr$48 = fb_StrConcat( &TMP$148$2, (void*)&S$1, -1ll, (void*)vr$44, -1ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$48, -1ll, 0 );
	}
	label$65:;
	label$64:;
	if( *(int64*)((uint8*)V$1 + 72ll) == 0ll ) goto label$67;
	{
		FBSTRING TMP$150$2;
		FBSTRING TMP$151$2;
		FBSTRING* vr$52 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 72ll) );
		__builtin_memset( &TMP$150$2, 0, 24ll );
		FBSTRING* vr$55 = fb_StrConcat( &TMP$150$2, (void*)"*", 2ll, (void*)vr$52, -1ll );
		__builtin_memset( &TMP$151$2, 0, 24ll );
		FBSTRING* vr$59 = fb_StrConcat( &TMP$151$2, (void*)&S$1, -1ll, (void*)vr$55, -1ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$59, -1ll, 0 );
	}
	label$67:;
	label$66:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$46:;
	FBSTRING* vr$65 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$65;
}

static FBSTRING* HEMITPARAMNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$153$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$68:;
	uint8* vr$1 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$153$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$153$1, (void*)vr$1, 0ll, (void*)"$", 2ll );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$4, -1ll, 0 );
	label$69:;
	FBSTRING* vr$7 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$7;
}

static FBSTRING* HEMITPROCCALLCONV( struct $8FBSYMBOL* PROC$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$70:;
	int64 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0ll ) goto label$73;
	{
		goto label$71;
	}
	label$73:;
	label$72:;
	{
		uint64 TMP$154$2;
		TMP$154$2 = *(uint64*)((uint8*)PROC$1 + 152ll);
		goto label$75;
		label$76:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"x86_stdcallcc ", 15ll, 0 );
		}
		goto label$74;
		label$75:;
		static const void* tmp$586[4ll] = {
			&&label$76,
			&&label$76,
			&&label$74,
			&&label$76,
		};
		if( (TMP$154$2 - 1ull) > 3ull ) goto label$74;
		goto *tmp$586[TMP$154$2 - 1ull];
		label$74:;
	}
	label$71:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL* PROC$1, int64 IS_PROTO$1, int64 IS_TYPE$1 )
{
	FBSTRING TMP$156$1;
	struct $8FBSYMBOL* TMP$163$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$77:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING* vr$2 = HEMITPROCCALLCONV( PROC$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$2, -1ll, 0 );
	FBSTRING* vr$7 = HEMITTYPE( *(int64*)((uint8*)PROC$1 + 160ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) );
	__builtin_memset( &TMP$156$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$156$1, (void*)&LN$1, -1ll, (void*)vr$7, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$11, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	if( IS_TYPE$1 != 0ll ) goto label$80;
	{
		FBSTRING TMP$158$2;
		uint8* vr$14 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$158$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$158$2, (void*)&LN$1, -1ll, (void*)vr$14, 0ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$18, -1ll, 0 );
	}
	label$80:;
	label$79:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"( ", 3ll, 0 );
	struct $8FBSYMBOL* HIDDEN$1;
	HIDDEN$1 = (struct $8FBSYMBOL*)0ull;
	int64 vr$21 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$21 == 0ll ) goto label$82;
	{
		if( IS_PROTO$1 == 0ll ) goto label$84;
		{
			FBSTRING TMP$160$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll);
			FBSTRING* vr$40 = HEMITTYPE( ((((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 32505856ll), HIDDEN$1 );
			__builtin_memset( &TMP$160$3, 0, 24ll );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$160$3, (void*)&LN$1, -1ll, (void*)vr$40, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$44, -1ll, 0 );
		}
		goto label$83;
		label$84:;
		{
			FBSTRING TMP$161$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll);
			FBSTRING* vr$66 = HEMITTYPE( ((((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)HIDDEN$1 + 64ll) );
			__builtin_memset( &TMP$161$3, 0, 24ll );
			FBSTRING* vr$70 = fb_StrConcat( &TMP$161$3, (void*)&LN$1, -1ll, (void*)vr$66, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$70, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			FBSTRING* vr$73 = HEMITPARAMNAME( HIDDEN$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$73, -1ll, 0 );
		}
		label$83:;
		if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) <= 0ll ) goto label$86;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$86:;
		label$85:;
	}
	label$82:;
	label$81:;
	struct $8FBSYMBOL* PARAM$1;
	if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$87;
	TMP$163$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	goto label$730;
	label$87:;
	TMP$163$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$730:;
	PARAM$1 = TMP$163$1;
	label$88:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$89;
	{
		struct $8FBSYMBOL* TMP$167$2;
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$91;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"...", 4ll, 0 );
		}
		goto label$90;
		label$91:;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( PARAM$1, &DTYPE$1, &SUBTYPE$1 );
			FBSTRING* vr$85 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$85, -1ll, 0 );
			if( IS_PROTO$1 != 0ll ) goto label$93;
			{
				FBSTRING TMP$165$4;
				FBSTRING TMP$166$4;
				FBSTRING* vr$88 = HEMITPARAMNAME( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 104ll) );
				__builtin_memset( &TMP$165$4, 0, 24ll );
				FBSTRING* vr$91 = fb_StrConcat( &TMP$165$4, (void*)" ", 2ll, (void*)vr$88, -1ll );
				__builtin_memset( &TMP$166$4, 0, 24ll );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$166$4, (void*)&LN$1, -1ll, (void*)vr$91, -1ll );
				fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$95, -1ll, 0 );
			}
			label$93:;
			label$92:;
		}
		label$90:;
		if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$94;
		TMP$167$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
		goto label$731;
		label$94:;
		TMP$167$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		label$731:;
		PARAM$1 = TMP$167$2;
		if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$96;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$96:;
		label$95:;
	}
	goto label$88;
	label$89:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" )", 3ll, 0 );
	if( IS_TYPE$1 != 0ll ) goto label$98;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" nounwind", 10ll, 0 );
		if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) == 0ll ) goto label$100;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" naked", 7ll, 0 );
		}
		label$100:;
		label$99:;
	}
	label$98:;
	label$97:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&LN$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$78:;
	FBSTRING* vr$110 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$110;
}

static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$101:;
	struct $8FBSYMBOL* NS$1;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll);
	FBSTRING S$1;
	fb_StrInit( (void*)&S$1, -1ll, (void*)"%", 2ll, 0 );
	label$103:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$104;
	{
		FBSTRING TMP$172$2;
		__builtin_memset( &TMP$172$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$172$2, (void*)&S$1, -1ll, *(void**)((uint8*)NS$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$9, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)".", 2ll, 0 );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	goto label$103;
	label$104:;
	if( *(uint8**)((uint8*)SYM$1 + 40ll) == (uint8*)0ull ) goto label$106;
	{
		FBSTRING TMP$173$2;
		__builtin_memset( &TMP$173$2, 0, 24ll );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$173$2, (void*)&S$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$19, -1ll, 0 );
	}
	goto label$105;
	label$106:;
	{
		FBSTRING TMP$174$2;
		__builtin_memset( &TMP$174$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$174$2, (void*)&S$1, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$25, -1ll, 0 );
	}
	label$105:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$102:;
	FBSTRING* vr$31 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$31;
}

static void HEMITUDT( struct $8FBSYMBOL* S$1 )
{
	label$107:;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$110;
	{
		goto label$108;
	}
	label$110:;
	label$109:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 67108864ll) == 0ll ) goto label$112;
	{
		goto label$108;
	}
	label$112:;
	label$111:;
	int64 OLDSECTION$1;
	OLDSECTION$1 = *(int64*)((uint8*)&CTX$ + 272ll);
	if( (*(int64*)((uint8*)S$1 + 8ll) & 128ll) != 0ll ) goto label$114;
	{
		*(int64*)((uint8*)&CTX$ + 272ll) = 0ll;
	}
	label$114:;
	label$113:;
	{
		uint64 TMP$175$2;
		TMP$175$2 = *(uint64*)S$1;
		goto label$116;
		label$117:;
		{
			FBSTRING TMP$177$3;
			FBSTRING TMP$178$3;
			FBSTRING TMP$179$3;
			*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 67108864ll;
			__builtin_memset( &TMP$179$3, 0, 24ll );
			FBSTRING* vr$9 = HEMITTYPE( 10ll, (struct $8FBSYMBOL*)0ull );
			FBSTRING* vr$10 = HGETUDTNAME( S$1 );
			__builtin_memset( &TMP$177$3, 0, 24ll );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$177$3, (void*)vr$10, -1ll, (void*)" = type ", 9ll );
			__builtin_memset( &TMP$178$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$178$3, (void*)vr$13, -1ll, (void*)vr$9, -1ll );
			fb_StrAssign( (void*)&TMP$179$3, -1ll, (void*)vr$16, -1ll, 0 );
			HWRITELINE( &TMP$179$3 );
			fb_StrDelete( (FBSTRING*)&TMP$179$3 );
		}
		goto label$115;
		label$118:;
		{
			HEMITSTRUCT( S$1 );
		}
		goto label$115;
		label$116:;
		static const void* tmp$587[2ll] = {
			&&label$117,
			&&label$118,
		};
		if( (TMP$175$2 - 9ull) > 1ull ) goto label$115;
		goto *tmp$587[TMP$175$2 - 9ull];
		label$115:;
	}
	*(int64*)((uint8*)&CTX$ + 272ll) = OLDSECTION$1;
	label$108:;
}

static void HBUILDSTRLIT( FBSTRING* LN$1, int64 WANTEDLENGTH$1, uint8* Z$1, int64 LENGTH$1 )
{
	label$119:;
	int64 CH$1;
	if( LENGTH$1 <= WANTEDLENGTH$1 ) goto label$122;
	{
		LENGTH$1 = WANTEDLENGTH$1;
	}
	label$122:;
	label$121:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$180$2;
		TMP$180$2 = LENGTH$1 + -1ll;
		goto label$123;
		label$126:;
		{
			CH$1 = (int64)*(uint8*)((uint8*)Z$1 + I$2);
			int64 vr$3 = HCHARNEEDSESCAPING( CH$1, 34ll );
			if( vr$3 == 0ll ) goto label$128;
			{
				FBSTRING TMP$183$4;
				FBSTRING TMP$184$4;
				FBSTRING* vr$4 = fb_HEXEx_l( (uint64)CH$1, 2 );
				__builtin_memset( &TMP$183$4, 0, 24ll );
				FBSTRING* vr$7 = fb_StrConcat( &TMP$183$4, (void*)"\x5C", 2ll, (void*)vr$4, -1ll );
				__builtin_memset( &TMP$184$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$184$4, (void*)LN$1, -1ll, (void*)vr$7, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$10, -1ll, 0 );
			}
			goto label$127;
			label$128:;
			{
				FBSTRING TMP$185$4;
				FBSTRING* vr$11 = fb_CHR( 1, CH$1 );
				__builtin_memset( &TMP$185$4, 0, 24ll );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$185$4, (void*)LN$1, -1ll, (void*)vr$11, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$14, -1ll, 0 );
			}
			label$127:;
		}
		label$124:;
		I$2 = I$2 + 1ll;
		label$123:;
		if( I$2 <= TMP$180$2 ) goto label$126;
		label$125:;
	}
	label$129:;
	if( LENGTH$1 >= WANTEDLENGTH$1 ) goto label$130;
	{
		FBSTRING TMP$187$2;
		__builtin_memset( &TMP$187$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$187$2, (void*)LN$1, -1ll, (void*)"\x5C" "00", 4ll );
		fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$18, -1ll, 0 );
		LENGTH$1 = LENGTH$1 + 1ll;
	}
	goto label$129;
	label$130:;
	label$120:;
}

static void HBUILDWSTRLIT( FBSTRING* LN$1, int64 WANTEDLENGTH$1, uint32* W$1, int64 LENGTH$1 )
{
	label$131:;
	uint64 CH$1;
	uint64 WCHARSIZE$1;
	WCHARSIZE$1 = *(uint64*)((uint8*)SYMB_DTYPETB$ + 400ll);
	if( LENGTH$1 <= WANTEDLENGTH$1 ) goto label$134;
	{
		LENGTH$1 = WANTEDLENGTH$1;
	}
	label$134:;
	label$133:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$188$2;
		TMP$188$2 = LENGTH$1 + -1ll;
		goto label$135;
		label$138:;
		{
			CH$1 = (uint64)*(uint32*)((uint8*)W$1 + (I$2 << (2ll & 63ll)));
			int64 vr$4 = HCHARNEEDSESCAPING( (int64)CH$1, 34ll );
			if( vr$4 == 0ll ) goto label$140;
			{
				if( WCHARSIZE$1 < 1ull ) goto label$142;
				{
					FBSTRING TMP$189$5;
					FBSTRING TMP$190$5;
					FBSTRING* vr$6 = fb_HEXEx_l( CH$1 & 255ull, 2 );
					__builtin_memset( &TMP$189$5, 0, 24ll );
					FBSTRING* vr$9 = fb_StrConcat( &TMP$189$5, (void*)"\x5C", 2ll, (void*)vr$6, -1ll );
					__builtin_memset( &TMP$190$5, 0, 24ll );
					FBSTRING* vr$12 = fb_StrConcat( &TMP$190$5, (void*)LN$1, -1ll, (void*)vr$9, -1ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$12, -1ll, 0 );
				}
				label$142:;
				label$141:;
				if( WCHARSIZE$1 < 2ull ) goto label$144;
				{
					FBSTRING TMP$191$5;
					FBSTRING TMP$192$5;
					FBSTRING* vr$15 = fb_HEXEx_l( (CH$1 >> (8ll & 63ll)) & 255ull, 2 );
					__builtin_memset( &TMP$191$5, 0, 24ll );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$191$5, (void*)"\x5C", 2ll, (void*)vr$15, -1ll );
					__builtin_memset( &TMP$192$5, 0, 24ll );
					FBSTRING* vr$21 = fb_StrConcat( &TMP$192$5, (void*)LN$1, -1ll, (void*)vr$18, -1ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$21, -1ll, 0 );
				}
				label$144:;
				label$143:;
				if( WCHARSIZE$1 < 4ull ) goto label$146;
				{
					FBSTRING TMP$193$5;
					FBSTRING TMP$194$5;
					FBSTRING TMP$195$5;
					FBSTRING TMP$196$5;
					FBSTRING* vr$24 = fb_HEXEx_l( (CH$1 >> (16ll & 63ll)) & 255ull, 2 );
					__builtin_memset( &TMP$193$5, 0, 24ll );
					FBSTRING* vr$27 = fb_StrConcat( &TMP$193$5, (void*)"\x5C", 2ll, (void*)vr$24, -1ll );
					__builtin_memset( &TMP$194$5, 0, 24ll );
					FBSTRING* vr$30 = fb_StrConcat( &TMP$194$5, (void*)LN$1, -1ll, (void*)vr$27, -1ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$30, -1ll, 0 );
					FBSTRING* vr$33 = fb_HEXEx_l( (CH$1 >> (24ll & 63ll)) & 255ull, 2 );
					__builtin_memset( &TMP$195$5, 0, 24ll );
					FBSTRING* vr$36 = fb_StrConcat( &TMP$195$5, (void*)"\x5C", 2ll, (void*)vr$33, -1ll );
					__builtin_memset( &TMP$196$5, 0, 24ll );
					FBSTRING* vr$39 = fb_StrConcat( &TMP$196$5, (void*)LN$1, -1ll, (void*)vr$36, -1ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$39, -1ll, 0 );
				}
				label$146:;
				label$145:;
			}
			goto label$139;
			label$140:;
			{
				FBSTRING TMP$197$4;
				FBSTRING* vr$40 = fb_CHR( 1, (int64)CH$1 );
				__builtin_memset( &TMP$197$4, 0, 24ll );
				FBSTRING* vr$43 = fb_StrConcat( &TMP$197$4, (void*)LN$1, -1ll, (void*)vr$40, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$43, -1ll, 0 );
				{
					int64 J$5;
					J$5 = 2ll;
					int64 TMP$198$5;
					TMP$198$5 = (int64)WCHARSIZE$1;
					goto label$147;
					label$150:;
					{
						FBSTRING TMP$199$6;
						__builtin_memset( &TMP$199$6, 0, 24ll );
						FBSTRING* vr$46 = fb_StrConcat( &TMP$199$6, (void*)LN$1, -1ll, (void*)"\x5C" "00", 4ll );
						fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$46, -1ll, 0 );
					}
					label$148:;
					J$5 = J$5 + 1ll;
					label$147:;
					if( J$5 <= TMP$198$5 ) goto label$150;
					label$149:;
				}
			}
			label$139:;
		}
		label$136:;
		I$2 = I$2 + 1ll;
		label$135:;
		if( I$2 <= TMP$188$2 ) goto label$138;
		label$137:;
	}
	label$151:;
	if( LENGTH$1 >= WANTEDLENGTH$1 ) goto label$152;
	{
		{
			int64 J$3;
			J$3 = 1ll;
			int64 TMP$200$3;
			TMP$200$3 = (int64)WCHARSIZE$1;
			goto label$153;
			label$156:;
			{
				FBSTRING TMP$201$4;
				__builtin_memset( &TMP$201$4, 0, 24ll );
				FBSTRING* vr$51 = fb_StrConcat( &TMP$201$4, (void*)LN$1, -1ll, (void*)"\x5C" "00", 4ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$51, -1ll, 0 );
			}
			label$154:;
			J$3 = J$3 + 1ll;
			label$153:;
			if( J$3 <= TMP$200$3 ) goto label$156;
			label$155:;
		}
		LENGTH$1 = LENGTH$1 + 1ll;
	}
	goto label$151;
	label$152:;
	label$132:;
}

static FBSTRING* HEMITSTRLITTYPE( int64 LENGTH$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$157:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"[", 2ll, 0 );
	FBSTRING* vr$2 = fb_LongintToStr( LENGTH$1 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)" x i8]", 7ll, 0 );
	label$158:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static FBSTRING* HEMITSYMTYPE( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$159:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$162;
	{
		FBSTRING* vr$16 = HEMITTYPE( (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$16, -1ll, 0 );
	}
	goto label$161;
	label$162:;
	{
		{
			if( DTYPE$1 == 18ll ) goto label$165;
			label$166:;
			if( DTYPE$1 == 4ll ) goto label$165;
			label$167:;
			if( DTYPE$1 != 7ll ) goto label$164;
			label$165:;
			{
				FBSTRING* vr$19 = HEMITSTRLITTYPE( *(int64*)((uint8*)SYM$1 + 80ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$19, -1ll, 0 );
			}
			goto label$163;
			label$164:;
			{
				FBSTRING* vr$22 = HEMITTYPE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$22, -1ll, 0 );
			}
			label$168:;
			label$163:;
		}
	}
	label$161:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$170;
	{
	}
	goto label$169;
	label$170:;
	{
		{
			$12FB_SYMBCLASS TMP$204$3;
			TMP$204$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$204$3 == 1ll ) goto label$173;
			label$174:;
			if( TMP$204$3 != 12ll ) goto label$172;
			label$173:;
			{
				{
					int64 I$5;
					I$5 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
					goto label$175;
					label$178:;
					{
						FBSTRING TMP$207$6;
						FBSTRING TMP$208$6;
						FBSTRING TMP$209$6;
						FBSTRING TMP$210$6;
						int64 ELEMENTS$6;
						ELEMENTS$6 = (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll)))) + 1ll;
						__builtin_memset( &TMP$208$6, 0, 24ll );
						FBSTRING* vr$40 = fb_StrConcat( &TMP$208$6, (void*)" x ", 4ll, (void*)&S$1, -1ll );
						__builtin_memset( &TMP$209$6, 0, 24ll );
						FBSTRING* vr$43 = fb_StrConcat( &TMP$209$6, (void*)vr$40, -1ll, (void*)"]", 2ll );
						FBSTRING* vr$44 = fb_LongintToStr( ELEMENTS$6 );
						__builtin_memset( &TMP$207$6, 0, 24ll );
						FBSTRING* vr$47 = fb_StrConcat( &TMP$207$6, (void*)"[", 2ll, (void*)vr$44, -1ll );
						__builtin_memset( &TMP$210$6, 0, 24ll );
						FBSTRING* vr$50 = fb_StrConcat( &TMP$210$6, (void*)vr$47, -1ll, (void*)vr$43, -1ll );
						fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$50, -1ll, 0 );
					}
					label$176:;
					I$5 = I$5 + -1ll;
					label$175:;
					if( I$5 >= 0ll ) goto label$178;
					label$177:;
				}
			}
			label$172:;
			label$171:;
		}
	}
	label$169:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$160:;
	FBSTRING* vr$57 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$57;
}

static void HEMITVARIABLE( struct $8FBSYMBOL* SYM$1 )
{
	label$179:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	int64 IS_GLOBAL$1;
	int64 LENGTH$1;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1024ll) == 0ll ) goto label$182;
	{
		if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$184;
		{
			fb_StrDelete( (FBSTRING*)&LN$1 );
			goto label$180;
		}
		label$184:;
		label$183:;
		{
			int64 TMP$211$3;
			TMP$211$3 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
			if( TMP$211$3 == 4ll ) goto label$187;
			label$188:;
			if( TMP$211$3 != 7ll ) goto label$186;
			label$187:;
			{
				FBSTRING TMP$213$4;
				uint8* vr$8 = SYMBGETMANGLEDNAME( SYM$1 );
				__builtin_memset( &TMP$213$4, 0, 24ll );
				FBSTRING* vr$11 = fb_StrConcat( &TMP$213$4, (void*)vr$8, 0ll, (void*)" = ", 4ll );
				fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$11, -1ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"private constant ", 18ll, 0 );
				FBSTRING* vr$14 = HEMITSYMTYPE( SYM$1 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$14, -1ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" c\x22", 4ll, 0 );
				if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 7ll ) goto label$190;
				{
					LENGTH$1 = *(int64*)((uint8*)SYM$1 + 80ll) / *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
					uint32* vr$22 = HUNESCAPEW( *(uint32**)((uint8*)SYM$1 + 96ll) );
					HBUILDWSTRLIT( &LN$1, LENGTH$1, vr$22, LENGTH$1 );
				}
				goto label$189;
				label$190:;
				{
					LENGTH$1 = *(int64*)((uint8*)SYM$1 + 80ll);
					uint8* vr$26 = HUNESCAPE( *(uint8**)((uint8*)SYM$1 + 96ll) );
					HBUILDSTRLIT( &LN$1, LENGTH$1, vr$26, LENGTH$1 );
				}
				label$189:;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
				HWRITELINE( &LN$1 );
			}
			goto label$185;
			label$186:;
			{
			}
			label$191:;
			label$185:;
		}
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$180;
	}
	label$182:;
	label$181:;
	if( ((int64)-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) != (struct $7ASTNODE*)0ull) & ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll))) == 0ll ) goto label$193;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) != 0ll ) goto label$195;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) != 0ll ) goto label$197;
			{
				if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) != 0ll ) goto label$199;
				{
					fb_StrDelete( (FBSTRING*)&LN$1 );
					goto label$180;
				}
				label$199:;
				label$198:;
			}
			label$197:;
			label$196:;
		}
		label$195:;
		label$194:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$180;
	}
	label$193:;
	label$192:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$201;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$180;
	}
	label$201:;
	label$200:;
	IS_GLOBAL$1 = *(int64*)((uint8*)SYM$1 + 8ll) & 59ll;
	uint8* vr$54 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$54, 0ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = ", 4ll, 0 );
	if( IS_GLOBAL$1 == 0ll ) goto label$203;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"global", 7ll, 0 );
	}
	goto label$202;
	label$203:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"alloca", 7ll, 0 );
	}
	label$202:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$60 = HEMITSYMTYPE( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$60, -1ll, 0 );
	if( IS_GLOBAL$1 == 0ll ) goto label$205;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" zeroinitializer", 17ll, 0 );
	}
	label$205:;
	label$204:;
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$180:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$206:;
	int64 vr$0 = SYMBISDATADESC( SYM$1 );
	if( vr$0 != 0ll ) goto label$209;
	{
		HEMITVARIABLE( SYM$1 );
	}
	label$209:;
	label$208:;
	label$207:;
}

static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$220$1;
	FBSTRING TMP$221$1;
	label$210:;
	if( ((int64)-((*(int64*)((uint8*)S$1 + 24ll) & 16384ll) != 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 24ll) & 2ll) == 0ll)) == 0ll ) goto label$213;
	{
		goto label$211;
	}
	label$213:;
	label$212:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( S$1 );
	if( vr$7 != (uint8*)0ull ) goto label$215;
	{
		goto label$211;
	}
	label$215:;
	label$214:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 128ll) == 0ll ) goto label$217;
	{
		goto label$211;
	}
	label$217:;
	label$216:;
	int64 OLDSECTION$1;
	OLDSECTION$1 = *(int64*)((uint8*)&CTX$ + 272ll);
	*(int64*)((uint8*)&CTX$ + 272ll) = 0ll;
	__builtin_memset( &TMP$221$1, 0, 24ll );
	FBSTRING* vr$11 = HEMITPROCHEADER( S$1, -1ll, 0ll );
	__builtin_memset( &TMP$220$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$220$1, (void*)"declare ", 9ll, (void*)vr$11, -1ll );
	fb_StrAssign( (void*)&TMP$221$1, -1ll, (void*)vr$14, -1ll, 0 );
	HWRITELINE( &TMP$221$1 );
	fb_StrDelete( (FBSTRING*)&TMP$221$1 );
	*(int64*)((uint8*)&CTX$ + 272ll) = OLDSECTION$1;
	label$211:;
}

static void HEMITSTRUCT( struct $8FBSYMBOL* S$1 )
{
	label$218:;
	struct $8FBSYMBOL* FLD$1;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 134217728ll) == 0ll ) goto label$221;
	{
		goto label$219;
	}
	label$221:;
	label$220:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 134217728ll;
	struct $8FBSYMBOL* vr$5 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$5;
	label$222:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$223;
	{
		HEMITUDT( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll) );
		struct $8FBSYMBOL* vr$7 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$7;
	}
	goto label$222;
	label$223:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 67108864ll) == 0ll ) goto label$225;
	{
		goto label$219;
	}
	label$225:;
	label$224:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 67108864ll;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	if( *(uint8**)((uint8*)S$1 + 32ll) == (uint8*)0ull ) goto label$227;
	{
		FBSTRING* vr$15 = HGETUDTNAME( S$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$15, -1ll, 0 );
	}
	goto label$226;
	label$227:;
	{
		FBSTRING TMP$222$2;
		FBSTRING TMP$223$2;
		uint8* vr$17 = SYMBUNIQUEID( (boolean)0ll );
		__builtin_memset( &TMP$222$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$222$2, (void*)"%", 2ll, (void*)vr$17, 0ll );
		__builtin_memset( &TMP$223$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$223$2, (void*)&LN$1, -1ll, (void*)vr$20, -1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$24, -1ll, 0 );
	}
	label$226:;
	int64 PACKED$1;
	PACKED$1 = (int64)-((int64)*(uint8*)((uint8*)S$1 + 213ll) == 1ll);
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = type ", 9ll, 0 );
	if( PACKED$1 == 0ll ) goto label$229;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"<", 2ll, 0 );
		label$229:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"{ ", 3ll, 0 );
	struct $8FBSYMBOL* vr$32 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$32;
	label$230:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$231;
	{
		if( (*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) != 0ll ) goto label$233;
		{
			FBSTRING* vr$35 = HEMITSYMTYPE( FLD$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$35, -1ll, 0 );
		}
		label$233:;
		label$232:;
		struct $8FBSYMBOL* vr$37 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$37;
		if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$235;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$235:;
		label$234:;
	}
	goto label$230;
	label$231:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" }", 3ll, 0 );
	if( PACKED$1 == 0ll ) goto label$237;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)">", 2ll, 0 );
		label$237:;
	}
	HWRITELINE( &LN$1 );
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) & -134217729ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$219:;
}

static void HEMITCTORDTORARRAYELEMENT( struct $8FBSYMBOL* PROC$1, FBSTRING* S$1 )
{
	FBSTRING TMP$230$1;
	FBSTRING TMP$231$1;
	FBSTRING TMP$233$1;
	FBSTRING TMP$234$1;
	FBSTRING TMP$235$1;
	label$238:;
	int64 vr$0 = fb_StrLen( (void*)S$1, -1ll );
	if( vr$0 <= 0ll ) goto label$241;
	{
		FBSTRING TMP$228$2;
		__builtin_memset( &TMP$228$2, 0, 24ll );
		FBSTRING* vr$3 = fb_StrConcat( &TMP$228$2, (void*)S$1, -1ll, (void*)", ", 3ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$3, -1ll, 0 );
	}
	label$241:;
	label$240:;
	__builtin_memset( &TMP$230$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$230$1, (void*)S$1, -1ll, (void*)"{ i32, void ()* } { i32 ", 25ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$6, -1ll, 0 );
	FBSTRING* vr$9 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 112ll) );
	__builtin_memset( &TMP$231$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$231$1, (void*)S$1, -1ll, (void*)vr$9, -1ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$12, -1ll, 0 );
	__builtin_memset( &TMP$233$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$233$1, (void*)S$1, -1ll, (void*)", void ()* ", 12ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$15, -1ll, 0 );
	uint8* vr$16 = SYMBGETMANGLEDNAME( PROC$1 );
	__builtin_memset( &TMP$234$1, 0, 24ll );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$234$1, (void*)S$1, -1ll, (void*)vr$16, 0ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$19, -1ll, 0 );
	__builtin_memset( &TMP$235$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$235$1, (void*)S$1, -1ll, (void*)" }", 3ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$22, -1ll, 0 );
	label$239:;
}

static void HADDGLOBALCTORDTOR( struct $8FBSYMBOL* PROC$1 )
{
	label$242:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 16384ll) == 0ll ) goto label$245;
	{
		goto label$243;
	}
	label$245:;
	label$244:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 65536ll) == 0ll ) goto label$247;
	{
		*(int64*)((uint8*)&CTX$ + 224ll) = *(int64*)((uint8*)&CTX$ + 224ll) + 1ll;
		HEMITCTORDTORARRAYELEMENT( PROC$1, (FBSTRING*)((uint8*)&CTX$ + 176ll) );
	}
	goto label$246;
	label$247:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 131072ll) == 0ll ) goto label$248;
	{
		*(int64*)((uint8*)&CTX$ + 232ll) = *(int64*)((uint8*)&CTX$ + 232ll) + 1ll;
		HEMITCTORDTORARRAYELEMENT( PROC$1, (FBSTRING*)((uint8*)&CTX$ + 200ll) );
	}
	label$248:;
	label$246:;
	label$243:;
}

static int64 _EMITBEGIN( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$249:;
	int64 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 856ll) );
	if( vr$2 == 0ll ) goto label$252;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$252:;
	label$251:;
	int32 vr$5 = fb_FileFree(  );
	*(int64*)((uint8*)&ENV$ + 848ll) = (int64)vr$5;
	FBSTRING* vr$9 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
	int32 vr$10 = fb_FileOpen( (FBSTRING*)vr$9, 0u, 3u, 0u, (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0 );
	if( (int64)vr$10 == 0ll ) goto label$254;
	{
		fb$result$1 = 0ll;
		goto label$250;
	}
	label$254:;
	label$253:;
	*(int64*)&CTX$ = 0ll;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 176ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 200ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 224ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 232ll) = 0ll;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 280ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 304ll), -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 328ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 8ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 272ll) = 0ll;
	{
		int64 I$2;
		I$2 = 0ll;
		label$258:;
		{
			*(int64*)(((uint8*)BUILTINS$ + (I$2 << (4ll & 63ll))) + 8ll) = 0ll;
		}
		label$256:;
		I$2 = I$2 + 1ll;
		label$255:;
		if( I$2 <= 17ll ) goto label$258;
		label$257:;
	}
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$260;
	{
		_EMITDBG( 113ll, (struct $8FBSYMBOL*)0ull, 0ll, (uint8*)0ull );
	}
	label$260:;
	label$259:;
	int64 vr$19 = FBIS64BIT(  );
	if( vr$19 == 0ll ) goto label$262;
	{
		FBSTRING TMP$237$2;
		__builtin_memset( &TMP$237$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$237$2, -1ll, (void*)"%FBSTRING = type { i8*, i64, i64 }", 35ll, 0 );
		HWRITELINE( &TMP$237$2 );
		fb_StrDelete( (FBSTRING*)&TMP$237$2 );
	}
	goto label$261;
	label$262:;
	{
		FBSTRING TMP$239$2;
		__builtin_memset( &TMP$239$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$239$2, -1ll, (void*)"%FBSTRING = type { i8*, i32, i32 }", 35ll, 0 );
		HWRITELINE( &TMP$239$2 );
		fb_StrDelete( (FBSTRING*)&TMP$239$2 );
	}
	label$261:;
	*(int64*)((uint8*)&CTX$ + 272ll) = 1ll;
	fb$result$1 = -1ll;
	label$250:;
	return fb$result$1;
}

static void _EMITEND( void )
{
	FBSTRING TMP$241$1;
	FBSTRING TMP$242$1;
	label$263:;
	*(int64*)((uint8*)&CTX$ + 272ll) = 0ll;
	{
		int64 I$2;
		I$2 = 0ll;
		label$268:;
		{
			if( *(int64*)(((uint8*)BUILTINS$ + (I$2 << (4ll & 63ll))) + 8ll) == 0ll ) goto label$270;
			{
				FBSTRING TMP$240$4;
				__builtin_memset( &TMP$240$4, 0, 24ll );
				fb_StrAssign( (void*)&TMP$240$4, -1ll, *(void**)((uint8*)BUILTINS$ + (I$2 << (4ll & 63ll))), 0ll, 0 );
				HWRITELINE( &TMP$240$4 );
				fb_StrDelete( (FBSTRING*)&TMP$240$4 );
			}
			label$270:;
			label$269:;
		}
		label$266:;
		I$2 = I$2 + 1ll;
		label$265:;
		if( I$2 <= 17ll ) goto label$268;
		label$267:;
	}
	__builtin_memset( &TMP$241$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$241$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$241$1 );
	fb_StrDelete( (FBSTRING*)&TMP$241$1 );
	SYMBFOREACHGLOBAL( 3ll, (tmp$41)&HMAYBEEMITPROCPROTO );
	__builtin_memset( &TMP$242$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$242$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$242$1 );
	fb_StrDelete( (FBSTRING*)&TMP$242$1 );
	SYMBFOREACHGLOBAL( 1ll, (tmp$41)&HMAYBEEMITGLOBALVAR );
	IRFOREACHDATASTMT( (tmp$41)&HEMITVARIABLE );
	SYMBFOREACHGLOBAL( 3ll, (tmp$41)&HADDGLOBALCTORDTOR );
	if( *(int64*)((uint8*)&CTX$ + 224ll) <= 0ll ) goto label$272;
	{
		FBSTRING TMP$245$2;
		FBSTRING TMP$246$2;
		FBSTRING TMP$247$2;
		FBSTRING TMP$248$2;
		FBSTRING TMP$249$2;
		__builtin_memset( &TMP$249$2, 0, 24ll );
		__builtin_memset( &TMP$246$2, 0, 24ll );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$246$2, (void*)" x { i32, void ()* }] [", 24ll, (void*)((uint8*)&CTX$ + 176ll), -1ll );
		__builtin_memset( &TMP$247$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$247$2, (void*)vr$19, -1ll, (void*)"]", 2ll );
		FBSTRING* vr$23 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 224ll) );
		__builtin_memset( &TMP$245$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$245$2, (void*)"@llvm.global_ctors = appending global [", 40ll, (void*)vr$23, -1ll );
		__builtin_memset( &TMP$248$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$248$2, (void*)vr$26, -1ll, (void*)vr$22, -1ll );
		fb_StrAssign( (void*)&TMP$249$2, -1ll, (void*)vr$29, -1ll, 0 );
		HWRITELINE( &TMP$249$2 );
		fb_StrDelete( (FBSTRING*)&TMP$249$2 );
	}
	label$272:;
	label$271:;
	if( *(int64*)((uint8*)&CTX$ + 232ll) <= 0ll ) goto label$274;
	{
		FBSTRING TMP$251$2;
		FBSTRING TMP$252$2;
		FBSTRING TMP$253$2;
		FBSTRING TMP$254$2;
		FBSTRING TMP$255$2;
		__builtin_memset( &TMP$255$2, 0, 24ll );
		__builtin_memset( &TMP$252$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$252$2, (void*)" x { i32, void ()* }] [", 24ll, (void*)((uint8*)&CTX$ + 200ll), -1ll );
		__builtin_memset( &TMP$253$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$253$2, (void*)vr$37, -1ll, (void*)"]", 2ll );
		FBSTRING* vr$41 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 232ll) );
		__builtin_memset( &TMP$251$2, 0, 24ll );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$251$2, (void*)"@llvm.global_dtors = appending global [", 40ll, (void*)vr$41, -1ll );
		__builtin_memset( &TMP$254$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$254$2, (void*)vr$44, -1ll, (void*)vr$40, -1ll );
		fb_StrAssign( (void*)&TMP$255$2, -1ll, (void*)vr$47, -1ll, 0 );
		HWRITELINE( &TMP$255$2 );
		fb_StrDelete( (FBSTRING*)&TMP$255$2 );
	}
	label$274:;
	label$273:;
	*(int64*)((uint8*)&CTX$ + 272ll) = 2ll;
	int32 vr$53 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 280ll), -1ll );
	if( (int64)vr$53 == 0ll ) goto label$276;
	{
	}
	label$276:;
	label$275:;
	int32 vr$57 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 304ll), -1ll );
	if( (int64)vr$57 == 0ll ) goto label$278;
	{
	}
	label$278:;
	label$277:;
	int32 vr$61 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)((uint8*)&CTX$ + 328ll), -1ll );
	if( (int64)vr$61 == 0ll ) goto label$280;
	{
	}
	label$280:;
	label$279:;
	int32 vr$64 = fb_FileClose( (int32)*(int64*)((uint8*)&ENV$ + 848ll) );
	if( (int64)vr$64 == 0ll ) goto label$282;
	{
	}
	label$282:;
	label$281:;
	*(int64*)((uint8*)&ENV$ + 848ll) = 0ll;
	label$264:;
}

static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$283:;
	{
		if( OPT$1 != 1ll ) goto label$286;
		label$287:;
		{
			fb$result$1 = 0ll;
			goto label$284;
		}
		goto label$285;
		label$286:;
		{
			ERRREPORTEX( 21ll, (uint8*)"_GETOPTIONVALUE", 0ll, 1ll, (uint8*)0ull );
		}
		label$288:;
		label$285:;
	}
	label$284:;
	return fb$result$1;
}

static int64 _SUPPORTSOP( int64 OP$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$289:;
	{
		uint64 TMP$257$2;
		TMP$257$2 = (uint64)OP$1;
		goto label$292;
		label$293:;
		{
			fb$result$1 = 0ll;
		}
		goto label$291;
		label$294:;
		{
			int64 TMP$258$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$295;
			TMP$258$3 = 24ll;
			goto label$732;
			label$295:;
			TMP$258$3 = DTYPE$1 & 31ll;
			label$732:;
			fb$result$1 = (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$258$3 * 56ll)) == 1ll);
		}
		goto label$291;
		label$296:;
		{
			fb$result$1 = -1ll;
		}
		goto label$291;
		label$292:;
		static const void* tmp$588[17ll] = {
			&&label$294,
			&&label$293,
			&&label$296,
			&&label$293,
			&&label$296,
			&&label$293,
			&&label$293,
			&&label$293,
			&&label$296,
			&&label$296,
			&&label$293,
			&&label$293,
			&&label$296,
			&&label$296,
			&&label$296,
			&&label$293,
			&&label$293,
		};
		if( (TMP$257$2 - 56ull) > 16ull ) goto label$296;
		goto *tmp$588[TMP$257$2 - 56ull];
		label$291:;
	}
	label$290:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$297:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16744ll);
	label$298:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$299:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 40ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16744ll);
	label$300:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$260$1;
	FBSTRING TMP$261$1;
	FBSTRING TMP$263$1;
	FBSTRING TMP$265$1;
	FBSTRING TMP$266$1;
	FBSTRING TMP$267$1;
	label$301:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	__builtin_memset( &TMP$261$1, 0, 24ll );
	FBSTRING* vr$2 = HSYMNAME( SYM$1 );
	__builtin_memset( &TMP$260$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$260$1, (void*)"paramvar ", 10ll, (void*)vr$2, -1ll );
	fb_StrAssign( (void*)&TMP$261$1, -1ll, (void*)vr$5, -1ll, 0 );
	HASTCOMMAND( &TMP$261$1 );
	fb_StrDelete( (FBSTRING*)&TMP$261$1 );
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 8ll );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	uint8* vr$13 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$263$1, 0, 24ll );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$263$1, (void*)vr$13, 0ll, (void*)" = alloca ", 11ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$16, -1ll, 0 );
	FBSTRING* vr$18 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$18, -1ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)"store ", 7ll, 0 );
	FBSTRING* vr$22 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$22, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$25 = HEMITPARAMNAME( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$25, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
	uint8* vr$28 = SYMBGETMANGLEDNAME( SYM$1 );
	FBSTRING* vr$38 = HEMITTYPE( (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll), SUBTYPE$1 );
	__builtin_memset( &TMP$265$1, 0, 24ll );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$265$1, (void*)vr$38, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$266$1, 0, 24ll );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$266$1, (void*)vr$41, -1ll, (void*)vr$28, 0ll );
	__builtin_memset( &TMP$267$1, 0, 24ll );
	FBSTRING* vr$48 = fb_StrConcat( &TMP$267$1, (void*)&LN$1, -1ll, (void*)vr$44, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$48, -1ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$302:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$269$1;
	FBSTRING TMP$270$1;
	label$303:;
	__builtin_memset( &TMP$270$1, 0, 24ll );
	FBSTRING* vr$1 = HSYMNAME( SYM$1 );
	__builtin_memset( &TMP$269$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$269$1, (void*)"localvar ", 10ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$270$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$270$1 );
	fb_StrDelete( (FBSTRING*)&TMP$270$1 );
	HEMITVARIABLE( SYM$1 );
	label$304:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$305:;
	label$306:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$307:;
	label$308:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* HEAD_SYM$1 )
{
	label$309:;
	label$310:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* V$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$311:;
	struct $6IRVREG* TEMP0$1;
	if( ((int64)-(*(int64*)((uint8*)V$1 + 8ll) != DTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) != SUBTYPE$1)) == 0ll ) goto label$314;
	{
		struct $6IRVREG* vr$5 = IRHLALLOCVREG( DTYPE$1, SUBTYPE$1 );
		TEMP0$1 = vr$5;
		HEMITCONVERT( TEMP0$1, V$1 );
		__builtin_memcpy( V$1, TEMP0$1, 120 );
	}
	label$314:;
	label$313:;
	label$312:;
}

static void HADDOFFSET( struct $6IRVREG* V$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 OFS$1 )
{
	label$315:;
	struct $6IRVREG* VOFFSET$1;
	struct $6IRVREG* vr$0 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
	VOFFSET$1 = vr$0;
	HEMITCONVERT( VOFFSET$1, V$1 );
	if( OFS$1 == 0ll ) goto label$318;
	{
		struct $6IRVREG* VIMMOFFSET$2;
		struct $6IRVREG* vr$1 = IRHLALLOCVRIMM( 8ll, (struct $8FBSYMBOL*)0ull, OFS$1 );
		VIMMOFFSET$2 = vr$1;
		struct $6IRVREG* VNEWOFFSET$2;
		struct $6IRVREG* vr$2 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
		VNEWOFFSET$2 = vr$2;
		HEMITBOP( 28ll, VOFFSET$1, VIMMOFFSET$2, VNEWOFFSET$2, (struct $8FBSYMBOL*)0ull );
		VOFFSET$1 = VNEWOFFSET$2;
	}
	label$318:;
	label$317:;
	_SETVREGDATATYPE( VOFFSET$1, DTYPE$1, SUBTYPE$1 );
	__builtin_memcpy( V$1, VOFFSET$1, 120 );
	label$316:;
}

static void HPREPAREADDRESS( struct $6IRVREG* V$1 )
{
	label$319:;
	$11FB_DATATYPE ADDRDTYPE$1;
	ADDRDTYPE$1 = *($11FB_DATATYPE*)((uint8*)V$1 + 8ll);
	struct $8FBSYMBOL* ADDRSUBTYPE$1;
	ADDRSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll);
	int64 OFS$1;
	OFS$1 = *(int64*)((uint8*)V$1 + 64ll);
	struct $6IRVREG* VIDX$1;
	VIDX$1 = *(struct $6IRVREG**)((uint8*)V$1 + 80ll);
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll);
	if( *(int64*)V$1 != 5ll ) goto label$322;
	{
	}
	goto label$321;
	label$322:;
	{
		ADDRDTYPE$1 = (((ADDRDTYPE$1 & 31ll) | ((ADDRDTYPE$1 & 480ll) + 32ll)) | ((ADDRDTYPE$1 & 261632ll) << (1ll & 63ll))) | (ADDRDTYPE$1 & 32505856ll);
	}
	label$321:;
	if( *(int64*)V$1 != 3ll ) goto label$324;
	{
		__builtin_memcpy( V$1, VIDX$1, 120 );
	}
	goto label$323;
	label$324:;
	{
		*($15IRVREGTYPE_ENUM*)V$1 = 4ll;
		*(int64*)((uint8*)V$1 + 24ll) = -1ll;
		*(int64*)((uint8*)V$1 + 64ll) = 0ll;
		*(struct $6IRVREG**)((uint8*)V$1 + 80ll) = (struct $6IRVREG*)0ull;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$326;
		{
			SYMBGETREALTYPE( SYM$1, (int64*)((uint8*)V$1 + 8ll), (struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) );
			*($11FB_DATATYPE*)((uint8*)V$1 + 8ll) = (((*(int64*)((uint8*)V$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)V$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)V$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)V$1 + 8ll) & 32505856ll);
			_SETVREGDATATYPE( V$1, ADDRDTYPE$1, ADDRSUBTYPE$1 );
		}
		goto label$325;
		label$326:;
		{
			*($11FB_DATATYPE*)((uint8*)V$1 + 8ll) = ADDRDTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) = ADDRSUBTYPE$1;
		}
		label$325:;
	}
	label$323:;
	if( ((int64)-(VIDX$1 != (struct $6IRVREG*)0ull) | (int64)-(OFS$1 != 0ll)) == 0ll ) goto label$328;
	{
		HADDOFFSET( V$1, ADDRDTYPE$1, ADDRSUBTYPE$1, OFS$1 );
	}
	label$328:;
	label$327:;
	label$320:;
}

static void HLOADVREG( struct $6IRVREG* V$1 )
{
	label$329:;
	{
		$15IRVREGTYPE_ENUM TMP$271$2;
		TMP$271$2 = *($15IRVREGTYPE_ENUM*)V$1;
		if( TMP$271$2 == 4ll ) goto label$333;
		label$334:;
		if( TMP$271$2 != 0ll ) goto label$332;
		label$333:;
		{
		}
		goto label$331;
		label$332:;
		if( TMP$271$2 != 5ll ) goto label$335;
		label$336:;
		{
			HPREPAREADDRESS( V$1 );
		}
		goto label$331;
		label$335:;
		{
			FBSTRING TMP$273$3;
			FBSTRING TMP$274$3;
			FBSTRING TMP$275$3;
			FBSTRING TMP$276$3;
			FBSTRING TMP$277$3;
			HPREPAREADDRESS( V$1 );
			struct $6IRVREG* TEMP0$3;
			struct $6IRVREG* vr$16 = IRHLALLOCVREG( (((*(int64*)((uint8*)V$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)V$1 + 8ll) & 480ll) + -32ll)) | (((*(int64*)((uint8*)V$1 + 8ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*(int64*)((uint8*)V$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) );
			TEMP0$3 = vr$16;
			FBSTRING S$3;
			FBSTRING* vr$17 = HVREGTOSTR( TEMP0$3 );
			__builtin_memset( &TMP$273$3, 0, 24ll );
			FBSTRING* vr$20 = fb_StrConcat( &TMP$273$3, (void*)vr$17, -1ll, (void*)" = load ", 9ll );
			fb_StrInit( (void*)&S$3, -1ll, (void*)vr$20, -1ll, 0 );
			FBSTRING* vr$37 = HEMITTYPE( (((*(int64*)((uint8*)V$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)V$1 + 8ll) & 480ll) + -32ll)) | (((*(int64*)((uint8*)V$1 + 8ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*(int64*)((uint8*)V$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) );
			__builtin_memset( &TMP$274$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$274$3, (void*)vr$37, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$275$3, 0, 24ll );
			FBSTRING* vr$44 = fb_StrConcat( &TMP$275$3, (void*)&S$3, -1ll, (void*)vr$40, -1ll );
			fb_StrAssign( (void*)&S$3, -1ll, (void*)vr$44, -1ll, 0 );
			FBSTRING* vr$48 = HEMITTYPE( *(int64*)((uint8*)V$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll) );
			__builtin_memset( &TMP$276$3, 0, 24ll );
			FBSTRING* vr$51 = fb_StrConcat( &TMP$276$3, (void*)vr$48, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$277$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$277$3, (void*)&S$3, -1ll, (void*)vr$51, -1ll );
			fb_StrAssign( (void*)&S$3, -1ll, (void*)vr$55, -1ll, 0 );
			FBSTRING* vr$57 = HVREGTOSTR( V$1 );
			fb_StrConcatAssign( (void*)&S$3, -1ll, (void*)vr$57, -1ll, 0 );
			HWRITELINE( &S$3 );
			__builtin_memcpy( V$1, TEMP0$3, 120 );
			fb_StrDelete( (FBSTRING*)&S$3 );
		}
		label$337:;
		label$331:;
	}
	label$330:;
}

static FBSTRING* HEMITTYPE( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$338:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 PTRCOUNT$1;
	PTRCOUNT$1 = (DTYPE$1 & 480ll) >> (5ll & 63ll);
	DTYPE$1 = DTYPE$1 & 31ll;
	{
		uint64 TMP$278$2;
		TMP$278$2 = (uint64)DTYPE$1;
		goto label$341;
		label$342:;
		{
			if( PTRCOUNT$1 != 0ll ) goto label$344;
			{
				fb_StrAssign( (void*)&S$1, -1ll, (void*)"void", 5ll, 0 );
			}
			goto label$343;
			label$344:;
			{
				fb_StrAssign( (void*)&S$1, -1ll, *(void**)DTYPENAME$, 0ll, 0 );
			}
			label$343:;
		}
		goto label$340;
		label$345:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$347;
			{
				HEMITUDT( SUBTYPE$1 );
				FBSTRING* vr$7 = HGETUDTNAME( SUBTYPE$1 );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$7, -1ll, 0 );
			}
			goto label$346;
			label$347:;
			if( DTYPE$1 != 10ll ) goto label$348;
			{
				int64 TMP$280$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$349;
				TMP$280$4 = 24ll;
				goto label$733;
				label$349:;
				TMP$280$4 = DTYPE$1 & 31ll;
				label$733:;
				fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$280$4 * 56ll)) + 32ll) << (3ll & 63ll))), 0ll, 0 );
			}
			goto label$346;
			label$348:;
			{
				fb_StrAssign( (void*)&S$1, -1ll, *(void**)DTYPENAME$, 0ll, 0 );
			}
			label$346:;
		}
		goto label$340;
		label$350:;
		{
			PTRCOUNT$1 = PTRCOUNT$1 + -1ll;
			FBSTRING* vr$16 = HEMITPROCHEADER( SUBTYPE$1, -1ll, -1ll );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$16, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"*", 2ll, 0 );
		}
		goto label$340;
		label$351:;
		{
			int64 TMP$281$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$352;
			TMP$281$3 = 24ll;
			goto label$734;
			label$352:;
			TMP$281$3 = DTYPE$1 & 31ll;
			label$734:;
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$281$3 * 56ll)) + 32ll) << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$340;
		label$353:;
		{
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + 24ll), 0ll, 0 );
		}
		goto label$340;
		label$354:;
		{
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (DTYPE$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$340;
		label$341:;
		static const void* tmp$589[23ll] = {
			&&label$342,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$351,
			&&label$354,
			&&label$354,
			&&label$351,
			&&label$354,
			&&label$354,
			&&label$345,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$354,
			&&label$353,
			&&label$354,
			&&label$345,
			&&label$354,
			&&label$350,
		};
		if( TMP$278$2 > 22ull ) goto label$354;
		goto *tmp$589[TMP$278$2 - 0ull];
		label$340:;
	}
	if( PTRCOUNT$1 <= 0ll ) goto label$356;
	{
		FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"*", 1ll );
		FBSTRING* vr$28 = fb_StrFill2( PTRCOUNT$1, (FBSTRING*)vr$27 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$28, -1ll, 0 );
	}
	label$356:;
	label$355:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$339:;
	FBSTRING* vr$34 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$34;
}

static FBSTRING* HEMITINT( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$357:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	{
		if( DTYPE$1 == 8ll ) goto label$361;
		label$362:;
		if( DTYPE$1 == 9ll ) goto label$361;
		label$363:;
		if( DTYPE$1 == 11ll ) goto label$361;
		label$364:;
		if( DTYPE$1 == 12ll ) goto label$361;
		label$365:;
		if( DTYPE$1 != 10ll ) goto label$360;
		label$361:;
		{
			FBSTRING* vr$2 = fb_LongintToStr( VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$2, -1ll, 0 );
		}
		goto label$359;
		label$360:;
		{
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$368;
			{
				fb_StrAssign( (void*)&S$1, -1ll, (void*)"inttoptr ", 10ll, 0 );
			}
			goto label$367;
			label$368:;
			{
				fb_StrAssign( (void*)&S$1, -1ll, (void*)"trunc ", 7ll, 0 );
			}
			label$367:;
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(", 2ll, 0 );
			FBSTRING* vr$8 = HEMITTYPE( 8ll, (struct $8FBSYMBOL*)0ull );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$8, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" ", 2ll, 0 );
			FBSTRING* vr$11 = fb_LongintToStr( VALUE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$11, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" to ", 5ll, 0 );
			FBSTRING* vr$14 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$14, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)")", 2ll, 0 );
		}
		label$366:;
		label$359:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$358:;
	FBSTRING* vr$21 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$21;
}

static FBSTRING* HEMITLONG( int64 VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$369:;
	FBSTRING* vr$1 = fb_LongintToStr( VALUE$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	label$370:;
	FBSTRING* vr$4 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$4;
}

static FBSTRING* HEMITFLOAT( double VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$371:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"0x", 3ll, 0 );
	FBSTRING* vr$2 = fb_HEXEx_l( *(uint64*)&VALUE$1, 16 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)vr$2, -1ll, 0 );
	label$372:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static int64 HISFIXLENSTR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$373:;
	if( *(int64*)SYM$1 != 1ll ) goto label$376;
	{
		{
			int64 TMP$288$3;
			TMP$288$3 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
			if( TMP$288$3 == 18ll ) goto label$379;
			label$380:;
			if( TMP$288$3 == 4ll ) goto label$379;
			label$381:;
			if( TMP$288$3 != 7ll ) goto label$378;
			label$379:;
			{
				fb$result$1 = -1ll;
				goto label$374;
			}
			label$378:;
			label$377:;
		}
	}
	label$376:;
	label$375:;
	fb$result$1 = 0ll;
	goto label$374;
	label$374:;
	return fb$result$1;
}

static FBSTRING* HVREGTOSTR( struct $6IRVREG* V$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$382:;
	{
		uint64 TMP$289$2;
		TMP$289$2 = *(uint64*)V$1;
		goto label$385;
		label$386:;
		{
			int64 TMP$290$3;
			int64 TMP$291$3;
			if( (*(int64*)((uint8*)V$1 + 8ll) & 480ll) == 0ll ) goto label$387;
			TMP$290$3 = 24ll;
			goto label$735;
			label$387:;
			TMP$290$3 = *(int64*)((uint8*)V$1 + 8ll) & 31ll;
			label$735:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$290$3 * 56ll)) != 1ll ) goto label$389;
			{
				FBSTRING* vr$8 = HEMITFLOAT( *(double*)((uint8*)V$1 + 48ll) );
				fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$8, -1ll, 0 );
				goto label$383;
			}
			label$389:;
			label$388:;
			if( (*(int64*)((uint8*)V$1 + 8ll) & 480ll) == 0ll ) goto label$390;
			TMP$291$3 = 24ll;
			goto label$736;
			label$390:;
			TMP$291$3 = *(int64*)((uint8*)V$1 + 8ll) & 31ll;
			label$736:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$291$3 * 56ll)) + 8ll) != 8ll ) goto label$392;
			{
				FBSTRING* vr$16 = HEMITLONG( *(int64*)((uint8*)V$1 + 48ll) );
				fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$16, -1ll, 0 );
				goto label$383;
			}
			label$392:;
			label$391:;
			FBSTRING* vr$21 = HEMITINT( *(int64*)((uint8*)V$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V$1 + 16ll), *(int64*)((uint8*)V$1 + 48ll) );
			fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$21, -1ll, 0 );
			goto label$383;
		}
		goto label$384;
		label$393:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$395;
			{
				FBSTRING TMP$293$4;
				FBSTRING* vr$25 = fb_LongintToStr( *(int64*)((uint8*)V$1 + 24ll) );
				__builtin_memset( &TMP$293$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$293$4, (void*)"%vr", 4ll, (void*)vr$25, -1ll );
				fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$28, -1ll, 0 );
				goto label$383;
			}
			label$395:;
			label$394:;
		}
		goto label$384;
		label$385:;
		static const void* tmp$590[5ll] = {
			&&label$386,
			&&label$384,
			&&label$384,
			&&label$384,
			&&label$393,
		};
		if( TMP$289$2 > 4ull ) goto label$384;
		goto *tmp$590[TMP$289$2 - 0ull];
		label$384:;
	}
	struct $8FBSYMBOL* SYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)V$1 + 56ll);
	int64 vr$31 = HISFIXLENSTR( SYM$1 );
	if( vr$31 == 0ll ) goto label$397;
	{
		FBSTRING TMP$296$2;
		FBSTRING TMP$297$2;
		FBSTRING S$2;
		fb_StrInit( (void*)&S$2, -1ll, (void*)"bitcast (", 10ll, 0 );
		FBSTRING* vr$33 = HEMITSYMTYPE( SYM$1 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)vr$33, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)"* ", 3ll, 0 );
		uint8* vr$36 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$296$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$296$2, (void*)&S$2, -1ll, (void*)vr$36, 0ll );
		fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$40, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)" to ", 5ll, 0 );
		FBSTRING* vr$60 = HEMITTYPE( ((((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 32505856ll), (struct $8FBSYMBOL*)0ull );
		__builtin_memset( &TMP$297$2, 0, 24ll );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$297$2, (void*)&S$2, -1ll, (void*)vr$60, -1ll );
		fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$64, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)")", 2ll, 0 );
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&S$2, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&S$2 );
		goto label$383;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$397:;
	label$396:;
	uint8* vr$71 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)vr$71, 0ll, 0 );
	goto label$383;
	label$383:;
	FBSTRING* vr$74 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$74;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$299$1;
	FBSTRING TMP$300$1;
	FBSTRING TMP$302$1;
	FBSTRING TMP$303$1;
	label$398:;
	__builtin_memset( &TMP$300$1, 0, 24ll );
	FBSTRING* vr$1 = HSYMNAME( LABEL$1 );
	__builtin_memset( &TMP$299$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$299$1, (void*)"label ", 7ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$300$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$300$1 );
	fb_StrDelete( (FBSTRING*)&TMP$300$1 );
	__builtin_memset( &TMP$303$1, 0, 24ll );
	uint8* vr$9 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$302$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$302$1, (void*)"br label %", 11ll, (void*)vr$9, 0ll );
	fb_StrAssign( (void*)&TMP$303$1, -1ll, (void*)vr$12, -1ll, 0 );
	HWRITELINE( &TMP$303$1 );
	fb_StrDelete( (FBSTRING*)&TMP$303$1 );
	uint8* vr$16 = SYMBGETMANGLEDNAME( LABEL$1 );
	HWRITELABEL( vr$16 );
	label$399:;
}

static uint8* HGETBOPCODE( int64 OP$1, int64 DTYPE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$400:;
	{
		uint64 TMP$304$2;
		TMP$304$2 = (uint64)OP$1;
		goto label$403;
		label$404:;
		{
			int64 TMP$305$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$405;
			TMP$305$3 = 24ll;
			goto label$737;
			label$405:;
			TMP$305$3 = DTYPE$1 & 31ll;
			label$737:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$305$3 * 56ll)) != 1ll ) goto label$407;
			{
				fb$result$1 = (uint8*)"fadd";
			}
			goto label$406;
			label$407:;
			{
				fb$result$1 = (uint8*)"add";
			}
			label$406:;
		}
		goto label$402;
		label$408:;
		{
			int64 TMP$308$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$409;
			TMP$308$3 = 24ll;
			goto label$738;
			label$409:;
			TMP$308$3 = DTYPE$1 & 31ll;
			label$738:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$308$3 * 56ll)) != 1ll ) goto label$411;
			{
				fb$result$1 = (uint8*)"fsub";
			}
			goto label$410;
			label$411:;
			{
				fb$result$1 = (uint8*)"sub";
			}
			label$410:;
		}
		goto label$402;
		label$412:;
		{
			int64 TMP$311$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$413;
			TMP$311$3 = 24ll;
			goto label$739;
			label$413:;
			TMP$311$3 = DTYPE$1 & 31ll;
			label$739:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$311$3 * 56ll)) != 1ll ) goto label$415;
			{
				fb$result$1 = (uint8*)"fmul";
			}
			goto label$414;
			label$415:;
			{
				fb$result$1 = (uint8*)"mul";
			}
			label$414:;
		}
		goto label$402;
		label$416:;
		{
			fb$result$1 = (uint8*)"fdiv";
		}
		goto label$402;
		label$417:;
		{
			fb$result$1 = (uint8*)"sdiv";
		}
		goto label$402;
		label$418:;
		{
			int64 TMP$316$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$419;
			TMP$316$3 = 24ll;
			goto label$740;
			label$419:;
			TMP$316$3 = DTYPE$1 & 31ll;
			label$740:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$316$3 * 56ll)) != 1ll ) goto label$421;
			{
				fb$result$1 = (uint8*)"frem";
			}
			goto label$420;
			label$421:;
			{
				fb$result$1 = (uint8*)"srem";
			}
			label$420:;
		}
		goto label$402;
		label$422:;
		{
			fb$result$1 = (uint8*)"shl";
		}
		goto label$402;
		label$423:;
		{
			fb$result$1 = (uint8*)"ashr";
		}
		goto label$402;
		label$424:;
		{
			fb$result$1 = (uint8*)"and";
		}
		goto label$402;
		label$425:;
		{
			fb$result$1 = (uint8*)"or";
		}
		goto label$402;
		label$426:;
		{
			fb$result$1 = (uint8*)"xor";
		}
		goto label$402;
		label$427:;
		{
			fb$result$1 = (uint8*)"icmp eq";
		}
		goto label$402;
		label$428:;
		{
			fb$result$1 = (uint8*)"icmp ne";
		}
		goto label$402;
		label$429:;
		{
			fb$result$1 = (uint8*)"icmp sgt";
		}
		goto label$402;
		label$430:;
		{
			fb$result$1 = (uint8*)"icmp slt";
		}
		goto label$402;
		label$431:;
		{
			fb$result$1 = (uint8*)"icmp sge";
		}
		goto label$402;
		label$432:;
		{
			fb$result$1 = (uint8*)"icmp sle";
		}
		goto label$402;
		label$433:;
		{
			fb$result$1 = (uint8*)"eqv";
		}
		goto label$402;
		label$434:;
		{
			fb$result$1 = (uint8*)"imp";
		}
		goto label$402;
		label$403:;
		static const void* tmp$591[23ll] = {
			&&label$404,
			&&label$408,
			&&label$412,
			&&label$416,
			&&label$417,
			&&label$418,
			&&label$424,
			&&label$425,
			&&label$402,
			&&label$402,
			&&label$426,
			&&label$433,
			&&label$434,
			&&label$422,
			&&label$423,
			&&label$402,
			&&label$402,
			&&label$427,
			&&label$429,
			&&label$430,
			&&label$428,
			&&label$431,
			&&label$432,
		};
		if( (TMP$304$2 - 28ull) > 22ull ) goto label$402;
		goto *tmp$591[TMP$304$2 - 28ull];
		label$402:;
	}
	label$401:;
	return fb$result$1;
}

static void HLOADOPERANDSANDWRITEBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING TMP$332$1;
	label$435:;
	HLOADVREG( V1$1 );
	HLOADVREG( V2$1 );
	_SETVREGDATATYPE( V1$1, DTYPE$1, SUBTYPE$1 );
	_SETVREGDATATYPE( V2$1, DTYPE$1, SUBTYPE$1 );
	FBSTRING LN$1;
	FBSTRING* vr$0 = HVREGTOSTR( VR$1 );
	fb_StrInit( (void*)&LN$1, -1ll, (void*)vr$0, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = ", 4ll, 0 );
	uint8* vr$3 = HGETBOPCODE( OP$1, DTYPE$1 );
	__builtin_memset( &TMP$332$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$332$1, (void*)&LN$1, -1ll, (void*)vr$3, 0ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$7, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$10 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$10, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$13 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$13, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
	FBSTRING* vr$16 = HVREGTOSTR( V2$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$16, -1ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$436:;
}

static void HEMITBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$437:;
	if( LABEL$1 == (struct $8FBSYMBOL*)0ull ) goto label$440;
	{
		FBSTRING TMP$334$2;
		FBSTRING TMP$336$2;
		FBSTRING TMP$337$2;
		struct $6IRVREG* vr$0 = IRHLALLOCVREG( 8ll, (struct $8FBSYMBOL*)0ull );
		VR$1 = vr$0;
		HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
		FBSTRING FALSELABEL$2;
		uint8* vr$3 = SYMBUNIQUELABEL(  );
		fb_StrInit( (void*)&FALSELABEL$2, -1ll, (void*)vr$3, 0ll, 0 );
		FBSTRING LN$2;
		FBSTRING* vr$5 = HVREGTOSTR( VR$1 );
		__builtin_memset( &TMP$334$2, 0, 24ll );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$334$2, (void*)"br i1 ", 7ll, (void*)vr$5, -1ll );
		fb_StrInit( (void*)&LN$2, -1ll, (void*)vr$8, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)", ", 3ll, 0 );
		uint8* vr$11 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$336$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$336$2, (void*)"label %", 8ll, (void*)vr$11, 0ll );
		__builtin_memset( &TMP$337$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$337$2, (void*)&LN$2, -1ll, (void*)vr$14, -1ll );
		fb_StrAssign( (void*)&LN$2, -1ll, (void*)vr$18, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)"label %", 8ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)&FALSELABEL$2, -1ll, 0 );
		HWRITELINE( &LN$2 );
		HWRITELABEL( (uint8*)*(uint8**)&FALSELABEL$2 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
		fb_StrDelete( (FBSTRING*)&FALSELABEL$2 );
		goto label$438;
		fb_StrDelete( (FBSTRING*)&LN$2 );
		fb_StrDelete( (FBSTRING*)&FALSELABEL$2 );
	}
	label$440:;
	label$439:;
	int64 ISSELF$1;
	ISSELF$1 = 0ll;
	struct $6IRVREG V1ORIG$1;
	__builtin_memset( &V1ORIG$1, 0, 120ll );
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$442;
	{
		ISSELF$1 = -1ll;
		struct $6IRVREG* vr$32 = IRHLALLOCVREG( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
		VR$1 = vr$32;
		__builtin_memcpy( &V1ORIG$1, V1$1, 120 );
	}
	label$442:;
	label$441:;
	HLOADOPERANDSANDWRITEBOP( OP$1, V1$1, V2$1, VR$1, *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
	if( (*(int64*)(((uint8*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 8ll) == 0ll ) goto label$444;
	{
		FBSTRING TMP$340$2;
		struct $6IRVREG* VTEMP$2;
		struct $6IRVREG* vr$40 = IRHLALLOCVREG( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
		VTEMP$2 = vr$40;
		FBSTRING LN$2;
		FBSTRING* vr$41 = HVREGTOSTR( VTEMP$2 );
		fb_StrInit( (void*)&LN$2, -1ll, (void*)vr$41, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)" = sext ", 9ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)"i1 ", 4ll, 0 );
		FBSTRING* vr$45 = HVREGTOSTR( VR$1 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)vr$45, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)" to ", 5ll, 0 );
		FBSTRING* vr$50 = HEMITTYPE( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
		__builtin_memset( &TMP$340$2, 0, 24ll );
		FBSTRING* vr$54 = fb_StrConcat( &TMP$340$2, (void*)&LN$2, -1ll, (void*)vr$50, -1ll );
		fb_StrAssign( (void*)&LN$2, -1ll, (void*)vr$54, -1ll, 0 );
		HWRITELINE( &LN$2 );
		__builtin_memcpy( VR$1, VTEMP$2, 120 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
	}
	label$444:;
	label$443:;
	if( ISSELF$1 == 0ll ) goto label$446;
	{
		HEMITSTORE( &V1ORIG$1, VR$1 );
	}
	label$446:;
	label$445:;
	label$438:;
}

static void _EMITBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$341$1;
	FBSTRING TMP$342$1;
	FBSTRING TMP$343$1;
	FBSTRING TMP$344$1;
	label$447:;
	FBSTRING BOPDUMP$1;
	FBSTRING* vr$0 = VREGPRETTY( V2$1 );
	FBSTRING* vr$1 = ASTDUMPOPTOSTR( OP$1 );
	FBSTRING* vr$2 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$341$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$341$1, (void*)vr$2, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$342$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$342$1, (void*)vr$5, -1ll, (void*)vr$1, -1ll );
	__builtin_memset( &TMP$343$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$343$1, (void*)vr$8, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$344$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$344$1, (void*)vr$11, -1ll, (void*)vr$0, -1ll );
	fb_StrInit( (void*)&BOPDUMP$1, -1ll, (void*)vr$14, -1ll, 0 );
	if( LABEL$1 == (struct $8FBSYMBOL*)0ull ) goto label$450;
	{
		FBSTRING TMP$346$2;
		FBSTRING TMP$347$2;
		__builtin_memset( &TMP$347$2, 0, 24ll );
		__builtin_memset( &TMP$346$2, 0, 24ll );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$346$2, (void*)"branchbop ", 11ll, (void*)&BOPDUMP$1, -1ll );
		fb_StrAssign( (void*)&TMP$347$2, -1ll, (void*)vr$20, -1ll, 0 );
		HASTCOMMAND( &TMP$347$2 );
		fb_StrDelete( (FBSTRING*)&TMP$347$2 );
	}
	goto label$449;
	label$450:;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$451;
	{
		FBSTRING TMP$349$2;
		FBSTRING TMP$350$2;
		__builtin_memset( &TMP$350$2, 0, 24ll );
		__builtin_memset( &TMP$349$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$349$2, (void*)"selfbop ", 9ll, (void*)&BOPDUMP$1, -1ll );
		fb_StrAssign( (void*)&TMP$350$2, -1ll, (void*)vr$28, -1ll, 0 );
		HASTCOMMAND( &TMP$350$2 );
		fb_StrDelete( (FBSTRING*)&TMP$350$2 );
	}
	goto label$449;
	label$451:;
	{
		FBSTRING TMP$352$2;
		FBSTRING TMP$353$2;
		__builtin_memset( &TMP$353$2, 0, 24ll );
		__builtin_memset( &TMP$352$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$352$2, (void*)"bop ", 5ll, (void*)&BOPDUMP$1, -1ll );
		fb_StrAssign( (void*)&TMP$353$2, -1ll, (void*)vr$36, -1ll, 0 );
		HASTCOMMAND( &TMP$353$2 );
		fb_StrDelete( (FBSTRING*)&TMP$353$2 );
	}
	label$449:;
	HEMITBOP( OP$1, V1$1, V2$1, VR$1, LABEL$1 );
	fb_StrDelete( (FBSTRING*)&BOPDUMP$1 );
	label$448:;
}

static void HBUILTINUOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$452:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	HLOADVREG( V1$1 );
	FBSTRING* vr$1 = HVREGTOSTR( VR$1 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = call ", 9ll, 0 );
	if( *(int64*)((uint8*)V1$1 + 8ll) != 15ll ) goto label$455;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"float @llvm.", 13ll, 0 );
		{
			if( OP$1 != 56ll ) goto label$457;
			label$458:;
			{
				*(int64*)((uint8*)BUILTINS$ + 232ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"fabs", 5ll, 0 );
			}
			goto label$456;
			label$457:;
			if( OP$1 != 58ll ) goto label$459;
			label$460:;
			{
				*(int64*)((uint8*)BUILTINS$ + 40ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"sin", 4ll, 0 );
			}
			goto label$456;
			label$459:;
			if( OP$1 != 60ll ) goto label$461;
			label$462:;
			{
				*(int64*)((uint8*)BUILTINS$ + 72ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"cos", 4ll, 0 );
			}
			goto label$456;
			label$461:;
			if( OP$1 != 69ll ) goto label$463;
			label$464:;
			{
				*(int64*)((uint8*)BUILTINS$ + 104ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"exp", 4ll, 0 );
			}
			goto label$456;
			label$463:;
			if( OP$1 != 68ll ) goto label$465;
			label$466:;
			{
				*(int64*)((uint8*)BUILTINS$ + 136ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"log", 4ll, 0 );
			}
			goto label$456;
			label$465:;
			if( OP$1 != 65ll ) goto label$467;
			label$468:;
			{
				*(int64*)((uint8*)BUILTINS$ + 168ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"sqrt", 5ll, 0 );
			}
			goto label$456;
			label$467:;
			if( OP$1 != 70ll ) goto label$469;
			label$470:;
			{
				*(int64*)((uint8*)BUILTINS$ + 200ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"floor", 6ll, 0 );
			}
			goto label$456;
			label$469:;
			{
			}
			label$471:;
			label$456:;
		}
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)".f32(float ", 12ll, 0 );
	}
	goto label$454;
	label$455:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"double @llvm.", 14ll, 0 );
		{
			if( OP$1 != 56ll ) goto label$473;
			label$474:;
			{
				*(int64*)((uint8*)BUILTINS$ + 248ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"fabs", 5ll, 0 );
			}
			goto label$472;
			label$473:;
			if( OP$1 != 58ll ) goto label$475;
			label$476:;
			{
				*(int64*)((uint8*)BUILTINS$ + 56ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"sin", 4ll, 0 );
			}
			goto label$472;
			label$475:;
			if( OP$1 != 60ll ) goto label$477;
			label$478:;
			{
				*(int64*)((uint8*)BUILTINS$ + 88ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"cos", 4ll, 0 );
			}
			goto label$472;
			label$477:;
			if( OP$1 != 69ll ) goto label$479;
			label$480:;
			{
				*(int64*)((uint8*)BUILTINS$ + 120ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"exp", 4ll, 0 );
			}
			goto label$472;
			label$479:;
			if( OP$1 != 68ll ) goto label$481;
			label$482:;
			{
				*(int64*)((uint8*)BUILTINS$ + 152ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"log", 4ll, 0 );
			}
			goto label$472;
			label$481:;
			if( OP$1 != 65ll ) goto label$483;
			label$484:;
			{
				*(int64*)((uint8*)BUILTINS$ + 184ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"sqrt", 5ll, 0 );
			}
			goto label$472;
			label$483:;
			if( OP$1 != 70ll ) goto label$485;
			label$486:;
			{
				*(int64*)((uint8*)BUILTINS$ + 216ll) = -1ll;
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"floor", 6ll, 0 );
			}
			goto label$472;
			label$485:;
			{
			}
			label$487:;
			label$472:;
		}
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)".f64(double ", 13ll, 0 );
	}
	label$454:;
	FBSTRING* vr$23 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$23, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)")", 2ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$453:;
}

static void _EMITUOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$366$1;
	FBSTRING TMP$367$1;
	label$488:;
	FBSTRING UOPDUMP$1;
	FBSTRING* vr$0 = VREGPRETTY( V1$1 );
	FBSTRING* vr$1 = ASTDUMPOPTOSTR( OP$1 );
	__builtin_memset( &TMP$366$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$366$1, (void*)vr$1, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$367$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$367$1, (void*)vr$4, -1ll, (void*)vr$0, -1ll );
	fb_StrInit( (void*)&UOPDUMP$1, -1ll, (void*)vr$7, -1ll, 0 );
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$491;
	{
		FBSTRING TMP$369$2;
		FBSTRING TMP$370$2;
		__builtin_memset( &TMP$370$2, 0, 24ll );
		__builtin_memset( &TMP$369$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$369$2, (void*)"selfuop ", 9ll, (void*)&UOPDUMP$1, -1ll );
		fb_StrAssign( (void*)&TMP$370$2, -1ll, (void*)vr$13, -1ll, 0 );
		HASTCOMMAND( &TMP$370$2 );
		fb_StrDelete( (FBSTRING*)&TMP$370$2 );
	}
	goto label$490;
	label$491:;
	{
		FBSTRING TMP$372$2;
		FBSTRING TMP$373$2;
		__builtin_memset( &TMP$373$2, 0, 24ll );
		__builtin_memset( &TMP$372$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$372$2, (void*)"uop ", 5ll, (void*)&UOPDUMP$1, -1ll );
		fb_StrAssign( (void*)&TMP$373$2, -1ll, (void*)vr$21, -1ll, 0 );
		HASTCOMMAND( &TMP$373$2 );
		fb_StrDelete( (FBSTRING*)&TMP$373$2 );
	}
	label$490:;
	{
		if( OP$1 != 54ll ) goto label$493;
		label$494:;
		{
			struct $6IRVREG V1ORIG$3;
			__builtin_memset( &V1ORIG$3, 0, 120ll );
			int64 ISSELF$3;
			ISSELF$3 = 0ll;
			if( VR$1 != (struct $6IRVREG*)0ull ) goto label$496;
			{
				ISSELF$3 = -1ll;
				struct $6IRVREG* vr$28 = IRHLALLOCVREG( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
				VR$1 = vr$28;
				__builtin_memcpy( &V1ORIG$3, V1$1, 120 );
			}
			label$496:;
			label$495:;
			struct $6IRVREG* ZERO$3;
			struct $6IRVREG* vr$30 = IRHLALLOCVRIMM( 8ll, (struct $8FBSYMBOL*)0ull, 0ll );
			ZERO$3 = vr$30;
			HEMITBOP( 29ll, ZERO$3, V1$1, VR$1, (struct $8FBSYMBOL*)0ull );
			if( ISSELF$3 == 0ll ) goto label$498;
			{
				HEMITSTORE( &V1ORIG$3, VR$1 );
			}
			label$498:;
			label$497:;
		}
		goto label$492;
		label$493:;
		if( OP$1 != 52ll ) goto label$499;
		label$500:;
		{
			struct $6IRVREG* MINUSONE$3;
			struct $6IRVREG* vr$32 = IRHLALLOCVRIMM( 8ll, (struct $8FBSYMBOL*)0ull, -1ll );
			MINUSONE$3 = vr$32;
			HEMITBOP( 38ll, V1$1, MINUSONE$3, VR$1, (struct $8FBSYMBOL*)0ull );
		}
		goto label$492;
		label$499:;
		{
			HBUILTINUOP( OP$1, V1$1, VR$1 );
		}
		label$501:;
		label$492:;
	}
	fb_StrDelete( (FBSTRING*)&UOPDUMP$1 );
	label$489:;
}

static uint8* HGETCONVOPCODE( int64 LDTYPE$1, int64 RDTYPE$1 )
{
	int64 TMP$374$1;
	int64 TMP$385$1;
	int64 TMP$393$1;
	int64 TMP$394$1;
	int64 TMP$397$1;
	int64 TMP$398$1;
	int64 TMP$400$1;
	uint8* TMP$403$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$502:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$504;
	TMP$374$1 = 24ll;
	goto label$741;
	label$504:;
	TMP$374$1 = LDTYPE$1 & 31ll;
	label$741:;
	if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$374$1 * 56ll)) != 1ll ) goto label$506;
	{
		int64 TMP$375$2;
		int64 TMP$381$2;
		uint8* TMP$384$2;
		if( (RDTYPE$1 & 480ll) == 0ll ) goto label$507;
		TMP$375$2 = 24ll;
		goto label$742;
		label$507:;
		TMP$375$2 = RDTYPE$1 & 31ll;
		label$742:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$375$2 * 56ll)) != 1ll ) goto label$509;
		{
			int64 TMP$376$3;
			int64 TMP$377$3;
			uint8* TMP$380$3;
			if( (LDTYPE$1 & 480ll) == 0ll ) goto label$510;
			TMP$376$3 = 24ll;
			goto label$743;
			label$510:;
			TMP$376$3 = LDTYPE$1 & 31ll;
			label$743:;
			if( (RDTYPE$1 & 480ll) == 0ll ) goto label$511;
			TMP$377$3 = 24ll;
			goto label$744;
			label$511:;
			TMP$377$3 = RDTYPE$1 & 31ll;
			label$744:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$376$3 * 56ll)) + 8ll) >= *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$377$3 * 56ll)) + 8ll) ) goto label$512;
			TMP$380$3 = (uint8*)"fptrunc";
			goto label$745;
			label$512:;
			TMP$380$3 = (uint8*)"fpext";
			label$745:;
			fb$result$1 = TMP$380$3;
			goto label$503;
		}
		label$509:;
		label$508:;
		if( (RDTYPE$1 & 480ll) == 0ll ) goto label$513;
		TMP$381$2 = 24ll;
		goto label$746;
		label$513:;
		TMP$381$2 = RDTYPE$1 & 31ll;
		label$746:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$381$2 * 56ll)) + 16ll) == 0ll ) goto label$514;
		TMP$384$2 = (uint8*)"sitofp";
		goto label$747;
		label$514:;
		TMP$384$2 = (uint8*)"uitofp";
		label$747:;
		fb$result$1 = TMP$384$2;
		goto label$503;
	}
	label$506:;
	label$505:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$515;
	TMP$385$1 = 24ll;
	goto label$748;
	label$515:;
	TMP$385$1 = RDTYPE$1 & 31ll;
	label$748:;
	if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$385$1 * 56ll)) != 1ll ) goto label$517;
	{
		int64 TMP$386$2;
		uint8* TMP$389$2;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$518;
		TMP$386$2 = 24ll;
		goto label$749;
		label$518:;
		TMP$386$2 = LDTYPE$1 & 31ll;
		label$749:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$386$2 * 56ll)) + 16ll) == 0ll ) goto label$519;
		TMP$389$2 = (uint8*)"fptosi";
		goto label$750;
		label$519:;
		TMP$389$2 = (uint8*)"fptoui";
		label$750:;
		fb$result$1 = TMP$389$2;
		goto label$503;
	}
	label$517:;
	label$516:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$521;
	{
		if( (RDTYPE$1 & 480ll) == 0ll ) goto label$523;
		{
			fb$result$1 = (uint8*)"bitcast";
			goto label$503;
		}
		label$523:;
		label$522:;
		fb$result$1 = (uint8*)"inttoptr";
		goto label$503;
	}
	goto label$520;
	label$521:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$524;
	{
		fb$result$1 = (uint8*)"ptrtoint";
		goto label$503;
	}
	label$524:;
	label$520:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$525;
	TMP$393$1 = 24ll;
	goto label$751;
	label$525:;
	TMP$393$1 = LDTYPE$1 & 31ll;
	label$751:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$526;
	TMP$394$1 = 24ll;
	goto label$752;
	label$526:;
	TMP$394$1 = RDTYPE$1 & 31ll;
	label$752:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$393$1 * 56ll)) + 8ll) != *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$394$1 * 56ll)) + 8ll) ) goto label$528;
	{
		int64 TMP$395$2;
		int64 TMP$396$2;
		if( (LDTYPE$1 & 480ll) == 0ll ) goto label$529;
		TMP$395$2 = 24ll;
		goto label$753;
		label$529:;
		TMP$395$2 = LDTYPE$1 & 31ll;
		label$753:;
		if( (RDTYPE$1 & 480ll) == 0ll ) goto label$530;
		TMP$396$2 = 24ll;
		goto label$754;
		label$530:;
		TMP$396$2 = RDTYPE$1 & 31ll;
		label$754:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$395$2 * 56ll)) + 40ll) != *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$396$2 * 56ll)) + 40ll) ) goto label$532;
		{
			fb$result$1 = (uint8*)0ull;
			goto label$503;
		}
		label$532:;
		label$531:;
		fb$result$1 = (uint8*)"bitcast";
		goto label$503;
	}
	label$528:;
	label$527:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$533;
	TMP$397$1 = 24ll;
	goto label$755;
	label$533:;
	TMP$397$1 = LDTYPE$1 & 31ll;
	label$755:;
	if( (RDTYPE$1 & 480ll) == 0ll ) goto label$534;
	TMP$398$1 = 24ll;
	goto label$756;
	label$534:;
	TMP$398$1 = RDTYPE$1 & 31ll;
	label$756:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$397$1 * 56ll)) + 8ll) >= *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$398$1 * 56ll)) + 8ll) ) goto label$536;
	{
		fb$result$1 = (uint8*)"trunc";
		goto label$503;
	}
	label$536:;
	label$535:;
	if( (LDTYPE$1 & 480ll) == 0ll ) goto label$537;
	TMP$400$1 = 24ll;
	goto label$757;
	label$537:;
	TMP$400$1 = LDTYPE$1 & 31ll;
	label$757:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$400$1 * 56ll)) + 16ll) == 0ll ) goto label$538;
	TMP$403$1 = (uint8*)"sext";
	goto label$758;
	label$538:;
	TMP$403$1 = (uint8*)"zext";
	label$758:;
	fb$result$1 = TMP$403$1;
	goto label$503;
	label$503:;
	return fb$result$1;
}

static void HEMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int64 TMP$404$1;
	int64 TMP$405$1;
	FBSTRING TMP$409$1;
	FBSTRING TMP$410$1;
	FBSTRING TMP$411$1;
	FBSTRING TMP$412$1;
	FBSTRING TMP$413$1;
	label$539:;
	if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$541;
	TMP$404$1 = 24ll;
	goto label$759;
	label$541:;
	TMP$404$1 = *(int64*)((uint8*)V2$1 + 8ll) & 31ll;
	label$759:;
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$542;
	TMP$405$1 = 24ll;
	goto label$760;
	label$542:;
	TMP$405$1 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
	label$760:;
	if( ((int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$404$1 * 56ll)) == 1ll) & (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$405$1 * 56ll)) == 0ll)) == 0ll ) goto label$544;
	{
		FBSTRING TMP$406$2;
		struct $6IRVREG* V0$2;
		struct $6IRVREG* vr$15 = IRHLALLOCVREG( *(int64*)((uint8*)V2$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) );
		V0$2 = vr$15;
		HLOADVREG( V2$1 );
		FBSTRING LN$2;
		FBSTRING* vr$16 = HVREGTOSTR( V0$2 );
		__builtin_memset( &TMP$406$2, 0, 24ll );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$406$2, (void*)vr$16, -1ll, (void*)" = call ", 9ll );
		fb_StrInit( (void*)&LN$2, -1ll, (void*)vr$19, -1ll, 0 );
		if( *(int64*)((uint8*)V2$1 + 8ll) != 15ll ) goto label$546;
		{
			*(int64*)((uint8*)BUILTINS$ + 264ll) = -1ll;
			fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)"float @llvm.nearbyint.f32(float ", 33ll, 0 );
		}
		goto label$545;
		label$546:;
		{
			*(int64*)((uint8*)BUILTINS$ + 280ll) = -1ll;
			fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)"double @llvm.nearbyint.f64(double ", 35ll, 0 );
		}
		label$545:;
		FBSTRING* vr$24 = HVREGTOSTR( V2$1 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)vr$24, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$2, -1ll, (void*)")", 2ll, 0 );
		HWRITELINE( &LN$2 );
		__builtin_memcpy( V2$1, V0$2, 120 );
		fb_StrDelete( (FBSTRING*)&LN$2 );
	}
	label$544:;
	label$543:;
	uint8* OP$1;
	uint8* vr$31 = HGETCONVOPCODE( *(int64*)((uint8*)V1$1 + 8ll), *(int64*)((uint8*)V2$1 + 8ll) );
	OP$1 = vr$31;
	if( OP$1 != (uint8*)0ull ) goto label$548;
	{
		__builtin_memcpy( V1$1, V2$1, 120 );
		goto label$540;
	}
	label$548:;
	label$547:;
	struct $6IRVREG* V0$1;
	__builtin_memset( &V0$1, 0, 8ll );
	if( *(int64*)V1$1 != 4ll ) goto label$550;
	{
		V0$1 = V1$1;
	}
	goto label$549;
	label$550:;
	{
		struct $6IRVREG* vr$36 = IRHLALLOCVREG( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
		V0$1 = vr$36;
	}
	label$549:;
	HLOADVREG( V2$1 );
	FBSTRING LN$1;
	FBSTRING* vr$37 = HVREGTOSTR( V0$1 );
	__builtin_memset( &TMP$409$1, 0, 24ll );
	FBSTRING* vr$40 = fb_StrConcat( &TMP$409$1, (void*)vr$37, -1ll, (void*)" = ", 4ll );
	__builtin_memset( &TMP$410$1, 0, 24ll );
	FBSTRING* vr$43 = fb_StrConcat( &TMP$410$1, (void*)vr$40, -1ll, (void*)OP$1, 0ll );
	__builtin_memset( &TMP$411$1, 0, 24ll );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$411$1, (void*)vr$43, -1ll, (void*)" ", 2ll );
	fb_StrInit( (void*)&LN$1, -1ll, (void*)vr$46, -1ll, 0 );
	FBSTRING* vr$50 = HEMITTYPE( *(int64*)((uint8*)V2$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V2$1 + 16ll) );
	__builtin_memset( &TMP$412$1, 0, 24ll );
	FBSTRING* vr$54 = fb_StrConcat( &TMP$412$1, (void*)&LN$1, -1ll, (void*)vr$50, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$54, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$57 = HVREGTOSTR( V2$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$57, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" to ", 5ll, 0 );
	FBSTRING* vr$62 = HEMITTYPE( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
	__builtin_memset( &TMP$413$1, 0, 24ll );
	FBSTRING* vr$66 = fb_StrConcat( &TMP$413$1, (void*)&LN$1, -1ll, (void*)vr$62, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$66, -1ll, 0 );
	HWRITELINE( &LN$1 );
	if( *(int64*)V1$1 == 4ll ) goto label$552;
	{
		HEMITSTORE( V1$1, V0$1 );
	}
	label$552:;
	label$551:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$540:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	FBSTRING TMP$416$1;
	FBSTRING TMP$417$1;
	FBSTRING TMP$418$1;
	FBSTRING TMP$419$1;
	label$553:;
	__builtin_memset( &TMP$419$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	FBSTRING* vr$2 = VREGPRETTY( V2$1 );
	__builtin_memset( &TMP$416$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$416$1, (void*)"conv ", 6ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$417$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$417$1, (void*)vr$5, -1ll, (void*)" => ", 5ll );
	__builtin_memset( &TMP$418$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$418$1, (void*)vr$8, -1ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$419$1, -1ll, (void*)vr$11, -1ll, 0 );
	HASTCOMMAND( &TMP$419$1 );
	fb_StrDelete( (FBSTRING*)&TMP$419$1 );
	HEMITCONVERT( V1$1, V2$1 );
	label$554:;
}

static void HEMITSTORE( struct $6IRVREG* L$1, struct $6IRVREG* R$1 )
{
	FBSTRING TMP$420$1;
	FBSTRING TMP$421$1;
	FBSTRING TMP$422$1;
	FBSTRING TMP$423$1;
	label$555:;
	HLOADVREG( R$1 );
	_SETVREGDATATYPE( R$1, *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
	HPREPAREADDRESS( L$1 );
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1ll, (void*)"store ", 7ll, 0 );
	FBSTRING* vr$18 = HEMITTYPE( (((*(int64*)((uint8*)L$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)L$1 + 8ll) & 480ll) + -32ll)) | (((*(int64*)((uint8*)L$1 + 8ll) & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (*(int64*)((uint8*)L$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
	__builtin_memset( &TMP$420$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$420$1, (void*)vr$18, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$421$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$421$1, (void*)&LN$1, -1ll, (void*)vr$21, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$25, -1ll, 0 );
	FBSTRING* vr$27 = HVREGTOSTR( R$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$27, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
	FBSTRING* vr$32 = HEMITTYPE( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
	__builtin_memset( &TMP$422$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$422$1, (void*)vr$32, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$423$1, 0, 24ll );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$423$1, (void*)&LN$1, -1ll, (void*)vr$35, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$39, -1ll, 0 );
	FBSTRING* vr$41 = HVREGTOSTR( L$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$41, -1ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$556:;
}

static void _EMITSTORE( struct $6IRVREG* L$1, struct $6IRVREG* R$1 )
{
	FBSTRING TMP$425$1;
	FBSTRING TMP$426$1;
	FBSTRING TMP$427$1;
	FBSTRING TMP$428$1;
	label$557:;
	__builtin_memset( &TMP$428$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( R$1 );
	FBSTRING* vr$2 = VREGPRETTY( L$1 );
	__builtin_memset( &TMP$425$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$425$1, (void*)"store ", 7ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$426$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$426$1, (void*)vr$5, -1ll, (void*)" := ", 5ll );
	__builtin_memset( &TMP$427$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$427$1, (void*)vr$8, -1ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$428$1, -1ll, (void*)vr$11, -1ll, 0 );
	HASTCOMMAND( &TMP$428$1 );
	fb_StrDelete( (FBSTRING*)&TMP$428$1 );
	HEMITSTORE( L$1, R$1 );
	label$558:;
}

static void _EMITSPILLREGS( void )
{
	label$559:;
	label$560:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$561:;
	label$562:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$430$1;
	FBSTRING TMP$431$1;
	FBSTRING TMP$433$1;
	FBSTRING TMP$434$1;
	FBSTRING TMP$435$1;
	FBSTRING TMP$436$1;
	label$563:;
	__builtin_memset( &TMP$431$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$430$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$430$1, (void*)"loadres ", 9ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$431$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$431$1 );
	fb_StrDelete( (FBSTRING*)&TMP$431$1 );
	HLOADVREG( V1$1 );
	_SETVREGDATATYPE( V1$1, *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
	__builtin_memset( &TMP$436$1, 0, 24ll );
	FBSTRING* vr$11 = HVREGTOSTR( V1$1 );
	FBSTRING* vr$14 = HEMITTYPE( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
	__builtin_memset( &TMP$433$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$433$1, (void*)"ret ", 5ll, (void*)vr$14, -1ll );
	__builtin_memset( &TMP$434$1, 0, 24ll );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$434$1, (void*)vr$17, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$435$1, 0, 24ll );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$435$1, (void*)vr$20, -1ll, (void*)vr$11, -1ll );
	fb_StrAssign( (void*)&TMP$436$1, -1ll, (void*)vr$23, -1ll, 0 );
	HWRITELINE( &TMP$436$1 );
	fb_StrDelete( (FBSTRING*)&TMP$436$1 );
	label$564:;
}

static void _EMITADDR( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$565:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	{
		if( OP$1 != 22ll ) goto label$568;
		label$569:;
		{
			FBSTRING TMP$438$3;
			FBSTRING TMP$439$3;
			__builtin_memset( &TMP$439$3, 0, 24ll );
			FBSTRING* vr$2 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$438$3, 0, 24ll );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$438$3, (void*)"addrof ", 8ll, (void*)vr$2, -1ll );
			fb_StrAssign( (void*)&TMP$439$3, -1ll, (void*)vr$5, -1ll, 0 );
			HASTCOMMAND( &TMP$439$3 );
			fb_StrDelete( (FBSTRING*)&TMP$439$3 );
			HPREPAREADDRESS( V1$1 );
			_SETVREGDATATYPE( V1$1, *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
		}
		goto label$567;
		label$568:;
		if( OP$1 != 76ll ) goto label$570;
		label$571:;
		{
			FBSTRING TMP$441$3;
			FBSTRING TMP$442$3;
			__builtin_memset( &TMP$442$3, 0, 24ll );
			FBSTRING* vr$12 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$441$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$441$3, (void*)"deref ", 7ll, (void*)vr$12, -1ll );
			fb_StrAssign( (void*)&TMP$442$3, -1ll, (void*)vr$15, -1ll, 0 );
			HASTCOMMAND( &TMP$442$3 );
			fb_StrDelete( (FBSTRING*)&TMP$442$3 );
			HLOADVREG( V1$1 );
		}
		label$570:;
		label$567:;
	}
	__builtin_memcpy( VR$1, V1$1, 120 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$566:;
}

static void HDOCALL( uint8* PNAME$1, struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1, struct $6IRVREG* VR$1, int64 LEVEL$1 )
{
	FBSTRING TMP$447$1;
	FBSTRING TMP$448$1;
	int64 TMP$449$1;
	label$572:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	struct $9IRCALLARG* ARG$1;
	struct $9IRCALLARG* PREV$1;
	struct $6IRVREG* VARG$1;
	struct $6IRVREG* V0$1;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$575;
	{
		if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll ) goto label$577;
		{
			struct $6IRVREG* vr$6 = IRHLALLOCVREG( *(int64*)((uint8*)PROC$1 + 160ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) );
			VR$1 = vr$6;
		}
		label$577:;
		label$576:;
	}
	label$575:;
	label$574:;
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$579;
	{
		FBSTRING TMP$443$2;
		FBSTRING TMP$444$2;
		if( *(int64*)VR$1 != 4ll ) goto label$581;
		{
			V0$1 = VR$1;
		}
		goto label$580;
		label$581:;
		{
			struct $6IRVREG* vr$10 = IRHLALLOCVREG( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
			V0$1 = vr$10;
		}
		label$580:;
		FBSTRING* vr$11 = HVREGTOSTR( V0$1 );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$11, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = call ", 9ll, 0 );
		FBSTRING* vr$14 = HEMITPROCCALLCONV( PROC$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$14, -1ll, 0 );
		FBSTRING* vr$18 = HEMITTYPE( *(int64*)((uint8*)V0$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V0$1 + 16ll) );
		__builtin_memset( &TMP$443$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$443$2, (void*)vr$18, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$444$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$444$2, (void*)&LN$1, -1ll, (void*)vr$21, -1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$25, -1ll, 0 );
	}
	goto label$578;
	label$579:;
	{
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)"call ", 6ll, 0 );
		FBSTRING* vr$28 = HEMITPROCCALLCONV( PROC$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$28, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"void ", 6ll, 0 );
	}
	label$578:;
	__builtin_memset( &TMP$447$1, 0, 24ll );
	FBSTRING* vr$33 = fb_StrConcat( &TMP$447$1, (void*)PNAME$1, 0ll, (void*)"( ", 3ll );
	__builtin_memset( &TMP$448$1, 0, 24ll );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$448$1, (void*)&LN$1, -1ll, (void*)vr$33, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$37, -1ll, 0 );
	void* vr$40 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll) );
	ARG$1 = (struct $9IRCALLARG*)vr$40;
	label$582:;
	if( ARG$1 == (struct $9IRCALLARG*)0ull ) goto label$584;
	TMP$449$1 = (int64)-((struct $9IRCALLARG*)(int64)-(*(int64*)((uint8*)ARG$1 + 16ll) == LEVEL$1) != (struct $9IRCALLARG*)0ull);
	goto label$761;
	label$584:;
	TMP$449$1 = 0ll;
	label$761:;
	if( TMP$449$1 == 0ll ) goto label$583;
	{
		FBSTRING TMP$451$2;
		FBSTRING TMP$452$2;
		void* vr$44 = LISTGETPREV( (void*)ARG$1 );
		PREV$1 = (struct $9IRCALLARG*)vr$44;
		VARG$1 = *(struct $6IRVREG**)((uint8*)ARG$1 + 8ll);
		__builtin_memset( &TMP$452$2, 0, 24ll );
		FBSTRING* vr$47 = VREGPRETTY( VARG$1 );
		__builtin_memset( &TMP$451$2, 0, 24ll );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$451$2, (void*)"arg ", 5ll, (void*)vr$47, -1ll );
		fb_StrAssign( (void*)&TMP$452$2, -1ll, (void*)vr$50, -1ll, 0 );
		HINTERNALCOMMAND( &TMP$452$2 );
		fb_StrDelete( (FBSTRING*)&TMP$452$2 );
		HLOADVREG( VARG$1 );
		int64 DTYPE$2;
		__builtin_memset( &DTYPE$2, 0, 8ll );
		struct $8FBSYMBOL* SUBTYPE$2;
		__builtin_memset( &SUBTYPE$2, 0, 8ll );
		if( *(struct $8FBSYMBOL**)ARG$1 == (struct $8FBSYMBOL*)0ull ) goto label$586;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( *(struct $8FBSYMBOL**)ARG$1, &DTYPE$2, &SUBTYPE$2 );
		}
		goto label$585;
		label$586:;
		{
			DTYPE$2 = *(int64*)((uint8*)VARG$1 + 8ll);
			SUBTYPE$2 = *(struct $8FBSYMBOL**)((uint8*)VARG$1 + 16ll);
		}
		label$585:;
		FBSTRING* vr$62 = HEMITTYPE( DTYPE$2, SUBTYPE$2 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$62, -1ll, 0 );
		_SETVREGDATATYPE( VARG$1, DTYPE$2, SUBTYPE$2 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
		FBSTRING* vr$65 = HVREGTOSTR( VARG$1 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$65, -1ll, 0 );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll), (void*)ARG$1 );
		if( PREV$1 == (struct $9IRCALLARG*)0ull ) goto label$588;
		{
			if( *(int64*)((uint8*)PREV$1 + 16ll) != LEVEL$1 ) goto label$590;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
			}
			label$590:;
			label$589:;
		}
		label$588:;
		label$587:;
		ARG$1 = PREV$1;
	}
	goto label$582;
	label$583:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" )", 3ll, 0 );
	HWRITELINE( &LN$1 );
	if( VR$1 == (struct $6IRVREG*)0ull ) goto label$592;
	{
		if( *(int64*)VR$1 == 4ll ) goto label$594;
		{
			HEMITSTORE( VR$1, V0$1 );
		}
		label$594:;
		label$593:;
	}
	label$592:;
	label$591:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$573:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1, struct $6IRVREG* VR$1, int64 LEVEL$1 )
{
	FBSTRING TMP$454$1;
	FBSTRING TMP$455$1;
	FBSTRING TMP$456$1;
	label$595:;
	__builtin_memset( &TMP$456$1, 0, 24ll );
	FBSTRING* vr$1 = HSYMNAME( PROC$1 );
	__builtin_memset( &TMP$454$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$454$1, (void*)"call ", 6ll, (void*)vr$1, -1ll );
	__builtin_memset( &TMP$455$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$455$1, (void*)vr$4, -1ll, (void*)"()", 3ll );
	fb_StrAssign( (void*)&TMP$456$1, -1ll, (void*)vr$7, -1ll, 0 );
	HASTCOMMAND( &TMP$456$1 );
	fb_StrDelete( (FBSTRING*)&TMP$456$1 );
	uint8* vr$11 = SYMBGETMANGLEDNAME( PROC$1 );
	HDOCALL( vr$11, PROC$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$596:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int64 BYTESTOPOP$1, int64 LEVEL$1 )
{
	FBSTRING TMP$458$1;
	FBSTRING TMP$459$1;
	FBSTRING TMP$460$1;
	label$597:;
	__builtin_memset( &TMP$459$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$458$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$458$1, (void*)"callptr ", 9ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$459$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$459$1 );
	fb_StrDelete( (FBSTRING*)&TMP$459$1 );
	HLOADVREG( V1$1 );
	__builtin_memset( &TMP$460$1, 0, 24ll );
	FBSTRING* vr$9 = HVREGTOSTR( V1$1 );
	fb_StrAssign( (void*)&TMP$460$1, -1ll, (void*)vr$9, -1ll, 0 );
	HDOCALL( (uint8*)*(uint8**)&TMP$460$1, PROC$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	fb_StrDelete( (FBSTRING*)&TMP$460$1 );
	label$598:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$462$1;
	FBSTRING TMP$463$1;
	FBSTRING TMP$465$1;
	FBSTRING TMP$466$1;
	label$599:;
	__builtin_memset( &TMP$463$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$462$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$462$1, (void*)"jumpptr ", 9ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$463$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$463$1 );
	fb_StrDelete( (FBSTRING*)&TMP$463$1 );
	HLOADVREG( V1$1 );
	__builtin_memset( &TMP$466$1, 0, 24ll );
	FBSTRING* vr$9 = HVREGTOSTR( V1$1 );
	__builtin_memset( &TMP$465$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$465$1, (void*)"goto *", 7ll, (void*)vr$9, -1ll );
	fb_StrAssign( (void*)&TMP$466$1, -1ll, (void*)vr$12, -1ll, 0 );
	HWRITELINE( &TMP$466$1 );
	fb_StrDelete( (FBSTRING*)&TMP$466$1 );
	label$600:;
}

static void _EMITBRANCH( int64 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$468$1;
	FBSTRING TMP$469$1;
	FBSTRING TMP$470$1;
	FBSTRING TMP$471$1;
	label$601:;
	__builtin_memset( &TMP$469$1, 0, 24ll );
	FBSTRING* vr$1 = HSYMNAME( LABEL$1 );
	__builtin_memset( &TMP$468$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$468$1, (void*)"goto ", 6ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$469$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$469$1 );
	fb_StrDelete( (FBSTRING*)&TMP$469$1 );
	__builtin_memset( &TMP$471$1, 0, 24ll );
	uint8* vr$9 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$470$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$470$1, (void*)"br label %", 11ll, (void*)vr$9, 0ll );
	fb_StrAssign( (void*)&TMP$471$1, -1ll, (void*)vr$12, -1ll, 0 );
	HWRITELINE( &TMP$471$1 );
	fb_StrDelete( (FBSTRING*)&TMP$471$1 );
	uint8* vr$16 = SYMBUNIQUELABEL(  );
	HWRITELABEL( vr$16 );
	label$602:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int64 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$473$1;
	FBSTRING TMP$474$1;
	FBSTRING TMP$476$1;
	FBSTRING TMP$477$1;
	FBSTRING TMP$478$1;
	FBSTRING TMP$485$1;
	label$603:;
	__builtin_memset( &TMP$474$1, 0, 24ll );
	FBSTRING* vr$1 = VREGPRETTY( V1$1 );
	__builtin_memset( &TMP$473$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$473$1, (void*)"jmptb ", 7ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&TMP$474$1, -1ll, (void*)vr$4, -1ll, 0 );
	HASTCOMMAND( &TMP$474$1 );
	fb_StrDelete( (FBSTRING*)&TMP$474$1 );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	HLOADVREG( V1$1 );
	FBSTRING DTYPE$1;
	FBSTRING* vr$11 = HEMITTYPE( *(int64*)((uint8*)V1$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)V1$1 + 16ll) );
	fb_StrInit( (void*)&DTYPE$1, -1ll, (void*)vr$11, -1ll, 0 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)"switch ", 8ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&DTYPE$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	FBSTRING* vr$17 = HVREGTOSTR( V1$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$17, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
	uint8* vr$20 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	__builtin_memset( &TMP$476$1, 0, 24ll );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$476$1, (void*)"label %", 8ll, (void*)vr$20, 0ll );
	__builtin_memset( &TMP$477$1, 0, 24ll );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$477$1, (void*)vr$23, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$478$1, 0, 24ll );
	FBSTRING* vr$30 = fb_StrConcat( &TMP$478$1, (void*)&LN$1, -1ll, (void*)vr$26, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$30, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"[", 2ll, 0 );
	HWRITELINE( &LN$1 );
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$479$2;
		TMP$479$2 = LABELCOUNT$1 + -1ll;
		goto label$605;
		label$608:;
		{
			FBSTRING TMP$480$3;
			FBSTRING TMP$481$3;
			FBSTRING TMP$482$3;
			FBSTRING TMP$483$3;
			FBSTRING TMP$484$3;
			FBSTRING* vr$39 = fb_ULongintToStr( *(uint64*)((uint8*)VALUES$1 + (I$2 << (3ll & 63ll))) + BIAS$1 );
			__builtin_memset( &TMP$480$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$480$3, (void*)&DTYPE$1, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$481$3, 0, 24ll );
			FBSTRING* vr$46 = fb_StrConcat( &TMP$481$3, (void*)vr$43, -1ll, (void*)vr$39, -1ll );
			__builtin_memset( &TMP$482$3, 0, 24ll );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$482$3, (void*)vr$46, -1ll, (void*)", ", 3ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$49, -1ll, 0 );
			uint8* vr$53 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$2 << (3ll & 63ll))) );
			__builtin_memset( &TMP$483$3, 0, 24ll );
			FBSTRING* vr$56 = fb_StrConcat( &TMP$483$3, (void*)"label %", 8ll, (void*)vr$53, 0ll );
			__builtin_memset( &TMP$484$3, 0, 24ll );
			FBSTRING* vr$60 = fb_StrConcat( &TMP$484$3, (void*)&LN$1, -1ll, (void*)vr$56, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$60, -1ll, 0 );
			HWRITELINE( &LN$1 );
		}
		label$606:;
		I$2 = I$2 + 1ll;
		label$605:;
		if( I$2 <= TMP$479$2 ) goto label$608;
		label$607:;
	}
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	__builtin_memset( &TMP$485$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$485$1, -1ll, (void*)"]", 2ll, 0 );
	HWRITELINE( &TMP$485$1 );
	fb_StrDelete( (FBSTRING*)&TMP$485$1 );
	fb_StrDelete( (FBSTRING*)&DTYPE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$604:;
}

static void _EMITMEM( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$609:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)"call void ", 11ll, 0 );
	{
		if( OP$1 != 107ll ) goto label$612;
		label$613:;
		{
			FBSTRING TMP$488$3;
			FBSTRING TMP$489$3;
			__builtin_memset( &TMP$489$3, 0, 24ll );
			FBSTRING* vr$3 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$488$3, 0, 24ll );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$488$3, (void*)"memclear ", 10ll, (void*)vr$3, -1ll );
			fb_StrAssign( (void*)&TMP$489$3, -1ll, (void*)vr$6, -1ll, 0 );
			HASTCOMMAND( &TMP$489$3 );
			fb_StrDelete( (FBSTRING*)&TMP$489$3 );
		}
		goto label$611;
		label$612:;
		if( OP$1 != 105ll ) goto label$614;
		label$615:;
		{
			FBSTRING TMP$492$3;
			FBSTRING TMP$493$3;
			FBSTRING TMP$494$3;
			FBSTRING TMP$495$3;
			__builtin_memset( &TMP$495$3, 0, 24ll );
			FBSTRING* vr$11 = VREGPRETTY( V2$1 );
			FBSTRING* vr$12 = VREGPRETTY( V1$1 );
			__builtin_memset( &TMP$492$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$492$3, (void*)"memmove ", 9ll, (void*)vr$12, -1ll );
			__builtin_memset( &TMP$493$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$493$3, (void*)vr$15, -1ll, (void*)" <= ", 5ll );
			__builtin_memset( &TMP$494$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$494$3, (void*)vr$18, -1ll, (void*)vr$11, -1ll );
			fb_StrAssign( (void*)&TMP$495$3, -1ll, (void*)vr$21, -1ll, 0 );
			HASTCOMMAND( &TMP$495$3 );
			fb_StrDelete( (FBSTRING*)&TMP$495$3 );
		}
		label$614:;
		label$611:;
	}
	HLOADVREG( V1$1 );
	HLOADVREG( V2$1 );
	{
		if( OP$1 != 107ll ) goto label$617;
		label$618:;
		{
			*(int64*)((uint8*)BUILTINS$ + 8ll) = -1ll;
			_SETVREGDATATYPE( V1$1, 34ll, (struct $8FBSYMBOL*)0ull );
			_SETVREGDATATYPE( V2$1, 8ll, (struct $8FBSYMBOL*)0ull );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"@llvm.memset.p0i8.i32( ", 24ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i8* ", 5ll, 0 );
			FBSTRING* vr$27 = HVREGTOSTR( V1$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$27, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i8 0, ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i32 ", 5ll, 0 );
			FBSTRING* vr$32 = HVREGTOSTR( V2$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$32, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		goto label$616;
		label$617:;
		if( OP$1 != 105ll ) goto label$619;
		label$620:;
		{
			*(int64*)((uint8*)BUILTINS$ + 24ll) = -1ll;
			_SETVREGDATATYPE( V1$1, 34ll, (struct $8FBSYMBOL*)0ull );
			_SETVREGDATATYPE( V2$1, 34ll, (struct $8FBSYMBOL*)0ull );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"@llvm.memmove.p0i8.p0i8.i32( ", 30ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i8* ", 5ll, 0 );
			FBSTRING* vr$37 = HVREGTOSTR( V1$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$37, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i8* ", 5ll, 0 );
			FBSTRING* vr$41 = HVREGTOSTR( V2$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$41, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i32 ", 5ll, 0 );
			FBSTRING* vr$45 = fb_ULongintToStr( (uint64)BYTES$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$45, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$619:;
		label$616:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i32 1, i1 false )", 18ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$610:;
}

static void _EMITMACRO( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$621:;
	label$622:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$623:;
	label$624:;
}

static void _EMITDBG( int64 OP$1, struct $8FBSYMBOL* PROC$1, int64 LNUM$1, uint8* FILENAME$1 )
{
	label$625:;
	if( OP$1 != 113ll ) goto label$628;
	{
		if( FILENAME$1 == (uint8*)0ull ) goto label$630;
		{
			FBSTRING TMP$505$3;
			FBSTRING TMP$506$3;
			FBSTRING TMP$507$3;
			FBSTRING TMP$508$3;
			FBSTRING TMP$509$3;
			__builtin_memset( &TMP$509$3, 0, 24ll );
			FBSTRING* vr$1 = HREPLACE( FILENAME$1, (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			FBSTRING* vr$2 = fb_LongintToStr( LNUM$1 );
			__builtin_memset( &TMP$505$3, 0, 24ll );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$505$3, (void*)"#line ", 7ll, (void*)vr$2, -1ll );
			__builtin_memset( &TMP$506$3, 0, 24ll );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$506$3, (void*)vr$5, -1ll, (void*)" \x22", 3ll );
			__builtin_memset( &TMP$507$3, 0, 24ll );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$507$3, (void*)vr$8, -1ll, (void*)vr$1, -1ll );
			__builtin_memset( &TMP$508$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$508$3, (void*)vr$11, -1ll, (void*)"\x22", 2ll );
			fb_StrAssign( (void*)&TMP$509$3, -1ll, (void*)vr$14, -1ll, 0 );
			HWRITELINE( &TMP$509$3 );
			fb_StrDelete( (FBSTRING*)&TMP$509$3 );
		}
		goto label$629;
		label$630:;
		{
			FBSTRING TMP$510$3;
			FBSTRING TMP$511$3;
			FBSTRING TMP$512$3;
			FBSTRING TMP$513$3;
			FBSTRING TMP$514$3;
			__builtin_memset( &TMP$514$3, 0, 24ll );
			FBSTRING* vr$20 = HREPLACE( (uint8*)((uint8*)&ENV$ + 560ll), (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
			FBSTRING* vr$21 = fb_LongintToStr( LNUM$1 );
			__builtin_memset( &TMP$510$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$510$3, (void*)"#line ", 7ll, (void*)vr$21, -1ll );
			__builtin_memset( &TMP$511$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$511$3, (void*)vr$24, -1ll, (void*)" \x22", 3ll );
			__builtin_memset( &TMP$512$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$512$3, (void*)vr$27, -1ll, (void*)vr$20, -1ll );
			__builtin_memset( &TMP$513$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$513$3, (void*)vr$30, -1ll, (void*)"\x22", 2ll );
			fb_StrAssign( (void*)&TMP$514$3, -1ll, (void*)vr$33, -1ll, 0 );
			HWRITELINE( &TMP$514$3 );
			fb_StrDelete( (FBSTRING*)&TMP$514$3 );
		}
		label$629:;
		*(int64*)((uint8*)&CTX$ + 8ll) = LNUM$1;
	}
	label$628:;
	label$627:;
	label$626:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	FBSTRING TMP$515$1;
	FBSTRING TMP$516$1;
	label$631:;
	__builtin_memset( &TMP$516$1, 0, 24ll );
	__builtin_memset( &TMP$515$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$515$1, (void*)"; ", 3ll, (void*)TEXT$1, 0ll );
	fb_StrAssign( (void*)&TMP$516$1, -1ll, (void*)vr$3, -1ll, 0 );
	HWRITELINE( &TMP$516$1 );
	fb_StrDelete( (FBSTRING*)&TMP$516$1 );
	label$632:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$633:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$635:;
	if( N$1 == (struct $9ASTASMTOK*)0ull ) goto label$636;
	{
		{
			$14AST_ASMTOKTYPE TMP$517$3;
			TMP$517$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$517$3 != 0ll ) goto label$638;
			label$639:;
			{
				FBSTRING TMP$518$4;
				__builtin_memset( &TMP$518$4, 0, 24ll );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$518$4, (void*)&LN$1, -1ll, *(void**)((uint8*)N$1 + 8ll), 0ll );
				fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$6, -1ll, 0 );
			}
			goto label$637;
			label$638:;
			if( TMP$517$3 != 1ll ) goto label$640;
			label$641:;
			{
				FBSTRING TMP$519$4;
				uint8* vr$9 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
				__builtin_memset( &TMP$519$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$519$4, (void*)&LN$1, -1ll, (void*)vr$9, 0ll );
				fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$13, -1ll, 0 );
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) + 88ll);
				if( OFS$4 == 0ll ) goto label$643;
				{
					if( OFS$4 <= 0ll ) goto label$645;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"+", 2ll, 0 );
					}
					label$645:;
					label$644:;
					FBSTRING* vr$18 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$18, -1ll, 0 );
				}
				label$643:;
				label$642:;
			}
			label$640:;
			label$637:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 16ll);
	}
	goto label$635;
	label$636:;
	HWRITELINE( &LN$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$634:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$646:;
	uint8* vr$0 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$0, 0ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" = global ", 11ll, 0 );
	FBSTRING* vr$3 = HEMITSYMTYPE( SYM$1 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$3, -1ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" ", 2ll, 0 );
	*(int64*)((uint8*)&CTX$ + 40ll) = 0ll;
	*(int8*)((uint8*)&CTX$ + 48ll) = (int8)0;
	label$647:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$648:;
	HWRITELINE( (FBSTRING*)((uint8*)&CTX$ + 16ll) );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"", 1ll, 0 );
	label$649:;
}

static void HVARINIELEMENTTYPE( struct $8FBSYMBOL* SYM$1 )
{
	label$650:;
	if( *(int64*)((uint8*)&CTX$ + 40ll) <= 0ll ) goto label$653;
	{
		if( (int64)*(int8*)((uint8*)((uint8*)&CTX$ + *(int64*)((uint8*)&CTX$ + 40ll)) + 48ll) == 0ll ) goto label$655;
		{
			FBSTRING TMP$521$3;
			FBSTRING TMP$522$3;
			FBSTRING* vr$5 = HEMITTYPE( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
			__builtin_memset( &TMP$521$3, 0, 24ll );
			FBSTRING* vr$8 = fb_StrConcat( &TMP$521$3, (void*)vr$5, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$522$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$522$3, (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$8, -1ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$12, -1ll, 0 );
		}
		goto label$654;
		label$655:;
		{
			FBSTRING* vr$14 = HEMITSYMTYPE( SYM$1 );
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$14, -1ll, 0 );
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" ", 2ll, 0 );
		}
		label$654:;
	}
	label$653:;
	label$652:;
	label$651:;
}

static void HVARINISEPARATOR( void )
{
	label$656:;
	if( *(int64*)((uint8*)&CTX$ + 40ll) <= 0ll ) goto label$659;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)", ", 3ll, 0 );
	}
	label$659:;
	label$658:;
	label$657:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	int64 TMP$523$1;
	label$660:;
	HVARINIELEMENTTYPE( SYM$1 );
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	if( ((int64)-(DTYPE$1 == 1ll) & (int64)-(VALUE$1 != 0ll)) == 0ll ) goto label$663;
	{
		VALUE$1 = 1ll;
	}
	label$663:;
	label$662:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$664;
	TMP$523$1 = 24ll;
	goto label$762;
	label$664:;
	TMP$523$1 = DTYPE$1 & 31ll;
	label$762:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$523$1 * 56ll)) + 8ll) != 8ll ) goto label$666;
	{
		FBSTRING* vr$8 = HEMITLONG( VALUE$1 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$8, -1ll, 0 );
	}
	goto label$665;
	label$666:;
	{
		FBSTRING TMP$524$2;
		FBSTRING* vr$11 = HEMITINT( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), VALUE$1 );
		__builtin_memset( &TMP$524$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$524$2, (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$11, -1ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$15, -1ll, 0 );
	}
	label$665:;
	HVARINISEPARATOR(  );
	label$661:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	label$667:;
	HVARINIELEMENTTYPE( SYM$1 );
	FBSTRING* vr$0 = HEMITFLOAT( VALUE$1 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$0, -1ll, 0 );
	HVARINISEPARATOR(  );
	label$668:;
}

static void HMAYBEADDCONV( FBSTRING* S$1, int64 LDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, FBSTRING* LTYPE$1, int64 RDTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, FBSTRING* RTYPE$1 )
{
	FBSTRING TMP$526$1;
	FBSTRING TMP$527$1;
	FBSTRING TMP$528$1;
	FBSTRING TMP$529$1;
	FBSTRING TMP$530$1;
	FBSTRING TMP$531$1;
	FBSTRING TMP$532$1;
	label$669:;
	if( ((int64)-(LDTYPE$1 == RDTYPE$1) & (int64)-(LSUBTYPE$1 == RSUBTYPE$1)) == 0ll ) goto label$672;
	{
		goto label$670;
	}
	label$672:;
	label$671:;
	uint8* OP$1;
	uint8* vr$3 = HGETCONVOPCODE( LDTYPE$1, RDTYPE$1 );
	OP$1 = vr$3;
	if( OP$1 != (uint8*)0ull ) goto label$674;
	{
		goto label$670;
	}
	label$674:;
	label$673:;
	__builtin_memset( &TMP$526$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$526$1, (void*)OP$1, 0ll, (void*)" (", 3ll );
	__builtin_memset( &TMP$527$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$527$1, (void*)vr$6, -1ll, (void*)RTYPE$1, -1ll );
	__builtin_memset( &TMP$528$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$528$1, (void*)vr$9, -1ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$529$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$529$1, (void*)vr$12, -1ll, (void*)S$1, -1ll );
	__builtin_memset( &TMP$530$1, 0, 24ll );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$530$1, (void*)vr$15, -1ll, (void*)" to ", 5ll );
	__builtin_memset( &TMP$531$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$531$1, (void*)vr$18, -1ll, (void*)LTYPE$1, -1ll );
	__builtin_memset( &TMP$532$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$532$1, (void*)vr$21, -1ll, (void*)")", 2ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$24, -1ll, 0 );
	label$670:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	FBSTRING TMP$556$1;
	label$675:;
	HVARINIELEMENTTYPE( SYM$1 );
	FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( RHS$1 );
	fb_StrInit( (void*)&S$1, -1ll, (void*)vr$0, 0ll, 0 );
	int64 SYMDTYPE$1;
	SYMDTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	FBSTRING SYMTYPE$1;
	FBSTRING* vr$5 = HEMITTYPE( SYMDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	fb_StrInit( (void*)&SYMTYPE$1, -1ll, (void*)vr$5, -1ll, 0 );
	int64 PTRDTYPE$1;
	PTRDTYPE$1 = ((((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)RHS$1 + 56ll) & 511ll) & 32505856ll);
	FBSTRING PTRTYPE$1;
	FBSTRING* vr$25 = HEMITTYPE( PTRDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)RHS$1 + 64ll) );
	fb_StrInit( (void*)&PTRTYPE$1, -1ll, (void*)vr$25, -1ll, 0 );
	if( OFS$1 == 0ll ) goto label$678;
	{
		FBSTRING TMP$534$2;
		FBSTRING TMP$535$2;
		FBSTRING TMP$536$2;
		FBSTRING TMP$537$2;
		FBSTRING TMP$538$2;
		FBSTRING TMP$539$2;
		FBSTRING TMP$541$2;
		FBSTRING TMP$542$2;
		FBSTRING TMP$543$2;
		FBSTRING TMP$544$2;
		FBSTRING TMP$545$2;
		FBSTRING TMP$546$2;
		FBSTRING TMP$547$2;
		FBSTRING TMP$548$2;
		FBSTRING TMP$550$2;
		FBSTRING TMP$551$2;
		FBSTRING TMP$552$2;
		FBSTRING TMP$553$2;
		FBSTRING TMP$554$2;
		FBSTRING TMP$555$2;
		FBSTRING INTTYPE$2;
		FBSTRING* vr$27 = HEMITTYPE( 9ll, (struct $8FBSYMBOL*)0ull );
		fb_StrInit( (void*)&INTTYPE$2, -1ll, (void*)vr$27, -1ll, 0 );
		__builtin_memset( &TMP$534$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$534$2, (void*)"ptrtoint (", 11ll, (void*)&PTRTYPE$1, -1ll );
		__builtin_memset( &TMP$535$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$535$2, (void*)vr$34, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$536$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$536$2, (void*)vr$37, -1ll, (void*)&S$1, -1ll );
		__builtin_memset( &TMP$537$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$537$2, (void*)vr$40, -1ll, (void*)" to ", 5ll );
		__builtin_memset( &TMP$538$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$538$2, (void*)vr$43, -1ll, (void*)&INTTYPE$2, -1ll );
		__builtin_memset( &TMP$539$2, 0, 24ll );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$539$2, (void*)vr$46, -1ll, (void*)")", 2ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$49, -1ll, 0 );
		FBSTRING* vr$51 = fb_LongintToStr( OFS$1 );
		__builtin_memset( &TMP$541$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$541$2, (void*)"add (", 6ll, (void*)&INTTYPE$2, -1ll );
		__builtin_memset( &TMP$542$2, 0, 24ll );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$542$2, (void*)vr$57, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$543$2, 0, 24ll );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$543$2, (void*)vr$60, -1ll, (void*)&S$1, -1ll );
		__builtin_memset( &TMP$544$2, 0, 24ll );
		FBSTRING* vr$66 = fb_StrConcat( &TMP$544$2, (void*)vr$63, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$545$2, 0, 24ll );
		FBSTRING* vr$69 = fb_StrConcat( &TMP$545$2, (void*)vr$66, -1ll, (void*)&INTTYPE$2, -1ll );
		__builtin_memset( &TMP$546$2, 0, 24ll );
		FBSTRING* vr$72 = fb_StrConcat( &TMP$546$2, (void*)vr$69, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$547$2, 0, 24ll );
		FBSTRING* vr$75 = fb_StrConcat( &TMP$547$2, (void*)vr$72, -1ll, (void*)vr$51, -1ll );
		__builtin_memset( &TMP$548$2, 0, 24ll );
		FBSTRING* vr$78 = fb_StrConcat( &TMP$548$2, (void*)vr$75, -1ll, (void*)")", 2ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$78, -1ll, 0 );
		__builtin_memset( &TMP$550$2, 0, 24ll );
		FBSTRING* vr$85 = fb_StrConcat( &TMP$550$2, (void*)"inttoptr (", 11ll, (void*)&INTTYPE$2, -1ll );
		__builtin_memset( &TMP$551$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$551$2, (void*)vr$85, -1ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$552$2, 0, 24ll );
		FBSTRING* vr$91 = fb_StrConcat( &TMP$552$2, (void*)vr$88, -1ll, (void*)&S$1, -1ll );
		__builtin_memset( &TMP$553$2, 0, 24ll );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$553$2, (void*)vr$91, -1ll, (void*)" to ", 5ll );
		__builtin_memset( &TMP$554$2, 0, 24ll );
		FBSTRING* vr$97 = fb_StrConcat( &TMP$554$2, (void*)vr$94, -1ll, (void*)&PTRTYPE$1, -1ll );
		__builtin_memset( &TMP$555$2, 0, 24ll );
		FBSTRING* vr$100 = fb_StrConcat( &TMP$555$2, (void*)vr$97, -1ll, (void*)")", 2ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$100, -1ll, 0 );
		fb_StrDelete( (FBSTRING*)&INTTYPE$2 );
	}
	label$678:;
	label$677:;
	__builtin_memset( &TMP$556$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$556$1, -1ll, (void*)&PTRTYPE$1, -1ll, 0 );
	HMAYBEADDCONV( &S$1, SYMDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), &SYMTYPE$1, PTRDTYPE$1, *(struct $8FBSYMBOL**)((uint8*)RHS$1 + 64ll), &TMP$556$1 );
	fb_StrDelete( (FBSTRING*)&TMP$556$1 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)&S$1, -1ll, 0 );
	HVARINISEPARATOR(  );
	fb_StrDelete( (FBSTRING*)&PTRTYPE$1 );
	fb_StrDelete( (FBSTRING*)&SYMTYPE$1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$676:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	label$679:;
	if( *(int64*)((uint8*)&CTX$ + 40ll) <= 0ll ) goto label$682;
	{
		FBSTRING* vr$0 = HEMITSTRLITTYPE( VARLENGTH$1 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$0, -1ll, 0 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" ", 2ll, 0 );
	}
	label$682:;
	label$681:;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"c\x22", 3ll, 0 );
	uint8* vr$5 = HUNESCAPE( LITERAL$1 );
	HBUILDSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 16ll), VARLENGTH$1 + 1ll, vr$5, LITLENGTH$1 + 1ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"\x22", 2ll, 0 );
	HVARINISEPARATOR(  );
	label$680:;
}

static void _EMITVARINIWSTR( int64 VARLENGTH$1, uint32* LITERAL$1, int64 LITLENGTH$1 )
{
	label$683:;
	if( *(int64*)((uint8*)&CTX$ + 40ll) <= 0ll ) goto label$686;
	{
		FBSTRING* vr$0 = HEMITSTRLITTYPE( VARLENGTH$1 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$0, -1ll, 0 );
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" ", 2ll, 0 );
	}
	label$686:;
	label$685:;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"c\x22", 3ll, 0 );
	uint32* vr$5 = HUNESCAPEW( LITERAL$1 );
	HBUILDWSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 16ll), VARLENGTH$1 + 1ll, vr$5, LITLENGTH$1 + 1ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"\x22", 2ll, 0 );
	HVARINISEPARATOR(  );
	label$684:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	label$687:;
	label$688:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int64 IS_ARRAY$1 )
{
	label$689:;
	HVARINIELEMENTTYPE( SYM$1 );
	*(int64*)((uint8*)&CTX$ + 40ll) = *(int64*)((uint8*)&CTX$ + 40ll) + 1ll;
	if( *(int64*)((uint8*)&CTX$ + 40ll) < 128ll ) goto label$692;
	{
		ERRREPORT( 21ll, 0ll, (uint8*)"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)" );
		*(int64*)((uint8*)&CTX$ + 40ll) = *(int64*)((uint8*)&CTX$ + 40ll) + -1ll;
	}
	label$692:;
	label$691:;
	*(int8*)((uint8*)((uint8*)&CTX$ + *(int64*)((uint8*)&CTX$ + 40ll)) + 48ll) = (int8)IS_ARRAY$1;
	if( IS_ARRAY$1 == 0ll ) goto label$694;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"[ ", 3ll, 0 );
	}
	goto label$693;
	label$694:;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)"{ ", 3ll, 0 );
	}
	label$693:;
	label$690:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$695:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 16ll), 2ll );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1ll, (void*)", ", 3ll );
	if( (int64)vr$2 != 0ll ) goto label$698;
	{
		int64 vr$5 = fb_StrLen( (void*)((uint8*)&CTX$ + 16ll), -1ll );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)((uint8*)&CTX$ + 16ll), vr$5 + -2ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)vr$8, -1ll, 0 );
	}
	label$698:;
	label$697:;
	if( (int64)*(int8*)((uint8*)((uint8*)&CTX$ + *(int64*)((uint8*)&CTX$ + 40ll)) + 48ll) == 0ll ) goto label$700;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" ]", 3ll, 0 );
	}
	goto label$699;
	label$700:;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 16ll), -1ll, (void*)" }", 3ll, 0 );
	}
	label$699:;
	if( *(int64*)((uint8*)&CTX$ + 40ll) <= 0ll ) goto label$702;
	{
		*(int64*)((uint8*)&CTX$ + 40ll) = *(int64*)((uint8*)&CTX$ + 40ll) + -1ll;
	}
	label$702:;
	label$701:;
	HVARINISEPARATOR(  );
	label$696:;
}

static void _EMITFBCTINFBEGIN( void )
{
	FBSTRING TMP$564$1;
	label$703:;
	__builtin_memset( &TMP$564$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$564$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$564$1 );
	fb_StrDelete( (FBSTRING*)&TMP$564$1 );
	label$704:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$565$1;
	FBSTRING TMP$566$1;
	label$705:;
	__builtin_memset( &TMP$565$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$565$1, (void*)S$1, 0ll, (void*)"\x5C" "00", 4ll );
	__builtin_memset( &TMP$566$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$566$1, (void*)((uint8*)&CTX$ + 240ll), -1ll, (void*)vr$2, -1ll );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 240ll), -1ll, (void*)vr$6, -1ll, 0 );
	int64 vr$8 = fb_StrLen( (void*)S$1, 0ll );
	*(int64*)((uint8*)&CTX$ + 264ll) = (*(int64*)((uint8*)&CTX$ + 264ll) + vr$8) + 1ll;
	label$706:;
}

static void _EMITFBCTINFEND( void )
{
	label$707:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)"@__fbctinf = internal constant ", 32ll, 0 );
	FBSTRING* vr$2 = HEMITSTRLITTYPE( *(int64*)((uint8*)&CTX$ + 264ll) );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" c\x22", 4ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&CTX$ + 240ll), -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", section \x22.fbctinf\x22", 21ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)"@llvm.used = appending global [1 x i8*] ", 41ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"[", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"i8* bitcast (", 14ll, 0 );
	FBSTRING* vr$13 = HEMITSTRLITTYPE( *(int64*)((uint8*)&CTX$ + 264ll) );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$13, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"* @__fbctinf to i8*)", 21ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"]", 2ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", section \x22llvm.metadata\x22", 26ll, 0 );
	HWRITELINE( &LN$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 240ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 264ll) = 0ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$708:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$575$1;
	FBSTRING TMP$580$1;
	label$709:;
	IRHLEMITPROCBEGIN(  );
	__builtin_memset( &TMP$575$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$575$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$575$1 );
	fb_StrDelete( (FBSTRING*)&TMP$575$1 );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"define ", 8ll, 0 );
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 256ll) == 0ll ) goto label$712;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"dllexport ", 11ll, 0 );
	}
	goto label$711;
	label$712:;
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 64ll) == 0ll ) goto label$713;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"private ", 9ll, 0 );
	}
	label$713:;
	label$711:;
	FBSTRING* vr$12 = HEMITPROCHEADER( PROC$1, 0ll, 0ll );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$12, -1ll, 0 );
	HWRITELINE( &LN$1 );
	__builtin_memset( &TMP$580$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$580$1, -1ll, (void*)"{", 2ll, 0 );
	HWRITELINE( &TMP$580$1 );
	fb_StrDelete( (FBSTRING*)&TMP$580$1 );
	*(int64*)&CTX$ = *(int64*)&CTX$ + 1ll;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$710:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$584$1;
	label$714:;
	if( (*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll ) goto label$717;
	{
		FBSTRING TMP$582$2;
		__builtin_memset( &TMP$582$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$582$2, -1ll, (void*)"ret void", 9ll, 0 );
		HWRITELINE( &TMP$582$2 );
		fb_StrDelete( (FBSTRING*)&TMP$582$2 );
	}
	label$717:;
	label$716:;
	*(int64*)&CTX$ = *(int64*)&CTX$ + -1ll;
	__builtin_memset( &TMP$584$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$584$1, -1ll, (void*)"}", 2ll, 0 );
	HWRITELINE( &TMP$584$1 );
	fb_StrDelete( (FBSTRING*)&TMP$584$1 );
	IRHLEMITPROCEND(  );
	label$715:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$718:;
	label$719:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$720:;
	label$721:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$723:;
	_ZN13IRLLVMCONTEXTC1Ev( &CTX$ );
	label$724:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$726:;
	_ZN13IRLLVMCONTEXTD1Ev( &CTX$ );
	label$727:;
}
