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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
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
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
typedef int32 $19EMIT_NODECLASS_ENUM;
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
typedef int32 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
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
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$93)( struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$94)( struct $6IRVREG*, int32 );
typedef void (*tmp$95)( struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$96)( struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$97)( struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$98)( struct $8FBSYMBOL*, int32, int32, uint8* );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 16 );
int32 fb_FilePutStr( int32, int32, void*, int32 );
void* calloc( uint32, uint32 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
int32 fb_StrLen( void*, int32 );
static void fb_ctor__emit( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void FLISTINIT( struct $6TFLIST*, int32, int32 );
void* FLISTNEWITEM( struct $6TFLIST* );
void FLISTRESET( struct $6TFLIST* );
void* FLISTGETHEAD( struct $6TFLIST* );
void* FLISTGETNEXT( void* );
int32 EMITGASX86_CTOR( void );
static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE*, struct $9EMIT_NODE* );
static void HPEEPHOLEOPT( void );
static struct $6IRVREG* HNEWVR( struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM, int32 );
static struct $9EMIT_NODE* HNEWBOP( int32, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWUOP( int32, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWREL( int32, struct $6IRVREG*, struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG* );
static struct $9EMIT_NODE* HNEWSTK( int32, struct $6IRVREG*, int32 );
static struct $9EMIT_NODE* HNEWBRANCH( int32, struct $6IRVREG*, struct $8FBSYMBOL*, int32 );
static struct $9EMIT_NODE* HNEWSYMOP( int32, struct $8FBSYMBOL* );
static void HNEWLIT( uint8*, int32 );
static struct $9EMIT_NODE* HNEWMEM( int32, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
static struct $9EMIT_NODE* HNEWDBG( int32, struct $8FBSYMBOL*, int32, int32, uint8* );
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
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$99)( int32, int32, int32*, int32* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$100)( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$101)( int32, int32 );
typedef uint8* (*tmp$102)( int32 );
typedef uint8* (*tmp$103)( int32, int32 );
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
static struct $8FBARRAY1IPvE tmp$104$;
struct $7EMITCTX EMIT$;

int32 EMITINIT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( *(int32*)&EMIT$ == 0 ) goto label$13;
	{
		fb$result$1 = -1;
		goto label$11;
	}
	label$13:;
	label$12:;
	EMITGASX86_CTOR(  );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 16), 2048, 56 );
	FLISTINIT( (struct $6TFLIST*)((uint8*)&EMIT$ + 72), 6144, 72 );
	*(int32*)&EMIT$ = -1;
	*(int32*)((uint8*)&EMIT$ + 4) = 0;
	int32 vr$3 = (*(tmp$38*)((uint8*)&EMIT$ + 148))(  );
	fb$result$1 = vr$3;
	label$11:;
	return fb$result$1;
}

void EMITEND( void )
{
	label$14:;
	if( *(int32*)&EMIT$ != 0 ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	(*(tmp$37*)((uint8*)&EMIT$ + 152))(  );
	*(int32*)&EMIT$ = 0;
	label$15:;
}

void EMITWRITESTR( uint8* S$1, int32 ADDTAB$1 )
{
	label$18:;
	static FBSTRING OSTR$1;
	if( ADDTAB$1 == 0 ) goto label$21;
	{
		FBSTRING TMP$106$2;
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)"\x09", 2, 0 );
		__builtin_memset( &TMP$106$2, 0, 12 );
		FBSTRING* vr$2 = fb_StrConcat( &TMP$106$2, (void*)&OSTR$1, -1, (void*)S$1, 0 );
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	}
	goto label$20;
	label$21:;
	{
		fb_StrAssign( (void*)&OSTR$1, -1, (void*)S$1, 0, 0 );
	}
	label$20:;
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x0A", 2, 0 );
	int32 vr$3 = fb_FilePutStr( *(int32*)((uint8*)&ENV$ + 556), 0, (void*)&OSTR$1, -1 );
	if( vr$3 == 0 ) goto label$23;
	{
	}
	label$23:;
	label$22:;
	label$19:;
}

void EMITRESET( void )
{
	label$24:;
	static int32 C$1;
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	FLISTRESET( (struct $6TFLIST*)((uint8*)&EMIT$ + 72) );
	*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 128) = (struct $9EMIT_NODE*)0u;
	{
		C$1 = 0;
		label$29:;
		{
			*(int32*)((uint8*)((uint8*)&EMIT$ + (C$1 << (2 & 31))) + 132) = 0;
		}
		label$27:;
		C$1 = C$1 + 1;
		label$26:;
		if( C$1 <= 1 ) goto label$29;
		label$28:;
	}
	label$25:;
}

void EMITFLUSH( void )
{
	label$57:;
	struct $9EMIT_NODE* N$1;
	HPEEPHOLEOPT(  );
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$59:;
	if( N$1 == (struct $9EMIT_NODE*)0u ) goto label$60;
	{
		*(struct $9EMIT_NODE**)((uint8*)&EMIT$ + 128) = N$1;
		{
			uint32 TMP$111$3;
			TMP$111$3 = *(uint32*)N$1;
			goto label$62;
			label$63:;
			{
			}
			goto label$61;
			label$64:;
			{
				(*(tmp$44*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $6IRVREG**)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$65:;
			{
				(*(tmp$52*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12) );
			}
			goto label$61;
			label$66:;
			{
				(*(tmp$93*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16), *(struct $6IRVREG**)((uint8*)N$1 + 20), *(struct $6IRVREG**)((uint8*)N$1 + 24) );
			}
			goto label$61;
			label$67:;
			{
				(*(tmp$94*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(int32*)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$68:;
			{
				(*(tmp$95*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20) );
			}
			goto label$61;
			label$69:;
			{
				(*(tmp$41*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) );
			}
			goto label$61;
			label$70:;
			{
				(*(tmp$49*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + 532))( *(uint8**)((uint8*)N$1 + 12) );
				if( *(uint8**)((uint8*)N$1 + 12) == (uint8*)0u ) goto label$72;
				{
					free( *(void**)((uint8*)N$1 + 12) );
				}
				label$72:;
				label$71:;
			}
			goto label$61;
			label$73:;
			{
				(*(tmp$96*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + 536))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8), *(uint64**)((uint8*)N$1 + 12), *(struct $8FBSYMBOL***)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20), *(struct $8FBSYMBOL**)((uint8*)N$1 + 24), *(uint64*)((uint8*)N$1 + 32), *(uint64*)((uint8*)N$1 + 40) );
				free( *(void**)((uint8*)N$1 + 12) );
				free( *(void**)((uint8*)N$1 + 16) );
			}
			goto label$61;
			label$74:;
			{
				(*(tmp$97*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $6IRVREG**)((uint8*)N$1 + 12), *(struct $6IRVREG**)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 20), *(int32*)((uint8*)N$1 + 24) );
			}
			goto label$61;
			label$75:;
			{
				(*(tmp$98*)((uint8*)*(void***)((uint8*)&EMIT$ + 232) + (*(int32*)((uint8*)N$1 + 8) << (2 & 31))))( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12), *(int32*)((uint8*)N$1 + 16), *(int32*)((uint8*)N$1 + 24), *(uint8**)((uint8*)N$1 + 20) );
			}
			goto label$61;
			label$62:;
			static const void* tmp$112[11] = {
				&&label$63,
				&&label$64,
				&&label$65,
				&&label$66,
				&&label$67,
				&&label$68,
				&&label$70,
				&&label$73,
				&&label$69,
				&&label$74,
				&&label$75,
			};
			if( TMP$111$3 > 10u ) goto label$61;
			goto *tmp$112[TMP$111$3 - 0u];
			label$61:;
		}
		void* vr$62 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $9EMIT_NODE*)vr$62;
	}
	goto label$59;
	label$60:;
	label$58:;
}

struct $8REGCLASS* EMITGETREGCLASS( int32 DCLASS$1 )
{
	struct $8REGCLASS* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	fb$result$1 = *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8);
	label$77:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOAD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	{
		uint32 TMP$114$2;
		TMP$114$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$114;
		label$115:;
		{
			{
				uint32 TMP$115$4;
				TMP$115$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$117;
				label$118:;
				{
					struct $9EMIT_NODE* vr$3 = HNEWBOP( 11, DVREG$1, SVREG$1 );
					fb$result$1 = vr$3;
				}
				goto label$116;
				label$119:;
				{
					struct $9EMIT_NODE* vr$4 = HNEWBOP( 10, DVREG$1, SVREG$1 );
					fb$result$1 = vr$4;
				}
				goto label$116;
				label$120:;
				{
					struct $9EMIT_NODE* vr$5 = HNEWBOP( 12, DVREG$1, SVREG$1 );
					fb$result$1 = vr$5;
				}
				goto label$116;
				label$121:;
				{
					struct $9EMIT_NODE* vr$6 = HNEWBOP( 9, DVREG$1, SVREG$1 );
					fb$result$1 = vr$6;
				}
				goto label$116;
				label$117:;
				static const void* tmp$119[16] = {
					&&label$120,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$121,
					&&label$118,
					&&label$118,
					&&label$119,
					&&label$119,
				};
				if( (TMP$115$4 - 1u) > 15u ) goto label$121;
				goto *tmp$119[TMP$115$4 - 1u];
				label$116:;
			}
		}
		goto label$113;
		label$122:;
		{
			{
				uint32 TMP$116$4;
				TMP$116$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$124;
				label$125:;
				{
					struct $9EMIT_NODE* vr$8 = HNEWBOP( 7, DVREG$1, SVREG$1 );
					fb$result$1 = vr$8;
				}
				goto label$123;
				label$126:;
				{
					struct $9EMIT_NODE* vr$9 = HNEWBOP( 6, DVREG$1, SVREG$1 );
					fb$result$1 = vr$9;
				}
				goto label$123;
				label$127:;
				{
					struct $9EMIT_NODE* vr$10 = HNEWBOP( 8, DVREG$1, SVREG$1 );
					fb$result$1 = vr$10;
				}
				goto label$123;
				label$128:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 5, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$123;
				label$124:;
				static const void* tmp$120[16] = {
					&&label$127,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$128,
					&&label$125,
					&&label$125,
					&&label$126,
					&&label$126,
				};
				if( (TMP$116$4 - 1u) > 15u ) goto label$128;
				goto *tmp$120[TMP$116$4 - 1u];
				label$123:;
			}
		}
		goto label$113;
		label$129:;
		{
			{
				uint32 TMP$117$4;
				TMP$117$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$131;
				label$132:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 15, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$130;
				label$133:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 14, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$130;
				label$134:;
				{
					struct $9EMIT_NODE* vr$15 = HNEWBOP( 16, DVREG$1, SVREG$1 );
					fb$result$1 = vr$15;
				}
				goto label$130;
				label$135:;
				{
					struct $9EMIT_NODE* vr$16 = HNEWBOP( 13, DVREG$1, SVREG$1 );
					fb$result$1 = vr$16;
				}
				goto label$130;
				label$131:;
				static const void* tmp$121[16] = {
					&&label$134,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$135,
					&&label$132,
					&&label$132,
					&&label$133,
					&&label$133,
				};
				if( (TMP$117$4 - 1u) > 15u ) goto label$135;
				goto *tmp$121[TMP$117$4 - 1u];
				label$130:;
			}
		}
		goto label$113;
		label$136:;
		{
			{
				uint32 TMP$118$4;
				TMP$118$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$138;
				label$139:;
				{
					struct $9EMIT_NODE* vr$18 = HNEWBOP( 3, DVREG$1, SVREG$1 );
					fb$result$1 = vr$18;
				}
				goto label$137;
				label$140:;
				{
					struct $9EMIT_NODE* vr$19 = HNEWBOP( 2, DVREG$1, SVREG$1 );
					fb$result$1 = vr$19;
				}
				goto label$137;
				label$141:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 4, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$137;
				label$142:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 1, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$137;
				label$138:;
				static const void* tmp$122[16] = {
					&&label$141,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$142,
					&&label$139,
					&&label$139,
					&&label$140,
					&&label$140,
				};
				if( (TMP$118$4 - 1u) > 15u ) goto label$142;
				goto *tmp$122[TMP$118$4 - 1u];
				label$137:;
			}
		}
		goto label$113;
		label$114:;
		static const void* tmp$123[16] = {
			&&label$129,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$136,
			&&label$115,
			&&label$115,
			&&label$122,
			&&label$122,
		};
		if( (TMP$114$2 - 1u) > 15u ) goto label$136;
		goto *tmp$123[TMP$114$2 - 1u];
		label$113:;
	}
	label$112:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTORE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	{
		uint32 TMP$124$2;
		TMP$124$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$146;
		label$147:;
		{
			{
				uint32 TMP$125$4;
				TMP$125$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$149;
				label$150:;
				{
					struct $9EMIT_NODE* vr$3 = HNEWBOP( 27, DVREG$1, SVREG$1 );
					fb$result$1 = vr$3;
				}
				goto label$148;
				label$151:;
				{
					struct $9EMIT_NODE* vr$4 = HNEWBOP( 26, DVREG$1, SVREG$1 );
					fb$result$1 = vr$4;
				}
				goto label$148;
				label$152:;
				{
					struct $9EMIT_NODE* vr$5 = HNEWBOP( 28, DVREG$1, SVREG$1 );
					fb$result$1 = vr$5;
				}
				goto label$148;
				label$153:;
				{
					struct $9EMIT_NODE* vr$6 = HNEWBOP( 25, DVREG$1, SVREG$1 );
					fb$result$1 = vr$6;
				}
				goto label$148;
				label$149:;
				static const void* tmp$129[16] = {
					&&label$152,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$153,
					&&label$150,
					&&label$150,
					&&label$151,
					&&label$151,
				};
				if( (TMP$125$4 - 1u) > 15u ) goto label$153;
				goto *tmp$129[TMP$125$4 - 1u];
				label$148:;
			}
		}
		goto label$145;
		label$154:;
		{
			{
				uint32 TMP$126$4;
				TMP$126$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$156;
				label$157:;
				{
					struct $9EMIT_NODE* vr$8 = HNEWBOP( 23, DVREG$1, SVREG$1 );
					fb$result$1 = vr$8;
				}
				goto label$155;
				label$158:;
				{
					struct $9EMIT_NODE* vr$9 = HNEWBOP( 22, DVREG$1, SVREG$1 );
					fb$result$1 = vr$9;
				}
				goto label$155;
				label$159:;
				{
					struct $9EMIT_NODE* vr$10 = HNEWBOP( 24, DVREG$1, SVREG$1 );
					fb$result$1 = vr$10;
				}
				goto label$155;
				label$160:;
				{
					struct $9EMIT_NODE* vr$11 = HNEWBOP( 21, DVREG$1, SVREG$1 );
					fb$result$1 = vr$11;
				}
				goto label$155;
				label$156:;
				static const void* tmp$130[16] = {
					&&label$159,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$160,
					&&label$157,
					&&label$157,
					&&label$158,
					&&label$158,
				};
				if( (TMP$126$4 - 1u) > 15u ) goto label$160;
				goto *tmp$130[TMP$126$4 - 1u];
				label$155:;
			}
		}
		goto label$145;
		label$161:;
		{
			{
				uint32 TMP$127$4;
				TMP$127$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$163;
				label$164:;
				{
					struct $9EMIT_NODE* vr$13 = HNEWBOP( 31, DVREG$1, SVREG$1 );
					fb$result$1 = vr$13;
				}
				goto label$162;
				label$165:;
				{
					struct $9EMIT_NODE* vr$14 = HNEWBOP( 30, DVREG$1, SVREG$1 );
					fb$result$1 = vr$14;
				}
				goto label$162;
				label$166:;
				{
					struct $9EMIT_NODE* vr$15 = HNEWBOP( 32, DVREG$1, SVREG$1 );
					fb$result$1 = vr$15;
				}
				goto label$162;
				label$167:;
				{
					struct $9EMIT_NODE* vr$16 = HNEWBOP( 29, DVREG$1, SVREG$1 );
					fb$result$1 = vr$16;
				}
				goto label$162;
				label$163:;
				static const void* tmp$131[16] = {
					&&label$166,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$167,
					&&label$164,
					&&label$164,
					&&label$165,
					&&label$165,
				};
				if( (TMP$127$4 - 1u) > 15u ) goto label$167;
				goto *tmp$131[TMP$127$4 - 1u];
				label$162:;
			}
		}
		goto label$145;
		label$168:;
		{
			{
				uint32 TMP$128$4;
				TMP$128$4 = *(uint32*)((uint8*)SVREG$1 + 4);
				goto label$170;
				label$171:;
				{
					struct $9EMIT_NODE* vr$18 = HNEWBOP( 19, DVREG$1, SVREG$1 );
					fb$result$1 = vr$18;
				}
				goto label$169;
				label$172:;
				{
					struct $9EMIT_NODE* vr$19 = HNEWBOP( 18, DVREG$1, SVREG$1 );
					fb$result$1 = vr$19;
				}
				goto label$169;
				label$173:;
				{
					struct $9EMIT_NODE* vr$20 = HNEWBOP( 20, DVREG$1, SVREG$1 );
					fb$result$1 = vr$20;
				}
				goto label$169;
				label$174:;
				{
					struct $9EMIT_NODE* vr$21 = HNEWBOP( 17, DVREG$1, SVREG$1 );
					fb$result$1 = vr$21;
				}
				goto label$169;
				label$170:;
				static const void* tmp$132[16] = {
					&&label$173,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$174,
					&&label$171,
					&&label$171,
					&&label$172,
					&&label$172,
				};
				if( (TMP$128$4 - 1u) > 15u ) goto label$174;
				goto *tmp$132[TMP$128$4 - 1u];
				label$169:;
			}
		}
		goto label$145;
		label$146:;
		static const void* tmp$133[16] = {
			&&label$161,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$168,
			&&label$147,
			&&label$147,
			&&label$154,
			&&label$154,
		};
		if( (TMP$124$2 - 1u) > 15u ) goto label$168;
		goto *tmp$133[TMP$124$2 - 1u];
		label$145:;
	}
	label$144:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$175:;
	{
		uint32 TMP$134$2;
		TMP$134$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$178;
		label$179:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 35, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$177;
		label$180:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 34, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$177;
		label$181:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWBOP( 33, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$177;
		label$178:;
		static const void* tmp$135[4] = {
			&&label$179,
			&&label$179,
			&&label$180,
			&&label$180,
		};
		if( (TMP$134$2 - 13u) > 3u ) goto label$181;
		goto *tmp$135[TMP$134$2 - 13u];
		label$177:;
	}
	label$176:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$182:;
	{
		uint32 TMP$136$2;
		TMP$136$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$185;
		label$186:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 38, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$184;
		label$187:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 37, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$184;
		label$188:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWBOP( 36, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$184;
		label$185:;
		static const void* tmp$137[4] = {
			&&label$186,
			&&label$186,
			&&label$187,
			&&label$187,
		};
		if( (TMP$136$2 - 13u) > 3u ) goto label$188;
		goto *tmp$137[TMP$136$2 - 13u];
		label$184:;
	}
	label$183:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSUB( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$189:;
	{
		uint32 TMP$138$2;
		TMP$138$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$192;
		label$193:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 41, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$191;
		label$194:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 40, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$191;
		label$195:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWBOP( 39, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$191;
		label$192:;
		static const void* tmp$139[4] = {
			&&label$193,
			&&label$193,
			&&label$194,
			&&label$194,
		};
		if( (TMP$138$2 - 13u) > 3u ) goto label$195;
		goto *tmp$139[TMP$138$2 - 13u];
		label$191:;
	}
	label$190:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMUL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$196:;
	{
		uint32 TMP$140$2;
		TMP$140$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$199;
		label$200:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 44, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$198;
		label$201:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 43, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$198;
		label$202:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWBOP( 42, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$198;
		label$199:;
		static const void* tmp$141[4] = {
			&&label$200,
			&&label$200,
			&&label$201,
			&&label$201,
		};
		if( (TMP$140$2 - 13u) > 3u ) goto label$202;
		goto *tmp$141[TMP$140$2 - 13u];
		label$198:;
	}
	label$197:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$203:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 46, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$204:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITINTDIV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$205:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 45, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$206:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMOD( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$207:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 48, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$208:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSHL( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$209:;
	{
		$11FB_DATATYPE TMP$142$2;
		TMP$142$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$142$2 == 13 ) goto label$213;
		label$214:;
		if( TMP$142$2 != 14 ) goto label$212;
		label$213:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 52, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$211;
		label$212:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 51, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$215:;
		label$211:;
	}
	label$210:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSHR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$216:;
	{
		$11FB_DATATYPE TMP$143$2;
		TMP$143$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$143$2 == 13 ) goto label$220;
		label$221:;
		if( TMP$143$2 != 14 ) goto label$219;
		label$220:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 54, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$218;
		label$219:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 53, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$222:;
		label$218:;
	}
	label$217:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITAND( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$223:;
	{
		$11FB_DATATYPE TMP$144$2;
		TMP$144$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$144$2 == 13 ) goto label$227;
		label$228:;
		if( TMP$144$2 != 14 ) goto label$226;
		label$227:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 56, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$225;
		label$226:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 55, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$229:;
		label$225:;
	}
	label$224:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITOR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$230:;
	{
		$11FB_DATATYPE TMP$145$2;
		TMP$145$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$145$2 == 13 ) goto label$234;
		label$235:;
		if( TMP$145$2 != 14 ) goto label$233;
		label$234:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 58, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$232;
		label$233:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 57, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$236:;
		label$232:;
	}
	label$231:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITXOR( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$237:;
	{
		$11FB_DATATYPE TMP$146$2;
		TMP$146$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$146$2 == 13 ) goto label$241;
		label$242:;
		if( TMP$146$2 != 14 ) goto label$240;
		label$241:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 60, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$239;
		label$240:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 59, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$243:;
		label$239:;
	}
	label$238:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEQV( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$244:;
	{
		$11FB_DATATYPE TMP$147$2;
		TMP$147$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$147$2 == 13 ) goto label$248;
		label$249:;
		if( TMP$147$2 != 14 ) goto label$247;
		label$248:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 62, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$246;
		label$247:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 61, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$250:;
		label$246:;
	}
	label$245:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITIMP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$251:;
	{
		$11FB_DATATYPE TMP$148$2;
		TMP$148$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$148$2 == 13 ) goto label$255;
		label$256:;
		if( TMP$148$2 != 14 ) goto label$254;
		label$255:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWBOP( 64, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$253;
		label$254:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWBOP( 63, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		label$257:;
		label$253:;
	}
	label$252:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITATN2( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$258:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 65, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$259:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOW( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$260:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 66, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$261:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITADDROF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$262:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 67, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$263:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDEREF( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$264:;
	struct $9EMIT_NODE* vr$1 = HNEWBOP( 68, DVREG$1, SVREG$1 );
	fb$result$1 = vr$1;
	label$265:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITGT( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$266:;
	{
		uint32 TMP$149$2;
		TMP$149$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$269;
		label$270:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 71, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$268;
		label$271:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 70, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$268;
		label$272:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 69, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$268;
		label$269:;
		static const void* tmp$150[4] = {
			&&label$270,
			&&label$270,
			&&label$271,
			&&label$271,
		};
		if( (TMP$149$2 - 13u) > 3u ) goto label$272;
		goto *tmp$150[TMP$149$2 - 13u];
		label$268:;
	}
	label$267:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLT( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$273:;
	{
		uint32 TMP$151$2;
		TMP$151$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$276;
		label$277:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 74, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$275;
		label$278:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 73, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$275;
		label$279:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 72, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$275;
		label$276:;
		static const void* tmp$152[4] = {
			&&label$277,
			&&label$277,
			&&label$278,
			&&label$278,
		};
		if( (TMP$151$2 - 13u) > 3u ) goto label$279;
		goto *tmp$152[TMP$151$2 - 13u];
		label$275:;
	}
	label$274:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEQ( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$280:;
	{
		uint32 TMP$153$2;
		TMP$153$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$283;
		label$284:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 77, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$282;
		label$285:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 76, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$282;
		label$286:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 75, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$282;
		label$283:;
		static const void* tmp$154[4] = {
			&&label$284,
			&&label$284,
			&&label$285,
			&&label$285,
		};
		if( (TMP$153$2 - 13u) > 3u ) goto label$286;
		goto *tmp$154[TMP$153$2 - 13u];
		label$282:;
	}
	label$281:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$287:;
	{
		uint32 TMP$155$2;
		TMP$155$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$290;
		label$291:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 80, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$289;
		label$292:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 79, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$289;
		label$293:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 78, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$289;
		label$290:;
		static const void* tmp$156[4] = {
			&&label$291,
			&&label$291,
			&&label$292,
			&&label$292,
		};
		if( (TMP$155$2 - 13u) > 3u ) goto label$293;
		goto *tmp$156[TMP$155$2 - 13u];
		label$289:;
	}
	label$288:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITGE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$294:;
	{
		uint32 TMP$157$2;
		TMP$157$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$297;
		label$298:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 83, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$296;
		label$299:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 82, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$296;
		label$300:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 81, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$296;
		label$297:;
		static const void* tmp$158[4] = {
			&&label$298,
			&&label$298,
			&&label$299,
			&&label$299,
		};
		if( (TMP$157$2 - 13u) > 3u ) goto label$300;
		goto *tmp$158[TMP$157$2 - 13u];
		label$296:;
	}
	label$295:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLE( struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$301:;
	{
		uint32 TMP$159$2;
		TMP$159$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$304;
		label$305:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWREL( 86, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$303;
		label$306:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWREL( 85, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$303;
		label$307:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWREL( 84, RVREG$1, LABEL$1, DVREG$1, SVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$303;
		label$304:;
		static const void* tmp$160[4] = {
			&&label$305,
			&&label$305,
			&&label$306,
			&&label$306,
		};
		if( (TMP$159$2 - 13u) > 3u ) goto label$307;
		goto *tmp$160[TMP$159$2 - 13u];
		label$303:;
	}
	label$302:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNEG( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$308:;
	{
		uint32 TMP$161$2;
		TMP$161$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$311;
		label$312:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWUOP( 89, DVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$310;
		label$313:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWUOP( 88, DVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$310;
		label$314:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWUOP( 87, DVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$310;
		label$311:;
		static const void* tmp$162[4] = {
			&&label$312,
			&&label$312,
			&&label$313,
			&&label$313,
		};
		if( (TMP$161$2 - 13u) > 3u ) goto label$314;
		goto *tmp$162[TMP$161$2 - 13u];
		label$310:;
	}
	label$309:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITNOT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$315:;
	{
		$11FB_DATATYPE TMP$163$2;
		TMP$163$2 = *($11FB_DATATYPE*)((uint8*)DVREG$1 + 4);
		if( TMP$163$2 == 13 ) goto label$319;
		label$320:;
		if( TMP$163$2 != 14 ) goto label$318;
		label$319:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWUOP( 91, DVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$317;
		label$318:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWUOP( 90, DVREG$1 );
			fb$result$1 = vr$3;
		}
		label$321:;
		label$317:;
	}
	label$316:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITHADD( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$322:;
	{
		uint32 TMP$164$2;
		TMP$164$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$325;
		label$326:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWUOP( 92, DVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$324;
		label$327:;
		{
		}
		goto label$324;
		label$325:;
		static const void* tmp$165[2] = {
			&&label$326,
			&&label$326,
		};
		if( (TMP$164$2 - 15u) > 1u ) goto label$327;
		goto *tmp$165[TMP$164$2 - 15u];
		label$324:;
	}
	label$323:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITABS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$328:;
	{
		uint32 TMP$166$2;
		TMP$166$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$331;
		label$332:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWUOP( 95, DVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$330;
		label$333:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWUOP( 94, DVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$330;
		label$334:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWUOP( 93, DVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$330;
		label$331:;
		static const void* tmp$167[4] = {
			&&label$332,
			&&label$332,
			&&label$333,
			&&label$333,
		};
		if( (TMP$166$2 - 13u) > 3u ) goto label$334;
		goto *tmp$167[TMP$166$2 - 13u];
		label$330:;
	}
	label$329:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSGN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$335:;
	{
		uint32 TMP$168$2;
		TMP$168$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$338;
		label$339:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWUOP( 98, DVREG$1 );
			fb$result$1 = vr$2;
		}
		goto label$337;
		label$340:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWUOP( 97, DVREG$1 );
			fb$result$1 = vr$3;
		}
		goto label$337;
		label$341:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWUOP( 96, DVREG$1 );
			fb$result$1 = vr$4;
		}
		goto label$337;
		label$338:;
		static const void* tmp$169[4] = {
			&&label$339,
			&&label$339,
			&&label$340,
			&&label$340,
		};
		if( (TMP$168$2 - 13u) > 3u ) goto label$341;
		goto *tmp$169[TMP$168$2 - 13u];
		label$337:;
	}
	label$336:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFIX( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$342:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 99, DVREG$1 );
	fb$result$1 = vr$1;
	label$343:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFRAC( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$344:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 100, DVREG$1 );
	fb$result$1 = vr$1;
	label$345:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCONVFD2FS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$346:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 101, DVREG$1 );
	fb$result$1 = vr$1;
	label$347:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$348:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 103, DVREG$1 );
	fb$result$1 = vr$1;
	label$349:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITASIN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$350:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 104, DVREG$1 );
	fb$result$1 = vr$1;
	label$351:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$352:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 105, DVREG$1 );
	fb$result$1 = vr$1;
	label$353:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITACOS( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$354:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 106, DVREG$1 );
	fb$result$1 = vr$1;
	label$355:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITTAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$356:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 107, DVREG$1 );
	fb$result$1 = vr$1;
	label$357:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITATAN( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$358:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 108, DVREG$1 );
	fb$result$1 = vr$1;
	label$359:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$360:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 109, DVREG$1 );
	fb$result$1 = vr$1;
	label$361:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRSQRT( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$362:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 110, DVREG$1 );
	fb$result$1 = vr$1;
	label$363:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRCP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$364:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 111, DVREG$1 );
	fb$result$1 = vr$1;
	label$365:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLOG( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$366:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 112, DVREG$1 );
	fb$result$1 = vr$1;
	label$367:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITEXP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$368:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 113, DVREG$1 );
	fb$result$1 = vr$1;
	label$369:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITFLOOR( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$370:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 114, DVREG$1 );
	fb$result$1 = vr$1;
	label$371:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITXCHGTOS( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$372:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 115, SVREG$1 );
	fb$result$1 = vr$1;
	label$373:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSWZREP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$374:;
	struct $9EMIT_NODE* vr$1 = HNEWUOP( 102, DVREG$1 );
	fb$result$1 = vr$1;
	label$375:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTACKALIGN( int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$376:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 72 );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0;
	*(int64*)((uint8*)&VR$1 + 24) = (int64)BYTES$1;
	struct $9EMIT_NODE* vr$4 = HNEWSTK( 116, &VR$1, 0 );
	fb$result$1 = vr$4;
	label$377:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSH( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$378:;
	{
		uint32 TMP$170$2;
		TMP$170$2 = *(uint32*)((uint8*)SVREG$1 + 4);
		goto label$381;
		label$382:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWSTK( 119, SVREG$1, 0 );
			fb$result$1 = vr$2;
		}
		goto label$380;
		label$383:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWSTK( 118, SVREG$1, 0 );
			fb$result$1 = vr$3;
		}
		goto label$380;
		label$384:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWSTK( 117, SVREG$1, 0 );
			fb$result$1 = vr$4;
		}
		goto label$380;
		label$381:;
		static const void* tmp$171[4] = {
			&&label$382,
			&&label$382,
			&&label$383,
			&&label$383,
		};
		if( (TMP$170$2 - 13u) > 3u ) goto label$384;
		goto *tmp$171[TMP$170$2 - 13u];
		label$380:;
	}
	label$379:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOP( struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$385:;
	{
		uint32 TMP$172$2;
		TMP$172$2 = *(uint32*)((uint8*)DVREG$1 + 4);
		goto label$388;
		label$389:;
		{
			struct $9EMIT_NODE* vr$2 = HNEWSTK( 122, DVREG$1, 0 );
			fb$result$1 = vr$2;
		}
		goto label$387;
		label$390:;
		{
			struct $9EMIT_NODE* vr$3 = HNEWSTK( 121, DVREG$1, 0 );
			fb$result$1 = vr$3;
		}
		goto label$387;
		label$391:;
		{
			struct $9EMIT_NODE* vr$4 = HNEWSTK( 120, DVREG$1, 0 );
			fb$result$1 = vr$4;
		}
		goto label$387;
		label$388:;
		static const void* tmp$173[4] = {
			&&label$389,
			&&label$389,
			&&label$390,
			&&label$390,
		};
		if( (TMP$172$2 - 13u) > 3u ) goto label$391;
		goto *tmp$173[TMP$172$2 - 13u];
		label$387:;
	}
	label$386:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUSHUDT( struct $6IRVREG* SVREG$1, int32 SDSIZE$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$392:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 123, SVREG$1, SDSIZE$1 );
	fb$result$1 = vr$1;
	label$393:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPOPST0( void )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$394:;
	struct $9EMIT_NODE* vr$1 = HNEWSTK( 124, (struct $6IRVREG*)0u, 0 );
	fb$result$1 = vr$1;
	label$395:;
	return fb$result$1;
}

void EMITCOMMENT( uint8* TEXT$1 )
{
	FBSTRING TMP$175$1;
	FBSTRING TMP$176$1;
	label$396:;
	__builtin_memset( &TMP$176$1, 0, 12 );
	__builtin_memset( &TMP$175$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$175$1, (void*)"##", 3, (void*)TEXT$1, 0 );
	fb_StrAssign( (void*)&TMP$176$1, -1, (void*)vr$3, -1, 0 );
	HNEWLIT( (uint8*)*(uint8**)&TMP$176$1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$176$1 );
	label$397:;
}

void EMITASM( uint8* TEXT$1 )
{
	label$398:;
	HNEWLIT( TEXT$1, -1 );
	{
		int32 C$2;
		C$2 = 0;
		label$403:;
		{
			*(int32*)((uint8*)((uint8*)&EMIT$ + (C$2 << (2 & 31))) + 132) = -1;
		}
		label$401:;
		C$2 = C$2 + 1;
		label$400:;
		if( C$2 <= 1 ) goto label$403;
		label$402:;
	}
	label$399:;
}

struct $9EMIT_NODE* EMITJMPTB( struct $8FBSYMBOL* TBSYM$1, uint64* VALUES1$1, struct $8FBSYMBOL** LABELS1$1, int32 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$404:;
	struct $9EMIT_NODE* N$1;
	uint64* VALUES$1;
	struct $8FBSYMBOL** LABELS$1;
	void* vr$2 = calloc( (uint32)(LABELCOUNT$1 << (3 & 31)), 1u );
	VALUES$1 = (uint64*)vr$2;
	void* vr$4 = calloc( (uint32)(LABELCOUNT$1 << (2 & 31)), 1u );
	LABELS$1 = (struct $8FBSYMBOL**)vr$4;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$177$2;
		TMP$177$2 = LABELCOUNT$1 + -1;
		goto label$406;
		label$409:;
		{
			*(uint64*)((uint8*)VALUES$1 + (I$2 << (3 & 31))) = *(uint64*)((uint8*)VALUES1$1 + (I$2 << (3 & 31)));
			*(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$2 << (2 & 31))) = *(struct $8FBSYMBOL**)((uint8*)LABELS1$1 + (I$2 << (2 & 31)));
		}
		label$407:;
		I$2 = I$2 + 1;
		label$406:;
		if( I$2 <= TMP$177$2 ) goto label$409;
		label$408:;
	}
	struct $9EMIT_NODE* vr$15 = HNEWNODE( 7, 0 );
	N$1 = vr$15;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 8) = TBSYM$1;
	*(uint64**)((uint8*)N$1 + 12) = VALUES$1;
	*(struct $8FBSYMBOL***)((uint8*)N$1 + 16) = LABELS$1;
	*(int32*)((uint8*)N$1 + 20) = LABELCOUNT$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24) = DEFLABEL$1;
	*(uint64*)((uint8*)N$1 + 32) = BIAS$1;
	*(uint64*)((uint8*)N$1 + 40) = SPAN$1;
	fb$result$1 = N$1;
	label$405:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALL( struct $8FBSYMBOL* LABEL$1, int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$410:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 125, (struct $6IRVREG*)0u, LABEL$1, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$411:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITCALLPTR( struct $6IRVREG* SVREG$1, int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$412:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 126, SVREG$1, (struct $8FBSYMBOL*)0u, BYTESTOPOP$1 );
	fb$result$1 = vr$1;
	label$413:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITBRANCH( int32 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$414:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 127, (struct $6IRVREG*)0u, LABEL$1, OP$1 );
	fb$result$1 = vr$1;
	label$415:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMP( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$416:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 128, (struct $6IRVREG*)0u, LABEL$1, 0 );
	fb$result$1 = vr$1;
	label$417:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITJUMPPTR( struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$418:;
	struct $9EMIT_NODE* vr$1 = HNEWBRANCH( 129, SVREG$1, (struct $8FBSYMBOL*)0u, 0 );
	fb$result$1 = vr$1;
	label$419:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITRET( int32 BYTESTOPOP$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$420:;
	struct $6IRVREG VR$1;
	__builtin_memset( &VR$1, 0, 72 );
	*($15IRVREGTYPE_ENUM*)&VR$1 = 0;
	*(int64*)((uint8*)&VR$1 + 24) = (int64)BYTESTOPOP$1;
	struct $9EMIT_NODE* vr$4 = HNEWUOP( 130, &VR$1 );
	fb$result$1 = vr$4;
	label$421:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$422:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 131, LABEL$1 );
	fb$result$1 = vr$1;
	label$423:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITPUBLIC( struct $8FBSYMBOL* LABEL$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$424:;
	struct $9EMIT_NODE* vr$1 = HNEWSYMOP( 132, LABEL$1 );
	fb$result$1 = vr$1;
	label$425:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMMOVE( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$426:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 135, DVREG$1, SVREG$1, BYTES$1, 0 );
	fb$result$1 = vr$1;
	label$427:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMSWAP( struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$428:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 136, DVREG$1, SVREG$1, BYTES$1, 0 );
	fb$result$1 = vr$1;
	label$429:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITMEMCLEAR( struct $6IRVREG* DVREG$1, struct $6IRVREG* BYTES_VREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$430:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 137, DVREG$1, BYTES_VREG$1, 0, 0 );
	fb$result$1 = vr$1;
	label$431:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITSTKCLEAR( int32 BYTES$1, int32 BASEOFS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$432:;
	struct $9EMIT_NODE* vr$1 = HNEWMEM( 138, (struct $6IRVREG*)0u, (struct $6IRVREG*)0u, BYTES$1, BASEOFS$1 );
	fb$result$1 = vr$1;
	label$433:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEBEGIN( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$434:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 139, PROC$1, LNUM$1, *(int32*)((uint8*)&EMIT$ + 4), FILENAME$1 );
	fb$result$1 = vr$1;
	label$435:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGLINEEND( struct $8FBSYMBOL* PROC$1, int32 LNUM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$436:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 140, PROC$1, LNUM$1, *(int32*)((uint8*)&EMIT$ + 4), (uint8*)0u );
	fb$result$1 = vr$1;
	label$437:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$438:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 141, SYM$1, 0, 0, (uint8*)0u );
	fb$result$1 = vr$1;
	label$439:;
	return fb$result$1;
}

struct $9EMIT_NODE* EMITDBGSCOPEEND( struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$440:;
	struct $9EMIT_NODE* vr$1 = HNEWDBG( 142, SYM$1, 0, 0, (uint8*)0u );
	fb$result$1 = vr$1;
	label$441:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__emit( void )
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

static struct $9EMIT_NODE* HOPTSYMOP( struct $9EMIT_NODE* P$1, struct $9EMIT_NODE* N$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	{
		int32 TMP$108$2;
		TMP$108$2 = *(int32*)((uint8*)N$1 + 8);
		if( TMP$108$2 != 131 ) goto label$33;
		label$34:;
		{
			if( P$1 == (struct $9EMIT_NODE*)0u ) goto label$36;
			{
				if( *(int32*)P$1 != 5 ) goto label$38;
				{
					{
						int32 TMP$109$6;
						TMP$109$6 = *(int32*)((uint8*)P$1 + 8);
						if( TMP$109$6 == 127 ) goto label$41;
						label$42:;
						if( TMP$109$6 != 128 ) goto label$40;
						label$41:;
						{
							if( *(struct $8FBSYMBOL**)((uint8*)P$1 + 16) != *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) ) goto label$44;
							{
								*($19EMIT_NODECLASS_ENUM*)P$1 = 0;
							}
							label$44:;
							label$43:;
						}
						label$40:;
						label$39:;
					}
				}
				label$38:;
				label$37:;
			}
			label$36:;
			label$35:;
			fb$result$1 = P$1;
			goto label$31;
		}
		label$33:;
		label$32:;
	}
	fb$result$1 = N$1;
	label$31:;
	return fb$result$1;
}

static void HPEEPHOLEOPT( void )
{
	label$45:;
	struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* P$1;
	P$1 = (struct $9EMIT_NODE*)0u;
	void* vr$1 = FLISTGETHEAD( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$1;
	label$47:;
	if( N$1 == (struct $9EMIT_NODE*)0u ) goto label$48;
	{
		{
			uint32 TMP$110$3;
			TMP$110$3 = *(uint32*)N$1;
			goto label$50;
			label$51:;
			{
				struct $9EMIT_NODE* vr$3 = HOPTSYMOP( P$1, N$1 );
				P$1 = vr$3;
			}
			goto label$49;
			label$52:;
			{
			}
			goto label$49;
			label$53:;
			{
				if( *(int32*)((uint8*)N$1 + 8) == 0 ) goto label$55;
				{
					P$1 = N$1;
				}
				label$55:;
				label$54:;
			}
			goto label$49;
			label$56:;
			{
				P$1 = N$1;
			}
			goto label$49;
			label$50:;
			static const void* tmp$178[5] = {
				&&label$53,
				&&label$56,
				&&label$51,
				&&label$56,
				&&label$52,
			};
			if( (TMP$110$3 - 6u) > 4u ) goto label$56;
			goto *tmp$178[TMP$110$3 - 6u];
			label$49:;
		}
		void* vr$5 = FLISTGETNEXT( (void*)N$1 );
		N$1 = (struct $9EMIT_NODE*)vr$5;
	}
	goto label$47;
	label$48:;
	label$46:;
}

static struct $6IRVREG* HNEWVR( struct $6IRVREG* V$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$78:;
	struct $6IRVREG* N$1;
	int32 DCLASS$1;
	if( V$1 != (struct $6IRVREG*)0u ) goto label$81;
	{
		fb$result$1 = (struct $6IRVREG*)0u;
		goto label$79;
	}
	label$81:;
	label$80:;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 72) );
	N$1 = (struct $6IRVREG*)vr$2;
	*($15IRVREGTYPE_ENUM*)N$1 = *($15IRVREGTYPE_ENUM*)V$1;
	*($11FB_DATATYPE*)((uint8*)N$1 + 4) = *($11FB_DATATYPE*)((uint8*)V$1 + 4);
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)V$1 + 32);
	*(int64*)((uint8*)N$1 + 40) = *(int64*)((uint8*)V$1 + 40);
	*(int32*)((uint8*)N$1 + 48) = *(int32*)((uint8*)V$1 + 48);
	__builtin_memcpy( (union $7FBVALUE*)((uint8*)N$1 + 24), (union $7FBVALUE*)((uint8*)V$1 + 24), 8 );
	*($12IR_REGFAMILY*)((uint8*)N$1 + 16) = *($12IR_REGFAMILY*)((uint8*)V$1 + 16);
	*(int32*)((uint8*)N$1 + 20) = *(int32*)((uint8*)V$1 + 20);
	if( *(int32*)V$1 != 4 ) goto label$83;
	{
		int32 TMP$113$2;
		if( (*(int32*)((uint8*)V$1 + 4) & 480) == 0 ) goto label$84;
		TMP$113$2 = 24;
		goto label$442;
		label$84:;
		TMP$113$2 = *(int32*)((uint8*)V$1 + 4) & 31;
		label$442:;
		DCLASS$1 = *(int32*)((uint8*)SYMB_DTYPETB$ + (TMP$113$2 * 28));
		int32 vr$30 = (*(tmp$86*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8) + 40))( *(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 8), *(int32*)((uint8*)V$1 + 12) );
		*(int32*)((uint8*)N$1 + 12) = vr$30;
		*(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) = *(int32*)((uint8*)((uint8*)&EMIT$ + (DCLASS$1 << (2 & 31))) + 132) | (1 << (*(int32*)((uint8*)N$1 + 12) & 31));
	}
	label$83:;
	label$82:;
	struct $6IRVREG* vr$43 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 56) );
	*(struct $6IRVREG**)((uint8*)N$1 + 56) = vr$43;
	struct $6IRVREG* vr$46 = HNEWVR( *(struct $6IRVREG**)((uint8*)V$1 + 52) );
	*(struct $6IRVREG**)((uint8*)N$1 + 52) = vr$46;
	fb$result$1 = N$1;
	label$79:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWNODE( $19EMIT_NODECLASS_ENUM CLASS_$1, int32 UPDATEPOS$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$85:;
	static struct $9EMIT_NODE* N$1;
	static int32 I$1;
	void* vr$2 = FLISTNEWITEM( (struct $6TFLIST*)((uint8*)&EMIT$ + 16) );
	N$1 = (struct $9EMIT_NODE*)vr$2;
	*($19EMIT_NODECLASS_ENUM*)N$1 = CLASS_$1;
	{
		I$1 = 0;
		label$90:;
		{
			*(int32*)((uint8*)((uint8*)N$1 + (I$1 << (2 & 31))) + 48) = *(int32*)((uint8*)*(struct $8REGCLASS**)((uint8*)((uint8*)&EMIT$ + (I$1 << (2 & 31))) + 8) + 136);
		}
		label$88:;
		I$1 = I$1 + 1;
		label$87:;
		if( I$1 <= 1 ) goto label$90;
		label$89:;
	}
	if( UPDATEPOS$1 == 0 ) goto label$92;
	{
		*(int32*)((uint8*)&EMIT$ + 4) = *(int32*)((uint8*)&EMIT$ + 4) + 1;
	}
	label$92:;
	label$91:;
	fb$result$1 = N$1;
	label$86:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBOP( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$93:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 1, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16) = vr$5;
	fb$result$1 = N$1;
	label$94:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWUOP( int32 OP$1, struct $6IRVREG* DVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$95:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 2, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	fb$result$1 = N$1;
	label$96:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWREL( int32 OP$1, struct $6IRVREG* RVREG$1, struct $8FBSYMBOL* LABEL$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$97:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 3, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( RVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16) = LABEL$1;
	struct $6IRVREG* vr$6 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 20) = vr$6;
	struct $6IRVREG* vr$8 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 24) = vr$8;
	fb$result$1 = N$1;
	label$98:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSTK( int32 OP$1, struct $6IRVREG* VREG$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$99:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 4, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	*(int32*)((uint8*)N$1 + 16) = EXTRA$1;
	fb$result$1 = N$1;
	label$100:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWBRANCH( int32 OP$1, struct $6IRVREG* VREG$1, struct $8FBSYMBOL* SYM$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$101:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 5, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16) = SYM$1;
	struct $6IRVREG* vr$4 = HNEWVR( VREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$4;
	*(int32*)((uint8*)N$1 + 20) = EXTRA$1;
	fb$result$1 = N$1;
	label$102:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWSYMOP( int32 OP$1, struct $8FBSYMBOL* SYM$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$103:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 8, 0 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	fb$result$1 = N$1;
	label$104:;
	return fb$result$1;
}

static void HNEWLIT( uint8* TEXT$1, int32 ISASM$1 )
{
	label$105:;
	struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$0 = HNEWNODE( 6, ISASM$1 );
	N$1 = vr$0;
	*(int32*)((uint8*)N$1 + 8) = ISASM$1;
	int32 vr$2 = fb_StrLen( (void*)TEXT$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	*(uint8**)((uint8*)N$1 + 12) = (uint8*)vr$4;
	fb_StrAssign( *(void**)((uint8*)N$1 + 12), 0, (void*)TEXT$1, 0, 0 );
	label$106:;
}

static struct $9EMIT_NODE* HNEWMEM( int32 OP$1, struct $6IRVREG* DVREG$1, struct $6IRVREG* SVREG$1, int32 BYTES$1, int32 EXTRA$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$107:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 9, -1 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	struct $6IRVREG* vr$3 = HNEWVR( DVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 12) = vr$3;
	struct $6IRVREG* vr$5 = HNEWVR( SVREG$1 );
	*(struct $6IRVREG**)((uint8*)N$1 + 16) = vr$5;
	*(int32*)((uint8*)N$1 + 20) = BYTES$1;
	*(int32*)((uint8*)N$1 + 24) = EXTRA$1;
	fb$result$1 = N$1;
	label$108:;
	return fb$result$1;
}

static struct $9EMIT_NODE* HNEWDBG( int32 OP$1, struct $8FBSYMBOL* SYM$1, int32 LNUM$1, int32 POS_$1, uint8* FILENAME$1 )
{
	struct $9EMIT_NODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$109:;
	static struct $9EMIT_NODE* N$1;
	struct $9EMIT_NODE* vr$1 = HNEWNODE( 10, 0 );
	N$1 = vr$1;
	*(int32*)((uint8*)N$1 + 8) = OP$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = SYM$1;
	*(int32*)((uint8*)N$1 + 16) = LNUM$1;
	*(uint8**)((uint8*)N$1 + 20) = FILENAME$1;
	*(int32*)((uint8*)N$1 + 24) = POS_$1;
	fb$result$1 = N$1;
	label$110:;
	return fb$result$1;
}
