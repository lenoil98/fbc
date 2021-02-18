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
typedef int32 $9FB_ERRMSG;
typedef int32 (*tmp$40)( int32, int32 );
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
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
int32 fb_SGNi( int32 );
int32 fb_SGNDouble( double );
double fb_FIXDouble( double );
double fb_FRACd( double );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezuop( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ASTDELNODE( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
void ASTUPDATECONVFD2FS( struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTCONVERTRAWCONSTI( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOAD( struct $7ASTNODE* );
int32 ASTGETINVERSELOGOP( int32 );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
int32 ASTISRELATIONALBOP( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDUOPOVLPROC( $6AST_OP, struct $7ASTNODE*, $9FB_ERRMSG* );
int32 TYPETOSIGNED( int32 );
struct $7ASTNODE* RTLMATHUOP( int32, struct $7ASTNODE* );
static int64 HSGNLONGINT( int64 );
static struct $7ASTNODE* HCONSTUOP( int32, int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32 );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
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

struct $7ASTNODE* ASTNEWUOP( int32 OP$1, struct $7ASTNODE* O$1 )
{
	int32 TMP$89$1;
	int32 TMP$92$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$55:;
	struct $7ASTNODE* N$1;
	int32 DTYPE$1;
	int32 RANK$1;
	int32 INTRANK$1;
	int32 UINTRANK$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	int32 DO_PROMOTE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( O$1 != (struct $7ASTNODE*)0u ) goto label$58;
	{
		goto label$56;
	}
	label$58:;
	label$57:;
	if( *(struct $8FBSYMBOL**)((uint8*)((uint8*)&SYMB$ + (OP$1 << (2 & 31))) + 99128) == (struct $8FBSYMBOL*)0u ) goto label$60;
	{
		struct $8FBSYMBOL* PROC$2;
		$9FB_ERRMSG ERR_NUM$2;
		struct $8FBSYMBOL* vr$4 = SYMBFINDUOPOVLPROC( OP$1, O$1, &ERR_NUM$2 );
		PROC$2 = vr$4;
		if( PROC$2 == (struct $8FBSYMBOL*)0u ) goto label$62;
		{
			struct $7ASTNODE* vr$5 = ASTBUILDCALL( PROC$2, O$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
			fb$result$1 = vr$5;
			goto label$56;
		}
		goto label$61;
		label$62:;
		{
			if( ERR_NUM$2 == 0 ) goto label$64;
			{
				goto label$56;
			}
			label$64:;
			label$63:;
		}
		label$61:;
	}
	label$60:;
	label$59:;
	{
		if( OP$1 != 75 ) goto label$66;
		label$67:;
		{
			struct $7ASTNODE* vr$8 = ASTNEWNODE( 4, *(int32*)((uint8*)O$1 + 4), *(struct $8FBSYMBOL**)((uint8*)O$1 + 8) );
			N$1 = vr$8;
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = O$1;
			*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
			*(int32*)((uint8*)N$1 + 24) = OP$1;
			*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = (struct $8FBSYMBOL*)0u;
			*($9AST_OPOPT*)((uint8*)N$1 + 28) = 1;
			fb$result$1 = N$1;
			goto label$56;
		}
		goto label$65;
		label$66:;
		if( OP$1 != 73 ) goto label$68;
		label$69:;
		{
			goto label$56;
		}
		label$68:;
		label$65:;
	}
	if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$70;
	TMP$89$1 = 24;
	goto label$144;
	label$70:;
	TMP$89$1 = *(int32*)((uint8*)O$1 + 4) & 31;
	label$144:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$89$1 * 28)) != 2 ) goto label$72;
	{
		goto label$56;
	}
	label$72:;
	label$71:;
	{
		int32 TMP$90$2;
		uint32 TMP$91$2;
		if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$73;
		TMP$90$2 = 24;
		goto label$145;
		label$73:;
		TMP$90$2 = *(int32*)((uint8*)O$1 + 4) & 31;
		label$145:;
		TMP$91$2 = (uint32)TMP$90$2;
		goto label$75;
		label$76:;
		{
			if( *(int32*)O$1 == 20 ) goto label$78;
			{
				goto label$56;
			}
			label$78:;
			label$77:;
		}
		goto label$74;
		label$79:;
		{
			struct $7ASTNODE* vr$26 = ASTNEWCONV( *(int32*)((uint8*)O$1 + 4) & -512, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
			O$1 = vr$26;
			if( O$1 != (struct $7ASTNODE*)0u ) goto label$81;
			{
				goto label$56;
			}
			label$81:;
			label$80:;
		}
		goto label$74;
		label$82:;
		{
			struct $7ASTNODE* vr$30 = ASTNEWCONV( (*(int32*)((uint8*)O$1 + 4) & -512) | 8, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
			O$1 = vr$30;
		}
		goto label$74;
		label$83:;
		{
			if( OP$1 == 52 ) goto label$85;
			{
				goto label$56;
			}
			label$85:;
			label$84:;
		}
		goto label$74;
		label$75:;
		static const void* tmp$104[21] = {
			&&label$76,
			&&label$74,
			&&label$74,
			&&label$76,
			&&label$74,
			&&label$74,
			&&label$82,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$79,
			&&label$74,
			&&label$74,
			&&label$74,
			&&label$83,
		};
		if( (TMP$91$2 - 4u) > 20u ) goto label$74;
		goto *tmp$104[TMP$91$2 - 4u];
		label$74:;
	}
	if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$86;
	TMP$92$1 = 24;
	goto label$146;
	label$86:;
	TMP$92$1 = *(int32*)((uint8*)O$1 + 4) & 31;
	label$146:;
	DO_PROMOTE$1 = -(*(int32*)((uint8*)&ENV$ + 136) != 3) & -(*(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$92$1 * 28)) == 0);
	if( (*(int32*)((uint8*)O$1 + 4) & 511) != 1 ) goto label$88;
	{
		if( OP$1 != 52 ) goto label$90;
		{
			DO_PROMOTE$1 = 0;
		}
		goto label$89;
		label$90:;
		{
			goto label$56;
		}
		label$89:;
	}
	label$88:;
	label$87:;
	if( DO_PROMOTE$1 == 0 ) goto label$92;
	{
		int32 TMP$93$2;
		int32 TMP$94$2;
		int32 TMP$95$2;
		if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$93;
		TMP$93$2 = 24;
		goto label$147;
		label$93:;
		TMP$93$2 = *(int32*)((uint8*)O$1 + 4) & 31;
		label$147:;
		if( (*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$93$2 * 28)) + 16) & 480) == 0 ) goto label$95;
		TMP$95$2 = 24;
		goto label$148;
		label$95:;
		if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$94;
		TMP$94$2 = 24;
		goto label$149;
		label$94:;
		TMP$94$2 = *(int32*)((uint8*)O$1 + 4) & 31;
		label$149:;
		TMP$95$2 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$94$2 * 28)) + 16) & 31;
		label$148:;
		RANK$1 = *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$95$2 * 28)) + 12);
		INTRANK$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 236);
		UINTRANK$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + 264);
		if( RANK$1 >= INTRANK$1 ) goto label$97;
		{
			struct $7ASTNODE* vr$57 = ASTNEWCONV( (*(int32*)((uint8*)O$1 + 4) & -512) | 8, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
			O$1 = vr$57;
		}
		goto label$96;
		label$97:;
		{
			if( (-(INTRANK$1 < RANK$1) & -(RANK$1 < UINTRANK$1)) == 0 ) goto label$99;
			{
				struct $7ASTNODE* vr$64 = ASTNEWCONV( (*(int32*)((uint8*)O$1 + 4) & -512) | 9, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
				O$1 = vr$64;
			}
			label$99:;
			label$98:;
		}
		label$96:;
	}
	label$92:;
	label$91:;
	DTYPE$1 = *(int32*)((uint8*)O$1 + 4);
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 8);
	{
		uint32 TMP$96$2;
		TMP$96$2 = (uint32)OP$1;
		goto label$101;
		label$102:;
		{
			int32 TMP$97$3;
			if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$103;
			TMP$97$3 = 24;
			goto label$150;
			label$103:;
			TMP$97$3 = *(int32*)((uint8*)O$1 + 4) & 31;
			label$150:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$97$3 * 28)) == 0 ) goto label$105;
			{
				struct $7ASTNODE* vr$75 = ASTNEWCONV( (*(int32*)((uint8*)O$1 + 4) & -512) | 8, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
				O$1 = vr$75;
				DTYPE$1 = *(int32*)((uint8*)O$1 + 4);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 8);
			}
			label$105:;
			label$104:;
		}
		goto label$100;
		label$106:;
		{
			int32 TMP$98$3;
			if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$107;
			TMP$98$3 = 24;
			goto label$151;
			label$107:;
			TMP$98$3 = *(int32*)((uint8*)O$1 + 4) & 31;
			label$151:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$98$3 * 28)) != 0 ) goto label$109;
			{
				int32 vr$83 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$83;
			}
			label$109:;
			label$108:;
		}
		goto label$100;
		label$110:;
		{
			int32 TMP$99$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$111;
			TMP$99$3 = 24;
			goto label$152;
			label$111:;
			TMP$99$3 = DTYPE$1 & 31;
			label$152:;
			if( ~(*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$99$3 * 28)) + 8)) == 0 ) goto label$113;
			{
				if( *(int32*)O$1 != 16 ) goto label$115;
				{
					if( *(int32*)((uint8*)&AST$ + 232) != 0 ) goto label$117;
					{
						int32 TMP$100$6;
						if( (DTYPE$1 & 480) == 0 ) goto label$118;
						TMP$100$6 = 24;
						goto label$153;
						label$118:;
						TMP$100$6 = DTYPE$1 & 31;
						label$153:;
						if( *(uint64*)((uint8*)O$1 + 24) <= (1ull << (((*(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$100$6 * 28)) + 4) << (3 & 31)) + -1) & 63)) ) goto label$120;
						{
							ERRREPORTWARN( 5, (uint8*)0u, 1, (uint8*)0u );
						}
						label$120:;
						label$119:;
					}
					label$117:;
					label$116:;
				}
				label$115:;
				label$114:;
				int32 vr$96 = TYPETOSIGNED( DTYPE$1 );
				DTYPE$1 = vr$96;
			}
			label$113:;
			label$112:;
		}
		goto label$100;
		label$121:;
		{
			int32 TMP$101$3;
			if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$122;
			TMP$101$3 = 24;
			goto label$154;
			label$122:;
			TMP$101$3 = *(int32*)((uint8*)O$1 + 4) & 31;
			label$154:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$101$3 * 28)) == 1 ) goto label$124;
			{
				struct $7ASTNODE* vr$105 = ASTNEWCONV( (*(int32*)((uint8*)O$1 + 4) & -512) | 16, (struct $8FBSYMBOL*)0u, O$1, 0, (int32*)0u );
				O$1 = vr$105;
				DTYPE$1 = *(int32*)((uint8*)O$1 + 4);
				SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)O$1 + 8);
			}
			label$124:;
			label$123:;
		}
		goto label$100;
		label$125:;
		{
			int32 TMP$102$3;
			if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$126;
			TMP$102$3 = 24;
			goto label$155;
			label$126:;
			TMP$102$3 = *(int32*)((uint8*)O$1 + 4) & 31;
			label$155:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$102$3 * 28)) != 0 ) goto label$128;
			{
				struct $7ASTNODE* vr$113 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$114 = ASTNEWBOP( 28, O$1, vr$113, (struct $8FBSYMBOL*)0u, 1 );
				fb$result$1 = vr$114;
				goto label$56;
			}
			label$128:;
			label$127:;
		}
		goto label$100;
		label$129:;
		{
			int32 TMP$103$3;
			if( (*(int32*)((uint8*)O$1 + 4) & 480) == 0 ) goto label$130;
			TMP$103$3 = 24;
			goto label$156;
			label$130:;
			TMP$103$3 = *(int32*)((uint8*)O$1 + 4) & 31;
			label$156:;
			if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$103$3 * 28)) != 0 ) goto label$132;
			{
				struct $7ASTNODE* vr$120 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$121 = ASTNEWBOP( 34, O$1, vr$120, (struct $8FBSYMBOL*)0u, 1 );
				fb$result$1 = vr$121;
				goto label$56;
			}
			label$132:;
			label$131:;
		}
		goto label$100;
		label$133:;
		{
			fb$result$1 = O$1;
			goto label$56;
		}
		goto label$100;
		label$101:;
		static const void* tmp$105[21] = {
			&&label$102,
			&&label$133,
			&&label$110,
			&&label$100,
			&&label$100,
			&&label$106,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$121,
			&&label$100,
			&&label$121,
			&&label$100,
			&&label$100,
			&&label$121,
			&&label$121,
			&&label$125,
			&&label$125,
			&&label$129,
		};
		if( (TMP$96$2 - 52u) > 20u ) goto label$100;
		goto *tmp$105[TMP$96$2 - 52u];
		label$100:;
	}
	if( *(int32*)O$1 != 16 ) goto label$135;
	{
		struct $7ASTNODE* vr$123 = HCONSTUOP( OP$1, DTYPE$1, SUBTYPE$1, O$1 );
		O$1 = vr$123;
		*(int32*)((uint8*)O$1 + 4) = DTYPE$1;
		fb$result$1 = O$1;
		goto label$56;
	}
	label$135:;
	label$134:;
	if( OP$1 != 52 ) goto label$137;
	{
		int32 vr$125 = ASTISRELATIONALBOP( O$1 );
		if( vr$125 == 0 ) goto label$139;
		{
			int32 vr$127 = ASTGETINVERSELOGOP( *(int32*)((uint8*)O$1 + 24) );
			*(int32*)((uint8*)O$1 + 24) = vr$127;
			fb$result$1 = O$1;
			goto label$56;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	if( (*(int32*)((uint8*)&IR$ + 276) & 131072) == 0 ) goto label$141;
	{
		int32 vr$130 = (*(tmp$40*)((uint8*)&IR$ + 24))( OP$1, DTYPE$1 );
		if( vr$130 != 0 ) goto label$143;
		{
			struct $7ASTNODE* vr$131 = RTLMATHUOP( OP$1, O$1 );
			fb$result$1 = vr$131;
			goto label$56;
		}
		label$143:;
		label$142:;
	}
	label$141:;
	label$140:;
	struct $7ASTNODE* vr$132 = ASTNEWNODE( 4, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$132;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = O$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
	*(int32*)((uint8*)N$1 + 24) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = (struct $8FBSYMBOL*)0u;
	*($9AST_OPOPT*)((uint8*)N$1 + 28) = 1;
	fb$result$1 = N$1;
	label$56:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADUOP( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	struct $7ASTNODE* O$1;
	int32 OP$1;
	struct $6IRVREG* V1$1;
	struct $6IRVREG* VR$1;
	O$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	OP$1 = *(int32*)((uint8*)N$1 + 24);
	if( O$1 != (struct $7ASTNODE*)0u ) goto label$160;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$158;
	}
	label$160:;
	label$159:;
	if( *(int32*)O$1 != 5 ) goto label$162;
	{
		ASTUPDATECONVFD2FS( O$1, *(int32*)((uint8*)N$1 + 4), -1 );
	}
	label$162:;
	label$161:;
	struct $6IRVREG* vr$5 = ASTLOAD( O$1 );
	V1$1 = vr$5;
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$164;
	{
		if( (*(int32*)((uint8*)N$1 + 28) & 1) == 0 ) goto label$166;
		{
			struct $6IRVREG* vr$10 = (*(tmp$69*)((uint8*)&IR$ + 228))( *(int32*)((uint8*)O$1 + 4), *(struct $8FBSYMBOL**)((uint8*)O$1 + 8) );
			VR$1 = vr$10;
			*(int32*)((uint8*)V1$1 + 20) = *(int32*)((uint8*)N$1 + 16);
			*(int32*)((uint8*)VR$1 + 20) = *(int32*)((uint8*)N$1 + 16);
		}
		goto label$165;
		label$166:;
		{
			VR$1 = (struct $6IRVREG*)0u;
			*(int32*)((uint8*)V1$1 + 20) = *(int32*)((uint8*)N$1 + 16);
		}
		label$165:;
		(*(tmp$51*)((uint8*)&IR$ + 100))( OP$1, V1$1, VR$1 );
		if( VR$1 != (struct $6IRVREG*)0u ) goto label$168;
		{
			VR$1 = V1$1;
		}
		label$168:;
		label$167:;
	}
	label$164:;
	label$163:;
	ASTDELNODE( O$1 );
	fb$result$1 = VR$1;
	label$158:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	label$5:;
}

static int64 HSGNLONGINT( int64 X$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$10:;
	if( X$1 != 0ll ) goto label$13;
	{
		fb$result$1 = 0ll;
	}
	goto label$12;
	label$13:;
	if( X$1 <= 0ll ) goto label$14;
	{
		fb$result$1 = 1ll;
	}
	goto label$12;
	label$14:;
	{
		fb$result$1 = -1ll;
	}
	label$12:;
	label$11:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONSTUOP( int32 OP$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $7ASTNODE* L$1 )
{
	int32 TMP$84$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$15:;
	double D$1;
	int64 I$1;
	if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$17;
	TMP$84$1 = 24;
	goto label$169;
	label$17:;
	TMP$84$1 = *(int32*)((uint8*)L$1 + 4) & 31;
	label$169:;
	if( *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$84$1 * 28)) != 1 ) goto label$19;
	{
		D$1 = *(double*)((uint8*)L$1 + 24);
		{
			uint32 TMP$85$3;
			TMP$85$3 = (uint32)OP$1;
			goto label$21;
			label$22:;
			{
				D$1 = -D$1;
			}
			goto label$20;
			label$23:;
			{
				D$1 = __builtin_fabs( D$1 );
			}
			goto label$20;
			label$24:;
			{
				int32 vr$9 = fb_SGNDouble( D$1 );
				D$1 = (double)vr$9;
			}
			goto label$20;
			label$25:;
			{
				D$1 = __builtin_sin( D$1 );
			}
			goto label$20;
			label$26:;
			{
				D$1 = __builtin_asin( D$1 );
			}
			goto label$20;
			label$27:;
			{
				D$1 = __builtin_cos( D$1 );
			}
			goto label$20;
			label$28:;
			{
				D$1 = __builtin_acos( D$1 );
			}
			goto label$20;
			label$29:;
			{
				D$1 = __builtin_tan( D$1 );
			}
			goto label$20;
			label$30:;
			{
				D$1 = __builtin_atan( D$1 );
			}
			goto label$20;
			label$31:;
			{
				D$1 = __builtin_sqrt( D$1 );
			}
			goto label$20;
			label$32:;
			{
				D$1 = __builtin_log( D$1 );
			}
			goto label$20;
			label$33:;
			{
				D$1 = __builtin_exp( D$1 );
			}
			goto label$20;
			label$34:;
			{
				D$1 = __builtin_floor( D$1 );
			}
			goto label$20;
			label$35:;
			{
				double vr$21 = fb_FIXDouble( D$1 );
				D$1 = vr$21;
			}
			goto label$20;
			label$36:;
			{
				double vr$22 = fb_FRACd( D$1 );
				D$1 = vr$22;
			}
			goto label$20;
			label$37:;
			{
			}
			goto label$20;
			label$21:;
			static const void* tmp$106[19] = {
				&&label$22,
				&&label$37,
				&&label$23,
				&&label$24,
				&&label$25,
				&&label$26,
				&&label$27,
				&&label$28,
				&&label$29,
				&&label$30,
				&&label$37,
				&&label$31,
				&&label$37,
				&&label$37,
				&&label$32,
				&&label$33,
				&&label$34,
				&&label$35,
				&&label$36,
			};
			if( (TMP$85$3 - 54u) > 18u ) goto label$37;
			goto *tmp$106[TMP$85$3 - 54u];
			label$20:;
		}
		*(double*)((uint8*)L$1 + 24) = D$1;
	}
	goto label$18;
	label$19:;
	{
		int32 TMP$86$2;
		I$1 = *(int64*)((uint8*)L$1 + 24);
		if( (*(int32*)((uint8*)L$1 + 4) & 480) == 0 ) goto label$38;
		TMP$86$2 = 24;
		goto label$170;
		label$38:;
		TMP$86$2 = *(int32*)((uint8*)L$1 + 4) & 31;
		label$170:;
		if( *(int32*)(((uint8*)SYMB_DTYPETB$ + (TMP$86$2 * 28)) + 4) != 8 ) goto label$40;
		{
			{
				uint32 TMP$87$4;
				TMP$87$4 = (uint32)OP$1;
				goto label$42;
				label$43:;
				{
					I$1 = ~I$1;
				}
				goto label$41;
				label$44:;
				{
					I$1 = -I$1;
				}
				goto label$41;
				label$45:;
				{
					I$1 = __builtin_llabs( I$1 );
				}
				goto label$41;
				label$46:;
				{
					int64 vr$33 = HSGNLONGINT( I$1 );
					I$1 = vr$33;
				}
				goto label$41;
				label$47:;
				{
				}
				goto label$41;
				label$42:;
				static const void* tmp$107[6] = {
					&&label$43,
					&&label$47,
					&&label$44,
					&&label$47,
					&&label$45,
					&&label$46,
				};
				if( (TMP$87$4 - 52u) > 5u ) goto label$47;
				goto *tmp$107[TMP$87$4 - 52u];
				label$41:;
			}
		}
		goto label$39;
		label$40:;
		{
			{
				uint32 TMP$88$4;
				TMP$88$4 = (uint32)OP$1;
				goto label$49;
				label$50:;
				{
					I$1 = (int64)~(int32)I$1;
				}
				goto label$48;
				label$51:;
				{
					I$1 = (int64)-(int32)I$1;
				}
				goto label$48;
				label$52:;
				{
					I$1 = (int64)__builtin_abs( (int32)I$1 );
				}
				goto label$48;
				label$53:;
				{
					int32 vr$44 = fb_SGNi( (int32)I$1 );
					I$1 = (int64)vr$44;
				}
				goto label$48;
				label$54:;
				{
				}
				goto label$48;
				label$49:;
				static const void* tmp$108[6] = {
					&&label$50,
					&&label$54,
					&&label$51,
					&&label$54,
					&&label$52,
					&&label$53,
				};
				if( (TMP$88$4 - 52u) > 5u ) goto label$54;
				goto *tmp$108[TMP$88$4 - 52u];
				label$48:;
			}
		}
		label$39:;
		*(int64*)((uint8*)L$1 + 24) = I$1;
		struct $7ASTNODE* vr$47 = ASTCONVERTRAWCONSTI( DTYPE$1, SUBTYPE$1, L$1 );
		L$1 = vr$47;
	}
	label$18:;
	fb$result$1 = L$1;
	label$16:;
	return fb$result$1;
}
