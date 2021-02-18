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
typedef int64 $19EMIT_NODECLASS_ENUM;
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $11FB_DATATYPE;
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
typedef FBSTRING* (*tmp$28)( void*, int64* );
typedef uint32* (*tmp$29)( void*, int64* );
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
struct $12EMIT_BOPNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BOPNODE ) == 24 );
struct $12EMIT_UOPNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_UOPNODE ) == 16 );
struct $12EMIT_RELNODE {
	int64 OP;
	struct $6IRVREG* RVREG;
	struct $8FBSYMBOL* LABEL;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_RELNODE ) == 40 );
struct $12EMIT_STKNODE {
	int64 OP;
	struct $6IRVREG* VREG;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_STKNODE ) == 24 );
struct $12EMIT_BRCNODE {
	int64 OP;
	struct $6IRVREG* VREG;
	struct $8FBSYMBOL* SYM;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BRCNODE ) == 32 );
struct $12EMIT_SOPNODE {
	int64 OP;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_SOPNODE ) == 16 );
struct $12EMIT_LITNODE {
	int64 ISASM;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_LITNODE ) == 16 );
struct $12EMIT_JTBNODE {
	struct $8FBSYMBOL* TBSYM;
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int64 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_JTBNODE ) == 56 );
struct $12EMIT_MEMNODE {
	int64 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
	int64 BYTES;
	int64 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_MEMNODE ) == 40 );
struct $12EMIT_DBGNODE {
	int64 OP;
	struct $8FBSYMBOL* SYM;
	int64 LNUM;
	uint8* FILENAME;
	int64 POS;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_DBGNODE ) == 40 );
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
	int64 REGFREETB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_NODE ) == 80 );
struct $8REGCLASS;
typedef int64 (*tmp$83)( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint64 );
typedef int64 (*tmp$84)( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$85)( struct $8REGCLASS*, int64 );
typedef int64 (*tmp$86)( struct $8REGCLASS*, int64 );
typedef void (*tmp$87)( struct $8REGCLASS*, int64, struct $6IRVREG*, struct $6IRVREG* );
typedef int64 (*tmp$88)( struct $8REGCLASS* );
typedef struct $6IRVREG* (*tmp$89)( struct $8REGCLASS*, int64, struct $6IRVREG** );
typedef void (*tmp$90)( struct $8REGCLASS* );
struct $7REG_REG;
struct $7REG_REG {
	int64 NUM;
	struct $7REG_REG* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $7REG_REG ) == 16 );
typedef int64 $12REG_SIZEMASK;
struct $10REG_REGCTX {
	struct $7REG_REG* FREETAIL;
	struct $7REG_REG* USEDTAIL;
	int64 FREETB;
	struct $7REG_REG REGTB[8];
	$12REG_SIZEMASK SIZETB[8];
	uint64 NEXTTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_REGCTX ) == 280 );
struct $10REG_STKCTX {
	int64 REGTB[8];
	int64 FREGS;
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_STKCTX ) == 72 );
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
	int64 CLASS;
	int64 ISSTACK;
	int64 REGS;
	struct $6IRVREG* VREGTB[8];
	struct $6IRVREG* VAUXPARENT[8];
	struct $10REG_REGCTX REGCTX;
	struct $10REG_STKCTX STKCTX;
};
__FB_STATIC_ASSERT( sizeof( struct $8REGCLASS ) == 608 );
typedef uint8* (*tmp$102)( int64 );
typedef int64 (*tmp$38)( void );
typedef void (*tmp$37)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef void (*tmp$99)( int64, int64, int64*, int64* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$100)( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$101)( int64, int64 );
typedef uint8* (*tmp$103)( int64, int64 );
struct $9EMIT_VTBL {
	tmp$38 INIT;
	tmp$37 END;
	tmp$39 GETOPTIONVALUE;
	tmp$38 OPEN;
	tmp$37 CLOSE;
	tmp$40 ISREGPRESERVED;
	tmp$40 GETFREEPRESERVEDREG;
	tmp$99 GETRESULTREG;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCHEADER;
	tmp$100 PROCFOOTER;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$101 SETSECTION;
	tmp$102 GETTYPESTRING;
	tmp$103 GETSECTIONSTRING;
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_VTBL ) == 168 );
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
struct $7FBARRAYI12REG_SIZEMASKE {
	$12REG_SIZEMASK* DATA;
	$12REG_SIZEMASK* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI12REG_SIZEMASKE ) == 240 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
typedef int64 $10IR_SECTION;
struct $12EMITDATATYPE {
	int64 RNAMETB;
	uint8 MNAME[12];
};
__FB_STATIC_ASSERT( sizeof( struct $12EMITDATATYPE ) == 24 );
typedef int64 $6IR_OPT;
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FilePutStrLarge( int32, int64, void*, int64 );
int32 fb_FileFree( void );
int32 fb_FileKill( FBSTRING* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_HEX_l( uint64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
static void fb_ctor__emit_x86( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
int64 FBGETOPTION( int64 );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBMAKEPROFILELABELNAME( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int64, tmp$41 );
int64 HFILEEXISTS( uint8* );
FBSTRING* HFLOATTOHEX( double, int64 );
uint8* HESCAPE( uint8* );
uint8* HESCAPEW( uint32* );
struct $8REGCLASS* REGNEWCLASS( int64, int64, struct $7FBARRAYI12REG_SIZEMASKE*, int64 );
int64 REGDELCLASS( struct $8REGCLASS* );
void EMITVARINIOFS( uint8*, int64 );
void EMITWRITESTR( uint8*, int64 );
void EMITRESET( void );
void EMITFLUSH( void );
void EDBGINIT( void );
void EDBGEMITHEADER( uint8* );
void EDBGLINEBEGIN( struct $8FBSYMBOL*, int64, int64, uint8* );
void EDBGLINEEND( struct $8FBSYMBOL*, int64, int64 );
void EDBGEMITLINEFLUSH( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
void EDBGSCOPEBEGIN( struct $8FBSYMBOL* );
void EDBGSCOPEEND( struct $8FBSYMBOL* );
void EDBGEMITSCOPEINI( struct $8FBSYMBOL* );
void EDBGEMITSCOPEEND( struct $8FBSYMBOL* );
void EDBGPROCBEGIN( struct $8FBSYMBOL* );
void EDBGPROCEND( struct $8FBSYMBOL* );
void EDBGPROCEMITBEGIN( struct $8FBSYMBOL* );
void EDBGEMITPROCHEADER( struct $8FBSYMBOL* );
void EDBGEMITPROCFOOTER( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void EDBGEMITFOOTER( void );
void EDBGEMITGLOBALVAR( struct $8FBSYMBOL*, int64 );
void EDBGINCLUDE( uint8* );
void HPREPOPERAND( struct $6IRVREG*, FBSTRING*, $11FB_DATATYPE, int64, int64, int64 );
void HPREPOPERAND64( struct $6IRVREG*, FBSTRING*, FBSTRING* );
void HPUSH( uint8* );
void HPOP( uint8* );
int64 HFINDREGNOTINVREG( struct $6IRVREG*, int64 );
int64 HFINDFREEREG( int64 );
int64 HISREGFREE( int64, int64 );
int64 HISREGINVREG( struct $6IRVREG*, int64 );
uint8* HGETREGNAME( int64, int64 );
void OUTP( uint8* );
void HLABEL( uint8* );
void HBRANCH( uint8*, uint8* );
void HMOV( uint8*, uint8* );
int64 _INIT_OPFNTB_SSE( void** );
void IRHLFLUSHSTATICINITIALIZER( struct $8FBSYMBOL* );
static void HDECLVARIABLE( struct $8FBSYMBOL* );
static uint8* _GETSECTIONSTRING( int64, int64 );
static void _SETSECTION( int64, int64 );
static uint8* _GETTYPESTRING( int64 );
static uint8* HGETIDXNAME( struct $6IRVREG* );
static void OUTEX( uint8*, int64 );
static void HXCHG( uint8*, uint8* );
static void HPUBLIC( uint8*, int64 );
static void HALIGN( int64 );
static void HINITREGTB( void );
static void HENDREGTB( void );
static int64 HGETGLOBALTYPEALIGN( int64 );
static int64 HGETGLOBALVARALIGN( struct $8FBSYMBOL* );
static void HEMITVARBSS( struct $8FBSYMBOL* );
static void HWRITEHEADER( void );
static void HEMITVARCONST( struct $8FBSYMBOL* );
static void HWRITECTOR( struct $20FB_GLOBCTORLIST_ITEM*, int64 );
static void HEMITEXPORT( struct $8FBSYMBOL* );
static void HCLEARLOCALS( int64, int64 );
static int64 HFRAMEBYTESTOALLOC( struct $8FBSYMBOL* );
static void HCREATEFRAME( struct $8FBSYMBOL* );
static void HDESTROYFRAME( struct $8FBSYMBOL*, int64 );
static void _EMITLIT( uint8* );
static void _EMITJMPTB( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
static void _EMITCALL( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static void _EMITCALLPTR( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static void _EMITBRANCH( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static void _EMITJUMP( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static void _EMITJUMPPTR( struct $6IRVREG*, struct $8FBSYMBOL*, int64 );
static void _EMITRET( struct $6IRVREG* );
static void _EMITPUBLIC( struct $8FBSYMBOL* );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void _EMITNOP( void );
static void HULONG2DBL( struct $6IRVREG* );
static void _EMITSTORL2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMOVF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSUBF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMULF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDIVF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDIVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMODI( struct $6IRVREG*, struct $6IRVREG* );
static void HSHIFTL( int64, struct $6IRVREG*, struct $6IRVREG* );
static void HSHIFTI( int64, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHLL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHLI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHRL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSHRI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITANDL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITANDI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITORL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITORI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITXORL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITXORI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITEQVL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITEQVI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITIMPL( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITIMPI( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITATN2( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITPOW( struct $6IRVREG*, struct $6IRVREG* );
static void HCMPL( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, uint8*, uint8*, struct $6IRVREG*, struct $6IRVREG*, int64 );
static void HCMPI( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, struct $6IRVREG*, struct $6IRVREG* );
static void HCMPF( struct $6IRVREG*, struct $8FBSYMBOL*, uint8*, uint8*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGTF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLTF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCEQF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCNEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCLEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEL( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEI( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCGEF( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITNEGL( struct $6IRVREG* );
static void _EMITNEGI( struct $6IRVREG* );
static void _EMITNEGF( struct $6IRVREG* );
static void _EMITNOTL( struct $6IRVREG* );
static void _EMITNOTI( struct $6IRVREG* );
static void _EMITABSL( struct $6IRVREG* );
static void _EMITABSI( struct $6IRVREG* );
static void _EMITABSF( struct $6IRVREG* );
static void _EMITSGNL( struct $6IRVREG* );
static void _EMITSGNI( struct $6IRVREG* );
static void _EMITSGNF( struct $6IRVREG* );
static void _EMITSIN( struct $6IRVREG* );
static void _EMITASIN( struct $6IRVREG* );
static void _EMITCOS( struct $6IRVREG* );
static void _EMITACOS( struct $6IRVREG* );
static void _EMITTAN( struct $6IRVREG* );
static void _EMITATAN( struct $6IRVREG* );
static void _EMITSQRT( struct $6IRVREG* );
static void _EMITLOG( struct $6IRVREG* );
static void _EMITEXP( struct $6IRVREG* );
static void HFPUCHANGERC( FBSTRING*, uint8* );
static void HEMITFLOATFUNC( int64 );
static void _EMITFLOOR( struct $6IRVREG* );
static void _EMITFIX( struct $6IRVREG* );
static void _EMITFRAC( struct $6IRVREG* );
static void _EMITCONVFD2FS( struct $6IRVREG* );
static void _EMITXCHGTOS( struct $6IRVREG* );
static void _EMITSTACKALIGN( struct $6IRVREG*, int64 );
static void _EMITPUSHL( struct $6IRVREG*, int64 );
static void _EMITPUSHI( struct $6IRVREG*, int64 );
static void _EMITPUSHF( struct $6IRVREG*, int64 );
static void _EMITPUSHUDT( struct $6IRVREG*, int64 );
static void _EMITPOPL( struct $6IRVREG*, int64 );
static void _EMITPOPI( struct $6IRVREG*, int64 );
static void _EMITPOPF( struct $6IRVREG*, int64 );
static void _EMITPOPST0( void );
static void _EMITADDROF( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITDEREF( struct $6IRVREG*, struct $6IRVREG* );
static void HMEMMOVEREP( struct $6IRVREG*, struct $6IRVREG*, int64 );
static void HMEMMOVEBLK( struct $6IRVREG*, struct $6IRVREG*, int64 );
static void _EMITMEMMOVE( struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void _EMITMEMSWAP( struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void HMEMCLEARREPIMM( struct $6IRVREG*, uint32 );
static void HMEMCLEARBLKIMM( struct $6IRVREG*, uint32 );
static void HMEMCLEAR( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITMEMCLEAR( struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void _EMITSTKCLEAR( struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
static void _EMITLINEINI( struct $8FBSYMBOL*, int64, int64, uint8* );
static void _EMITLINEEND( struct $8FBSYMBOL*, int64, int64 );
static void _EMITSCOPEINI( struct $8FBSYMBOL*, int64, int64 );
static void _EMITSCOPEEND( struct $8FBSYMBOL*, int64, int64 );
static void _EMITLOADB2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2I( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADI2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORI2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADF2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORF2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2F( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADB2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORB2L( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITLOADL2B( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORL2B( struct $6IRVREG*, struct $6IRVREG* );
static int64 _INIT( void );
static void _END( void );
static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int64 _OPEN( void );
static void _CLOSE( void );
static uint8* _PROCGETFRAMEREGNAME( void );
static int64 _ISREGPRESERVED( int64, int64 );
static void _GETRESULTREG( int64, int64, int64*, int64* );
static int64 _GETFREEPRESERVEDREG( int64, int64 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _PROCALLOCLOCAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCALLOCARG( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCHEADER( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _PROCFOOTER( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
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
struct $7EMITCTX {
	int64 INITED;
	int64 POS;
	struct $8REGCLASS* REGTB[2];
	struct $6TFLIST NODETB;
	struct $6TFLIST VREGTB;
	struct $9EMIT_NODE* CURNODE;
	int64 REGUSEDTB[2];
	int64 LASTSECTION;
	int64 LASTPRIORITY;
	struct $9EMIT_VTBL VTBL;
	void** OPFNTB;
};
__FB_STATIC_ASSERT( sizeof( struct $7EMITCTX ) == 472 );
extern struct $7EMITCTX EMIT$;
struct $8FBARRAY1IPvE {
	void** DATA;
	void** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPvE ) == 72 );
static struct $8FBARRAY1IPvE tmp$104$;
extern struct $12EMITDATATYPE DTYPETB$[26];
static uint8 RNAMETB$[4][8][8] = { { "dl", "di", "si", "cl", "bl", "al", "bp", "sp" }, { "dx", "di", "si", "cx", "bx", "ax", "bp", "sp" }, { "edx", "edi", "esi", "ecx", "ebx", "eax", "ebp", "esp" }, { "st(0)", "st(1)", "st(2)", "st(3)", "st(4)", "st(5)", "st(6)", "st(7)" } };
static void* _OPFNTB$[143] = { (void*)&_EMITNOP, (void*)&_EMITLOADI2I, (void*)&_EMITLOADF2I, (void*)&_EMITLOADL2I, (void*)&_EMITLOADB2I, (void*)&_EMITLOADI2F, (void*)&_EMITLOADF2F, (void*)&_EMITLOADL2F, (void*)&_EMITLOADB2F, (void*)&_EMITLOADI2L, (void*)&_EMITLOADF2L, (void*)&_EMITLOADL2L, (void*)&_EMITLOADB2L, (void*)&_EMITLOADI2B, (void*)&_EMITLOADF2B, (void*)&_EMITLOADL2B, (void*)&_EMITLOADB2B, (void*)&_EMITSTORI2I, (void*)&_EMITSTORF2I, (void*)&_EMITSTORL2I, (void*)&_EMITSTORB2I, (void*)&_EMITSTORI2F, (void*)&_EMITSTORF2F, (void*)&_EMITSTORL2F, (void*)&_EMITSTORB2F, (void*)&_EMITSTORI2L, (void*)&_EMITSTORF2L, (void*)&_EMITSTORL2L, (void*)&_EMITSTORB2L, (void*)&_EMITSTORI2B, (void*)&_EMITSTORF2B, (void*)&_EMITSTORL2B, (void*)&_EMITSTORB2B, (void*)&_EMITMOVI, (void*)&_EMITMOVF, (void*)&_EMITMOVL, (void*)&_EMITADDI, (void*)&_EMITADDF, (void*)&_EMITADDL, (void*)&_EMITSUBI, (void*)&_EMITSUBF, (void*)&_EMITSUBL, (void*)&_EMITMULI, (void*)&_EMITMULF, (void*)&_EMITMULL, (void*)&_EMITDIVI, (void*)&_EMITDIVF, (void*)0ull, (void*)&_EMITMODI, (void*)0ull, (void*)0ull, (void*)&_EMITSHLI, (void*)&_EMITSHLL, (void*)&_EMITSHRI, (void*)&_EMITSHRL, (void*)&_EMITANDI, (void*)&_EMITANDL, (void*)&_EMITORI, (void*)&_EMITORL, (void*)&_EMITXORI, (void*)&_EMITXORL, (void*)&_EMITEQVI, (void*)&_EMITEQVL, (void*)&_EMITIMPI, (void*)&_EMITIMPL, (void*)&_EMITATN2, (void*)&_EMITPOW, (void*)&_EMITADDROF, (void*)&_EMITDEREF, (void*)&_EMITCGTI, (void*)&_EMITCGTF, (void*)&_EMITCGTL, (void*)&_EMITCLTI, (void*)&_EMITCLTF, (void*)&_EMITCLTL, (void*)&_EMITCEQI, (void*)&_EMITCEQF, (void*)&_EMITCEQL, (void*)&_EMITCNEI, (void*)&_EMITCNEF, (void*)&_EMITCNEL, (void*)&_EMITCGEI, (void*)&_EMITCGEF, (void*)&_EMITCGEL, (void*)&_EMITCLEI, (void*)&_EMITCLEF, (void*)&_EMITCLEL, (void*)&_EMITNEGI, (void*)&_EMITNEGF, (void*)&_EMITNEGL, (void*)&_EMITNOTI, (void*)&_EMITNOTL, (void*)0ull, (void*)&_EMITABSI, (void*)&_EMITABSF, (void*)&_EMITABSL, (void*)&_EMITSGNI, (void*)&_EMITSGNF, (void*)&_EMITSGNL, (void*)&_EMITFIX, (void*)&_EMITFRAC, (void*)&_EMITCONVFD2FS, (void*)0ull, (void*)&_EMITSIN, (void*)&_EMITASIN, (void*)&_EMITCOS, (void*)&_EMITACOS, (void*)&_EMITTAN, (void*)&_EMITATAN, (void*)&_EMITSQRT, (void*)0ull, (void*)0ull, (void*)&_EMITLOG, (void*)&_EMITEXP, (void*)&_EMITFLOOR, (void*)&_EMITXCHGTOS, (void*)&_EMITSTACKALIGN, (void*)&_EMITPUSHI, (void*)&_EMITPUSHF, (void*)&_EMITPUSHL, (void*)&_EMITPOPI, (void*)&_EMITPOPF, (void*)&_EMITPOPL, (void*)&_EMITPUSHUDT, (void*)&_EMITPOPST0, (void*)&_EMITCALL, (void*)&_EMITCALLPTR, (void*)&_EMITBRANCH, (void*)&_EMITJUMP, (void*)&_EMITJUMPPTR, (void*)&_EMITRET, (void*)&_EMITLABEL, (void*)&_EMITPUBLIC, (void*)&_EMITLIT, (void*)&_EMITJMPTB, (void*)&_EMITMEMMOVE, (void*)&_EMITMEMSWAP, (void*)&_EMITMEMCLEAR, (void*)&_EMITSTKCLEAR, (void*)&_EMITLINEINI, (void*)&_EMITLINEEND, (void*)&_EMITSCOPEINI, (void*)&_EMITSCOPEEND };
struct $12EMITDATATYPE DTYPETB$[26] = { { 0ll, "void ptr" }, { 0ll, "byte ptr" }, { 0ll, "byte ptr" }, { 0ll, "byte ptr" }, { 0ll, "byte ptr" }, { 1ll, "word ptr" }, { 1ll, "word ptr" }, { 1ll, "word ptr" }, { 2ll, "dword ptr" }, { 2ll, "dword ptr" }, { 2ll, "dword ptr" }, { 2ll, "dword ptr" }, { 2ll, "dword ptr" }, { 2ll, "qword ptr" }, { 2ll, "qword ptr" }, { 3ll, "dword ptr" }, { 3ll, "qword ptr" }, { 0ll, "" }, { 0ll, "byte ptr" }, { 0ll, "dword ptr" }, { 2ll, "dword ptr" }, { 0ll, "" }, { 2ll, "dword ptr" }, { 0ll, "byte ptr" }, { 2ll, "dword ptr" }, { 3ll, "xmmword ptr" } };

int64 HISREGFREE( int64 DCLASS$1, int64 REG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( DCLASS$1 != 0ll ) goto label$13;
	{
		{
			if( REG$1 == 4ll ) goto label$16;
			label$17:;
			if( REG$1 == 2ll ) goto label$16;
			label$18:;
			if( REG$1 != 1ll ) goto label$15;
			label$16:;
			{
				if( (*(int64*)((uint8*)&EMIT$ + 264ll) & (1ll << (REG$1 & 63ll))) != 0ll ) goto label$20;
				{
					fb$result$1 = 0ll;
					goto label$11;
				}
				label$20:;
				label$19:;
			}
			label$15:;
			label$14:;
		}
	}
	label$13:;
	label$12:;
	*(int64*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 264ll) = *(int64*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 264ll) | (1ll << (REG$1 & 63ll));
	fb$result$1 = (int64)-((*(int64*)((uint8*)((uint8*)*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 256ll) + (DCLASS$1 << (3ll & 63ll))) + 64ll) & (1ll << (REG$1 & 63ll))) != 0ll);
	label$11:;
	return fb$result$1;
}

int64 HFINDREGNOTINVREG( struct $6IRVREG* VREG$1, int64 NOSIDI$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$21:;
	int64 R$1;
	int64 REG$1;
	int64 REG2$1;
	int64 REGS$1;
	fb$result$1 = -1ll;
	REG$1 = -1ll;
	{
		$15IRVREGTYPE_ENUM TMP$142$2;
		TMP$142$2 = *($15IRVREGTYPE_ENUM*)VREG$1;
		if( TMP$142$2 != 4ll ) goto label$24;
		label$25:;
		{
			REG$1 = *(int64*)((uint8*)VREG$1 + 24ll);
		}
		goto label$23;
		label$24:;
		if( TMP$142$2 == 2ll ) goto label$27;
		label$28:;
		if( TMP$142$2 != 3ll ) goto label$26;
		label$27:;
		{
			if( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$30;
			{
				if( *(int64*)*(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) != 4ll ) goto label$32;
				{
					REG$1 = *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) + 24ll);
				}
				label$32:;
				label$31:;
			}
			label$30:;
			label$29:;
		}
		label$26:;
		label$23:;
	}
	REG2$1 = -1ll;
	if( *(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) == (struct $6IRVREG*)0ull ) goto label$34;
	{
		if( *(int64*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) != 4ll ) goto label$36;
		{
			REG2$1 = *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) + 24ll);
		}
		label$36:;
		label$35:;
	}
	label$34:;
	label$33:;
	int64 vr$13 = (*(tmp$88*)((uint8*)*(struct $8REGCLASS**)((uint8*)&EMIT$ + 16ll) + 48ll))( *(struct $8REGCLASS**)((uint8*)&EMIT$ + 16ll) );
	REGS$1 = vr$13;
	if( REG2$1 != -1ll ) goto label$38;
	{
		if( NOSIDI$1 != 0ll ) goto label$40;
		{
			{
				int64 R$4;
				R$4 = REGS$1 + -1ll;
				goto label$41;
				label$44:;
				{
					if( R$4 == REG$1 ) goto label$46;
					{
						fb$result$1 = R$4;
						int64 vr$16 = HISREGFREE( 0ll, R$4 );
						if( vr$16 == 0ll ) goto label$48;
						{
							goto label$43;
						}
						label$48:;
						label$47:;
					}
					label$46:;
					label$45:;
				}
				label$42:;
				R$4 = R$4 + -1ll;
				label$41:;
				if( R$4 >= 0ll ) goto label$44;
				label$43:;
			}
		}
		goto label$39;
		label$40:;
		{
			{
				int64 R$4;
				R$4 = REGS$1 + -1ll;
				goto label$49;
				label$52:;
				{
					if( R$4 == REG$1 ) goto label$54;
					{
						if( R$4 == 2ll ) goto label$56;
						{
							if( R$4 == 1ll ) goto label$58;
							{
								fb$result$1 = R$4;
								int64 vr$19 = HISREGFREE( 0ll, R$4 );
								if( vr$19 == 0ll ) goto label$60;
								{
									goto label$51;
								}
								label$60:;
								label$59:;
							}
							label$58:;
							label$57:;
						}
						label$56:;
						label$55:;
					}
					label$54:;
					label$53:;
				}
				label$50:;
				R$4 = R$4 + -1ll;
				label$49:;
				if( R$4 >= 0ll ) goto label$52;
				label$51:;
			}
		}
		label$39:;
	}
	goto label$37;
	label$38:;
	{
		if( NOSIDI$1 != 0ll ) goto label$62;
		{
			{
				int64 R$4;
				R$4 = REGS$1 + -1ll;
				goto label$63;
				label$66:;
				{
					if( ((int64)-(R$4 != REG$1) & (int64)-(R$4 != REG2$1)) == 0ll ) goto label$68;
					{
						fb$result$1 = R$4;
						int64 vr$25 = HISREGFREE( 0ll, R$4 );
						if( vr$25 == 0ll ) goto label$70;
						{
							goto label$65;
						}
						label$70:;
						label$69:;
					}
					label$68:;
					label$67:;
				}
				label$64:;
				R$4 = R$4 + -1ll;
				label$63:;
				if( R$4 >= 0ll ) goto label$66;
				label$65:;
			}
		}
		goto label$61;
		label$62:;
		{
			{
				R$1 = REGS$1 + -1ll;
				goto label$71;
				label$74:;
				{
					if( ((int64)-(R$1 != REG$1) & (int64)-(R$1 != REG2$1)) == 0ll ) goto label$76;
					{
						if( R$1 == 2ll ) goto label$78;
						{
							if( R$1 == 1ll ) goto label$80;
							{
								fb$result$1 = R$1;
								int64 vr$31 = HISREGFREE( 0ll, R$1 );
								if( vr$31 == 0ll ) goto label$82;
								{
									goto label$73;
								}
								label$82:;
								label$81:;
							}
							label$80:;
							label$79:;
						}
						label$78:;
						label$77:;
					}
					label$76:;
					label$75:;
				}
				label$72:;
				R$1 = R$1 + -1ll;
				label$71:;
				if( R$1 >= 0ll ) goto label$74;
				label$73:;
			}
		}
		label$61:;
	}
	label$37:;
	label$22:;
	return fb$result$1;
}

int64 HFINDFREEREG( int64 DCLASS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$83:;
	fb$result$1 = -1ll;
	{
		int64 R$2;
		int64 vr$3 = (*(tmp$88*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) + 48ll))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) );
		R$2 = vr$3 + -1ll;
		goto label$85;
		label$88:;
		{
			int64 vr$8 = HISREGFREE( DCLASS$1, R$2 );
			if( vr$8 == 0ll ) goto label$90;
			{
				fb$result$1 = R$2;
				goto label$84;
			}
			label$90:;
			label$89:;
		}
		label$86:;
		R$2 = R$2 + -1ll;
		label$85:;
		if( R$2 >= 0ll ) goto label$88;
		label$87:;
	}
	label$84:;
	return fb$result$1;
}

int64 HISREGINVREG( struct $6IRVREG* VREG$1, int64 REG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$91:;
	fb$result$1 = 0ll;
	{
		$15IRVREGTYPE_ENUM TMP$143$2;
		TMP$143$2 = *($15IRVREGTYPE_ENUM*)VREG$1;
		if( TMP$143$2 != 4ll ) goto label$94;
		label$95:;
		{
			if( *(int64*)((uint8*)VREG$1 + 24ll) != REG$1 ) goto label$97;
			{
				fb$result$1 = -1ll;
				goto label$92;
			}
			label$97:;
			label$96:;
		}
		goto label$93;
		label$94:;
		if( TMP$143$2 == 2ll ) goto label$99;
		label$100:;
		if( TMP$143$2 != 3ll ) goto label$98;
		label$99:;
		{
			if( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$102;
			{
				if( *(int64*)*(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) != 4ll ) goto label$104;
				{
					if( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) + 24ll) != REG$1 ) goto label$106;
					{
						fb$result$1 = -1ll;
						goto label$92;
					}
					label$106:;
					label$105:;
				}
				label$104:;
				label$103:;
			}
			label$102:;
			label$101:;
		}
		label$98:;
		label$93:;
	}
	if( *(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) == (struct $6IRVREG*)0ull ) goto label$108;
	{
		if( *(int64*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) != 4ll ) goto label$110;
		{
			if( *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) + 24ll) != REG$1 ) goto label$112;
			{
				fb$result$1 = -1ll;
				goto label$92;
			}
			label$112:;
			label$111:;
		}
		label$110:;
		label$109:;
	}
	label$108:;
	label$107:;
	label$92:;
	return fb$result$1;
}

uint8* HGETREGNAME( int64 DTYPE$1, int64 REG$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$113:;
	if( REG$1 != -1ll ) goto label$116;
	{
		fb$result$1 = (uint8*)0ull;
	}
	goto label$115;
	label$116:;
	{
		int64 TMP$144$2;
		int64 TB$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$117;
		TMP$144$2 = 24ll;
		goto label$118;
		label$117:;
		TMP$144$2 = DTYPE$1 & 31ll;
		label$118:;
		TB$2 = *(int64*)((uint8*)DTYPETB$ + (TMP$144$2 * 24ll));
		fb$result$1 = (uint8*)((uint8*)RNAMETB$ + (((TB$2 << (3ll & 63ll)) + REG$1) << (3ll & 63ll)));
	}
	label$115:;
	label$114:;
	return fb$result$1;
}

void HPREPOPERAND( struct $6IRVREG* VREG$1, FBSTRING* OPERAND$1, $11FB_DATATYPE DTYPE$1, int64 OFS$1, int64 ISAUX$1, int64 ADDPREFIX$1 )
{
	label$138:;
	if( VREG$1 != (struct $6IRVREG*)0ull ) goto label$141;
	{
		fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"", 1ll, 0 );
		goto label$139;
	}
	label$141:;
	label$140:;
	if( DTYPE$1 != 2147483648ll ) goto label$143;
	{
		DTYPE$1 = *($11FB_DATATYPE*)((uint8*)VREG$1 + 8ll);
	}
	label$143:;
	label$142:;
	{
		uint64 TMP$153$2;
		TMP$153$2 = *(uint64*)VREG$1;
		goto label$145;
		label$146:;
		{
			FBSTRING TMP$163$3;
			if( ADDPREFIX$1 == 0ll ) goto label$148;
			{
				FBSTRING TMP$155$4;
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)(((uint8*)DTYPETB$ + (DTYPE$1 * 24ll)) + 8ll), 12ll, 0 );
				__builtin_memset( &TMP$155$4, 0, 24ll );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$155$4, (void*)OPERAND$1, -1ll, (void*)" [", 3ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$6, -1ll, 0 );
			}
			goto label$147;
			label$148:;
			{
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"[", 2ll, 0 );
			}
			label$147:;
			static uint8* IDX_OP$3;
			if( *(int64*)VREG$1 != 1ll ) goto label$150;
			{
				uint8* vr$9 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) );
				IDX_OP$3 = vr$9;
			}
			goto label$149;
			label$150:;
			{
				uint8* vr$10 = HGETIDXNAME( VREG$1 );
				IDX_OP$3 = vr$10;
			}
			label$149:;
			if( IDX_OP$3 == (uint8*)0ull ) goto label$152;
			{
				FBSTRING TMP$157$4;
				__builtin_memset( &TMP$157$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$157$4, (void*)OPERAND$1, -1ll, (void*)IDX_OP$3, 0ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$13, -1ll, 0 );
			}
			label$152:;
			label$151:;
			OFS$1 = OFS$1 + *(int64*)((uint8*)VREG$1 + 64ll);
			if( ISAUX$1 == 0ll ) goto label$154;
			{
				OFS$1 = OFS$1 + 4ll;
			}
			label$154:;
			label$153:;
			if( OFS$1 <= 0ll ) goto label$156;
			{
				FBSTRING TMP$159$4;
				if( IDX_OP$3 == (uint8*)0ull ) goto label$158;
				{
					FBSTRING TMP$158$5;
					__builtin_memset( &TMP$158$5, 0, 24ll );
					FBSTRING* vr$19 = fb_StrConcat( &TMP$158$5, (void*)OPERAND$1, -1ll, (void*)"+", 2ll );
					fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$19, -1ll, 0 );
				}
				label$158:;
				label$157:;
				FBSTRING* vr$20 = fb_LongintToStr( OFS$1 );
				__builtin_memset( &TMP$159$4, 0, 24ll );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$159$4, (void*)OPERAND$1, -1ll, (void*)vr$20, -1ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$23, -1ll, 0 );
			}
			goto label$155;
			label$156:;
			if( OFS$1 >= 0ll ) goto label$159;
			{
				FBSTRING TMP$160$4;
				FBSTRING* vr$24 = fb_LongintToStr( OFS$1 );
				__builtin_memset( &TMP$160$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$160$4, (void*)OPERAND$1, -1ll, (void*)vr$24, -1ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$27, -1ll, 0 );
			}
			goto label$155;
			label$159:;
			{
				if( IDX_OP$3 != (uint8*)0ull ) goto label$161;
				{
					FBSTRING TMP$161$5;
					__builtin_memset( &TMP$161$5, 0, 24ll );
					FBSTRING* vr$30 = fb_StrConcat( &TMP$161$5, (void*)OPERAND$1, -1ll, (void*)"0", 2ll );
					fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$30, -1ll, 0 );
				}
				label$161:;
				label$160:;
			}
			label$155:;
			__builtin_memset( &TMP$163$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$163$3, (void*)OPERAND$1, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$33, -1ll, 0 );
		}
		goto label$144;
		label$162:;
		{
			FBSTRING TMP$165$3;
			fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"offset ", 8ll, 0 );
			uint8* vr$35 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) );
			__builtin_memset( &TMP$165$3, 0, 24ll );
			FBSTRING* vr$38 = fb_StrConcat( &TMP$165$3, (void*)OPERAND$1, -1ll, (void*)vr$35, 0ll );
			fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$38, -1ll, 0 );
			if( *(int64*)((uint8*)VREG$1 + 64ll) == 0ll ) goto label$164;
			{
				FBSTRING TMP$167$4;
				FBSTRING TMP$168$4;
				__builtin_memset( &TMP$167$4, 0, 24ll );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$167$4, (void*)OPERAND$1, -1ll, (void*)" + ", 4ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$42, -1ll, 0 );
				FBSTRING* vr$44 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 64ll) );
				__builtin_memset( &TMP$168$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$168$4, (void*)OPERAND$1, -1ll, (void*)vr$44, -1ll );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$47, -1ll, 0 );
			}
			label$164:;
			label$163:;
		}
		goto label$144;
		label$165:;
		{
			if( ISAUX$1 != 0ll ) goto label$167;
			{
				uint8* vr$49 = HGETREGNAME( DTYPE$1, *(int64*)((uint8*)VREG$1 + 24ll) );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$49, 0ll, 0 );
			}
			goto label$166;
			label$167:;
			{
				uint8* vr$52 = HGETREGNAME( DTYPE$1, *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) + 24ll) );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$52, 0ll, 0 );
			}
			label$166:;
		}
		goto label$144;
		label$168:;
		{
			static int64 I$3;
			if( ISAUX$1 != 0ll ) goto label$170;
			{
				I$3 = *(int64*)((uint8*)VREG$1 + 48ll);
			}
			goto label$169;
			label$170:;
			{
				I$3 = *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)VREG$1 + 88ll) + 48ll);
			}
			label$169:;
			if( DTYPE$1 != 1ll ) goto label$172;
			{
				if( I$3 == 0ll ) goto label$174;
				{
					fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"1", 2ll, 0 );
				}
				goto label$173;
				label$174:;
				{
					fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"0", 2ll, 0 );
				}
				label$173:;
			}
			goto label$171;
			label$172:;
			{
				FBSTRING* vr$56 = fb_LongintToStr( I$3 );
				fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)vr$56, -1ll, 0 );
			}
			label$171:;
		}
		goto label$144;
		label$175:;
		{
			fb_StrAssign( (void*)OPERAND$1, -1ll, (void*)"", 1ll, 0 );
		}
		goto label$144;
		label$145:;
		static const void* tmp$169[6ll] = {
			&&label$168,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$165,
			&&label$162,
		};
		if( TMP$153$2 > 5ull ) goto label$175;
		goto *tmp$169[TMP$153$2 - 0ull];
		label$144:;
	}
	label$139:;
}

void HPREPOPERAND64( struct $6IRVREG* VREG$1, FBSTRING* OPERAND1$1, FBSTRING* OPERAND2$1 )
{
	label$176:;
	HPREPOPERAND( VREG$1, OPERAND1$1, 9ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( VREG$1, OPERAND2$1, 8ll, 0ll, -1ll, -1ll );
	label$177:;
}

void OUTP( uint8* S$1 )
{
	label$184:;
	static FBSTRING OSTR$1;
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$187;
	{
		FBSTRING TMP$171$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"\x09", 2ll, 0 );
		__builtin_memset( &TMP$171$2, 0, 24ll );
		FBSTRING* vr$2 = fb_StrConcat( &TMP$171$2, (void*)&OSTR$1, -1ll, (void*)S$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	}
	goto label$186;
	label$187:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)S$1, 0ll, 0 );
	}
	label$186:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	int64 vr$3 = fb_StrLen( (void*)&OSTR$1, -1ll );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, vr$3 );
	label$185:;
}

void HBRANCH( uint8* MNEMONIC$1, uint8* LABEL$1 )
{
	FBSTRING TMP$174$1;
	label$188:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)MNEMONIC$1, 0ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)" ", 2ll, 0 );
	__builtin_memset( &TMP$174$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$174$1, (void*)&OSTR$1, -1ll, (void*)LABEL$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$189:;
}

void HPUSH( uint8* RNAME$1 )
{
	FBSTRING TMP$176$1;
	label$190:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
	__builtin_memset( &TMP$176$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$176$1, (void*)&OSTR$1, -1ll, (void*)RNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$191:;
}

void HPOP( uint8* RNAME$1 )
{
	FBSTRING TMP$178$1;
	label$192:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
	__builtin_memset( &TMP$178$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$178$1, (void*)&OSTR$1, -1ll, (void*)RNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$193:;
}

void HMOV( uint8* DNAME$1, uint8* SNAME$1 )
{
	FBSTRING TMP$180$1;
	FBSTRING TMP$181$1;
	label$194:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	__builtin_memset( &TMP$180$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$180$1, (void*)&OSTR$1, -1ll, (void*)DNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	__builtin_memset( &TMP$181$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$181$1, (void*)&OSTR$1, -1ll, (void*)SNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$5, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$195:;
}

void HLABEL( uint8* LABEL$1 )
{
	label$202:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)LABEL$1, 0ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)":\x0A", 3ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$203:;
}

void EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$1552:;
	_SETSECTION( 1ll, 0ll );
	EDBGEMITGLOBALVAR( SYM$1, 1ll );
	int64 vr$0 = HGETGLOBALVARALIGN( SYM$1 );
	HALIGN( vr$0 );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) == 0ll ) goto label$1555;
	{
		uint8* vr$6 = SYMBGETMANGLEDNAME( SYM$1 );
		HPUBLIC( vr$6, (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 256ll) != 0ll) );
	}
	label$1555:;
	label$1554:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( SYM$1 );
	HLABEL( vr$7 );
	label$1553:;
}

void EMITVARINII( int64 DTYPE$1, int64 VALUE$1 )
{
	FBSTRING TMP$923$1;
	label$1556:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	uint8* vr$1 = _GETTYPESTRING( DTYPE$1 );
	__builtin_memset( &TMP$923$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$923$1, (void*)vr$1, 0ll, (void*)" ", 2ll );
	fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$4, -1ll, 0 );
	if( ((int64)-(DTYPE$1 == 1ll) & (int64)-(VALUE$1 != 0ll)) == 0ll ) goto label$1559;
	{
		VALUE$1 = 1ll;
	}
	label$1559:;
	label$1558:;
	if( ((int64)-(DTYPE$1 == 13ll) | (int64)-(DTYPE$1 == 14ll)) == 0ll ) goto label$1561;
	{
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"0x", 3ll, 0 );
		FBSTRING* vr$13 = fb_HEX_l( (uint64)VALUE$1 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$13, -1ll, 0 );
	}
	goto label$1560;
	label$1561:;
	{
		FBSTRING* vr$15 = fb_LongintToStr( VALUE$1 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$15, -1ll, 0 );
	}
	label$1560:;
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&S$1, 0ll );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1557:;
}

void EMITVARINIF( int64 DTYPE$1, double VALUE$1 )
{
	FBSTRING TMP$925$1;
	FBSTRING TMP$926$1;
	FBSTRING TMP$927$1;
	FBSTRING TMP$928$1;
	label$1562:;
	__builtin_memset( &TMP$928$1, 0, 24ll );
	FBSTRING* vr$1 = HFLOATTOHEX( VALUE$1, DTYPE$1 );
	uint8* vr$2 = _GETTYPESTRING( DTYPE$1 );
	__builtin_memset( &TMP$925$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$925$1, (void*)vr$2, 0ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$926$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$926$1, (void*)vr$5, -1ll, (void*)vr$1, -1ll );
	__builtin_memset( &TMP$927$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$927$1, (void*)vr$8, -1ll, (void*)"\x0A", 2ll );
	fb_StrAssign( (void*)&TMP$928$1, -1ll, (void*)vr$11, -1ll, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$928$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$928$1 );
	label$1563:;
}

void EMITVARINIOFS( uint8* SNAME$1, int64 OFS$1 )
{
	FBSTRING TMP$930$1;
	label$1564:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)".int ", 6ll, 0 );
	__builtin_memset( &TMP$930$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$930$1, (void*)&OSTR$1, -1ll, (void*)SNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	if( OFS$1 == 0ll ) goto label$1567;
	{
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)" + ", 4ll, 0 );
		FBSTRING* vr$3 = fb_LongintToStr( OFS$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	}
	label$1567:;
	label$1566:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$1565:;
}

void EMITVARINISTR( uint8* S$1 )
{
	FBSTRING TMP$931$1;
	label$1568:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)".ascii \x22", 9ll, 0 );
	__builtin_memset( &TMP$931$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$931$1, (void*)&OSTR$1, -1ll, (void*)S$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x5C" "0\x22\x0A", 5ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$1569:;
}

void EMITVARINIWSTR( uint8* S$1 )
{
	FBSTRING TMP$933$1;
	label$1570:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)".ascii \x22", 9ll, 0 );
	__builtin_memset( &TMP$933$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$933$1, (void*)&OSTR$1, -1ll, (void*)S$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$934$2;
		TMP$934$2 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
		goto label$1572;
		label$1575:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x5C" "0", 3ll, 0 );
		}
		label$1573:;
		I$2 = I$2 + 1ll;
		label$1572:;
		if( I$2 <= TMP$934$2 ) goto label$1575;
		label$1574:;
	}
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x22\x0A", 3ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$1571:;
}

void EMITVARINIPAD( int64 BYTES$1 )
{
	FBSTRING TMP$937$1;
	FBSTRING TMP$938$1;
	FBSTRING TMP$939$1;
	FBSTRING TMP$940$1;
	label$1576:;
	__builtin_memset( &TMP$940$1, 0, 24ll );
	FBSTRING* vr$1 = fb_LongintToStr( BYTES$1 );
	__builtin_memset( &TMP$937$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$937$1, (void*)".skip ", 7ll, (void*)vr$1, -1ll );
	__builtin_memset( &TMP$938$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$938$1, (void*)vr$4, -1ll, (void*)",0", 3ll );
	__builtin_memset( &TMP$939$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$939$1, (void*)vr$7, -1ll, (void*)"\x0A", 2ll );
	fb_StrAssign( (void*)&TMP$940$1, -1ll, (void*)vr$10, -1ll, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$940$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$940$1 );
	label$1577:;
}

void EMITFBCTINFBEGIN( void )
{
	label$1578:;
	_SETSECTION( 7ll, 0ll );
	label$1579:;
}

void EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$943$1;
	FBSTRING TMP$944$1;
	FBSTRING TMP$945$1;
	label$1580:;
	static FBSTRING LN$1;
	uint8* vr$0 = (*(tmp$102*)((uint8*)&EMIT$ + 448ll))( 4ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$0, 0ll, 0 );
	__builtin_memset( &TMP$943$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$943$1, (void*)" \x22", 3ll, (void*)S$1, 0ll );
	__builtin_memset( &TMP$944$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$944$1, (void*)vr$3, -1ll, (void*)"\x5C" "0\x22", 4ll );
	__builtin_memset( &TMP$945$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$945$1, (void*)&LN$1, -1ll, (void*)vr$6, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$9, -1ll, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&LN$1, 0ll );
	label$1581:;
}

void EMITFBCTINFEND( void )
{
	label$1582:;
	EMITWRITESTR( (uint8*)"", 0ll );
	label$1583:;
}

int64 EMITGASX86_CTOR( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1724:;
	static struct $9EMIT_VTBL _VTBL$1 = { (tmp$38)&_INIT, (tmp$37)&_END, (tmp$39)&_GETOPTIONVALUE, (tmp$38)&_OPEN, (tmp$37)&_CLOSE, (tmp$40)&_ISREGPRESERVED, (tmp$40)&_GETFREEPRESERVEDREG, (tmp$99)&_GETRESULTREG, (tmp$43)&_PROCGETFRAMEREGNAME, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)&_PROCHEADER, (tmp$100)&_PROCFOOTER, (tmp$42)&_PROCALLOCARG, (tmp$42)&_PROCALLOCLOCAL, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$101)&_SETSECTION, (tmp$102)&_GETTYPESTRING, (tmp$103)&_GETSECTIONSTRING };
	__builtin_memcpy( (struct $9EMIT_VTBL*)((uint8*)&EMIT$ + 296ll), &_VTBL$1, 168 );
	*(void***)((uint8*)&EMIT$ + 464ll) = (void**)_OPFNTB$;
	if( *(int64*)((uint8*)&ENV$ + 232ll) < 1ll ) goto label$1727;
	{
		_INIT_OPFNTB_SSE( *(void***)((uint8*)&EMIT$ + 464ll) );
	}
	label$1727:;
	label$1726:;
	fb$result$1 = -1ll;
	label$1725:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__emit_x86( void )
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

static uint8* HGETIDXNAME( struct $6IRVREG* VREG$1 )
{
	FBSTRING TMP$147$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$119:;
	static uint8 INAME$1[154];
	static struct $8FBSYMBOL* SYM$1;
	static struct $6IRVREG* VI$1;
	static int64 ADDONE$1;
	static int64 MULT$1;
	static uint8* RNAME$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll);
	VI$1 = *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll);
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$122;
	{
		if( VI$1 != (struct $6IRVREG*)0ull ) goto label$124;
		{
			fb$result$1 = (uint8*)0ull;
			goto label$120;
		}
		label$124:;
		label$123:;
		fb_StrAssign( (void*)INAME$1, 154ll, (void*)"", 1ll, 0 );
	}
	goto label$121;
	label$122:;
	{
		uint8* vr$3 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$3, 0ll, 0 );
		if( VI$1 == (struct $6IRVREG*)0ull ) goto label$126;
		{
			FBSTRING TMP$146$3;
			__builtin_memset( &TMP$146$3, 0, 24ll );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$146$3, (void*)INAME$1, 154ll, (void*)"+", 2ll );
			fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$6, -1ll, 0 );
		}
		label$126:;
		label$125:;
	}
	label$121:;
	uint8* vr$9 = HGETREGNAME( *(int64*)((uint8*)VI$1 + 8ll), *(int64*)((uint8*)VI$1 + 24ll) );
	RNAME$1 = vr$9;
	__builtin_memset( &TMP$147$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$147$1, (void*)INAME$1, 154ll, (void*)RNAME$1, 0ll );
	fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$12, -1ll, 0 );
	if( VI$1 == (struct $6IRVREG*)0ull ) goto label$128;
	{
		MULT$1 = *(int64*)((uint8*)VREG$1 + 72ll);
		if( MULT$1 <= 1ll ) goto label$130;
		{
			FBSTRING TMP$149$3;
			FBSTRING TMP$150$3;
			ADDONE$1 = 0ll;
			{
				if( MULT$1 == 3ll ) goto label$133;
				label$134:;
				if( MULT$1 == 5ll ) goto label$133;
				label$135:;
				if( MULT$1 != 9ll ) goto label$132;
				label$133:;
				{
					MULT$1 = MULT$1 + -1ll;
					ADDONE$1 = -1ll;
				}
				label$132:;
				label$131:;
			}
			__builtin_memset( &TMP$149$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$149$3, (void*)INAME$1, 154ll, (void*)"*", 2ll );
			fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$17, -1ll, 0 );
			FBSTRING* vr$18 = fb_LongintToStr( MULT$1 );
			__builtin_memset( &TMP$150$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$150$3, (void*)INAME$1, 154ll, (void*)vr$18, -1ll );
			fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$21, -1ll, 0 );
			if( ADDONE$1 == 0ll ) goto label$137;
			{
				FBSTRING TMP$151$4;
				FBSTRING TMP$152$4;
				__builtin_memset( &TMP$151$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$151$4, (void*)INAME$1, 154ll, (void*)"+", 2ll );
				fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$24, -1ll, 0 );
				__builtin_memset( &TMP$152$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$152$4, (void*)INAME$1, 154ll, (void*)RNAME$1, 0ll );
				fb_StrAssign( (void*)INAME$1, 154ll, (void*)vr$27, -1ll, 0 );
			}
			label$137:;
			label$136:;
		}
		label$130:;
		label$129:;
	}
	label$128:;
	label$127:;
	fb$result$1 = (uint8*)INAME$1;
	label$120:;
	return fb$result$1;
}

static void OUTEX( uint8* S$1, int64 BYTES$1 )
{
	label$178:;
	if( BYTES$1 != 0ll ) goto label$181;
	{
		int64 vr$0 = fb_StrLen( (void*)S$1, 0ll );
		BYTES$1 = vr$0;
	}
	label$181:;
	label$180:;
	int32 vr$2 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)S$1, 0ll );
	if( (int64)vr$2 != 0ll ) goto label$183;
	{
	}
	label$183:;
	label$182:;
	label$179:;
}

static void HXCHG( uint8* DNAME$1, uint8* SNAME$1 )
{
	FBSTRING TMP$183$1;
	FBSTRING TMP$184$1;
	label$196:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg ", 6ll, 0 );
	__builtin_memset( &TMP$183$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$183$1, (void*)&OSTR$1, -1ll, (void*)DNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	__builtin_memset( &TMP$184$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$184$1, (void*)&OSTR$1, -1ll, (void*)SNAME$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$5, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$197:;
}

static void HPUBLIC( uint8* LABEL$1, int64 ISEXPORT$1 )
{
	FBSTRING TMP$190$1;
	label$200:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A.globl ", 9ll, 0 );
	__builtin_memset( &TMP$190$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$190$1, (void*)&OSTR$1, -1ll, (void*)LABEL$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$2, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$201:;
}

static void HALIGN( int64 BYTES$1 )
{
	label$204:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)".balign ", 9ll, 0 );
	FBSTRING* vr$0 = fb_LongintToStr( BYTES$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$0, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$205:;
}

static void HINITREGTB( void )
{
	label$206:;
	int64 LASTCLASS$1;
	__builtin_memset( &LASTCLASS$1, 0, 8ll );
	int64 REGS$1;
	__builtin_memset( &REGS$1, 0, 8ll );
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	static $12REG_SIZEMASK INT_BITSMASK$1[6] = { 7ll, 6ll, 6ll, 7ll, 7ll, 7ll };
	struct $8FBARRAY1I12REG_SIZEMASKE {
		$12REG_SIZEMASK* DATA;
		$12REG_SIZEMASK* PTR;
		int64 SIZE;
		int64 ELEMENT_LEN;
		int64 DIMENSIONS;
		int64 FLAGS;
		struct $16__FB_ARRAYDIMTB$ DIMTB[1];
	};
	__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I12REG_SIZEMASKE ) == 72 );
	static struct $8FBARRAY1I12REG_SIZEMASKE tmp$194$1 = { ($12REG_SIZEMASK*)INT_BITSMASK$1, ($12REG_SIZEMASK*)INT_BITSMASK$1, 48ll, 8ll, 1ll, 49ll, { { 6ll, 0ll, 5ll } } };
	struct $8REGCLASS* vr$3 = REGNEWCLASS( 0ll, 6ll, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$194$1, 0ll );
	*(struct $8REGCLASS**)((uint8*)&EMIT$ + 16ll) = vr$3;
	static $12REG_SIZEMASK FLT_BITSMASK$1[7] = { 12ll, 12ll, 12ll, 12ll, 12ll, 12ll, 12ll };
	static struct $8FBARRAY1I12REG_SIZEMASKE tmp$195$1 = { ($12REG_SIZEMASK*)FLT_BITSMASK$1, ($12REG_SIZEMASK*)FLT_BITSMASK$1, 56ll, 8ll, 1ll, 49ll, { { 7ll, 0ll, 6ll } } };
	if( *(int64*)((uint8*)&ENV$ + 232ll) != 1ll ) goto label$209;
	{
		struct $8REGCLASS* vr$4 = REGNEWCLASS( 1ll, 7ll, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$195$1, 0ll );
		*(struct $8REGCLASS**)((uint8*)&EMIT$ + 24ll) = vr$4;
		{
			I$1 = 0ll;
			label$213:;
			{
				FBSTRING TMP$197$4;
				FBSTRING* vr$5 = fb_LongintToStr( I$1 );
				__builtin_memset( &TMP$197$4, 0, 24ll );
				FBSTRING* vr$8 = fb_StrConcat( &TMP$197$4, (void*)"xmm", 4ll, (void*)vr$5, -1ll );
				fb_StrAssign( (void*)(((uint8*)RNAMETB$ + (I$1 << (3ll & 63ll))) + 192ll), 8ll, (void*)vr$8, -1ll, 0 );
			}
			label$211:;
			I$1 = I$1 + 1ll;
			label$210:;
			if( I$1 <= 7ll ) goto label$213;
			label$212:;
		}
	}
	goto label$208;
	label$209:;
	{
		struct $8REGCLASS* vr$12 = REGNEWCLASS( 1ll, 7ll, (struct $7FBARRAYI12REG_SIZEMASKE*)&tmp$195$1, -1ll );
		*(struct $8REGCLASS**)((uint8*)&EMIT$ + 24ll) = vr$12;
	}
	label$208:;
	label$207:;
}

static void HENDREGTB( void )
{
	label$214:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	{
		I$1 = 0ll;
		label$219:;
		{
			REGDELCLASS( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (I$1 << (3ll & 63ll))) + 16ll) );
		}
		label$217:;
		I$1 = I$1 + 1ll;
		label$216:;
		if( I$1 <= 1ll ) goto label$219;
		label$218:;
	}
	label$215:;
}

static int64 HGETGLOBALTYPEALIGN( int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$220:;
	if( DTYPE$1 != 16ll ) goto label$223;
	{
		fb$result$1 = 8ll;
	}
	goto label$222;
	label$223:;
	{
		fb$result$1 = 4ll;
	}
	label$222:;
	label$221:;
	return fb$result$1;
}

static int64 HGETGLOBALVARALIGN( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$224:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$227;
	{
		fb$result$1 = 4ll;
	}
	goto label$226;
	label$227:;
	{
		int64 vr$5 = HGETGLOBALTYPEALIGN( *(int64*)((uint8*)SYM$1 + 56ll) & 511ll );
		fb$result$1 = vr$5;
	}
	label$226:;
	label$225:;
	return fb$result$1;
}

static void HEMITVARBSS( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$200$1;
	label$228:;
	static FBSTRING ALLOC$1;
	static FBSTRING OSTR$1;
	static int64 ATTRIB$1;
	ATTRIB$1 = *(int64*)((uint8*)S$1 + 8ll);
	_SETSECTION( 2ll, 0ll );
	if( (ATTRIB$1 & 8ll) != 0ll ) goto label$231;
	{
		if( (ATTRIB$1 & 32ll) <= 0ll ) goto label$233;
		{
			uint8* vr$3 = SYMBGETMANGLEDNAME( S$1 );
			HPUBLIC( vr$3, -1ll );
		}
		label$233:;
		label$232:;
		fb_StrAssign( (void*)&ALLOC$1, -1ll, (void*)".lcomm", 7ll, 0 );
	}
	goto label$230;
	label$231:;
	{
		uint8* vr$4 = SYMBGETMANGLEDNAME( S$1 );
		HPUBLIC( vr$4, 0ll );
		fb_StrAssign( (void*)&ALLOC$1, -1ll, (void*)".comm", 6ll, 0 );
	}
	label$230:;
	int64 vr$5 = HGETGLOBALVARALIGN( S$1 );
	HALIGN( vr$5 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&ALLOC$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x09", 2ll, 0 );
	uint8* vr$6 = SYMBGETMANGLEDNAME( S$1 );
	__builtin_memset( &TMP$200$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$200$1, (void*)&OSTR$1, -1ll, (void*)vr$6, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$9, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)",", 2ll, 0 );
	int64 vr$10 = SYMBGETREALSIZE( S$1 );
	FBSTRING* vr$11 = fb_LongintToStr( vr$10 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$11, -1ll, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, -1ll );
	EDBGEMITGLOBALVAR( S$1, 2ll );
	label$229:;
}

static void HWRITEHEADER( void )
{
	label$234:;
	EDBGEMITHEADER( (uint8*)((uint8*)&ENV$ + 560ll) );
	EMITWRITESTR( (uint8*)".intel_syntax noprefix", -1ll );
	label$235:;
}

static void HEMITVARCONST( struct $8FBSYMBOL* S$1 )
{
	label$236:;
	static FBSTRING STEXT$1;
	static FBSTRING STYPE$1;
	static FBSTRING OSTR$1;
	static int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
	{
		uint64 TMP$203$2;
		TMP$203$2 = (uint64)DTYPE$1;
		goto label$239;
		label$240:;
		{
			FBSTRING TMP$205$3;
			fb_StrAssign( (void*)&STEXT$1, -1ll, (void*)"\x22", 2ll, 0 );
			uint8* vr$3 = HESCAPE( (uint8*)*(uint8**)((uint8*)S$1 + 96ll) );
			__builtin_memset( &TMP$205$3, 0, 24ll );
			FBSTRING* vr$6 = fb_StrConcat( &TMP$205$3, (void*)&STEXT$1, -1ll, (void*)vr$3, 0ll );
			fb_StrAssign( (void*)&STEXT$1, -1ll, (void*)vr$6, -1ll, 0 );
			fb_StrConcatAssign( (void*)&STEXT$1, -1ll, (void*)"\x5C" "0\x22", 4ll, 0 );
		}
		goto label$238;
		label$241:;
		{
			FBSTRING TMP$209$3;
			fb_StrAssign( (void*)&STEXT$1, -1ll, (void*)"\x22", 2ll, 0 );
			uint8* vr$8 = HESCAPEW( *(uint32**)((uint8*)S$1 + 96ll) );
			__builtin_memset( &TMP$209$3, 0, 24ll );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$209$3, (void*)&STEXT$1, -1ll, (void*)vr$8, 0ll );
			fb_StrAssign( (void*)&STEXT$1, -1ll, (void*)vr$11, -1ll, 0 );
			{
				int64 I$4;
				I$4 = 1ll;
				int64 TMP$210$4;
				TMP$210$4 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
				goto label$242;
				label$245:;
				{
					fb_StrConcatAssign( (void*)&STEXT$1, -1ll, (void*)"\x5C" "0", 3ll, 0 );
				}
				label$243:;
				I$4 = I$4 + 1ll;
				label$242:;
				if( I$4 <= TMP$210$4 ) goto label$245;
				label$244:;
			}
			fb_StrConcatAssign( (void*)&STEXT$1, -1ll, (void*)"\x22", 2ll, 0 );
		}
		goto label$238;
		label$246:;
		{
			fb_StrAssign( (void*)&STEXT$1, -1ll, *(void**)((uint8*)S$1 + 96ll), 0ll, 0 );
		}
		goto label$238;
		label$239:;
		static const void* tmp$991[4ll] = {
			&&label$240,
			&&label$246,
			&&label$246,
			&&label$241,
		};
		if( (TMP$203$2 - 4ull) > 3ull ) goto label$246;
		goto *tmp$991[TMP$203$2 - 4ull];
		label$238:;
	}
	if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$248;
	{
		_SETSECTION( 0ll, 0ll );
	}
	goto label$247;
	label$248:;
	{
		_SETSECTION( 1ll, 0ll );
	}
	label$247:;
	if( *(int64*)((uint8*)S$1 + 168ll) == 0ll ) goto label$250;
	{
		HALIGN( *(int64*)((uint8*)S$1 + 168ll) );
	}
	goto label$249;
	label$250:;
	{
		int64 vr$16 = HGETGLOBALTYPEALIGN( DTYPE$1 );
		HALIGN( vr$16 );
	}
	label$249:;
	uint8* vr$17 = _GETTYPESTRING( DTYPE$1 );
	fb_StrAssign( (void*)&STYPE$1, -1ll, (void*)vr$17, 0ll, 0 );
	uint8* vr$18 = SYMBGETMANGLEDNAME( S$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$18, 0ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)":\x09", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&STYPE$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x09", 2ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&STEXT$1, -1ll, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$237:;
}

static void HWRITECTOR( struct $20FB_GLOBCTORLIST_ITEM* PROC_HEAD$1, int64 IS_CTOR$1 )
{
	label$251:;
	if( PROC_HEAD$1 != (struct $20FB_GLOBCTORLIST_ITEM*)0ull ) goto label$254;
	{
		goto label$252;
	}
	label$254:;
	label$253:;
	label$255:;
	{
		if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)PROC_HEAD$1 + 24ll) & 16777216ll) == 0ll ) goto label$259;
		{
			$10IR_SECTION TMP$212$3;
			if( IS_CTOR$1 == 0ll ) goto label$260;
			TMP$212$3 = 5ll;
			goto label$1728;
			label$260:;
			TMP$212$3 = 6ll;
			label$1728:;
			_SETSECTION( TMP$212$3, *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)PROC_HEAD$1 + 208ll) + 112ll) );
			uint8* vr$7 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)PROC_HEAD$1 );
			EMITVARINIOFS( vr$7, 0ll );
		}
		label$259:;
		label$258:;
		PROC_HEAD$1 = *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)PROC_HEAD$1 + 8ll);
	}
	label$257:;
	if( PROC_HEAD$1 != (struct $20FB_GLOBCTORLIST_ITEM*)0ull ) goto label$255;
	label$256:;
	label$252:;
}

static void HEMITEXPORT( struct $8FBSYMBOL* S$1 )
{
	label$261:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 256ll) == 0ll ) goto label$264;
	{
		FBSTRING TMP$218$2;
		FBSTRING TMP$219$2;
		FBSTRING TMP$220$2;
		_SETSECTION( 4ll, 0ll );
		uint8* SNAME$2;
		uint8* vr$2 = SYMBGETMANGLEDNAME( S$1 );
		SNAME$2 = vr$2;
		if( *(int64*)((uint8*)&ENV$ + 536ll) == 0ll ) goto label$266;
		{
			SNAME$2 = (uint8*)((uint8*)SNAME$2 + 1ll);
		}
		label$266:;
		label$265:;
		__builtin_memset( &TMP$220$2, 0, 24ll );
		__builtin_memset( &TMP$218$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$218$2, (void*)".ascii \x22 -export:", 18ll, (void*)SNAME$2, 0ll );
		__builtin_memset( &TMP$219$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$219$2, (void*)vr$7, -1ll, (void*)"\x22\x0A", 3ll );
		fb_StrAssign( (void*)&TMP$220$2, -1ll, (void*)vr$10, -1ll, 0 );
		EMITWRITESTR( (uint8*)*(uint8**)&TMP$220$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$220$2 );
	}
	label$264:;
	label$263:;
	label$262:;
}

static void HDECLVARIABLE( struct $8FBSYMBOL* S$1 )
{
	label$267:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 1024ll) == 0ll ) goto label$270;
	{
		{
			int64 TMP$221$3;
			TMP$221$3 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
			if( TMP$221$3 == 4ll ) goto label$273;
			label$274:;
			if( TMP$221$3 != 7ll ) goto label$272;
			label$273:;
			{
				if( (*(int64*)((uint8*)S$1 + 24ll) & 2ll) != 0ll ) goto label$276;
				{
					goto label$268;
				}
				label$276:;
				label$275:;
			}
			label$272:;
			label$271:;
		}
		HEMITVARCONST( S$1 );
		goto label$268;
	}
	label$270:;
	label$269:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 32768ll) == 0ll ) goto label$278;
	{
		goto label$268;
	}
	label$278:;
	label$277:;
	if( ((int64)-((*(int64*)((uint8*)S$1 + 8ll) & 16ll) != 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 8ll) & 4ll) != 0ll)) == 0ll ) goto label$280;
	{
		goto label$268;
	}
	label$280:;
	label$279:;
	if( *(struct $7ASTNODE**)((uint8*)S$1 + 96ll) == (struct $7ASTNODE*)0ull ) goto label$282;
	{
		if( (*(int64*)((uint8*)S$1 + 24ll) & 2ll) != 0ll ) goto label$284;
		{
			if( (*(int64*)((uint8*)S$1 + 8ll) & 32ll) != 0ll ) goto label$286;
			{
				goto label$268;
			}
			label$286:;
			label$285:;
		}
		label$284:;
		label$283:;
		_SETSECTION( 1ll, 0ll );
		IRHLFLUSHSTATICINITIALIZER( S$1 );
		goto label$268;
	}
	label$282:;
	label$281:;
	HEMITVARBSS( S$1 );
	label$268:;
}

static void HCLEARLOCALS( int64 BYTESTOCLEAR$1, int64 BASEOFFSET$1 )
{
	label$287:;
	static int64 I$1;
	static FBSTRING LNAME$1;
	if( BYTESTOCLEAR$1 != 0ll ) goto label$290;
	{
		goto label$288;
	}
	label$290:;
	label$289:;
	if( *(int64*)((uint8*)&ENV$ + 224ll) < 3ll ) goto label$292;
	{
		if( ((uint64)BYTESTOCLEAR$1 >> (3ull & 63ll)) <= 7ull ) goto label$294;
		{
			FBSTRING TMP$223$3;
			FBSTRING TMP$224$3;
			FBSTRING TMP$225$3;
			FBSTRING TMP$227$3;
			FBSTRING TMP$228$3;
			FBSTRING TMP$234$3;
			FBSTRING TMP$235$3;
			if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) != 0ll ) goto label$296;
			{
				HPUSH( (uint8*)"edi" );
			}
			label$296:;
			label$295:;
			__builtin_memset( &TMP$225$3, 0, 24ll );
			FBSTRING* vr$4 = fb_LongintToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
			__builtin_memset( &TMP$223$3, 0, 24ll );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$223$3, (void*)"lea edi, [ebp-", 15ll, (void*)vr$4, -1ll );
			__builtin_memset( &TMP$224$3, 0, 24ll );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$224$3, (void*)vr$7, -1ll, (void*)"]", 2ll );
			fb_StrAssign( (void*)&TMP$225$3, -1ll, (void*)vr$10, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$225$3 );
			fb_StrDelete( (FBSTRING*)&TMP$225$3 );
			__builtin_memset( &TMP$228$3, 0, 24ll );
			FBSTRING* vr$15 = fb_ULongintToStr( (uint64)BYTESTOCLEAR$1 >> (3ull & 63ll) );
			__builtin_memset( &TMP$227$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$227$3, (void*)"mov ecx,", 9ll, (void*)vr$15, -1ll );
			fb_StrAssign( (void*)&TMP$228$3, -1ll, (void*)vr$18, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$228$3 );
			fb_StrDelete( (FBSTRING*)&TMP$228$3 );
			OUTP( (uint8*)"pxor mm0, mm0" );
			uint8* vr$21 = SYMBUNIQUELABEL(  );
			fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$21, 0ll, 0 );
			HLABEL( (uint8*)*(uint8**)&LNAME$1 );
			OUTP( (uint8*)"movq [edi], mm0" );
			OUTP( (uint8*)"add edi, 8" );
			OUTP( (uint8*)"dec ecx" );
			__builtin_memset( &TMP$235$3, 0, 24ll );
			__builtin_memset( &TMP$234$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$234$3, (void*)"jnz ", 5ll, (void*)&LNAME$1, -1ll );
			fb_StrAssign( (void*)&TMP$235$3, -1ll, (void*)vr$25, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$235$3 );
			fb_StrDelete( (FBSTRING*)&TMP$235$3 );
			OUTP( (uint8*)"emms" );
			if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) != 0ll ) goto label$298;
			{
				HPOP( (uint8*)"edi" );
			}
			label$298:;
			label$297:;
		}
		goto label$293;
		label$294:;
		if( ((uint64)BYTESTOCLEAR$1 >> (3ull & 63ll)) <= 0ull ) goto label$299;
		{
			OUTP( (uint8*)"pxor mm0, mm0" );
			{
				I$1 = (int64)((uint64)BYTESTOCLEAR$1 >> (3ull & 63ll));
				goto label$300;
				label$303:;
				{
					FBSTRING TMP$239$5;
					FBSTRING TMP$240$5;
					FBSTRING TMP$241$5;
					__builtin_memset( &TMP$241$5, 0, 24ll );
					FBSTRING* vr$33 = fb_LongintToStr( I$1 << (3ll & 63ll) );
					__builtin_memset( &TMP$239$5, 0, 24ll );
					FBSTRING* vr$36 = fb_StrConcat( &TMP$239$5, (void*)"movq [ebp-", 11ll, (void*)vr$33, -1ll );
					__builtin_memset( &TMP$240$5, 0, 24ll );
					FBSTRING* vr$39 = fb_StrConcat( &TMP$240$5, (void*)vr$36, -1ll, (void*)"], mm0", 7ll );
					fb_StrAssign( (void*)&TMP$241$5, -1ll, (void*)vr$39, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&TMP$241$5 );
					fb_StrDelete( (FBSTRING*)&TMP$241$5 );
				}
				label$301:;
				I$1 = I$1 + -1ll;
				label$300:;
				if( I$1 >= 1ll ) goto label$303;
				label$302:;
			}
			OUTP( (uint8*)"emms" );
		}
		label$299:;
		label$293:;
		if( (BYTESTOCLEAR$1 & 4ll) == 0ll ) goto label$305;
		{
			FBSTRING TMP$244$3;
			FBSTRING TMP$245$3;
			FBSTRING TMP$246$3;
			__builtin_memset( &TMP$246$3, 0, 24ll );
			FBSTRING* vr$46 = fb_LongintToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
			__builtin_memset( &TMP$244$3, 0, 24ll );
			FBSTRING* vr$49 = fb_StrConcat( &TMP$244$3, (void*)"mov dword ptr [ebp-", 20ll, (void*)vr$46, -1ll );
			__builtin_memset( &TMP$245$3, 0, 24ll );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$245$3, (void*)vr$49, -1ll, (void*)"], 0", 5ll );
			fb_StrAssign( (void*)&TMP$246$3, -1ll, (void*)vr$52, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$246$3 );
			fb_StrDelete( (FBSTRING*)&TMP$246$3 );
		}
		label$305:;
		label$304:;
		goto label$288;
	}
	label$292:;
	label$291:;
	if( ((uint64)BYTESTOCLEAR$1 >> (2ull & 63ll)) <= 6ull ) goto label$307;
	{
		FBSTRING TMP$247$2;
		FBSTRING TMP$248$2;
		FBSTRING TMP$249$2;
		FBSTRING TMP$250$2;
		FBSTRING TMP$251$2;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) != 0ll ) goto label$309;
		{
			HPUSH( (uint8*)"edi" );
		}
		label$309:;
		label$308:;
		__builtin_memset( &TMP$249$2, 0, 24ll );
		FBSTRING* vr$59 = fb_LongintToStr( BASEOFFSET$1 + BYTESTOCLEAR$1 );
		__builtin_memset( &TMP$247$2, 0, 24ll );
		FBSTRING* vr$62 = fb_StrConcat( &TMP$247$2, (void*)"lea edi, [ebp-", 15ll, (void*)vr$59, -1ll );
		__builtin_memset( &TMP$248$2, 0, 24ll );
		FBSTRING* vr$65 = fb_StrConcat( &TMP$248$2, (void*)vr$62, -1ll, (void*)"]", 2ll );
		fb_StrAssign( (void*)&TMP$249$2, -1ll, (void*)vr$65, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$249$2 );
		fb_StrDelete( (FBSTRING*)&TMP$249$2 );
		__builtin_memset( &TMP$251$2, 0, 24ll );
		FBSTRING* vr$70 = fb_ULongintToStr( (uint64)BYTESTOCLEAR$1 >> (2ull & 63ll) );
		__builtin_memset( &TMP$250$2, 0, 24ll );
		FBSTRING* vr$73 = fb_StrConcat( &TMP$250$2, (void*)"mov ecx,", 9ll, (void*)vr$70, -1ll );
		fb_StrAssign( (void*)&TMP$251$2, -1ll, (void*)vr$73, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$251$2 );
		fb_StrDelete( (FBSTRING*)&TMP$251$2 );
		OUTP( (uint8*)"xor eax, eax" );
		OUTP( (uint8*)"rep stosd" );
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) != 0ll ) goto label$311;
		{
			HPOP( (uint8*)"edi" );
		}
		label$311:;
		label$310:;
	}
	goto label$306;
	label$307:;
	{
		{
			I$1 = (int64)((uint64)BYTESTOCLEAR$1 >> (2ull & 63ll));
			goto label$312;
			label$315:;
			{
				FBSTRING TMP$254$4;
				FBSTRING TMP$255$4;
				FBSTRING TMP$256$4;
				__builtin_memset( &TMP$256$4, 0, 24ll );
				FBSTRING* vr$81 = fb_LongintToStr( BASEOFFSET$1 + (I$1 << (2ll & 63ll)) );
				__builtin_memset( &TMP$254$4, 0, 24ll );
				FBSTRING* vr$84 = fb_StrConcat( &TMP$254$4, (void*)"mov dword ptr [ebp-", 20ll, (void*)vr$81, -1ll );
				__builtin_memset( &TMP$255$4, 0, 24ll );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$255$4, (void*)vr$84, -1ll, (void*)"], 0", 5ll );
				fb_StrAssign( (void*)&TMP$256$4, -1ll, (void*)vr$87, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$256$4 );
				fb_StrDelete( (FBSTRING*)&TMP$256$4 );
			}
			label$313:;
			I$1 = I$1 + -1ll;
			label$312:;
			if( I$1 >= 1ll ) goto label$315;
			label$314:;
		}
	}
	label$306:;
	label$288:;
}

static int64 HFRAMEBYTESTOALLOC( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$316:;
	static int64 BYTESTOALLOC$1;
	static int64 BYTESPUSHED$1;
	BYTESTOALLOC$1 = (*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 24ll) + 3ll) & -4ll;
	if( (*(int64*)((uint8*)&ENV$ + 520ll) & 32ll) == 0ll ) goto label$319;
	{
		BYTESPUSHED$1 = 8ll;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) == 0ll ) goto label$321;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4ll;
		}
		label$321:;
		label$320:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 4ll) == 0ll ) goto label$323;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4ll;
		}
		label$323:;
		label$322:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 16ll) == 0ll ) goto label$325;
		{
			BYTESPUSHED$1 = BYTESPUSHED$1 + 4ll;
		}
		label$325:;
		label$324:;
		BYTESTOALLOC$1 = BYTESTOALLOC$1 + BYTESPUSHED$1;
		BYTESTOALLOC$1 = (BYTESTOALLOC$1 + 15ll) & -16ll;
		BYTESTOALLOC$1 = BYTESTOALLOC$1 - BYTESPUSHED$1;
	}
	label$319:;
	label$318:;
	fb$result$1 = BYTESTOALLOC$1;
	goto label$317;
	label$317:;
	return fb$result$1;
}

static void HCREATEFRAME( struct $8FBSYMBOL* PROC$1 )
{
	label$326:;
	static int64 BYTESTOALLOC$1;
	static int64 BYTESTOCLEAR$1;
	static int64 BYTESPUSHED$1;
	static uint8* LPROF$1;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) != 0ll ) goto label$329;
	{
		int64 vr$2 = HFRAMEBYTESTOALLOC( PROC$1 );
		BYTESTOALLOC$1 = vr$2;
		if( (((((int64)-(BYTESTOALLOC$1 != 0ll) | (int64)-(*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll) != 8ll)) | (int64)-((*(int64*)((uint8*)PROC$1 + 24ll) & 4096ll) != 0ll)) | *(int64*)((uint8*)&ENV$ + 296ll)) | *(int64*)((uint8*)&ENV$ + 360ll)) == 0ll ) goto label$331;
		{
			HPUSH( (uint8*)"ebp" );
			OUTP( (uint8*)"mov ebp, esp" );
			if( (*(int64*)((uint8*)PROC$1 + 24ll) & 4096ll) == 0ll ) goto label$333;
			{
				OUTP( (uint8*)"and esp, 0xFFFFFFF0" );
				BYTESTOALLOC$1 = BYTESTOALLOC$1 + 8ll;
			}
			label$333:;
			label$332:;
			if( BYTESTOALLOC$1 <= 0ll ) goto label$335;
			{
				FBSTRING TMP$260$4;
				FBSTRING TMP$261$4;
				__builtin_memset( &TMP$261$4, 0, 24ll );
				FBSTRING* vr$18 = fb_LongintToStr( BYTESTOALLOC$1 );
				__builtin_memset( &TMP$260$4, 0, 24ll );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$260$4, (void*)"sub esp, ", 10ll, (void*)vr$18, -1ll );
				fb_StrAssign( (void*)&TMP$261$4, -1ll, (void*)vr$21, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$261$4 );
				fb_StrDelete( (FBSTRING*)&TMP$261$4 );
			}
			label$335:;
			label$334:;
		}
		label$331:;
		label$330:;
		if( *(int64*)((uint8*)&ENV$ + 216ll) != 3ll ) goto label$337;
		{
			if( *(int64*)((uint8*)&ENV$ + 360ll) == 0ll ) goto label$339;
			{
				FBSTRING TMP$266$4;
				FBSTRING TMP$267$4;
				FBSTRING TMP$268$4;
				FBSTRING TMP$269$4;
				FBSTRING TMP$274$4;
				FBSTRING TMP$275$4;
				uint8* vr$24 = SYMBMAKEPROFILELABELNAME(  );
				LPROF$1 = vr$24;
				OUTEX( (uint8*)".section .data\x0A", 0ll );
				OUTEX( (uint8*)".balign 4\x0A", 0ll );
				__builtin_memset( &TMP$269$4, 0, 24ll );
				__builtin_memset( &TMP$266$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$266$4, (void*)".", 2ll, (void*)LPROF$1, 0ll );
				__builtin_memset( &TMP$267$4, 0, 24ll );
				FBSTRING* vr$31 = fb_StrConcat( &TMP$267$4, (void*)vr$28, -1ll, (void*)":", 2ll );
				__builtin_memset( &TMP$268$4, 0, 24ll );
				FBSTRING* vr$34 = fb_StrConcat( &TMP$268$4, (void*)vr$31, -1ll, (void*)"\x0A", 2ll );
				fb_StrAssign( (void*)&TMP$269$4, -1ll, (void*)vr$34, -1ll, 0 );
				OUTEX( (uint8*)*(uint8**)&TMP$269$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$269$4 );
				OUTP( (uint8*)".long 0" );
				OUTEX( (uint8*)".section .text\x0A", 0ll );
				__builtin_memset( &TMP$275$4, 0, 24ll );
				__builtin_memset( &TMP$274$4, 0, 24ll );
				FBSTRING* vr$40 = fb_StrConcat( &TMP$274$4, (void*)"mov edx, offset .", 18ll, (void*)LPROF$1, 0ll );
				fb_StrAssign( (void*)&TMP$275$4, -1ll, (void*)vr$40, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$275$4 );
				fb_StrDelete( (FBSTRING*)&TMP$275$4 );
				OUTP( (uint8*)"call _mcount" );
			}
			label$339:;
			label$338:;
		}
		label$337:;
		label$336:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 16ll) == 0ll ) goto label$341;
		{
			HPUSH( (uint8*)"ebx" );
		}
		label$341:;
		label$340:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 4ll) == 0ll ) goto label$343;
		{
			HPUSH( (uint8*)"esi" );
		}
		label$343:;
		label$342:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) == 0ll ) goto label$345;
		{
			HPUSH( (uint8*)"edi" );
		}
		label$345:;
		label$344:;
	}
	label$329:;
	label$328:;
	label$327:;
}

static void HDESTROYFRAME( struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1 )
{
	label$346:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) != 0ll ) goto label$349;
	{
		static int64 BYTESTOALLOC$2;
		int64 vr$2 = HFRAMEBYTESTOALLOC( PROC$1 );
		BYTESTOALLOC$2 = vr$2;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 2ll) == 0ll ) goto label$351;
		{
			HPOP( (uint8*)"edi" );
		}
		label$351:;
		label$350:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 4ll) == 0ll ) goto label$353;
		{
			HPOP( (uint8*)"esi" );
		}
		label$353:;
		label$352:;
		if( (*(int64*)((uint8*)&EMIT$ + 264ll) & 16ll) == 0ll ) goto label$355;
		{
			HPOP( (uint8*)"ebx" );
		}
		label$355:;
		label$354:;
		if( (((((int64)-(BYTESTOALLOC$2 != 0ll) | (int64)-(*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll) != 8ll)) | (int64)-((*(int64*)((uint8*)PROC$1 + 24ll) & 4096ll) != 0ll)) | *(int64*)((uint8*)&ENV$ + 296ll)) | *(int64*)((uint8*)&ENV$ + 360ll)) == 0ll ) goto label$357;
		{
			OUTP( (uint8*)"mov esp, ebp" );
			HPOP( (uint8*)"ebp" );
		}
		label$357:;
		label$356:;
		if( BYTESTOPOP$1 <= 0ll ) goto label$359;
		{
			FBSTRING TMP$279$3;
			FBSTRING TMP$280$3;
			__builtin_memset( &TMP$280$3, 0, 24ll );
			FBSTRING* vr$18 = fb_LongintToStr( BYTESTOPOP$1 );
			__builtin_memset( &TMP$279$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$279$3, (void*)"ret ", 5ll, (void*)vr$18, -1ll );
			fb_StrAssign( (void*)&TMP$280$3, -1ll, (void*)vr$21, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$280$3 );
			fb_StrDelete( (FBSTRING*)&TMP$280$3 );
		}
		goto label$358;
		label$359:;
		{
			OUTP( (uint8*)"ret" );
		}
		label$358:;
	}
	label$349:;
	label$348:;
	if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$361;
	{
		FBSTRING TMP$284$2;
		FBSTRING TMP$285$2;
		FBSTRING TMP$286$2;
		FBSTRING TMP$287$2;
		FBSTRING TMP$288$2;
		__builtin_memset( &TMP$288$2, 0, 24ll );
		uint8* vr$25 = SYMBGETMANGLEDNAME( PROC$1 );
		uint8* vr$26 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$284$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$284$2, (void*)".size ", 7ll, (void*)vr$26, 0ll );
		__builtin_memset( &TMP$285$2, 0, 24ll );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$285$2, (void*)vr$29, -1ll, (void*)", .-", 5ll );
		__builtin_memset( &TMP$286$2, 0, 24ll );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$286$2, (void*)vr$32, -1ll, (void*)vr$25, 0ll );
		__builtin_memset( &TMP$287$2, 0, 24ll );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$287$2, (void*)vr$35, -1ll, (void*)"\x0A", 2ll );
		fb_StrAssign( (void*)&TMP$288$2, -1ll, (void*)vr$38, -1ll, 0 );
		OUTEX( (uint8*)*(uint8**)&TMP$288$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$288$2 );
	}
	label$361:;
	label$360:;
	label$347:;
}

static void _EMITLIT( uint8* S$1 )
{
	FBSTRING TMP$289$1;
	label$362:;
	FBSTRING OSTR$1;
	__builtin_memset( &OSTR$1, 0, 24ll );
	__builtin_memset( &TMP$289$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$289$1, (void*)S$1, 0ll, (void*)"\x0A", 2ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	fb_StrDelete( (FBSTRING*)&OSTR$1 );
	label$363:;
}

static void _EMITJMPTB( struct $8FBSYMBOL* TBSYM$1, uint64* VALUES1$1, struct $8FBSYMBOL** LABELS1$1, int64 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$290$1;
	FBSTRING TMP$291$1;
	FBSTRING TMP$292$1;
	label$364:;
	FBSTRING DEFLABELNAME$1;
	__builtin_memset( &DEFLABELNAME$1, 0, 24ll );
	FBSTRING TB$1;
	__builtin_memset( &TB$1, 0, 24ll );
	uint8* vr$2 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	fb_StrAssign( (void*)&DEFLABELNAME$1, -1ll, (void*)vr$2, 0ll, 0 );
	uint8* vr$4 = SYMBGETMANGLEDNAME( TBSYM$1 );
	fb_StrAssign( (void*)&TB$1, -1ll, (void*)vr$4, 0ll, 0 );
	__builtin_memset( &TMP$292$1, 0, 24ll );
	__builtin_memset( &TMP$290$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$290$1, (void*)&TB$1, -1ll, (void*)":", 2ll );
	__builtin_memset( &TMP$291$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$291$1, (void*)vr$10, -1ll, (void*)"\x0A", 2ll );
	fb_StrAssign( (void*)&TMP$292$1, -1ll, (void*)vr$13, -1ll, 0 );
	OUTEX( (uint8*)*(uint8**)&TMP$292$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$292$1 );
	int64 I$1;
	I$1 = 0ll;
	int64 VALUE$1;
	VALUE$1 = 0ll;
	label$366:;
	{
		FBSTRING TMP$293$2;
		FBSTRING TMP$294$2;
		FBSTRING TMP$295$2;
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 8ll );
		if( (uint64)VALUE$1 != *(uint64*)((uint8*)VALUES1$1 + (I$1 << (3ll & 63ll))) ) goto label$370;
		{
			LABEL$2 = *(struct $8FBSYMBOL**)((uint8*)LABELS1$1 + (I$1 << (3ll & 63ll)));
			I$1 = I$1 + 1ll;
		}
		goto label$369;
		label$370:;
		{
			LABEL$2 = DEFLABEL$1;
		}
		label$369:;
		__builtin_memset( &TMP$295$2, 0, 24ll );
		uint8* vr$23 = SYMBGETMANGLEDNAME( LABEL$2 );
		uint8* vr$24 = _GETTYPESTRING( 9ll );
		__builtin_memset( &TMP$293$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$293$2, (void*)vr$24, 0ll, (void*)" ", 2ll );
		__builtin_memset( &TMP$294$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$294$2, (void*)vr$27, -1ll, (void*)vr$23, 0ll );
		fb_StrAssign( (void*)&TMP$295$2, -1ll, (void*)vr$30, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$295$2 );
		fb_StrDelete( (FBSTRING*)&TMP$295$2 );
		if( (uint64)VALUE$1 != SPAN$1 ) goto label$372;
		{
			goto label$367;
		}
		label$372:;
		label$371:;
		VALUE$1 = VALUE$1 + 1ll;
	}
	label$368:;
	goto label$366;
	label$367:;
	fb_StrDelete( (FBSTRING*)&TB$1 );
	fb_StrDelete( (FBSTRING*)&DEFLABELNAME$1 );
	label$365:;
}

static void _EMITCALL( struct $6IRVREG* UNUSED$1, struct $8FBSYMBOL* LABEL$1, int64 BYTESTOPOP$1 )
{
	FBSTRING TMP$297$1;
	label$373:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"call ", 6ll, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$297$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$297$1, (void*)&OSTR$1, -1ll, (void*)vr$0, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( BYTESTOPOP$1 == 0ll ) goto label$376;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"add esp, ", 10ll, 0 );
		FBSTRING* vr$4 = fb_LongintToStr( BYTESTOPOP$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$4, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$376:;
	label$375:;
	label$374:;
}

static void _EMITCALLPTR( struct $6IRVREG* SVREG$1, struct $8FBSYMBOL* UNUSED$1, int64 BYTESTOPOP$1 )
{
	label$377:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"call ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( BYTESTOPOP$1 == 0ll ) goto label$380;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"add esp, ", 10ll, 0 );
		FBSTRING* vr$0 = fb_LongintToStr( BYTESTOPOP$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$0, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$380:;
	label$379:;
	label$378:;
}

static void _EMITBRANCH( struct $6IRVREG* UNUSED$1, struct $8FBSYMBOL* LABEL$1, int64 OP$1 )
{
	FBSTRING TMP$306$1;
	label$381:;
	static FBSTRING OSTR$1;
	{
		uint64 TMP$299$2;
		TMP$299$2 = (uint64)OP$1;
		goto label$384;
		label$385:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jle ", 5ll, 0 );
		}
		goto label$383;
		label$386:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jge ", 5ll, 0 );
		}
		goto label$383;
		label$387:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jl ", 4ll, 0 );
		}
		goto label$383;
		label$388:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jg ", 4ll, 0 );
		}
		goto label$383;
		label$389:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"je ", 4ll, 0 );
		}
		goto label$383;
		label$390:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jne ", 5ll, 0 );
		}
		goto label$383;
		label$384:;
		static const void* tmp$992[6ll] = {
			&&label$389,
			&&label$388,
			&&label$387,
			&&label$390,
			&&label$386,
			&&label$385,
		};
		if( (TMP$299$2 - 92ull) > 5ull ) goto label$383;
		goto *tmp$992[TMP$299$2 - 92ull];
		label$383:;
	}
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$306$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$306$1, (void*)&OSTR$1, -1ll, (void*)vr$0, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$382:;
}

static void _EMITJUMP( struct $6IRVREG* UNUSED1$1, struct $8FBSYMBOL* LABEL$1, int64 UNUSED2$1 )
{
	FBSTRING TMP$308$1;
	label$391:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jmp ", 5ll, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$308$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$308$1, (void*)&OSTR$1, -1ll, (void*)vr$0, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$392:;
}

static void _EMITJUMPPTR( struct $6IRVREG* SVREG$1, struct $8FBSYMBOL* UNUSED1$1, int64 UNUSED2$1 )
{
	label$393:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jmp ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$394:;
}

static void _EMITRET( struct $6IRVREG* VREG$1 )
{
	FBSTRING TMP$309$1;
	label$395:;
	static FBSTRING OSTR$1;
	FBSTRING* vr$1 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 48ll) );
	__builtin_memset( &TMP$309$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$309$1, (void*)"ret ", 5ll, (void*)vr$1, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$4, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$396:;
}

static void _EMITPUBLIC( struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$310$1;
	label$397:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A.globl ", 9ll, 0 );
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$310$1, 0, 24ll );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$310$1, (void*)&OSTR$1, -1ll, (void*)vr$0, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$3, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$398:;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$399:;
	static FBSTRING OSTR$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( LABEL$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$0, 0ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)":\x0A", 3ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$400:;
}

static void _EMITNOP( void )
{
	label$401:;
	label$402:;
}

static void HULONG2DBL( struct $6IRVREG* SVREG$1 )
{
	label$403:;
	static FBSTRING LABEL$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	uint8* vr$0 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LABEL$1, -1ll, (void*)vr$0, 0ll, 0 );
	HPREPOPERAND( SVREG$1, &AUX$1, 8ll, 0ll, -1ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"cmp ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 0", 4ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"jns ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&LABEL$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	HPUSH( (uint8*)"0x403f" );
	HPUSH( (uint8*)"0x80000000" );
	HPUSH( (uint8*)"0" );
	OUTP( (uint8*)"fldt [esp]" );
	OUTP( (uint8*)"add esp, 12" );
	OUTP( (uint8*)"faddp" );
	HLABEL( (uint8*)*(uint8**)&LABEL$1 );
	label$404:;
}

static void _EMITSTORL2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$405:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$406:;
}

static void _EMITSTORI2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$319$1;
	int64 TMP$325$1;
	label$407:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING EXT$1;
	static FBSTRING OSTR$1;
	static int64 SDSIZE$1;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$409;
	TMP$319$1 = 24ll;
	goto label$1729;
	label$409:;
	TMP$319$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1729:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$319$1 * 56ll)) + 8ll);
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC1$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 0ll ) goto label$411;
	{
		int64 TMP$320$2;
		HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$412;
		TMP$320$2 = 24ll;
		goto label$1730;
		label$412:;
		TMP$320$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1730:;
		if( (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$320$2 * 56ll)) + 16ll) & (int64)-(*(int64*)((uint8*)SVREG$1 + 48ll) < 0ll)) == 0ll ) goto label$414;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$413;
		label$414:;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$413:;
		goto label$408;
	}
	label$411:;
	label$410:;
	if( SDSIZE$1 >= 4ll ) goto label$416;
	{
		int64 TMP$322$2;
		uint8* vr$15 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
		fb_StrAssign( (void*)&EXT$1, -1ll, (void*)vr$15, 0ll, 0 );
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$417;
		TMP$322$2 = 24ll;
		goto label$1731;
		label$417:;
		TMP$322$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1731:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$322$2 * 56ll)) + 16ll) == 0ll ) goto label$419;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
		}
		goto label$418;
		label$419:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
		}
		label$418:;
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EXT$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$415;
	label$416:;
	{
		fb_StrAssign( (void*)&EXT$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	}
	label$415:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EXT$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$420;
	TMP$325$1 = 24ll;
	goto label$1732;
	label$420:;
	TMP$325$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1732:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$325$1 * 56ll)) + 16ll) == 0ll ) goto label$422;
	{
		HPUSH( (uint8*)*(uint8**)&EXT$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sar ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EXT$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 31", 5ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EXT$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)*(uint8**)&EXT$1 );
	}
	goto label$421;
	label$422:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 0", 4ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$421:;
	label$408:;
}

static void _EMITSTORF2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$328$1;
	label$423:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$425;
	TMP$328$1 = 24ll;
	goto label$1733;
	label$425:;
	TMP$328$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1733:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$328$1 * 56ll)) + 16ll) == 0ll ) goto label$427;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fistp ", 7ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$427:;
	label$426:;
	label$424:;
}

static void _EMITSTORI2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$330$1;
	int64 TMP$331$1;
	label$428:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$430;
	TMP$330$1 = 24ll;
	goto label$1734;
	label$430:;
	TMP$330$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1734:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$330$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$431;
	TMP$331$1 = 24ll;
	goto label$1735;
	label$431:;
	TMP$331$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1735:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$331$1 * 56ll)) + 8ll);
	if( DDSIZE$1 != 1ll ) goto label$433;
	{
		if( *(int64*)SVREG$1 != 0ll ) goto label$435;
		{
			DDSIZE$1 = 4ll;
		}
		label$435:;
		label$434:;
	}
	label$433:;
	label$432:;
	if( ((int64)-(*(int64*)SVREG$1 == 0ll) | (int64)-(DDSIZE$1 == SDSIZE$1)) == 0ll ) goto label$437;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$436;
	label$437:;
	{
		static FBSTRING AUX$2;
		uint8* vr$17 = HGETREGNAME( *(int64*)((uint8*)DVREG$1 + 8ll), *(int64*)((uint8*)SVREG$1 + 24ll) );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$17, 0ll, 0 );
		if( DDSIZE$1 <= SDSIZE$1 ) goto label$439;
		{
			int64 TMP$332$3;
			if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$440;
			TMP$332$3 = 24ll;
			goto label$1736;
			label$440:;
			TMP$332$3 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
			label$1736:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$332$3 * 56ll)) + 16ll) == 0ll ) goto label$442;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
			}
			goto label$441;
			label$442:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
			}
			label$441:;
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$438;
		label$439:;
		{
			static int64 IS_DISI$3;
			IS_DISI$3 = 0ll;
			if( DDSIZE$1 != 1ll ) goto label$444;
			{
				if( *(int64*)SVREG$1 != 4ll ) goto label$446;
				{
					IS_DISI$3 = (int64)-(*(int64*)((uint8*)SVREG$1 + 24ll) == 2ll) | (int64)-(*(int64*)((uint8*)SVREG$1 + 24ll) == 1ll);
				}
				label$446:;
				label$445:;
			}
			label$444:;
			label$443:;
			if( IS_DISI$3 == 0ll ) goto label$448;
			{
				static FBSTRING AUX8$4;
				static int64 REG$4;
				static int64 ISFREE$4;
				int64 vr$29 = HFINDREGNOTINVREG( DVREG$1, -1ll );
				REG$4 = vr$29;
				uint8* vr$30 = HGETREGNAME( 2ll, REG$4 );
				fb_StrAssign( (void*)&AUX8$4, -1ll, (void*)vr$30, 0ll, 0 );
				uint8* vr$32 = HGETREGNAME( *(int64*)((uint8*)SVREG$1 + 8ll), REG$4 );
				fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$32, 0ll, 0 );
				int64 vr$33 = HISREGFREE( 0ll, REG$4 );
				ISFREE$4 = vr$33;
				if( ISFREE$4 != 0ll ) goto label$450;
				{
					HPUSH( (uint8*)*(uint8**)&AUX$2 );
				}
				label$450:;
				label$449:;
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX8$4, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				if( ISFREE$4 != 0ll ) goto label$452;
				{
					HPOP( (uint8*)*(uint8**)&AUX$2 );
				}
				label$452:;
				label$451:;
			}
			goto label$447;
			label$448:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$447:;
		}
		label$438:;
	}
	label$436:;
	label$429:;
}

static void _EMITSTORL2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$453:;
	_EMITSTORI2I( DVREG$1, SVREG$1 );
	label$454:;
}

static void _EMITSTORF2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$333$1;
	label$455:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$457;
	TMP$333$1 = 24ll;
	goto label$1737;
	label$457:;
	TMP$333$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1737:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$333$1 * 56ll)) + 8ll);
	if( DDSIZE$1 != 1ll ) goto label$459;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		if( *(int64*)DVREG$1 != 4ll ) goto label$461;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"byte ptr [esp]" );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$460;
		label$461:;
		{
			static int64 REG$3;
			static int64 ISFREE$3;
			static FBSTRING AUX$3;
			static FBSTRING AUX8$3;
			int64 vr$6 = HFINDREGNOTINVREG( DVREG$1, -1ll );
			REG$3 = vr$6;
			uint8* vr$7 = HGETREGNAME( 2ll, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1ll, (void*)vr$7, 0ll, 0 );
			uint8* vr$8 = HGETREGNAME( 8ll, REG$3 );
			fb_StrAssign( (void*)&AUX$3, -1ll, (void*)vr$8, 0ll, 0 );
			int64 vr$9 = HISREGFREE( 0ll, REG$3 );
			ISFREE$3 = vr$9;
			if( ISFREE$3 != 0ll ) goto label$463;
			{
				HXCHG( (uint8*)*(uint8**)&AUX$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$462;
			label$463:;
			{
				HMOV( (uint8*)*(uint8**)&AUX8$3, (uint8*)"byte ptr [esp]" );
			}
			label$462:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			if( ISFREE$3 != 0ll ) goto label$465;
			{
				HPOP( (uint8*)*(uint8**)&AUX$3 );
			}
			goto label$464;
			label$465:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$464:;
		}
		label$460:;
	}
	goto label$458;
	label$459:;
	{
		int64 TMP$339$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$466;
		TMP$339$2 = 24ll;
		goto label$1738;
		label$466:;
		TMP$339$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$1738:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$339$2 * 56ll)) + 16ll) == 0ll ) goto label$468;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fistp ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$467;
		label$468:;
		{
			if( DDSIZE$1 != 4ll ) goto label$470;
			{
				OUTP( (uint8*)"sub esp, 8" );
				OUTP( (uint8*)"fistp qword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$469;
			label$470:;
			{
				OUTP( (uint8*)"sub esp, 4" );
				OUTP( (uint8*)"fistp dword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 2" );
			}
			label$469:;
		}
		label$467:;
	}
	label$458:;
	label$456:;
}

static void _EMITSTORL2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$471:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$474;
	{
		int64 TMP$343$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$475;
		TMP$343$2 = 24ll;
		goto label$1739;
		label$475:;
		TMP$343$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1739:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$343$2 * 56ll)) + 16ll) == 0ll ) goto label$477;
		{
			FBSTRING TMP$346$3;
			FBSTRING TMP$347$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$346$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$346$3, (void*)"fild ", 6ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$347$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$347$3, (void*)vr$15, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$18, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$476;
		label$477:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$476:;
	}
	goto label$473;
	label$474:;
	{
		int64 TMP$350$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$478;
		TMP$350$2 = 24ll;
		goto label$1740;
		label$478:;
		TMP$350$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1740:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$350$2 * 56ll)) + 16ll) == 0ll ) goto label$480;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$479;
		label$480:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$479:;
	}
	label$473:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$472:;
}

static void _EMITSTORI2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$352$1;
	label$481:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$483;
	TMP$352$1 = 24ll;
	goto label$1741;
	label$483:;
	TMP$352$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1741:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$352$1 * 56ll)) + 8ll);
	if( SDSIZE$1 != 1ll ) goto label$485;
	{
		int64 TMP$353$2;
		static FBSTRING AUX$2;
		static int64 REG$2;
		static int64 ISFREE$2;
		int64 vr$5 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$2 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8ll, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$6, 0ll, 0 );
		int64 vr$7 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$7;
		if( ISFREE$2 != 0ll ) goto label$487;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$487:;
		label$486:;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$488;
		TMP$353$2 = 24ll;
		goto label$1742;
		label$488:;
		TMP$353$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1742:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$353$2 * 56ll)) + 16ll) == 0ll ) goto label$490;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
		}
		goto label$489;
		label$490:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
		}
		label$489:;
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0ll ) goto label$492;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$492:;
		label$491:;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		goto label$482;
	}
	label$485:;
	label$484:;
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$494;
	{
		int64 TMP$355$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$495;
		TMP$355$2 = 24ll;
		goto label$1743;
		label$495:;
		TMP$355$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1743:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$355$2 * 56ll)) + 16ll) == 0ll ) goto label$497;
		{
			FBSTRING TMP$356$3;
			FBSTRING TMP$357$3;
			if( ((int64)-(*(int64*)SVREG$1 == 4ll) & (int64)-(SDSIZE$1 < 4ll)) == 0ll ) goto label$499;
			{
				uint8* vr$28 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
				fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$28, 0ll, 0 );
			}
			label$499:;
			label$498:;
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$356$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$356$3, (void*)"fild ", 6ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$357$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$357$3, (void*)vr$34, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$37, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$496;
		label$497:;
		{
			if( SDSIZE$1 != 4ll ) goto label$501;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$500;
			label$501:;
			{
				if( *(int64*)SVREG$1 == 0ll ) goto label$503;
				{
					HPUSH( (uint8*)"0" );
				}
				label$503:;
				label$502:;
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				if( *(int64*)SVREG$1 == 0ll ) goto label$505;
				{
					OUTP( (uint8*)"add esp, 6" );
				}
				goto label$504;
				label$505:;
				{
					OUTP( (uint8*)"add esp, 4" );
				}
				label$504:;
			}
			label$500:;
		}
		label$496:;
	}
	goto label$493;
	label$494:;
	{
		int64 TMP$359$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$506;
		TMP$359$2 = 24ll;
		goto label$1744;
		label$506:;
		TMP$359$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1744:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$359$2 * 56ll)) + 16ll) == 0ll ) goto label$508;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$507;
		label$508:;
		{
			if( SDSIZE$1 != 4ll ) goto label$510;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$509;
			label$510:;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				OUTP( (uint8*)"add esp, 6" );
			}
			label$509:;
		}
		label$507:;
	}
	label$493:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$482:;
}

static void _EMITSTORF2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$360$1;
	int64 TMP$361$1;
	label$511:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$513;
	TMP$360$1 = 24ll;
	goto label$1745;
	label$513:;
	TMP$360$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1745:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$360$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$514;
	TMP$361$1 = 24ll;
	goto label$1746;
	label$514:;
	TMP$361$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1746:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$361$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 != 4ll ) goto label$516;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$515;
	label$516:;
	{
		if( SDSIZE$1 != DDSIZE$1 ) goto label$518;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( SDSIZE$1 <= 4ll ) goto label$520;
			{
				HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 4ll, 0ll, -1ll );
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
				HPREPOPERAND( DVREG$1, &DST$1, 8ll, 4ll, 0ll, -1ll );
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$520:;
			label$519:;
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$517;
		label$518:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fstp ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$517:;
	}
	label$515:;
	label$512:;
}

static void _EMITLOADL2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$521:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$522:;
}

static void _EMITLOADI2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$363$1;
	int64 TMP$365$1;
	label$523:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$525;
	TMP$363$1 = 24ll;
	goto label$1747;
	label$525:;
	TMP$363$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1747:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$363$1 * 56ll)) + 8ll);
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC1$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 0ll ) goto label$527;
	{
		int64 TMP$364$2;
		HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$528;
		TMP$364$2 = 24ll;
		goto label$1748;
		label$528:;
		TMP$364$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1748:;
		if( (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$364$2 * 56ll)) + 16ll) & (int64)-(*(int64*)((uint8*)SVREG$1 + 48ll) < 0ll)) == 0ll ) goto label$530;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$529;
		label$530:;
		{
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$529:;
		goto label$524;
	}
	label$527:;
	label$526:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$531;
	TMP$365$1 = 24ll;
	goto label$1749;
	label$531:;
	TMP$365$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1749:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$365$1 * 56ll)) + 16ll) == 0ll ) goto label$533;
	{
		if( SDSIZE$1 >= 4ll ) goto label$535;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$534;
		label$535:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		}
		label$534:;
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)*(uint8**)&DST1$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sar ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 31", 5ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$532;
	label$533:;
	{
		if( SDSIZE$1 >= 4ll ) goto label$537;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$536;
		label$537:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)*(uint8**)&SRC1$1 );
		}
		label$536:;
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
	}
	label$532:;
	label$524:;
}

static void _EMITLOADF2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$366$1;
	label$538:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 == 4ll ) goto label$541;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$541:;
	label$540:;
	HPREPOPERAND64( DVREG$1, &DST$1, &AUX$1 );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$542;
	TMP$366$1 = 24ll;
	goto label$1750;
	label$542:;
	TMP$366$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1750:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$366$1 * 56ll)) + 16ll) == 0ll ) goto label$544;
	{
		FBSTRING TMP$367$2;
		FBSTRING TMP$368$2;
		OUTP( (uint8*)"sub esp, 8" );
		__builtin_memset( &TMP$367$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$367$2, (void*)"fistp ", 7ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
		__builtin_memset( &TMP$368$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$368$2, (void*)vr$11, -1ll, (void*)" [esp]", 7ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$14, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	goto label$543;
	label$544:;
	{
		int64 TMP$369$2;
		FBSTRING TMP$379$2;
		FBSTRING TMP$380$2;
		FBSTRING TMP$381$2;
		static FBSTRING LABEL_GEQ$2;
		static FBSTRING LABEL_DONE$2;
		static int64 ISEAXFREE$2;
		uint8* vr$15 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL_GEQ$2, -1ll, (void*)vr$15, 0ll, 0 );
		uint8* vr$16 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL_DONE$2, -1ll, (void*)vr$16, 0ll, 0 );
		int64 vr$17 = HISREGFREE( 0ll, 5ll );
		ISEAXFREE$2 = vr$17;
		if( ISEAXFREE$2 != 0ll ) goto label$545;
		int64 vr$18 = HISREGINVREG( DVREG$1, 5ll );
		TMP$369$2 = (int64)-(vr$18 != 0ll);
		goto label$1751;
		label$545:;
		TMP$369$2 = -1ll;
		label$1751:;
		ISEAXFREE$2 = TMP$369$2;
		OUTP( (uint8*)"sub esp, 8" );
		OUTP( (uint8*)"mov dword ptr [esp], 0x5F000000" );
		OUTP( (uint8*)"fcom dword ptr [esp]" );
		if( ISEAXFREE$2 == 0ll ) goto label$547;
		{
			OUTP( (uint8*)"fnstsw ax" );
			OUTP( (uint8*)"test ah, 1" );
		}
		goto label$546;
		label$547:;
		{
			HPUSH( (uint8*)"eax" );
			OUTP( (uint8*)"fnstsw ax" );
			OUTP( (uint8*)"test ah, 1" );
			HPOP( (uint8*)"eax" );
		}
		label$546:;
		HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL_GEQ$2 );
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
		HBRANCH( (uint8*)"jmp", (uint8*)*(uint8**)&LABEL_DONE$2 );
		HLABEL( (uint8*)*(uint8**)&LABEL_GEQ$2 );
		OUTP( (uint8*)"fsub dword ptr [esp]" );
		OUTP( (uint8*)"fistp qword ptr [esp]" );
		HPOP( (uint8*)*(uint8**)&DST$1 );
		HPOP( (uint8*)*(uint8**)&AUX$1 );
		__builtin_memset( &TMP$381$2, 0, 24ll );
		__builtin_memset( &TMP$379$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$379$2, (void*)"xor ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$380$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$380$2, (void*)vr$23, -1ll, (void*)", 0x80000000", 13ll );
		fb_StrAssign( (void*)&TMP$381$2, -1ll, (void*)vr$26, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$381$2 );
		fb_StrDelete( (FBSTRING*)&TMP$381$2 );
		HLABEL( (uint8*)*(uint8**)&LABEL_DONE$2 );
	}
	label$543:;
	label$539:;
}

static void _EMITLOADI2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$382$1;
	int64 TMP$383$1;
	label$548:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$550;
	TMP$382$1 = 24ll;
	goto label$1752;
	label$550:;
	TMP$382$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1752:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$382$1 * 56ll)) + 8ll);
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$551;
	TMP$383$1 = 24ll;
	goto label$1753;
	label$551:;
	TMP$383$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1753:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$383$1 * 56ll)) + 8ll);
	if( DDSIZE$1 != 1ll ) goto label$553;
	{
		if( *(int64*)SVREG$1 != 0ll ) goto label$555;
		{
			DDSIZE$1 = 4ll;
		}
		label$555:;
		label$554:;
	}
	label$553:;
	label$552:;
	if( ((int64)-(*(int64*)SVREG$1 == 0ll) | (int64)-(DDSIZE$1 == SDSIZE$1)) == 0ll ) goto label$557;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$556;
	label$557:;
	{
		if( DDSIZE$1 <= SDSIZE$1 ) goto label$559;
		{
			int64 TMP$384$3;
			if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$560;
			TMP$384$3 = 24ll;
			goto label$1754;
			label$560:;
			TMP$384$3 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
			label$1754:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$384$3 * 56ll)) + 16ll) == 0ll ) goto label$562;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
			}
			goto label$561;
			label$562:;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
			}
			label$561:;
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$558;
		label$559:;
		{
			if( *(int64*)SVREG$1 != 4ll ) goto label$564;
			{
				if( *(int64*)((uint8*)SVREG$1 + 24ll) == *(int64*)((uint8*)DVREG$1 + 24ll) ) goto label$566;
				{
					static FBSTRING AUX$5;
					static int64 DTYPE$5;
					DTYPE$5 = *(int64*)((uint8*)DVREG$1 + 8ll);
					if( DDSIZE$1 != 1ll ) goto label$568;
					{
						if( ((int64)-(*(int64*)((uint8*)SVREG$1 + 24ll) == 2ll) | (int64)-(*(int64*)((uint8*)SVREG$1 + 24ll) == 1ll)) == 0ll ) goto label$570;
						{
							DTYPE$5 = 8ll;
							uint8* vr$30 = HGETREGNAME( DTYPE$5, *(int64*)((uint8*)DVREG$1 + 24ll) );
							fb_StrAssign( (void*)&DST$1, -1ll, (void*)vr$30, 0ll, 0 );
						}
						label$570:;
						label$569:;
					}
					label$568:;
					label$567:;
					uint8* vr$32 = HGETREGNAME( DTYPE$5, *(int64*)((uint8*)SVREG$1 + 24ll) );
					fb_StrAssign( (void*)&AUX$5, -1ll, (void*)vr$32, 0ll, 0 );
					fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$5, -1ll, 0 );
					OUTP( (uint8*)*(uint8**)&OSTR$1 );
				}
				label$566:;
				label$565:;
			}
			goto label$563;
			label$564:;
			{
				HPREPOPERAND( SVREG$1, &SRC$1, *($11FB_DATATYPE*)((uint8*)DVREG$1 + 8ll), 0ll, 0ll, -1ll );
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$563:;
		}
		label$558:;
	}
	label$556:;
	label$549:;
}

static void _EMITLOADL2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$571:;
	_EMITLOADI2I( DVREG$1, SVREG$1 );
	label$572:;
}

static void _EMITLOADF2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$385$1;
	label$573:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$575;
	TMP$385$1 = 24ll;
	goto label$1755;
	label$575:;
	TMP$385$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1755:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$385$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 == 4ll ) goto label$577;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$577:;
	label$576:;
	if( DDSIZE$1 != 1ll ) goto label$579;
	{
		OUTP( (uint8*)"sub esp, 4" );
		OUTP( (uint8*)"fistp dword ptr [esp]" );
		if( *(int64*)DVREG$1 != 4ll ) goto label$581;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"byte ptr [esp]" );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$580;
		label$581:;
		{
			static FBSTRING AUX$3;
			static FBSTRING AUX8$3;
			static int64 REG$3;
			static int64 ISFREE$3;
			int64 vr$7 = HFINDREGNOTINVREG( DVREG$1, -1ll );
			REG$3 = vr$7;
			uint8* vr$8 = HGETREGNAME( 2ll, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1ll, (void*)vr$8, 0ll, 0 );
			uint8* vr$9 = HGETREGNAME( 8ll, REG$3 );
			fb_StrAssign( (void*)&AUX$3, -1ll, (void*)vr$9, 0ll, 0 );
			int64 vr$10 = HISREGFREE( 0ll, REG$3 );
			ISFREE$3 = vr$10;
			if( ISFREE$3 != 0ll ) goto label$583;
			{
				HXCHG( (uint8*)*(uint8**)&AUX$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$582;
			label$583:;
			{
				HMOV( (uint8*)*(uint8**)&AUX8$3, (uint8*)"byte ptr [esp]" );
			}
			label$582:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			if( ISFREE$3 != 0ll ) goto label$585;
			{
				HPOP( (uint8*)*(uint8**)&AUX$3 );
			}
			goto label$584;
			label$585:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$584:;
		}
		label$580:;
	}
	goto label$578;
	label$579:;
	{
		int64 TMP$386$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$586;
		TMP$386$2 = 24ll;
		goto label$1756;
		label$586:;
		TMP$386$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$1756:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$386$2 * 56ll)) + 16ll) == 0ll ) goto label$588;
		{
			FBSTRING TMP$387$3;
			FBSTRING TMP$388$3;
			OUTP( (uint8*)"sub esp, 4" );
			__builtin_memset( &TMP$387$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$387$3, (void*)"fistp ", 7ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$388$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$388$3, (void*)vr$21, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$24, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( DDSIZE$1 >= 4ll ) goto label$590;
			{
				uint8* vr$26 = HGETREGNAME( 8ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
				fb_StrAssign( (void*)&DST$1, -1ll, (void*)vr$26, 0ll, 0 );
			}
			label$590:;
			label$589:;
			HPOP( (uint8*)*(uint8**)&DST$1 );
		}
		goto label$587;
		label$588:;
		{
			if( DDSIZE$1 != 4ll ) goto label$592;
			{
				OUTP( (uint8*)"sub esp, 8" );
				OUTP( (uint8*)"fistp qword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$591;
			label$592:;
			{
				OUTP( (uint8*)"sub esp, 4" );
				OUTP( (uint8*)"fistp dword ptr [esp]" );
				HPOP( (uint8*)*(uint8**)&DST$1 );
				OUTP( (uint8*)"add esp, 2" );
			}
			label$591:;
		}
		label$587:;
	}
	label$578:;
	label$574:;
}

static void _EMITLOADL2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$593:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$596;
	{
		int64 TMP$389$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$597;
		TMP$389$2 = 24ll;
		goto label$1757;
		label$597:;
		TMP$389$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1757:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$389$2 * 56ll)) + 16ll) == 0ll ) goto label$599;
		{
			FBSTRING TMP$390$3;
			FBSTRING TMP$391$3;
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$390$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$390$3, (void*)"fild ", 6ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$391$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$391$3, (void*)vr$15, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$18, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 8" );
		}
		goto label$598;
		label$599:;
		{
			HPREPOPERAND64( SVREG$1, &SRC$1, &AUX$1 );
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			OUTP( (uint8*)"fild qword ptr [esp]" );
			OUTP( (uint8*)"add esp, 8" );
			HULONG2DBL( SVREG$1 );
		}
		label$598:;
	}
	goto label$595;
	label$596:;
	{
		int64 TMP$392$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$600;
		TMP$392$2 = 24ll;
		goto label$1758;
		label$600:;
		TMP$392$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1758:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$392$2 * 56ll)) + 16ll) == 0ll ) goto label$602;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$601;
		label$602:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HULONG2DBL( SVREG$1 );
		}
		label$601:;
	}
	label$595:;
	label$594:;
}

static void _EMITLOADI2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$393$1;
	label$603:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$605;
	TMP$393$1 = 24ll;
	goto label$1759;
	label$605:;
	TMP$393$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1759:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$393$1 * 56ll)) + 8ll);
	if( SDSIZE$1 != 1ll ) goto label$607;
	{
		int64 TMP$394$2;
		static FBSTRING AUX$2;
		static int64 ISFREE$2;
		static int64 REG$2;
		int64 vr$5 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$2 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8ll, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$6, 0ll, 0 );
		int64 vr$7 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$7;
		if( ISFREE$2 != 0ll ) goto label$609;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$609:;
		label$608:;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$610;
		TMP$394$2 = 24ll;
		goto label$1760;
		label$610:;
		TMP$394$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1760:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$394$2 * 56ll)) + 16ll) == 0ll ) goto label$612;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movsx ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$611;
		label$612:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"movzx ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&AUX$2, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$611:;
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0ll ) goto label$614;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$614:;
		label$613:;
		goto label$604;
	}
	label$607:;
	label$606:;
	if( ((int64)-(*(int64*)SVREG$1 == 4ll) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$616;
	{
		int64 TMP$395$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$617;
		TMP$395$2 = 24ll;
		goto label$1761;
		label$617:;
		TMP$395$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1761:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$395$2 * 56ll)) + 16ll) == 0ll ) goto label$619;
		{
			FBSTRING TMP$396$3;
			FBSTRING TMP$397$3;
			if( ((int64)-(*(int64*)SVREG$1 == 4ll) & (int64)-(SDSIZE$1 < 4ll)) == 0ll ) goto label$621;
			{
				uint8* vr$28 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
				fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$28, 0ll, 0 );
			}
			label$621:;
			label$620:;
			HPUSH( (uint8*)*(uint8**)&SRC$1 );
			__builtin_memset( &TMP$396$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$396$3, (void*)"fild ", 6ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
			__builtin_memset( &TMP$397$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$397$3, (void*)vr$34, -1ll, (void*)" [esp]", 7ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$37, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			OUTP( (uint8*)"add esp, 4" );
		}
		goto label$618;
		label$619:;
		{
			if( SDSIZE$1 != 4ll ) goto label$623;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$622;
			label$623:;
			{
				if( *(int64*)SVREG$1 == 0ll ) goto label$625;
				{
					HPUSH( (uint8*)"0" );
				}
				label$625:;
				label$624:;
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				if( *(int64*)SVREG$1 == 0ll ) goto label$627;
				{
					OUTP( (uint8*)"add esp, 6" );
				}
				goto label$626;
				label$627:;
				{
					OUTP( (uint8*)"add esp, 4" );
				}
				label$626:;
			}
			label$622:;
		}
		label$618:;
	}
	goto label$615;
	label$616:;
	{
		int64 TMP$398$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$628;
		TMP$398$2 = 24ll;
		goto label$1762;
		label$628:;
		TMP$398$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1762:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$398$2 * 56ll)) + 16ll) == 0ll ) goto label$630;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fild ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$629;
		label$630:;
		{
			if( SDSIZE$1 != 4ll ) goto label$632;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild qword ptr [esp]" );
				OUTP( (uint8*)"add esp, 8" );
			}
			goto label$631;
			label$632:;
			{
				HPUSH( (uint8*)"0" );
				HPUSH( (uint8*)*(uint8**)&SRC$1 );
				OUTP( (uint8*)"fild dword ptr [esp]" );
				OUTP( (uint8*)"add esp, 6" );
			}
			label$631:;
		}
		label$629:;
	}
	label$615:;
	label$604:;
}

static void _EMITLOADF2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$633:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$634:;
}

static void _EMITMOVL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$635:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$636:;
}

static void _EMITMOVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$399$1;
	label$637:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$639;
	TMP$399$1 = 24ll;
	goto label$1763;
	label$639:;
	TMP$399$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1763:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$399$1 * 56ll)) + 8ll) != 1ll ) goto label$641;
	{
		uint8* vr$6 = HGETREGNAME( 8ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
		fb_StrAssign( (void*)&DST$1, -1ll, (void*)vr$6, 0ll, 0 );
		uint8* vr$8 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$8, 0ll, 0 );
	}
	goto label$640;
	label$641:;
	{
		HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
		HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	}
	label$640:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$638:;
}

static void _EMITMOVF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$642:;
	label$643:;
}

static void _EMITADDL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$644:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"add ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"adc ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$645:;
}

static void _EMITADDI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$646:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DOINC$1;
	static int64 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	DOINC$1 = 0ll;
	DODEC$1 = 0ll;
	if( *(int64*)SVREG$1 != 0ll ) goto label$649;
	{
		{
			int64 TMP$402$3;
			TMP$402$3 = *(int64*)((uint8*)SVREG$1 + 48ll);
			if( TMP$402$3 != 1ll ) goto label$651;
			label$652:;
			{
				DOINC$1 = -1ll;
			}
			goto label$650;
			label$651:;
			if( TMP$402$3 != -1ll ) goto label$653;
			label$654:;
			{
				DODEC$1 = -1ll;
			}
			label$653:;
			label$650:;
		}
	}
	label$649:;
	label$648:;
	if( DOINC$1 == 0ll ) goto label$656;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"inc ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$655;
	label$656:;
	if( DODEC$1 == 0ll ) goto label$657;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"dec ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$655;
	label$657:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"add ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$655:;
	label$647:;
}

static void _EMITADDF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$658:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 4ll ) goto label$661;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"faddp", 6ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$660;
	label$661:;
	{
		int64 TMP$405$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$662;
		TMP$405$2 = 24ll;
		goto label$1764;
		label$662:;
		TMP$405$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1764:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$405$2 * 56ll)) != 1ll ) goto label$664;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fadd ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$663;
		label$664:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fiadd ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$663:;
	}
	label$660:;
	label$659:;
}

static void _EMITSUBL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$665:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sbb ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$666:;
}

static void _EMITSUBI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$667:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 DOINC$1;
	static int64 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	DOINC$1 = 0ll;
	DODEC$1 = 0ll;
	if( *(int64*)SVREG$1 != 0ll ) goto label$670;
	{
		{
			int64 TMP$410$3;
			TMP$410$3 = *(int64*)((uint8*)SVREG$1 + 48ll);
			if( TMP$410$3 != 1ll ) goto label$672;
			label$673:;
			{
				DODEC$1 = -1ll;
			}
			goto label$671;
			label$672:;
			if( TMP$410$3 != -1ll ) goto label$674;
			label$675:;
			{
				DOINC$1 = -1ll;
			}
			label$674:;
			label$671:;
		}
	}
	label$670:;
	label$669:;
	if( DODEC$1 == 0ll ) goto label$677;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"dec ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$676;
	label$677:;
	if( DOINC$1 == 0ll ) goto label$678;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"inc ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$676;
	label$678:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$676:;
	label$668:;
}

static void _EMITSUBF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$679:;
	static FBSTRING SRC$1;
	static int64 DOINC$1;
	static int64 DODEC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 4ll ) goto label$682;
	{
		OUTP( (uint8*)"fsubrp" );
	}
	goto label$681;
	label$682:;
	{
		int64 TMP$412$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$683;
		TMP$412$2 = 24ll;
		goto label$1765;
		label$683:;
		TMP$412$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1765:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$412$2 * 56ll)) != 1ll ) goto label$685;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fsub ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$684;
		label$685:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fisub ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$684:;
	}
	label$681:;
	label$680:;
}

static void _EMITMULL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	FBSTRING TMP$416$1;
	FBSTRING TMP$417$1;
	FBSTRING TMP$418$1;
	FBSTRING TMP$420$1;
	FBSTRING TMP$421$1;
	FBSTRING TMP$422$1;
	FBSTRING TMP$424$1;
	FBSTRING TMP$425$1;
	FBSTRING TMP$426$1;
	FBSTRING TMP$428$1;
	FBSTRING TMP$429$1;
	FBSTRING TMP$430$1;
	FBSTRING TMP$433$1;
	FBSTRING TMP$434$1;
	FBSTRING TMP$435$1;
	FBSTRING TMP$437$1;
	FBSTRING TMP$438$1;
	FBSTRING TMP$439$1;
	FBSTRING TMP$443$1;
	FBSTRING TMP$444$1;
	FBSTRING TMP$445$1;
	label$686:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static int64 ISEAXFREE$1;
	static int64 ISEDXFREE$1;
	static int64 EAXINDEST$1;
	static int64 EDXINDEST$1;
	static int64 OFS$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	int64 vr$0 = HISREGFREE( 0ll, 5ll );
	ISEAXFREE$1 = vr$0;
	int64 vr$1 = HISREGFREE( 0ll, 0ll );
	ISEDXFREE$1 = vr$1;
	int64 vr$2 = HISREGINVREG( DVREG$1, 5ll );
	EAXINDEST$1 = vr$2;
	int64 vr$3 = HISREGINVREG( DVREG$1, 0ll );
	EDXINDEST$1 = vr$3;
	HPUSH( (uint8*)*(uint8**)&SRC2$1 );
	HPUSH( (uint8*)*(uint8**)&SRC1$1 );
	HPUSH( (uint8*)*(uint8**)&DST2$1 );
	HPUSH( (uint8*)*(uint8**)&DST1$1 );
	OFS$1 = 0ll;
	if( EDXINDEST$1 == 0ll ) goto label$689;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$691;
		{
			OFS$1 = OFS$1 + 4ll;
			HPUSH( (uint8*)"edx" );
		}
		label$691:;
		label$690:;
	}
	goto label$688;
	label$689:;
	{
		if( ISEDXFREE$1 != 0ll ) goto label$693;
		{
			OFS$1 = OFS$1 + 4ll;
			HPUSH( (uint8*)"edx" );
		}
		label$693:;
		label$692:;
	}
	label$688:;
	if( EAXINDEST$1 == 0ll ) goto label$695;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$697;
		{
			OFS$1 = OFS$1 + 4ll;
			HPUSH( (uint8*)"eax" );
		}
		label$697:;
		label$696:;
	}
	goto label$694;
	label$695:;
	{
		if( ISEAXFREE$1 != 0ll ) goto label$699;
		{
			OFS$1 = OFS$1 + 4ll;
			HPUSH( (uint8*)"eax" );
		}
		label$699:;
		label$698:;
	}
	label$694:;
	__builtin_memset( &TMP$418$1, 0, 24ll );
	FBSTRING* vr$11 = fb_LongintToStr( OFS$1 );
	__builtin_memset( &TMP$416$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$416$1, (void*)"mov eax, [esp+", 15ll, (void*)vr$11, -1ll );
	__builtin_memset( &TMP$417$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$417$1, (void*)vr$14, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$418$1, -1ll, (void*)vr$17, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$418$1 );
	fb_StrDelete( (FBSTRING*)&TMP$418$1 );
	__builtin_memset( &TMP$422$1, 0, 24ll );
	FBSTRING* vr$22 = fb_LongintToStr( OFS$1 + 8ll );
	__builtin_memset( &TMP$420$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$420$1, (void*)"mul dword ptr [esp+", 20ll, (void*)vr$22, -1ll );
	__builtin_memset( &TMP$421$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$421$1, (void*)vr$25, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$422$1, -1ll, (void*)vr$28, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$422$1 );
	fb_StrDelete( (FBSTRING*)&TMP$422$1 );
	__builtin_memset( &TMP$426$1, 0, 24ll );
	FBSTRING* vr$32 = fb_LongintToStr( OFS$1 );
	__builtin_memset( &TMP$424$1, 0, 24ll );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$424$1, (void*)"xchg eax, [esp+", 16ll, (void*)vr$32, -1ll );
	__builtin_memset( &TMP$425$1, 0, 24ll );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$425$1, (void*)vr$35, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$426$1, -1ll, (void*)vr$38, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$426$1 );
	fb_StrDelete( (FBSTRING*)&TMP$426$1 );
	__builtin_memset( &TMP$430$1, 0, 24ll );
	FBSTRING* vr$43 = fb_LongintToStr( OFS$1 + 12ll );
	__builtin_memset( &TMP$428$1, 0, 24ll );
	FBSTRING* vr$46 = fb_StrConcat( &TMP$428$1, (void*)"imul eax, [esp+", 16ll, (void*)vr$43, -1ll );
	__builtin_memset( &TMP$429$1, 0, 24ll );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$429$1, (void*)vr$46, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$430$1, -1ll, (void*)vr$49, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$430$1 );
	fb_StrDelete( (FBSTRING*)&TMP$430$1 );
	OUTP( (uint8*)"add eax, edx" );
	__builtin_memset( &TMP$435$1, 0, 24ll );
	FBSTRING* vr$54 = fb_LongintToStr( OFS$1 + 4ll );
	__builtin_memset( &TMP$433$1, 0, 24ll );
	FBSTRING* vr$57 = fb_StrConcat( &TMP$433$1, (void*)"mov edx, [esp+", 15ll, (void*)vr$54, -1ll );
	__builtin_memset( &TMP$434$1, 0, 24ll );
	FBSTRING* vr$60 = fb_StrConcat( &TMP$434$1, (void*)vr$57, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$435$1, -1ll, (void*)vr$60, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$435$1 );
	fb_StrDelete( (FBSTRING*)&TMP$435$1 );
	__builtin_memset( &TMP$439$1, 0, 24ll );
	FBSTRING* vr$65 = fb_LongintToStr( OFS$1 + 8ll );
	__builtin_memset( &TMP$437$1, 0, 24ll );
	FBSTRING* vr$68 = fb_StrConcat( &TMP$437$1, (void*)"imul edx, [esp+", 16ll, (void*)vr$65, -1ll );
	__builtin_memset( &TMP$438$1, 0, 24ll );
	FBSTRING* vr$71 = fb_StrConcat( &TMP$438$1, (void*)vr$68, -1ll, (void*)"]", 2ll );
	fb_StrAssign( (void*)&TMP$439$1, -1ll, (void*)vr$71, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$439$1 );
	fb_StrDelete( (FBSTRING*)&TMP$439$1 );
	OUTP( (uint8*)"add edx, eax" );
	__builtin_memset( &TMP$445$1, 0, 24ll );
	FBSTRING* vr$76 = fb_LongintToStr( OFS$1 + 4ll );
	__builtin_memset( &TMP$443$1, 0, 24ll );
	FBSTRING* vr$79 = fb_StrConcat( &TMP$443$1, (void*)"mov [esp+", 10ll, (void*)vr$76, -1ll );
	__builtin_memset( &TMP$444$1, 0, 24ll );
	FBSTRING* vr$82 = fb_StrConcat( &TMP$444$1, (void*)vr$79, -1ll, (void*)"], edx", 7ll );
	fb_StrAssign( (void*)&TMP$445$1, -1ll, (void*)vr$82, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$445$1 );
	fb_StrDelete( (FBSTRING*)&TMP$445$1 );
	if( EAXINDEST$1 == 0ll ) goto label$701;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$703;
		{
			HPOP( (uint8*)"eax" );
		}
		label$703:;
		label$702:;
	}
	goto label$700;
	label$701:;
	{
		if( ISEAXFREE$1 != 0ll ) goto label$705;
		{
			HPOP( (uint8*)"eax" );
		}
		label$705:;
		label$704:;
	}
	label$700:;
	if( EDXINDEST$1 == 0ll ) goto label$707;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$709;
		{
			HPOP( (uint8*)"edx" );
		}
		label$709:;
		label$708:;
	}
	goto label$706;
	label$707:;
	{
		if( ISEDXFREE$1 != 0ll ) goto label$711;
		{
			HPOP( (uint8*)"edx" );
		}
		label$711:;
		label$710:;
	}
	label$706:;
	HPOP( (uint8*)*(uint8**)&DST1$1 );
	HPOP( (uint8*)*(uint8**)&DST2$1 );
	OUTP( (uint8*)"add esp, 8" );
	label$687:;
}

static void _EMITMULI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$712:;
	static int64 REG$1;
	static int64 ISFREE$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)DVREG$1 == 4ll ) goto label$715;
	{
		int64 vr$1 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$1 = vr$1;
		uint8* vr$3 = HGETREGNAME( *(int64*)((uint8*)SVREG$1 + 8ll), REG$1 );
		fb_StrAssign( (void*)&RNAME$1, -1ll, (void*)vr$3, 0ll, 0 );
		int64 vr$4 = HISREGFREE( 0ll, REG$1 );
		ISFREE$1 = vr$4;
		if( ISFREE$1 != 0ll ) goto label$717;
		{
			HPUSH( (uint8*)*(uint8**)&RNAME$1 );
		}
		label$717:;
		label$716:;
		HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"imul ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&RNAME$1 );
		if( ISFREE$1 != 0ll ) goto label$719;
		{
			HPOP( (uint8*)*(uint8**)&RNAME$1 );
		}
		label$719:;
		label$718:;
	}
	goto label$714;
	label$715:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"imul ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$714:;
	label$713:;
}

static void _EMITMULF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$720:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 4ll ) goto label$723;
	{
		OUTP( (uint8*)"fmulp" );
	}
	goto label$722;
	label$723:;
	{
		int64 TMP$448$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$724;
		TMP$448$2 = 24ll;
		goto label$1766;
		label$724:;
		TMP$448$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1766:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$448$2 * 56ll)) != 1ll ) goto label$726;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fmul ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$725;
		label$726:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fimul ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$725:;
	}
	label$722:;
	label$721:;
}

static void _EMITDIVF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$727:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 4ll ) goto label$730;
	{
		OUTP( (uint8*)"fdivrp" );
	}
	goto label$729;
	label$730:;
	{
		int64 TMP$452$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$731;
		TMP$452$2 = 24ll;
		goto label$1767;
		label$731:;
		TMP$452$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1767:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$452$2 * 56ll)) != 1ll ) goto label$733;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fdiv ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$732;
		label$733:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fidiv ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$732:;
	}
	label$729:;
	label$728:;
}

static void _EMITDIVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$455$1;
	int64 TMP$457$1;
	label$734:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 ECXTRASHED$1;
	static int64 EAXFREE$1;
	static int64 ECXFREE$1;
	static int64 EDXFREE$1;
	static int64 EAXINDEST$1;
	static int64 ECXINDEST$1;
	static int64 EDXINDEST$1;
	static int64 EAXINSOURCE$1;
	static int64 EDXINSOURCE$1;
	static FBSTRING EAX$1;
	static FBSTRING ECX$1;
	static FBSTRING EDX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$736;
	TMP$455$1 = 24ll;
	goto label$1768;
	label$736:;
	TMP$455$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1768:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$455$1 * 56ll)) + 8ll) != 4ll ) goto label$738;
	{
		fb_StrAssign( (void*)&EAX$1, -1ll, (void*)"eax", 4ll, 0 );
		fb_StrAssign( (void*)&ECX$1, -1ll, (void*)"ecx", 4ll, 0 );
		fb_StrAssign( (void*)&EDX$1, -1ll, (void*)"edx", 4ll, 0 );
	}
	goto label$737;
	label$738:;
	{
		fb_StrAssign( (void*)&EAX$1, -1ll, (void*)"ax", 3ll, 0 );
		fb_StrAssign( (void*)&ECX$1, -1ll, (void*)"cx", 3ll, 0 );
		fb_StrAssign( (void*)&EDX$1, -1ll, (void*)"dx", 3ll, 0 );
	}
	label$737:;
	ECXTRASHED$1 = 0ll;
	int64 vr$5 = HISREGFREE( 0ll, 5ll );
	EAXFREE$1 = vr$5;
	int64 vr$6 = HISREGFREE( 0ll, 3ll );
	ECXFREE$1 = vr$6;
	int64 vr$7 = HISREGFREE( 0ll, 0ll );
	EDXFREE$1 = vr$7;
	int64 vr$8 = HISREGINVREG( SVREG$1, 5ll );
	EAXINSOURCE$1 = vr$8;
	int64 vr$9 = HISREGINVREG( SVREG$1, 0ll );
	EDXINSOURCE$1 = vr$9;
	int64 vr$10 = HISREGINVREG( DVREG$1, 5ll );
	EAXINDEST$1 = vr$10;
	int64 vr$11 = HISREGINVREG( DVREG$1, 0ll );
	EDXINDEST$1 = vr$11;
	int64 vr$12 = HISREGINVREG( DVREG$1, 3ll );
	ECXINDEST$1 = vr$12;
	if( ((EAXINSOURCE$1 | EDXINSOURCE$1) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$740;
	{
		ECXTRASHED$1 = -1ll;
		if( ECXINDEST$1 == 0ll ) goto label$742;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int64*)DVREG$1 == 4ll ) goto label$744;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8ll, 0ll, 0ll, -1ll );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$744:;
			label$743:;
		}
		goto label$741;
		label$742:;
		if( ECXFREE$1 != 0ll ) goto label$745;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$745:;
		label$741:;
		HMOV( (uint8*)*(uint8**)&ECX$1, (uint8*)*(uint8**)&SRC$1 );
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)&ECX$1, -1ll, 0 );
	}
	label$740:;
	label$739:;
	if( EAXINDEST$1 != 0ll ) goto label$747;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0ll ) goto label$749;
		{
			if( EAXFREE$1 != 0ll ) goto label$751;
			{
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$750;
			label$751:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$750:;
		}
		goto label$748;
		label$749:;
		{
			if( EAXFREE$1 != 0ll ) goto label$753;
			{
				HPUSH( (uint8*)"eax" );
			}
			label$753:;
			label$752:;
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$748:;
	}
	goto label$746;
	label$747:;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$755;
		{
			HPUSH( (uint8*)"eax" );
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$755:;
		label$754:;
	}
	label$746:;
	if( EDXINDEST$1 == 0ll ) goto label$757;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$759;
		{
			HPUSH( (uint8*)"edx" );
		}
		label$759:;
		label$758:;
	}
	goto label$756;
	label$757:;
	if( EDXFREE$1 != 0ll ) goto label$760;
	{
		HPUSH( (uint8*)"edx" );
	}
	label$760:;
	label$756:;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$761;
	TMP$457$1 = 24ll;
	goto label$1769;
	label$761:;
	TMP$457$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1769:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$457$1 * 56ll)) + 16ll) == 0ll ) goto label$763;
	{
		int64 TMP$458$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$764;
		TMP$458$2 = 24ll;
		goto label$1770;
		label$764:;
		TMP$458$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$1770:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$458$2 * 56ll)) + 8ll) != 4ll ) goto label$766;
		{
			OUTP( (uint8*)"cdq" );
		}
		goto label$765;
		label$766:;
		{
			OUTP( (uint8*)"cwd" );
		}
		label$765:;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"idiv ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$762;
	label$763:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EDX$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EDX$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"div ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$762:;
	if( EDXINDEST$1 == 0ll ) goto label$768;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$770;
		{
			HPOP( (uint8*)"edx" );
		}
		label$770:;
		label$769:;
	}
	goto label$767;
	label$768:;
	if( EDXFREE$1 != 0ll ) goto label$771;
	{
		HPOP( (uint8*)"edx" );
	}
	label$771:;
	label$767:;
	if( EAXINDEST$1 != 0ll ) goto label$773;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0ll ) goto label$775;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$777;
			{
				if( EAXFREE$1 != 0ll ) goto label$779;
				{
					HPOP( (uint8*)"ecx" );
					OUTP( (uint8*)"xchg ecx, [esp]" );
				}
				goto label$778;
				label$779:;
				{
					HPOP( (uint8*)"ecx" );
				}
				label$778:;
			}
			label$777:;
			label$776:;
		}
		label$775:;
		label$774:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&EAX$1 );
		if( EAXFREE$1 != 0ll ) goto label$781;
		{
			HPOP( (uint8*)"eax" );
		}
		label$781:;
		label$780:;
	}
	goto label$772;
	label$773:;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$783;
		{
			if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXTRASHED$1 == 0ll)) == 0ll ) goto label$785;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
				OUTP( (uint8*)"xchg ecx, eax" );
			}
			goto label$784;
			label$785:;
			{
				HMOV( (uint8*)"ecx", (uint8*)"eax" );
				HPOP( (uint8*)"eax" );
			}
			label$784:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&ECX$1 );
			if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXTRASHED$1 == 0ll)) == 0ll ) goto label$787;
			{
				HPOP( (uint8*)"ecx" );
			}
			label$787:;
			label$786:;
		}
		label$783:;
		label$782:;
	}
	label$772:;
	if( ECXTRASHED$1 == 0ll ) goto label$789;
	{
		if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXINDEST$1 == 0ll)) == 0ll ) goto label$791;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$791:;
		label$790:;
	}
	label$789:;
	label$788:;
	label$735:;
}

static void _EMITMODI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$465$1;
	int64 TMP$466$1;
	label$792:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static int64 ECXTRASHED$1;
	static int64 EAXFREE$1;
	static int64 ECXFREE$1;
	static int64 EDXFREE$1;
	static int64 EAXINDEST$1;
	static int64 ECXINDEST$1;
	static int64 EDXINDEST$1;
	static int64 EAXINSOURCE$1;
	static int64 EDXINSOURCE$1;
	static FBSTRING EAX$1;
	static FBSTRING ECX$1;
	static FBSTRING EDX$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$794;
	TMP$465$1 = 24ll;
	goto label$1771;
	label$794:;
	TMP$465$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1771:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$465$1 * 56ll)) + 8ll) != 4ll ) goto label$796;
	{
		fb_StrAssign( (void*)&EAX$1, -1ll, (void*)"eax", 4ll, 0 );
		fb_StrAssign( (void*)&ECX$1, -1ll, (void*)"ecx", 4ll, 0 );
		fb_StrAssign( (void*)&EDX$1, -1ll, (void*)"edx", 4ll, 0 );
	}
	goto label$795;
	label$796:;
	{
		fb_StrAssign( (void*)&EAX$1, -1ll, (void*)"ax", 3ll, 0 );
		fb_StrAssign( (void*)&ECX$1, -1ll, (void*)"cx", 3ll, 0 );
		fb_StrAssign( (void*)&EDX$1, -1ll, (void*)"dx", 3ll, 0 );
	}
	label$795:;
	ECXTRASHED$1 = 0ll;
	int64 vr$5 = HISREGFREE( 0ll, 5ll );
	EAXFREE$1 = vr$5;
	int64 vr$6 = HISREGFREE( 0ll, 3ll );
	ECXFREE$1 = vr$6;
	int64 vr$7 = HISREGFREE( 0ll, 0ll );
	EDXFREE$1 = vr$7;
	int64 vr$8 = HISREGINVREG( SVREG$1, 5ll );
	EAXINSOURCE$1 = vr$8;
	int64 vr$9 = HISREGINVREG( SVREG$1, 0ll );
	EDXINSOURCE$1 = vr$9;
	int64 vr$10 = HISREGINVREG( DVREG$1, 5ll );
	EAXINDEST$1 = vr$10;
	int64 vr$11 = HISREGINVREG( DVREG$1, 0ll );
	EDXINDEST$1 = vr$11;
	int64 vr$12 = HISREGINVREG( DVREG$1, 3ll );
	ECXINDEST$1 = vr$12;
	if( ((EAXINSOURCE$1 | EDXINSOURCE$1) | (int64)-(*(int64*)SVREG$1 == 0ll)) == 0ll ) goto label$798;
	{
		ECXTRASHED$1 = -1ll;
		if( ECXINDEST$1 == 0ll ) goto label$800;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int64*)DVREG$1 == 4ll ) goto label$802;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8ll, 0ll, 0ll, -1ll );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$802:;
			label$801:;
		}
		goto label$799;
		label$800:;
		if( ECXFREE$1 != 0ll ) goto label$803;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$803:;
		label$799:;
		HMOV( (uint8*)*(uint8**)&ECX$1, (uint8*)*(uint8**)&SRC$1 );
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)&ECX$1, -1ll, 0 );
	}
	label$798:;
	label$797:;
	if( EAXINDEST$1 != 0ll ) goto label$805;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0ll ) goto label$807;
		{
			if( EAXFREE$1 != 0ll ) goto label$809;
			{
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$808;
			label$809:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$808:;
		}
		goto label$806;
		label$807:;
		{
			if( EAXFREE$1 != 0ll ) goto label$811;
			{
				HPUSH( (uint8*)"eax" );
			}
			label$811:;
			label$810:;
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$806:;
	}
	goto label$804;
	label$805:;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$813;
		{
			HPUSH( (uint8*)"eax" );
			HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&DST$1 );
		}
		label$813:;
		label$812:;
	}
	label$804:;
	if( EDXINDEST$1 == 0ll ) goto label$815;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$817;
		{
			HPUSH( (uint8*)"edx" );
		}
		label$817:;
		label$816:;
	}
	goto label$814;
	label$815:;
	if( EDXFREE$1 != 0ll ) goto label$818;
	{
		HPUSH( (uint8*)"edx" );
	}
	label$818:;
	label$814:;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$819;
	TMP$466$1 = 24ll;
	goto label$1772;
	label$819:;
	TMP$466$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1772:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$466$1 * 56ll)) + 16ll) == 0ll ) goto label$821;
	{
		int64 TMP$467$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$822;
		TMP$467$2 = 24ll;
		goto label$1773;
		label$822:;
		TMP$467$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$1773:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$467$2 * 56ll)) + 8ll) != 4ll ) goto label$824;
		{
			OUTP( (uint8*)"cdq" );
		}
		goto label$823;
		label$824:;
		{
			OUTP( (uint8*)"cwd" );
		}
		label$823:;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"idiv ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$820;
	label$821:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EDX$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&EDX$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"div ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$820:;
	HMOV( (uint8*)*(uint8**)&EAX$1, (uint8*)*(uint8**)&EDX$1 );
	if( EDXINDEST$1 == 0ll ) goto label$826;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$828;
		{
			HPOP( (uint8*)"edx" );
		}
		label$828:;
		label$827:;
	}
	goto label$825;
	label$826:;
	if( EDXFREE$1 != 0ll ) goto label$829;
	{
		HPOP( (uint8*)"edx" );
	}
	label$829:;
	label$825:;
	if( EAXINDEST$1 != 0ll ) goto label$831;
	{
		if( (ECXINDEST$1 & ECXTRASHED$1) == 0ll ) goto label$833;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$835;
			{
				if( EAXFREE$1 != 0ll ) goto label$837;
				{
					HPOP( (uint8*)"ecx" );
					OUTP( (uint8*)"xchg ecx, [esp]" );
				}
				goto label$836;
				label$837:;
				{
					HPOP( (uint8*)"ecx" );
				}
				label$836:;
			}
			label$835:;
			label$834:;
		}
		label$833:;
		label$832:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&EAX$1 );
		if( EAXFREE$1 != 0ll ) goto label$839;
		{
			HPOP( (uint8*)"eax" );
		}
		label$839:;
		label$838:;
	}
	goto label$830;
	label$831:;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$841;
		{
			if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXTRASHED$1 == 0ll)) == 0ll ) goto label$843;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
				OUTP( (uint8*)"xchg ecx, eax" );
			}
			goto label$842;
			label$843:;
			{
				HMOV( (uint8*)"ecx", (uint8*)"eax" );
				HPOP( (uint8*)"eax" );
			}
			label$842:;
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&ECX$1 );
			if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXTRASHED$1 == 0ll)) == 0ll ) goto label$845;
			{
				HPOP( (uint8*)"ecx" );
			}
			label$845:;
			label$844:;
		}
		label$841:;
		label$840:;
	}
	label$830:;
	if( ECXTRASHED$1 == 0ll ) goto label$847;
	{
		if( ((int64)-(ECXFREE$1 == 0ll) & (int64)-(ECXINDEST$1 == 0ll)) == 0ll ) goto label$849;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$849:;
		label$848:;
	}
	label$847:;
	label$846:;
	label$793:;
}

static void HSHIFTL( int64 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$850:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC$1;
	static FBSTRING LABEL$1;
	static FBSTRING MNEMONIC32$1;
	static FBSTRING MNEMONIC64$1;
	static int64 TMPREG$1;
	static int64 TMPISFREE$1;
	static FBSTRING TMPREGNAME$1;
	static FBSTRING A$1;
	static FBSTRING B$1;
	static struct $6IRVREG* AV$1;
	static struct $6IRVREG* BV$1;
	if( OP$1 != 41ll ) goto label$853;
	{
		fb_StrAssign( (void*)&MNEMONIC32$1, -1ll, (void*)"shl ", 5ll, 0 );
		fb_StrAssign( (void*)&MNEMONIC64$1, -1ll, (void*)"shld ", 6ll, 0 );
	}
	goto label$852;
	label$853:;
	{
		int64 TMP$470$2;
		if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$854;
		TMP$470$2 = 24ll;
		goto label$1774;
		label$854:;
		TMP$470$2 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
		label$1774:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$470$2 * 56ll)) + 16ll) == 0ll ) goto label$856;
		{
			fb_StrAssign( (void*)&MNEMONIC32$1, -1ll, (void*)"sar ", 5ll, 0 );
		}
		goto label$855;
		label$856:;
		{
			fb_StrAssign( (void*)&MNEMONIC32$1, -1ll, (void*)"shr ", 5ll, 0 );
		}
		label$855:;
		fb_StrAssign( (void*)&MNEMONIC64$1, -1ll, (void*)"shrd ", 6ll, 0 );
	}
	label$852:;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 0ll, 0ll, -1ll );
	if( OP$1 != 41ll ) goto label$858;
	{
		fb_StrAssign( (void*)&A$1, -1ll, (void*)&DST2$1, -1ll, 0 );
		AV$1 = *(struct $6IRVREG**)((uint8*)DVREG$1 + 88ll);
		fb_StrAssign( (void*)&B$1, -1ll, (void*)&DST1$1, -1ll, 0 );
		BV$1 = DVREG$1;
	}
	goto label$857;
	label$858:;
	{
		fb_StrAssign( (void*)&A$1, -1ll, (void*)&DST1$1, -1ll, 0 );
		AV$1 = DVREG$1;
		fb_StrAssign( (void*)&B$1, -1ll, (void*)&DST2$1, -1ll, 0 );
		BV$1 = *(struct $6IRVREG**)((uint8*)DVREG$1 + 88ll);
	}
	label$857:;
	if( *(int64*)SVREG$1 != 0ll ) goto label$860;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) < 64ll ) goto label$862;
		{
			if( *(int64*)BV$1 != 4ll ) goto label$864;
			{
				FBSTRING TMP$473$4;
				FBSTRING TMP$474$4;
				FBSTRING TMP$475$4;
				FBSTRING TMP$476$4;
				__builtin_memset( &TMP$476$4, 0, 24ll );
				__builtin_memset( &TMP$473$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$473$4, (void*)"xor ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$474$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$474$4, (void*)vr$13, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$475$4, 0, 24ll );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$475$4, (void*)vr$16, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$476$4, -1ll, (void*)vr$19, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$476$4 );
				fb_StrDelete( (FBSTRING*)&TMP$476$4 );
			}
			goto label$863;
			label$864:;
			{
				FBSTRING TMP$477$4;
				FBSTRING TMP$478$4;
				FBSTRING TMP$479$4;
				__builtin_memset( &TMP$479$4, 0, 24ll );
				__builtin_memset( &TMP$477$4, 0, 24ll );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$477$4, (void*)"mov ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$478$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$478$4, (void*)vr$25, -1ll, (void*)", 0", 4ll );
				fb_StrAssign( (void*)&TMP$479$4, -1ll, (void*)vr$28, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$479$4 );
				fb_StrDelete( (FBSTRING*)&TMP$479$4 );
			}
			label$863:;
			if( *(int64*)AV$1 != 4ll ) goto label$866;
			{
				FBSTRING TMP$480$4;
				FBSTRING TMP$481$4;
				FBSTRING TMP$482$4;
				FBSTRING TMP$483$4;
				__builtin_memset( &TMP$483$4, 0, 24ll );
				__builtin_memset( &TMP$480$4, 0, 24ll );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$480$4, (void*)"xor ", 5ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$481$4, 0, 24ll );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$481$4, (void*)vr$35, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$482$4, 0, 24ll );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$482$4, (void*)vr$38, -1ll, (void*)&A$1, -1ll );
				fb_StrAssign( (void*)&TMP$483$4, -1ll, (void*)vr$41, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$483$4 );
				fb_StrDelete( (FBSTRING*)&TMP$483$4 );
			}
			goto label$865;
			label$866:;
			{
				FBSTRING TMP$484$4;
				FBSTRING TMP$485$4;
				FBSTRING TMP$486$4;
				__builtin_memset( &TMP$486$4, 0, 24ll );
				__builtin_memset( &TMP$484$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$484$4, (void*)"mov ", 5ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$485$4, 0, 24ll );
				FBSTRING* vr$50 = fb_StrConcat( &TMP$485$4, (void*)vr$47, -1ll, (void*)", 0", 4ll );
				fb_StrAssign( (void*)&TMP$486$4, -1ll, (void*)vr$50, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$486$4 );
				fb_StrDelete( (FBSTRING*)&TMP$486$4 );
			}
			label$865:;
		}
		goto label$861;
		label$862:;
		if( *(int64*)((uint8*)SVREG$1 + 48ll) < 32ll ) goto label$867;
		{
			int64 TMP$499$3;
			TMPISFREE$1 = -1ll;
			if( ((int64)-(*(int64*)BV$1 == 4ll) | (int64)-(*(int64*)AV$1 == 4ll)) == 0ll ) goto label$869;
			{
				FBSTRING TMP$487$4;
				FBSTRING TMP$488$4;
				FBSTRING TMP$489$4;
				FBSTRING TMP$490$4;
				__builtin_memset( &TMP$490$4, 0, 24ll );
				__builtin_memset( &TMP$487$4, 0, 24ll );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$487$4, (void*)"mov ", 5ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$488$4, 0, 24ll );
				FBSTRING* vr$65 = fb_StrConcat( &TMP$488$4, (void*)vr$62, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$489$4, 0, 24ll );
				FBSTRING* vr$68 = fb_StrConcat( &TMP$489$4, (void*)vr$65, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$490$4, -1ll, (void*)vr$68, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$490$4 );
				fb_StrDelete( (FBSTRING*)&TMP$490$4 );
			}
			goto label$868;
			label$869:;
			{
				FBSTRING TMP$491$4;
				FBSTRING TMP$492$4;
				FBSTRING TMP$493$4;
				FBSTRING TMP$494$4;
				FBSTRING TMP$495$4;
				FBSTRING TMP$496$4;
				FBSTRING TMP$497$4;
				FBSTRING TMP$498$4;
				int64 vr$71 = HFINDFREEREG( 0ll );
				TMPREG$1 = vr$71;
				if( TMPREG$1 != -1ll ) goto label$871;
				{
					int64 vr$72 = HFINDREGNOTINVREG( DVREG$1, 0ll );
					TMPREG$1 = vr$72;
					TMPISFREE$1 = 0ll;
				}
				label$871:;
				label$870:;
				uint8* vr$73 = HGETREGNAME( 8ll, TMPREG$1 );
				fb_StrAssign( (void*)&TMPREGNAME$1, -1ll, (void*)vr$73, 0ll, 0 );
				if( TMPISFREE$1 != 0ll ) goto label$873;
				{
					HPUSH( (uint8*)*(uint8**)&TMPREGNAME$1 );
				}
				label$873:;
				label$872:;
				__builtin_memset( &TMP$494$4, 0, 24ll );
				__builtin_memset( &TMP$491$4, 0, 24ll );
				FBSTRING* vr$77 = fb_StrConcat( &TMP$491$4, (void*)"mov ", 5ll, (void*)&TMPREGNAME$1, -1ll );
				__builtin_memset( &TMP$492$4, 0, 24ll );
				FBSTRING* vr$80 = fb_StrConcat( &TMP$492$4, (void*)vr$77, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$493$4, 0, 24ll );
				FBSTRING* vr$83 = fb_StrConcat( &TMP$493$4, (void*)vr$80, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$494$4, -1ll, (void*)vr$83, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$494$4 );
				fb_StrDelete( (FBSTRING*)&TMP$494$4 );
				__builtin_memset( &TMP$498$4, 0, 24ll );
				__builtin_memset( &TMP$495$4, 0, 24ll );
				FBSTRING* vr$89 = fb_StrConcat( &TMP$495$4, (void*)"mov ", 5ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$496$4, 0, 24ll );
				FBSTRING* vr$92 = fb_StrConcat( &TMP$496$4, (void*)vr$89, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$497$4, 0, 24ll );
				FBSTRING* vr$95 = fb_StrConcat( &TMP$497$4, (void*)vr$92, -1ll, (void*)&TMPREGNAME$1, -1ll );
				fb_StrAssign( (void*)&TMP$498$4, -1ll, (void*)vr$95, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$498$4 );
				fb_StrDelete( (FBSTRING*)&TMP$498$4 );
			}
			label$868:;
			if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$874;
			TMP$499$3 = 24ll;
			goto label$1775;
			label$874:;
			TMP$499$3 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
			label$1775:;
			if( ((int64)-(OP$1 == 42ll) & *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$499$3 * 56ll)) + 16ll)) == 0ll ) goto label$876;
			{
				FBSTRING TMP$500$4;
				FBSTRING TMP$501$4;
				FBSTRING TMP$502$4;
				__builtin_memset( &TMP$502$4, 0, 24ll );
				__builtin_memset( &TMP$500$4, 0, 24ll );
				FBSTRING* vr$108 = fb_StrConcat( &TMP$500$4, (void*)"sar ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$501$4, 0, 24ll );
				FBSTRING* vr$111 = fb_StrConcat( &TMP$501$4, (void*)vr$108, -1ll, (void*)", 31", 5ll );
				fb_StrAssign( (void*)&TMP$502$4, -1ll, (void*)vr$111, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$502$4 );
				fb_StrDelete( (FBSTRING*)&TMP$502$4 );
			}
			goto label$875;
			label$876:;
			if( *(int64*)BV$1 != 4ll ) goto label$877;
			{
				FBSTRING TMP$503$4;
				FBSTRING TMP$504$4;
				FBSTRING TMP$505$4;
				FBSTRING TMP$506$4;
				__builtin_memset( &TMP$506$4, 0, 24ll );
				__builtin_memset( &TMP$503$4, 0, 24ll );
				FBSTRING* vr$118 = fb_StrConcat( &TMP$503$4, (void*)"xor ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$504$4, 0, 24ll );
				FBSTRING* vr$121 = fb_StrConcat( &TMP$504$4, (void*)vr$118, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$505$4, 0, 24ll );
				FBSTRING* vr$124 = fb_StrConcat( &TMP$505$4, (void*)vr$121, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$506$4, -1ll, (void*)vr$124, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$506$4 );
				fb_StrDelete( (FBSTRING*)&TMP$506$4 );
			}
			goto label$875;
			label$877:;
			{
				FBSTRING TMP$507$4;
				FBSTRING TMP$508$4;
				FBSTRING TMP$509$4;
				__builtin_memset( &TMP$509$4, 0, 24ll );
				__builtin_memset( &TMP$507$4, 0, 24ll );
				FBSTRING* vr$130 = fb_StrConcat( &TMP$507$4, (void*)"mov ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$508$4, 0, 24ll );
				FBSTRING* vr$133 = fb_StrConcat( &TMP$508$4, (void*)vr$130, -1ll, (void*)", 0", 4ll );
				fb_StrAssign( (void*)&TMP$509$4, -1ll, (void*)vr$133, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$509$4 );
				fb_StrDelete( (FBSTRING*)&TMP$509$4 );
			}
			label$875:;
			if( *(int64*)((uint8*)SVREG$1 + 48ll) <= 32ll ) goto label$879;
			{
				FBSTRING TMP$510$4;
				FBSTRING TMP$511$4;
				FBSTRING TMP$512$4;
				FBSTRING TMP$513$4;
				FBSTRING* vr$139 = fb_LongintToStr( *(int64*)((uint8*)SVREG$1 + 48ll) + -32ll );
				fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$139, -1ll, 0 );
				__builtin_memset( &TMP$513$4, 0, 24ll );
				__builtin_memset( &TMP$510$4, 0, 24ll );
				FBSTRING* vr$143 = fb_StrConcat( &TMP$510$4, (void*)&MNEMONIC32$1, -1ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$511$4, 0, 24ll );
				FBSTRING* vr$146 = fb_StrConcat( &TMP$511$4, (void*)vr$143, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$512$4, 0, 24ll );
				FBSTRING* vr$149 = fb_StrConcat( &TMP$512$4, (void*)vr$146, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$513$4, -1ll, (void*)vr$149, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$513$4 );
				fb_StrDelete( (FBSTRING*)&TMP$513$4 );
			}
			label$879:;
			label$878:;
			if( TMPISFREE$1 != 0ll ) goto label$881;
			{
				HPOP( (uint8*)*(uint8**)&TMPREGNAME$1 );
			}
			label$881:;
			label$880:;
		}
		goto label$861;
		label$867:;
		{
			if( *(int64*)BV$1 != 4ll ) goto label$883;
			{
				FBSTRING TMP$514$4;
				FBSTRING TMP$515$4;
				FBSTRING TMP$516$4;
				FBSTRING TMP$517$4;
				FBSTRING TMP$518$4;
				FBSTRING TMP$519$4;
				FBSTRING TMP$520$4;
				FBSTRING TMP$521$4;
				FBSTRING TMP$522$4;
				FBSTRING TMP$523$4;
				__builtin_memset( &TMP$519$4, 0, 24ll );
				__builtin_memset( &TMP$514$4, 0, 24ll );
				FBSTRING* vr$156 = fb_StrConcat( &TMP$514$4, (void*)&MNEMONIC64$1, -1ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$515$4, 0, 24ll );
				FBSTRING* vr$159 = fb_StrConcat( &TMP$515$4, (void*)vr$156, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$516$4, 0, 24ll );
				FBSTRING* vr$162 = fb_StrConcat( &TMP$516$4, (void*)vr$159, -1ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$517$4, 0, 24ll );
				FBSTRING* vr$165 = fb_StrConcat( &TMP$517$4, (void*)vr$162, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$518$4, 0, 24ll );
				FBSTRING* vr$168 = fb_StrConcat( &TMP$518$4, (void*)vr$165, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$519$4, -1ll, (void*)vr$168, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$519$4 );
				fb_StrDelete( (FBSTRING*)&TMP$519$4 );
				__builtin_memset( &TMP$523$4, 0, 24ll );
				__builtin_memset( &TMP$520$4, 0, 24ll );
				FBSTRING* vr$174 = fb_StrConcat( &TMP$520$4, (void*)&MNEMONIC32$1, -1ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$521$4, 0, 24ll );
				FBSTRING* vr$177 = fb_StrConcat( &TMP$521$4, (void*)vr$174, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$522$4, 0, 24ll );
				FBSTRING* vr$180 = fb_StrConcat( &TMP$522$4, (void*)vr$177, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$523$4, -1ll, (void*)vr$180, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$523$4 );
				fb_StrDelete( (FBSTRING*)&TMP$523$4 );
			}
			goto label$882;
			label$883:;
			if( *(int64*)AV$1 != 4ll ) goto label$884;
			{
				FBSTRING TMP$524$4;
				FBSTRING TMP$525$4;
				FBSTRING TMP$526$4;
				FBSTRING TMP$527$4;
				FBSTRING TMP$528$4;
				FBSTRING TMP$529$4;
				FBSTRING TMP$530$4;
				FBSTRING TMP$531$4;
				FBSTRING TMP$532$4;
				FBSTRING TMP$533$4;
				FBSTRING TMP$534$4;
				FBSTRING TMP$535$4;
				FBSTRING TMP$536$4;
				FBSTRING TMP$537$4;
				FBSTRING TMP$538$4;
				FBSTRING TMP$539$4;
				FBSTRING TMP$540$4;
				FBSTRING TMP$541$4;
				__builtin_memset( &TMP$527$4, 0, 24ll );
				__builtin_memset( &TMP$524$4, 0, 24ll );
				FBSTRING* vr$187 = fb_StrConcat( &TMP$524$4, (void*)"xchg ", 6ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$525$4, 0, 24ll );
				FBSTRING* vr$190 = fb_StrConcat( &TMP$525$4, (void*)vr$187, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$526$4, 0, 24ll );
				FBSTRING* vr$193 = fb_StrConcat( &TMP$526$4, (void*)vr$190, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$527$4, -1ll, (void*)vr$193, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$527$4 );
				fb_StrDelete( (FBSTRING*)&TMP$527$4 );
				__builtin_memset( &TMP$533$4, 0, 24ll );
				__builtin_memset( &TMP$528$4, 0, 24ll );
				FBSTRING* vr$199 = fb_StrConcat( &TMP$528$4, (void*)&MNEMONIC64$1, -1ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$529$4, 0, 24ll );
				FBSTRING* vr$202 = fb_StrConcat( &TMP$529$4, (void*)vr$199, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$530$4, 0, 24ll );
				FBSTRING* vr$205 = fb_StrConcat( &TMP$530$4, (void*)vr$202, -1ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$531$4, 0, 24ll );
				FBSTRING* vr$208 = fb_StrConcat( &TMP$531$4, (void*)vr$205, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$532$4, 0, 24ll );
				FBSTRING* vr$211 = fb_StrConcat( &TMP$532$4, (void*)vr$208, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$533$4, -1ll, (void*)vr$211, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$533$4 );
				fb_StrDelete( (FBSTRING*)&TMP$533$4 );
				__builtin_memset( &TMP$537$4, 0, 24ll );
				__builtin_memset( &TMP$534$4, 0, 24ll );
				FBSTRING* vr$217 = fb_StrConcat( &TMP$534$4, (void*)&MNEMONIC32$1, -1ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$535$4, 0, 24ll );
				FBSTRING* vr$220 = fb_StrConcat( &TMP$535$4, (void*)vr$217, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$536$4, 0, 24ll );
				FBSTRING* vr$223 = fb_StrConcat( &TMP$536$4, (void*)vr$220, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$537$4, -1ll, (void*)vr$223, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$537$4 );
				fb_StrDelete( (FBSTRING*)&TMP$537$4 );
				__builtin_memset( &TMP$541$4, 0, 24ll );
				__builtin_memset( &TMP$538$4, 0, 24ll );
				FBSTRING* vr$229 = fb_StrConcat( &TMP$538$4, (void*)"xchg ", 6ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$539$4, 0, 24ll );
				FBSTRING* vr$232 = fb_StrConcat( &TMP$539$4, (void*)vr$229, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$540$4, 0, 24ll );
				FBSTRING* vr$235 = fb_StrConcat( &TMP$540$4, (void*)vr$232, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$541$4, -1ll, (void*)vr$235, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$541$4 );
				fb_StrDelete( (FBSTRING*)&TMP$541$4 );
			}
			goto label$882;
			label$884:;
			{
				FBSTRING TMP$542$4;
				FBSTRING TMP$543$4;
				FBSTRING TMP$544$4;
				FBSTRING TMP$545$4;
				FBSTRING TMP$546$4;
				FBSTRING TMP$547$4;
				FBSTRING TMP$548$4;
				FBSTRING TMP$549$4;
				FBSTRING TMP$550$4;
				FBSTRING TMP$551$4;
				FBSTRING TMP$552$4;
				FBSTRING TMP$553$4;
				FBSTRING TMP$554$4;
				FBSTRING TMP$555$4;
				FBSTRING TMP$556$4;
				FBSTRING TMP$557$4;
				FBSTRING TMP$558$4;
				FBSTRING TMP$559$4;
				int64 vr$238 = HFINDFREEREG( 0ll );
				TMPREG$1 = vr$238;
				if( TMPREG$1 != -1ll ) goto label$886;
				{
					int64 vr$239 = HFINDREGNOTINVREG( DVREG$1, 0ll );
					TMPREG$1 = vr$239;
					TMPISFREE$1 = 0ll;
				}
				goto label$885;
				label$886:;
				{
					TMPISFREE$1 = -1ll;
				}
				label$885:;
				uint8* vr$240 = HGETREGNAME( 8ll, TMPREG$1 );
				fb_StrAssign( (void*)&TMPREGNAME$1, -1ll, (void*)vr$240, 0ll, 0 );
				if( TMPISFREE$1 != 0ll ) goto label$888;
				{
					HPUSH( (uint8*)*(uint8**)&TMPREGNAME$1 );
				}
				label$888:;
				label$887:;
				__builtin_memset( &TMP$545$4, 0, 24ll );
				__builtin_memset( &TMP$542$4, 0, 24ll );
				FBSTRING* vr$244 = fb_StrConcat( &TMP$542$4, (void*)"mov ", 5ll, (void*)&TMPREGNAME$1, -1ll );
				__builtin_memset( &TMP$543$4, 0, 24ll );
				FBSTRING* vr$247 = fb_StrConcat( &TMP$543$4, (void*)vr$244, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$544$4, 0, 24ll );
				FBSTRING* vr$250 = fb_StrConcat( &TMP$544$4, (void*)vr$247, -1ll, (void*)&B$1, -1ll );
				fb_StrAssign( (void*)&TMP$545$4, -1ll, (void*)vr$250, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$545$4 );
				fb_StrDelete( (FBSTRING*)&TMP$545$4 );
				__builtin_memset( &TMP$551$4, 0, 24ll );
				__builtin_memset( &TMP$546$4, 0, 24ll );
				FBSTRING* vr$256 = fb_StrConcat( &TMP$546$4, (void*)&MNEMONIC64$1, -1ll, (void*)&A$1, -1ll );
				__builtin_memset( &TMP$547$4, 0, 24ll );
				FBSTRING* vr$259 = fb_StrConcat( &TMP$547$4, (void*)vr$256, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$548$4, 0, 24ll );
				FBSTRING* vr$262 = fb_StrConcat( &TMP$548$4, (void*)vr$259, -1ll, (void*)&TMPREGNAME$1, -1ll );
				__builtin_memset( &TMP$549$4, 0, 24ll );
				FBSTRING* vr$265 = fb_StrConcat( &TMP$549$4, (void*)vr$262, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$550$4, 0, 24ll );
				FBSTRING* vr$268 = fb_StrConcat( &TMP$550$4, (void*)vr$265, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$551$4, -1ll, (void*)vr$268, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$551$4 );
				fb_StrDelete( (FBSTRING*)&TMP$551$4 );
				__builtin_memset( &TMP$555$4, 0, 24ll );
				__builtin_memset( &TMP$552$4, 0, 24ll );
				FBSTRING* vr$274 = fb_StrConcat( &TMP$552$4, (void*)&MNEMONIC32$1, -1ll, (void*)&TMPREGNAME$1, -1ll );
				__builtin_memset( &TMP$553$4, 0, 24ll );
				FBSTRING* vr$277 = fb_StrConcat( &TMP$553$4, (void*)vr$274, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$554$4, 0, 24ll );
				FBSTRING* vr$280 = fb_StrConcat( &TMP$554$4, (void*)vr$277, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$555$4, -1ll, (void*)vr$280, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$555$4 );
				fb_StrDelete( (FBSTRING*)&TMP$555$4 );
				__builtin_memset( &TMP$559$4, 0, 24ll );
				__builtin_memset( &TMP$556$4, 0, 24ll );
				FBSTRING* vr$286 = fb_StrConcat( &TMP$556$4, (void*)"mov ", 5ll, (void*)&B$1, -1ll );
				__builtin_memset( &TMP$557$4, 0, 24ll );
				FBSTRING* vr$289 = fb_StrConcat( &TMP$557$4, (void*)vr$286, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$558$4, 0, 24ll );
				FBSTRING* vr$292 = fb_StrConcat( &TMP$558$4, (void*)vr$289, -1ll, (void*)&TMPREGNAME$1, -1ll );
				fb_StrAssign( (void*)&TMP$559$4, -1ll, (void*)vr$292, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$559$4 );
				fb_StrDelete( (FBSTRING*)&TMP$559$4 );
				if( TMPISFREE$1 != 0ll ) goto label$890;
				{
					HPOP( (uint8*)"eax" );
				}
				label$890:;
				label$889:;
			}
			label$882:;
		}
		label$861:;
	}
	goto label$859;
	label$860:;
	{
		static int64 ISEAXFREE$2;
		static int64 ISEDXFREE$2;
		static int64 ISECXFREE$2;
		static int64 EAXINDEST$2;
		static int64 EDXINDEST$2;
		static int64 ECXINDEST$2;
		static int64 OFS$2;
		uint8* vr$295 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LABEL$1, -1ll, (void*)vr$295, 0ll, 0 );
		HPUSH( (uint8*)*(uint8**)&DST2$1 );
		HPUSH( (uint8*)*(uint8**)&DST1$1 );
		OFS$2 = 0ll;
		int64 vr$296 = HISREGFREE( 0ll, 5ll );
		ISEAXFREE$2 = vr$296;
		int64 vr$297 = HISREGFREE( 0ll, 0ll );
		ISEDXFREE$2 = vr$297;
		int64 vr$298 = HISREGFREE( 0ll, 3ll );
		ISECXFREE$2 = vr$298;
		int64 vr$299 = HISREGINVREG( DVREG$1, 5ll );
		EAXINDEST$2 = vr$299;
		int64 vr$300 = HISREGINVREG( DVREG$1, 0ll );
		EDXINDEST$2 = vr$300;
		int64 vr$301 = HISREGINVREG( DVREG$1, 3ll );
		ECXINDEST$2 = vr$301;
		if( ((int64)-(*(int64*)SVREG$1 != 4ll) | (int64)-(*(int64*)((uint8*)SVREG$1 + 24ll) != 3ll)) == 0ll ) goto label$892;
		{
			int64 TMP$560$3;
			if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$893;
			TMP$560$3 = 24ll;
			goto label$1776;
			label$893:;
			TMP$560$3 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
			label$1776:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$560$3 * 56ll)) + 8ll) == 4ll ) goto label$895;
			{
				if( *(int64*)SVREG$1 != 4ll ) goto label$897;
				{
					uint8* vr$314 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
					fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$314, 0ll, 0 );
				}
				label$897:;
				label$896:;
			}
			label$895:;
			label$894:;
			if( ISECXFREE$2 != 0ll ) goto label$899;
			{
				if( (ECXINDEST$2 & (int64)-(*(int64*)DVREG$1 == 4ll)) == 0ll ) goto label$901;
				{
					HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&SRC$1 );
					ISECXFREE$2 = -1ll;
				}
				goto label$900;
				label$901:;
				{
					HPUSH( (uint8*)*(uint8**)&SRC$1 );
					OUTP( (uint8*)"xchg ecx, [esp]" );
					OFS$2 = OFS$2 + 4ll;
				}
				label$900:;
			}
			goto label$898;
			label$899:;
			{
				HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&SRC$1 );
			}
			label$898:;
		}
		goto label$891;
		label$892:;
		{
			ISECXFREE$2 = -1ll;
		}
		label$891:;
		if( EAXINDEST$2 == 0ll ) goto label$903;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$905;
			{
				FBSTRING TMP$561$4;
				FBSTRING TMP$562$4;
				FBSTRING TMP$563$4;
				__builtin_memset( &TMP$563$4, 0, 24ll );
				FBSTRING* vr$321 = fb_LongintToStr( OFS$2 );
				__builtin_memset( &TMP$561$4, 0, 24ll );
				FBSTRING* vr$324 = fb_StrConcat( &TMP$561$4, (void*)"xchg eax, [esp+", 16ll, (void*)vr$321, -1ll );
				__builtin_memset( &TMP$562$4, 0, 24ll );
				FBSTRING* vr$327 = fb_StrConcat( &TMP$562$4, (void*)vr$324, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$563$4, -1ll, (void*)vr$327, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$563$4 );
				fb_StrDelete( (FBSTRING*)&TMP$563$4 );
			}
			goto label$904;
			label$905:;
			{
				FBSTRING TMP$564$4;
				FBSTRING TMP$565$4;
				FBSTRING TMP$566$4;
				__builtin_memset( &TMP$566$4, 0, 24ll );
				FBSTRING* vr$331 = fb_LongintToStr( OFS$2 );
				__builtin_memset( &TMP$564$4, 0, 24ll );
				FBSTRING* vr$334 = fb_StrConcat( &TMP$564$4, (void*)"mov eax, [esp+", 15ll, (void*)vr$331, -1ll );
				__builtin_memset( &TMP$565$4, 0, 24ll );
				FBSTRING* vr$337 = fb_StrConcat( &TMP$565$4, (void*)vr$334, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$566$4, -1ll, (void*)vr$337, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$566$4 );
				fb_StrDelete( (FBSTRING*)&TMP$566$4 );
			}
			label$904:;
		}
		goto label$902;
		label$903:;
		{
			if( ISEAXFREE$2 != 0ll ) goto label$907;
			{
				FBSTRING TMP$567$4;
				FBSTRING TMP$568$4;
				FBSTRING TMP$569$4;
				__builtin_memset( &TMP$569$4, 0, 24ll );
				FBSTRING* vr$341 = fb_LongintToStr( OFS$2 );
				__builtin_memset( &TMP$567$4, 0, 24ll );
				FBSTRING* vr$344 = fb_StrConcat( &TMP$567$4, (void*)"xchg eax, [esp+", 16ll, (void*)vr$341, -1ll );
				__builtin_memset( &TMP$568$4, 0, 24ll );
				FBSTRING* vr$347 = fb_StrConcat( &TMP$568$4, (void*)vr$344, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$569$4, -1ll, (void*)vr$347, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$569$4 );
				fb_StrDelete( (FBSTRING*)&TMP$569$4 );
			}
			goto label$906;
			label$907:;
			{
				FBSTRING TMP$570$4;
				FBSTRING TMP$571$4;
				FBSTRING TMP$572$4;
				__builtin_memset( &TMP$572$4, 0, 24ll );
				FBSTRING* vr$351 = fb_LongintToStr( OFS$2 );
				__builtin_memset( &TMP$570$4, 0, 24ll );
				FBSTRING* vr$354 = fb_StrConcat( &TMP$570$4, (void*)"mov eax, [esp+", 15ll, (void*)vr$351, -1ll );
				__builtin_memset( &TMP$571$4, 0, 24ll );
				FBSTRING* vr$357 = fb_StrConcat( &TMP$571$4, (void*)vr$354, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$572$4, -1ll, (void*)vr$357, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$572$4 );
				fb_StrDelete( (FBSTRING*)&TMP$572$4 );
			}
			label$906:;
		}
		label$902:;
		if( EDXINDEST$2 == 0ll ) goto label$909;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$911;
			{
				FBSTRING TMP$574$4;
				FBSTRING TMP$575$4;
				FBSTRING TMP$576$4;
				__builtin_memset( &TMP$576$4, 0, 24ll );
				FBSTRING* vr$363 = fb_LongintToStr( OFS$2 + 4ll );
				__builtin_memset( &TMP$574$4, 0, 24ll );
				FBSTRING* vr$366 = fb_StrConcat( &TMP$574$4, (void*)"xchg edx, [esp+", 16ll, (void*)vr$363, -1ll );
				__builtin_memset( &TMP$575$4, 0, 24ll );
				FBSTRING* vr$369 = fb_StrConcat( &TMP$575$4, (void*)vr$366, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$576$4, -1ll, (void*)vr$369, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$576$4 );
				fb_StrDelete( (FBSTRING*)&TMP$576$4 );
			}
			goto label$910;
			label$911:;
			{
				FBSTRING TMP$577$4;
				FBSTRING TMP$578$4;
				FBSTRING TMP$579$4;
				__builtin_memset( &TMP$579$4, 0, 24ll );
				FBSTRING* vr$374 = fb_LongintToStr( OFS$2 + 4ll );
				__builtin_memset( &TMP$577$4, 0, 24ll );
				FBSTRING* vr$377 = fb_StrConcat( &TMP$577$4, (void*)"mov edx, [esp+", 15ll, (void*)vr$374, -1ll );
				__builtin_memset( &TMP$578$4, 0, 24ll );
				FBSTRING* vr$380 = fb_StrConcat( &TMP$578$4, (void*)vr$377, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$579$4, -1ll, (void*)vr$380, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$579$4 );
				fb_StrDelete( (FBSTRING*)&TMP$579$4 );
			}
			label$910:;
		}
		goto label$908;
		label$909:;
		{
			if( ISEDXFREE$2 != 0ll ) goto label$913;
			{
				FBSTRING TMP$580$4;
				FBSTRING TMP$581$4;
				FBSTRING TMP$582$4;
				__builtin_memset( &TMP$582$4, 0, 24ll );
				FBSTRING* vr$385 = fb_LongintToStr( OFS$2 + 4ll );
				__builtin_memset( &TMP$580$4, 0, 24ll );
				FBSTRING* vr$388 = fb_StrConcat( &TMP$580$4, (void*)"xchg edx, [esp+", 16ll, (void*)vr$385, -1ll );
				__builtin_memset( &TMP$581$4, 0, 24ll );
				FBSTRING* vr$391 = fb_StrConcat( &TMP$581$4, (void*)vr$388, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$582$4, -1ll, (void*)vr$391, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$582$4 );
				fb_StrDelete( (FBSTRING*)&TMP$582$4 );
			}
			goto label$912;
			label$913:;
			{
				FBSTRING TMP$583$4;
				FBSTRING TMP$584$4;
				FBSTRING TMP$585$4;
				__builtin_memset( &TMP$585$4, 0, 24ll );
				FBSTRING* vr$396 = fb_LongintToStr( OFS$2 + 4ll );
				__builtin_memset( &TMP$583$4, 0, 24ll );
				FBSTRING* vr$399 = fb_StrConcat( &TMP$583$4, (void*)"mov edx, [esp+", 15ll, (void*)vr$396, -1ll );
				__builtin_memset( &TMP$584$4, 0, 24ll );
				FBSTRING* vr$402 = fb_StrConcat( &TMP$584$4, (void*)vr$399, -1ll, (void*)"]", 2ll );
				fb_StrAssign( (void*)&TMP$585$4, -1ll, (void*)vr$402, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$585$4 );
				fb_StrDelete( (FBSTRING*)&TMP$585$4 );
			}
			label$912:;
		}
		label$908:;
		if( OP$1 != 41ll ) goto label$915;
		{
			FBSTRING TMP$588$3;
			FBSTRING TMP$589$3;
			OUTP( (uint8*)"shld edx, eax, cl" );
			__builtin_memset( &TMP$589$3, 0, 24ll );
			__builtin_memset( &TMP$588$3, 0, 24ll );
			FBSTRING* vr$408 = fb_StrConcat( &TMP$588$3, (void*)&MNEMONIC32$1, -1ll, (void*)" eax, cl", 9ll );
			fb_StrAssign( (void*)&TMP$589$3, -1ll, (void*)vr$408, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$589$3 );
			fb_StrDelete( (FBSTRING*)&TMP$589$3 );
		}
		goto label$914;
		label$915:;
		{
			FBSTRING TMP$592$3;
			FBSTRING TMP$593$3;
			OUTP( (uint8*)"shrd eax, edx, cl" );
			__builtin_memset( &TMP$593$3, 0, 24ll );
			__builtin_memset( &TMP$592$3, 0, 24ll );
			FBSTRING* vr$414 = fb_StrConcat( &TMP$592$3, (void*)&MNEMONIC32$1, -1ll, (void*)" edx, cl", 9ll );
			fb_StrAssign( (void*)&TMP$593$3, -1ll, (void*)vr$414, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$593$3 );
			fb_StrDelete( (FBSTRING*)&TMP$593$3 );
		}
		label$914:;
		OUTP( (uint8*)"test cl, 32" );
		HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL$1 );
		if( OP$1 != 41ll ) goto label$917;
		{
			OUTP( (uint8*)"mov edx, eax" );
			OUTP( (uint8*)"xor eax, eax" );
		}
		goto label$916;
		label$917:;
		{
			int64 TMP$597$3;
			OUTP( (uint8*)"mov eax, edx" );
			if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$918;
			TMP$597$3 = 24ll;
			goto label$1777;
			label$918:;
			TMP$597$3 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
			label$1777:;
			if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$597$3 * 56ll)) + 16ll) == 0ll ) goto label$920;
			{
				OUTP( (uint8*)"sar edx, 31" );
			}
			goto label$919;
			label$920:;
			{
				OUTP( (uint8*)"xor edx, edx" );
			}
			label$919:;
		}
		label$916:;
		HLABEL( (uint8*)*(uint8**)&LABEL$1 );
		if( ISECXFREE$2 != 0ll ) goto label$922;
		{
			HPOP( (uint8*)"ecx" );
		}
		label$922:;
		label$921:;
		if( EDXINDEST$2 == 0ll ) goto label$924;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$926;
			{
				OUTP( (uint8*)"xchg edx, [esp+4]" );
			}
			goto label$925;
			label$926:;
			{
				OUTP( (uint8*)"mov [esp+4], edx" );
			}
			label$925:;
		}
		goto label$923;
		label$924:;
		{
			if( ISEDXFREE$2 != 0ll ) goto label$928;
			{
				OUTP( (uint8*)"xchg edx, [esp+4]" );
			}
			goto label$927;
			label$928:;
			{
				OUTP( (uint8*)"mov [esp+4], edx" );
			}
			label$927:;
		}
		label$923:;
		if( EAXINDEST$2 == 0ll ) goto label$930;
		{
			if( *(int64*)DVREG$1 == 4ll ) goto label$932;
			{
				OUTP( (uint8*)"xchg eax, [esp+0]" );
			}
			goto label$931;
			label$932:;
			{
				OUTP( (uint8*)"mov [esp+0], eax" );
			}
			label$931:;
		}
		goto label$929;
		label$930:;
		{
			if( ISEAXFREE$2 != 0ll ) goto label$934;
			{
				OUTP( (uint8*)"xchg eax, [esp+0]" );
			}
			goto label$933;
			label$934:;
			{
				OUTP( (uint8*)"mov [esp+0], eax" );
			}
			label$933:;
		}
		label$929:;
		HPOP( (uint8*)*(uint8**)&DST1$1 );
		HPOP( (uint8*)*(uint8**)&DST2$1 );
	}
	label$859:;
	label$851:;
}

static void HSHIFTI( int64 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$604$1;
	label$935:;
	static int64 EAXPRESERVED$1;
	static int64 ECXPRESERVED$1;
	static int64 EAXFREE$1;
	static int64 ECXFREE$1;
	static int64 REG$1;
	static int64 ECXINDEST$1;
	static FBSTRING OSTR$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING TMP$1;
	static FBSTRING MNEMONIC$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$937;
	TMP$604$1 = 24ll;
	goto label$1778;
	label$937:;
	TMP$604$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1778:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$604$1 * 56ll)) + 16ll) == 0ll ) goto label$939;
	{
		if( OP$1 != 41ll ) goto label$941;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1ll, (void*)"sal", 4ll, 0 );
		}
		goto label$940;
		label$941:;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1ll, (void*)"sar", 4ll, 0 );
		}
		label$940:;
	}
	goto label$938;
	label$939:;
	{
		if( OP$1 != 41ll ) goto label$943;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1ll, (void*)"shl", 4ll, 0 );
		}
		goto label$942;
		label$943:;
		{
			fb_StrAssign( (void*)&MNEMONIC$1, -1ll, (void*)"shr", 4ll, 0 );
		}
		label$942:;
	}
	label$938:;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	ECXINDEST$1 = 0ll;
	EAXPRESERVED$1 = 0ll;
	ECXPRESERVED$1 = 0ll;
	if( *(int64*)SVREG$1 != 0ll ) goto label$945;
	{
		HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
		fb_StrAssign( (void*)&TMP$1, -1ll, (void*)&DST$1, -1ll, 0 );
	}
	goto label$944;
	label$945:;
	{
		int64 vr$6 = HISREGFREE( 0ll, 5ll );
		EAXFREE$1 = vr$6;
		int64 vr$7 = HISREGFREE( 0ll, 3ll );
		ECXFREE$1 = vr$7;
		if( *(int64*)SVREG$1 != 4ll ) goto label$947;
		{
			REG$1 = *(int64*)((uint8*)SVREG$1 + 24ll);
		}
		goto label$946;
		label$947:;
		{
			REG$1 = -1ll;
		}
		label$946:;
		int64 vr$10 = HISREGINVREG( DVREG$1, 3ll );
		ECXINDEST$1 = vr$10;
		if( ECXINDEST$1 == 0ll ) goto label$949;
		{
			HPUSH( (uint8*)"ecx" );
			if( *(int64*)DVREG$1 == 4ll ) goto label$951;
			{
				HPREPOPERAND( DVREG$1, &OSTR$1, 8ll, 0ll, 0ll, -1ll );
				HPUSH( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$951:;
			label$950:;
		}
		goto label$948;
		label$949:;
		if( ((int64)-(REG$1 != 3ll) & (int64)-(ECXFREE$1 == 0ll)) == 0ll ) goto label$952;
		{
			ECXPRESERVED$1 = -1ll;
			HPUSH( (uint8*)"ecx" );
		}
		label$952:;
		label$948:;
		if( *(int64*)SVREG$1 == 4ll ) goto label$954;
		{
			HPREPOPERAND( SVREG$1, &OSTR$1, 2ll, 0ll, 0ll, -1ll );
			HMOV( (uint8*)"cl", (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$953;
		label$954:;
		{
			if( REG$1 == 3ll ) goto label$956;
			{
				HMOV( (uint8*)"ecx", (uint8*)((uint8*)RNAMETB$ + (((*(int64*)((uint8*)DTYPETB$ + 192ll) << (3ll & 63ll)) + REG$1) << (3ll & 63ll))) );
			}
			label$956:;
			label$955:;
		}
		label$953:;
		if( ECXINDEST$1 == 0ll ) goto label$958;
		{
			if( EAXFREE$1 != 0ll ) goto label$960;
			{
				EAXPRESERVED$1 = -1ll;
				OUTP( (uint8*)"xchg eax, [esp]" );
			}
			goto label$959;
			label$960:;
			{
				HPOP( (uint8*)"eax" );
			}
			label$959:;
			fb_StrAssign( (void*)&TMP$1, -1ll, (void*)(((uint8*)RNAMETB$ + (*(int64*)((uint8*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) << (6ll & 63ll))) + 40ll), 8ll, 0 );
		}
		goto label$957;
		label$958:;
		{
			fb_StrAssign( (void*)&TMP$1, -1ll, (void*)&DST$1, -1ll, 0 );
		}
		label$957:;
		fb_StrAssign( (void*)&SRC$1, -1ll, (void*)"cl", 3ll, 0 );
	}
	label$944:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)&MNEMONIC$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)" ", 2ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&TMP$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ECXINDEST$1 == 0ll ) goto label$962;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$964;
		{
			HPOP( (uint8*)"ecx" );
			if( EAXPRESERVED$1 == 0ll ) goto label$966;
			{
				OUTP( (uint8*)"xchg ecx, [esp]" );
			}
			label$966:;
			label$965:;
		}
		label$964:;
		label$963:;
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)(((uint8*)RNAMETB$ + (*(int64*)((uint8*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) << (6ll & 63ll))) + 40ll) );
	}
	label$962:;
	label$961:;
	if( EAXPRESERVED$1 == 0ll ) goto label$968;
	{
		HPOP( (uint8*)"eax" );
	}
	label$968:;
	label$967:;
	if( ECXPRESERVED$1 == 0ll ) goto label$970;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$970:;
	label$969:;
	label$936:;
}

static void _EMITSHLL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$971:;
	HSHIFTL( 41ll, DVREG$1, SVREG$1 );
	label$972:;
}

static void _EMITSHLI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$973:;
	HSHIFTI( 41ll, DVREG$1, SVREG$1 );
	label$974:;
}

static void _EMITSHRL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$975:;
	HSHIFTL( 42ll, DVREG$1, SVREG$1 );
	label$976:;
}

static void _EMITSHRI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$977:;
	HSHIFTI( 42ll, DVREG$1, SVREG$1 );
	label$978:;
}

static void _EMITANDL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$979:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"and ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"and ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$980:;
}

static void _EMITANDI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$981:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"and ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$982:;
}

static void _EMITORL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$983:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$984:;
}

static void _EMITORI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$985:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$986:;
}

static void _EMITXORL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$987:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$988:;
}

static void _EMITXORI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$989:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$990:;
}

static void _EMITEQVL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$991:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$992:;
}

static void _EMITEQVI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$993:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( *(int64*)((uint8*)DVREG$1 + 8ll) != 1ll ) goto label$996;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"1", 2ll, 0 );
	}
	goto label$995;
	label$996:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	}
	label$995:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$994:;
}

static void _EMITIMPL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$997:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$998:;
}

static void _EMITIMPI( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$999:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 8ll) != 1ll ) goto label$1002;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"1", 2ll, 0 );
	}
	goto label$1001;
	label$1002:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	}
	label$1001:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"or ", 4ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1000:;
}

static void _EMITATN2( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1003:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 == 4ll ) goto label$1006;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1005;
	label$1006:;
	{
		OUTP( (uint8*)"fxch" );
	}
	label$1005:;
	OUTP( (uint8*)"fpatan" );
	label$1004:;
}

static void _EMITPOW( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1007:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 == 4ll ) goto label$1010;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fld ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"fxch" );
	}
	label$1010:;
	label$1009:;
	OUTP( (uint8*)"fabs" );
	OUTP( (uint8*)"fyl2x" );
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"frndint" );
	OUTP( (uint8*)"fsub st(1), st(0)" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"f2xm1" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"faddp" );
	OUTP( (uint8*)"fscale" );
	OUTP( (uint8*)"fstp st(1)" );
	label$1008:;
}

static void HCMPL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* REV_MNEMONIC$1, uint8* USG_MNEMONIC$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 ISINVERSE$1 )
{
	FBSTRING TMP$624$1;
	FBSTRING TMP$626$1;
	label$1011:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static FBSTRING FALSELABEL$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$1014;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$0, 0ll, 0 );
	}
	goto label$1013;
	label$1014:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$1, 0ll, 0 );
	}
	label$1013:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"cmp ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	uint8* vr$2 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&FALSELABEL$1, -1ll, (void*)vr$2, 0ll, 0 );
	if( RVREG$1 == (struct $6IRVREG*)0ull ) goto label$1016;
	{
		HPREPOPERAND( RVREG$1, &RNAME$1, 2147483648ll, 0ll, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"-1" );
	}
	label$1016:;
	label$1015:;
	__builtin_memset( &TMP$624$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$624$1, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$5, -1ll, 0 );
	if( ISINVERSE$1 != 0ll ) goto label$1018;
	{
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
	}
	goto label$1017;
	label$1018:;
	{
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&FALSELABEL$1 );
	}
	label$1017:;
	int64 vr$6 = fb_StrLen( (void*)REV_MNEMONIC$1, 0ll );
	if( vr$6 <= 0ll ) goto label$1020;
	{
		FBSTRING TMP$625$2;
		__builtin_memset( &TMP$625$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$625$2, (void*)"j", 2ll, (void*)REV_MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$9, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&FALSELABEL$1 );
	}
	label$1020:;
	label$1019:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"cmp ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	__builtin_memset( &TMP$626$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$626$1, (void*)"j", 2ll, (void*)USG_MNEMONIC$1, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$12, -1ll, 0 );
	HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
	HLABEL( (uint8*)*(uint8**)&FALSELABEL$1 );
	if( RVREG$1 == (struct $6IRVREG*)0ull ) goto label$1022;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1022:;
	label$1021:;
	label$1012:;
}

static void HCMPI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1023:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int64 ISEDXFREE$1;
	static int64 DOTEST$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$1026;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$0, 0ll, 0 );
	}
	goto label$1025;
	label$1026:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$1, 0ll, 0 );
	}
	label$1025:;
	DOTEST$1 = 0ll;
	if( ((int64)-(*(int64*)SVREG$1 == 0ll) & (int64)-(*(int64*)DVREG$1 == 4ll)) == 0ll ) goto label$1028;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) != 0ll ) goto label$1030;
		{
			DOTEST$1 = -1ll;
		}
		label$1030:;
		label$1029:;
	}
	label$1028:;
	label$1027:;
	if( DOTEST$1 == 0ll ) goto label$1032;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"test ", 6ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1031;
	label$1032:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"cmp ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1031:;
	if( RVREG$1 != (struct $6IRVREG*)0ull ) goto label$1034;
	{
		FBSTRING TMP$628$2;
		__builtin_memset( &TMP$628$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$628$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$10, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$1024;
	}
	label$1034:;
	label$1033:;
	HPREPOPERAND( RVREG$1, &RNAME$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( ((int64)-(*(int64*)((uint8*)&ENV$ + 224ll) >= 1ll) & (int64)-(*(int64*)RVREG$1 == 4ll)) == 0ll ) goto label$1036;
	{
		uint8* vr$16 = HGETREGNAME( 2ll, *(int64*)((uint8*)RVREG$1 + 24ll) );
		fb_StrAssign( (void*)&RNAME8$1, -1ll, (void*)vr$16, 0ll, 0 );
		if( ((int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 2ll) | (int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 1ll)) == 0ll ) goto label$1038;
		{
			FBSTRING TMP$632$3;
			FBSTRING TMP$633$3;
			int64 vr$22 = HISREGFREE( 0ll, 0ll );
			ISEDXFREE$1 = vr$22;
			if( ISEDXFREE$1 != 0ll ) goto label$1040;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$1040:;
			label$1039:;
			__builtin_memset( &TMP$632$3, 0, 24ll );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$632$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$633$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$633$3, (void*)vr$25, -1ll, (void*)" dl", 4ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$28, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0ll ) goto label$1042;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			goto label$1041;
			label$1042:;
			{
				HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"edx" );
			}
			label$1041:;
		}
		goto label$1037;
		label$1038:;
		{
			FBSTRING TMP$634$3;
			FBSTRING TMP$635$3;
			FBSTRING TMP$636$3;
			__builtin_memset( &TMP$634$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$634$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$635$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$635$3, (void*)vr$31, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$636$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$636$3, (void*)vr$34, -1ll, (void*)&RNAME8$1, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$37, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1037:;
		if( *(int64*)((uint8*)RVREG$1 + 8ll) == 1ll ) goto label$1044;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"shr ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 1", 4ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sbb ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1044:;
		label$1043:;
	}
	goto label$1035;
	label$1036:;
	{
		FBSTRING TMP$639$2;
		if( *(int64*)((uint8*)RVREG$1 + 8ll) != 1ll ) goto label$1046;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 1", 4ll, 0 );
		}
		goto label$1045;
		label$1046:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", -1", 5ll, 0 );
		}
		label$1045:;
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$639$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$639$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$42, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1035:;
	label$1024:;
}

static void HCMPF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, uint8* MNEMONIC$1, uint8* MASK$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1047:;
	static FBSTRING RNAME$1;
	static FBSTRING RNAME8$1;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static FBSTRING LNAME$1;
	static int64 ISEAXFREE$1;
	static int64 ISEDXFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( LABEL$1 != (struct $8FBSYMBOL*)0ull ) goto label$1050;
	{
		uint8* vr$0 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$0, 0ll, 0 );
	}
	goto label$1049;
	label$1050:;
	{
		uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
		fb_StrAssign( (void*)&LNAME$1, -1ll, (void*)vr$1, 0ll, 0 );
	}
	label$1049:;
	if( *(int64*)SVREG$1 != 4ll ) goto label$1052;
	{
		OUTP( (uint8*)"fcompp" );
	}
	goto label$1051;
	label$1052:;
	{
		int64 TMP$641$2;
		if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1053;
		TMP$641$2 = 24ll;
		goto label$1779;
		label$1053:;
		TMP$641$2 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
		label$1779:;
		if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$641$2 * 56ll)) != 1ll ) goto label$1055;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fcomp ", 7ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1054;
		label$1055:;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"ficomp ", 8ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1054:;
	}
	label$1051:;
	int64 vr$8 = HISREGFREE( 0ll, 5ll );
	ISEAXFREE$1 = vr$8;
	if( RVREG$1 == (struct $6IRVREG*)0ull ) goto label$1057;
	{
		ISEAXFREE$1 = (int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 5ll);
	}
	label$1057:;
	label$1056:;
	if( ISEAXFREE$1 != 0ll ) goto label$1059;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1059:;
	label$1058:;
	OUTP( (uint8*)"fnstsw ax" );
	int64 vr$11 = fb_StrLen( (void*)MASK$1, 0ll );
	if( vr$11 <= 0ll ) goto label$1061;
	{
		FBSTRING TMP$645$2;
		__builtin_memset( &TMP$645$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$645$2, (void*)"test ah, ", 10ll, (void*)MASK$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$14, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1060;
	label$1061:;
	{
		OUTP( (uint8*)"sahf" );
	}
	label$1060:;
	if( ISEAXFREE$1 != 0ll ) goto label$1063;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1063:;
	label$1062:;
	if( RVREG$1 != (struct $6IRVREG*)0ull ) goto label$1065;
	{
		FBSTRING TMP$647$2;
		__builtin_memset( &TMP$647$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$647$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$17, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		goto label$1048;
	}
	label$1065:;
	label$1064:;
	HPREPOPERAND( RVREG$1, &RNAME$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)&ENV$ + 224ll) < 1ll ) goto label$1067;
	{
		uint8* vr$19 = HGETREGNAME( 2ll, *(int64*)((uint8*)RVREG$1 + 24ll) );
		fb_StrAssign( (void*)&RNAME8$1, -1ll, (void*)vr$19, 0ll, 0 );
		if( ((int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 2ll) | (int64)-(*(int64*)((uint8*)RVREG$1 + 24ll) == 1ll)) == 0ll ) goto label$1069;
		{
			FBSTRING TMP$649$3;
			FBSTRING TMP$650$3;
			int64 vr$25 = HISREGFREE( 0ll, 0ll );
			ISEDXFREE$1 = vr$25;
			if( ISEDXFREE$1 != 0ll ) goto label$1071;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			label$1071:;
			label$1070:;
			__builtin_memset( &TMP$649$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$649$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$650$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$650$3, (void*)vr$28, -1ll, (void*)"\x09" "dl", 4ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$31, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			if( ISEDXFREE$1 != 0ll ) goto label$1073;
			{
				fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xchg edx, ", 11ll, 0 );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&OSTR$1 );
			}
			goto label$1072;
			label$1073:;
			{
				HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)"edx" );
			}
			label$1072:;
		}
		goto label$1068;
		label$1069:;
		{
			FBSTRING TMP$651$3;
			FBSTRING TMP$652$3;
			FBSTRING TMP$653$3;
			__builtin_memset( &TMP$651$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$651$3, (void*)"set", 4ll, (void*)MNEMONIC$1, 0ll );
			__builtin_memset( &TMP$652$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$652$3, (void*)vr$34, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$653$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$653$3, (void*)vr$37, -1ll, (void*)&RNAME8$1, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$40, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1068:;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"shr ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 1", 4ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sbb ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1066;
	label$1067:;
	{
		FBSTRING TMP$654$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", -1", 5ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$654$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$654$2, (void*)"j", 2ll, (void*)MNEMONIC$1, 0ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$43, -1ll, 0 );
		HBRANCH( (uint8*)*(uint8**)&OSTR$1, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HLABEL( (uint8*)*(uint8**)&LNAME$1 );
	}
	label$1066:;
	label$1048:;
}

static void _EMITCGTL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$655$1;
	label$1074:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1076;
	TMP$655$1 = 24ll;
	goto label$1780;
	label$1076:;
	TMP$655$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1780:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$655$1 * 56ll)) + 16ll) == 0ll ) goto label$1078;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"g", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"l", 2ll, 0 );
	}
	goto label$1077;
	label$1078:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"a", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"b", 2ll, 0 );
	}
	label$1077:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"a", DVREG$1, SVREG$1, 0ll );
	label$1075:;
}

static void _EMITCGTI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$660$1;
	label$1079:;
	static FBSTRING JMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1081;
	TMP$660$1 = 24ll;
	goto label$1781;
	label$1081:;
	TMP$660$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1781:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$660$1 * 56ll)) + 16ll) == 0ll ) goto label$1083;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"g", 2ll, 0 );
	}
	goto label$1082;
	label$1083:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"a", 2ll, 0 );
	}
	label$1082:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1080:;
}

static void _EMITCGTF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1084:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"z", (uint8*)"0b01000001", DVREG$1, SVREG$1 );
	label$1085:;
}

static void _EMITCLTL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$663$1;
	label$1086:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1088;
	TMP$663$1 = 24ll;
	goto label$1782;
	label$1088:;
	TMP$663$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1782:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$663$1 * 56ll)) + 16ll) == 0ll ) goto label$1090;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"l", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"g", 2ll, 0 );
	}
	goto label$1089;
	label$1090:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"b", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"a", 2ll, 0 );
	}
	label$1089:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"b", DVREG$1, SVREG$1, 0ll );
	label$1087:;
}

static void _EMITCLTI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$664$1;
	label$1091:;
	static FBSTRING JMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1093;
	TMP$664$1 = 24ll;
	goto label$1783;
	label$1093:;
	TMP$664$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1783:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$664$1 * 56ll)) + 16ll) == 0ll ) goto label$1095;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"l", 2ll, 0 );
	}
	goto label$1094;
	label$1095:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"b", 2ll, 0 );
	}
	label$1094:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1092:;
}

static void _EMITCLTF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1096:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b00000001", DVREG$1, SVREG$1 );
	label$1097:;
}

static void _EMITCEQL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1098:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)"ne", (uint8*)"", (uint8*)"e", DVREG$1, SVREG$1, -1ll );
	label$1099:;
}

static void _EMITCEQI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1100:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)"e", DVREG$1, SVREG$1 );
	label$1101:;
}

static void _EMITCEQF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1102:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b01000000", DVREG$1, SVREG$1 );
	label$1103:;
}

static void _EMITCNEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1104:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)"ne", (uint8*)"", (uint8*)"ne", DVREG$1, SVREG$1, 0ll );
	label$1105:;
}

static void _EMITCNEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1106:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)"ne", DVREG$1, SVREG$1 );
	label$1107:;
}

static void _EMITCNEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1108:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"z", (uint8*)"0b01000000", DVREG$1, SVREG$1 );
	label$1109:;
}

static void _EMITCLEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$670$1;
	label$1110:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1112;
	TMP$670$1 = 24ll;
	goto label$1784;
	label$1112:;
	TMP$670$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1784:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$670$1 * 56ll)) + 16ll) == 0ll ) goto label$1114;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"l", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"g", 2ll, 0 );
	}
	goto label$1113;
	label$1114:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"b", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"a", 2ll, 0 );
	}
	label$1113:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"be", DVREG$1, SVREG$1, 0ll );
	label$1111:;
}

static void _EMITCLEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$672$1;
	label$1115:;
	static FBSTRING JMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1117;
	TMP$672$1 = 24ll;
	goto label$1785;
	label$1117:;
	TMP$672$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1785:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$672$1 * 56ll)) + 16ll) == 0ll ) goto label$1119;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"le", 3ll, 0 );
	}
	goto label$1118;
	label$1119:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"be", 3ll, 0 );
	}
	label$1118:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1116:;
}

static void _EMITCLEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1120:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"nz", (uint8*)"0b01000001", DVREG$1, SVREG$1 );
	label$1121:;
}

static void _EMITCGEL( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$674$1;
	label$1122:;
	static FBSTRING JMP$1;
	static FBSTRING RJMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1124;
	TMP$674$1 = 24ll;
	goto label$1786;
	label$1124:;
	TMP$674$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1786:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$674$1 * 56ll)) + 16ll) == 0ll ) goto label$1126;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"g", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"l", 2ll, 0 );
	}
	goto label$1125;
	label$1126:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"a", 2ll, 0 );
		fb_StrAssign( (void*)&RJMP$1, -1ll, (void*)"b", 2ll, 0 );
	}
	label$1125:;
	HCMPL( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, (uint8*)*(uint8**)&RJMP$1, (uint8*)"ae", DVREG$1, SVREG$1, 0ll );
	label$1123:;
}

static void _EMITCGEI( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$676$1;
	label$1127:;
	static FBSTRING JMP$1;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1129;
	TMP$676$1 = 24ll;
	goto label$1787;
	label$1129:;
	TMP$676$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1787:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$676$1 * 56ll)) + 16ll) == 0ll ) goto label$1131;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"ge", 3ll, 0 );
	}
	goto label$1130;
	label$1131:;
	{
		fb_StrAssign( (void*)&JMP$1, -1ll, (void*)"ae", 3ll, 0 );
	}
	label$1130:;
	HCMPI( RVREG$1, LABEL$1, (uint8*)*(uint8**)&JMP$1, DVREG$1, SVREG$1 );
	label$1128:;
}

static void _EMITCGEF( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1132:;
	HCMPF( RVREG$1, LABEL$1, (uint8*)"ae", (uint8*)"", DVREG$1, SVREG$1 );
	label$1133:;
}

static void _EMITNEGL( struct $6IRVREG* DVREG$1 )
{
	label$1134:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"neg ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"adc ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 0", 4ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"neg ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1135:;
}

static void _EMITNEGI( struct $6IRVREG* DVREG$1 )
{
	label$1136:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"neg ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1137:;
}

static void _EMITNEGF( struct $6IRVREG* DVREG$1 )
{
	label$1138:;
	OUTP( (uint8*)"fchs" );
	label$1139:;
}

static void _EMITNOTL( struct $6IRVREG* DVREG$1 )
{
	label$1140:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1141:;
}

static void _EMITNOTI( struct $6IRVREG* DVREG$1 )
{
	label$1142:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)((uint8*)DVREG$1 + 8ll) != 1ll ) goto label$1145;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"1", 2ll, 0 );
	}
	goto label$1144;
	label$1145:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"not ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	}
	label$1144:;
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1143:;
}

static void _EMITABSL( struct $6IRVREG* DVREG$1 )
{
	label$1146:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static int64 REG$1;
	static int64 ISFREE$1;
	static FBSTRING RNAME$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	int64 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0ll );
	REG$1 = vr$0;
	uint8* vr$1 = HGETREGNAME( 8ll, REG$1 );
	fb_StrAssign( (void*)&RNAME$1, -1ll, (void*)vr$1, 0ll, 0 );
	int64 vr$2 = HISREGFREE( 0ll, REG$1 );
	ISFREE$1 = vr$2;
	if( ISFREE$1 != 0ll ) goto label$1149;
	{
		HPUSH( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1149:;
	label$1148:;
	HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sar ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", 31", 5ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sbb ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ISFREE$1 != 0ll ) goto label$1151;
	{
		HPOP( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1151:;
	label$1150:;
	label$1147:;
}

static void _EMITABSI( struct $6IRVREG* DVREG$1 )
{
	int64 TMP$680$1;
	label$1152:;
	static FBSTRING DST$1;
	static int64 REG$1;
	static int64 ISFREE$1;
	static FBSTRING RNAME$1;
	static int64 BITS$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	int64 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0ll );
	REG$1 = vr$0;
	uint8* vr$2 = HGETREGNAME( *(int64*)((uint8*)DVREG$1 + 8ll), REG$1 );
	fb_StrAssign( (void*)&RNAME$1, -1ll, (void*)vr$2, 0ll, 0 );
	int64 vr$3 = HISREGFREE( 0ll, REG$1 );
	ISFREE$1 = vr$3;
	if( ISFREE$1 != 0ll ) goto label$1155;
	{
		HPUSH( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1155:;
	label$1154:;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1156;
	TMP$680$1 = 24ll;
	goto label$1788;
	label$1156:;
	TMP$680$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1788:;
	BITS$1 = (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$680$1 * 56ll)) + 8ll) << (3ll & 63ll)) + -1ll;
	HMOV( (uint8*)*(uint8**)&RNAME$1, (uint8*)*(uint8**)&DST$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sar ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	FBSTRING* vr$11 = fb_LongintToStr( BITS$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$11, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"xor ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&RNAME$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	if( ISFREE$1 != 0ll ) goto label$1158;
	{
		HPOP( (uint8*)*(uint8**)&RNAME$1 );
	}
	label$1158:;
	label$1157:;
	label$1153:;
}

static void _EMITABSF( struct $6IRVREG* DVREG$1 )
{
	label$1159:;
	OUTP( (uint8*)"fabs" );
	label$1160:;
}

static void _EMITSGNL( struct $6IRVREG* DVREG$1 )
{
	FBSTRING TMP$681$1;
	FBSTRING TMP$682$1;
	FBSTRING TMP$683$1;
	FBSTRING TMP$686$1;
	FBSTRING TMP$687$1;
	FBSTRING TMP$688$1;
	label$1161:;
	FBSTRING LOW$1;
	__builtin_memset( &LOW$1, 0, 24ll );
	FBSTRING HIGH$1;
	__builtin_memset( &HIGH$1, 0, 24ll );
	FBSTRING EXITLABEL$1;
	__builtin_memset( &EXITLABEL$1, 0, 24ll );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 24ll );
	int64 TMPREG$1;
	int64 ISTMPFREE$1;
	HPREPOPERAND64( DVREG$1, &LOW$1, &HIGH$1 );
	uint8* vr$6 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&EXITLABEL$1, -1ll, (void*)vr$6, 0ll, 0 );
	int64 vr$8 = HFINDREGNOTINVREG( DVREG$1, 0ll );
	TMPREG$1 = vr$8;
	int64 vr$9 = HISREGFREE( 0ll, TMPREG$1 );
	ISTMPFREE$1 = vr$9;
	uint8* vr$10 = HGETREGNAME( 8ll, TMPREG$1 );
	fb_StrAssign( (void*)&TMP32$1, -1ll, (void*)vr$10, 0ll, 0 );
	if( ISTMPFREE$1 != 0ll ) goto label$1164;
	{
		HPUSH( (uint8*)*(uint8**)&TMP32$1 );
	}
	label$1164:;
	label$1163:;
	HMOV( (uint8*)*(uint8**)&TMP32$1, (uint8*)*(uint8**)&LOW$1 );
	__builtin_memset( &TMP$683$1, 0, 24ll );
	__builtin_memset( &TMP$681$1, 0, 24ll );
	FBSTRING* vr$16 = fb_StrConcat( &TMP$681$1, (void*)"cmp ", 5ll, (void*)&HIGH$1, -1ll );
	__builtin_memset( &TMP$682$1, 0, 24ll );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$682$1, (void*)vr$16, -1ll, (void*)", 0", 4ll );
	fb_StrAssign( (void*)&TMP$683$1, -1ll, (void*)vr$19, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$683$1 );
	fb_StrDelete( (FBSTRING*)&TMP$683$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"-1" );
	HMOV( (uint8*)*(uint8**)&HIGH$1, (uint8*)"-1" );
	HBRANCH( (uint8*)"jl", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"1" );
	HMOV( (uint8*)*(uint8**)&HIGH$1, (uint8*)"0" );
	HBRANCH( (uint8*)"jg", (uint8*)*(uint8**)&EXITLABEL$1 );
	__builtin_memset( &TMP$688$1, 0, 24ll );
	__builtin_memset( &TMP$686$1, 0, 24ll );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$686$1, (void*)"cmp ", 5ll, (void*)&TMP32$1, -1ll );
	__builtin_memset( &TMP$687$1, 0, 24ll );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$687$1, (void*)vr$26, -1ll, (void*)", 0", 4ll );
	fb_StrAssign( (void*)&TMP$688$1, -1ll, (void*)vr$29, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$688$1 );
	fb_StrDelete( (FBSTRING*)&TMP$688$1 );
	HBRANCH( (uint8*)"jne", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&LOW$1, (uint8*)"0" );
	HLABEL( (uint8*)*(uint8**)&EXITLABEL$1 );
	if( ISTMPFREE$1 != 0ll ) goto label$1166;
	{
		HPOP( (uint8*)*(uint8**)&TMP32$1 );
	}
	label$1166:;
	label$1165:;
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&HIGH$1 );
	fb_StrDelete( (FBSTRING*)&LOW$1 );
	label$1162:;
}

static void _EMITSGNI( struct $6IRVREG* DVREG$1 )
{
	FBSTRING TMP$690$1;
	FBSTRING TMP$691$1;
	FBSTRING TMP$692$1;
	label$1167:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	FBSTRING EXITLABEL$1;
	__builtin_memset( &EXITLABEL$1, 0, 24ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&EXITLABEL$1, -1ll, (void*)vr$3, 0ll, 0 );
	__builtin_memset( &TMP$692$1, 0, 24ll );
	__builtin_memset( &TMP$690$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$690$1, (void*)"cmp ", 5ll, (void*)&DST$1, -1ll );
	__builtin_memset( &TMP$691$1, 0, 24ll );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$691$1, (void*)vr$9, -1ll, (void*)", 0", 4ll );
	fb_StrAssign( (void*)&TMP$692$1, -1ll, (void*)vr$12, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$692$1 );
	fb_StrDelete( (FBSTRING*)&TMP$692$1 );
	HBRANCH( (uint8*)"je", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
	HBRANCH( (uint8*)"jg", (uint8*)*(uint8**)&EXITLABEL$1 );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"-1" );
	HLABEL( (uint8*)*(uint8**)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&EXITLABEL$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1168:;
}

static void _EMITSGNF( struct $6IRVREG* DVREG$1 )
{
	label$1169:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	FBSTRING LABEL$1;
	__builtin_memset( &LABEL$1, 0, 24ll );
	int64 ISEAXFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LABEL$1, -1ll, (void*)vr$3, 0ll, 0 );
	int64 vr$5 = HISREGFREE( 0ll, 5ll );
	ISEAXFREE$1 = vr$5;
	if( ISEAXFREE$1 != 0ll ) goto label$1172;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1172:;
	label$1171:;
	OUTP( (uint8*)"ftst" );
	OUTP( (uint8*)"fnstsw ax" );
	OUTP( (uint8*)"sahf" );
	if( ISEAXFREE$1 != 0ll ) goto label$1174;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1174:;
	label$1173:;
	HBRANCH( (uint8*)"jz", (uint8*)*(uint8**)&LABEL$1 );
	OUTP( (uint8*)"fstp st(0)" );
	OUTP( (uint8*)"fld1" );
	HBRANCH( (uint8*)"ja", (uint8*)*(uint8**)&LABEL$1 );
	OUTP( (uint8*)"fchs" );
	HLABEL( (uint8*)*(uint8**)&LABEL$1 );
	fb_StrDelete( (FBSTRING*)&LABEL$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1170:;
}

static void _EMITSIN( struct $6IRVREG* DVREG$1 )
{
	label$1175:;
	OUTP( (uint8*)"fsin" );
	label$1176:;
}

static void _EMITASIN( struct $6IRVREG* DVREG$1 )
{
	label$1177:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fpatan" );
	label$1178:;
}

static void _EMITCOS( struct $6IRVREG* DVREG$1 )
{
	label$1179:;
	OUTP( (uint8*)"fcos" );
	label$1180:;
}

static void _EMITACOS( struct $6IRVREG* DVREG$1 )
{
	label$1181:;
	OUTP( (uint8*)"fld st(0)" );
	OUTP( (uint8*)"fmul st(0), st(0)" );
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fsubrp" );
	OUTP( (uint8*)"fsqrt" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fpatan" );
	label$1182:;
}

static void _EMITTAN( struct $6IRVREG* DVREG$1 )
{
	label$1183:;
	OUTP( (uint8*)"fptan" );
	OUTP( (uint8*)"fstp st(0)" );
	label$1184:;
}

static void _EMITATAN( struct $6IRVREG* DVREG$1 )
{
	label$1185:;
	OUTP( (uint8*)"fld1" );
	OUTP( (uint8*)"fpatan" );
	label$1186:;
}

static void _EMITSQRT( struct $6IRVREG* DVREG$1 )
{
	label$1187:;
	OUTP( (uint8*)"fsqrt" );
	label$1188:;
}

static void _EMITLOG( struct $6IRVREG* DVREG$1 )
{
	label$1189:;
	OUTP( (uint8*)"fldln2" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"fyl2x" );
	label$1190:;
}

static void _EMITEXP( struct $6IRVREG* DVREG$1 )
{
	label$1191:;
	OUTP( (uint8*)"fldl2e" );
	OUTP( (uint8*)"fmulp st(1), st" );
	OUTP( (uint8*)"fld st" );
	OUTP( (uint8*)"frndint" );
	OUTP( (uint8*)"fsub st(1), st" );
	OUTP( (uint8*)"fxch" );
	OUTP( (uint8*)"f2xm1" );
	HPUSH( (uint8*)"0x3f800000" );
	OUTP( (uint8*)"fadd dword ptr [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	OUTP( (uint8*)"fscale" );
	OUTP( (uint8*)"fstp st(1)" );
	label$1192:;
}

static void HFPUCHANGERC( FBSTRING* REGNAME$1, uint8* MODE$1 )
{
	FBSTRING TMP$718$1;
	FBSTRING TMP$719$1;
	FBSTRING TMP$720$1;
	FBSTRING TMP$721$1;
	FBSTRING TMP$722$1;
	label$1193:;
	OUTP( (uint8*)"sub esp, 4" );
	OUTP( (uint8*)"fnstcw [esp]" );
	HMOV( (uint8*)*(uint8**)REGNAME$1, (uint8*)"[esp]" );
	int32 vr$1 = fb_StrCompare( (void*)MODE$1, 0ll, (void*)"11", 3ll );
	if( (int64)vr$1 == 0ll ) goto label$1196;
	{
		FBSTRING TMP$713$2;
		FBSTRING TMP$714$2;
		FBSTRING TMP$715$2;
		__builtin_memset( &TMP$715$2, 0, 24ll );
		__builtin_memset( &TMP$713$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$713$2, (void*)"and ", 5ll, (void*)REGNAME$1, -1ll );
		__builtin_memset( &TMP$714$2, 0, 24ll );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$714$2, (void*)vr$6, -1ll, (void*)", 0b1111001111111111", 21ll );
		fb_StrAssign( (void*)&TMP$715$2, -1ll, (void*)vr$9, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$715$2 );
		fb_StrDelete( (FBSTRING*)&TMP$715$2 );
	}
	label$1196:;
	label$1195:;
	__builtin_memset( &TMP$722$1, 0, 24ll );
	__builtin_memset( &TMP$719$1, 0, 24ll );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$719$1, (void*)", 0b0000", 9ll, (void*)MODE$1, 0ll );
	__builtin_memset( &TMP$720$1, 0, 24ll );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$720$1, (void*)vr$15, -1ll, (void*)"0000000000", 11ll );
	__builtin_memset( &TMP$718$1, 0, 24ll );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$718$1, (void*)"or ", 4ll, (void*)REGNAME$1, -1ll );
	__builtin_memset( &TMP$721$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$721$1, (void*)vr$21, -1ll, (void*)vr$18, -1ll );
	fb_StrAssign( (void*)&TMP$722$1, -1ll, (void*)vr$24, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$722$1 );
	fb_StrDelete( (FBSTRING*)&TMP$722$1 );
	HPUSH( (uint8*)*(uint8**)REGNAME$1 );
	OUTP( (uint8*)"fldcw [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	label$1194:;
}

static void HEMITFLOATFUNC( int64 FUNC$1 )
{
	label$1197:;
	int64 REG$1;
	int64 ISREGFREE$1;
	FBSTRING REGNAME$1;
	__builtin_memset( &REGNAME$1, 0, 24ll );
	int64 vr$1 = HFINDFREEREG( 0ll );
	REG$1 = vr$1;
	if( REG$1 != -1ll ) goto label$1200;
	{
		REG$1 = 5ll;
		ISREGFREE$1 = 0ll;
	}
	goto label$1199;
	label$1200:;
	{
		ISREGFREE$1 = -1ll;
	}
	label$1199:;
	uint8* vr$2 = HGETREGNAME( 8ll, REG$1 );
	fb_StrAssign( (void*)&REGNAME$1, -1ll, (void*)vr$2, 0ll, 0 );
	if( ISREGFREE$1 != 0ll ) goto label$1202;
	{
		HPUSH( (uint8*)*(uint8**)&REGNAME$1 );
	}
	label$1202:;
	label$1201:;
	{
		if( FUNC$1 != 1ll ) goto label$1204;
		label$1205:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"01" );
			OUTP( (uint8*)"frndint" );
		}
		goto label$1203;
		label$1204:;
		if( FUNC$1 != 2ll ) goto label$1206;
		label$1207:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"11" );
			OUTP( (uint8*)"frndint" );
		}
		goto label$1203;
		label$1206:;
		if( FUNC$1 != 3ll ) goto label$1208;
		label$1209:;
		{
			HFPUCHANGERC( &REGNAME$1, (uint8*)"11" );
			OUTP( (uint8*)"fld st(0)" );
			OUTP( (uint8*)"frndint" );
			OUTP( (uint8*)"fsubp" );
		}
		label$1208:;
		label$1203:;
	}
	OUTP( (uint8*)"fldcw [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	if( ISREGFREE$1 != 0ll ) goto label$1211;
	{
		HPOP( (uint8*)*(uint8**)&REGNAME$1 );
	}
	label$1211:;
	label$1210:;
	fb_StrDelete( (FBSTRING*)&REGNAME$1 );
	label$1198:;
}

static void _EMITFLOOR( struct $6IRVREG* DVREG$1 )
{
	label$1212:;
	HEMITFLOATFUNC( 1ll );
	label$1213:;
}

static void _EMITFIX( struct $6IRVREG* DVREG$1 )
{
	label$1214:;
	HEMITFLOATFUNC( 2ll );
	label$1215:;
}

static void _EMITFRAC( struct $6IRVREG* DVREG$1 )
{
	label$1216:;
	HEMITFLOATFUNC( 3ll );
	label$1217:;
}

static void _EMITCONVFD2FS( struct $6IRVREG* DVREG$1 )
{
	label$1218:;
	OUTP( (uint8*)"sub esp, 4" );
	OUTP( (uint8*)"fstp dword ptr [esp]" );
	OUTP( (uint8*)"fld dword ptr [esp]" );
	OUTP( (uint8*)"add esp, 4" );
	label$1219:;
}

static void _EMITXCHGTOS( struct $6IRVREG* SVREG$1 )
{
	label$1220:;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"fxch ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1221:;
}

static void _EMITSTACKALIGN( struct $6IRVREG* VREG$1, int64 UNUSED$1 )
{
	label$1222:;
	if( *(int64*)((uint8*)VREG$1 + 48ll) <= 0ll ) goto label$1225;
	{
		FBSTRING TMP$729$2;
		FBSTRING TMP$730$2;
		__builtin_memset( &TMP$730$2, 0, 24ll );
		FBSTRING* vr$3 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 48ll) );
		__builtin_memset( &TMP$729$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$729$2, (void*)"sub esp, ", 10ll, (void*)vr$3, -1ll );
		fb_StrAssign( (void*)&TMP$730$2, -1ll, (void*)vr$6, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$730$2 );
		fb_StrDelete( (FBSTRING*)&TMP$730$2 );
	}
	goto label$1224;
	label$1225:;
	{
		FBSTRING TMP$731$2;
		FBSTRING TMP$732$2;
		__builtin_memset( &TMP$732$2, 0, 24ll );
		FBSTRING* vr$12 = fb_LongintToStr( -(*(int64*)((uint8*)VREG$1 + 48ll)) );
		__builtin_memset( &TMP$731$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$731$2, (void*)"add esp, ", 10ll, (void*)vr$12, -1ll );
		fb_StrAssign( (void*)&TMP$732$2, -1ll, (void*)vr$15, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$732$2 );
		fb_StrDelete( (FBSTRING*)&TMP$732$2 );
	}
	label$1224:;
	label$1223:;
}

static void _EMITPUSHL( struct $6IRVREG* SVREG$1, int64 UNUSED$1 )
{
	label$1226:;
	static FBSTRING SRC1$1;
	static FBSTRING SRC2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1227:;
}

static void _EMITPUSHI( struct $6IRVREG* SVREG$1, int64 UNUSED$1 )
{
	int64 TMP$733$1;
	label$1228:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 24ll );
	int64 SDSIZE$1;
	int64 TMPREG$1;
	int64 ISTMPFREE$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1230;
	TMP$733$1 = 24ll;
	goto label$1789;
	label$1230:;
	TMP$733$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1789:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$733$1 * 56ll)) + 8ll);
	{
		$15IRVREGTYPE_ENUM TMP$734$2;
		TMP$734$2 = *($15IRVREGTYPE_ENUM*)SVREG$1;
		if( TMP$734$2 != 4ll ) goto label$1232;
		label$1233:;
		{
			FBSTRING TMP$735$3;
			FBSTRING TMP$736$3;
			if( SDSIZE$1 >= 4ll ) goto label$1235;
			{
				uint8* vr$10 = HGETREGNAME( 8ll, *(int64*)((uint8*)SVREG$1 + 24ll) );
				fb_StrAssign( (void*)&SRC$1, -1ll, (void*)vr$10, 0ll, 0 );
			}
			label$1235:;
			label$1234:;
			__builtin_memset( &TMP$736$3, 0, 24ll );
			__builtin_memset( &TMP$735$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$735$3, (void*)"push ", 6ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$736$3, -1ll, (void*)vr$16, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$736$3 );
			fb_StrDelete( (FBSTRING*)&TMP$736$3 );
		}
		goto label$1231;
		label$1232:;
		if( TMP$734$2 != 0ll ) goto label$1236;
		label$1237:;
		{
			FBSTRING TMP$737$3;
			FBSTRING TMP$738$3;
			__builtin_memset( &TMP$738$3, 0, 24ll );
			__builtin_memset( &TMP$737$3, 0, 24ll );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$737$3, (void*)"push ", 6ll, (void*)&SRC$1, -1ll );
			fb_StrAssign( (void*)&TMP$738$3, -1ll, (void*)vr$23, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$738$3 );
			fb_StrDelete( (FBSTRING*)&TMP$738$3 );
		}
		goto label$1231;
		label$1236:;
		{
			if( SDSIZE$1 >= 4ll ) goto label$1240;
			{
				FBSTRING TMP$739$4;
				FBSTRING TMP$740$4;
				FBSTRING TMP$741$4;
				FBSTRING TMP$742$4;
				FBSTRING TMP$743$4;
				FBSTRING TMP$744$4;
				int64 vr$26 = HFINDREGNOTINVREG( SVREG$1, 0ll );
				TMPREG$1 = vr$26;
				int64 vr$27 = HISREGFREE( 0ll, TMPREG$1 );
				ISTMPFREE$1 = vr$27;
				uint8* vr$28 = HGETREGNAME( 8ll, TMPREG$1 );
				fb_StrAssign( (void*)&TMP32$1, -1ll, (void*)vr$28, 0ll, 0 );
				if( ISTMPFREE$1 != 0ll ) goto label$1242;
				{
					HPUSH( (uint8*)*(uint8**)&TMP32$1 );
				}
				label$1242:;
				label$1241:;
				__builtin_memset( &TMP$742$4, 0, 24ll );
				__builtin_memset( &TMP$739$4, 0, 24ll );
				FBSTRING* vr$35 = fb_StrConcat( &TMP$739$4, (void*)"movzx ", 7ll, (void*)&TMP32$1, -1ll );
				__builtin_memset( &TMP$740$4, 0, 24ll );
				FBSTRING* vr$38 = fb_StrConcat( &TMP$740$4, (void*)vr$35, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$741$4, 0, 24ll );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$741$4, (void*)vr$38, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$742$4, -1ll, (void*)vr$41, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$742$4 );
				fb_StrDelete( (FBSTRING*)&TMP$742$4 );
				__builtin_memset( &TMP$744$4, 0, 24ll );
				__builtin_memset( &TMP$743$4, 0, 24ll );
				FBSTRING* vr$48 = fb_StrConcat( &TMP$743$4, (void*)"push ", 6ll, (void*)&TMP32$1, -1ll );
				fb_StrAssign( (void*)&TMP$744$4, -1ll, (void*)vr$48, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$744$4 );
				fb_StrDelete( (FBSTRING*)&TMP$744$4 );
				if( ISTMPFREE$1 != 0ll ) goto label$1244;
				{
					HPOP( (uint8*)*(uint8**)&TMP32$1 );
				}
				label$1244:;
				label$1243:;
			}
			goto label$1239;
			label$1240:;
			{
				FBSTRING TMP$745$4;
				FBSTRING TMP$746$4;
				__builtin_memset( &TMP$746$4, 0, 24ll );
				__builtin_memset( &TMP$745$4, 0, 24ll );
				FBSTRING* vr$55 = fb_StrConcat( &TMP$745$4, (void*)"push ", 6ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$746$4, -1ll, (void*)vr$55, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$746$4 );
				fb_StrDelete( (FBSTRING*)&TMP$746$4 );
			}
			label$1239:;
		}
		label$1238:;
		label$1231:;
	}
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1229:;
}

static void _EMITPUSHF( struct $6IRVREG* SVREG$1, int64 UNUSED$1 )
{
	int64 TMP$747$1;
	label$1245:;
	static FBSTRING SRC$1;
	static int64 SDSIZE$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1247;
	TMP$747$1 = 24ll;
	goto label$1790;
	label$1247:;
	TMP$747$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1790:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$747$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 == 4ll ) goto label$1249;
	{
		if( *(int64*)((uint8*)SVREG$1 + 8ll) != 15ll ) goto label$1251;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1250;
		label$1251:;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 4ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"push ", 6ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1250:;
	}
	goto label$1248;
	label$1249:;
	{
		FBSTRING TMP$749$2;
		FBSTRING TMP$750$2;
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"sub esp,", 9ll, 0 );
		FBSTRING* vr$7 = fb_LongintToStr( SDSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$7, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		__builtin_memset( &TMP$749$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$749$2, (void*)"fstp ", 6ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)SVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
		__builtin_memset( &TMP$750$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$750$2, (void*)vr$13, -1ll, (void*)" [esp]", 7ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1248:;
	label$1246:;
}

static void _EMITPUSHUDT( struct $6IRVREG* SVREG$1, int64 SDSIZE$1 )
{
	label$1252:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING TMP32$1;
	__builtin_memset( &TMP32$1, 0, 24ll );
	FBSTRING TMP16$1;
	__builtin_memset( &TMP16$1, 0, 24ll );
	int64 OFS$1;
	int64 TMPREG$1;
	int64 ISTMPFREE$1;
	int64 REMAINDER$1;
	REMAINDER$1 = SDSIZE$1 & 3ll;
	if( REMAINDER$1 <= 0ll ) goto label$1255;
	{
		FBSTRING TMP$771$2;
		FBSTRING TMP$772$2;
		int64 vr$4 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		TMPREG$1 = vr$4;
		int64 vr$5 = HISREGFREE( 0ll, TMPREG$1 );
		ISTMPFREE$1 = vr$5;
		uint8* vr$6 = HGETREGNAME( 8ll, TMPREG$1 );
		fb_StrAssign( (void*)&TMP32$1, -1ll, (void*)vr$6, 0ll, 0 );
		if( ISTMPFREE$1 != 0ll ) goto label$1257;
		{
			HPUSH( (uint8*)*(uint8**)&TMP32$1 );
		}
		label$1257:;
		label$1256:;
		{
			if( REMAINDER$1 != 3ll ) goto label$1259;
			label$1260:;
			{
				FBSTRING TMP$751$4;
				FBSTRING TMP$752$4;
				FBSTRING TMP$753$4;
				FBSTRING TMP$754$4;
				FBSTRING TMP$756$4;
				FBSTRING TMP$757$4;
				FBSTRING TMP$758$4;
				FBSTRING TMP$759$4;
				FBSTRING TMP$760$4;
				FBSTRING TMP$761$4;
				FBSTRING TMP$762$4;
				HPREPOPERAND( SVREG$1, &SRC$1, 2ll, SDSIZE$1 + -1ll, 0ll, -1ll );
				__builtin_memset( &TMP$754$4, 0, 24ll );
				__builtin_memset( &TMP$751$4, 0, 24ll );
				FBSTRING* vr$15 = fb_StrConcat( &TMP$751$4, (void*)"movzx ", 7ll, (void*)&TMP32$1, -1ll );
				__builtin_memset( &TMP$752$4, 0, 24ll );
				FBSTRING* vr$18 = fb_StrConcat( &TMP$752$4, (void*)vr$15, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$753$4, 0, 24ll );
				FBSTRING* vr$21 = fb_StrConcat( &TMP$753$4, (void*)vr$18, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$754$4, -1ll, (void*)vr$21, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$754$4 );
				fb_StrDelete( (FBSTRING*)&TMP$754$4 );
				__builtin_memset( &TMP$758$4, 0, 24ll );
				__builtin_memset( &TMP$756$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$756$4, (void*)"shl ", 5ll, (void*)&TMP32$1, -1ll );
				__builtin_memset( &TMP$757$4, 0, 24ll );
				FBSTRING* vr$31 = fb_StrConcat( &TMP$757$4, (void*)vr$28, -1ll, (void*)", 16", 5ll );
				fb_StrAssign( (void*)&TMP$758$4, -1ll, (void*)vr$31, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$758$4 );
				fb_StrDelete( (FBSTRING*)&TMP$758$4 );
				uint8* vr$34 = HGETREGNAME( 5ll, TMPREG$1 );
				fb_StrAssign( (void*)&TMP16$1, -1ll, (void*)vr$34, 0ll, 0 );
				HPREPOPERAND( SVREG$1, &SRC$1, 5ll, SDSIZE$1 + -3ll, 0ll, -1ll );
				__builtin_memset( &TMP$762$4, 0, 24ll );
				__builtin_memset( &TMP$759$4, 0, 24ll );
				FBSTRING* vr$43 = fb_StrConcat( &TMP$759$4, (void*)"mov ", 5ll, (void*)&TMP16$1, -1ll );
				__builtin_memset( &TMP$760$4, 0, 24ll );
				FBSTRING* vr$46 = fb_StrConcat( &TMP$760$4, (void*)vr$43, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$761$4, 0, 24ll );
				FBSTRING* vr$49 = fb_StrConcat( &TMP$761$4, (void*)vr$46, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$762$4, -1ll, (void*)vr$49, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$762$4 );
				fb_StrDelete( (FBSTRING*)&TMP$762$4 );
			}
			goto label$1258;
			label$1259:;
			if( REMAINDER$1 != 2ll ) goto label$1261;
			label$1262:;
			{
				FBSTRING TMP$763$4;
				FBSTRING TMP$764$4;
				FBSTRING TMP$765$4;
				FBSTRING TMP$766$4;
				OFS$1 = SDSIZE$1 + -2ll;
				HPREPOPERAND( SVREG$1, &SRC$1, 5ll, OFS$1, 0ll, -1ll );
				__builtin_memset( &TMP$766$4, 0, 24ll );
				__builtin_memset( &TMP$763$4, 0, 24ll );
				FBSTRING* vr$59 = fb_StrConcat( &TMP$763$4, (void*)"movzx ", 7ll, (void*)&TMP32$1, -1ll );
				__builtin_memset( &TMP$764$4, 0, 24ll );
				FBSTRING* vr$62 = fb_StrConcat( &TMP$764$4, (void*)vr$59, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$765$4, 0, 24ll );
				FBSTRING* vr$65 = fb_StrConcat( &TMP$765$4, (void*)vr$62, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$766$4, -1ll, (void*)vr$65, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$766$4 );
				fb_StrDelete( (FBSTRING*)&TMP$766$4 );
			}
			goto label$1258;
			label$1261:;
			if( REMAINDER$1 != 1ll ) goto label$1263;
			label$1264:;
			{
				FBSTRING TMP$767$4;
				FBSTRING TMP$768$4;
				FBSTRING TMP$769$4;
				FBSTRING TMP$770$4;
				OFS$1 = SDSIZE$1 + -1ll;
				HPREPOPERAND( SVREG$1, &SRC$1, 2ll, OFS$1, 0ll, -1ll );
				__builtin_memset( &TMP$770$4, 0, 24ll );
				__builtin_memset( &TMP$767$4, 0, 24ll );
				FBSTRING* vr$75 = fb_StrConcat( &TMP$767$4, (void*)"movzx ", 7ll, (void*)&TMP32$1, -1ll );
				__builtin_memset( &TMP$768$4, 0, 24ll );
				FBSTRING* vr$78 = fb_StrConcat( &TMP$768$4, (void*)vr$75, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$769$4, 0, 24ll );
				FBSTRING* vr$81 = fb_StrConcat( &TMP$769$4, (void*)vr$78, -1ll, (void*)&SRC$1, -1ll );
				fb_StrAssign( (void*)&TMP$770$4, -1ll, (void*)vr$81, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$770$4 );
				fb_StrDelete( (FBSTRING*)&TMP$770$4 );
			}
			label$1263:;
			label$1258:;
		}
		__builtin_memset( &TMP$772$2, 0, 24ll );
		__builtin_memset( &TMP$771$2, 0, 24ll );
		FBSTRING* vr$88 = fb_StrConcat( &TMP$771$2, (void*)"push ", 6ll, (void*)&TMP32$1, -1ll );
		fb_StrAssign( (void*)&TMP$772$2, -1ll, (void*)vr$88, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$772$2 );
		fb_StrDelete( (FBSTRING*)&TMP$772$2 );
		if( ISTMPFREE$1 != 0ll ) goto label$1266;
		{
			HPOP( (uint8*)*(uint8**)&TMP32$1 );
		}
		label$1266:;
		label$1265:;
		SDSIZE$1 = SDSIZE$1 - REMAINDER$1;
	}
	label$1255:;
	label$1254:;
	OFS$1 = SDSIZE$1 + -4ll;
	label$1267:;
	if( OFS$1 < 0ll ) goto label$1268;
	{
		FBSTRING TMP$773$2;
		FBSTRING TMP$774$2;
		HPREPOPERAND( SVREG$1, &SRC$1, 8ll, OFS$1, 0ll, -1ll );
		__builtin_memset( &TMP$774$2, 0, 24ll );
		__builtin_memset( &TMP$773$2, 0, 24ll );
		FBSTRING* vr$98 = fb_StrConcat( &TMP$773$2, (void*)"push ", 6ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$774$2, -1ll, (void*)vr$98, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$774$2 );
		fb_StrDelete( (FBSTRING*)&TMP$774$2 );
		OFS$1 = OFS$1 + -4ll;
	}
	goto label$1267;
	label$1268:;
	fb_StrDelete( (FBSTRING*)&TMP16$1 );
	fb_StrDelete( (FBSTRING*)&TMP32$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1253:;
}

static void _EMITPOPL( struct $6IRVREG* DVREG$1, int64 UNUSED$1 )
{
	label$1269:;
	static FBSTRING DST1$1;
	static FBSTRING DST2$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST1$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST2$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1270:;
}

static void _EMITPOPI( struct $6IRVREG* DVREG$1, int64 UNUSED$1 )
{
	int64 TMP$775$1;
	label$1271:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int64 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1273;
	TMP$775$1 = 24ll;
	goto label$1791;
	label$1273:;
	TMP$775$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1791:;
	DSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$775$1 * 56ll)) + 8ll);
	if( *(int64*)DVREG$1 != 0ll ) goto label$1275;
	{
		if( *(int64*)((uint8*)DVREG$1 + 48ll) != 4ll ) goto label$1277;
		{
			int64 vr$7 = HISREGFREE( 0ll, 5ll );
			if( vr$7 == 0ll ) goto label$1279;
			{
				HPOP( (uint8*)"eax" );
			}
			goto label$1278;
			label$1279:;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			label$1278:;
		}
		goto label$1276;
		label$1277:;
		{
			FBSTRING TMP$776$3;
			FBSTRING* vr$9 = fb_LongintToStr( *(int64*)((uint8*)DVREG$1 + 48ll) );
			__builtin_memset( &TMP$776$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$776$3, (void*)"add esp, ", 10ll, (void*)vr$9, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$12, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1276:;
	}
	goto label$1274;
	label$1275:;
	if( DSIZE$1 != 4ll ) goto label$1280;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	goto label$1274;
	label$1280:;
	{
		if( *(int64*)DVREG$1 != 4ll ) goto label$1282;
		{
			uint8* vr$15 = HGETREGNAME( 8ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
			fb_StrAssign( (void*)&DST$1, -1ll, (void*)vr$15, 0ll, 0 );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1281;
		label$1282:;
		{
			static int64 REG$3;
			static int64 ISFREE$3;
			static FBSTRING AUX8$3;
			static FBSTRING AUX16$3;
			static FBSTRING AUX32$3;
			int64 vr$16 = HFINDREGNOTINVREG( DVREG$1, 0ll );
			REG$3 = vr$16;
			uint8* vr$17 = HGETREGNAME( 2ll, REG$3 );
			fb_StrAssign( (void*)&AUX8$3, -1ll, (void*)vr$17, 0ll, 0 );
			uint8* vr$18 = HGETREGNAME( 5ll, REG$3 );
			fb_StrAssign( (void*)&AUX16$3, -1ll, (void*)vr$18, 0ll, 0 );
			uint8* vr$19 = HGETREGNAME( 8ll, REG$3 );
			fb_StrAssign( (void*)&AUX32$3, -1ll, (void*)vr$19, 0ll, 0 );
			int64 vr$20 = HISREGFREE( 0ll, REG$3 );
			ISFREE$3 = vr$20;
			if( ISFREE$3 == 0ll ) goto label$1284;
			{
				HMOV( (uint8*)*(uint8**)&AUX32$3, (uint8*)"dword ptr [esp]" );
			}
			goto label$1283;
			label$1284:;
			{
				HXCHG( (uint8*)*(uint8**)&AUX32$3, (uint8*)"dword ptr [esp]" );
			}
			label$1283:;
			if( DSIZE$1 != 1ll ) goto label$1286;
			{
				HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$3 );
			}
			goto label$1285;
			label$1286:;
			{
				HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX16$3 );
			}
			label$1285:;
			if( ISFREE$3 == 0ll ) goto label$1288;
			{
				OUTP( (uint8*)"add esp, 4" );
			}
			goto label$1287;
			label$1288:;
			{
				HPOP( (uint8*)*(uint8**)&AUX32$3 );
			}
			label$1287:;
		}
		label$1281:;
	}
	label$1274:;
	label$1272:;
}

static void _EMITPOPF( struct $6IRVREG* DVREG$1, int64 UNUSED$1 )
{
	int64 TMP$777$1;
	label$1289:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int64 DSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1291;
	TMP$777$1 = 24ll;
	goto label$1792;
	label$1291:;
	TMP$777$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1792:;
	DSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$777$1 * 56ll)) + 8ll);
	if( *(int64*)DVREG$1 == 4ll ) goto label$1293;
	{
		if( *(int64*)((uint8*)DVREG$1 + 8ll) != 15ll ) goto label$1295;
		{
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		goto label$1294;
		label$1295:;
		{
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, 0ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, 4ll, 0ll, -1ll );
			fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"pop ", 5ll, 0 );
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&OSTR$1 );
		}
		label$1294:;
	}
	goto label$1292;
	label$1293:;
	{
		FBSTRING TMP$778$2;
		FBSTRING TMP$779$2;
		__builtin_memset( &TMP$778$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$778$2, (void*)"fld ", 5ll, (void*)(((uint8*)DTYPETB$ + (*(int64*)((uint8*)DVREG$1 + 8ll) * 24ll)) + 8ll), 12ll );
		__builtin_memset( &TMP$779$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$779$2, (void*)vr$12, -1ll, (void*)" [esp]", 7ll );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)vr$15, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"add esp,", 9ll, 0 );
		FBSTRING* vr$16 = fb_LongintToStr( DSIZE$1 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$16, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
	}
	label$1292:;
	label$1290:;
}

static void _EMITPOPST0( void )
{
	label$1296:;
	OUTP( (uint8*)"fstp st(0)" );
	label$1297:;
}

static void _EMITADDROF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1298:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, 0ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"lea ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1299:;
}

static void _EMITDEREF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1300:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 9ll, 0ll, 0ll, -1ll );
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ", 5ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", ", 3ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&SRC$1, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&OSTR$1 );
	label$1301:;
}

static void HMEMMOVEREP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1 )
{
	label$1302:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING OSTR$1;
	static int64 ECXFREE$1;
	static int64 EDIFREE$1;
	static int64 ESIFREE$1;
	static int64 EDIINSRC$1;
	static int64 ECXINSRC$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	int64 vr$0 = HISREGFREE( 0ll, 3ll );
	ECXFREE$1 = vr$0;
	int64 vr$1 = HISREGFREE( 0ll, 1ll );
	EDIFREE$1 = vr$1;
	int64 vr$2 = HISREGFREE( 0ll, 2ll );
	ESIFREE$1 = vr$2;
	int64 vr$3 = HISREGINVREG( SVREG$1, 1ll );
	EDIINSRC$1 = vr$3;
	int64 vr$4 = HISREGINVREG( SVREG$1, 3ll );
	ECXINSRC$1 = vr$4;
	if( ECXFREE$1 != 0ll ) goto label$1305;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1305:;
	label$1304:;
	if( EDIFREE$1 != 0ll ) goto label$1307;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1307:;
	label$1306:;
	if( ESIFREE$1 != 0ll ) goto label$1309;
	{
		HPUSH( (uint8*)"esi" );
	}
	label$1309:;
	label$1308:;
	if( EDIINSRC$1 != 0ll ) goto label$1311;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$1313;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		goto label$1312;
		label$1313:;
		{
			if( *(int64*)((uint8*)DVREG$1 + 24ll) == 1ll ) goto label$1315;
			{
				HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
			}
			label$1315:;
			label$1314:;
		}
		label$1312:;
	}
	goto label$1310;
	label$1311:;
	{
		if( ECXINSRC$1 == 0ll ) goto label$1317;
		{
			HPUSH( (uint8*)"ecx" );
		}
		label$1317:;
		label$1316:;
		HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&DST$1 );
		if( ECXINSRC$1 == 0ll ) goto label$1319;
		{
			OUTP( (uint8*)"xchg ecx, [esp]" );
		}
		label$1319:;
		label$1318:;
	}
	label$1310:;
	if( *(int64*)SVREG$1 == 4ll ) goto label$1321;
	{
		HMOV( (uint8*)"esi", (uint8*)*(uint8**)&SRC$1 );
	}
	goto label$1320;
	label$1321:;
	{
		if( *(int64*)((uint8*)SVREG$1 + 24ll) == 2ll ) goto label$1323;
		{
			HMOV( (uint8*)"esi", (uint8*)*(uint8**)&SRC$1 );
		}
		label$1323:;
		label$1322:;
	}
	label$1320:;
	if( EDIINSRC$1 == 0ll ) goto label$1325;
	{
		if( ECXINSRC$1 != 0ll ) goto label$1327;
		{
			HMOV( (uint8*)"edi", (uint8*)"ecx" );
		}
		goto label$1326;
		label$1327:;
		{
			HPOP( (uint8*)"edi" );
		}
		label$1326:;
	}
	label$1325:;
	label$1324:;
	if( BYTES$1 <= 4ll ) goto label$1329;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ecx, ", 10ll, 0 );
		FBSTRING* vr$10 = fb_ULongintToStr( (uint64)BYTES$1 >> (2ull & 63ll) );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$10, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"rep movsd" );
	}
	goto label$1328;
	label$1329:;
	if( BYTES$1 != 4ll ) goto label$1330;
	{
		OUTP( (uint8*)"mov ecx, [esi]" );
		OUTP( (uint8*)"mov [edi], ecx" );
		if( (BYTES$1 & 3ll) <= 0ll ) goto label$1332;
		{
			OUTP( (uint8*)"add esi, 4" );
			OUTP( (uint8*)"add edi, 4" );
		}
		label$1332:;
		label$1331:;
	}
	label$1330:;
	label$1328:;
	BYTES$1 = BYTES$1 & 3ll;
	if( BYTES$1 <= 0ll ) goto label$1334;
	{
		if( BYTES$1 < 2ll ) goto label$1336;
		{
			OUTP( (uint8*)"mov cx, [esi]" );
			OUTP( (uint8*)"mov [edi], cx" );
			if( BYTES$1 != 3ll ) goto label$1338;
			{
				OUTP( (uint8*)"add esi, 2" );
				OUTP( (uint8*)"add edi, 2" );
			}
			label$1338:;
			label$1337:;
		}
		label$1336:;
		label$1335:;
		if( (BYTES$1 & 1ll) == 0ll ) goto label$1340;
		{
			OUTP( (uint8*)"mov cl, [esi]" );
			OUTP( (uint8*)"mov [edi], cl" );
		}
		label$1340:;
		label$1339:;
	}
	label$1334:;
	label$1333:;
	if( ESIFREE$1 != 0ll ) goto label$1342;
	{
		HPOP( (uint8*)"esi" );
	}
	label$1342:;
	label$1341:;
	if( EDIFREE$1 != 0ll ) goto label$1344;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1344:;
	label$1343:;
	if( ECXFREE$1 != 0ll ) goto label$1346;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1346:;
	label$1345:;
	label$1303:;
}

static void HMEMMOVEBLK( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1 )
{
	label$1347:;
	static FBSTRING DST$1;
	static FBSTRING SRC$1;
	static FBSTRING AUX$1;
	static int64 I$1;
	static int64 OFS$1;
	static int64 REG$1;
	static int64 ISFREE$1;
	int64 vr$0 = HFINDREGNOTINVREG( DVREG$1, 0ll );
	REG$1 = vr$0;
	int64 vr$1 = HISREGINVREG( SVREG$1, REG$1 );
	if( vr$1 == 0ll ) goto label$1350;
	{
		HMEMMOVEREP( DVREG$1, SVREG$1, BYTES$1 );
		goto label$1348;
	}
	label$1350:;
	label$1349:;
	uint8* vr$2 = HGETREGNAME( 8ll, REG$1 );
	fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$2, 0ll, 0 );
	int64 vr$3 = HISREGFREE( 0ll, REG$1 );
	ISFREE$1 = vr$3;
	if( ISFREE$1 != 0ll ) goto label$1352;
	{
		HPUSH( (uint8*)*(uint8**)&AUX$1 );
	}
	label$1352:;
	label$1351:;
	OFS$1 = 0ll;
	{
		I$1 = 1ll;
		int64 TMP$794$2;
		TMP$794$2 = (int64)((uint64)BYTES$1 >> (2ull & 63ll));
		goto label$1353;
		label$1356:;
		{
			HPREPOPERAND( SVREG$1, &SRC$1, 8ll, OFS$1, 0ll, -1ll );
			HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, OFS$1, 0ll, -1ll );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
			OFS$1 = OFS$1 + 4ll;
		}
		label$1354:;
		I$1 = I$1 + 1ll;
		label$1353:;
		if( I$1 <= TMP$794$2 ) goto label$1356;
		label$1355:;
	}
	if( (BYTES$1 & 2ll) == 0ll ) goto label$1358;
	{
		uint8* vr$8 = HGETREGNAME( 5ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$8, 0ll, 0 );
		HPREPOPERAND( SVREG$1, &SRC$1, 5ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
		HPREPOPERAND( DVREG$1, &DST$1, 5ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
		OFS$1 = OFS$1 + 2ll;
	}
	label$1358:;
	label$1357:;
	if( (BYTES$1 & 1ll) == 0ll ) goto label$1360;
	{
		uint8* vr$11 = HGETREGNAME( 2ll, REG$1 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$11, 0ll, 0 );
		HPREPOPERAND( SVREG$1, &SRC$1, 2ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC$1 );
		HPREPOPERAND( DVREG$1, &DST$1, 2ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
	}
	label$1360:;
	label$1359:;
	if( ISFREE$1 != 0ll ) goto label$1362;
	{
		HPOP( (uint8*)*(uint8**)&AUX$1 );
	}
	label$1362:;
	label$1361:;
	label$1348:;
}

static void _EMITMEMMOVE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1, int64 EXTRA$1 )
{
	label$1363:;
	if( (int64)(uint32)BYTES$1 <= 16ll ) goto label$1366;
	{
		HMEMMOVEREP( DVREG$1, SVREG$1, BYTES$1 );
	}
	goto label$1365;
	label$1366:;
	{
		HMEMMOVEBLK( DVREG$1, SVREG$1, BYTES$1 );
	}
	label$1365:;
	label$1364:;
}

static void _EMITMEMSWAP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1, int64 EXTRA$1 )
{
	label$1367:;
	label$1368:;
}

static void HMEMCLEARREPIMM( struct $6IRVREG* DVREG$1, uint32 BYTES$1 )
{
	label$1369:;
	static FBSTRING DST$1;
	static FBSTRING OSTR$1;
	static int64 EAXFREE$1;
	static int64 ECXFREE$1;
	static int64 EDIFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	int64 vr$0 = HISREGFREE( 0ll, 5ll );
	EAXFREE$1 = vr$0;
	int64 vr$1 = HISREGFREE( 0ll, 3ll );
	ECXFREE$1 = vr$1;
	int64 vr$2 = HISREGFREE( 0ll, 1ll );
	EDIFREE$1 = vr$2;
	if( EAXFREE$1 != 0ll ) goto label$1372;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1372:;
	label$1371:;
	if( ECXFREE$1 != 0ll ) goto label$1374;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1374:;
	label$1373:;
	if( EDIFREE$1 != 0ll ) goto label$1376;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1376:;
	label$1375:;
	if( *(int64*)DVREG$1 == 4ll ) goto label$1378;
	{
		HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
	}
	goto label$1377;
	label$1378:;
	{
		if( *(int64*)((uint8*)DVREG$1 + 24ll) == 1ll ) goto label$1380;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		label$1380:;
		label$1379:;
	}
	label$1377:;
	OUTP( (uint8*)"xor eax, eax" );
	if( (int64)BYTES$1 <= 4ll ) goto label$1382;
	{
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"mov ecx, ", 10ll, 0 );
		FBSTRING* vr$8 = fb_LongintToStr( (int64)BYTES$1 / 4ll );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$8, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		OUTP( (uint8*)"rep stosd" );
	}
	goto label$1381;
	label$1382:;
	if( (int64)BYTES$1 != 4ll ) goto label$1383;
	{
		OUTP( (uint8*)"mov dword ptr [edi], eax" );
		if( ((int64)BYTES$1 & 3ll) <= 0ll ) goto label$1385;
		{
			OUTP( (uint8*)"add edi, 4" );
		}
		label$1385:;
		label$1384:;
	}
	label$1383:;
	label$1381:;
	BYTES$1 = (uint32)((int64)BYTES$1 & 3ll);
	if( (int64)BYTES$1 <= 0ll ) goto label$1387;
	{
		if( (int64)BYTES$1 < 2ll ) goto label$1389;
		{
			OUTP( (uint8*)"mov word ptr [edi], ax" );
			if( (int64)BYTES$1 != 3ll ) goto label$1391;
			{
				OUTP( (uint8*)"add edi, 2" );
			}
			label$1391:;
			label$1390:;
		}
		label$1389:;
		label$1388:;
		if( ((int64)BYTES$1 & 1ll) == 0ll ) goto label$1393;
		{
			OUTP( (uint8*)"mov byte ptr [edi], al" );
		}
		label$1393:;
		label$1392:;
	}
	label$1387:;
	label$1386:;
	if( EDIFREE$1 != 0ll ) goto label$1395;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1395:;
	label$1394:;
	if( ECXFREE$1 != 0ll ) goto label$1397;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1397:;
	label$1396:;
	if( EAXFREE$1 != 0ll ) goto label$1399;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1399:;
	label$1398:;
	label$1370:;
}

static void HMEMCLEARBLKIMM( struct $6IRVREG* DVREG$1, uint32 BYTES$1 )
{
	label$1400:;
	static FBSTRING DST$1;
	static int64 I$1;
	static int64 OFS$1;
	OFS$1 = 0ll;
	{
		I$1 = 1ll;
		int64 TMP$798$2;
		TMP$798$2 = (int64)BYTES$1 / 4ll;
		goto label$1402;
		label$1405:;
		{
			HPREPOPERAND( DVREG$1, &DST$1, 8ll, OFS$1, 0ll, -1ll );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
			OFS$1 = OFS$1 + 4ll;
		}
		label$1403:;
		I$1 = I$1 + 1ll;
		label$1402:;
		if( I$1 <= TMP$798$2 ) goto label$1405;
		label$1404:;
	}
	if( ((int64)BYTES$1 & 2ll) == 0ll ) goto label$1407;
	{
		HPREPOPERAND( DVREG$1, &DST$1, 5ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		OFS$1 = OFS$1 + 2ll;
	}
	label$1407:;
	label$1406:;
	if( ((int64)BYTES$1 & 1ll) == 0ll ) goto label$1409;
	{
		HPREPOPERAND( DVREG$1, &DST$1, 2ll, OFS$1, 0ll, -1ll );
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
	}
	label$1409:;
	label$1408:;
	label$1401:;
}

static void HMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* BYTES_VREG$1 )
{
	label$1410:;
	static FBSTRING DST$1;
	static FBSTRING BYTES$1;
	static FBSTRING OSTR$1;
	static int64 EAXFREE$1;
	static int64 ECXFREE$1;
	static int64 EDIFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( BYTES_VREG$1, &BYTES$1, 2147483648ll, 0ll, 0ll, -1ll );
	int64 vr$0 = HISREGFREE( 0ll, 5ll );
	EAXFREE$1 = vr$0;
	int64 vr$1 = HISREGFREE( 0ll, 3ll );
	ECXFREE$1 = vr$1;
	int64 vr$2 = HISREGFREE( 0ll, 1ll );
	EDIFREE$1 = vr$2;
	if( EAXFREE$1 != 0ll ) goto label$1413;
	{
		HPUSH( (uint8*)"eax" );
	}
	label$1413:;
	label$1412:;
	if( ECXFREE$1 != 0ll ) goto label$1415;
	{
		HPUSH( (uint8*)"ecx" );
	}
	label$1415:;
	label$1414:;
	if( EDIFREE$1 != 0ll ) goto label$1417;
	{
		HPUSH( (uint8*)"edi" );
	}
	label$1417:;
	label$1416:;
	int64 vr$3 = HISREGINVREG( BYTES_VREG$1, 1ll );
	if( vr$3 != 0ll ) goto label$1419;
	{
		if( *(int64*)DVREG$1 == 4ll ) goto label$1421;
		{
			HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
		}
		goto label$1420;
		label$1421:;
		{
			if( *(int64*)((uint8*)DVREG$1 + 24ll) == 1ll ) goto label$1423;
			{
				HMOV( (uint8*)"edi", (uint8*)*(uint8**)&DST$1 );
			}
			label$1423:;
			label$1422:;
		}
		label$1420:;
		if( *(int64*)BYTES_VREG$1 == 4ll ) goto label$1425;
		{
			HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&BYTES$1 );
		}
		goto label$1424;
		label$1425:;
		{
			if( *(int64*)((uint8*)BYTES_VREG$1 + 24ll) == 3ll ) goto label$1427;
			{
				HMOV( (uint8*)"ecx", (uint8*)*(uint8**)&BYTES$1 );
			}
			label$1427:;
			label$1426:;
		}
		label$1424:;
	}
	goto label$1418;
	label$1419:;
	{
		HPUSH( (uint8*)*(uint8**)&BYTES$1 );
		fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"lea edi, ", 10ll, 0 );
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)&DST$1, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&OSTR$1 );
		HPOP( (uint8*)"ecx" );
	}
	label$1418:;
	OUTP( (uint8*)"xor eax, eax" );
	OUTP( (uint8*)"push ecx" );
	OUTP( (uint8*)"shr ecx, 2" );
	OUTP( (uint8*)"rep stosd" );
	OUTP( (uint8*)"pop ecx" );
	OUTP( (uint8*)"and ecx, 3" );
	OUTP( (uint8*)"rep stosb" );
	if( EDIFREE$1 != 0ll ) goto label$1429;
	{
		HPOP( (uint8*)"edi" );
	}
	label$1429:;
	label$1428:;
	if( ECXFREE$1 != 0ll ) goto label$1431;
	{
		HPOP( (uint8*)"ecx" );
	}
	label$1431:;
	label$1430:;
	if( EAXFREE$1 != 0ll ) goto label$1433;
	{
		HPOP( (uint8*)"eax" );
	}
	label$1433:;
	label$1432:;
	label$1411:;
}

static void _EMITMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 UNUSED$1, int64 EXTRA$1 )
{
	label$1434:;
	if( *(int64*)SVREG$1 != 0ll ) goto label$1437;
	{
		uint32 BYTES$2;
		BYTES$2 = (uint32)*(int64*)((uint8*)SVREG$1 + 48ll);
		if( (int64)BYTES$2 <= 16ll ) goto label$1439;
		{
			HMEMCLEARREPIMM( DVREG$1, BYTES$2 );
		}
		goto label$1438;
		label$1439:;
		{
			HMEMCLEARBLKIMM( DVREG$1, BYTES$2 );
		}
		label$1438:;
	}
	goto label$1436;
	label$1437:;
	{
		HMEMCLEAR( DVREG$1, SVREG$1 );
	}
	label$1436:;
	label$1435:;
}

static void _EMITSTKCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int64 BYTES$1, int64 BASEOFS$1 )
{
	label$1440:;
	HCLEARLOCALS( BYTES$1, BASEOFS$1 );
	label$1441:;
}

static void _EMITLINEINI( struct $8FBSYMBOL* PROC$1, int64 LNUM$1, int64 POS_$1, uint8* FILENAME$1 )
{
	label$1442:;
	EDBGLINEBEGIN( PROC$1, LNUM$1, POS_$1, FILENAME$1 );
	label$1443:;
}

static void _EMITLINEEND( struct $8FBSYMBOL* PROC$1, int64 LNUM$1, int64 POS_$1 )
{
	label$1444:;
	EDBGLINEEND( PROC$1, LNUM$1, POS_$1 );
	label$1445:;
}

static void _EMITSCOPEINI( struct $8FBSYMBOL* SYM$1, int64 LNUM$1, int64 POS_$1 )
{
	label$1446:;
	EDBGEMITSCOPEINI( SYM$1 );
	label$1447:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* SYM$1, int64 LNUM$1, int64 POS_$1 )
{
	label$1448:;
	EDBGEMITSCOPEEND( SYM$1 );
	label$1449:;
}

static void _EMITLOADB2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1450:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1451:;
}

static void _EMITSTORB2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1452:;
	_EMITLOADB2B( DVREG$1, SVREG$1 );
	label$1453:;
}

static void _EMITLOADB2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$805$1;
	int64 TMP$806$1;
	FBSTRING TMP$811$1;
	FBSTRING TMP$812$1;
	label$1454:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( *(int64*)SVREG$1 != 0ll ) goto label$1457;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1459;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"-1" );
		}
		goto label$1458;
		label$1459:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1458:;
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1455;
	}
	label$1457:;
	label$1456:;
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1460;
	TMP$805$1 = 24ll;
	goto label$1793;
	label$1460:;
	TMP$805$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1793:;
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1461;
	TMP$806$1 = 24ll;
	goto label$1794;
	label$1461:;
	TMP$806$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1794:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$805$1 * 56ll)) + 8ll) <= *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$806$1 * 56ll)) + 8ll) ) goto label$1463;
	{
		FBSTRING TMP$807$2;
		FBSTRING TMP$808$2;
		FBSTRING TMP$809$2;
		FBSTRING TMP$810$2;
		__builtin_memset( &TMP$810$2, 0, 24ll );
		__builtin_memset( &TMP$807$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$807$2, (void*)"movzx ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$808$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$808$2, (void*)vr$23, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$809$2, 0, 24ll );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$809$2, (void*)vr$26, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$810$2, -1ll, (void*)vr$29, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$810$2 );
		fb_StrDelete( (FBSTRING*)&TMP$810$2 );
	}
	goto label$1462;
	label$1463:;
	{
		HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&SRC$1 );
	}
	label$1462:;
	__builtin_memset( &TMP$812$1, 0, 24ll );
	__builtin_memset( &TMP$811$1, 0, 24ll );
	FBSTRING* vr$36 = fb_StrConcat( &TMP$811$1, (void*)"neg ", 5ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$812$1, -1ll, (void*)vr$36, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$812$1 );
	fb_StrDelete( (FBSTRING*)&TMP$812$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1455:;
}

static void _EMITSTORB2I( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1464:;
	_EMITLOADB2I( DVREG$1, SVREG$1 );
	label$1465:;
}

static void _EMITLOADI2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1466:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	FBSTRING DST8$1;
	__builtin_memset( &DST8$1, 0, 24ll );
	int64 DDSIZE$1;
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	DDSIZE$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 64ll);
	if( *(int64*)SVREG$1 != 0ll ) goto label$1469;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1471;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
		}
		goto label$1470;
		label$1471:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1470:;
	}
	goto label$1468;
	label$1469:;
	if( DDSIZE$1 != 1ll ) goto label$1472;
	{
		FBSTRING TMP$813$2;
		FBSTRING TMP$814$2;
		FBSTRING TMP$815$2;
		FBSTRING TMP$817$2;
		FBSTRING TMP$818$2;
		__builtin_memset( &TMP$815$2, 0, 24ll );
		__builtin_memset( &TMP$813$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$813$2, (void*)"cmp ", 5ll, (void*)&SRC$1, -1ll );
		__builtin_memset( &TMP$814$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$814$2, (void*)vr$11, -1ll, (void*)", 0", 4ll );
		fb_StrAssign( (void*)&TMP$815$2, -1ll, (void*)vr$14, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$815$2 );
		fb_StrDelete( (FBSTRING*)&TMP$815$2 );
		__builtin_memset( &TMP$818$2, 0, 24ll );
		__builtin_memset( &TMP$817$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$817$2, (void*)"setne ", 7ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$818$2, -1ll, (void*)vr$21, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$818$2 );
		fb_StrDelete( (FBSTRING*)&TMP$818$2 );
	}
	goto label$1468;
	label$1472:;
	if( (((int64)-(*(int64*)DVREG$1 == 4ll) & (int64)-(*(int64*)((uint8*)DVREG$1 + 24ll) != 2ll)) & (int64)-(*(int64*)((uint8*)DVREG$1 + 24ll) != 1ll)) == 0ll ) goto label$1473;
	{
		FBSTRING TMP$819$2;
		FBSTRING TMP$820$2;
		FBSTRING TMP$821$2;
		FBSTRING TMP$822$2;
		FBSTRING TMP$823$2;
		FBSTRING TMP$824$2;
		FBSTRING TMP$825$2;
		FBSTRING TMP$826$2;
		FBSTRING TMP$827$2;
		uint8* vr$33 = HGETREGNAME( 2ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
		fb_StrAssign( (void*)&DST8$1, -1ll, (void*)vr$33, 0ll, 0 );
		__builtin_memset( &TMP$821$2, 0, 24ll );
		__builtin_memset( &TMP$819$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$819$2, (void*)"cmp ", 5ll, (void*)&SRC$1, -1ll );
		__builtin_memset( &TMP$820$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$820$2, (void*)vr$39, -1ll, (void*)", 0", 4ll );
		fb_StrAssign( (void*)&TMP$821$2, -1ll, (void*)vr$42, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$821$2 );
		fb_StrDelete( (FBSTRING*)&TMP$821$2 );
		__builtin_memset( &TMP$823$2, 0, 24ll );
		__builtin_memset( &TMP$822$2, 0, 24ll );
		FBSTRING* vr$49 = fb_StrConcat( &TMP$822$2, (void*)"setne ", 7ll, (void*)&DST8$1, -1ll );
		fb_StrAssign( (void*)&TMP$823$2, -1ll, (void*)vr$49, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$823$2 );
		fb_StrDelete( (FBSTRING*)&TMP$823$2 );
		__builtin_memset( &TMP$827$2, 0, 24ll );
		__builtin_memset( &TMP$824$2, 0, 24ll );
		FBSTRING* vr$57 = fb_StrConcat( &TMP$824$2, (void*)"movzx ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$825$2, 0, 24ll );
		FBSTRING* vr$60 = fb_StrConcat( &TMP$825$2, (void*)vr$57, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$826$2, 0, 24ll );
		FBSTRING* vr$63 = fb_StrConcat( &TMP$826$2, (void*)vr$60, -1ll, (void*)&DST8$1, -1ll );
		fb_StrAssign( (void*)&TMP$827$2, -1ll, (void*)vr$63, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$827$2 );
		fb_StrDelete( (FBSTRING*)&TMP$827$2 );
	}
	goto label$1468;
	label$1473:;
	{
		FBSTRING TMP$828$2;
		FBSTRING TMP$829$2;
		FBSTRING TMP$830$2;
		FBSTRING TMP$831$2;
		FBSTRING TMP$832$2;
		FBSTRING TMP$833$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 24ll );
		FBSTRING AUX8$2;
		__builtin_memset( &AUX8$2, 0, 24ll );
		int64 REG$2;
		__builtin_memset( &REG$2, 0, 8ll );
		int64 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 8ll );
		int64 vr$70 = HFINDREGNOTINVREG( DVREG$1, -1ll );
		REG$2 = vr$70;
		uint8* vr$71 = HGETREGNAME( 2ll, REG$2 );
		fb_StrAssign( (void*)&AUX8$2, -1ll, (void*)vr$71, 0ll, 0 );
		uint8* vr$74 = HGETREGNAME( *(int64*)((uint8*)DVREG$1 + 8ll), REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$74, 0ll, 0 );
		int64 vr$76 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$76;
		if( ISFREE$2 != 0ll ) goto label$1475;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1475:;
		label$1474:;
		__builtin_memset( &TMP$831$2, 0, 24ll );
		__builtin_memset( &TMP$828$2, 0, 24ll );
		FBSTRING* vr$81 = fb_StrConcat( &TMP$828$2, (void*)"cmp ", 5ll, (void*)&SRC$1, -1ll );
		__builtin_memset( &TMP$829$2, 0, 24ll );
		FBSTRING* vr$84 = fb_StrConcat( &TMP$829$2, (void*)vr$81, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$830$2, 0, 24ll );
		FBSTRING* vr$87 = fb_StrConcat( &TMP$830$2, (void*)vr$84, -1ll, (void*)"0", 2ll );
		fb_StrAssign( (void*)&TMP$831$2, -1ll, (void*)vr$87, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$831$2 );
		fb_StrDelete( (FBSTRING*)&TMP$831$2 );
		__builtin_memset( &TMP$833$2, 0, 24ll );
		__builtin_memset( &TMP$832$2, 0, 24ll );
		FBSTRING* vr$94 = fb_StrConcat( &TMP$832$2, (void*)"setne ", 7ll, (void*)&AUX8$2, -1ll );
		fb_StrAssign( (void*)&TMP$833$2, -1ll, (void*)vr$94, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$833$2 );
		fb_StrDelete( (FBSTRING*)&TMP$833$2 );
		if( *(int64*)DVREG$1 != 4ll ) goto label$1477;
		{
			FBSTRING TMP$834$3;
			FBSTRING TMP$835$3;
			FBSTRING TMP$836$3;
			FBSTRING TMP$837$3;
			__builtin_memset( &TMP$837$3, 0, 24ll );
			__builtin_memset( &TMP$834$3, 0, 24ll );
			FBSTRING* vr$103 = fb_StrConcat( &TMP$834$3, (void*)"movzx ", 7ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$835$3, 0, 24ll );
			FBSTRING* vr$106 = fb_StrConcat( &TMP$835$3, (void*)vr$103, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$836$3, 0, 24ll );
			FBSTRING* vr$109 = fb_StrConcat( &TMP$836$3, (void*)vr$106, -1ll, (void*)&AUX8$2, -1ll );
			fb_StrAssign( (void*)&TMP$837$3, -1ll, (void*)vr$109, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$837$3 );
			fb_StrDelete( (FBSTRING*)&TMP$837$3 );
		}
		goto label$1476;
		label$1477:;
		{
			FBSTRING TMP$838$3;
			FBSTRING TMP$839$3;
			FBSTRING TMP$840$3;
			FBSTRING TMP$841$3;
			FBSTRING TMP$842$3;
			FBSTRING TMP$843$3;
			FBSTRING TMP$844$3;
			FBSTRING TMP$845$3;
			__builtin_memset( &TMP$841$3, 0, 24ll );
			__builtin_memset( &TMP$838$3, 0, 24ll );
			FBSTRING* vr$117 = fb_StrConcat( &TMP$838$3, (void*)"movzx ", 7ll, (void*)&AUX$2, -1ll );
			__builtin_memset( &TMP$839$3, 0, 24ll );
			FBSTRING* vr$120 = fb_StrConcat( &TMP$839$3, (void*)vr$117, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$840$3, 0, 24ll );
			FBSTRING* vr$123 = fb_StrConcat( &TMP$840$3, (void*)vr$120, -1ll, (void*)&AUX8$2, -1ll );
			fb_StrAssign( (void*)&TMP$841$3, -1ll, (void*)vr$123, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$841$3 );
			fb_StrDelete( (FBSTRING*)&TMP$841$3 );
			__builtin_memset( &TMP$845$3, 0, 24ll );
			__builtin_memset( &TMP$842$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$842$3, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
			__builtin_memset( &TMP$843$3, 0, 24ll );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$843$3, (void*)vr$131, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$844$3, 0, 24ll );
			FBSTRING* vr$137 = fb_StrConcat( &TMP$844$3, (void*)vr$134, -1ll, (void*)&AUX$2, -1ll );
			fb_StrAssign( (void*)&TMP$845$3, -1ll, (void*)vr$137, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$845$3 );
			fb_StrDelete( (FBSTRING*)&TMP$845$3 );
		}
		label$1476:;
		if( ISFREE$2 != 0ll ) goto label$1479;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1479:;
		label$1478:;
		fb_StrDelete( (FBSTRING*)&AUX8$2 );
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	label$1468:;
	fb_StrDelete( (FBSTRING*)&DST8$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1467:;
}

static void _EMITSTORI2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1480:;
	_EMITLOADI2B( DVREG$1, SVREG$1 );
	label$1481:;
}

static void _EMITLOADF2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$846$1;
	int64 TMP$847$1;
	label$1482:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	int64 DDSIZE$1;
	int64 ISFREE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)DVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1484;
	TMP$846$1 = 24ll;
	goto label$1795;
	label$1484:;
	TMP$846$1 = *(int64*)((uint8*)DVREG$1 + 8ll) & 31ll;
	label$1795:;
	DDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$846$1 * 56ll)) + 8ll);
	int64 vr$9 = HISREGFREE( 0ll, 5ll );
	ISFREE$1 = vr$9;
	if( ISFREE$1 != 0ll ) goto label$1485;
	int64 vr$10 = HISREGINVREG( DVREG$1, 5ll );
	TMP$847$1 = (int64)-(vr$10 != 0ll);
	goto label$1796;
	label$1485:;
	TMP$847$1 = -1ll;
	label$1796:;
	ISFREE$1 = TMP$847$1;
	if( *(int64*)SVREG$1 == 4ll ) goto label$1487;
	{
		FBSTRING TMP$848$2;
		FBSTRING TMP$849$2;
		__builtin_memset( &TMP$849$2, 0, 24ll );
		__builtin_memset( &TMP$848$2, 0, 24ll );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$848$2, (void*)"fld ", 5ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$849$2, -1ll, (void*)vr$17, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$849$2 );
		fb_StrDelete( (FBSTRING*)&TMP$849$2 );
	}
	label$1487:;
	label$1486:;
	if( ISFREE$1 != 0ll ) goto label$1489;
	{
		OUTP( (uint8*)"push eax" );
	}
	label$1489:;
	label$1488:;
	OUTP( (uint8*)"ftst" );
	OUTP( (uint8*)"fnstsw ax" );
	OUTP( (uint8*)"sahf" );
	OUTP( (uint8*)"setnz al" );
	OUTP( (uint8*)"fstp st(0)" );
	if( DDSIZE$1 != 1ll ) goto label$1491;
	{
		FBSTRING TMP$853$2;
		FBSTRING TMP$854$2;
		FBSTRING TMP$855$2;
		__builtin_memset( &TMP$855$2, 0, 24ll );
		__builtin_memset( &TMP$853$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$853$2, (void*)"mov ", 5ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$854$2, 0, 24ll );
		FBSTRING* vr$27 = fb_StrConcat( &TMP$854$2, (void*)vr$24, -1ll, (void*)", al", 5ll );
		fb_StrAssign( (void*)&TMP$855$2, -1ll, (void*)vr$27, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$855$2 );
		fb_StrDelete( (FBSTRING*)&TMP$855$2 );
	}
	goto label$1490;
	label$1491:;
	{
		FBSTRING TMP$856$2;
		FBSTRING TMP$857$2;
		FBSTRING TMP$858$2;
		__builtin_memset( &TMP$858$2, 0, 24ll );
		__builtin_memset( &TMP$856$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$856$2, (void*)"movzx ", 7ll, (void*)&DST$1, -1ll );
		__builtin_memset( &TMP$857$2, 0, 24ll );
		FBSTRING* vr$37 = fb_StrConcat( &TMP$857$2, (void*)vr$34, -1ll, (void*)", al", 5ll );
		fb_StrAssign( (void*)&TMP$858$2, -1ll, (void*)vr$37, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$858$2 );
		fb_StrDelete( (FBSTRING*)&TMP$858$2 );
	}
	label$1490:;
	if( ISFREE$1 != 0ll ) goto label$1493;
	{
		OUTP( (uint8*)"pop eax" );
	}
	label$1493:;
	label$1492:;
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1483:;
}

static void _EMITSTORF2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1494:;
	_EMITLOADF2B( DVREG$1, SVREG$1 );
	label$1495:;
}

static void _EMITLOADB2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$860$1;
	label$1496:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	int64 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1498;
	TMP$860$1 = 24ll;
	goto label$1797;
	label$1498:;
	TMP$860$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1797:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$860$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 != 0ll ) goto label$1500;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1502;
		{
			OUTP( (uint8*)"fld1" );
			OUTP( (uint8*)"fchs" );
		}
		goto label$1501;
		label$1502:;
		{
			OUTP( (uint8*)"fldz" );
		}
		label$1501:;
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1497;
	}
	label$1500:;
	label$1499:;
	if( SDSIZE$1 != 1ll ) goto label$1504;
	{
		FBSTRING TMP$862$2;
		FBSTRING TMP$863$2;
		FBSTRING TMP$864$2;
		FBSTRING TMP$865$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 24ll );
		int64 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 8ll );
		int64 REG$2;
		__builtin_memset( &REG$2, 0, 8ll );
		int64 vr$16 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$2 = vr$16;
		uint8* vr$17 = HGETREGNAME( 8ll, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$17, 0ll, 0 );
		int64 vr$19 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$19;
		if( ISFREE$2 != 0ll ) goto label$1506;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1506:;
		label$1505:;
		__builtin_memset( &TMP$865$2, 0, 24ll );
		__builtin_memset( &TMP$862$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$862$2, (void*)"movzx ", 7ll, (void*)&AUX$2, -1ll );
		__builtin_memset( &TMP$863$2, 0, 24ll );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$863$2, (void*)vr$25, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$864$2, 0, 24ll );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$864$2, (void*)vr$28, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$865$2, -1ll, (void*)vr$31, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$865$2 );
		fb_StrDelete( (FBSTRING*)&TMP$865$2 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0ll ) goto label$1508;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1508:;
		label$1507:;
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	goto label$1503;
	label$1504:;
	{
		FBSTRING TMP$866$2;
		FBSTRING TMP$867$2;
		__builtin_memset( &TMP$867$2, 0, 24ll );
		__builtin_memset( &TMP$866$2, 0, 24ll );
		FBSTRING* vr$39 = fb_StrConcat( &TMP$866$2, (void*)"fild ", 6ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$867$2, -1ll, (void*)vr$39, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$867$2 );
		fb_StrDelete( (FBSTRING*)&TMP$867$2 );
	}
	label$1503:;
	OUTP( (uint8*)"fchs" );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1497:;
}

static void _EMITSTORB2F( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	int64 TMP$868$1;
	FBSTRING TMP$877$1;
	FBSTRING TMP$878$1;
	label$1509:;
	FBSTRING SRC$1;
	__builtin_memset( &SRC$1, 0, 24ll );
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	int64 SDSIZE$1;
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	HPREPOPERAND( SVREG$1, &SRC$1, 2147483648ll, 0ll, 0ll, -1ll );
	if( (*(int64*)((uint8*)SVREG$1 + 8ll) & 480ll) == 0ll ) goto label$1511;
	TMP$868$1 = 24ll;
	goto label$1798;
	label$1511:;
	TMP$868$1 = *(int64*)((uint8*)SVREG$1 + 8ll) & 31ll;
	label$1798:;
	SDSIZE$1 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$868$1 * 56ll)) + 8ll);
	if( *(int64*)SVREG$1 != 0ll ) goto label$1513;
	{
		FBSTRING TMP$869$2;
		FBSTRING TMP$870$2;
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1515;
		{
			OUTP( (uint8*)"fld1" );
			OUTP( (uint8*)"fchs" );
		}
		goto label$1514;
		label$1515:;
		{
			OUTP( (uint8*)"fldz" );
		}
		label$1514:;
		__builtin_memset( &TMP$870$2, 0, 24ll );
		__builtin_memset( &TMP$869$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$869$2, (void*)"fstp ", 6ll, (void*)&DST$1, -1ll );
		fb_StrAssign( (void*)&TMP$870$2, -1ll, (void*)vr$15, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$870$2 );
		fb_StrDelete( (FBSTRING*)&TMP$870$2 );
		fb_StrDelete( (FBSTRING*)&DST$1 );
		fb_StrDelete( (FBSTRING*)&SRC$1 );
		goto label$1510;
	}
	label$1513:;
	label$1512:;
	if( SDSIZE$1 != 1ll ) goto label$1517;
	{
		FBSTRING TMP$871$2;
		FBSTRING TMP$872$2;
		FBSTRING TMP$873$2;
		FBSTRING TMP$874$2;
		FBSTRING AUX$2;
		__builtin_memset( &AUX$2, 0, 24ll );
		int64 ISFREE$2;
		__builtin_memset( &ISFREE$2, 0, 8ll );
		int64 REG$2;
		__builtin_memset( &REG$2, 0, 8ll );
		int64 vr$23 = HFINDREGNOTINVREG( SVREG$1, 0ll );
		REG$2 = vr$23;
		uint8* vr$24 = HGETREGNAME( 8ll, REG$2 );
		fb_StrAssign( (void*)&AUX$2, -1ll, (void*)vr$24, 0ll, 0 );
		int64 vr$26 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$26;
		if( ISFREE$2 != 0ll ) goto label$1519;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1519:;
		label$1518:;
		__builtin_memset( &TMP$874$2, 0, 24ll );
		__builtin_memset( &TMP$871$2, 0, 24ll );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$871$2, (void*)"movzx ", 7ll, (void*)&AUX$2, -1ll );
		__builtin_memset( &TMP$872$2, 0, 24ll );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$872$2, (void*)vr$32, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$873$2, 0, 24ll );
		FBSTRING* vr$38 = fb_StrConcat( &TMP$873$2, (void*)vr$35, -1ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$874$2, -1ll, (void*)vr$38, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$874$2 );
		fb_StrDelete( (FBSTRING*)&TMP$874$2 );
		HPUSH( (uint8*)*(uint8**)&AUX$2 );
		OUTP( (uint8*)"fild dword ptr [esp]" );
		OUTP( (uint8*)"add esp, 4" );
		if( ISFREE$2 != 0ll ) goto label$1521;
		{
			HPOP( (uint8*)*(uint8**)&AUX$2 );
		}
		label$1521:;
		label$1520:;
		fb_StrDelete( (FBSTRING*)&AUX$2 );
	}
	goto label$1516;
	label$1517:;
	{
		FBSTRING TMP$875$2;
		FBSTRING TMP$876$2;
		__builtin_memset( &TMP$876$2, 0, 24ll );
		__builtin_memset( &TMP$875$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$875$2, (void*)"fild ", 6ll, (void*)&SRC$1, -1ll );
		fb_StrAssign( (void*)&TMP$876$2, -1ll, (void*)vr$46, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$876$2 );
		fb_StrDelete( (FBSTRING*)&TMP$876$2 );
	}
	label$1516:;
	OUTP( (uint8*)"fchs" );
	__builtin_memset( &TMP$878$1, 0, 24ll );
	__builtin_memset( &TMP$877$1, 0, 24ll );
	FBSTRING* vr$53 = fb_StrConcat( &TMP$877$1, (void*)"fstp ", 6ll, (void*)&DST$1, -1ll );
	fb_StrAssign( (void*)&TMP$878$1, -1ll, (void*)vr$53, -1ll, 0 );
	OUTP( (uint8*)*(uint8**)&TMP$878$1 );
	fb_StrDelete( (FBSTRING*)&TMP$878$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	fb_StrDelete( (FBSTRING*)&SRC$1 );
	label$1510:;
}

static void _EMITLOADB2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1522:;
	FBSTRING DST1$1;
	__builtin_memset( &DST1$1, 0, 24ll );
	FBSTRING DST2$1;
	__builtin_memset( &DST2$1, 0, 24ll );
	HPREPOPERAND64( DVREG$1, &DST1$1, &DST2$1 );
	if( *(int64*)SVREG$1 != 0ll ) goto label$1525;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1527;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)"-1" );
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"-1" );
		}
		goto label$1526;
		label$1527:;
		{
			HMOV( (uint8*)*(uint8**)&DST1$1, (uint8*)"0" );
			HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)"0" );
		}
		label$1526:;
	}
	goto label$1524;
	label$1525:;
	{
		FBSTRING TMP$879$2;
		FBSTRING TMP$880$2;
		FBSTRING TMP$881$2;
		FBSTRING TMP$882$2;
		FBSTRING TMP$883$2;
		FBSTRING TMP$884$2;
		FBSTRING SRC$2;
		__builtin_memset( &SRC$2, 0, 24ll );
		HPREPOPERAND( SVREG$1, &SRC$2, 2147483648ll, 0ll, 0ll, -1ll );
		__builtin_memset( &TMP$882$2, 0, 24ll );
		__builtin_memset( &TMP$879$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$879$2, (void*)"movzx ", 7ll, (void*)&DST1$1, -1ll );
		__builtin_memset( &TMP$880$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$880$2, (void*)vr$13, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$881$2, 0, 24ll );
		FBSTRING* vr$19 = fb_StrConcat( &TMP$881$2, (void*)vr$16, -1ll, (void*)&SRC$2, -1ll );
		fb_StrAssign( (void*)&TMP$882$2, -1ll, (void*)vr$19, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$882$2 );
		fb_StrDelete( (FBSTRING*)&TMP$882$2 );
		__builtin_memset( &TMP$884$2, 0, 24ll );
		__builtin_memset( &TMP$883$2, 0, 24ll );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$883$2, (void*)"neg ", 5ll, (void*)&DST1$1, -1ll );
		fb_StrAssign( (void*)&TMP$884$2, -1ll, (void*)vr$26, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$884$2 );
		fb_StrDelete( (FBSTRING*)&TMP$884$2 );
		HMOV( (uint8*)*(uint8**)&DST2$1, (uint8*)*(uint8**)&DST1$1 );
		fb_StrDelete( (FBSTRING*)&SRC$2 );
	}
	label$1524:;
	fb_StrDelete( (FBSTRING*)&DST2$1 );
	fb_StrDelete( (FBSTRING*)&DST1$1 );
	label$1523:;
}

static void _EMITSTORB2L( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1528:;
	_EMITLOADB2L( DVREG$1, SVREG$1 );
	label$1529:;
}

static void _EMITLOADL2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1530:;
	FBSTRING DST$1;
	__builtin_memset( &DST$1, 0, 24ll );
	int64 DDSIZE$1;
	__builtin_memset( &DDSIZE$1, 0, 8ll );
	FBSTRING SRC1$1;
	__builtin_memset( &SRC1$1, 0, 24ll );
	FBSTRING SRC2$1;
	__builtin_memset( &SRC2$1, 0, 24ll );
	FBSTRING AUX$1;
	__builtin_memset( &AUX$1, 0, 24ll );
	FBSTRING AUX8$1;
	__builtin_memset( &AUX8$1, 0, 24ll );
	HPREPOPERAND64( SVREG$1, &SRC1$1, &SRC2$1 );
	HPREPOPERAND( DVREG$1, &DST$1, 2147483648ll, 0ll, 0ll, -1ll );
	DDSIZE$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 64ll);
	if( *(int64*)SVREG$1 != 0ll ) goto label$1533;
	{
		if( *(int64*)((uint8*)SVREG$1 + 48ll) == 0ll ) goto label$1535;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"1" );
		}
		goto label$1534;
		label$1535:;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)"0" );
		}
		label$1534:;
	}
	goto label$1532;
	label$1533:;
	if( (((int64)-(*(int64*)DVREG$1 == 4ll) & (int64)-(*(int64*)((uint8*)DVREG$1 + 24ll) != 2ll)) & (int64)-(*(int64*)((uint8*)DVREG$1 + 24ll) != 1ll)) == 0ll ) goto label$1536;
	{
		FBSTRING TMP$885$2;
		FBSTRING TMP$886$2;
		FBSTRING TMP$887$2;
		FBSTRING TMP$888$2;
		FBSTRING TMP$889$2;
		FBSTRING TMP$890$2;
		FBSTRING TMP$891$2;
		FBSTRING TMP$892$2;
		FBSTRING TMP$893$2;
		uint8* vr$20 = HGETREGNAME( 2ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
		fb_StrAssign( (void*)&AUX8$1, -1ll, (void*)vr$20, 0ll, 0 );
		uint8* vr$23 = HGETREGNAME( 8ll, *(int64*)((uint8*)DVREG$1 + 24ll) );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$23, 0ll, 0 );
		HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
		__builtin_memset( &TMP$888$2, 0, 24ll );
		__builtin_memset( &TMP$885$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$885$2, (void*)"or ", 4ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$886$2, 0, 24ll );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$886$2, (void*)vr$30, -1ll, (void*)", ", 3ll );
		__builtin_memset( &TMP$887$2, 0, 24ll );
		FBSTRING* vr$36 = fb_StrConcat( &TMP$887$2, (void*)vr$33, -1ll, (void*)&SRC2$1, -1ll );
		fb_StrAssign( (void*)&TMP$888$2, -1ll, (void*)vr$36, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$888$2 );
		fb_StrDelete( (FBSTRING*)&TMP$888$2 );
		__builtin_memset( &TMP$891$2, 0, 24ll );
		__builtin_memset( &TMP$889$2, 0, 24ll );
		FBSTRING* vr$43 = fb_StrConcat( &TMP$889$2, (void*)"cmp ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$890$2, 0, 24ll );
		FBSTRING* vr$46 = fb_StrConcat( &TMP$890$2, (void*)vr$43, -1ll, (void*)", 0", 4ll );
		fb_StrAssign( (void*)&TMP$891$2, -1ll, (void*)vr$46, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$891$2 );
		fb_StrDelete( (FBSTRING*)&TMP$891$2 );
		__builtin_memset( &TMP$893$2, 0, 24ll );
		__builtin_memset( &TMP$892$2, 0, 24ll );
		FBSTRING* vr$53 = fb_StrConcat( &TMP$892$2, (void*)"setne ", 7ll, (void*)&AUX8$1, -1ll );
		fb_StrAssign( (void*)&TMP$893$2, -1ll, (void*)vr$53, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$893$2 );
		fb_StrDelete( (FBSTRING*)&TMP$893$2 );
		if( DDSIZE$1 == 1ll ) goto label$1538;
		{
			FBSTRING TMP$894$3;
			FBSTRING TMP$895$3;
			FBSTRING TMP$896$3;
			FBSTRING TMP$897$3;
			__builtin_memset( &TMP$897$3, 0, 24ll );
			__builtin_memset( &TMP$894$3, 0, 24ll );
			FBSTRING* vr$61 = fb_StrConcat( &TMP$894$3, (void*)"movzx ", 7ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$895$3, 0, 24ll );
			FBSTRING* vr$64 = fb_StrConcat( &TMP$895$3, (void*)vr$61, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$896$3, 0, 24ll );
			FBSTRING* vr$67 = fb_StrConcat( &TMP$896$3, (void*)vr$64, -1ll, (void*)&AUX8$1, -1ll );
			fb_StrAssign( (void*)&TMP$897$3, -1ll, (void*)vr$67, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$897$3 );
			fb_StrDelete( (FBSTRING*)&TMP$897$3 );
		}
		label$1538:;
		label$1537:;
	}
	goto label$1532;
	label$1536:;
	{
		FBSTRING TMP$914$2;
		FBSTRING TMP$915$2;
		FBSTRING TMP$916$2;
		FBSTRING TMP$917$2;
		FBSTRING TMP$918$2;
		int64 REG$2;
		__builtin_memset( &REG$2, 0, 8ll );
		int64 ISFREE$2;
		ISFREE$2 = 0ll;
		int64 vr$71 = HFINDREGNOTINVREG( DVREG$1, -1ll );
		REG$2 = vr$71;
		uint8* vr$72 = HGETREGNAME( 2ll, REG$2 );
		fb_StrAssign( (void*)&AUX8$1, -1ll, (void*)vr$72, 0ll, 0 );
		uint8* vr$74 = HGETREGNAME( 8ll, REG$2 );
		fb_StrAssign( (void*)&AUX$1, -1ll, (void*)vr$74, 0ll, 0 );
		int64 vr$76 = HISREGFREE( 0ll, REG$2 );
		ISFREE$2 = vr$76;
		if( ISFREE$2 != 0ll ) goto label$1540;
		{
			HPUSH( (uint8*)*(uint8**)&AUX$1 );
		}
		label$1540:;
		label$1539:;
		if( *(int64*)SVREG$1 != 4ll ) goto label$1542;
		{
			if( REG$2 != *(int64*)((uint8*)SVREG$1 + 24ll) ) goto label$1544;
			{
				FBSTRING TMP$898$4;
				FBSTRING TMP$899$4;
				FBSTRING TMP$900$4;
				FBSTRING TMP$901$4;
				__builtin_memset( &TMP$901$4, 0, 24ll );
				__builtin_memset( &TMP$898$4, 0, 24ll );
				FBSTRING* vr$84 = fb_StrConcat( &TMP$898$4, (void*)"or ", 4ll, (void*)&AUX$1, -1ll );
				__builtin_memset( &TMP$899$4, 0, 24ll );
				FBSTRING* vr$87 = fb_StrConcat( &TMP$899$4, (void*)vr$84, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$900$4, 0, 24ll );
				FBSTRING* vr$90 = fb_StrConcat( &TMP$900$4, (void*)vr$87, -1ll, (void*)&SRC2$1, -1ll );
				fb_StrAssign( (void*)&TMP$901$4, -1ll, (void*)vr$90, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$901$4 );
				fb_StrDelete( (FBSTRING*)&TMP$901$4 );
			}
			goto label$1543;
			label$1544:;
			if( REG$2 != *(int64*)((uint8*)*(struct $6IRVREG**)((uint8*)SVREG$1 + 88ll) + 24ll) ) goto label$1545;
			{
				FBSTRING TMP$902$4;
				FBSTRING TMP$903$4;
				FBSTRING TMP$904$4;
				FBSTRING TMP$905$4;
				__builtin_memset( &TMP$905$4, 0, 24ll );
				__builtin_memset( &TMP$902$4, 0, 24ll );
				FBSTRING* vr$100 = fb_StrConcat( &TMP$902$4, (void*)"or ", 4ll, (void*)&AUX$1, -1ll );
				__builtin_memset( &TMP$903$4, 0, 24ll );
				FBSTRING* vr$103 = fb_StrConcat( &TMP$903$4, (void*)vr$100, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$904$4, 0, 24ll );
				FBSTRING* vr$106 = fb_StrConcat( &TMP$904$4, (void*)vr$103, -1ll, (void*)&SRC1$1, -1ll );
				fb_StrAssign( (void*)&TMP$905$4, -1ll, (void*)vr$106, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$905$4 );
				fb_StrDelete( (FBSTRING*)&TMP$905$4 );
			}
			goto label$1543;
			label$1545:;
			{
				FBSTRING TMP$906$4;
				FBSTRING TMP$907$4;
				FBSTRING TMP$908$4;
				FBSTRING TMP$909$4;
				HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
				__builtin_memset( &TMP$909$4, 0, 24ll );
				__builtin_memset( &TMP$906$4, 0, 24ll );
				FBSTRING* vr$114 = fb_StrConcat( &TMP$906$4, (void*)"or ", 4ll, (void*)&AUX$1, -1ll );
				__builtin_memset( &TMP$907$4, 0, 24ll );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$907$4, (void*)vr$114, -1ll, (void*)", ", 3ll );
				__builtin_memset( &TMP$908$4, 0, 24ll );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$908$4, (void*)vr$117, -1ll, (void*)&SRC2$1, -1ll );
				fb_StrAssign( (void*)&TMP$909$4, -1ll, (void*)vr$120, -1ll, 0 );
				OUTP( (uint8*)*(uint8**)&TMP$909$4 );
				fb_StrDelete( (FBSTRING*)&TMP$909$4 );
			}
			label$1543:;
		}
		goto label$1541;
		label$1542:;
		{
			FBSTRING TMP$910$3;
			FBSTRING TMP$911$3;
			FBSTRING TMP$912$3;
			FBSTRING TMP$913$3;
			HMOV( (uint8*)*(uint8**)&AUX$1, (uint8*)*(uint8**)&SRC1$1 );
			__builtin_memset( &TMP$913$3, 0, 24ll );
			__builtin_memset( &TMP$910$3, 0, 24ll );
			FBSTRING* vr$128 = fb_StrConcat( &TMP$910$3, (void*)"or ", 4ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$911$3, 0, 24ll );
			FBSTRING* vr$131 = fb_StrConcat( &TMP$911$3, (void*)vr$128, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$912$3, 0, 24ll );
			FBSTRING* vr$134 = fb_StrConcat( &TMP$912$3, (void*)vr$131, -1ll, (void*)&SRC2$1, -1ll );
			fb_StrAssign( (void*)&TMP$913$3, -1ll, (void*)vr$134, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$913$3 );
			fb_StrDelete( (FBSTRING*)&TMP$913$3 );
		}
		label$1541:;
		__builtin_memset( &TMP$916$2, 0, 24ll );
		__builtin_memset( &TMP$914$2, 0, 24ll );
		FBSTRING* vr$141 = fb_StrConcat( &TMP$914$2, (void*)"cmp ", 5ll, (void*)&AUX$1, -1ll );
		__builtin_memset( &TMP$915$2, 0, 24ll );
		FBSTRING* vr$144 = fb_StrConcat( &TMP$915$2, (void*)vr$141, -1ll, (void*)", 0", 4ll );
		fb_StrAssign( (void*)&TMP$916$2, -1ll, (void*)vr$144, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$916$2 );
		fb_StrDelete( (FBSTRING*)&TMP$916$2 );
		__builtin_memset( &TMP$918$2, 0, 24ll );
		__builtin_memset( &TMP$917$2, 0, 24ll );
		FBSTRING* vr$151 = fb_StrConcat( &TMP$917$2, (void*)"setne ", 7ll, (void*)&AUX8$1, -1ll );
		fb_StrAssign( (void*)&TMP$918$2, -1ll, (void*)vr$151, -1ll, 0 );
		OUTP( (uint8*)*(uint8**)&TMP$918$2 );
		fb_StrDelete( (FBSTRING*)&TMP$918$2 );
		if( DDSIZE$1 != 1ll ) goto label$1547;
		{
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX8$1 );
		}
		goto label$1546;
		label$1547:;
		{
			FBSTRING TMP$919$3;
			FBSTRING TMP$920$3;
			FBSTRING TMP$921$3;
			FBSTRING TMP$922$3;
			__builtin_memset( &TMP$922$3, 0, 24ll );
			__builtin_memset( &TMP$919$3, 0, 24ll );
			FBSTRING* vr$159 = fb_StrConcat( &TMP$919$3, (void*)"movzx ", 7ll, (void*)&AUX$1, -1ll );
			__builtin_memset( &TMP$920$3, 0, 24ll );
			FBSTRING* vr$162 = fb_StrConcat( &TMP$920$3, (void*)vr$159, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$921$3, 0, 24ll );
			FBSTRING* vr$165 = fb_StrConcat( &TMP$921$3, (void*)vr$162, -1ll, (void*)&AUX8$1, -1ll );
			fb_StrAssign( (void*)&TMP$922$3, -1ll, (void*)vr$165, -1ll, 0 );
			OUTP( (uint8*)*(uint8**)&TMP$922$3 );
			fb_StrDelete( (FBSTRING*)&TMP$922$3 );
			HMOV( (uint8*)*(uint8**)&DST$1, (uint8*)*(uint8**)&AUX$1 );
		}
		label$1546:;
		if( ISFREE$2 != 0ll ) goto label$1549;
		{
			HPOP( (uint8*)*(uint8**)&AUX$1 );
		}
		label$1549:;
		label$1548:;
	}
	label$1532:;
	fb_StrDelete( (FBSTRING*)&AUX8$1 );
	fb_StrDelete( (FBSTRING*)&AUX$1 );
	fb_StrDelete( (FBSTRING*)&SRC2$1 );
	fb_StrDelete( (FBSTRING*)&SRC1$1 );
	fb_StrDelete( (FBSTRING*)&DST$1 );
	label$1531:;
}

static void _EMITSTORL2B( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	label$1550:;
	_EMITLOADL2B( DVREG$1, SVREG$1 );
	label$1551:;
}

static int64 _INIT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1584:;
	HINITREGTB(  );
	__builtin_memcpy( (struct $12EMITDATATYPE*)((uint8*)DTYPETB$ + 168ll), (struct $12EMITDATATYPE*)((uint8*)DTYPETB$ + (*(int64*)((uint8*)&ENV$ + 496ll) * 24ll)), 24 );
	*(int64*)((uint8*)&EMIT$ + 280ll) = -1ll;
	*(int64*)((uint8*)&EMIT$ + 288ll) = -1ll;
	uint64 IROPTIONS$1;
	IROPTIONS$1 = 66304ull;
	if( *(int64*)((uint8*)&ENV$ + 232ll) != 1ll ) goto label$1587;
	{
		IROPTIONS$1 = IROPTIONS$1 | 1ull;
	}
	label$1587:;
	label$1586:;
	*($6IR_OPT*)((uint8*)&IR$ + 552ll) = ($6IR_OPT)(*(uint64*)((uint8*)&IR$ + 552ll) | IROPTIONS$1);
	EDBGINIT(  );
	fb$result$1 = -1ll;
	label$1585:;
	return fb$result$1;
}

static void _END( void )
{
	label$1588:;
	*(int64*)((uint8*)&EMIT$ + 280ll) = -1ll;
	*(int64*)((uint8*)&EMIT$ + 288ll) = -1ll;
	HENDREGTB(  );
	label$1589:;
}

static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1590:;
	{
		if( OPT$1 != 1ll ) goto label$1593;
		label$1594:;
		{
			fb$result$1 = 16ll;
			goto label$1591;
		}
		goto label$1592;
		label$1593:;
		{
			ERRREPORTEX( 21ll, (uint8*)"_GETOPTIONVALUE", 0ll, 1ll, (uint8*)0ull );
		}
		label$1595:;
		label$1592:;
	}
	label$1591:;
	return fb$result$1;
}

static int64 _OPEN( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1596:;
	int64 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 856ll) );
	if( vr$2 == 0ll ) goto label$1599;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$1599:;
	label$1598:;
	int32 vr$5 = fb_FileFree(  );
	*(int64*)((uint8*)&ENV$ + 848ll) = (int64)vr$5;
	FBSTRING* vr$9 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
	int32 vr$10 = fb_FileOpen( (FBSTRING*)vr$9, 0u, 3u, 0u, (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0 );
	if( (int64)vr$10 == 0ll ) goto label$1601;
	{
		fb$result$1 = 0ll;
		goto label$1597;
	}
	label$1601:;
	label$1600:;
	HWRITEHEADER(  );
	fb$result$1 = -1ll;
	label$1597:;
	return fb$result$1;
}

static void _CLOSE( void )
{
	label$1602:;
	EDBGINCLUDE( (uint8*)0ull );
	SYMBFOREACHGLOBAL( 1ll, (tmp$41)&HDECLVARIABLE );
	if( (*(int64*)((uint8*)&ENV$ + 416ll) & (*(int64*)((uint8*)&ENV$ + 520ll) & 4ll)) == 0ll ) goto label$1605;
	{
		SYMBFOREACHGLOBAL( 3ll, (tmp$41)&HEMITEXPORT );
	}
	label$1605:;
	label$1604:;
	HWRITECTOR( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198048ll), -1ll );
	HWRITECTOR( *(struct $20FB_GLOBCTORLIST_ITEM**)((uint8*)&SYMB$ + 198128ll), 0ll );
	EDBGEMITFOOTER(  );
	int32 vr$3 = fb_FileClose( (int32)*(int64*)((uint8*)&ENV$ + 848ll) );
	if( (int64)vr$3 == 0ll ) goto label$1607;
	{
	}
	label$1607:;
	label$1606:;
	*(int64*)((uint8*)&ENV$ + 848ll) = 0ll;
	label$1603:;
}

static uint8* _PROCGETFRAMEREGNAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1608:;
	static uint8 SNAME$1[4] = "ebp";
	fb$result$1 = (uint8*)SNAME$1;
	label$1609:;
	return fb$result$1;
}

static int64 _ISREGPRESERVED( int64 DCLASS$1, int64 REG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1610:;
	if( DCLASS$1 != 1ll ) goto label$1613;
	{
		fb$result$1 = 0ll;
		goto label$1611;
	}
	label$1613:;
	label$1612:;
	{
		uint64 TMP$949$2;
		TMP$949$2 = (uint64)REG$1;
		goto label$1615;
		label$1616:;
		{
			fb$result$1 = 0ll;
			goto label$1611;
		}
		goto label$1614;
		label$1617:;
		{
			fb$result$1 = -1ll;
			goto label$1611;
		}
		goto label$1614;
		label$1615:;
		static const void* tmp$993[6ll] = {
			&&label$1616,
			&&label$1617,
			&&label$1617,
			&&label$1616,
			&&label$1617,
			&&label$1616,
		};
		if( TMP$949$2 > 5ull ) goto label$1617;
		goto *tmp$993[TMP$949$2 - 0ull];
		label$1614:;
	}
	label$1611:;
	return fb$result$1;
}

static void _GETRESULTREG( int64 DTYPE$1, int64 DCLASS$1, int64* R1$1, int64* R2$1 )
{
	label$1618:;
	if( DCLASS$1 != 0ll ) goto label$1621;
	{
		int64 TMP$950$2;
		int64 TMP$951$2;
		*R1$1 = 5ll;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$1622;
		TMP$950$2 = 24ll;
		goto label$1799;
		label$1622:;
		TMP$950$2 = DTYPE$1 & 31ll;
		label$1799:;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$1623;
		TMP$951$2 = 24ll;
		goto label$1800;
		label$1623:;
		TMP$951$2 = DTYPE$1 & 31ll;
		label$1800:;
		if( ((int64)-(TMP$950$2 == 13ll) | (int64)-(TMP$951$2 == 14ll)) == 0ll ) goto label$1625;
		{
			*R2$1 = 0ll;
		}
		goto label$1624;
		label$1625:;
		{
			*R2$1 = -1ll;
		}
		label$1624:;
	}
	goto label$1620;
	label$1621:;
	{
		*R1$1 = 0ll;
		*R2$1 = -1ll;
	}
	label$1620:;
	label$1619:;
}

static int64 _GETFREEPRESERVEDREG( int64 DCLASS$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1626:;
	fb$result$1 = -1ll;
	if( DCLASS$1 != 1ll ) goto label$1629;
	{
		goto label$1627;
	}
	label$1629:;
	label$1628:;
	int64 vr$3 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) + 32ll))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll), 4ll );
	if( vr$3 == 0ll ) goto label$1631;
	{
		fb$result$1 = 4ll;
	}
	goto label$1630;
	label$1631:;
	int64 vr$9 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) + 32ll))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll), 2ll );
	if( vr$9 == 0ll ) goto label$1632;
	{
		int64 TMP$952$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$1633;
		TMP$952$2 = 24ll;
		goto label$1801;
		label$1633:;
		TMP$952$2 = DTYPE$1 & 31ll;
		label$1801:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$952$2 * 56ll)) + 8ll) == 1ll ) goto label$1635;
		{
			fb$result$1 = 2ll;
		}
		label$1635:;
		label$1634:;
	}
	goto label$1630;
	label$1632:;
	int64 vr$18 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll) + 32ll))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (3ll & 63ll))) + 16ll), 1ll );
	if( vr$18 == 0ll ) goto label$1636;
	{
		int64 TMP$953$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$1637;
		TMP$953$2 = 24ll;
		goto label$1802;
		label$1637:;
		TMP$953$2 = DTYPE$1 & 31ll;
		label$1802:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$953$2 * 56ll)) + 8ll) == 1ll ) goto label$1639;
		{
			fb$result$1 = 1ll;
		}
		label$1639:;
		label$1638:;
	}
	label$1636:;
	label$1630:;
	label$1627:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$1640:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 16ll) = 0ll;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 24ll) = 0ll;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll) = 8ll;
	EDBGPROCBEGIN( PROC$1 );
	label$1641:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$1642:;
	EDBGPROCEND( PROC$1 );
	label$1643:;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* S$1 )
{
	label$1644:;
	label$1646:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$1647;
	{
		{
			$12FB_SYMBCLASS TMP$954$3;
			TMP$954$3 = *($12FB_SYMBCLASS*)S$1;
			if( TMP$954$3 != 15ll ) goto label$1649;
			label$1650:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 112ll) );
			}
			goto label$1648;
			label$1649:;
			if( TMP$954$3 != 1ll ) goto label$1651;
			label$1652:;
			{
				if( (*(int64*)((uint8*)S$1 + 8ll) & 2ll) == 0ll ) goto label$1654;
				{
					HDECLVARIABLE( S$1 );
				}
				label$1654:;
				label$1653:;
			}
			label$1651:;
			label$1648:;
		}
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
	}
	goto label$1646;
	label$1647:;
	label$1645:;
}

static void _PROCALLOCLOCAL( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$1655:;
	int64 OFS$1;
	int64 LGT$1;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) == 0ll ) goto label$1658;
	{
		goto label$1656;
	}
	label$1658:;
	label$1657:;
	int64 vr$2 = SYMBGETREALSIZE( SYM$1 );
	LGT$1 = vr$2;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 16ll) = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 16ll) + ((LGT$1 + 3ll) & -4ll);
	OFS$1 = -(*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 16ll));
	if( -OFS$1 <= *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 24ll) ) goto label$1660;
	{
		*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 24ll) = -OFS$1;
	}
	label$1660:;
	label$1659:;
	*(int64*)((uint8*)SYM$1 + 88ll) = OFS$1;
	label$1656:;
}

static void _PROCALLOCARG( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* SYM$1 )
{
	label$1661:;
	int64 LGT$1;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 32768ll) == 0ll ) goto label$1664;
	{
		LGT$1 = *(int64*)((uint8*)SYM$1 + 80ll);
	}
	goto label$1663;
	label$1664:;
	{
		LGT$1 = *(int64*)((uint8*)&ENV$ + 544ll);
	}
	label$1663:;
	*(int64*)((uint8*)SYM$1 + 88ll) = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll);
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll) = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 8ll) + ((LGT$1 + 3ll) & -4ll);
	label$1662:;
}

static void _PROCHEADER( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	label$1665:;
	EMITRESET(  );
	EDBGPROCEMITBEGIN( PROC$1 );
	label$1666:;
}

static void _PROCFOOTER( struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	label$1667:;
	int64 OLDPOS$1;
	int64 ISPUBLIC$1;
	ISPUBLIC$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 8ll) & 32ll) != 0ll);
	_SETSECTION( 3ll, 0ll );
	EDBGEMITPROCHEADER( PROC$1 );
	HALIGN( 16ll );
	if( ISPUBLIC$1 == 0ll ) goto label$1670;
	{
		uint8* vr$6 = SYMBGETMANGLEDNAME( PROC$1 );
		HPUBLIC( vr$6, (int64)-((*(int64*)((uint8*)PROC$1 + 8ll) & 256ll) != 0ll) );
	}
	label$1670:;
	label$1669:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( PROC$1 );
	HLABEL( vr$7 );
	if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$1672;
	{
		FBSTRING TMP$957$2;
		FBSTRING TMP$958$2;
		FBSTRING TMP$959$2;
		FBSTRING TMP$960$2;
		__builtin_memset( &TMP$960$2, 0, 24ll );
		uint8* vr$9 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$957$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$957$2, (void*)".type ", 7ll, (void*)vr$9, 0ll );
		__builtin_memset( &TMP$958$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$958$2, (void*)vr$12, -1ll, (void*)", @function", 12ll );
		__builtin_memset( &TMP$959$2, 0, 24ll );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$959$2, (void*)vr$15, -1ll, (void*)"\x0A", 2ll );
		fb_StrAssign( (void*)&TMP$960$2, -1ll, (void*)vr$18, -1ll, 0 );
		OUTEX( (uint8*)*(uint8**)&TMP$960$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$960$2 );
	}
	label$1672:;
	label$1671:;
	HCREATEFRAME( PROC$1 );
	EDBGEMITLINEFLUSH( PROC$1, *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll), PROC$1 );
	EMITFLUSH(  );
	HDESTROYFRAME( PROC$1, BYTESTOPOP$1 );
	EDBGEMITLINEFLUSH( PROC$1, *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 40ll), EXITLABEL$1 );
	EDBGEMITPROCFOOTER( PROC$1, INITLABEL$1, EXITLABEL$1 );
	label$1668:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$1673:;
	EDBGSCOPEBEGIN( S$1 );
	label$1674:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$1675:;
	EDBGSCOPEEND( S$1 );
	label$1676:;
}

static void _SETSECTION( int64 SECTION$1, int64 PRIORITY$1 )
{
	label$1677:;
	uint8* SEC$1;
	uint8* vr$0 = _GETSECTIONSTRING( SECTION$1, PRIORITY$1 );
	SEC$1 = vr$0;
	if( SEC$1 != (uint8*)0ull ) goto label$1680;
	{
		goto label$1678;
	}
	label$1680:;
	label$1679:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)SEC$1, 0ll, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	OUTEX( (uint8*)*(uint8**)&OSTR$1, 0ll );
	label$1678:;
}

static uint8* _GETTYPESTRING( int64 DTYPE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1681:;
	{
		int64 TMP$961$2;
		uint64 TMP$962$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$1683;
		TMP$961$2 = 24ll;
		goto label$1803;
		label$1683:;
		TMP$961$2 = DTYPE$1 & 31ll;
		label$1803:;
		TMP$962$2 = (uint64)TMP$961$2;
		goto label$1685;
		label$1686:;
		{
			fb$result$1 = (uint8*)".byte";
		}
		goto label$1684;
		label$1687:;
		{
			fb$result$1 = (uint8*)".short";
		}
		goto label$1684;
		label$1688:;
		{
			fb$result$1 = (uint8*)".int";
		}
		goto label$1684;
		label$1689:;
		{
			fb$result$1 = (uint8*)".long";
		}
		goto label$1684;
		label$1690:;
		{
			fb$result$1 = (uint8*)".quad";
		}
		goto label$1684;
		label$1691:;
		{
			fb$result$1 = (uint8*)".ascii";
		}
		goto label$1684;
		label$1692:;
		{
			fb$result$1 = (uint8*)".INVALID";
		}
		goto label$1684;
		label$1693:;
		{
			fb$result$1 = (uint8*)".long";
		}
		goto label$1684;
		label$1694:;
		{
			fb$result$1 = (uint8*)".INVALID";
		}
		goto label$1684;
		label$1685:;
		static const void* tmp$994[24ll] = {
			&&label$1686,
			&&label$1686,
			&&label$1686,
			&&label$1691,
			&&label$1687,
			&&label$1687,
			&&label$1691,
			&&label$1688,
			&&label$1688,
			&&label$1688,
			&&label$1689,
			&&label$1689,
			&&label$1690,
			&&label$1690,
			&&label$1689,
			&&label$1690,
			&&label$1692,
			&&label$1691,
			&&label$1694,
			&&label$1692,
			&&label$1694,
			&&label$1694,
			&&label$1694,
			&&label$1693,
		};
		if( (TMP$962$2 - 1ull) > 23ull ) goto label$1694;
		goto *tmp$994[TMP$962$2 - 1ull];
		label$1684:;
	}
	label$1682:;
	return fb$result$1;
}

static uint8* _GETSECTIONSTRING( int64 SECTION$1, int64 PRIORITY$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$1695:;
	static FBSTRING OSTR$1;
	if( ((int64)-(SECTION$1 == *(int64*)((uint8*)&EMIT$ + 280ll)) & (int64)-(PRIORITY$1 == *(int64*)((uint8*)&EMIT$ + 288ll))) == 0ll ) goto label$1698;
	{
		fb$result$1 = (uint8*)0ull;
		goto label$1696;
	}
	label$1698:;
	label$1697:;
	fb_StrAssign( (void*)&OSTR$1, -1ll, (void*)"\x0A", 2ll, 0 );
	int64 vr$4 = FBGETOPTION( 3ll );
	if( vr$4 == 9ll ) goto label$1700;
	{
		fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)".section ", 10ll, 0 );
	}
	label$1700:;
	label$1699:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)".", 2ll, 0 );
	{
		uint64 TMP$971$2;
		TMP$971$2 = (uint64)SECTION$1;
		goto label$1702;
		label$1703:;
		{
			{
				uint64 TMP$972$4;
				int64 vr$5 = FBGETOPTION( 3ll );
				TMP$972$4 = (uint64)vr$5;
				goto label$1705;
				label$1706:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"rdata", 6ll, 0 );
				}
				goto label$1704;
				label$1707:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"const", 6ll, 0 );
				}
				goto label$1704;
				label$1708:;
				{
					fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"rodata", 7ll, 0 );
				}
				goto label$1704;
				label$1705:;
				static const void* tmp$995[10ll] = {
					&&label$1706,
					&&label$1706,
					&&label$1708,
					&&label$1706,
					&&label$1706,
					&&label$1708,
					&&label$1708,
					&&label$1708,
					&&label$1708,
					&&label$1707,
				};
				if( TMP$972$4 > 9ull ) goto label$1708;
				goto *tmp$995[TMP$972$4 - 0ull];
				label$1704:;
			}
		}
		goto label$1701;
		label$1709:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"data", 5ll, 0 );
		}
		goto label$1701;
		label$1710:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"bss", 4ll, 0 );
		}
		goto label$1701;
		label$1711:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"text", 5ll, 0 );
		}
		goto label$1701;
		label$1712:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"drectve", 8ll, 0 );
		}
		goto label$1701;
		label$1713:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"fbctinf", 8ll, 0 );
		}
		goto label$1701;
		label$1714:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"ctors", 6ll, 0 );
			if( PRIORITY$1 <= 0ll ) goto label$1716;
			{
				FBSTRING TMP$982$4;
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)".", 2ll, 0 );
				FBSTRING* vr$7 = fb_LongintToStr( 65535ll - PRIORITY$1 );
				__builtin_memset( &TMP$982$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$982$4, (void*)"00000", 6ll, (void*)vr$7, -1ll );
				FBSTRING* vr$11 = fb_RIGHT( (FBSTRING*)vr$10, 5ll );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$11, -1ll, 0 );
			}
			label$1716:;
			label$1715:;
			if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$1718;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", \x22" "aw\x22, @progbits", 18ll, 0 );
			}
			label$1718:;
			label$1717:;
		}
		goto label$1701;
		label$1719:;
		{
			fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)"dtors", 6ll, 0 );
			if( PRIORITY$1 <= 0ll ) goto label$1721;
			{
				FBSTRING TMP$990$4;
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)".", 2ll, 0 );
				FBSTRING* vr$13 = fb_LongintToStr( 65535ll - PRIORITY$1 );
				__builtin_memset( &TMP$990$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$990$4, (void*)"00000", 6ll, (void*)vr$13, -1ll );
				FBSTRING* vr$17 = fb_RIGHT( (FBSTRING*)vr$16, 5ll );
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)vr$17, -1ll, 0 );
			}
			label$1721:;
			label$1720:;
			if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$1723;
			{
				fb_StrConcatAssign( (void*)&OSTR$1, -1ll, (void*)", \x22" "aw\x22, @progbits", 18ll, 0 );
			}
			label$1723:;
			label$1722:;
		}
		goto label$1701;
		label$1702:;
		static const void* tmp$996[8ll] = {
			&&label$1703,
			&&label$1709,
			&&label$1710,
			&&label$1711,
			&&label$1712,
			&&label$1714,
			&&label$1719,
			&&label$1713,
		};
		if( TMP$971$2 > 7ull ) goto label$1701;
		goto *tmp$996[TMP$971$2 - 0ull];
		label$1701:;
	}
	fb$result$1 = (uint8*)*(uint8**)&OSTR$1;
	*(int64*)((uint8*)&EMIT$ + 280ll) = SECTION$1;
	*(int64*)((uint8*)&EMIT$ + 288ll) = PRIORITY$1;
	label$1696:;
	return fb$result$1;
}
