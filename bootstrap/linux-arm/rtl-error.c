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
typedef int32 $11FB_DATATYPE;
typedef int32 $11FB_FUNCMODE;
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
typedef int32 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int32 ISOPT;
	int32 OPTVAL;
	int32 CHECK_CONST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 20 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int32 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 348 );
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
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzerror( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBRANCH( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
static struct $7ASTNODE* HERRORTHROW( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[17] = { { (uint8*)"fb_ErrorThrowAt", (uint8*)0u, 32, 3, (tmp$33)0u, 0, 4, { { 523, 1, 0 }, { 1060, 1, 0 }, { 1056, 1, 0 }, { 1056, 1, 0 } } }, { (uint8*)"fb_ErrorThrowEx", (uint8*)0u, 32, 3, (tmp$33)0u, 0, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 }, { 1056, 1, 0 }, { 1056, 1, 0 } } }, { (uint8*)"fb_ErrorSetHandler", (uint8*)0u, 32, -1, (tmp$33)0u, 0, 1, { { 32, 1, 0 } } }, { (uint8*)"fb_ErrorGetNum", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"fb_ErrorSetNum", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_ErrorResume", (uint8*)0u, 32, 3, (tmp$33)0u, 0, 0 }, { (uint8*)"fb_ErrorResumeNext", (uint8*)0u, 32, 3, (tmp$33)0u, 0, 0 }, { (uint8*)"erl", (uint8*)"fb_ErrorGetLineNum", 11, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"erfn", (uint8*)"fb_ErrorGetFuncName", 36, -1, (tmp$33)0u, 128, 0 }, { (uint8*)"ermn", (uint8*)"fb_ErrorGetModName", 36, -1, (tmp$33)0u, 128, 0 }, { (uint8*)"fb_ErrorSetModName", (uint8*)0u, 36, -1, (tmp$33)0u, 0, 1, { { 1060, 1, 0 } } }, { (uint8*)"fb_ErrorSetFuncName", (uint8*)0u, 36, -1, (tmp$33)0u, 0, 1, { { 1060, 1, 0 } } }, { (uint8*)"fb_Assert", (uint8*)0u, 0, -1, (tmp$33)0u, 1, 4, { { 1060, 1, 0 }, { 520, 1, 0 }, { 1060, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_Assert", (uint8*)"fb_AssertW", 0, -1, (tmp$33)0u, 1, 4, { { 1060, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_AssertWarn", (uint8*)0u, 0, -1, (tmp$33)0u, 1, 4, { { 1060, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 }, { 1060, 1, 0 } } }, { (uint8*)"fb_AssertWarn", (uint8*)"fb_AssertWarnW", 0, -1, (tmp$33)0u, 1, 4, { { 1060, 1, 0 }, { 523, 1, 0 }, { 1060, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)0u } };

void RTLERRORMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLERRORMODEND( void )
{
	label$12:;
	label$13:;
}

struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	struct $8FBSYMBOL* NXTLABEL$1;
	struct $8FBSYMBOL* RESLABEL$1;
	struct $7ASTNODE* T$1;
	T$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$23;
	{
		struct $8FBSYMBOL* vr$1 = SYMBADDLABEL( (uint8*)0u, 4 );
		RESLABEL$1 = vr$1;
		struct $7ASTNODE* vr$2 = ASTNEWLABEL( RESLABEL$1, -1 );
		struct $7ASTNODE* vr$3 = ASTNEWLINK( T$1, vr$2, 0 );
		T$1 = vr$3;
	}
	goto label$22;
	label$23:;
	{
		RESLABEL$1 = (struct $8FBSYMBOL*)0u;
	}
	label$22:;
	if( *(int32*)((uint8*)&ENV$ + 156) == 0 ) goto label$25;
	{
		struct $8FBSYMBOL* vr$4 = SYMBADDLABEL( (uint8*)0u, 4 );
		NXTLABEL$1 = vr$4;
		struct $7ASTNODE* vr$5 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$6 = ASTNEWBOP( 45, EXPR$1, vr$5, NXTLABEL$1, 0 );
		struct $7ASTNODE* vr$7 = ASTNEWLINK( T$1, vr$6, 0 );
		T$1 = vr$7;
		struct $7ASTNODE* vr$8 = HERRORTHROW( RESLABEL$1, NXTLABEL$1 );
		struct $7ASTNODE* vr$9 = ASTNEWBRANCH( 104, (struct $8FBSYMBOL*)0u, vr$8 );
		struct $7ASTNODE* vr$10 = ASTNEWLINK( T$1, vr$9, 0 );
		T$1 = vr$10;
		struct $7ASTNODE* vr$11 = ASTNEWLABEL( NXTLABEL$1, -1 );
		struct $7ASTNODE* vr$12 = ASTNEWLINK( T$1, vr$11, 0 );
		T$1 = vr$12;
	}
	goto label$24;
	label$25:;
	{
		struct $7ASTNODE* vr$13 = ASTNEWLINK( T$1, EXPR$1, 0 );
		T$1 = vr$13;
	}
	label$24:;
	fb$result$1 = T$1;
	label$21:;
	return fb$result$1;
}

void RTLERRORTHROW( struct $7ASTNODE* ERREXPR$1, int32 LINENUM$1, uint8* MODULE$1 )
{
	label$26:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* PARAM$1;
	struct $8FBSYMBOL* NXTLABEL$1;
	struct $8FBSYMBOL* RESLABEL$1;
	struct $8FBSYMBOL* vr$0 = RTLPROCLOOKUP( (uint8*)"fb_ErrorThrowEx", 292 );
	struct $7ASTNODE* vr$1 = ASTNEWCALL( vr$0, (struct $7ASTNODE*)0u );
	PROC$1 = vr$1;
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0u, 4 );
	RESLABEL$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWLABEL( RESLABEL$1, -1 );
	ASTADD( vr$3 );
	struct $8FBSYMBOL* vr$4 = SYMBADDLABEL( (uint8*)0u, 4 );
	NXTLABEL$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, ERREXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$29;
	{
		goto label$27;
	}
	label$29:;
	label$28:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( (int64)LINENUM$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$31;
	{
		goto label$27;
	}
	label$31:;
	label$30:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTSTR( MODULE$1 );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$33;
	{
		goto label$27;
	}
	label$33:;
	label$32:;
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$35;
	{
		struct $7ASTNODE* vr$11 = ASTNEWVAR( RESLABEL$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$12 = ASTNEWADDROF( vr$11 );
		PARAM$1 = vr$12;
	}
	goto label$34;
	label$35:;
	{
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		PARAM$1 = vr$13;
	}
	label$34:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, PARAM$1, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$37;
	{
		goto label$27;
	}
	label$37:;
	label$36:;
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$39;
	{
		struct $7ASTNODE* vr$15 = ASTNEWVAR( NXTLABEL$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$16 = ASTNEWADDROF( vr$15 );
		PARAM$1 = vr$16;
	}
	goto label$38;
	label$39:;
	{
		struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		PARAM$1 = vr$17;
	}
	label$38:;
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, PARAM$1, -2147483648u, -1 );
	if( vr$18 != (struct $7ASTNODE*)0u ) goto label$41;
	{
		goto label$27;
	}
	label$41:;
	label$40:;
	struct $7ASTNODE* vr$19 = ASTNEWBRANCH( 104, (struct $8FBSYMBOL*)0u, PROC$1 );
	ASTADD( vr$19 );
	struct $7ASTNODE* vr$20 = ASTNEWLABEL( NXTLABEL$1, -1 );
	ASTADD( vr$20 );
	label$27:;
}

void RTLERRORSETHANDLER( struct $7ASTNODE* NEWHANDLER$1, int32 SAVECURRENT$1 )
{
	label$42:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$0 = RTLPROCLOOKUP( (uint8*)"fb_ErrorSetHandler", 293 );
	struct $7ASTNODE* vr$1 = ASTNEWCALL( vr$0, (struct $7ASTNODE*)0u );
	PROC$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWARG( PROC$1, NEWHANDLER$1, -2147483648u, -1 );
	if( vr$2 != (struct $7ASTNODE*)0u ) goto label$45;
	{
		goto label$43;
	}
	label$45:;
	label$44:;
	EXPR$1 = (struct $7ASTNODE*)0u;
	if( SAVECURRENT$1 == 0 ) goto label$47;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 880) ) goto label$49;
		{
			{
				struct $10FB_PROCERR* TMP$114$4;
				TMP$114$4 = (struct $10FB_PROCERR*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 104) + 112) + 28);
				if( *(struct $8FBSYMBOL**)TMP$114$4 != (struct $8FBSYMBOL*)0u ) goto label$51;
				{
					struct $8FBSYMBOL* vr$7 = SYMBADDTEMPVAR( 32, (struct $8FBSYMBOL*)0u );
					*(struct $8FBSYMBOL**)TMP$114$4 = vr$7;
					struct $7ASTNODE* vr$10 = ASTNEWVAR( *(struct $8FBSYMBOL**)TMP$114$4, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
					EXPR$1 = vr$10;
					struct $7ASTNODE* vr$11 = ASTNEWASSIGN( EXPR$1, PROC$1, 0 );
					ASTADD( vr$11 );
				}
				label$51:;
				label$50:;
			}
		}
		label$49:;
		label$48:;
	}
	label$47:;
	label$46:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$53;
	{
		ASTADD( PROC$1 );
	}
	label$53:;
	label$52:;
	label$43:;
}

struct $7ASTNODE* RTLERRORGETNUM( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ErrorGetNum", 294 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	fb$result$1 = vr$2;
	label$55:;
	return fb$result$1;
}

void RTLERRORSETNUM( struct $7ASTNODE* ERREXPR$1 )
{
	label$56:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* vr$0 = RTLPROCLOOKUP( (uint8*)"fb_ErrorSetNum", 295 );
	struct $7ASTNODE* vr$1 = ASTNEWCALL( vr$0, (struct $7ASTNODE*)0u );
	PROC$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTNEWARG( PROC$1, ERREXPR$1, -2147483648u, -1 );
	if( vr$2 != (struct $7ASTNODE*)0u ) goto label$59;
	{
		goto label$57;
	}
	label$59:;
	label$58:;
	ASTADD( PROC$1 );
	label$57:;
}

void RTLERRORRESUME( int32 ISNEXT$1 )
{
	label$60:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	if( ISNEXT$1 != 0 ) goto label$63;
	{
		struct $8FBSYMBOL* vr$0 = RTLPROCLOOKUP( (uint8*)"fb_ErrorResume", 296 );
		F$1 = vr$0;
	}
	goto label$62;
	label$63:;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ErrorResumeNext", 297 );
		F$1 = vr$1;
	}
	label$62:;
	struct $7ASTNODE* vr$2 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWBRANCH( 104, (struct $8FBSYMBOL*)0u, PROC$1 );
	ASTADD( vr$3 );
	label$61:;
}

struct $7ASTNODE* RTLERRORSETMODNAME( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* MODNAME$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$64:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ErrorSetModName", 298 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, MODNAME$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$67;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$65;
	}
	label$67:;
	label$66:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$69;
	{
		{
			struct $10FB_PROCERR* TMP$115$3;
			TMP$115$3 = (struct $10FB_PROCERR*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 112) + 28);
			struct $8FBSYMBOL* vr$7 = SYMBADDTEMPVAR( 36, (struct $8FBSYMBOL*)0u );
			*(struct $8FBSYMBOL**)((uint8*)TMP$115$3 + 4) = vr$7;
			struct $7ASTNODE* vr$10 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)TMP$115$3 + 4), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$10;
			struct $7ASTNODE* vr$11 = ASTNEWASSIGN( EXPR$1, PROC$1, 0 );
			fb$result$1 = vr$11;
		}
	}
	goto label$68;
	label$69:;
	{
		fb$result$1 = PROC$1;
	}
	label$68:;
	label$65:;
	return fb$result$1;
}

struct $7ASTNODE* RTLERRORSETFUNCNAME( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* FUNCNAME$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$70:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ErrorSetFuncName", 299 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FUNCNAME$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$73;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$71;
	}
	label$73:;
	label$72:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$75;
	{
		{
			struct $10FB_PROCERR* TMP$116$3;
			TMP$116$3 = (struct $10FB_PROCERR*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)SYM$1 + 112) + 28);
			struct $8FBSYMBOL* vr$7 = SYMBADDTEMPVAR( 36, (struct $8FBSYMBOL*)0u );
			*(struct $8FBSYMBOL**)((uint8*)TMP$116$3 + 8) = vr$7;
			struct $7ASTNODE* vr$10 = ASTNEWVAR( *(struct $8FBSYMBOL**)((uint8*)TMP$116$3 + 8), 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			EXPR$1 = vr$10;
			struct $7ASTNODE* vr$11 = ASTNEWASSIGN( EXPR$1, PROC$1, 0 );
			fb$result$1 = vr$11;
		}
	}
	goto label$74;
	label$75:;
	{
		fb$result$1 = PROC$1;
	}
	label$74:;
	label$71:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzerror( void )
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

static struct $7ASTNODE* HERRORTHROW( struct $8FBSYMBOL* RESLABEL$1, struct $8FBSYMBOL* NXTLABEL$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* PARAM$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_ErrorThrowAt", 291 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 839936) + 16564), 8, (struct $8FBSYMBOL*)0u );
	ASTNEWARG( PROC$1, vr$5, -2147483648u, -1 );
	struct $7ASTNODE* vr$7 = ASTNEWCONSTSTR( (uint8*)((uint8*)&ENV$ + 280) );
	ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	if( RESLABEL$1 == (struct $8FBSYMBOL*)0u ) goto label$17;
	{
		struct $7ASTNODE* vr$8 = ASTNEWVAR( RESLABEL$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$9 = ASTNEWADDROF( vr$8 );
		PARAM$1 = vr$9;
	}
	goto label$16;
	label$17:;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		PARAM$1 = vr$10;
	}
	label$16:;
	ASTNEWARG( PROC$1, PARAM$1, -2147483648u, -1 );
	if( *(int32*)((uint8*)&ENV$ + 160) == 0 ) goto label$19;
	{
		struct $7ASTNODE* vr$11 = ASTNEWVAR( NXTLABEL$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$12 = ASTNEWADDROF( vr$11 );
		PARAM$1 = vr$12;
	}
	goto label$18;
	label$19:;
	{
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( 0ll, 9, (struct $8FBSYMBOL*)0u );
		PARAM$1 = vr$13;
	}
	label$18:;
	ASTNEWARG( PROC$1, PARAM$1, -2147483648u, -1 );
	fb$result$1 = PROC$1;
	label$15:;
	return fb$result$1;
}
