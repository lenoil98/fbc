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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
typedef int32 $6AST_OP;
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $11FB_DATATYPE;
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
typedef FBSTRING* (*tmp$28)( void*, int32* );
typedef uint32* (*tmp$29)( void*, int32* );
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
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $5IRTAC;
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
struct $8REGCLASS;
typedef int32 (*tmp$83)( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
typedef int32 (*tmp$84)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$85)( struct $8REGCLASS*, int32 );
typedef int32 (*tmp$86)( struct $8REGCLASS*, int32 );
typedef void (*tmp$87)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef int32 (*tmp$88)( struct $8REGCLASS* );
typedef struct $6IRVREG* (*tmp$89)( struct $8REGCLASS*, int32, struct $6IRVREG** );
typedef void (*tmp$90)( struct $8REGCLASS* );
struct $7REG_REG;
struct $7REG_REG {
	int32 NUM;
	struct $7REG_REG* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $7REG_REG ) == 8 );
typedef int32 $12REG_SIZEMASK;
struct $10REG_REGCTX {
	struct $7REG_REG* FREETAIL;
	struct $7REG_REG* USEDTAIL;
	int32 FREETB;
	struct $7REG_REG REGTB[8];
	$12REG_SIZEMASK SIZETB[8];
	uint32 NEXTTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_REGCTX ) == 140 );
struct $10REG_STKCTX {
	int32 REGTB[8];
	int32 FREGS;
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_STKCTX ) == 36 );
struct $8REGCLASS {
	tmp$83 ENSURE;
	tmp$83 _ALLOCATE;
	tmp$84 ALLOCATEREG;
	tmp$85 FREE;
	tmp$86 ISFREE;
	tmp$87 SETOWNER;
	tmp$88 GETMAXREGS;
	tmp$88 GETFIRST;
	tmp$86 GETNEXT;
	tmp$89 GETVREG;
	tmp$86 GETREALREG;
	tmp$90 CLEAR;
	tmp$90 DUMP;
	int32 CLASS;
	int32 ISSTACK;
	int32 REGS;
	struct $6IRVREG* VREGTB[8];
	struct $6IRVREG* VAUXPARENT[8];
	struct $10REG_REGCTX REGCTX;
	struct $10REG_STKCTX STKCTX;
};
__FB_STATIC_ASSERT( sizeof( struct $8REGCLASS ) == 304 );
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$99)( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef int32 $12FB_DATACLASS;
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef uint32 (*tmp$76)( struct $6IRVREG* );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$98)( int32, int32, int32*, int32* );
void fb_MemSwap( void*, void*, int32 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
static void fb_ctor__irztac( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $8FBSYMBOL* SYMBADDANDALLOCATETEMPVAR( int32 );
int64 SYMBPROCCALCBYTESTOPOP( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCFLOATCONST( double, int32 );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
uint8* ZSTRDUP( uint8* );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint32* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void FLISTEND( struct $6TFLIST* );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
int32 EMITINIT( void );
void EMITEND( void );
struct $8REGCLASS* EMITGETREGCLASS( int32 );
void EMITCOMMENT( uint8* );
void EMITASM( uint8* );
typedef int32 $19EMIT_NODECLASS_ENUM;
struct $12EMIT_BOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BOPNODE ) == 12 );
struct $12EMIT_UOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_UOPNODE ) == 8 );
struct $12EMIT_RELNODE {
	int32 OP;
	struct $6IRVREG* RVREG;
	struct $8FBSYMBOL* LABEL;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_RELNODE ) == 20 );
struct $12EMIT_STKNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_STKNODE ) == 12 );
struct $12EMIT_BRCNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	struct $8FBSYMBOL* SYM;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BRCNODE ) == 16 );
struct $12EMIT_SOPNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_SOPNODE ) == 8 );
struct $12EMIT_LITNODE {
	int32 ISASM;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_LITNODE ) == 8 );
struct $12EMIT_JTBNODE {
	struct $8FBSYMBOL* TBSYM;
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_JTBNODE ) == 40 );
struct $12EMIT_MEMNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
	int32 BYTES;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_MEMNODE ) == 20 );
struct $12EMIT_DBGNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
	int32 LNUM;
	uint8* FILENAME;
	int32 POS;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_DBGNODE ) == 20 );
struct $9EMIT_NODE {
	$19EMIT_NODECLASS_ENUM CLASS;
	union {
		struct $12EMIT_BOPNODE BOP;
		struct $12EMIT_UOPNODE UOP;
		struct $12EMIT_RELNODE REL;
		struct $12EMIT_STKNODE STK;
		struct $12EMIT_BRCNODE BRC;
		struct $12EMIT_SOPNODE SOP;
		struct $12EMIT_LITNODE LIT;
		struct $12EMIT_JTBNODE JTB;
		struct $12EMIT_MEMNODE MEM;
		struct $12EMIT_DBGNODE DBG;
	};
	int32 REGFREETB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_NODE ) == 56 );
struct $9EMIT_NODE* EMITJMPTB( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
struct $9EMIT_NODE* EMITCALL( struct $8FBSYMBOL*, int32 );
struct $9EMIT_NODE* EMITCALLPTR( struct $6IRVREG*, int32 );
struct $9EMIT_NODE* EMITJUMP( struct $8FBSYMBOL* );
struct $9EMIT_NODE* EMITJUMPPTR( struct $6IRVREG* );
struct $9EMIT_NODE* EMITLABEL( struct $8FBSYMBOL* );
struct $9EMIT_NODE* EMITRET( int32 );
struct $9EMIT_NODE* EMITBRANCH( int32, struct $8FBSYMBOL* );
struct $9EMIT_NODE* EMITXCHGTOS( struct $6IRVREG* );
struct $9EMIT_NODE* EMITMOV( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITLOAD( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITADD( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITSUB( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITMUL( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITDIV( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITINTDIV( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITMOD( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITSHL( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITSHR( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITAND( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITOR( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITXOR( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITEQV( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITIMP( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITADDROF( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITDEREF( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITGT( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITLT( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITEQ( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITNE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITLE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITGE( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITATN2( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITPOW( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITNEG( struct $6IRVREG* );
struct $9EMIT_NODE* EMITNOT( struct $6IRVREG* );
struct $9EMIT_NODE* EMITABS( struct $6IRVREG* );
struct $9EMIT_NODE* EMITHADD( struct $6IRVREG* );
struct $9EMIT_NODE* EMITSGN( struct $6IRVREG* );
struct $9EMIT_NODE* EMITFIX( struct $6IRVREG* );
struct $9EMIT_NODE* EMITFRAC( struct $6IRVREG* );
struct $9EMIT_NODE* EMITCONVFD2FS( struct $6IRVREG* );
struct $9EMIT_NODE* EMITSWZREP( struct $6IRVREG* );
struct $9EMIT_NODE* EMITSIN( struct $6IRVREG* );
struct $9EMIT_NODE* EMITASIN( struct $6IRVREG* );
struct $9EMIT_NODE* EMITCOS( struct $6IRVREG* );
struct $9EMIT_NODE* EMITACOS( struct $6IRVREG* );
struct $9EMIT_NODE* EMITTAN( struct $6IRVREG* );
struct $9EMIT_NODE* EMITATAN( struct $6IRVREG* );
struct $9EMIT_NODE* EMITSQRT( struct $6IRVREG* );
struct $9EMIT_NODE* EMITRSQRT( struct $6IRVREG* );
struct $9EMIT_NODE* EMITRCP( struct $6IRVREG* );
struct $9EMIT_NODE* EMITLOG( struct $6IRVREG* );
struct $9EMIT_NODE* EMITEXP( struct $6IRVREG* );
struct $9EMIT_NODE* EMITFLOOR( struct $6IRVREG* );
struct $9EMIT_NODE* EMITSTACKALIGN( int32 );
struct $9EMIT_NODE* EMITPUSH( struct $6IRVREG* );
struct $9EMIT_NODE* EMITPOP( struct $6IRVREG* );
struct $9EMIT_NODE* EMITPUSHUDT( struct $6IRVREG*, int32 );
struct $9EMIT_NODE* EMITPOPST0( void );
struct $9EMIT_NODE* EMITMEMMOVE( struct $6IRVREG*, struct $6IRVREG*, int32 );
struct $9EMIT_NODE* EMITMEMSWAP( struct $6IRVREG*, struct $6IRVREG*, int32 );
struct $9EMIT_NODE* EMITMEMCLEAR( struct $6IRVREG*, struct $6IRVREG* );
struct $9EMIT_NODE* EMITSTKCLEAR( int32, int32 );
struct $9EMIT_NODE* EMITDBGLINEBEGIN( struct $8FBSYMBOL*, int32, uint8* );
struct $9EMIT_NODE* EMITDBGLINEEND( struct $8FBSYMBOL*, int32 );
struct $9EMIT_NODE* EMITDBGSCOPEBEGIN( struct $8FBSYMBOL* );
struct $9EMIT_NODE* EMITDBGSCOPEEND( struct $8FBSYMBOL* );
void EMITVARINIBEGIN( struct $8FBSYMBOL* );
void EMITVARINII( int32, int64 );
void EMITVARINIF( int32, double );
void EMITVARINIOFS( uint8*, int32 );
void EMITVARINISTR( uint8* );
void EMITVARINIWSTR( uint8* );
void EMITVARINIPAD( int32 );
void EMITFBCTINFBEGIN( void );
void EMITFBCTINFSTRING( uint8* );
void EMITFBCTINFEND( void );
static void HFLUSHUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHCOMP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void HFLUSHSTORE( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHLOAD( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHCONVERT( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHCALL( int32, struct $8FBSYMBOL*, int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHBRANCH( int32, struct $8FBSYMBOL* );
static void HFLUSHSTACK( int32, struct $6IRVREG*, int32 );
static void HFLUSHADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void HFLUSHMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int32, void* );
static void HFLUSHDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static void HFLUSHLIT( int32, uint8* );
static void HFREEIDX( struct $6IRVREG*, int32 );
static void HFREEREG( struct $6IRVREG*, int32 );
static void HFREEPRESERVEDREGS( void );
static void _FLUSH( void );
static void _INIT( void );
static void _END( void );
static int32 _EMITBEGIN( void );
static void _EMITEND( void );
static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static void HLOADIDX( struct $6IRVREG* );
static void HRELINK( struct $6IRVREG*, struct $9IRTACVREG* );
static void _EMIT( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL*, int32, uint8* );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static uint8* _PROCGETFRAMEREGNAME( void );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void _EMITRETURN( int32 );
static void _EMITPROCBEGIN( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITPROCEND( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* );
static void _EMITSCOPEEND( struct $8FBSYMBOL* );
static void _EMITBOP( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTACK( int32, struct $6IRVREG* );
static void _EMITPUSHARG( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32 );
static void _EMITADDR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLABELNF( struct $8FBSYMBOL* );
static void _EMITCALL( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
static void _EMITCALLPTR( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static void _EMITSTACKALIGN( int32 );
static void _EMITJUMPPTR( struct $6IRVREG* );
static void _EMITBRANCH( int32, struct $8FBSYMBOL* );
static void _EMITJMPTB( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITMACRO( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDECL( struct $8FBSYMBOL* );
static void _EMITDBG( int32, struct $8FBSYMBOL*, int32, uint8* );
static void _EMITCOMMENT( uint8* );
static void _EMITASMLINE( struct $9ASTASMTOK* );
static void _EMITVARINIBEGIN( struct $8FBSYMBOL* );
static void _EMITVARINIEND( struct $8FBSYMBOL* );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
static void _EMITVARINIOFS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _EMITVARINISTR( int64, uint8*, int64 );
static void _EMITVARINIWSTR( int64, uint32*, int64 );
static void _EMITVARINIPAD( int64 );
static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL*, int32 );
static void _EMITVARINISCOPEEND( void );
static void _EMITFBCTINFBEGIN( void );
static void _EMITFBCTINFSTRING( uint8* );
static void _EMITFBCTINFEND( void );
static struct $6IRVREG* HNEWVR( int32, struct $8FBSYMBOL*, int32 );
static struct $6IRVREG* _ALLOCVREG( int32, struct $8FBSYMBOL* );
static struct $6IRVREG* _ALLOCVRIMM( int32, struct $8FBSYMBOL*, int64 );
static struct $6IRVREG* _ALLOCVRIMMF( int32, struct $8FBSYMBOL*, double );
static struct $6IRVREG* _ALLOCVRVAR( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static struct $6IRVREG* _ALLOCVRIDX( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
static struct $6IRVREG* _ALLOCVRPTR( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
static struct $6IRVREG* _ALLOCVROFS( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void _SETVREGDATATYPE( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
static void HRENAME( struct $6IRVREG*, struct $6IRVREG* );
static void HREUSE( struct $5IRTAC* );
static int32 HPRESERVEREG( struct $6IRVREG* );
static void HPRESERVEREGS( struct $6IRVREG* );
static void HLOADPOINTER( struct $6IRVREG* );
static void HLOADRESULT( struct $8FBSYMBOL*, struct $6IRVREG* );
static void HSPILLREGS( void );
static uint32 _GETDISTANCE( struct $6IRVREG* );
static void _LOADVR( int32, struct $6IRVREG*, struct $6IRVREG* );
static void _STOREVR( struct $6IRVREG*, struct $6IRVREG* );
static void _XCHGTOS( int32 );
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
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
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
extern struct $7IR_VTBL IRTAC_VTBL$;
typedef int32 $6IR_OPT;
struct $5IRCTX {
	int32 INITED;
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 280 );
extern struct $5IRCTX IR$;
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
extern struct $10AST_OPINFO AST_OPTB$[121];
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
typedef void (*tmp$100)( int32, int32 );
typedef uint8* (*tmp$101)( int32 );
typedef uint8* (*tmp$102)( int32, int32 );
struct $9EMIT_VTBL {
	tmp$38 INIT;
	tmp$37 END;
	tmp$39 GETOPTIONVALUE;
	tmp$38 OPEN;
	tmp$37 CLOSE;
	tmp$40 ISREGPRESERVED;
	tmp$40 GETFREEPRESERVEDREG;
	tmp$98 GETRESULTREG;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCHEADER;
	tmp$99 PROCFOOTER;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$100 SETSECTION;
	tmp$101 GETTYPESTRING;
	tmp$102 GETSECTIONSTRING;
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_VTBL ) == 84 );
struct $7EMITCTX {
	int32 INITED;
	int32 POS;
	struct $8REGCLASS* REGTB[2];
	struct $6TFLIST NODETB;
	struct $6TFLIST VREGTB;
	struct $9EMIT_NODE* CURNODE;
	int32 REGUSEDTB[2];
	int32 LASTSECTION;
	int32 LASTPRIORITY;
	struct $9EMIT_VTBL VTBL;
	void** OPFNTB;
};
__FB_STATIC_ASSERT( sizeof( struct $7EMITCTX ) == 236 );
extern struct $7EMITCTX EMIT$;
struct $8FBARRAY1IPvE {
	void** DATA;
	void** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPvE ) == 36 );
static struct $8FBARRAY1IPvE tmp$103$;
struct $9IRTAC_CTX {
	struct $6TFLIST TACTB;
	int32 TACCNT;
	struct $5IRTAC* TACIDX;
	struct $6TFLIST VREGTB;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTAC_CTX ) == 120 );
static struct $9IRTAC_CTX CTX$;
static struct $8REGCLASS* REGTB$[2];
struct $7IR_VTBL IRTAC_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)0u, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$43)&_PROCGETFRAMEREGNAME, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABELNF, (tmp$45)&_EMITRETURN, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&_EMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$53)&_EMITSTACK, (tmp$51)&_EMITADDR, (tmp$54)&_EMITCALL, (tmp$55)&_EMITCALLPTR, (tmp$45)&_EMITSTACKALIGN, (tmp$52)&_EMITJUMPPTR, (tmp$56)&_EMITBRANCH, (tmp$57)&_EMITJMPTB, (tmp$58)&_EMITMEM, (tmp$59)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$60)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$61)&_EMITVARINII, (tmp$62)&_EMITVARINIF, (tmp$63)&_EMITVARINIOFS, (tmp$64)&_EMITVARINISTR, (tmp$65)&_EMITVARINIWSTR, (tmp$66)&_EMITVARINIPAD, (tmp$67)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$68)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$69)&_ALLOCVREG, (tmp$70)&_ALLOCVRIMM, (tmp$71)&_ALLOCVRIMMF, (tmp$72)&_ALLOCVRVAR, (tmp$73)&_ALLOCVRIDX, (tmp$74)&_ALLOCVRPTR, (tmp$72)&_ALLOCVROFS, (tmp$75)&_SETVREGDATATYPE, (tmp$76)&_GETDISTANCE, (tmp$51)&_LOADVR, (tmp$44)&_STOREVR, (tmp$45)&_XCHGTOS };

__attribute__(( constructor )) static void fb_ctor__irztac( void )
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

static void _INIT( void )
{
	label$10:;
	*(struct $5IRTAC**)((uint8*)&CTX$ + 60) = (struct $5IRTAC*)0u;
	*(int32*)((uint8*)&CTX$ + 56) = 0;
	FLISTINIT( (struct $6TFLIST*)&CTX$, 2048, 128 );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&CTX$ + 64), 6144, 72 );
	EMITINIT(  );
	{
		int32 I$2;
		I$2 = 0;
		label$15:;
		{
			struct $8REGCLASS* vr$2 = EMITGETREGCLASS( I$2 );
			*(struct $8REGCLASS**)((uint8*)REGTB$ + (I$2 << (2 & 31))) = vr$2;
		}
		label$13:;
		I$2 = I$2 + 1;
		label$12:;
		if( I$2 <= 1 ) goto label$15;
		label$14:;
	}
	label$11:;
}

static void _END( void )
{
	label$16:;
	EMITEND(  );
	FLISTEND( (struct $6TFLIST*)((uint8*)&CTX$ + 64) );
	FLISTEND( (struct $6TFLIST*)&CTX$ );
	*(struct $5IRTAC**)((uint8*)&CTX$ + 60) = (struct $5IRTAC*)0u;
	*(int32*)((uint8*)&CTX$ + 56) = 0;
	label$17:;
}

static int32 _EMITBEGIN( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	int32 vr$1 = (*(tmp$38*)((uint8*)&EMIT$ + 160))(  );
	fb$result$1 = vr$1;
	label$19:;
	return fb$result$1;
}

static void _EMITEND( void )
{
	label$20:;
	(*(tmp$37*)((uint8*)&EMIT$ + 164))(  );
	label$21:;
}

static int32 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	int32 vr$1 = (*(tmp$39*)((uint8*)&EMIT$ + 156))( OPT$1 );
	fb$result$1 = vr$1;
	label$23:;
	return fb$result$1;
}

static void HLOADIDX( struct $6IRVREG* VREG$1 )
{
	label$24:;
	struct $6IRVREG* VI$1;
	if( VREG$1 != (struct $6IRVREG*)0u ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	{
		$15IRVREGTYPE_ENUM TMP$105$2;
		TMP$105$2 = *($15IRVREGTYPE_ENUM*)VREG$1;
		if( TMP$105$2 == 2 ) goto label$30;
		label$31:;
		if( TMP$105$2 != 3 ) goto label$29;
		label$30:;
		{
		}
		goto label$28;
		label$29:;
		{
			goto label$25;
		}
		label$32:;
		label$28:;
	}
	VI$1 = *(struct $6IRVREG**)((uint8*)VREG$1 + 52);
	if( VI$1 != (struct $6IRVREG*)0u ) goto label$34;
	{
		goto label$25;
	}
	label$34:;
	label$33:;
	if( *(int32*)VI$1 != 0 ) goto label$36;
	{
		goto label$25;
	}
	label$36:;
	label$35:;
	(*(tmp$83*)*(struct $8REGCLASS**)REGTB$)( *(struct $8REGCLASS**)REGTB$, VI$1, (struct $6IRVREG*)0u, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
	label$25:;
}

static void HRELINK( struct $6IRVREG* VREG$1, struct $9IRTACVREG* TVREG$1 )
{
	label$37:;
	if( *(struct $9IRTACVREG**)((uint8*)VREG$1 + 60) != (struct $9IRTACVREG*)0u ) goto label$40;
	{
		*(struct $9IRTACVREG**)((uint8*)VREG$1 + 60) = TVREG$1;
	}
	goto label$39;
	label$40:;
	{
		*(struct $9IRTACVREG**)((uint8*)*(struct $9IRTACVREG**)((uint8*)VREG$1 + 64) + 8) = TVREG$1;
	}
	label$39:;
	*(struct $9IRTACVREG**)((uint8*)VREG$1 + 64) = TVREG$1;
	label$38:;
}

static void _EMIT( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* EX1$1, int32 EX2$1, uint8* EX3$1 )
{
	label$41:;
	static struct $5IRTAC* T$1;
	void* vr$1 = FLISTNEWITEM( (struct $6TFLIST*)&CTX$ );
	T$1 = (struct $5IRTAC*)vr$1;
	*(int32*)T$1 = *(int32*)((uint8*)&CTX$ + 56);
	*($6AST_OP*)((uint8*)T$1 + 4) = OP$1;
	*(struct $6IRVREG**)((uint8*)T$1 + 44) = V1$1;
	*(struct $6IRVREG**)((uint8*)T$1 + 48) = (struct $6IRVREG*)0u;
	*(struct $9IRTACVREG**)((uint8*)T$1 + 52) = (struct $9IRTACVREG*)0u;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$44;
	{
		HRELINK( V1$1, (struct $9IRTACVREG*)((uint8*)T$1 + 44) );
		*(struct $5IRTAC**)((uint8*)V1$1 + 68) = T$1;
		if( *(struct $6IRVREG**)((uint8*)V1$1 + 52) == (struct $6IRVREG*)0u ) goto label$46;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 56) = *(struct $6IRVREG**)((uint8*)V1$1 + 52);
			*(struct $6IRVREG**)((uint8*)T$1 + 60) = V1$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 64) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)V1$1 + 52), (struct $9IRTACVREG*)((uint8*)T$1 + 56) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 52) + 68) = T$1;
		}
		label$46:;
		label$45:;
		if( *(struct $6IRVREG**)((uint8*)V1$1 + 56) == (struct $6IRVREG*)0u ) goto label$48;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 68) = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			*(struct $6IRVREG**)((uint8*)T$1 + 72) = V1$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 76) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)V1$1 + 56), (struct $9IRTACVREG*)((uint8*)T$1 + 68) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)V1$1 + 56) + 68) = T$1;
		}
		label$48:;
		label$47:;
	}
	label$44:;
	label$43:;
	*(struct $6IRVREG**)((uint8*)T$1 + 80) = V2$1;
	*(struct $6IRVREG**)((uint8*)T$1 + 84) = (struct $6IRVREG*)0u;
	*(struct $9IRTACVREG**)((uint8*)T$1 + 88) = (struct $9IRTACVREG*)0u;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$50;
	{
		HRELINK( V2$1, (struct $9IRTACVREG*)((uint8*)T$1 + 80) );
		*(struct $5IRTAC**)((uint8*)V2$1 + 68) = T$1;
		if( *(struct $6IRVREG**)((uint8*)V2$1 + 52) == (struct $6IRVREG*)0u ) goto label$52;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 92) = *(struct $6IRVREG**)((uint8*)V2$1 + 52);
			*(struct $6IRVREG**)((uint8*)T$1 + 96) = V2$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 100) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)V2$1 + 52), (struct $9IRTACVREG*)((uint8*)T$1 + 92) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 52) + 68) = T$1;
		}
		label$52:;
		label$51:;
		if( *(struct $6IRVREG**)((uint8*)V2$1 + 56) == (struct $6IRVREG*)0u ) goto label$54;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 104) = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
			*(struct $6IRVREG**)((uint8*)T$1 + 108) = V2$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 112) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)V2$1 + 56), (struct $9IRTACVREG*)((uint8*)T$1 + 104) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)V2$1 + 56) + 68) = T$1;
		}
		label$54:;
		label$53:;
	}
	label$50:;
	label$49:;
	*(struct $6IRVREG**)((uint8*)T$1 + 8) = VR$1;
	*(struct $6IRVREG**)((uint8*)T$1 + 12) = (struct $6IRVREG*)0u;
	*(struct $9IRTACVREG**)((uint8*)T$1 + 16) = (struct $9IRTACVREG*)0u;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$56;
	{
		HRELINK( VR$1, (struct $9IRTACVREG*)((uint8*)T$1 + 8) );
		*(struct $5IRTAC**)((uint8*)VR$1 + 68) = T$1;
		if( *(struct $6IRVREG**)((uint8*)VR$1 + 52) == (struct $6IRVREG*)0u ) goto label$58;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 20) = *(struct $6IRVREG**)((uint8*)VR$1 + 52);
			*(struct $6IRVREG**)((uint8*)T$1 + 24) = VR$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 28) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)VR$1 + 52), (struct $9IRTACVREG*)((uint8*)T$1 + 20) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 52) + 68) = T$1;
		}
		label$58:;
		label$57:;
		if( *(struct $6IRVREG**)((uint8*)VR$1 + 56) == (struct $6IRVREG*)0u ) goto label$60;
		{
			*(struct $6IRVREG**)((uint8*)T$1 + 32) = *(struct $6IRVREG**)((uint8*)VR$1 + 56);
			*(struct $6IRVREG**)((uint8*)T$1 + 36) = VR$1;
			*(struct $9IRTACVREG**)((uint8*)T$1 + 40) = (struct $9IRTACVREG*)0u;
			HRELINK( *(struct $6IRVREG**)((uint8*)VR$1 + 56), (struct $9IRTACVREG*)((uint8*)T$1 + 32) );
			*(struct $5IRTAC**)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 56) + 68) = T$1;
		}
		label$60:;
		label$59:;
	}
	label$56:;
	label$55:;
	*(struct $8FBSYMBOL**)((uint8*)T$1 + 116) = EX1$1;
	*(int32*)((uint8*)T$1 + 120) = EX2$1;
	*(uint8**)((uint8*)T$1 + 124) = EX3$1;
	*(int32*)((uint8*)&CTX$ + 56) = *(int32*)((uint8*)&CTX$ + 56) + 1;
	label$42:;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$61:;
	(*(tmp$41*)((uint8*)&EMIT$ + 184))( PROC$1 );
	label$62:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$63:;
	(*(tmp$41*)((uint8*)&EMIT$ + 188))( PROC$1 );
	label$64:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$65:;
	(*(tmp$42*)((uint8*)&EMIT$ + 200))( PROC$1, SYM$1 );
	label$66:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$67:;
	(*(tmp$42*)((uint8*)&EMIT$ + 204))( PROC$1, SYM$1 );
	label$68:;
}

static uint8* _PROCGETFRAMEREGNAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$69:;
	uint8* vr$1 = (*(tmp$43*)((uint8*)&EMIT$ + 180))(  );
	fb$result$1 = vr$1;
	label$70:;
	return fb$result$1;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$71:;
	(*(tmp$41*)((uint8*)&EMIT$ + 212))( S$1 );
	label$72:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$73:;
	(*(tmp$41*)((uint8*)&EMIT$ + 216))( S$1 );
	label$74:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* HEAD_SYM$1 )
{
	label$75:;
	(*(tmp$41*)((uint8*)&EMIT$ + 208))( HEAD_SYM$1 );
	label$76:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$77:;
	_FLUSH(  );
	EMITLABEL( LABEL$1 );
	label$78:;
}

static void _EMITRETURN( int32 BYTESTOPOP$1 )
{
	label$79:;
	_FLUSH(  );
	EMITRET( BYTESTOPOP$1 );
	label$80:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	label$81:;
	static int32 CLASS_$1;
	_FLUSH(  );
	{
		CLASS_$1 = 0;
		label$86:;
		{
			(*(tmp$90*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) + 44))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) );
		}
		label$84:;
		CLASS_$1 = CLASS_$1 + 1;
		label$83:;
		if( CLASS_$1 <= 1 ) goto label$86;
		label$85:;
	}
	(*(tmp$42*)((uint8*)&EMIT$ + 192))( PROC$1, INITLABEL$1 );
	label$82:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	label$87:;
	_FLUSH(  );
	int64 vr$0 = SYMBPROCCALCBYTESTOPOP( PROC$1 );
	(*(tmp$99*)((uint8*)&EMIT$ + 196))( PROC$1, (int32)vr$0, INITLABEL$1, EXITLABEL$1 );
	label$88:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$89:;
	_FLUSH(  );
	label$90:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$91:;
	_FLUSH(  );
	label$92:;
}

static void _EMITBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$93:;
	_EMIT( OP$1, V1$1, V2$1, VR$1, LABEL$1, 0, (uint8*)0u );
	label$94:;
}

static void _EMITUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$95:;
	_EMIT( OP$1, V1$1, (struct $6IRVREG*)0u, VR$1, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$96:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$97:;
	{
		int32 TMP$106$2;
		$12FB_DATACLASS TMP$107$2;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$99;
		TMP$106$2 = 24;
		goto label$842;
		label$99:;
		TMP$106$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$842:;
		TMP$107$2 = *($12FB_DATACLASS*)((uint8*)SYMB_DTYPETB$ + (TMP$106$2 * 28));
		if( TMP$107$2 != 0 ) goto label$101;
		label$102:;
		{
			if( (*(int32*)((uint8*)V1$1 + 4) & 511) != 1 ) goto label$104;
			{
				_EMIT( 84, V1$1, V2$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
			}
			goto label$103;
			label$104:;
			{
				_EMIT( 82, V1$1, V2$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
			}
			label$103:;
		}
		goto label$100;
		label$101:;
		if( TMP$107$2 != 1 ) goto label$105;
		label$106:;
		{
			_EMIT( 83, V1$1, V2$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
		}
		label$105:;
		label$100:;
	}
	label$98:;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$107:;
	_EMIT( 0, V1$1, V2$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$108:;
}

static void _EMITSPILLREGS( void )
{
	label$109:;
	_EMIT( 87, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$110:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$111:;
	_EMIT( 85, V1$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$112:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$113:;
	_EMIT( 86, V1$1, (struct $6IRVREG*)0u, VR$1, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$114:;
}

static void _EMITSTACK( int32 OP$1, struct $6IRVREG* V1$1 )
{
	label$115:;
	_EMIT( OP$1, V1$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$116:;
}

static void _EMITPUSHARG( struct $8FBSYMBOL* PARAM$1, struct $6IRVREG* VR$1, int64 UDTLEN$1, int32 LEVEL$1 )
{
	label$117:;
	if( UDTLEN$1 != 0ll ) goto label$120;
	{
		_EMITSTACK( 88, VR$1 );
	}
	goto label$119;
	label$120:;
	{
		_EMIT( 90, VR$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, (int32)UDTLEN$1, (uint8*)0u );
	}
	label$119:;
	label$118:;
}

static void _EMITADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$121:;
	_EMIT( OP$1, V1$1, (struct $6IRVREG*)0u, VR$1, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$122:;
}

static void _EMITLABELNF( struct $8FBSYMBOL* L$1 )
{
	label$123:;
	_EMIT( 100, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, L$1, 0, (uint8*)0u );
	label$124:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* VR$1, int32 LEVEL$1 )
{
	label$125:;
	_EMIT( 102, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, VR$1, PROC$1, BYTESTOPOP$1, (uint8*)0u );
	label$126:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int32 BYTESTOPOP$1, int32 LEVEL$1 )
{
	label$127:;
	_EMIT( 103, V1$1, (struct $6IRVREG*)0u, VR$1, PROC$1, BYTESTOPOP$1, (uint8*)0u );
	label$128:;
}

static void _EMITSTACKALIGN( int32 BYTES$1 )
{
	label$129:;
	_EMIT( 91, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, BYTES$1, (uint8*)0u );
	label$130:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	label$131:;
	_EMIT( 104, V1$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, 0, (uint8*)0u );
	label$132:;
}

static void _EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$133:;
	_EMIT( OP$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, LABEL$1, 0, (uint8*)0u );
	label$134:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	label$135:;
	_FLUSH(  );
	EMITJMPTB( TBSYM$1, VALUES$1, LABELS$1, LABELCOUNT$1, DEFLABEL$1, BIAS$1, SPAN$1 );
	label$136:;
}

static void _EMITMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$137:;
	_EMIT( OP$1, V1$1, V2$1, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)0u, (int32)BYTES$1, (uint8*)0u );
	label$138:;
}

static void _EMITMACRO( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$139:;
	label$140:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$141:;
	label$142:;
}

static void _EMITDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 EX$1, uint8* FILENAME$1 )
{
	label$143:;
	_EMIT( OP$1, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, PROC$1, EX$1, FILENAME$1 );
	label$144:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	label$145:;
	uint8* vr$0 = ZSTRDUP( TEXT$1 );
	_EMIT( 117, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)vr$0, 0, (uint8*)0u );
	label$146:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$147:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$149:;
	if( N$1 == (struct $9ASTASMTOK*)0u ) goto label$150;
	{
		{
			$14AST_ASMTOKTYPE TMP$108$3;
			TMP$108$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$108$3 != 0 ) goto label$152;
			label$153:;
			{
				FBSTRING TMP$109$4;
				__builtin_memset( &TMP$109$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$109$4, (void*)&LN$1, -1, *(void**)((uint8*)N$1 + 4), 0 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$6, -1, 0 );
			}
			goto label$151;
			label$152:;
			if( TMP$108$3 != 1 ) goto label$154;
			label$155:;
			{
				FBSTRING TMP$110$4;
				uint8* vr$9 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 4) );
				__builtin_memset( &TMP$110$4, 0, 12 );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$110$4, (void*)&LN$1, -1, (void*)vr$9, 0 );
				fb_StrAssign( (void*)&LN$1, -1, (void*)vr$13, -1, 0 );
				int64 OFS$4;
				OFS$4 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 4) + 48);
				if( OFS$4 == 0ll ) goto label$157;
				{
					if( OFS$4 <= 0ll ) goto label$159;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"+", 2, 0 );
					}
					label$159:;
					label$158:;
					FBSTRING* vr$18 = fb_LongintToStr( OFS$4 );
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$18, -1, 0 );
				}
				label$157:;
				label$156:;
			}
			label$154:;
			label$151:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 8);
	}
	goto label$149;
	label$150:;
	uint8* vr$21 = ZSTRDUP( (uint8*)*(uint8**)&LN$1 );
	_EMIT( 118, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, (struct $8FBSYMBOL*)vr$21, 0, (uint8*)0u );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$148:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$160:;
	EMITVARINIBEGIN( SYM$1 );
	label$161:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$162:;
	label$163:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	label$164:;
	int32 REALTYPE$1;
	__builtin_memset( &REALTYPE$1, 0, 4 );
	struct $8FBSYMBOL* REALSUBTYPE$1;
	__builtin_memset( &REALSUBTYPE$1, 0, 4 );
	SYMBGETREALTYPE( SYM$1, &REALTYPE$1, &REALSUBTYPE$1 );
	EMITVARINII( REALTYPE$1, VALUE$1 );
	label$165:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	label$166:;
	int32 REALTYPE$1;
	__builtin_memset( &REALTYPE$1, 0, 4 );
	struct $8FBSYMBOL* REALSUBTYPE$1;
	__builtin_memset( &REALSUBTYPE$1, 0, 4 );
	SYMBGETREALTYPE( SYM$1, &REALTYPE$1, &REALSUBTYPE$1 );
	EMITVARINIF( REALTYPE$1, VALUE$1 );
	label$167:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$168:;
	uint8* vr$1 = SYMBGETMANGLEDNAME( RHS$1 );
	EMITVARINIOFS( vr$1, (int32)OFS$1 );
	label$169:;
}

static void _EMITVARINISTR( int64 TOTLGT$1, uint8* LITSTR$1, int64 LITLGT$1 )
{
	label$170:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	if( TOTLGT$1 != 0ll ) goto label$173;
	{
		EMITVARINII( 2, 0ll );
		goto label$171;
	}
	label$173:;
	label$172:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$175;
	{
		FBSTRING TMP$112$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		__builtin_memset( &TMP$112$2, 0, 12 );
		FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)LITSTR$1 );
		FBSTRING* vr$4 = fb_LEFT( (FBSTRING*)vr$3, (int32)TOTLGT$1 );
		fb_StrAssign( (void*)&TMP$112$2, -1, (void*)vr$4, -1, 0 );
		uint8* vr$6 = HESCAPE( (uint8*)*(uint8**)&TMP$112$2 );
		S$1 = vr$6;
		fb_StrDelete( (FBSTRING*)&TMP$112$2 );
	}
	goto label$174;
	label$175:;
	{
		uint8* vr$8 = HESCAPE( (uint8*)LITSTR$1 );
		S$1 = vr$8;
	}
	label$174:;
	EMITVARINISTR( S$1 );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$177;
	{
		EMITVARINIPAD( (int32)(TOTLGT$1 - LITLGT$1) );
	}
	label$177:;
	label$176:;
	label$171:;
}

static void _EMITVARINIWSTR( int64 TOTLGT$1, uint32* LITSTR$1, int64 LITLGT$1 )
{
	label$178:;
	uint8* S$1;
	__builtin_memset( &S$1, 0, 4 );
	int32 WCLEN$1;
	__builtin_memset( &WCLEN$1, 0, 4 );
	if( TOTLGT$1 != 0ll ) goto label$181;
	{
		EMITVARINII( *(int32*)((uint8*)&ENV$ + 248), 0ll );
		goto label$179;
	}
	label$181:;
	label$180:;
	if( LITLGT$1 <= TOTLGT$1 ) goto label$183;
	{
		uint32* TMP$113$2;
		ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
		uint32* vr$3 = fb_WstrLeft( (uint32*)LITSTR$1, (int32)TOTLGT$1 );
		TMP$113$2 = vr$3;
		uint8* vr$4 = HESCAPEW( TMP$113$2 );
		S$1 = vr$4;
		fb_WstrDelete( (uint32*)TMP$113$2 );
	}
	goto label$182;
	label$183:;
	{
		uint8* vr$5 = HESCAPEW( LITSTR$1 );
		S$1 = vr$5;
	}
	label$182:;
	WCLEN$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 200);
	EMITVARINIWSTR( S$1 );
	if( LITLGT$1 >= TOTLGT$1 ) goto label$185;
	{
		EMITVARINIPAD( (int32)((TOTLGT$1 - LITLGT$1) * (int64)WCLEN$1) );
	}
	label$185:;
	label$184:;
	label$179:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	label$186:;
	EMITVARINIPAD( (int32)BYTES$1 );
	label$187:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int32 IS_ARRAY$1 )
{
	label$188:;
	label$189:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$190:;
	label$191:;
}

static void _EMITFBCTINFBEGIN( void )
{
	label$192:;
	EMITFBCTINFBEGIN(  );
	label$193:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	label$194:;
	EMITFBCTINFSTRING( S$1 );
	label$195:;
}

static void _EMITFBCTINFEND( void )
{
	label$196:;
	EMITFBCTINFEND(  );
	label$197:;
}

static struct $6IRVREG* HNEWVR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int32 VTYPE$1 )
{
	int32 TMP$114$1;
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$198:;
	struct $6IRVREG* V$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&CTX$ + 64) );
	V$1 = (struct $6IRVREG*)vr$2;
	*($15IRVREGTYPE_ENUM*)V$1 = VTYPE$1;
	if( (DTYPE$1 & 480) == 0 ) goto label$200;
	TMP$114$1 = 24;
	goto label$843;
	label$200:;
	TMP$114$1 = DTYPE$1 & 31;
	label$843:;
	*($11FB_DATATYPE*)((uint8*)V$1 + 4) = TMP$114$1;
	*(struct $8FBSYMBOL**)((uint8*)V$1 + 8) = SUBTYPE$1;
	*(int32*)((uint8*)V$1 + 12) = -1;
	if( *(int32*)((uint8*)&ENV$ + 116) != 0 ) goto label$202;
	{
		*($12IR_REGFAMILY*)((uint8*)V$1 + 16) = 0;
	}
	goto label$201;
	label$202:;
	{
		*($12IR_REGFAMILY*)((uint8*)V$1 + 16) = 1;
	}
	label$201:;
	*(int32*)((uint8*)V$1 + 20) = 0;
	*(struct $8FBSYMBOL**)((uint8*)V$1 + 32) = (struct $8FBSYMBOL*)0u;
	*(int64*)((uint8*)V$1 + 40) = 0ll;
	*(int32*)((uint8*)V$1 + 48) = 0;
	*(struct $6IRVREG**)((uint8*)V$1 + 52) = (struct $6IRVREG*)0u;
	*(struct $6IRVREG**)((uint8*)V$1 + 56) = (struct $6IRVREG*)0u;
	*(struct $9IRTACVREG**)((uint8*)V$1 + 60) = (struct $9IRTACVREG*)0u;
	*(struct $9IRTACVREG**)((uint8*)V$1 + 64) = (struct $9IRTACVREG*)0u;
	*(struct $5IRTAC**)((uint8*)V$1 + 68) = (struct $5IRTAC*)0u;
	fb$result$1 = V$1;
	label$199:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVREG( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$203:;
	struct $6IRVREG* VR$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 4 );
	VR$1 = vr$2;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$206;
	{
		struct $6IRVREG* vr$6 = HNEWVR( 8, (struct $8FBSYMBOL*)0u, 4 );
		*(struct $6IRVREG**)((uint8*)VR$1 + 56) = vr$6;
	}
	label$206:;
	label$205:;
	fb$result$1 = VR$1;
	label$204:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVRIMM( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 VALUE$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$207:;
	struct $6IRVREG* VR$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 0 );
	VR$1 = vr$2;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$210;
	{
		*(int64*)((uint8*)VR$1 + 24) = VALUE$1 & 4294967295ll;
		struct $6IRVREG* vr$8 = HNEWVR( 8, (struct $8FBSYMBOL*)0u, 0 );
		*(struct $6IRVREG**)((uint8*)VR$1 + 56) = vr$8;
		*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 56) + 24) = (int64)((uint64)VALUE$1 >> (32 & 63));
	}
	goto label$209;
	label$210:;
	{
		*(int64*)((uint8*)VR$1 + 24) = VALUE$1;
	}
	label$209:;
	fb$result$1 = VR$1;
	label$208:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVRIMMF( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, double VALUE$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$211:;
	struct $6IRVREG* VR$1;
	struct $8FBSYMBOL* S$1;
	DTYPE$1 = DTYPE$1 & 511;
	if( (*(int32*)((uint8*)&IR$ + 276) & 2) == 0 ) goto label$214;
	{
		struct $6IRVREG* vr$3 = HNEWVR( DTYPE$1, SUBTYPE$1, 0 );
		VR$1 = vr$3;
		*(double*)((uint8*)VR$1 + 24) = VALUE$1;
	}
	goto label$213;
	label$214:;
	{
		struct $8FBSYMBOL* vr$5 = SYMBALLOCFLOATCONST( VALUE$1, DTYPE$1 );
		S$1 = vr$5;
		struct $6IRVREG* vr$7 = (*(tmp$72*)((uint8*)&IR$ + 240))( DTYPE$1, SUBTYPE$1, S$1, *(int64*)((uint8*)S$1 + 48) );
		VR$1 = vr$7;
	}
	label$213:;
	fb$result$1 = VR$1;
	label$212:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVRVAR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* SYMBOL$1, int64 OFS$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$215:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* VA$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 1 );
	VR$1 = vr$2;
	*(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) = SYMBOL$1;
	*(int64*)((uint8*)VR$1 + 40) = OFS$1;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$218;
	{
		struct $6IRVREG* vr$8 = HNEWVR( 8, (struct $8FBSYMBOL*)0u, 1 );
		VA$1 = vr$8;
		*(struct $6IRVREG**)((uint8*)VR$1 + 56) = VA$1;
		*(int64*)((uint8*)VA$1 + 40) = OFS$1 + 4ll;
	}
	label$218:;
	label$217:;
	fb$result$1 = VR$1;
	label$216:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVRIDX( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* SYMBOL$1, int64 OFS$1, int32 MULT$1, struct $6IRVREG* VIDX$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$219:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* VA$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 2 );
	VR$1 = vr$2;
	*(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) = SYMBOL$1;
	*(int64*)((uint8*)VR$1 + 40) = OFS$1;
	*(int32*)((uint8*)VR$1 + 48) = MULT$1;
	*(struct $6IRVREG**)((uint8*)VR$1 + 52) = VIDX$1;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$222;
	{
		struct $6IRVREG* vr$10 = HNEWVR( 8, (struct $8FBSYMBOL*)0u, 2 );
		VA$1 = vr$10;
		*(struct $6IRVREG**)((uint8*)VR$1 + 56) = VA$1;
		*(int64*)((uint8*)VA$1 + 40) = OFS$1 + 4ll;
	}
	label$222:;
	label$221:;
	fb$result$1 = VR$1;
	label$220:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVRPTR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 OFS$1, struct $6IRVREG* VIDX$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$223:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* VA$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 3 );
	VR$1 = vr$2;
	*(int64*)((uint8*)VR$1 + 40) = OFS$1;
	*(int32*)((uint8*)VR$1 + 48) = 1;
	*(struct $6IRVREG**)((uint8*)VR$1 + 52) = VIDX$1;
	if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$226;
	{
		struct $6IRVREG* vr$9 = HNEWVR( 8, (struct $8FBSYMBOL*)0u, 3 );
		VA$1 = vr$9;
		*(struct $6IRVREG**)((uint8*)VR$1 + 56) = VA$1;
		*(int64*)((uint8*)VA$1 + 40) = OFS$1 + 4ll;
	}
	label$226:;
	label$225:;
	fb$result$1 = VR$1;
	label$224:;
	return fb$result$1;
}

static struct $6IRVREG* _ALLOCVROFS( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* SYMBOL$1, int64 OFS$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$227:;
	struct $6IRVREG* VR$1;
	DTYPE$1 = DTYPE$1 & 511;
	struct $6IRVREG* vr$2 = HNEWVR( DTYPE$1, SUBTYPE$1, 5 );
	VR$1 = vr$2;
	*(struct $8FBSYMBOL**)((uint8*)VR$1 + 32) = SYMBOL$1;
	*(int64*)((uint8*)VR$1 + 40) = OFS$1;
	fb$result$1 = VR$1;
	label$228:;
	return fb$result$1;
}

static void _SETVREGDATATYPE( struct $6IRVREG* VREG$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$229:;
	DTYPE$1 = DTYPE$1 & 511;
	if( VREG$1 == (struct $6IRVREG*)0u ) goto label$232;
	{
		int32 TMP$115$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$233;
		TMP$115$2 = 24;
		goto label$844;
		label$233:;
		TMP$115$2 = DTYPE$1 & 31;
		label$844:;
		*($11FB_DATATYPE*)((uint8*)VREG$1 + 4) = TMP$115$2;
		*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 8) = SUBTYPE$1;
	}
	label$232:;
	label$231:;
	label$230:;
}

static void HRENAME( struct $6IRVREG* VOLD$1, struct $6IRVREG* VNEW$1 )
{
	label$234:;
	struct $9IRTACVREG* T$1;
	struct $6IRVREG* V$1;
	T$1 = *(struct $9IRTACVREG**)((uint8*)VOLD$1 + 60);
	label$236:;
	{
		if( *(struct $6IRVREG**)((uint8*)T$1 + 4) == (struct $6IRVREG*)0u ) goto label$240;
		{
			if( *(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)T$1 + 4) + 52) != VOLD$1 ) goto label$242;
			{
				*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)T$1 + 4) + 52) = VNEW$1;
			}
			goto label$241;
			label$242:;
			{
				*(struct $6IRVREG**)((uint8*)*(struct $6IRVREG**)((uint8*)T$1 + 4) + 56) = VNEW$1;
			}
			label$241:;
		}
		label$240:;
		label$239:;
		*(struct $6IRVREG**)T$1 = VNEW$1;
		T$1 = *(struct $9IRTACVREG**)((uint8*)T$1 + 8);
	}
	label$238:;
	if( T$1 != (struct $9IRTACVREG*)0u ) goto label$236;
	label$237:;
	*(struct $9IRTACVREG**)((uint8*)VNEW$1 + 60) = *(struct $9IRTACVREG**)((uint8*)VOLD$1 + 60);
	*(struct $9IRTACVREG**)((uint8*)VNEW$1 + 64) = *(struct $9IRTACVREG**)((uint8*)VOLD$1 + 64);
	*(struct $5IRTAC**)((uint8*)VNEW$1 + 68) = *(struct $5IRTAC**)((uint8*)VOLD$1 + 68);
	label$235:;
}

static void HREUSE( struct $5IRTAC* T$1 )
{
	label$243:;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* V2$1;
	struct $6IRVREG* VR$1;
	int32 V1_DTYPE$1;
	int32 V1_DCLASS$1;
	int32 V1_TYP$1;
	int32 V2_DTYPE$1;
	int32 V2_DCLASS$1;
	int32 V2_TYP$1;
	int32 VR_DTYPE$1;
	int32 VR_DCLASS$1;
	int32 VR_TYP$1;
	int32 OP$1;
	OP$1 = *(int32*)((uint8*)T$1 + 4);
	V1$1 = *(struct $6IRVREG**)((uint8*)T$1 + 44);
	V2$1 = *(struct $6IRVREG**)((uint8*)T$1 + 80);
	VR$1 = *(struct $6IRVREG**)((uint8*)T$1 + 8);
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$246;
	{
		int32 TMP$116$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$247;
		TMP$116$2 = 24;
		goto label$845;
		label$247:;
		TMP$116$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$845:;
		V1_DTYPE$1 = TMP$116$2;
		if( V1_DTYPE$1 != 24 ) goto label$249;
		{
			V1_DTYPE$1 = 12;
		}
		label$249:;
		label$248:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$245;
	label$246:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$245:;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$251;
	{
		int32 TMP$117$2;
		V2_TYP$1 = *(int32*)V2$1;
		if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$252;
		TMP$117$2 = 24;
		goto label$846;
		label$252:;
		TMP$117$2 = *(int32*)((uint8*)V2$1 + 4) & 31;
		label$846:;
		V2_DTYPE$1 = TMP$117$2;
		if( V2_DTYPE$1 != 24 ) goto label$254;
		{
			V2_DTYPE$1 = 12;
		}
		label$254:;
		label$253:;
		V2_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V2_DTYPE$1 * 28));
	}
	goto label$250;
	label$251:;
	{
		V2_TYP$1 = -1;
		V2_DTYPE$1 = -2147483648u;
		V2_DCLASS$1 = -1;
	}
	label$250:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$256;
	{
		int32 TMP$118$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$257;
		TMP$118$2 = 24;
		goto label$847;
		label$257:;
		TMP$118$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$847:;
		VR_DTYPE$1 = TMP$118$2;
		if( VR_DTYPE$1 != 24 ) goto label$259;
		{
			VR_DTYPE$1 = 12;
		}
		label$259:;
		label$258:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$255;
	label$256:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$255:;
	{
		$13AST_NODECLASS TMP$119$2;
		TMP$119$2 = *($13AST_NODECLASS*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31)));
		if( TMP$119$2 != 4 ) goto label$261;
		label$262:;
		{
			if( VR$1 == V1$1 ) goto label$264;
			{
				int32 TMP$120$4;
				int32 TMP$121$4;
				if( (VR_DTYPE$1 & 480) == 0 ) goto label$265;
				TMP$120$4 = 24;
				goto label$848;
				label$265:;
				TMP$120$4 = VR_DTYPE$1 & 31;
				label$848:;
				if( (V1_DTYPE$1 & 480) == 0 ) goto label$266;
				TMP$121$4 = 24;
				goto label$849;
				label$266:;
				TMP$121$4 = V1_DTYPE$1 & 31;
				label$849:;
				if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$120$4 * 28)) + 20) != *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$121$4 * 28)) + 20) ) goto label$268;
				{
					uint32 vr$29 = (*(tmp$76*)((uint8*)&IR$ + 260))( V1$1 );
					if( vr$29 != 2147483647u ) goto label$270;
					{
						HRENAME( VR$1, V1$1 );
					}
					label$270:;
					label$269:;
				}
				label$268:;
				label$267:;
			}
			label$264:;
			label$263:;
		}
		goto label$260;
		label$261:;
		if( TMP$119$2 == 3 ) goto label$272;
		label$273:;
		if( TMP$119$2 != 14 ) goto label$271;
		label$272:;
		{
			int32 V1RENAME$3;
			int32 V2RENAME$3;
			if( VR$1 != (struct $6IRVREG*)0u ) goto label$275;
			{
				goto label$244;
			}
			label$275:;
			label$274:;
			if( V1_DCLASS$1 == V2_DCLASS$1 ) goto label$277;
			{
				goto label$244;
			}
			label$277:;
			label$276:;
			V1RENAME$3 = 0;
			if( VR$1 == V1$1 ) goto label$279;
			{
				int32 TMP$122$4;
				int32 TMP$123$4;
				if( (VR_DTYPE$1 & 480) == 0 ) goto label$280;
				TMP$122$4 = 24;
				goto label$850;
				label$280:;
				TMP$122$4 = VR_DTYPE$1 & 31;
				label$850:;
				if( (V1_DTYPE$1 & 480) == 0 ) goto label$281;
				TMP$123$4 = 24;
				goto label$851;
				label$281:;
				TMP$123$4 = V1_DTYPE$1 & 31;
				label$851:;
				if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$122$4 * 28)) + 20) != *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$123$4 * 28)) + 20) ) goto label$283;
				{
					uint32 vr$36 = (*(tmp$76*)((uint8*)&IR$ + 260))( V1$1 );
					if( vr$36 != 2147483647u ) goto label$285;
					{
						V1RENAME$3 = -1;
					}
					label$285:;
					label$284:;
				}
				label$283:;
				label$282:;
			}
			label$279:;
			label$278:;
			V2RENAME$3 = 0;
			if( (*(int32*)(((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 2) == 0 ) goto label$287;
			{
				if( VR$1 == V2$1 ) goto label$289;
				{
					int32 TMP$124$5;
					int32 TMP$125$5;
					if( (VR_DTYPE$1 & 480) == 0 ) goto label$290;
					TMP$124$5 = 24;
					goto label$852;
					label$290:;
					TMP$124$5 = VR_DTYPE$1 & 31;
					label$852:;
					if( (V2_DTYPE$1 & 480) == 0 ) goto label$291;
					TMP$125$5 = 24;
					goto label$853;
					label$291:;
					TMP$125$5 = V2_DTYPE$1 & 31;
					label$853:;
					if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$124$5 * 28)) + 20) != *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$125$5 * 28)) + 20) ) goto label$293;
					{
						if( V2_TYP$1 == 0 ) goto label$295;
						{
							uint32 vr$45 = (*(tmp$76*)((uint8*)&IR$ + 260))( V2$1 );
							if( vr$45 != 2147483647u ) goto label$297;
							{
								V2RENAME$3 = -1;
							}
							label$297:;
							label$296:;
						}
						label$295:;
						label$294:;
					}
					label$293:;
					label$292:;
				}
				label$289:;
				label$288:;
			}
			label$287:;
			label$286:;
			if( (V1RENAME$3 & V2RENAME$3) == 0 ) goto label$299;
			{
				if( *(int32*)V1$1 == 4 ) goto label$301;
				{
					V1RENAME$3 = 0;
				}
				label$301:;
				label$300:;
			}
			label$299:;
			label$298:;
			if( V1RENAME$3 == 0 ) goto label$303;
			{
				HRENAME( VR$1, V1$1 );
			}
			goto label$302;
			label$303:;
			if( V2RENAME$3 == 0 ) goto label$304;
			{
				{
					fb_MemSwap( (void*)((uint8*)T$1 + 44), (void*)((uint8*)T$1 + 80), 36 );
				}
				HRENAME( VR$1, V2$1 );
			}
			label$304:;
			label$302:;
		}
		label$271:;
		label$260:;
	}
	label$244:;
}

static void _FLUSH( void )
{
	label$305:;
	static int32 OP$1;
	static struct $5IRTAC* T$1;
	static struct $6IRVREG* V1$1;
	static struct $6IRVREG* V2$1;
	static struct $6IRVREG* VR$1;
	if( *(int32*)((uint8*)&CTX$ + 56) != 0 ) goto label$308;
	{
		goto label$306;
	}
	label$308:;
	label$307:;
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)&CTX$ );
	T$1 = (struct $5IRTAC*)vr$1;
	label$309:;
	{
		*(struct $5IRTAC**)((uint8*)&CTX$ + 60) = T$1;
		HREUSE( T$1 );
		OP$1 = *(int32*)((uint8*)T$1 + 4);
		V1$1 = *(struct $6IRVREG**)((uint8*)T$1 + 44);
		V2$1 = *(struct $6IRVREG**)((uint8*)T$1 + 80);
		VR$1 = *(struct $6IRVREG**)((uint8*)T$1 + 8);
		{
			uint32 TMP$126$3;
			TMP$126$3 = *(uint32*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31)));
			goto label$313;
			label$314:;
			{
				HFLUSHUOP( OP$1, V1$1, VR$1 );
			}
			goto label$312;
			label$315:;
			{
				HFLUSHBOP( OP$1, V1$1, V2$1, VR$1 );
			}
			goto label$312;
			label$316:;
			{
				HFLUSHCOMP( OP$1, V1$1, V2$1, VR$1, *(struct $8FBSYMBOL**)((uint8*)T$1 + 116) );
			}
			goto label$312;
			label$317:;
			{
				HFLUSHSTORE( OP$1, V1$1, V2$1 );
			}
			goto label$312;
			label$318:;
			{
				HFLUSHLOAD( OP$1, V1$1, VR$1 );
			}
			goto label$312;
			label$319:;
			{
				HFLUSHCONVERT( OP$1, V1$1, V2$1 );
			}
			goto label$312;
			label$320:;
			{
				HFLUSHSTACK( OP$1, V1$1, *(int32*)((uint8*)T$1 + 120) );
			}
			goto label$312;
			label$321:;
			{
				HFLUSHCALL( OP$1, *(struct $8FBSYMBOL**)((uint8*)T$1 + 116), *(int32*)((uint8*)T$1 + 120), V1$1, VR$1 );
			}
			goto label$312;
			label$322:;
			{
				HFLUSHBRANCH( OP$1, *(struct $8FBSYMBOL**)((uint8*)T$1 + 116) );
			}
			goto label$312;
			label$323:;
			{
				HFLUSHADDR( OP$1, V1$1, VR$1 );
			}
			goto label$312;
			label$324:;
			{
				HFLUSHMEM( OP$1, V1$1, V2$1, *(int32*)((uint8*)T$1 + 120), *(void**)((uint8*)T$1 + 116) );
			}
			goto label$312;
			label$325:;
			{
				HFLUSHDBG( OP$1, *(struct $8FBSYMBOL**)((uint8*)T$1 + 116), *(int32*)((uint8*)T$1 + 120), *(uint8**)((uint8*)T$1 + 124) );
			}
			goto label$312;
			label$326:;
			{
				HFLUSHLIT( OP$1, *(uint8**)((uint8*)T$1 + 116) );
			}
			goto label$312;
			label$313:;
			static const void* tmp$178[30] = {
				&&label$318,
				&&label$317,
				&&label$315,
				&&label$314,
				&&label$319,
				&&label$323,
				&&label$322,
				&&label$312,
				&&label$321,
				&&label$312,
				&&label$320,
				&&label$324,
				&&label$312,
				&&label$316,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$312,
				&&label$326,
				&&label$312,
				&&label$312,
				&&label$325,
			};
			if( (TMP$126$3 - 1u) > 29u ) goto label$312;
			goto *tmp$178[TMP$126$3 - 1u];
			label$312:;
		}
		if( *(int32*)((uint8*)&ENV$ + 116) < 1 ) goto label$328;
		{
			if( *(int32*)((uint8*)AST_OPTB$ + (OP$1 << (4 & 31))) == 9 ) goto label$330;
			{
				if( VR$1 == (struct $6IRVREG*)0u ) goto label$332;
				{
					if( *(int32*)((uint8*)VR$1 + 16) != 0 ) goto label$334;
					{
						*($12IR_REGFAMILY*)((uint8*)VR$1 + 16) = 1;
						label$334:;
					}
				}
				label$332:;
				label$331:;
			}
			label$330:;
			label$329:;
		}
		label$328:;
		label$327:;
		void* vr$21 = FLISTGETNEXT( (void*)T$1 );
		T$1 = (struct $5IRTAC*)vr$21;
	}
	label$311:;
	if( T$1 != (struct $5IRTAC*)0u ) goto label$309;
	label$310:;
	*(struct $5IRTAC**)((uint8*)&CTX$ + 60) = (struct $5IRTAC*)0u;
	*(int32*)((uint8*)&CTX$ + 56) = 0;
	FLISTRESET( (struct $6TFLIST*)&CTX$ );
	FLISTRESET( (struct $6TFLIST*)((uint8*)&CTX$ + 64) );
	HFREEPRESERVEDREGS(  );
	label$306:;
}

static void HFLUSHBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$335:;
	{
		uint32 TMP$127$2;
		TMP$127$2 = (uint32)OP$1;
		goto label$338;
		label$339:;
		{
			EMITLABEL( LABEL$1 );
		}
		goto label$337;
		label$340:;
		{
			EMITJUMP( LABEL$1 );
		}
		goto label$337;
		label$341:;
		{
			EMITCALL( LABEL$1, 0 );
		}
		goto label$337;
		label$342:;
		{
			EMITRET( 0 );
		}
		goto label$337;
		label$343:;
		{
			EMITBRANCH( OP$1, LABEL$1 );
		}
		goto label$337;
		label$338:;
		static const void* tmp$179[4] = {
			&&label$340,
			&&label$341,
			&&label$339,
			&&label$342,
		};
		if( (TMP$127$2 - 98u) > 3u ) goto label$343;
		goto *tmp$179[TMP$127$2 - 98u];
		label$337:;
	}
	label$336:;
}

static void HFREEPRESERVEDREGS( void )
{
	label$344:;
	static int32 CLASS_$1;
	static int32 REG$1;
	{
		CLASS_$1 = 0;
		label$349:;
		{
			int32 vr$1 = (*(tmp$88*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) + 28))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) );
			REG$1 = vr$1;
			label$350:;
			if( REG$1 == -1 ) goto label$351;
			{
				int32 vr$5 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) + 16))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))), REG$1 );
				if( vr$5 != 0 ) goto label$353;
				{
					(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) + 12))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))), REG$1 );
				}
				label$353:;
				label$352:;
				int32 vr$12 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))) + 32))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$1 << (2 & 31))), REG$1 );
				REG$1 = vr$12;
			}
			goto label$350;
			label$351:;
		}
		label$347:;
		CLASS_$1 = CLASS_$1 + 1;
		label$346:;
		if( CLASS_$1 <= 1 ) goto label$349;
		label$348:;
	}
	label$345:;
}

static int32 HPRESERVEREG( struct $6IRVREG* VR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$354:;
	int32 VR_DCLASS$1;
	int32 VR_DTYPE$1;
	int32 VR_TYP$1;
	int32 PRESERVED1$1;
	int32 PRESERVED2$1;
	int32 FREG1$1;
	int32 FREG2$1;
	struct $6IRVREG ORIGVREG$1;
	struct $6IRVREG ORIGVAUX$1;
	struct $6IRVREG DESTVREG$1;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$357;
	{
		int32 TMP$128$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$358;
		TMP$128$2 = 24;
		goto label$854;
		label$358:;
		TMP$128$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$854:;
		VR_DTYPE$1 = TMP$128$2;
		if( VR_DTYPE$1 != 24 ) goto label$360;
		{
			VR_DTYPE$1 = 12;
		}
		label$360:;
		label$359:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$356;
	label$357:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$356:;
	__builtin_memcpy( &ORIGVREG$1, VR$1, 72 );
	int32 vr$9 = (*(tmp$40*)((uint8*)&EMIT$ + 168))( VR_DCLASS$1, *(int32*)((uint8*)VR$1 + 12) );
	PRESERVED1$1 = vr$9;
	if( (-(VR_DTYPE$1 == 13) | -(VR_DTYPE$1 == 14)) == 0 ) goto label$362;
	{
		__builtin_memcpy( &ORIGVAUX$1, *(struct $6IRVREG**)((uint8*)VR$1 + 56), 72 );
		*(struct $6IRVREG**)((uint8*)&ORIGVREG$1 + 56) = &ORIGVAUX$1;
		int32 vr$18 = (*(tmp$40*)((uint8*)&EMIT$ + 168))( VR_DCLASS$1, *(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 56) + 12) );
		PRESERVED2$1 = vr$18;
	}
	goto label$361;
	label$362:;
	{
		PRESERVED2$1 = -1;
	}
	label$361:;
	if( (PRESERVED1$1 & PRESERVED2$1) == 0 ) goto label$364;
	{
		fb$result$1 = -1;
		goto label$355;
	}
	label$364:;
	label$363:;
	if( PRESERVED1$1 != 0 ) goto label$366;
	{
		int32 vr$20 = (*(tmp$40*)((uint8*)&EMIT$ + 172))( VR_DCLASS$1, VR_DTYPE$1 );
		FREG1$1 = vr$20;
		if( FREG1$1 != -1 ) goto label$368;
		{
			fb$result$1 = 0;
			goto label$355;
		}
		label$368:;
		label$367:;
		int32 vr$22 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))) + 8))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), FREG1$1, VR$1, (struct $6IRVREG*)0u );
		*(int32*)((uint8*)VR$1 + 12) = vr$22;
	}
	label$366:;
	label$365:;
	if( PRESERVED2$1 != 0 ) goto label$370;
	{
		int32 vr$26 = (*(tmp$40*)((uint8*)&EMIT$ + 172))( 0, 8 );
		FREG2$1 = vr$26;
		if( FREG2$1 != -1 ) goto label$372;
		{
			if( PRESERVED1$1 != 0 ) goto label$374;
			{
				(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))) + 12))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), *(int32*)((uint8*)VR$1 + 12) );
				*(int32*)((uint8*)VR$1 + 12) = *(int32*)((uint8*)&ORIGVREG$1 + 12);
			}
			label$374:;
			label$373:;
			fb$result$1 = 0;
			goto label$355;
		}
		label$372:;
		label$371:;
		int32 vr$33 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)REGTB$ + 8))( *(struct $8REGCLASS**)REGTB$, FREG2$1, *(struct $6IRVREG**)((uint8*)VR$1 + 56), VR$1 );
		*(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VR$1 + 56) + 12) = vr$33;
	}
	label$370:;
	label$369:;
	if( ~(PRESERVED1$1 | PRESERVED2$1) == 0 ) goto label$376;
	{
		EMITMOV( VR$1, &ORIGVREG$1 );
	}
	goto label$375;
	label$376:;
	if( PRESERVED1$1 != 0 ) goto label$377;
	{
		if( (-(VR_DTYPE$1 == 13) | -(VR_DTYPE$1 == 14)) == 0 ) goto label$379;
		{
			__builtin_memcpy( &DESTVREG$1, VR$1, 72 );
			*($11FB_DATATYPE*)((uint8*)&DESTVREG$1 + 4) = 8;
			*(struct $6IRVREG**)((uint8*)&DESTVREG$1 + 56) = (struct $6IRVREG*)0u;
			*($11FB_DATATYPE*)((uint8*)&ORIGVREG$1 + 4) = 8;
			*(struct $6IRVREG**)((uint8*)&ORIGVREG$1 + 56) = (struct $6IRVREG*)0u;
			EMITMOV( &DESTVREG$1, &ORIGVREG$1 );
		}
		goto label$378;
		label$379:;
		{
			EMITMOV( VR$1, &ORIGVREG$1 );
		}
		label$378:;
	}
	goto label$375;
	label$377:;
	{
		EMITMOV( *(struct $6IRVREG**)((uint8*)VR$1 + 56), &ORIGVAUX$1 );
	}
	label$375:;
	if( PRESERVED1$1 != 0 ) goto label$381;
	{
		(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))) + 12))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), *(int32*)((uint8*)&ORIGVREG$1 + 12) );
	}
	label$381:;
	label$380:;
	if( PRESERVED2$1 != 0 ) goto label$383;
	{
		(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)REGTB$ + 12))( *(struct $8REGCLASS**)REGTB$, *(int32*)((uint8*)&ORIGVAUX$1 + 12) );
	}
	label$383:;
	label$382:;
	fb$result$1 = -1;
	label$355:;
	return fb$result$1;
}

static void HPRESERVEREGS( struct $6IRVREG* PTRVREG$1 )
{
	label$384:;
	int32 NPREG$1;
	int32 REG$1;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* VAUXPARENT$1;
	{
		int32 CLASS_$2;
		CLASS_$2 = 0;
		label$389:;
		{
			NPREG$1 = -1;
			if( CLASS_$2 != 0 ) goto label$391;
			{
				if( PTRVREG$1 == (struct $6IRVREG*)0u ) goto label$393;
				{
					{
						$15IRVREGTYPE_ENUM TMP$129$6;
						TMP$129$6 = *($15IRVREGTYPE_ENUM*)PTRVREG$1;
						if( TMP$129$6 != 4 ) goto label$395;
						label$396:;
						{
							NPREG$1 = *(int32*)((uint8*)PTRVREG$1 + 12);
						}
						goto label$394;
						label$395:;
						if( TMP$129$6 == 2 ) goto label$398;
						label$399:;
						if( TMP$129$6 != 3 ) goto label$397;
						label$398:;
						{
							PTRVREG$1 = *(struct $6IRVREG**)((uint8*)PTRVREG$1 + 52);
							if( PTRVREG$1 == (struct $6IRVREG*)0u ) goto label$401;
							{
								NPREG$1 = *(int32*)((uint8*)PTRVREG$1 + 12);
							}
							label$401:;
							label$400:;
						}
						label$397:;
						label$394:;
					}
					PTRVREG$1 = (struct $6IRVREG*)0u;
				}
				label$393:;
				label$392:;
			}
			label$391:;
			label$390:;
			int32 vr$5 = (*(tmp$88*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 28))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) );
			REG$1 = vr$5;
			label$402:;
			if( REG$1 == -1 ) goto label$403;
			{
				int32 vr$9 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 16))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1 );
				if( (-(vr$9 == 0) & -(REG$1 != NPREG$1)) == 0 ) goto label$405;
				{
					struct $6IRVREG* vr$17 = (*(tmp$89*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 36))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1, &VAUXPARENT$1 );
					VR$1 = vr$17;
					if( VAUXPARENT$1 == (struct $6IRVREG*)0u ) goto label$407;
					{
						VR$1 = VAUXPARENT$1;
					}
					label$407:;
					label$406:;
					int32 vr$20 = HPRESERVEREG( VR$1 );
					if( vr$20 != 0 ) goto label$409;
					{
						(*(tmp$44*)((uint8*)&IR$ + 268))( VR$1, (struct $6IRVREG*)0u );
					}
					label$409:;
					label$408:;
				}
				label$405:;
				label$404:;
				int32 vr$22 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 32))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1 );
				REG$1 = vr$22;
			}
			goto label$402;
			label$403:;
		}
		label$387:;
		CLASS_$2 = CLASS_$2 + 1;
		label$386:;
		if( CLASS_$2 <= 1 ) goto label$389;
		label$388:;
	}
	label$385:;
}

static void HLOADPOINTER( struct $6IRVREG* V1$1 )
{
	label$410:;
	int32 VTYPE$1;
	int32 DTYPE$1;
	int32 DCLASS$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$413;
	{
		int32 TMP$130$2;
		VTYPE$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$414;
		TMP$130$2 = 24;
		goto label$855;
		label$414:;
		TMP$130$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$855:;
		DTYPE$1 = TMP$130$2;
		if( DTYPE$1 != 24 ) goto label$416;
		{
			DTYPE$1 = 12;
		}
		label$416:;
		label$415:;
		DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (DTYPE$1 * 28));
	}
	goto label$412;
	label$413:;
	{
		VTYPE$1 = -1;
		DTYPE$1 = -2147483648u;
		DCLASS$1 = -1;
	}
	label$412:;
	HLOADIDX( V1$1 );
	if( VTYPE$1 != 4 ) goto label$418;
	{
		int32 TMP$131$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$419;
		TMP$131$2 = 24;
		goto label$856;
		label$419:;
		TMP$131$2 = DTYPE$1 & 31;
		label$856:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$131$2 * 28)) + 4) );
	}
	label$418:;
	label$417:;
	label$411:;
}

static void HLOADRESULT( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* VR$1 )
{
	label$420:;
	int32 VTYPE$1;
	int32 DTYPE$1;
	int32 DCLASS$1;
	int32 REG1$1;
	int32 REG2$1;
	struct $6IRVREG* VA$1;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$423;
	{
		if( VR$1 == (struct $6IRVREG*)0u ) goto label$425;
		{
			int32 TMP$132$3;
			VTYPE$1 = *(int32*)VR$1;
			if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$426;
			TMP$132$3 = 24;
			goto label$857;
			label$426:;
			TMP$132$3 = *(int32*)((uint8*)VR$1 + 4) & 31;
			label$857:;
			DTYPE$1 = TMP$132$3;
			if( DTYPE$1 != 24 ) goto label$428;
			{
				DTYPE$1 = 12;
			}
			label$428:;
			label$427:;
			DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (DTYPE$1 * 28));
		}
		goto label$424;
		label$425:;
		{
			VTYPE$1 = -1;
			DTYPE$1 = -2147483648u;
			DCLASS$1 = -1;
		}
		label$424:;
		(*(tmp$98*)((uint8*)&EMIT$ + 176))( DTYPE$1, DCLASS$1, &REG1$1, &REG2$1 );
		if( (-(DTYPE$1 == 13) | -(DTYPE$1 == 14)) == 0 ) goto label$430;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)VR$1 + 56);
			int32 vr$13 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))) + 8))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))), REG2$1, VA$1, VR$1 );
			*(int32*)((uint8*)VA$1 + 12) = vr$13;
			*($15IRVREGTYPE_ENUM*)VA$1 = 4;
		}
		label$430:;
		label$429:;
		int32 vr$19 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))) + 8))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))), REG1$1, VR$1, (struct $6IRVREG*)0u );
		*(int32*)((uint8*)VR$1 + 12) = vr$19;
		*($15IRVREGTYPE_ENUM*)VR$1 = 4;
		HFREEREG( VR$1, 0 );
	}
	goto label$422;
	label$423:;
	{
		int32 TMP$133$2;
		if( (*(int32*)((uint8*)PROC$1 + 88) & 480) == 0 ) goto label$431;
		TMP$133$2 = 24;
		goto label$858;
		label$431:;
		TMP$133$2 = *(int32*)((uint8*)PROC$1 + 88) & 31;
		label$858:;
		if( (-(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$133$2 * 28)) == 1) & -(*(int32*)((uint8*)PROC$1 + 96) != 1)) == 0 ) goto label$433;
		{
			EMITPOPST0(  );
		}
		label$433:;
		label$432:;
	}
	label$422:;
	label$421:;
}

static void HFLUSHCALL( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 BYTESTOPOP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$434:;
	{
		if( OP$1 != 102 ) goto label$437;
		label$438:;
		{
			HPRESERVEREGS( (struct $6IRVREG*)0u );
			EMITCALL( PROC$1, BYTESTOPOP$1 );
			HLOADRESULT( PROC$1, VR$1 );
		}
		goto label$436;
		label$437:;
		if( OP$1 != 103 ) goto label$439;
		label$440:;
		{
			HPRESERVEREGS( V1$1 );
			HLOADPOINTER( V1$1 );
			EMITCALLPTR( V1$1, BYTESTOPOP$1 );
			HFREEREG( V1$1, 0 );
			HLOADRESULT( PROC$1, VR$1 );
		}
		goto label$436;
		label$439:;
		if( OP$1 != 104 ) goto label$441;
		label$442:;
		{
			HLOADPOINTER( V1$1 );
			EMITJUMPPTR( V1$1 );
			HFREEREG( V1$1, 0 );
		}
		goto label$436;
		label$441:;
		{
		}
		label$443:;
		label$436:;
	}
	label$435:;
}

static void HFLUSHSTACK( int32 OP$1, struct $6IRVREG* V1$1, int32 EX$1 )
{
	label$444:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static struct $6IRVREG* VA$1;
	if( OP$1 != 91 ) goto label$447;
	{
		EMITSTACKALIGN( EX$1 );
		goto label$445;
	}
	label$447:;
	label$446:;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$449;
	{
		int32 TMP$134$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$450;
		TMP$134$2 = 24;
		goto label$859;
		label$450:;
		TMP$134$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$859:;
		V1_DTYPE$1 = TMP$134$2;
		if( V1_DTYPE$1 != 24 ) goto label$452;
		{
			V1_DTYPE$1 = 12;
		}
		label$452:;
		label$451:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$448;
	label$449:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$448:;
	HLOADIDX( V1$1 );
	if( V1_TYP$1 != 4 ) goto label$454;
	{
		int32 TMP$135$2;
		if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$456;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V1_DTYPE$1 = 8;
		}
		label$456:;
		label$455:;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$457;
		TMP$135$2 = 24;
		goto label$860;
		label$457:;
		TMP$135$2 = V1_DTYPE$1 & 31;
		label$860:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$135$2 * 28)) + 4) );
	}
	label$454:;
	label$453:;
	{
		if( OP$1 != 88 ) goto label$459;
		label$460:;
		{
			EMITPUSH( V1$1 );
		}
		goto label$458;
		label$459:;
		if( OP$1 != 90 ) goto label$461;
		label$462:;
		{
			EMITPUSHUDT( V1$1, EX$1 );
		}
		goto label$458;
		label$461:;
		if( OP$1 != 89 ) goto label$463;
		label$464:;
		{
			EMITPOP( V1$1 );
		}
		label$463:;
		label$458:;
	}
	HFREEREG( V1$1, 0 );
	label$445:;
}

static void HFLUSHUOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$465:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 VR_TYP$1;
	static int32 VR_DTYPE$1;
	static int32 VR_DCLASS$1;
	static struct $6IRVREG* VA$1;
	static int32 V1VECTOR$1;
	V1VECTOR$1 = *(int32*)((uint8*)V1$1 + 20);
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$468;
	{
		int32 TMP$136$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$469;
		TMP$136$2 = 24;
		goto label$861;
		label$469:;
		TMP$136$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$861:;
		V1_DTYPE$1 = TMP$136$2;
		if( V1_DTYPE$1 != 24 ) goto label$471;
		{
			V1_DTYPE$1 = 12;
		}
		label$471:;
		label$470:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$467;
	label$468:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$467:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$473;
	{
		int32 TMP$137$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$474;
		TMP$137$2 = 24;
		goto label$862;
		label$474:;
		TMP$137$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$862:;
		VR_DTYPE$1 = TMP$137$2;
		if( VR_DTYPE$1 != 24 ) goto label$476;
		{
			VR_DTYPE$1 = 12;
		}
		label$476:;
		label$475:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$472;
	label$473:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$472:;
	HLOADIDX( V1$1 );
	HLOADIDX( VR$1 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$478;
	{
		if( V1$1 == VR$1 ) goto label$480;
		{
			int32 TMP$138$3;
			if( (-(VR_DTYPE$1 == 13) | -(VR_DTYPE$1 == 14)) == 0 ) goto label$482;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)VR$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VA$1, VR$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				VR_DTYPE$1 = 8;
			}
			label$482:;
			label$481:;
			if( (VR_DTYPE$1 & 480) == 0 ) goto label$483;
			TMP$138$3 = 24;
			goto label$863;
			label$483:;
			TMP$138$3 = VR_DTYPE$1 & 31;
			label$863:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VR$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$138$3 * 28)) + 4) );
		}
		label$480:;
		label$479:;
	}
	label$478:;
	label$477:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$485;
	{
		int32 TMP$139$2;
		if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$487;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V1_DTYPE$1 = 8;
		}
		label$487:;
		label$486:;
		if( OP$1 != 75 ) goto label$489;
		{
			*(int32*)((uint8*)V1$1 + 20) = 0;
		}
		label$489:;
		label$488:;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$490;
		TMP$139$2 = 24;
		goto label$864;
		label$490:;
		TMP$139$2 = V1_DTYPE$1 & 31;
		label$864:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$139$2 * 28)) + 4) );
		if( OP$1 != 75 ) goto label$492;
		{
			*(int32*)((uint8*)V1$1 + 20) = V1VECTOR$1;
		}
		label$492:;
		label$491:;
	}
	label$485:;
	label$484:;
	{
		uint32 TMP$140$2;
		TMP$140$2 = (uint32)OP$1;
		goto label$494;
		label$495:;
		{
			EMITNEG( V1$1 );
		}
		goto label$493;
		label$496:;
		{
			EMITNOT( V1$1 );
		}
		goto label$493;
		label$497:;
		{
			EMITHADD( V1$1 );
			*(int32*)((uint8*)V1$1 + 20) = 0;
		}
		goto label$493;
		label$498:;
		{
			EMITABS( V1$1 );
		}
		goto label$493;
		label$499:;
		{
			EMITSGN( V1$1 );
		}
		goto label$493;
		label$500:;
		{
			EMITFIX( V1$1 );
		}
		goto label$493;
		label$501:;
		{
			EMITFRAC( V1$1 );
		}
		goto label$493;
		label$502:;
		{
			EMITCONVFD2FS( V1$1 );
		}
		goto label$493;
		label$503:;
		{
			EMITSIN( V1$1 );
		}
		goto label$493;
		label$504:;
		{
			EMITASIN( V1$1 );
		}
		goto label$493;
		label$505:;
		{
			EMITCOS( V1$1 );
		}
		goto label$493;
		label$506:;
		{
			EMITACOS( V1$1 );
		}
		goto label$493;
		label$507:;
		{
			EMITTAN( V1$1 );
		}
		goto label$493;
		label$508:;
		{
			EMITATAN( V1$1 );
		}
		goto label$493;
		label$509:;
		{
			EMITSQRT( V1$1 );
		}
		goto label$493;
		label$510:;
		{
			EMITRSQRT( V1$1 );
		}
		goto label$493;
		label$511:;
		{
			EMITRCP( V1$1 );
		}
		goto label$493;
		label$512:;
		{
			EMITLOG( V1$1 );
		}
		goto label$493;
		label$513:;
		{
			EMITEXP( V1$1 );
		}
		goto label$493;
		label$514:;
		{
			EMITFLOOR( V1$1 );
		}
		goto label$493;
		label$515:;
		{
			EMITSWZREP( V1$1 );
		}
		goto label$493;
		label$494:;
		static const void* tmp$180[24] = {
			&&label$496,
			&&label$493,
			&&label$495,
			&&label$497,
			&&label$498,
			&&label$499,
			&&label$503,
			&&label$504,
			&&label$505,
			&&label$506,
			&&label$507,
			&&label$508,
			&&label$493,
			&&label$509,
			&&label$510,
			&&label$511,
			&&label$512,
			&&label$513,
			&&label$514,
			&&label$500,
			&&label$501,
			&&label$493,
			&&label$502,
			&&label$515,
		};
		if( (TMP$140$2 - 52u) > 23u ) goto label$493;
		goto *tmp$180[TMP$140$2 - 52u];
		label$493:;
	}
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$517;
	{
		if( V1$1 == VR$1 ) goto label$519;
		{
			EMITMOV( VR$1, V1$1 );
		}
		label$519:;
		label$518:;
	}
	label$517:;
	label$516:;
	HFREEREG( V1$1, 0 );
	HFREEREG( VR$1, 0 );
	label$466:;
}

static void HFLUSHBOP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$520:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 V2_TYP$1;
	static int32 V2_DTYPE$1;
	static int32 V2_DCLASS$1;
	static int32 VR_TYP$1;
	static int32 VR_DTYPE$1;
	static int32 VR_DCLASS$1;
	static struct $6IRVREG* VA$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$523;
	{
		int32 TMP$141$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$524;
		TMP$141$2 = 24;
		goto label$865;
		label$524:;
		TMP$141$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$865:;
		V1_DTYPE$1 = TMP$141$2;
		if( V1_DTYPE$1 != 24 ) goto label$526;
		{
			V1_DTYPE$1 = 12;
		}
		label$526:;
		label$525:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$522;
	label$523:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$522:;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$528;
	{
		int32 TMP$142$2;
		V2_TYP$1 = *(int32*)V2$1;
		if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$529;
		TMP$142$2 = 24;
		goto label$866;
		label$529:;
		TMP$142$2 = *(int32*)((uint8*)V2$1 + 4) & 31;
		label$866:;
		V2_DTYPE$1 = TMP$142$2;
		if( V2_DTYPE$1 != 24 ) goto label$531;
		{
			V2_DTYPE$1 = 12;
		}
		label$531:;
		label$530:;
		V2_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V2_DTYPE$1 * 28));
	}
	goto label$527;
	label$528:;
	{
		V2_TYP$1 = -1;
		V2_DTYPE$1 = -2147483648u;
		V2_DCLASS$1 = -1;
	}
	label$527:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$533;
	{
		int32 TMP$143$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$534;
		TMP$143$2 = 24;
		goto label$867;
		label$534:;
		TMP$143$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$867:;
		VR_DTYPE$1 = TMP$143$2;
		if( VR_DTYPE$1 != 24 ) goto label$536;
		{
			VR_DTYPE$1 = 12;
		}
		label$536:;
		label$535:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$532;
	label$533:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$532:;
	HLOADIDX( V1$1 );
	HLOADIDX( V2$1 );
	HLOADIDX( VR$1 );
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$538;
	{
		if( V2_TYP$1 == 0 ) goto label$540;
		{
			int32 TMP$144$3;
			if( (-(V2_DTYPE$1 == 13) | -(V2_DTYPE$1 == 14)) == 0 ) goto label$542;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), VA$1, V2$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				V2_DTYPE$1 = 8;
			}
			label$542:;
			label$541:;
			if( (V2_DTYPE$1 & 480) == 0 ) goto label$543;
			TMP$144$3 = 24;
			goto label$868;
			label$543:;
			TMP$144$3 = V2_DTYPE$1 & 31;
			label$868:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), V2$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$144$3 * 28)) + 4) );
		}
		label$540:;
		label$539:;
	}
	goto label$537;
	label$538:;
	{
		int32 TMP$146$2;
		if( V2_TYP$1 != 4 ) goto label$545;
		{
			int32 TMP$145$3;
			if( (-(V2_DTYPE$1 == 13) | -(V2_DTYPE$1 == 14)) == 0 ) goto label$547;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), VA$1, V2$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				V2_DTYPE$1 = 8;
			}
			label$547:;
			label$546:;
			if( (V2_DTYPE$1 & 480) == 0 ) goto label$548;
			TMP$145$3 = 24;
			goto label$869;
			label$548:;
			TMP$145$3 = V2_DTYPE$1 & 31;
			label$869:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), V2$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$145$3 * 28)) + 4) );
		}
		label$545:;
		label$544:;
		if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$550;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V1_DTYPE$1 = 8;
		}
		label$550:;
		label$549:;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$551;
		TMP$146$2 = 24;
		goto label$870;
		label$551:;
		TMP$146$2 = V1_DTYPE$1 & 31;
		label$870:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$146$2 * 28)) + 4) );
	}
	label$537:;
	{
		uint32 TMP$147$2;
		TMP$147$2 = (uint32)OP$1;
		goto label$553;
		label$554:;
		{
			EMITADD( V1$1, V2$1 );
		}
		goto label$552;
		label$555:;
		{
			EMITSUB( V1$1, V2$1 );
		}
		goto label$552;
		label$556:;
		{
			EMITMUL( V1$1, V2$1 );
		}
		goto label$552;
		label$557:;
		{
			EMITDIV( V1$1, V2$1 );
		}
		goto label$552;
		label$558:;
		{
			EMITINTDIV( V1$1, V2$1 );
		}
		goto label$552;
		label$559:;
		{
			EMITMOD( V1$1, V2$1 );
		}
		goto label$552;
		label$560:;
		{
			EMITSHL( V1$1, V2$1 );
		}
		goto label$552;
		label$561:;
		{
			EMITSHR( V1$1, V2$1 );
		}
		goto label$552;
		label$562:;
		{
			EMITAND( V1$1, V2$1 );
		}
		goto label$552;
		label$563:;
		{
			EMITOR( V1$1, V2$1 );
		}
		goto label$552;
		label$564:;
		{
			EMITXOR( V1$1, V2$1 );
		}
		goto label$552;
		label$565:;
		{
			EMITEQV( V1$1, V2$1 );
		}
		goto label$552;
		label$566:;
		{
			EMITIMP( V1$1, V2$1 );
		}
		goto label$552;
		label$567:;
		{
			EMITATN2( V1$1, V2$1 );
		}
		goto label$552;
		label$568:;
		{
			EMITPOW( V1$1, V2$1 );
		}
		goto label$552;
		label$553:;
		static const void* tmp$181[37] = {
			&&label$554,
			&&label$555,
			&&label$556,
			&&label$557,
			&&label$558,
			&&label$559,
			&&label$562,
			&&label$563,
			&&label$552,
			&&label$552,
			&&label$564,
			&&label$565,
			&&label$566,
			&&label$560,
			&&label$561,
			&&label$568,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$552,
			&&label$567,
		};
		if( (TMP$147$2 - 28u) > 36u ) goto label$552;
		goto *tmp$181[TMP$147$2 - 28u];
		label$552:;
	}
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$570;
	{
		if( V1$1 == VR$1 ) goto label$572;
		{
			int32 TMP$148$3;
			if( (-(VR_DTYPE$1 == 13) | -(VR_DTYPE$1 == 14)) == 0 ) goto label$574;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)VR$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VA$1, VR$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				VR_DTYPE$1 = 8;
			}
			label$574:;
			label$573:;
			if( (VR_DTYPE$1 & 480) == 0 ) goto label$575;
			TMP$148$3 = 24;
			goto label$871;
			label$575:;
			TMP$148$3 = VR_DTYPE$1 & 31;
			label$871:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VR$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$148$3 * 28)) + 4) );
			EMITMOV( VR$1, V1$1 );
		}
		label$572:;
		label$571:;
	}
	label$570:;
	label$569:;
	HFREEREG( V1$1, 0 );
	HFREEREG( V2$1, 0 );
	HFREEREG( VR$1, 0 );
	label$521:;
}

static void HFLUSHCOMP( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$576:;
	static FBSTRING LNAME$1;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 V2_TYP$1;
	static int32 V2_DTYPE$1;
	static int32 V2_DCLASS$1;
	static int32 VR_TYP$1;
	static int32 VR_DTYPE$1;
	static int32 VR_DCLASS$1;
	static struct $6IRVREG* VA$1;
	static int32 DOLOAD$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$579;
	{
		int32 TMP$149$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$580;
		TMP$149$2 = 24;
		goto label$872;
		label$580:;
		TMP$149$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$872:;
		V1_DTYPE$1 = TMP$149$2;
		if( V1_DTYPE$1 != 24 ) goto label$582;
		{
			V1_DTYPE$1 = 12;
		}
		label$582:;
		label$581:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$578;
	label$579:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$578:;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$584;
	{
		int32 TMP$150$2;
		V2_TYP$1 = *(int32*)V2$1;
		if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$585;
		TMP$150$2 = 24;
		goto label$873;
		label$585:;
		TMP$150$2 = *(int32*)((uint8*)V2$1 + 4) & 31;
		label$873:;
		V2_DTYPE$1 = TMP$150$2;
		if( V2_DTYPE$1 != 24 ) goto label$587;
		{
			V2_DTYPE$1 = 12;
		}
		label$587:;
		label$586:;
		V2_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V2_DTYPE$1 * 28));
	}
	goto label$583;
	label$584:;
	{
		V2_TYP$1 = -1;
		V2_DTYPE$1 = -2147483648u;
		V2_DCLASS$1 = -1;
	}
	label$583:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$589;
	{
		int32 TMP$151$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$590;
		TMP$151$2 = 24;
		goto label$874;
		label$590:;
		TMP$151$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$874:;
		VR_DTYPE$1 = TMP$151$2;
		if( VR_DTYPE$1 != 24 ) goto label$592;
		{
			VR_DTYPE$1 = 12;
		}
		label$592:;
		label$591:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$588;
	label$589:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$588:;
	HLOADIDX( V1$1 );
	HLOADIDX( V2$1 );
	HLOADIDX( VR$1 );
	DOLOAD$1 = 0;
	if( VR$1 != (struct $6IRVREG*)0u ) goto label$594;
	{
		if( V2_DCLASS$1 != 0 ) goto label$596;
		{
			if( V2_TYP$1 == 0 ) goto label$598;
			{
				if( V1_DCLASS$1 == 1 ) goto label$600;
				{
					DOLOAD$1 = -1;
				}
				label$600:;
				label$599:;
			}
			label$598:;
			label$597:;
		}
		label$596:;
		label$595:;
	}
	label$594:;
	label$593:;
	if( (-(V2_TYP$1 == 4) | DOLOAD$1) == 0 ) goto label$602;
	{
		int32 TMP$152$2;
		if( (-(V2_DTYPE$1 == 13) | -(V2_DTYPE$1 == 14)) == 0 ) goto label$604;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), VA$1, V2$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V2_DTYPE$1 = 8;
		}
		label$604:;
		label$603:;
		if( (V2_DTYPE$1 & 480) == 0 ) goto label$605;
		TMP$152$2 = 24;
		goto label$875;
		label$605:;
		TMP$152$2 = V2_DTYPE$1 & 31;
		label$875:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), V2$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$152$2 * 28)) + 4) );
		V2_TYP$1 = 4;
	}
	label$602:;
	label$601:;
	DOLOAD$1 = 0;
	if( (-(VR$1 != (struct $6IRVREG*)0u) & -(VR$1 == V1$1)) == 0 ) goto label$607;
	{
		DOLOAD$1 = -1;
	}
	goto label$606;
	label$607:;
	if( V1_DCLASS$1 != 1 ) goto label$608;
	{
		DOLOAD$1 = -1;
	}
	goto label$606;
	label$608:;
	if( V1_TYP$1 != 0 ) goto label$609;
	{
		DOLOAD$1 = -1;
	}
	goto label$606;
	label$609:;
	if( (-(V1_TYP$1 == 5) & -(V2_TYP$1 == 0)) == 0 ) goto label$610;
	{
		DOLOAD$1 = -1;
	}
	goto label$606;
	label$610:;
	if( V2_TYP$1 == 4 ) goto label$611;
	{
		if( V2_TYP$1 == 0 ) goto label$613;
		{
			DOLOAD$1 = -1;
		}
		label$613:;
		label$612:;
	}
	goto label$606;
	label$611:;
	if( V1_TYP$1 != 5 ) goto label$614;
	{
		DOLOAD$1 = -1;
	}
	label$614:;
	label$606:;
	if( (-(V1_TYP$1 == 4) | DOLOAD$1) == 0 ) goto label$616;
	{
		int32 TMP$153$2;
		if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$618;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V1_DTYPE$1 = 8;
		}
		label$618:;
		label$617:;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$619;
		TMP$153$2 = 24;
		goto label$876;
		label$619:;
		TMP$153$2 = V1_DTYPE$1 & 31;
		label$876:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$153$2 * 28)) + 4) );
	}
	label$616:;
	label$615:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$621;
	{
		if( VR$1 == V1$1 ) goto label$623;
		{
			int32 TMP$154$3;
			if( (VR_DTYPE$1 & 480) == 0 ) goto label$624;
			TMP$154$3 = 24;
			goto label$877;
			label$624:;
			TMP$154$3 = VR_DTYPE$1 & 31;
			label$877:;
			int32 vr$58 = (*(tmp$83*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))) + 4))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VR$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$154$3 * 28)) + 4) );
			*(int32*)((uint8*)VR$1 + 12) = vr$58;
			*($15IRVREGTYPE_ENUM*)VR$1 = 4;
		}
		label$623:;
		label$622:;
	}
	label$621:;
	label$620:;
	{
		uint32 TMP$155$2;
		TMP$155$2 = (uint32)OP$1;
		goto label$626;
		label$627:;
		{
			EMITEQ( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$628:;
		{
			EMITNE( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$629:;
		{
			EMITGT( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$630:;
		{
			EMITLT( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$631:;
		{
			EMITLE( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$632:;
		{
			EMITGE( VR$1, LABEL$1, V1$1, V2$1 );
		}
		goto label$625;
		label$626:;
		static const void* tmp$182[6] = {
			&&label$627,
			&&label$629,
			&&label$630,
			&&label$628,
			&&label$632,
			&&label$631,
		};
		if( (TMP$155$2 - 45u) > 5u ) goto label$625;
		goto *tmp$182[TMP$155$2 - 45u];
		label$625:;
	}
	HFREEREG( V1$1, 0 );
	HFREEREG( V2$1, 0 );
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$634;
	{
		HFREEREG( VR$1, 0 );
	}
	label$634:;
	label$633:;
	label$577:;
}

static void HSPILLREGS( void )
{
	label$635:;
	struct $6IRVREG* VR$1;
	struct $6IRVREG* VAUXPARENT$1;
	int32 REG$1;
	{
		int32 CLASS_$2;
		CLASS_$2 = 0;
		label$640:;
		{
			int32 vr$1 = (*(tmp$88*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 28))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) );
			REG$1 = vr$1;
			label$641:;
			if( REG$1 == -1 ) goto label$642;
			{
				int32 vr$5 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 16))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1 );
				if( vr$5 != 0 ) goto label$644;
				{
					struct $6IRVREG* vr$10 = (*(tmp$89*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 36))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1, &VAUXPARENT$1 );
					VR$1 = vr$10;
					(*(tmp$44*)((uint8*)&IR$ + 268))( VR$1, VAUXPARENT$1 );
				}
				label$644:;
				label$643:;
				int32 vr$14 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))) + 32))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (CLASS_$2 << (2 & 31))), REG$1 );
				REG$1 = vr$14;
			}
			goto label$641;
			label$642:;
		}
		label$638:;
		CLASS_$2 = CLASS_$2 + 1;
		label$637:;
		if( CLASS_$2 <= 1 ) goto label$640;
		label$639:;
	}
	label$636:;
}

static void HFLUSHSTORE( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$645:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 V2_TYP$1;
	static int32 V2_DTYPE$1;
	static int32 V2_DCLASS$1;
	static struct $6IRVREG* VA$1;
	if( OP$1 != 87 ) goto label$648;
	{
		HSPILLREGS(  );
		goto label$646;
	}
	label$648:;
	label$647:;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$650;
	{
		int32 TMP$156$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$651;
		TMP$156$2 = 24;
		goto label$878;
		label$651:;
		TMP$156$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$878:;
		V1_DTYPE$1 = TMP$156$2;
		if( V1_DTYPE$1 != 24 ) goto label$653;
		{
			V1_DTYPE$1 = 12;
		}
		label$653:;
		label$652:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$649;
	label$650:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$649:;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$655;
	{
		int32 TMP$157$2;
		V2_TYP$1 = *(int32*)V2$1;
		if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$656;
		TMP$157$2 = 24;
		goto label$879;
		label$656:;
		TMP$157$2 = *(int32*)((uint8*)V2$1 + 4) & 31;
		label$879:;
		V2_DTYPE$1 = TMP$157$2;
		if( V2_DTYPE$1 != 24 ) goto label$658;
		{
			V2_DTYPE$1 = 12;
		}
		label$658:;
		label$657:;
		V2_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V2_DTYPE$1 * 28));
	}
	goto label$654;
	label$655:;
	{
		V2_TYP$1 = -1;
		V2_DTYPE$1 = -2147483648u;
		V2_DCLASS$1 = -1;
	}
	label$654:;
	HLOADIDX( V1$1 );
	HLOADIDX( V2$1 );
	if( (-(V2_TYP$1 == 4) | (-(V2_TYP$1 != 0) & -(V1_DCLASS$1 == 0))) == 0 ) goto label$660;
	{
		int32 TMP$158$2;
		if( (-(V2_DTYPE$1 == 13) | -(V2_DTYPE$1 == 14)) == 0 ) goto label$662;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), VA$1, V2$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			V2_DTYPE$1 = 8;
		}
		label$662:;
		label$661:;
		if( (V2_DTYPE$1 & 480) == 0 ) goto label$663;
		TMP$158$2 = 24;
		goto label$880;
		label$663:;
		TMP$158$2 = V2_DTYPE$1 & 31;
		label$880:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), V2$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$158$2 * 28)) + 4) );
	}
	label$660:;
	label$659:;
	EMITSTORE( V1$1, V2$1 );
	HFREEREG( V1$1, 0 );
	HFREEREG( V2$1, 0 );
	label$646:;
}

static void HFLUSHLOAD( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$664:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 V1_REG$1;
	static struct $6IRVREG* VA$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$667;
	{
		int32 TMP$159$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$668;
		TMP$159$2 = 24;
		goto label$881;
		label$668:;
		TMP$159$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$881:;
		V1_DTYPE$1 = TMP$159$2;
		if( V1_DTYPE$1 != 24 ) goto label$670;
		{
			V1_DTYPE$1 = 12;
		}
		label$670:;
		label$669:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$666;
	label$667:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$666:;
	HLOADIDX( V1$1 );
	{
		if( OP$1 != 85 ) goto label$672;
		label$673:;
		{
			int32 TMP$160$3;
			if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$675;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				V1_DTYPE$1 = 8;
			}
			label$675:;
			label$674:;
			if( (V1_DTYPE$1 & 480) == 0 ) goto label$676;
			TMP$160$3 = 24;
			goto label$882;
			label$676:;
			TMP$160$3 = V1_DTYPE$1 & 31;
			label$882:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$160$3 * 28)) + 4) );
		}
		goto label$671;
		label$672:;
		if( OP$1 != 86 ) goto label$677;
		label$678:;
		{
			if( V1_TYP$1 != 4 ) goto label$680;
			{
				if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$682;
				{
					VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
					(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
					int32 vr$27 = (*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
					V1_REG$1 = vr$27;
				}
				goto label$681;
				label$682:;
				{
					int32 TMP$161$5;
					if( (V1_DTYPE$1 & 480) == 0 ) goto label$683;
					TMP$161$5 = 24;
					goto label$883;
					label$683:;
					TMP$161$5 = V1_DTYPE$1 & 31;
					label$883:;
					int32 vr$34 = (*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$161$5 * 28)) + 4) );
					V1_REG$1 = vr$34;
				}
				label$681:;
			}
			goto label$679;
			label$680:;
			{
				V1_REG$1 = -1;
			}
			label$679:;
			static int32 VR_REG$3;
			static int32 VR_REG2$3;
			(*(tmp$98*)((uint8*)&EMIT$ + 176))( V1_DTYPE$1, V1_DCLASS$1, &VR_REG$3, &VR_REG2$3 );
			if( VR_REG$3 == V1_REG$1 ) goto label$685;
			{
				if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$687;
				{
					VA$1 = *(struct $6IRVREG**)((uint8*)VR$1 + 56);
					int32 vr$42 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 8))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VR_REG2$3, VA$1, VR$1 );
					*(int32*)((uint8*)VA$1 + 12) = vr$42;
					*($15IRVREGTYPE_ENUM*)VA$1 = 4;
				}
				label$687:;
				label$686:;
				int32 vr$48 = (*(tmp$84*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 8))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VR_REG$3, VR$1, (struct $6IRVREG*)0u );
				*(int32*)((uint8*)VR$1 + 12) = vr$48;
				*($15IRVREGTYPE_ENUM*)VR$1 = 4;
				if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 40) + 12) + 96) == 1 ) goto label$689;
				{
					*($12IR_REGFAMILY*)((uint8*)VR$1 + 16) = 0;
				}
				label$689:;
				label$688:;
				EMITLOAD( VR$1, V1$1 );
				HFREEREG( VR$1, 0 );
			}
			label$685:;
			label$684:;
		}
		label$677:;
		label$671:;
	}
	HFREEREG( V1$1, 0 );
	label$665:;
}

static void HFLUSHCONVERT( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$690:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 V2_TYP$1;
	static int32 V2_DTYPE$1;
	static int32 V2_DCLASS$1;
	static int32 REUSE$1;
	static struct $6IRVREG* VA$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$693;
	{
		int32 TMP$162$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$694;
		TMP$162$2 = 24;
		goto label$884;
		label$694:;
		TMP$162$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$884:;
		V1_DTYPE$1 = TMP$162$2;
		if( V1_DTYPE$1 != 24 ) goto label$696;
		{
			V1_DTYPE$1 = 12;
		}
		label$696:;
		label$695:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$692;
	label$693:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$692:;
	if( V2$1 == (struct $6IRVREG*)0u ) goto label$698;
	{
		int32 TMP$163$2;
		V2_TYP$1 = *(int32*)V2$1;
		if( (*(int32*)((uint8*)V2$1 + 4) & 480) == 0 ) goto label$699;
		TMP$163$2 = 24;
		goto label$885;
		label$699:;
		TMP$163$2 = *(int32*)((uint8*)V2$1 + 4) & 31;
		label$885:;
		V2_DTYPE$1 = TMP$163$2;
		if( V2_DTYPE$1 != 24 ) goto label$701;
		{
			V2_DTYPE$1 = 12;
		}
		label$701:;
		label$700:;
		V2_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V2_DTYPE$1 * 28));
	}
	goto label$697;
	label$698:;
	{
		V2_TYP$1 = -1;
		V2_DTYPE$1 = -2147483648u;
		V2_DCLASS$1 = -1;
	}
	label$697:;
	HLOADIDX( V1$1 );
	HLOADIDX( V2$1 );
	REUSE$1 = 0;
	if( (-(V1_DCLASS$1 == V2_DCLASS$1) & -(V2_TYP$1 == 4)) == 0 ) goto label$703;
	{
		if( V2_DCLASS$1 != 1 ) goto label$705;
		{
			if( (*(int32*)((uint8*)&IR$ + 276) & 1) == 0 ) goto label$707;
			{
				*($12IR_REGFAMILY*)((uint8*)V1$1 + 16) = *($12IR_REGFAMILY*)((uint8*)V2$1 + 16);
				if( *(int32*)((uint8*)V2$1 + 16) != 0 ) goto label$709;
				{
					goto label$691;
					label$709:;
				}
			}
			goto label$706;
			label$707:;
			{
				*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
				*(int32*)((uint8*)V2$1 + 12) = -1;
				*($15IRVREGTYPE_ENUM*)V1$1 = 4;
				(*(tmp$87*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 20))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), *(int32*)((uint8*)V1$1 + 12), V1$1, (struct $6IRVREG*)0u );
				goto label$691;
			}
			label$706:;
		}
		label$705:;
		label$704:;
		uint32 vr$27 = (*(tmp$76*)((uint8*)&IR$ + 260))( V2$1 );
		if( vr$27 != 2147483647u ) goto label$711;
		{
			{
				int32 TMP$164$4;
				int32 TMP$165$4;
				if( (V1_DTYPE$1 & 480) == 0 ) goto label$712;
				TMP$164$4 = 24;
				goto label$886;
				label$712:;
				TMP$164$4 = V1_DTYPE$1 & 31;
				label$886:;
				TMP$165$4 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$164$4 * 28)) + 4);
				if( TMP$165$4 == 1 ) goto label$715;
				label$716:;
				if( TMP$165$4 != 8 ) goto label$714;
				label$715:;
				{
				}
				goto label$713;
				label$714:;
				{
					{
						int32 TMP$166$6;
						int32 TMP$167$6;
						if( (V2_DTYPE$1 & 480) == 0 ) goto label$718;
						TMP$166$6 = 24;
						goto label$887;
						label$718:;
						TMP$166$6 = V2_DTYPE$1 & 31;
						label$887:;
						TMP$167$6 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$166$6 * 28)) + 4);
						if( TMP$167$6 == 1 ) goto label$721;
						label$722:;
						if( TMP$167$6 != 8 ) goto label$720;
						label$721:;
						{
						}
						goto label$719;
						label$720:;
						{
							REUSE$1 = -1;
						}
						label$723:;
						label$719:;
					}
				}
				label$717:;
				label$713:;
			}
		}
		label$711:;
		label$710:;
	}
	label$703:;
	label$702:;
	if( REUSE$1 == 0 ) goto label$725;
	{
		*(int32*)((uint8*)V1$1 + 12) = *(int32*)((uint8*)V2$1 + 12);
		*($15IRVREGTYPE_ENUM*)V1$1 = 4;
		(*(tmp$87*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 20))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), *(int32*)((uint8*)V1$1 + 12), V1$1, (struct $6IRVREG*)0u );
	}
	goto label$724;
	label$725:;
	{
		int32 TMP$169$2;
		if( V2_TYP$1 != 4 ) goto label$727;
		{
			int32 TMP$168$3;
			if( (-(V2_DTYPE$1 == 13) | -(V2_DTYPE$1 == 14)) == 0 ) goto label$729;
			{
				VA$1 = *(struct $6IRVREG**)((uint8*)V2$1 + 56);
				(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), VA$1, V2$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
				V2_DTYPE$1 = 8;
			}
			label$729:;
			label$728:;
			if( (V2_DTYPE$1 & 480) == 0 ) goto label$730;
			TMP$168$3 = 24;
			goto label$888;
			label$730:;
			TMP$168$3 = V2_DTYPE$1 & 31;
			label$888:;
			(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V2_DCLASS$1 << (2 & 31))), V2$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$168$3 * 28)) + 4) );
		}
		label$727:;
		label$726:;
		if( (-(V1_DTYPE$1 == 13) | -(V1_DTYPE$1 == 14)) == 0 ) goto label$732;
		{
			VA$1 = *(struct $6IRVREG**)((uint8*)V1$1 + 56);
			int32 vr$59 = (*(tmp$83*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 4))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), VA$1, V1$1, *(uint32*)((uint8*)SYMB_DTYPETB$ + 228) );
			*(int32*)((uint8*)VA$1 + 12) = vr$59;
			*($15IRVREGTYPE_ENUM*)VA$1 = 4;
			V1_DTYPE$1 = 8;
		}
		label$732:;
		label$731:;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$733;
		TMP$169$2 = 24;
		goto label$889;
		label$733:;
		TMP$169$2 = V1_DTYPE$1 & 31;
		label$889:;
		int32 vr$68 = (*(tmp$83*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))) + 4))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$169$2 * 28)) + 4) );
		*(int32*)((uint8*)V1$1 + 12) = vr$68;
		*($15IRVREGTYPE_ENUM*)V1$1 = 4;
	}
	label$724:;
	EMITLOAD( V1$1, V2$1 );
	if( REUSE$1 != 0 ) goto label$735;
	{
		HFREEREG( V2$1, 0 );
	}
	goto label$734;
	label$735:;
	{
		*(int32*)((uint8*)V2$1 + 12) = -1;
	}
	label$734:;
	HFREEREG( V1$1, 0 );
	label$691:;
}

static void HFLUSHADDR( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$736:;
	static int32 V1_TYP$1;
	static int32 V1_DTYPE$1;
	static int32 V1_DCLASS$1;
	static int32 VR_TYP$1;
	static int32 VR_DTYPE$1;
	static int32 VR_DCLASS$1;
	if( V1$1 == (struct $6IRVREG*)0u ) goto label$739;
	{
		int32 TMP$170$2;
		V1_TYP$1 = *(int32*)V1$1;
		if( (*(int32*)((uint8*)V1$1 + 4) & 480) == 0 ) goto label$740;
		TMP$170$2 = 24;
		goto label$890;
		label$740:;
		TMP$170$2 = *(int32*)((uint8*)V1$1 + 4) & 31;
		label$890:;
		V1_DTYPE$1 = TMP$170$2;
		if( V1_DTYPE$1 != 24 ) goto label$742;
		{
			V1_DTYPE$1 = 12;
		}
		label$742:;
		label$741:;
		V1_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (V1_DTYPE$1 * 28));
	}
	goto label$738;
	label$739:;
	{
		V1_TYP$1 = -1;
		V1_DTYPE$1 = -2147483648u;
		V1_DCLASS$1 = -1;
	}
	label$738:;
	if( VR$1 == (struct $6IRVREG*)0u ) goto label$744;
	{
		int32 TMP$171$2;
		VR_TYP$1 = *(int32*)VR$1;
		if( (*(int32*)((uint8*)VR$1 + 4) & 480) == 0 ) goto label$745;
		TMP$171$2 = 24;
		goto label$891;
		label$745:;
		TMP$171$2 = *(int32*)((uint8*)VR$1 + 4) & 31;
		label$891:;
		VR_DTYPE$1 = TMP$171$2;
		if( VR_DTYPE$1 != 24 ) goto label$747;
		{
			VR_DTYPE$1 = 12;
		}
		label$747:;
		label$746:;
		VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (VR_DTYPE$1 * 28));
	}
	goto label$743;
	label$744:;
	{
		VR_TYP$1 = -1;
		VR_DTYPE$1 = -2147483648u;
		VR_DCLASS$1 = -1;
	}
	label$743:;
	HLOADIDX( V1$1 );
	HLOADIDX( VR$1 );
	if( V1_TYP$1 != 4 ) goto label$749;
	{
		int32 TMP$172$2;
		if( (V1_DTYPE$1 & 480) == 0 ) goto label$750;
		TMP$172$2 = 24;
		goto label$892;
		label$750:;
		TMP$172$2 = V1_DTYPE$1 & 31;
		label$892:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (V1_DCLASS$1 << (2 & 31))), V1$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$172$2 * 28)) + 4) );
	}
	label$749:;
	label$748:;
	if( VR_TYP$1 != 4 ) goto label$752;
	{
		int32 TMP$173$2;
		if( (VR_DTYPE$1 & 480) == 0 ) goto label$753;
		TMP$173$2 = 24;
		goto label$893;
		label$753:;
		TMP$173$2 = VR_DTYPE$1 & 31;
		label$893:;
		(*(tmp$83*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), VR$1, (struct $6IRVREG*)0u, *(uint32*)(((uint8*)SYMB_DTYPETB$ + (TMP$173$2 * 28)) + 4) );
	}
	label$752:;
	label$751:;
	{
		if( OP$1 != 22 ) goto label$755;
		label$756:;
		{
			EMITADDROF( VR$1, V1$1 );
		}
		goto label$754;
		label$755:;
		if( OP$1 != 76 ) goto label$757;
		label$758:;
		{
			EMITDEREF( VR$1, V1$1 );
		}
		label$757:;
		label$754:;
	}
	HFREEREG( V1$1, 0 );
	HFREEREG( VR$1, 0 );
	label$737:;
}

static void HFLUSHMEM( int32 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int32 BYTES$1, void* EXTRA$1 )
{
	label$759:;
	HLOADIDX( V1$1 );
	HLOADIDX( V2$1 );
	{
		uint32 TMP$174$2;
		TMP$174$2 = (uint32)OP$1;
		goto label$762;
		label$763:;
		{
			EMITMEMMOVE( V1$1, V2$1, BYTES$1 );
		}
		goto label$761;
		label$764:;
		{
			EMITMEMSWAP( V1$1, V2$1, BYTES$1 );
		}
		goto label$761;
		label$765:;
		{
			EMITMEMCLEAR( V1$1, V2$1 );
		}
		goto label$761;
		label$766:;
		{
			EMITSTKCLEAR( BYTES$1, (int32)EXTRA$1 );
		}
		goto label$761;
		label$762:;
		static const void* tmp$183[4] = {
			&&label$763,
			&&label$764,
			&&label$765,
			&&label$766,
		};
		if( (TMP$174$2 - 105u) > 3u ) goto label$761;
		goto *tmp$183[TMP$174$2 - 105u];
		label$761:;
	}
	HFREEREG( V1$1, 0 );
	HFREEREG( V2$1, 0 );
	label$760:;
}

static void HFLUSHDBG( int32 OP$1, struct $8FBSYMBOL* PROC$1, int32 EX$1, uint8* FILENAME$1 )
{
	label$767:;
	{
		uint32 TMP$175$2;
		TMP$175$2 = (uint32)OP$1;
		goto label$770;
		label$771:;
		{
			EMITDBGLINEBEGIN( PROC$1, EX$1, FILENAME$1 );
		}
		goto label$769;
		label$772:;
		{
			EMITDBGLINEEND( PROC$1, EX$1 );
		}
		goto label$769;
		label$773:;
		{
			EMITDBGSCOPEBEGIN( (struct $8FBSYMBOL*)EX$1 );
		}
		goto label$769;
		label$774:;
		{
			EMITDBGSCOPEEND( (struct $8FBSYMBOL*)EX$1 );
		}
		goto label$769;
		label$770:;
		static const void* tmp$184[4] = {
			&&label$771,
			&&label$772,
			&&label$773,
			&&label$774,
		};
		if( (TMP$175$2 - 113u) > 3u ) goto label$769;
		goto *tmp$184[TMP$175$2 - 113u];
		label$769:;
	}
	label$768:;
}

static void HFLUSHLIT( int32 OP$1, uint8* TEXT$1 )
{
	label$775:;
	{
		if( OP$1 != 117 ) goto label$778;
		label$779:;
		{
			EMITCOMMENT( TEXT$1 );
		}
		goto label$777;
		label$778:;
		if( OP$1 != 118 ) goto label$780;
		label$781:;
		{
			EMITASM( TEXT$1 );
		}
		label$780:;
		label$777:;
	}
	if( TEXT$1 == (uint8*)0u ) goto label$783;
	{
		free( (void*)TEXT$1 );
	}
	label$783:;
	label$782:;
	label$776:;
}

static void HFREEIDX( struct $6IRVREG* VREG$1, int32 FORCE$1 )
{
	label$784:;
	struct $6IRVREG* VIDX$1;
	__builtin_memset( &VIDX$1, 0, 4 );
	if( VREG$1 != (struct $6IRVREG*)0u ) goto label$787;
	{
		goto label$785;
	}
	label$787:;
	label$786:;
	VIDX$1 = *(struct $6IRVREG**)((uint8*)VREG$1 + 52);
	if( VIDX$1 == (struct $6IRVREG*)0u ) goto label$789;
	{
		if( *(int32*)((uint8*)VIDX$1 + 12) == -1 ) goto label$791;
		{
			HFREEREG( VIDX$1, FORCE$1 );
			*(struct $6IRVREG**)((uint8*)VREG$1 + 52) = (struct $6IRVREG*)0u;
		}
		label$791:;
		label$790:;
	}
	label$789:;
	label$788:;
	label$785:;
}

static void HFREEREG( struct $6IRVREG* VREG$1, int32 FORCE$1 )
{
	label$792:;
	int32 DCLASS$1;
	__builtin_memset( &DCLASS$1, 0, 4 );
	int32 DIST$1;
	__builtin_memset( &DIST$1, 0, 4 );
	struct $6IRVREG* VAUX$1;
	__builtin_memset( &VAUX$1, 0, 4 );
	if( VREG$1 != (struct $6IRVREG*)0u ) goto label$795;
	{
		goto label$793;
	}
	label$795:;
	label$794:;
	HFREEIDX( VREG$1, FORCE$1 );
	if( *(int32*)VREG$1 == 4 ) goto label$797;
	{
		goto label$793;
	}
	label$797:;
	label$796:;
	if( *(int32*)((uint8*)VREG$1 + 12) != -1 ) goto label$799;
	{
		goto label$793;
	}
	label$799:;
	label$798:;
	DIST$1 = 2147483647;
	if( FORCE$1 != 0 ) goto label$801;
	{
		uint32 vr$5 = (*(tmp$76*)((uint8*)&IR$ + 260))( VREG$1 );
		DIST$1 = (int32)vr$5;
	}
	label$801:;
	label$800:;
	if( DIST$1 != 2147483647 ) goto label$803;
	{
		int32 TMP$176$2;
		if( *(struct $6IRVREG**)((uint8*)VREG$1 + 56) == (struct $6IRVREG*)0u ) goto label$805;
		{
			VAUX$1 = *(struct $6IRVREG**)((uint8*)VREG$1 + 56);
			if( *(int32*)((uint8*)VAUX$1 + 12) == -1 ) goto label$807;
			{
				HFREEREG( VAUX$1, -1 );
			}
			label$807:;
			label$806:;
		}
		label$805:;
		label$804:;
		if( (*(int32*)((uint8*)VREG$1 + 4) & 480) == 0 ) goto label$808;
		TMP$176$2 = 24;
		goto label$894;
		label$808:;
		TMP$176$2 = *(int32*)((uint8*)VREG$1 + 4) & 31;
		label$894:;
		DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$176$2 * 28));
		(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))) + 12))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (DCLASS$1 << (2 & 31))), *(int32*)((uint8*)VREG$1 + 12) );
		*(int32*)((uint8*)VREG$1 + 12) = -1;
	}
	label$803:;
	label$802:;
	label$793:;
}

static uint32 _GETDISTANCE( struct $6IRVREG* VREG$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$809:;
	struct $6IRVREG* V$1;
	__builtin_memset( &V$1, 0, 4 );
	struct $5IRTAC* T$1;
	__builtin_memset( &T$1, 0, 4 );
	int32 DIST$1;
	__builtin_memset( &DIST$1, 0, 4 );
	if( VREG$1 != (struct $6IRVREG*)0u ) goto label$812;
	{
		fb$result$1 = 2147483647u;
		goto label$810;
	}
	label$812:;
	label$811:;
	void* vr$4 = FLISTGETNEXT( *(void**)((uint8*)&CTX$ + 60) );
	T$1 = (struct $5IRTAC*)vr$4;
	if( T$1 != (struct $5IRTAC*)0u ) goto label$814;
	{
		fb$result$1 = 2147483647u;
		goto label$810;
	}
	label$814:;
	label$813:;
	DIST$1 = *(int32*)*(struct $5IRTAC**)((uint8*)VREG$1 + 68) - *(int32*)T$1;
	if( DIST$1 >= 0 ) goto label$816;
	{
		fb$result$1 = 2147483647u;
	}
	goto label$815;
	label$816:;
	{
		fb$result$1 = (uint32)DIST$1;
	}
	label$815:;
	label$810:;
	return fb$result$1;
}

static void _LOADVR( int32 REG$1, struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	label$817:;
	struct $6IRVREG RVREG$1;
	__builtin_memset( &RVREG$1, 0, 72 );
	if( *(int32*)VREG$1 == 4 ) goto label$820;
	{
		if( VAUXPARENT$1 != (struct $6IRVREG*)0u ) goto label$822;
		{
			*($15IRVREGTYPE_ENUM*)&RVREG$1 = 4;
			*($11FB_DATATYPE*)((uint8*)&RVREG$1 + 4) = *($11FB_DATATYPE*)((uint8*)VREG$1 + 4);
			*(int32*)((uint8*)&RVREG$1 + 12) = REG$1;
			*(struct $6IRVREG**)((uint8*)&RVREG$1 + 56) = *(struct $6IRVREG**)((uint8*)VREG$1 + 56);
			*($12IR_REGFAMILY*)((uint8*)&RVREG$1 + 16) = *($12IR_REGFAMILY*)((uint8*)VREG$1 + 16);
			EMITLOAD( &RVREG$1, VREG$1 );
		}
		label$822:;
		label$821:;
		HFREEIDX( VREG$1, -1 );
		*($15IRVREGTYPE_ENUM*)VREG$1 = 4;
	}
	label$820:;
	label$819:;
	*(int32*)((uint8*)VREG$1 + 12) = REG$1;
	if( (-(*(int32*)((uint8*)&ENV$ + 116) >= 1) & -(VAUXPARENT$1 != (struct $6IRVREG*)0u)) == 0 ) goto label$824;
	{
		*($12IR_REGFAMILY*)((uint8*)VREG$1 + 16) = 1;
	}
	label$824:;
	label$823:;
	label$818:;
}

static void _STOREVR( struct $6IRVREG* VREG$1, struct $6IRVREG* VAUXPARENT$1 )
{
	int32 TMP$177$1;
	label$825:;
	struct $6IRVREG ORIGVREG$1;
	struct $6IRVREG ORIGVAUX$1;
	int32 VR_DCLASS$1;
	if( VAUXPARENT$1 == (struct $6IRVREG*)0u ) goto label$828;
	{
		VREG$1 = VAUXPARENT$1;
	}
	label$828:;
	label$827:;
	__builtin_memcpy( &ORIGVREG$1, VREG$1, 72 );
	if( (-(*(int32*)((uint8*)VREG$1 + 4) == 13) | -(*(int32*)((uint8*)VREG$1 + 4) == 14)) == 0 ) goto label$830;
	{
		__builtin_memcpy( &ORIGVAUX$1, *(struct $6IRVREG**)((uint8*)VREG$1 + 56), 72 );
		*(struct $6IRVREG**)((uint8*)&ORIGVREG$1 + 56) = &ORIGVAUX$1;
	}
	label$830:;
	label$829:;
	uint32 vr$9 = (*(tmp$76*)((uint8*)&IR$ + 260))( VREG$1 );
	if( vr$9 == 2147483647u ) goto label$832;
	{
		*($15IRVREGTYPE_ENUM*)VREG$1 = 1;
		struct $8FBSYMBOL* vr$12 = SYMBADDANDALLOCATETEMPVAR( *(int32*)((uint8*)VREG$1 + 4) );
		*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) = vr$12;
		*(int64*)((uint8*)VREG$1 + 40) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 32) + 48);
		*(int32*)((uint8*)VREG$1 + 12) = -1;
		if( (-(*(int32*)((uint8*)VREG$1 + 4) == 13) | -(*(int32*)((uint8*)VREG$1 + 4) == 14)) == 0 ) goto label$834;
		{
			*(int32*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 12) = -1;
			*($15IRVREGTYPE_ENUM*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) = 1;
			*(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 56) + 40) = *(int64*)((uint8*)VREG$1 + 40) + 4ll;
		}
		label$834:;
		label$833:;
		if( *(int32*)((uint8*)&ENV$ + 116) < 1 ) goto label$836;
		{
			*($12IR_REGFAMILY*)((uint8*)VREG$1 + 16) = 1;
		}
		label$836:;
		label$835:;
		EMITSTORE( VREG$1, &ORIGVREG$1 );
	}
	label$832:;
	label$831:;
	if( (-(*(int32*)((uint8*)&ORIGVREG$1 + 4) == 13) | -(*(int32*)((uint8*)&ORIGVREG$1 + 4) == 14)) == 0 ) goto label$838;
	{
		(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)REGTB$ + 12))( *(struct $8REGCLASS**)REGTB$, *(int32*)((uint8*)&ORIGVAUX$1 + 12) );
	}
	label$838:;
	label$837:;
	if( (*(int32*)((uint8*)&ORIGVREG$1 + 4) & 480) == 0 ) goto label$839;
	TMP$177$1 = 24;
	goto label$895;
	label$839:;
	TMP$177$1 = *(int32*)((uint8*)&ORIGVREG$1 + 4) & 31;
	label$895:;
	VR_DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$177$1 * 28));
	(*(tmp$85*)((uint8*)*(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))) + 12))( *(struct $8REGCLASS**)((uint8*)REGTB$ + (VR_DCLASS$1 << (2 & 31))), *(int32*)((uint8*)&ORIGVREG$1 + 12) );
	label$826:;
}

static void _XCHGTOS( int32 REG$1 )
{
	label$840:;
	static struct $6IRVREG RVREG$1;
	*($15IRVREGTYPE_ENUM*)&RVREG$1 = 4;
	*($11FB_DATATYPE*)((uint8*)&RVREG$1 + 4) = 16;
	*(int32*)((uint8*)&RVREG$1 + 12) = REG$1;
	EMITXCHGTOS( &RVREG$1 );
	label$841:;
}
