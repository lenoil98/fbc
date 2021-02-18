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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int64 $13AST_NODECLASS;
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
struct $7ASTNODE;
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
typedef FBSTRING* (*tmp$29)( void*, int64* );
typedef uint16* (*tmp$30)( void*, int64* );
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
typedef int64 $15AST_LINK_RETURN;
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
typedef struct $6IRVREG* (*tmp$84)( struct $7ASTNODE* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__ast( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTPROCLISTINIT( void );
void ASTPROCLISTEND( void );
void ASTCALLINIT( void );
void ASTCALLEND( void );
void ASTMISCINIT( void );
void ASTMISCEND( void );
void ASTDATASTMTINIT( void );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
void ASTCLONECALL( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTDELCALL( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* );
int64 ASTCANTAKEADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTDTORLISTADDREF( struct $8FBSYMBOL* );
void ASTDTORLISTREMOVEREF( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $6IRVREG* ASTLOADNOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADASSIGN( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCONV( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADUOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCONST( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADVAR( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADIDX( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDEREF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCALL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADCALLCTOR( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADADDROF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLOAD( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBRANCH( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADIIF( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADOFFSET( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLINK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADFIELD( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSTACK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLABEL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLIT( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADASM( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADJMPTB( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADLOOP( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDBG( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADMEM( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADBOUNDCHK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADPTRCHK( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSCOPEBEGIN( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADSCOPEEND( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADDECL( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADNIDXARRAY( struct $7ASTNODE* );
struct $6IRVREG* ASTLOADMACRO( struct $7ASTNODE* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
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
extern struct $10AST_OPINFO AST_OPTB$[121];
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
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
static tmp$84 AST_LOADCALLBACKS$[45] = { (tmp$84)&ASTLOADNOP, (tmp$84)&ASTLOADLOAD, (tmp$84)&ASTLOADASSIGN, (tmp$84)&ASTLOADBOP, (tmp$84)&ASTLOADUOP, (tmp$84)&ASTLOADCONV, (tmp$84)&ASTLOADADDROF, (tmp$84)&ASTLOADBRANCH, (tmp$84)&ASTLOADJMPTB, (tmp$84)&ASTLOADCALL, (tmp$84)&ASTLOADCALLCTOR, (tmp$84)&ASTLOADSTACK, (tmp$84)&ASTLOADMEM, (tmp$84)&ASTLOADLOOP, (tmp$84)0ull, (tmp$84)&ASTLOADLINK, (tmp$84)&ASTLOADCONST, (tmp$84)&ASTLOADVAR, (tmp$84)&ASTLOADIDX, (tmp$84)&ASTLOADFIELD, (tmp$84)&ASTLOADDEREF, (tmp$84)&ASTLOADLABEL, (tmp$84)0ull, (tmp$84)&ASTLOADOFFSET, (tmp$84)&ASTLOADDECL, (tmp$84)&ASTLOADNIDXARRAY, (tmp$84)&ASTLOADIIF, (tmp$84)&ASTLOADLIT, (tmp$84)&ASTLOADASM, (tmp$84)0ull, (tmp$84)&ASTLOADDBG, (tmp$84)&ASTLOADBOUNDCHK, (tmp$84)&ASTLOADPTRCHK, (tmp$84)&ASTLOADSCOPEBEGIN, (tmp$84)&ASTLOADSCOPEEND, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)0ull, (tmp$84)&ASTLOADMACRO };
struct $6ASTCTX AST$;
struct $10AST_OPINFO AST_OPTB$[121] = { { 2ll, 5ll, (uint8*)"let" }, { 3ll, 5ll, (uint8*)"+=", 28ll }, { 3ll, 5ll, (uint8*)"-=", 29ll }, { 3ll, 5ll, (uint8*)"*=", 30ll }, { 3ll, 5ll, (uint8*)"/=", 31ll }, { 3ll, 5ll, (uint8*)"/=", 32ll }, { 3ll, 5ll, (uint8*)"mod=", 33ll }, { 3ll, 5ll, (uint8*)"and=", 34ll }, { 3ll, 5ll, (uint8*)"or=", 35ll }, { 3ll, 5ll, (uint8*)"andalso=", 36ll }, { 3ll, 5ll, (uint8*)"orelse=", 37ll }, { 3ll, 5ll, (uint8*)"xor=", 38ll }, { 3ll, 5ll, (uint8*)"eqv=", 39ll }, { 3ll, 5ll, (uint8*)"imp=", 40ll }, { 3ll, 5ll, (uint8*)"shl=", 41ll }, { 3ll, 5ll, (uint8*)"shr=", 42ll }, { 3ll, 5ll, (uint8*)"pow=", 43ll }, { 3ll, 5ll, (uint8*)"&=", 44ll }, { 12ll, 1ll, (uint8*)"new" }, { 12ll, 1ll, (uint8*)"new[]" }, { 12ll, 5ll, (uint8*)"delete" }, { 12ll, 5ll, (uint8*)"delete[]" }, { 6ll, 1ll, (uint8*)"@" }, { 3ll, 1ll, (uint8*)"[]" }, { 14ll, 5ll, (uint8*)"for" }, { 14ll, 5ll, (uint8*)"step" }, { 14ll, 1ll, (uint8*)"next" }, { 5ll, 1ll, (uint8*)"cast" }, { 3ll, 2ll, (uint8*)"+", 1ll }, { 3ll, 0ll, (uint8*)"-", 2ll }, { 3ll, 2ll, (uint8*)"*", 3ll }, { 3ll, 0ll, (uint8*)"/", 4ll }, { 3ll, 0ll, (uint8*)"/", 5ll }, { 3ll, 0ll, (uint8*)"mod", 6ll }, { 3ll, 2ll, (uint8*)"and", 7ll }, { 3ll, 2ll, (uint8*)"or", 8ll }, { 3ll, 2ll, (uint8*)"andalso", 9ll }, { 3ll, 2ll, (uint8*)"orelse", 10ll }, { 3ll, 2ll, (uint8*)"xor", 11ll }, { 3ll, 0ll, (uint8*)"eqv", 12ll }, { 3ll, 0ll, (uint8*)"imp", 13ll }, { 3ll, 0ll, (uint8*)"shl", 14ll }, { 3ll, 0ll, (uint8*)"shr", 15ll }, { 3ll, 0ll, (uint8*)"pow", 16ll }, { 3ll, 0ll, (uint8*)"&", 17ll }, { 14ll, 10ll, (uint8*)"=" }, { 14ll, 8ll, (uint8*)">" }, { 14ll, 8ll, (uint8*)"<" }, { 14ll, 10ll, (uint8*)"<>" }, { 14ll, 8ll, (uint8*)">=" }, { 14ll, 8ll, (uint8*)"<=" }, { 14ll, 0ll, (uint8*)"is" }, { 4ll, 0ll, (uint8*)"not" }, { 4ll, 0ll, (uint8*)"+" }, { 4ll, 0ll, (uint8*)"-" }, { 4ll, 0ll, (uint8*)"HADD" }, { 4ll, 0ll, (uint8*)"abs" }, { 4ll, 0ll, (uint8*)"sgn" }, { 4ll, 0ll, (uint8*)"sin" }, { 4ll, 0ll, (uint8*)"asin" }, { 4ll, 0ll, (uint8*)"cos" }, { 4ll, 0ll, (uint8*)"acos" }, { 4ll, 0ll, (uint8*)"tan" }, { 4ll, 0ll, (uint8*)"atan" }, { 3ll, 0ll, (uint8*)"atn2" }, { 4ll, 0ll, (uint8*)"sqr" }, { 4ll, 0ll, (uint8*)"rsqrt" }, { 4ll, 0ll, (uint8*)"rcp" }, { 4ll, 0ll, (uint8*)"log" }, { 4ll, 0ll, (uint8*)"exp" }, { 4ll, 0ll, (uint8*)"int" }, { 4ll, 0ll, (uint8*)"fix" }, { 4ll, 0ll, (uint8*)"frac" }, { 4ll, 0ll, (uint8*)"len" }, { 4ll, 0ll, (uint8*)"convd2s" }, { 4ll, 0ll, (uint8*)"swzrep" }, { 6ll, 0ll, (uint8*)"*" }, { 6ll, 0ll, (uint8*)"->" }, { 12ll, 0ll, (uint8*)"new", 18ll }, { 12ll, 0ll, (uint8*)"new[]", 19ll }, { 12ll, 0ll, (uint8*)"delete", 20ll }, { 12ll, 0ll, (uint8*)"delete[]", 21ll }, { 5ll, 0ll, (uint8*)"cint" }, { 5ll, 0ll, (uint8*)"cflt" }, { 5ll, 0ll, (uint8*)"cbool" }, { 1ll, 0ll, (uint8*)"load" }, { 1ll, 0ll, (uint8*)"lres" }, { 2ll, 0ll, (uint8*)"spill" }, { 11ll, 0ll, (uint8*)"push" }, { 11ll, 0ll, (uint8*)"pop" }, { 11ll, 0ll, (uint8*)"pudt" }, { 11ll, 0ll, (uint8*)"stka" }, { 7ll, 0ll, (uint8*)"jeq" }, { 7ll, 0ll, (uint8*)"jgt" }, { 7ll, 0ll, (uint8*)"jlt" }, { 7ll, 0ll, (uint8*)"jne" }, { 7ll, 0ll, (uint8*)"jge" }, { 7ll, 0ll, (uint8*)"jle" }, { 7ll, 0ll, (uint8*)"jmp" }, { 7ll, 0ll, (uint8*)"call" }, { 7ll, 0ll, (uint8*)"lbl" }, { 7ll, 0ll, (uint8*)"ret" }, { 9ll, 0ll, (uint8*)"calf" }, { 9ll, 0ll, (uint8*)"calp" }, { 9ll, 0ll, (uint8*)"jmpp" }, { 12ll, 0ll, (uint8*)"mmov" }, { 12ll, 0ll, (uint8*)"mswp" }, { 12ll, 0ll, (uint8*)"mclr" }, { 12ll, 0ll, (uint8*)"stkc" }, { 44ll, 0ll, (uint8*)"va_start" }, { 44ll, 0ll, (uint8*)"va_end" }, { 44ll, 0ll, (uint8*)"va_copy" }, { 44ll, 0ll, (uint8*)"va_arg" }, { 30ll, 0ll, (uint8*)"lini" }, { 30ll, 0ll, (uint8*)"lend" }, { 30ll, 0ll, (uint8*)"sini" }, { 30ll, 0ll, (uint8*)"send" }, { 27ll, 0ll, (uint8*)"rem" }, { 27ll, 0ll, (uint8*)"asm" } };

void ASTINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)&AST$, 8192ll, 144ll, 6ll );
	*(int64*)((uint8*)&AST$ + 272ll) = -1ll;
	*(int64*)((uint8*)&AST$ + 280ll) = 0ll;
	*(int64*)((uint8*)&AST$ + 288ll) = 0ll;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = (struct $7ASTNODE*)0ull;
	*(int64*)((uint8*)&AST$ + 464ll) = 0ll;
	ASTCALLINIT(  );
	ASTPROCLISTINIT(  );
	ASTDATASTMTINIT(  );
	ASTMISCINIT(  );
	LISTINIT( (struct $5TLIST*)((uint8*)&AST$ + 400ll), 16ll, 24ll, 6ll );
	label$11:;
}

void ASTEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&AST$ + 400ll) );
	ASTMISCEND(  );
	ASTPROCLISTEND(  );
	ASTCALLEND(  );
	LISTEND( (struct $5TLIST*)&AST$ );
	label$13:;
}

struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* C$1;
	struct $7ASTNODE* T$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$17;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$15;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( -1ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	C$1 = vr$1;
	__builtin_memcpy( C$1, N$1, 144 );
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$19;
	{
		struct $7ASTNODE* vr$3 = ASTCLONETREE( T$1 );
		*(struct $7ASTNODE**)((uint8*)C$1 + 112ll) = vr$3;
	}
	label$19:;
	label$18:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$21;
	{
		struct $7ASTNODE* vr$6 = ASTCLONETREE( T$1 );
		*(struct $7ASTNODE**)((uint8*)C$1 + 120ll) = vr$6;
	}
	label$21:;
	label$20:;
	{
		$13AST_NODECLASS TMP$196$2;
		TMP$196$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$196$2 != 17ll ) goto label$23;
		label$24:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)C$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$26;
			{
				if( ((int64)-(*(int64*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 24ll) == 1ll) & (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 24ll) + 8ll) & 4096ll) != 0ll)) == 0ll ) goto label$28;
				{
					ASTDTORLISTADDREF( *(struct $8FBSYMBOL**)((uint8*)C$1 + 24ll) );
				}
				label$28:;
				label$27:;
			}
			label$26:;
			label$25:;
		}
		goto label$22;
		label$23:;
		if( TMP$196$2 != 9ll ) goto label$29;
		label$30:;
		{
			ASTCLONECALL( N$1, C$1 );
		}
		goto label$22;
		label$29:;
		if( TMP$196$2 != 26ll ) goto label$31;
		label$32:;
		{
			struct $8FBSYMBOL* vr$19 = SYMBADDLABEL( (uint8*)0ull, 4ll );
			ASTREPLACESYMBOLONTREE( C$1, *(struct $8FBSYMBOL**)((uint8*)C$1 + 40ll), vr$19 );
		}
		goto label$22;
		label$31:;
		if( TMP$196$2 != 13ll ) goto label$33;
		label$34:;
		{
			struct $8FBSYMBOL* vr$21 = SYMBADDLABEL( (uint8*)0ull, 4ll );
			ASTREPLACESYMBOLONTREE( C$1, *(struct $8FBSYMBOL**)((uint8*)C$1 + 56ll), vr$21 );
		}
		goto label$22;
		label$33:;
		if( TMP$196$2 != 36ll ) goto label$35;
		label$36:;
		{
			*(int64*)((uint8*)&AST$ + 280ll) = *(int64*)((uint8*)&AST$ + 280ll) + 1ll;
			*(struct $8FBSYMBOL**)((uint8*)C$1 + 56ll) = (struct $8FBSYMBOL*)0ull;
		}
		goto label$22;
		label$35:;
		if( TMP$196$2 != 19ll ) goto label$37;
		label$38:;
		{
			if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)C$1 + 24ll) + 192ll) <= 0ll ) goto label$40;
			{
				*(int64*)((uint8*)&AST$ + 288ll) = *(int64*)((uint8*)&AST$ + 288ll) + 1ll;
			}
			label$40:;
			label$39:;
		}
		label$37:;
		label$22:;
	}
	fb$result$1 = C$1;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* ASTGETEFFECTIVENODE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$41:;
	if( *(int64*)N$1 != 15ll ) goto label$44;
	{
		{
			int64 TMP$197$3;
			TMP$197$3 = *(int64*)((uint8*)N$1 + 40ll);
			if( TMP$197$3 != 1ll ) goto label$46;
			label$47:;
			{
				struct $7ASTNODE* vr$4 = ASTGETEFFECTIVENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
				fb$result$1 = vr$4;
			}
			goto label$45;
			label$46:;
			if( TMP$197$3 != 2ll ) goto label$48;
			label$49:;
			{
				struct $7ASTNODE* vr$6 = ASTGETEFFECTIVENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
				fb$result$1 = vr$6;
			}
			goto label$45;
			label$48:;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
			}
			label$50:;
			label$45:;
		}
	}
	goto label$43;
	label$44:;
	{
		fb$result$1 = N$1;
	}
	label$43:;
	label$42:;
	return fb$result$1;
}

int64 ASTGETEFFECTIVECLASS( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$51:;
	struct $7ASTNODE* vr$1 = ASTGETEFFECTIVENODE( N$1 );
	fb$result$1 = *(int64*)vr$1;
	label$52:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREBUILDWITHOUTEFFECTIVEPART( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$53:;
	if( *(int64*)N$1 != 15ll ) goto label$56;
	{
		struct $7ASTNODE* L$2;
		L$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		struct $7ASTNODE* R$2;
		R$2 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		{
			int64 TMP$198$3;
			TMP$198$3 = *(int64*)((uint8*)N$1 + 40ll);
			if( TMP$198$3 != 1ll ) goto label$58;
			label$59:;
			{
				struct $7ASTNODE* vr$5 = ASTREBUILDWITHOUTEFFECTIVEPART( L$2 );
				L$2 = vr$5;
			}
			goto label$57;
			label$58:;
			if( TMP$198$3 != 2ll ) goto label$60;
			label$61:;
			{
				struct $7ASTNODE* vr$6 = ASTREBUILDWITHOUTEFFECTIVEPART( R$2 );
				R$2 = vr$6;
			}
			goto label$57;
			label$60:;
			{
			}
			label$62:;
			label$57:;
		}
		struct $7ASTNODE* vr$8 = ASTNEWLINK( L$2, R$2, *($15AST_LINK_RETURN*)((uint8*)N$1 + 40ll) );
		fb$result$1 = vr$8;
		ASTDELNODE( N$1 );
	}
	goto label$55;
	label$56:;
	{
		ASTDELTREE( N$1 );
		fb$result$1 = (struct $7ASTNODE*)0ull;
	}
	label$55:;
	label$54:;
	return fb$result$1;
}

int64 ASTCANTAKEADDROF( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$63:;
	{
		uint64 TMP$199$2;
		TMP$199$2 = *(uint64*)N$1;
		goto label$66;
		label$67:;
		{
			fb$result$1 = -1ll;
		}
		goto label$65;
		label$68:;
		{
			fb$result$1 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 192ll) <= 0ll);
		}
		goto label$65;
		label$69:;
		{
			{
				int64 TMP$200$4;
				TMP$200$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$200$4 != 1ll ) goto label$71;
				label$72:;
				{
					int64 vr$7 = ASTCANTAKEADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
					fb$result$1 = vr$7;
				}
				goto label$70;
				label$71:;
				if( TMP$200$4 != 2ll ) goto label$73;
				label$74:;
				{
					int64 vr$9 = ASTCANTAKEADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
					fb$result$1 = vr$9;
				}
				goto label$70;
				label$73:;
				{
					fb$result$1 = 0ll;
				}
				label$75:;
				label$70:;
			}
		}
		goto label$65;
		label$76:;
		{
			fb$result$1 = 0ll;
		}
		goto label$65;
		label$66:;
		static const void* tmp$201[27ll] = {
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$69,
			&&label$76,
			&&label$67,
			&&label$67,
			&&label$68,
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$67,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$76,
			&&label$67,
		};
		if( (TMP$199$2 - 10ull) > 26ull ) goto label$76;
		goto *tmp$201[TMP$199$2 - 10ull];
		label$65:;
	}
	label$64:;
	return fb$result$1;
}

struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** EXPR$1 )
{
	int64 TMP$202$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$77:;
	struct $8FBSYMBOL* TEMP$1;
	struct $7ASTNODE* CONTAINER$1;
	if( *(int64*)*EXPR$1 != 19ll ) goto label$79;
	TMP$202$1 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 24ll) + 192ll) > 0ll);
	goto label$88;
	label$79:;
	TMP$202$1 = 0ll;
	label$88:;
	if( TMP$202$1 == 0ll ) goto label$81;
	{
		CONTAINER$1 = *(struct $7ASTNODE**)((uint8*)*EXPR$1 + 112ll);
		TEMP$1 = *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 24ll);
		ASTDELNODE( *EXPR$1 );
		struct $7ASTNODE* vr$13 = ASTMAKEREF( &CONTAINER$1 );
		fb$result$1 = vr$13;
		struct $7ASTNODE* vr$14 = ASTNEWFIELD( CONTAINER$1, TEMP$1 );
		*EXPR$1 = vr$14;
		goto label$78;
	}
	label$81:;
	label$80:;
	if( *(int64*)*EXPR$1 != 9ll ) goto label$83;
	{
		{
			int64 TMP$203$3;
			TMP$203$3 = *(int64*)((uint8*)*EXPR$1 + 8ll) & 511ll;
			if( TMP$203$3 == 17ll ) goto label$86;
			label$87:;
			if( TMP$203$3 != 7ll ) goto label$85;
			label$86:;
			{
				ASTSETTYPE( *EXPR$1, (((*(int64*)((uint8*)*EXPR$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)*EXPR$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)*EXPR$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)*EXPR$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 16ll) );
				struct $7ASTNODE* vr$41 = ASTREMSIDEFX( EXPR$1 );
				fb$result$1 = vr$41;
				struct $7ASTNODE* vr$43 = ASTNEWDEREF( *EXPR$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
				*EXPR$1 = vr$43;
				goto label$78;
			}
			label$85:;
			label$84:;
		}
	}
	label$83:;
	label$82:;
	struct $8FBSYMBOL* vr$64 = SYMBADDTEMPVAR( (((*(int64*)((uint8*)*EXPR$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)*EXPR$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)*EXPR$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)*EXPR$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)*EXPR$1 + 16ll) );
	TEMP$1 = vr$64;
	struct $7ASTNODE* vr$66 = ASTNEWADDROF( *EXPR$1 );
	struct $7ASTNODE* vr$67 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$68 = ASTNEWASSIGN( vr$67, vr$66, 64ll );
	fb$result$1 = vr$68;
	struct $7ASTNODE* vr$69 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$70 = ASTNEWDEREF( vr$69, 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
	*EXPR$1 = vr$70;
	label$78:;
	return fb$result$1;
}

struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$89:;
	struct $8FBSYMBOL* TMP$1;
	struct $7ASTNODE* vr$2 = ASTUPDSTRCONCAT( *N$1 );
	*N$1 = vr$2;
	{
		uint64 TMP$204$2;
		TMP$204$2 = (uint64)(*(int64*)((uint8*)*N$1 + 8ll) & 511ll);
		goto label$92;
		label$93:;
		{
			struct $7ASTNODE* vr$7 = ASTMAKEREF( N$1 );
			fb$result$1 = vr$7;
		}
		goto label$91;
		label$94:;
		{
			struct $8FBSYMBOL* vr$12 = SYMBADDTEMPVAR( *(int64*)((uint8*)*N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)*N$1 + 16ll) );
			TMP$1 = vr$12;
			struct $7ASTNODE* vr$14 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$15 = ASTNEWASSIGN( vr$14, *N$1, 64ll );
			fb$result$1 = vr$15;
			struct $7ASTNODE* vr$16 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			*N$1 = vr$16;
		}
		goto label$91;
		label$92:;
		static const void* tmp$205[17ll] = {
			&&label$93,
			&&label$94,
			&&label$94,
			&&label$93,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$94,
			&&label$93,
			&&label$93,
			&&label$94,
			&&label$93,
		};
		if( (TMP$204$2 - 4ull) > 16ull ) goto label$94;
		goto *tmp$205[TMP$204$2 - 4ull];
		label$91:;
	}
	label$90:;
	return fb$result$1;
}

void ASTDELTREE( struct $7ASTNODE* N$1 )
{
	label$95:;
	struct $7ASTNODE* T$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$98;
	{
		goto label$96;
	}
	label$98:;
	label$97:;
	if( *(int64*)N$1 != 9ll ) goto label$100;
	{
		ASTDELCALL( N$1 );
	}
	label$100:;
	label$99:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$102;
	{
		ASTDELTREE( T$1 );
	}
	label$102:;
	label$101:;
	T$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( T$1 == (struct $7ASTNODE*)0ull ) goto label$104;
	{
		ASTDELTREE( T$1 );
	}
	label$104:;
	label$103:;
	ASTDELNODE( N$1 );
	label$96:;
}

struct $7ASTNODE* ASTNEWNODE( int64 CLASS_$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$105:;
	struct $7ASTNODE* N$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)&AST$ );
	N$1 = (struct $7ASTNODE*)vr$2;
	*($13AST_NODECLASS*)N$1 = CLASS_$1;
	*(int64*)((uint8*)N$1 + 8ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SUBTYPE$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)N$1 + 32ll) = 0ll;
	fb$result$1 = N$1;
	label$106:;
	return fb$result$1;
}

void ASTDELNODE( struct $7ASTNODE* N$1 )
{
	label$107:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$110;
	{
		goto label$108;
	}
	label$110:;
	label$109:;
	if( *(int64*)N$1 != 17ll ) goto label$112;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == (struct $8FBSYMBOL*)0ull ) goto label$114;
		{
			if( ((int64)-(*(int64*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) == 1ll) & (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 8ll) & 4096ll) != 0ll)) == 0ll ) goto label$116;
			{
				ASTDTORLISTREMOVEREF( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) );
			}
			label$116:;
			label$115:;
		}
		label$114:;
		label$113:;
	}
	label$112:;
	label$111:;
	LISTDELNODE( (struct $5TLIST*)&AST$, (void*)N$1 );
	label$108:;
}

int64 ASTGETINVERSELOGOP( int64 OP$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$117:;
	{
		uint64 TMP$206$2;
		TMP$206$2 = (uint64)OP$1;
		goto label$120;
		label$121:;
		{
			OP$1 = 48ll;
		}
		goto label$119;
		label$122:;
		{
			OP$1 = 45ll;
		}
		goto label$119;
		label$123:;
		{
			OP$1 = 50ll;
		}
		goto label$119;
		label$124:;
		{
			OP$1 = 49ll;
		}
		goto label$119;
		label$125:;
		{
			OP$1 = 47ll;
		}
		goto label$119;
		label$126:;
		{
			OP$1 = 46ll;
		}
		goto label$119;
		label$120:;
		static const void* tmp$207[6ll] = {
			&&label$121,
			&&label$123,
			&&label$124,
			&&label$122,
			&&label$125,
			&&label$126,
		};
		if( (TMP$206$2 - 45ull) > 5ull ) goto label$119;
		goto *tmp$207[TMP$206$2 - 45ull];
		label$119:;
	}
	fb$result$1 = OP$1;
	label$118:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOAD( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$127:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$130;
	{
		struct $6IRVREG* vr$1 = (*(tmp$84*)((uint8*)AST_LOADCALLBACKS$ + (*(int64*)N$1 << (3ll & 63ll))))( N$1 );
		fb$result$1 = vr$1;
	}
	label$130:;
	label$129:;
	label$128:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__ast( void )
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
