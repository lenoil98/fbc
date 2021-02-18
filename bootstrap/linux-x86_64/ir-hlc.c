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
struct $12SECTIONENTRY {
	FBSTRING TEXT;
	int64 OLD;
	int64 INDENT;
};
__FB_STATIC_ASSERT( sizeof( struct $12SECTIONENTRY ) == 40 );
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
struct $8IRHLCCTX {
	struct $12SECTIONENTRY SECTIONS[129];
	int64 SECTION;
	int64 SECTIONGOSUBLEVEL;
	int64 LINENUM;
	FBSTRING ESCAPEDINPUTFILENAME;
	uint64 USEDBUILTINS;
	struct $5TLIST ANONSTACK;
	FBSTRING VARINI;
	int64 VARINISCOPELEVEL;
	FBSTRING FBCTINF;
	FBSTRING EXPORTS;
	struct $5TLIST EXPRNODES;
	FBSTRING EXPRTEXT;
	struct $5TLIST EXPRCACHE;
	int64 GLOBALVARPASS;
};
__FB_STATIC_ASSERT( sizeof( struct $8IRHLCCTX ) == 5520 );
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
typedef int64 $13FB_COMPTARGET;
typedef int64 $16EMITPROC_OPTIONS;
typedef int64 $19FB_CVA_LIST_TYPEDEF;
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
struct $8EXPRNODE;
struct $8EXPRNODE {
	int64 CLASS;
	int64 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8EXPRNODE* L;
	struct $8EXPRNODE* R;
	union {
		uint8* TEXT;
		union $7FBVALUE VAL;
		struct $8FBSYMBOL* SYM;
		int64 OP;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $8EXPRNODE ) == 48 );
struct $13EXPRCACHENODE {
	int64 VREGID;
	struct $8EXPRNODE* EXPR;
};
__FB_STATIC_ASSERT( sizeof( struct $13EXPRCACHENODE ) == 16 );
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
void free( void* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_ULongintToStr( uint64 );
FBSTRING* fb_StrFill2( int64, FBSTRING* );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_TRIM( FBSTRING* );
FBSTRING* fb_HEXEx_l( uint64, int32 );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
FBSTRING* fb_RIGHT( FBSTRING*, int64 );
static void fb_ctor__irzhlc( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETTAIL( struct $5TLIST* );
void* LISTGETPREV( void* );
void* LISTGETNEXT( void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
int64 FBIS64BIT( void );
int64 FBGETCPUFAMILY( void );
int64 TYPECALCNATURALALIGN( int64, struct $8FBSYMBOL* );
void _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBPROCCALCSTDCALLSUFFIXN( struct $8FBSYMBOL* );
void SYMBGETREALTYPE( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBHASDTOR( struct $8FBSYMBOL* );
int64 SYMBISDATADESC( struct $8FBSYMBOL* );
$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int64, struct $8FBSYMBOL* );
int64 TYPETOUNSIGNED( int64 );
uint8* SYMBUNIQUEID( boolean );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
void SYMBFOREACHGLOBAL( int64, tmp$41 );
int64 HFILEEXISTS( uint8* );
FBSTRING* HFLOATTOHEX_C99( double );
uint8* ZSTRDUP( uint8* );
uint8* HUNESCAPE( uint8* );
uint32* HUNESCAPEW( uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
int64 HCHARNEEDSESCAPING( int64, int64 );
int64 HISVALIDHEXDIGIT( int64 );
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
static void _ZN12SECTIONENTRYC1Ev( struct $12SECTIONENTRY* );
static void _ZN12SECTIONENTRYaSERKS_( struct $12SECTIONENTRY*, struct $12SECTIONENTRY* );
static void _ZN12SECTIONENTRYD1Ev( struct $12SECTIONENTRY* );
static void _ZN8IRHLCCTXC1Ev( struct $8IRHLCCTX* );
static void _ZN8IRHLCCTXaSERKS_( struct $8IRHLCCTX*, struct $8IRHLCCTX* );
static void _ZN8IRHLCCTXD1Ev( struct $8IRHLCCTX* );
static FBSTRING* HEMITTYPE( int64, struct $8FBSYMBOL* );
static void HEMITSTRUCT( struct $8FBSYMBOL*, int64 );
static void _EMITDBG( int64, struct $8FBSYMBOL*, int64, uint8* );
static void EXPRFREENODE( struct $8EXPRNODE* );
static void _INIT( void );
static void _END( void );
static void SECTIONBEGIN( void );
static void SECTIONWRITELINE( FBSTRING* );
static void SECTIONINDENT( void );
static void SECTIONUNINDENT( void );
static int64 SECTIONINSIDEPROC( void );
static void SECTIONEND( void );
static int64 SECTIONGOSUB( int64 );
static void SECTIONRETURN( int64 );
static void HWRITELINE( FBSTRING*, int64 );
static void HUPDATECURRENTFILENAME( uint8* );
static void HWRITESTATICASSERT( FBSTRING* );
static void HAPPENDCTORATTRIB( FBSTRING*, struct $8FBSYMBOL*, int64 );
static FBSTRING* HGETMANGLEDNAMEFORASM( struct $8FBSYMBOL*, int64 );
static int64 HNEEDALIAS( struct $8FBSYMBOL* );
static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL*, $16EMITPROC_OPTIONS );
static FBSTRING* HGETUDTTAG( struct $8FBSYMBOL* );
static FBSTRING* HGETUDTID( struct $8FBSYMBOL* );
static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* );
static void HEMITUDT( struct $8FBSYMBOL*, int64 );
static FBSTRING* HEMITARRAYDECL( struct $8FBSYMBOL* );
static void HEMITVARDECL( int64, struct $8FBSYMBOL*, uint8* );
static void HMAYBEEMITLOCALVAR( struct $8FBSYMBOL* );
static void HALLOCGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* );
static void HMAYBEEMITGLOBALVAREXCEPTDATASTMT( struct $8FBSYMBOL* );
static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* );
static void HEMITFIELDTYPES( struct $8FBSYMBOL* );
static struct $8FBSYMBOL** HFINDPARENTANONALREADYONSTACK( struct $8FBSYMBOL* );
static void HPUSHANONPARENTS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static void HPOPANONPARENTS( struct $8FBSYMBOL** );
static void HEMITSTRUCTWITHFIELDS( struct $8FBSYMBOL* );
static void HWRITEX86F2I( FBSTRING*, int64, int64 );
static void HWRITEGENERICF2I( FBSTRING*, int64, int64 );
static void HWRITEF2I( FBSTRING*, int64, int64 );
static void HMAYBEEMITPROCEXPORT( struct $8FBSYMBOL* );
static int64 _EMITBEGIN( void );
static void _EMITEND( void );
static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE );
static int64 _SUPPORTSOP( int64, int64 );
static void _PROCBEGIN( struct $8FBSYMBOL* );
static void _PROCEND( struct $8FBSYMBOL* );
static void _SCOPEBEGIN( struct $8FBSYMBOL* );
static void _SCOPEEND( struct $8FBSYMBOL* );
static int64 HISSTATICWITHDTOR( struct $8FBSYMBOL* );
static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* );
static void _SETVREGDATATYPE( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
static struct $8EXPRNODE* EXPRNEW( int64, int64, struct $8FBSYMBOL* );
static void EXPRFREETREE( struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWTEXT( int64, struct $8FBSYMBOL*, uint8* );
static struct $8EXPRNODE* EXPRNEWIMMI( int64, int64 );
static struct $8EXPRNODE* EXPRNEWIMMF( double, int64 );
static int64 SYMBISCARRAY( struct $8FBSYMBOL* );
static struct $8EXPRNODE* EXPRNEWCAST( int64, struct $8FBSYMBOL*, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWMACRO( $6AST_OP, int64, struct $8FBSYMBOL*, struct $8EXPRNODE*, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWSYM( struct $8FBSYMBOL* );
static int64 TYPECBOP( int64, int64, int64 );
static struct $8EXPRNODE* EXPRNEWUOP( int64, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRNEWBOP( int64, struct $8EXPRNODE*, struct $8EXPRNODE* );
static void EXPRCACHE( int64, struct $8EXPRNODE* );
static struct $8EXPRNODE* EXPRLOOKUP( int64 );
static FBSTRING* HEMITINT( int64, int64 );
static FBSTRING* HEMITFLOAT( int64, double );
static void HBUILDSTRLIT( FBSTRING*, uint8*, int64 );
static void HBUILDWSTRLIT( FBSTRING*, uint32*, int64 );
static uint8* HBOPTOSTR( int64 );
static uint8* HUOPTOSTR( int64, int64, int64* );
static void HIMM2TEXT( FBSTRING*, struct $8EXPRNODE* );
static void HSYM2TEXT( FBSTRING*, struct $8FBSYMBOL* );
static void HEXPRFLUSH( struct $8EXPRNODE*, int64 );
static FBSTRING* EXPRFLUSH( struct $8EXPRNODE*, int64 );
static struct $8EXPRNODE* EXPRNEWOFFSET( struct $8FBSYMBOL*, int64 );
static struct $8EXPRNODE* EXPRNEWVREG( struct $6IRVREG*, int64 );
static void _EMITLABEL( struct $8FBSYMBOL* );
static void EXPRSTORE( struct $6IRVREG*, struct $8EXPRNODE*, int64 );
static void _EMITBOP( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
static void _EMITUOP( int64, struct $6IRVREG*, struct $6IRVREG* );
static void _EMITCONVERT( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSTORE( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITSPILLREGS( void );
static void _EMITLOAD( struct $6IRVREG* );
static void _EMITLOADRES( struct $6IRVREG*, struct $6IRVREG* );
static void _EMITADDR( int64, struct $6IRVREG*, struct $6IRVREG* );
static void HDOCALL( FBSTRING*, int64, struct $6IRVREG*, int64 );
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
static void HVARINISEPARATOR( void );
static void _EMITVARINII( struct $8FBSYMBOL*, int64 );
static void _EMITVARINIF( struct $8FBSYMBOL*, double );
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
extern struct $7IR_VTBL IRHLC_VTBL$;
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
static struct $8IRHLCCTX CTX$;
static uint8* DTYPENAME$[26] = { (uint8*)"void", (uint8*)"boolean", (uint8*)"int8", (uint8*)"uint8", (uint8*)0ull, (uint8*)"int16", (uint8*)"uint16", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)"int32", (uint8*)"uint32", (uint8*)"int64", (uint8*)"uint64", (uint8*)"float", (uint8*)"double", (uint8*)"FBSTRING", (uint8*)0ull, (uint8*)"__builtin_va_list", (uint8*)0ull, (uint8*)0ull, (uint8*)0ull, (uint8*)"void", (uint8*)0ull };
struct $7IR_VTBL IRHLC_VTBL$ = { (tmp$37)&_INIT, (tmp$37)&_END, (tmp$38)&_EMITBEGIN, (tmp$37)&_EMITEND, (tmp$39)&_GETOPTIONVALUE, (tmp$40)&_SUPPORTSOP, (tmp$41)&_PROCBEGIN, (tmp$41)&_PROCEND, (tmp$42)0ull, (tmp$42)0ull, (tmp$43)0ull, (tmp$41)&_SCOPEBEGIN, (tmp$41)&_SCOPEEND, (tmp$41)&_PROCALLOCSTATICVARS, (tmp$44)&_EMITCONVERT, (tmp$41)&_EMITLABEL, (tmp$41)&_EMITLABEL, (tmp$45)0ull, (tmp$42)&_EMITPROCBEGIN, (tmp$46)&_EMITPROCEND, (tmp$47)&IRHLEMITPUSHARG, (tmp$48)&_EMITASMLINE, (tmp$49)&_EMITCOMMENT, (tmp$50)&_EMITBOP, (tmp$51)&_EMITUOP, (tmp$44)&_EMITSTORE, (tmp$37)&_EMITSPILLREGS, (tmp$52)&_EMITLOAD, (tmp$44)&_EMITLOADRES, (tmp$53)0ull, (tmp$51)&_EMITADDR, (tmp$54)&_EMITCALL, (tmp$55)&_EMITCALLPTR, (tmp$45)0ull, (tmp$52)&_EMITJUMPPTR, (tmp$56)&_EMITBRANCH, (tmp$57)&_EMITJMPTB, (tmp$58)&_EMITMEM, (tmp$59)&_EMITMACRO, (tmp$41)&_EMITSCOPEBEGIN, (tmp$41)&_EMITSCOPEEND, (tmp$41)&_EMITDECL, (tmp$60)&_EMITDBG, (tmp$41)&_EMITVARINIBEGIN, (tmp$41)&_EMITVARINIEND, (tmp$61)&_EMITVARINII, (tmp$62)&_EMITVARINIF, (tmp$63)&_EMITVARINIOFS, (tmp$64)&_EMITVARINISTR, (tmp$65)&_EMITVARINIWSTR, (tmp$66)&_EMITVARINIPAD, (tmp$67)&_EMITVARINISCOPEBEGIN, (tmp$37)&_EMITVARINISCOPEEND, (tmp$37)&_EMITFBCTINFBEGIN, (tmp$68)&_EMITFBCTINFSTRING, (tmp$37)&_EMITFBCTINFEND, (tmp$69)&IRHLALLOCVREG, (tmp$70)&IRHLALLOCVRIMM, (tmp$71)&IRHLALLOCVRIMMF, (tmp$72)&IRHLALLOCVRVAR, (tmp$73)&IRHLALLOCVRIDX, (tmp$74)&IRHLALLOCVRPTR, (tmp$72)&IRHLALLOCVROFS, (tmp$75)&_SETVREGDATATYPE, (tmp$76)0ull, (tmp$51)0ull, (tmp$44)0ull, (tmp$45)0ull };

__attribute__(( constructor )) static void fb_ctor__irzhlc( void )
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

static void _ZN12SECTIONENTRYC1Ev( struct $12SECTIONENTRY* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 24ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 32ll), 0, 8ll );
	label$10:;
	label$11:;
}

static void _ZN12SECTIONENTRYaSERKS_( struct $12SECTIONENTRY* THIS$1, struct $12SECTIONENTRY* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(int64*)((uint8*)THIS$1 + 32ll) = *(int64*)((uint8*)__FB_RHS__$1 + 32ll);
	label$13:;
}

static void _ZN12SECTIONENTRYD1Ev( struct $12SECTIONENTRY* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN8IRHLCCTXC1Ev( struct $8IRHLCCTX* THIS$1 )
{
	int64 TMP$96$1;
	struct $12SECTIONENTRY* TMP$97$1;
	TMP$97$1 = (struct $12SECTIONENTRY*)THIS$1;
	TMP$96$1 = 0ll;
	label$20:;
	_ZN12SECTIONENTRYC1Ev( TMP$97$1 );
	TMP$97$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$97$1 + 40ll);
	TMP$96$1 = TMP$96$1 + 1ll;
	if( TMP$96$1 != 129ll ) goto label$20;
	__builtin_memset( (int64*)((uint8*)THIS$1 + 5160ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 5168ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 5176ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 5184ll), 0, 24ll );
	__builtin_memset( (uint64*)((uint8*)THIS$1 + 5208ll), 0, 8ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 5216ll), 0, 64ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 5280ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 5304ll), 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 5312ll), 0, 24ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 5336ll), 0, 24ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 5360ll), 0, 64ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 5424ll), 0, 24ll );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 5448ll), 0, 64ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 5512ll), 0, 8ll );
	label$18:;
	label$19:;
}

static void _ZN8IRHLCCTXaSERKS_( struct $8IRHLCCTX* THIS$1, struct $8IRHLCCTX* __FB_RHS__$1 )
{
	int64 TMP$98$1;
	struct $12SECTIONENTRY* TMP$99$1;
	struct $12SECTIONENTRY* TMP$100$1;
	label$21:;
	TMP$99$1 = (struct $12SECTIONENTRY*)THIS$1;
	TMP$100$1 = (struct $12SECTIONENTRY*)__FB_RHS__$1;
	TMP$98$1 = 0ll;
	label$23:;
	_ZN12SECTIONENTRYaSERKS_( TMP$99$1, (struct $12SECTIONENTRY*)TMP$100$1 );
	TMP$99$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$99$1 + 40ll);
	TMP$100$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$100$1 + 40ll);
	TMP$98$1 = TMP$98$1 + 1ll;
	if( TMP$98$1 != 129ll ) goto label$23;
	*(int64*)((uint8*)THIS$1 + 5160ll) = *(int64*)((uint8*)__FB_RHS__$1 + 5160ll);
	*(int64*)((uint8*)THIS$1 + 5168ll) = *(int64*)((uint8*)__FB_RHS__$1 + 5168ll);
	*(int64*)((uint8*)THIS$1 + 5176ll) = *(int64*)((uint8*)__FB_RHS__$1 + 5176ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 5184ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 5184ll), -1ll, 0 );
	*(uint64*)((uint8*)THIS$1 + 5208ll) = *(uint64*)((uint8*)__FB_RHS__$1 + 5208ll);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 5216ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 5216ll), 64 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 5280ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 5280ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 5304ll) = *(int64*)((uint8*)__FB_RHS__$1 + 5304ll);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 5312ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 5312ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 5336ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 5336ll), -1ll, 0 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 5360ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 5360ll), 64 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 5424ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 5424ll), -1ll, 0 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 5448ll), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 5448ll), 64 );
	*(int64*)((uint8*)THIS$1 + 5512ll) = *(int64*)((uint8*)__FB_RHS__$1 + 5512ll);
	label$22:;
}

static void _ZN8IRHLCCTXD1Ev( struct $8IRHLCCTX* THIS$1 )
{
	int64 TMP$103$1;
	struct $12SECTIONENTRY* TMP$104$1;
	label$27:;
	label$28:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 5424ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 5336ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 5312ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 5280ll) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 5184ll) );
	TMP$104$1 = (struct $12SECTIONENTRY*)((uint8*)THIS$1 + 5120ll);
	TMP$103$1 = 0ll;
	label$29:;
	_ZN12SECTIONENTRYD1Ev( TMP$104$1 );
	TMP$104$1 = (struct $12SECTIONENTRY*)((uint8*)TMP$104$1 + -40ll);
	TMP$103$1 = TMP$103$1 + 1ll;
	if( TMP$103$1 != 129ll ) goto label$29;
}

static void _INIT( void )
{
	label$30:;
	IRHLINIT(  );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll), 8ll, 8ll, 6ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 5360ll), 32ll, 48ll, 7ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll), 8ll, 16ll, 6ll );
	*($6IR_OPT*)((uint8*)&IR$ + 552ll) = *(int64*)((uint8*)&IR$ + 552ll) | 131074ll;
	int64 vr$4 = FBIS64BIT(  );
	if( vr$4 == 0ll ) goto label$33;
	{
		*(uint8**)((uint8*)DTYPENAME$ + 64ll) = *(uint8**)((uint8*)DTYPENAME$ + 104ll);
		*(uint8**)((uint8*)DTYPENAME$ + 72ll) = *(uint8**)((uint8*)DTYPENAME$ + 112ll);
	}
	goto label$32;
	label$33:;
	{
		*(uint8**)((uint8*)DTYPENAME$ + 64ll) = *(uint8**)((uint8*)DTYPENAME$ + 88ll);
		*(uint8**)((uint8*)DTYPENAME$ + 72ll) = *(uint8**)((uint8*)DTYPENAME$ + 96ll);
	}
	label$32:;
	label$31:;
}

static void _END( void )
{
	label$34:;
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 5360ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll) );
	IRHLEND(  );
	label$35:;
}

static void SECTIONBEGIN( void )
{
	label$36:;
	*(int64*)((uint8*)&CTX$ + 5160ll) = *(int64*)((uint8*)&CTX$ + 5160ll) + 1ll;
	{
		struct $12SECTIONENTRY* TMP$120$2;
		TMP$120$2 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll));
		*(int64*)((uint8*)TMP$120$2 + 24ll) = -1ll;
		if( *(int64*)((uint8*)&CTX$ + 5160ll) <= 0ll ) goto label$39;
		{
			*(int64*)((uint8*)TMP$120$2 + 32ll) = *(int64*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + -8ll);
		}
		goto label$38;
		label$39:;
		{
			*(int64*)((uint8*)TMP$120$2 + 32ll) = 0ll;
		}
		label$38:;
	}
	label$37:;
}

static void SECTIONWRITELINE( FBSTRING* S$1 )
{
	label$40:;
	{
		FBSTRING TMP$127$2;
		struct $12SECTIONENTRY* TMP$121$2;
		TMP$121$2 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll));
		if( *(int64*)((uint8*)TMP$121$2 + 24ll) == 0ll ) goto label$43;
		{
			if( *(int64*)((uint8*)TMP$121$2 + 32ll) <= 0ll ) goto label$45;
			{
				FBSTRING TMP$123$4;
				FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1ll );
				FBSTRING* vr$7 = fb_StrFill2( *(int64*)((uint8*)TMP$121$2 + 32ll), (FBSTRING*)vr$5 );
				fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)vr$7, -1ll, 0 );
				__builtin_memset( &TMP$123$4, 0, 24ll );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$123$4, (void*)TMP$121$2, -1ll, (void*)S$1, -1ll );
				fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)vr$14, -1ll, 0 );
			}
			goto label$44;
			label$45:;
			{
				fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)S$1, -1ll, 0 );
			}
			label$44:;
			*(int64*)((uint8*)TMP$121$2 + 24ll) = 0ll;
		}
		goto label$42;
		label$43:;
		{
			FBSTRING TMP$125$3;
			if( *(int64*)((uint8*)TMP$121$2 + 32ll) <= 0ll ) goto label$47;
			{
				FBSTRING TMP$124$4;
				FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"\x09", 1ll );
				FBSTRING* vr$23 = fb_StrFill2( *(int64*)((uint8*)TMP$121$2 + 32ll), (FBSTRING*)vr$21 );
				__builtin_memset( &TMP$124$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$124$4, (void*)TMP$121$2, -1ll, (void*)vr$23, -1ll );
				fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)vr$28, -1ll, 0 );
			}
			label$47:;
			label$46:;
			__builtin_memset( &TMP$125$3, 0, 24ll );
			FBSTRING* vr$35 = fb_StrConcat( &TMP$125$3, (void*)TMP$121$2, -1ll, (void*)S$1, -1ll );
			fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)vr$35, -1ll, 0 );
		}
		label$42:;
		__builtin_memset( &TMP$127$2, 0, 24ll );
		FBSTRING* vr$42 = fb_StrConcat( &TMP$127$2, (void*)TMP$121$2, -1ll, (void*)"\x0A", 2ll );
		fb_StrAssign( (void*)TMP$121$2, -1ll, (void*)vr$42, -1ll, 0 );
	}
	label$41:;
}

static void SECTIONINDENT( void )
{
	label$48:;
	*(int64*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + 32ll) = *(int64*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + 32ll) + 1ll;
	label$49:;
}

static void SECTIONUNINDENT( void )
{
	label$50:;
	*(int64*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + 32ll) = *(int64*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + 32ll) + -1ll;
	label$51:;
}

static int64 SECTIONINSIDEPROC( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$52:;
	fb$result$1 = (int64)-(*(int64*)((uint8*)&CTX$ + 5160ll) >= 2ll);
	label$53:;
	return fb$result$1;
}

static void SECTIONEND( void )
{
	label$54:;
	struct $12SECTIONENTRY* PARENT$1;
	struct $12SECTIONENTRY* CHILD$1;
	if( *(int64*)((uint8*)&CTX$ + 5160ll) <= 0ll ) goto label$57;
	{
		PARENT$1 = (struct $12SECTIONENTRY*)((uint8*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll)) + -40ll);
		CHILD$1 = (struct $12SECTIONENTRY*)((uint8*)&CTX$ + (*(int64*)((uint8*)&CTX$ + 5160ll) * 40ll));
		if( *(int64*)((uint8*)CHILD$1 + 24ll) != 0ll ) goto label$59;
		{
			if( *(int64*)((uint8*)PARENT$1 + 24ll) == 0ll ) goto label$61;
			{
				fb_StrAssign( (void*)PARENT$1, -1ll, (void*)CHILD$1, -1ll, 0 );
				*(int64*)((uint8*)PARENT$1 + 24ll) = 0ll;
			}
			goto label$60;
			label$61:;
			{
				FBSTRING TMP$128$4;
				__builtin_memset( &TMP$128$4, 0, 24ll );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$128$4, (void*)PARENT$1, -1ll, (void*)CHILD$1, -1ll );
				fb_StrAssign( (void*)PARENT$1, -1ll, (void*)vr$19, -1ll, 0 );
			}
			label$60:;
		}
		label$59:;
		label$58:;
	}
	label$57:;
	label$56:;
	*(int64*)((uint8*)&CTX$ + 5160ll) = *(int64*)((uint8*)&CTX$ + 5160ll) + -1ll;
	label$55:;
}

static int64 SECTIONGOSUB( int64 SECTION$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	fb$result$1 = *(int64*)((uint8*)&CTX$ + 5160ll);
	*(int64*)((uint8*)&CTX$ + 5160ll) = SECTION$1;
	*(int64*)((uint8*)&CTX$ + 5168ll) = *(int64*)((uint8*)&CTX$ + 5168ll) + 1ll;
	label$63:;
	return fb$result$1;
}

static void SECTIONRETURN( int64 SECTION$1 )
{
	label$64:;
	*(int64*)((uint8*)&CTX$ + 5168ll) = *(int64*)((uint8*)&CTX$ + 5168ll) + -1ll;
	*(int64*)((uint8*)&CTX$ + 5160ll) = SECTION$1;
	label$65:;
}

static void HWRITELINE( FBSTRING* S$1, int64 NOLINE$1 )
{
	label$66:;
	static FBSTRING LN$1;
	if( (*(int64*)((uint8*)&ENV$ + 296ll) & (int64)-(NOLINE$1 == 0ll)) == 0ll ) goto label$69;
	{
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)"#line ", 7ll, 0 );
		FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)&CTX$ + 5176ll) );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$2, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" \x22", 3ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)((uint8*)&CTX$ + 5184ll), -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22", 2ll, 0 );
		SECTIONWRITELINE( &LN$1 );
	}
	label$69:;
	label$68:;
	SECTIONWRITELINE( S$1 );
	label$67:;
}

static void HUPDATECURRENTFILENAME( uint8* FILENAME$1 )
{
	label$70:;
	FBSTRING* vr$0 = HREPLACE( FILENAME$1, (uint8*)"\x5C", (uint8*)"\x5C\x5C" );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5184ll), -1ll, (void*)vr$0, -1ll, 0 );
	label$71:;
}

static void HWRITESTATICASSERT( FBSTRING* EXPR$1 )
{
	FBSTRING TMP$138$1;
	FBSTRING TMP$139$1;
	FBSTRING TMP$140$1;
	label$72:;
	int64 SECTION$1;
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 64ull) != 0ull ) goto label$75;
	{
		FBSTRING TMP$135$2;
		*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 64ull;
		int64 vr$2 = SECTIONGOSUB( 0ll );
		SECTION$1 = vr$2;
		__builtin_memset( &TMP$135$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$135$2, -1ll, (void*)"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]", 85ll, 0 );
		HWRITELINE( &TMP$135$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$135$2 );
		SECTIONRETURN( SECTION$1 );
	}
	label$75:;
	label$74:;
	__builtin_memset( &TMP$140$1, 0, 24ll );
	__builtin_memset( &TMP$138$1, 0, 24ll );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$138$1, (void*)"__FB_STATIC_ASSERT( ", 21ll, (void*)EXPR$1, -1ll );
	__builtin_memset( &TMP$139$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$139$1, (void*)vr$10, -1ll, (void*)" );", 4ll );
	fb_StrAssign( (void*)&TMP$140$1, -1ll, (void*)vr$13, -1ll, 0 );
	HWRITELINE( &TMP$140$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$140$1 );
	label$73:;
}

static void HAPPENDCTORATTRIB( FBSTRING* LN$1, struct $8FBSYMBOL* PROC$1, int64 IN_FRONT$1 )
{
	label$76:;
	int64 PRIORITY$1;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 196608ll) == 0ll ) goto label$79;
	{
		FBSTRING TMP$144$2;
		FBSTRING TMP$155$2;
		if( IN_FRONT$1 != 0ll ) goto label$81;
		{
			FBSTRING TMP$142$3;
			__builtin_memset( &TMP$142$3, 0, 24ll );
			FBSTRING* vr$4 = fb_StrConcat( &TMP$142$3, (void*)LN$1, -1ll, (void*)" ", 2ll );
			fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$4, -1ll, 0 );
		}
		label$81:;
		label$80:;
		__builtin_memset( &TMP$144$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$144$2, (void*)LN$1, -1ll, (void*)"__attribute__(( ", 17ll );
		fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$7, -1ll, 0 );
		if( (*(int64*)((uint8*)PROC$1 + 24ll) & 65536ll) == 0ll ) goto label$83;
		{
			FBSTRING TMP$146$3;
			__builtin_memset( &TMP$146$3, 0, 24ll );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$146$3, (void*)LN$1, -1ll, (void*)"constructor", 12ll );
			fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$12, -1ll, 0 );
		}
		goto label$82;
		label$83:;
		{
			FBSTRING TMP$148$3;
			__builtin_memset( &TMP$148$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$148$3, (void*)LN$1, -1ll, (void*)"destructor", 11ll );
			fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$15, -1ll, 0 );
		}
		label$82:;
		PRIORITY$1 = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 112ll);
		if( PRIORITY$1 == 0ll ) goto label$85;
		{
			FBSTRING TMP$151$3;
			FBSTRING TMP$152$3;
			FBSTRING TMP$153$3;
			FBSTRING* vr$18 = fb_LongintToStr( PRIORITY$1 );
			__builtin_memset( &TMP$151$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$151$3, (void*)"( ", 3ll, (void*)vr$18, -1ll );
			__builtin_memset( &TMP$152$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$152$3, (void*)vr$21, -1ll, (void*)" )", 3ll );
			__builtin_memset( &TMP$153$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$153$3, (void*)LN$1, -1ll, (void*)vr$24, -1ll );
			fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$27, -1ll, 0 );
		}
		label$85:;
		label$84:;
		__builtin_memset( &TMP$155$2, 0, 24ll );
		FBSTRING* vr$30 = fb_StrConcat( &TMP$155$2, (void*)LN$1, -1ll, (void*)" ))", 4ll );
		fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$30, -1ll, 0 );
		if( IN_FRONT$1 == 0ll ) goto label$87;
		{
			FBSTRING TMP$156$3;
			__builtin_memset( &TMP$156$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$156$3, (void*)LN$1, -1ll, (void*)" ", 2ll );
			fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$33, -1ll, 0 );
		}
		label$87:;
		label$86:;
	}
	label$79:;
	label$78:;
	label$77:;
}

static FBSTRING* HGETMANGLEDNAMEFORASM( struct $8FBSYMBOL* SYM$1, int64 UNDERSCORE_PREFIX$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$88:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	uint8* vr$2 = SYMBGETMANGLEDNAME( SYM$1 );
	fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$2, 0ll, 0 );
	if( (UNDERSCORE_PREFIX$1 & *(int64*)((uint8*)&ENV$ + 536ll)) == 0ll ) goto label$91;
	{
		FBSTRING TMP$158$2;
		__builtin_memset( &TMP$158$2, 0, 24ll );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$158$2, (void*)"_", 2ll, (void*)&MANGLED$1, -1ll );
		fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$8, -1ll, 0 );
	}
	label$91:;
	label$90:;
	int64 vr$10 = FBGETCPUFAMILY(  );
	if( ((int64)-(vr$10 == 0ll) & (int64)-(*(int64*)SYM$1 == 3ll)) == 0ll ) goto label$93;
	{
		if( *(int64*)((uint8*)SYM$1 + 152ll) != 1ll ) goto label$95;
		{
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)"@", 2ll, 0 );
			int64 vr$17 = SYMBPROCCALCSTDCALLSUFFIXN( SYM$1 );
			FBSTRING* vr$18 = fb_LongintToStr( vr$17 );
			fb_StrConcatAssign( (void*)&MANGLED$1, -1ll, (void*)vr$18, -1ll, 0 );
		}
		label$95:;
		label$94:;
	}
	label$93:;
	label$92:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&MANGLED$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$89:;
	FBSTRING* vr$24 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$24;
}

static int64 HNEEDALIAS( struct $8FBSYMBOL* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$96:;
	fb$result$1 = 0ll;
	int64 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0ll ) goto label$99;
	{
		goto label$97;
	}
	label$99:;
	label$98:;
	{
		$13FB_COMPTARGET TMP$160$2;
		TMP$160$2 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
		if( TMP$160$2 == 0ll ) goto label$102;
		label$103:;
		if( TMP$160$2 == 1ll ) goto label$102;
		label$104:;
		if( TMP$160$2 != 4ll ) goto label$101;
		label$102:;
		{
		}
		goto label$100;
		label$101:;
		{
			goto label$97;
		}
		label$105:;
		label$100:;
	}
	{
		$11FB_FUNCMODE TMP$161$2;
		TMP$161$2 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
		if( TMP$161$2 == 2ll ) goto label$108;
		label$109:;
		if( TMP$161$2 != 4ll ) goto label$107;
		label$108:;
		{
			fb$result$1 = -1ll;
		}
		goto label$106;
		label$107:;
		if( TMP$161$2 != 1ll ) goto label$110;
		label$111:;
		{
			fb$result$1 = -1ll;
		}
		label$110:;
		label$106:;
	}
	label$97:;
	return fb$result$1;
}

static FBSTRING* HEMITPROCHEADER( struct $8FBSYMBOL* PROC$1, $16EMITPROC_OPTIONS OPTIONS$1 )
{
	FBSTRING TMP$163$1;
	struct $8FBSYMBOL* TMP$175$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$112:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( OPTIONS$1 != 0ll ) goto label$115;
	{
		HAPPENDCTORATTRIB( &LN$1, PROC$1, -1ll );
	}
	label$115:;
	label$114:;
	if( (OPTIONS$1 & 2ll) != 0ll ) goto label$117;
	{
		if( (*(int64*)((uint8*)PROC$1 + 8ll) & 64ll) == 0ll ) goto label$119;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"static ", 8ll, 0 );
		}
		label$119:;
		label$118:;
	}
	label$117:;
	label$116:;
	FBSTRING* vr$10 = HEMITTYPE( *(int64*)((uint8*)PROC$1 + 160ll), *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 168ll) );
	__builtin_memset( &TMP$163$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$163$1, (void*)&LN$1, -1ll, (void*)vr$10, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$14, -1ll, 0 );
	int64 vr$16 = FBGETCPUFAMILY(  );
	if( vr$16 != 0ll ) goto label$121;
	{
		{
			$11FB_FUNCMODE TMP$164$3;
			TMP$164$3 = *($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll);
			if( TMP$164$3 == 1ll ) goto label$124;
			label$125:;
			if( TMP$164$3 == 2ll ) goto label$124;
			label$126:;
			if( TMP$164$3 != 4ll ) goto label$123;
			label$124:;
			{
				{
					$13FB_COMPTARGET TMP$165$5;
					TMP$165$5 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
					if( TMP$165$5 == 0ll ) goto label$129;
					label$130:;
					if( TMP$165$5 != 4ll ) goto label$128;
					label$129:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __stdcall", 11ll, 0 );
					}
					goto label$127;
					label$128:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __attribute__((stdcall))", 26ll, 0 );
					}
					label$131:;
					label$127:;
				}
			}
			label$123:;
			label$122:;
		}
	}
	label$121:;
	label$120:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$21, 0ll, 0 );
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$133;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"(*", 3ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&MANGLED$1, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)")", 2ll, 0 );
	}
	goto label$132;
	label$133:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&MANGLED$1, -1ll, 0 );
	}
	label$132:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"( ", 3ll, 0 );
	struct $8FBSYMBOL* HIDDEN$1;
	HIDDEN$1 = (struct $8FBSYMBOL*)0ull;
	int64 vr$31 = SYMBPROCRETURNSONSTACK( PROC$1 );
	if( vr$31 == 0ll ) goto label$135;
	{
		if( (OPTIONS$1 & 1ll) == 0ll ) goto label$137;
		{
			FBSTRING TMP$170$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll);
			FBSTRING* vr$51 = HEMITTYPE( ((((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 32505856ll), HIDDEN$1 );
			__builtin_memset( &TMP$170$3, 0, 24ll );
			FBSTRING* vr$55 = fb_StrConcat( &TMP$170$3, (void*)&LN$1, -1ll, (void*)vr$51, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$55, -1ll, 0 );
		}
		goto label$136;
		label$137:;
		{
			FBSTRING TMP$171$3;
			FBSTRING TMP$172$3;
			FBSTRING TMP$173$3;
			HIDDEN$1 = *(struct $8FBSYMBOL**)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll);
			FBSTRING* vr$77 = HEMITTYPE( ((((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)HIDDEN$1 + 56ll) & 511ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)HIDDEN$1 + 64ll) );
			__builtin_memset( &TMP$171$3, 0, 24ll );
			FBSTRING* vr$81 = fb_StrConcat( &TMP$171$3, (void*)&LN$1, -1ll, (void*)vr$77, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$81, -1ll, 0 );
			uint8* vr$83 = SYMBGETMANGLEDNAME( HIDDEN$1 );
			__builtin_memset( &TMP$172$3, 0, 24ll );
			FBSTRING* vr$86 = fb_StrConcat( &TMP$172$3, (void*)" ", 2ll, (void*)vr$83, 0ll );
			__builtin_memset( &TMP$173$3, 0, 24ll );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$173$3, (void*)&LN$1, -1ll, (void*)vr$86, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$90, -1ll, 0 );
		}
		label$136:;
		if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) <= 0ll ) goto label$139;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$139:;
		label$138:;
	}
	label$135:;
	label$134:;
	struct $8FBSYMBOL* PARAM$1;
	if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$140;
	TMP$175$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
	goto label$1169;
	label$140:;
	TMP$175$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	label$1169:;
	PARAM$1 = TMP$175$1;
	if( ((int64)-(HIDDEN$1 == (struct $8FBSYMBOL*)0ull) & (int64)-(PARAM$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$142;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"void", 5ll, 0 );
	}
	label$142:;
	label$141:;
	label$143:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$144;
	{
		struct $8FBSYMBOL* TMP$180$2;
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 4ll ) goto label$146;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"...", 4ll, 0 );
		}
		goto label$145;
		label$146:;
		{
			if( (*(int64*)((uint8*)PARAM$1 + 24ll) & 524288ll) == 0ll ) goto label$148;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"char**", 7ll, 0 );
			}
			goto label$147;
			label$148:;
			{
				_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( PARAM$1, &DTYPE$1, &SUBTYPE$1 );
				FBSTRING* vr$109 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$109, -1ll, 0 );
			}
			label$147:;
			if( (OPTIONS$1 & 1ll) != 0ll ) goto label$150;
			{
				FBSTRING TMP$178$4;
				FBSTRING TMP$179$4;
				uint8* vr$113 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 104ll) );
				__builtin_memset( &TMP$178$4, 0, 24ll );
				FBSTRING* vr$116 = fb_StrConcat( &TMP$178$4, (void*)" ", 2ll, (void*)vr$113, 0ll );
				__builtin_memset( &TMP$179$4, 0, 24ll );
				FBSTRING* vr$120 = fb_StrConcat( &TMP$179$4, (void*)&LN$1, -1ll, (void*)vr$116, -1ll );
				fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$120, -1ll, 0 );
			}
			label$150:;
			label$149:;
		}
		label$145:;
		if( *(int64*)((uint8*)PROC$1 + 152ll) != 4ll ) goto label$151;
		TMP$180$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
		goto label$1170;
		label$151:;
		TMP$180$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		label$1170:;
		PARAM$1 = TMP$180$2;
		if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$153;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$153:;
		label$152:;
	}
	goto label$143;
	label$144:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" )", 3ll, 0 );
	if( ((int64)-((OPTIONS$1 & 2ll) == 0ll) & (int64)-((OPTIONS$1 & 1ll) != 0ll)) == 0ll ) goto label$155;
	{
		int64 vr$132 = HNEEDALIAS( PROC$1 );
		if( vr$132 == 0ll ) goto label$157;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" asm(\x22", 7ll, 0 );
			FBSTRING* vr$134 = HGETMANGLEDNAMEFORASM( PROC$1, -1ll );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$134, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"\x22)", 3ll, 0 );
		}
		label$157:;
		label$156:;
		HAPPENDCTORATTRIB( &LN$1, PROC$1, 0ll );
	}
	label$155:;
	label$154:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&LN$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$113:;
	FBSTRING* vr$143 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$143;
}

static FBSTRING* HGETUDTTAG( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$158:;
	if( *(int64*)SYM$1 != 10ll ) goto label$161;
	{
		if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 1ll) == 0ll ) goto label$163;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"union ", 7ll, 0 );
		}
		goto label$162;
		label$163:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"struct ", 8ll, 0 );
		}
		label$162:;
	}
	label$161:;
	label$160:;
	label$159:;
	FBSTRING* vr$8 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$8;
}

static FBSTRING* HGETUDTID( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$187$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$164:;
	{
		$19FB_CVA_LIST_TYPEDEF TMP$185$2;
		$19FB_CVA_LIST_TYPEDEF vr$3 = SYMBGETVALISTTYPE( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
		TMP$185$2 = vr$3;
		if( TMP$185$2 == 3ll ) goto label$168;
		label$169:;
		if( TMP$185$2 == 4ll ) goto label$168;
		label$170:;
		if( TMP$185$2 != 5ll ) goto label$167;
		label$168:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, *(void**)((uint8*)SYM$1 + 40ll), 0ll, 0 );
			goto label$165;
		}
		label$167:;
		label$166:;
	}
	uint8* vr$6 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$187$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$187$1, (void*)"$", 2ll, (void*)vr$6, 0ll );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$9, -1ll, 0 );
	label$165:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* HGETUDTNAME( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$171:;
	FBSTRING* vr$1 = HGETUDTTAG( SYM$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$1, -1ll, 0 );
	FBSTRING* vr$3 = HGETUDTID( SYM$1 );
	fb_StrConcatAssign( (void*)&fb$result$1, -1ll, (void*)vr$3, -1ll, 0 );
	label$172:;
	FBSTRING* vr$6 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$6;
}

static void HEMITUDT( struct $8FBSYMBOL* S$1, int64 IS_PTR$1 )
{
	label$173:;
	int64 SECTION$1;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$176;
	{
		goto label$174;
	}
	label$176:;
	label$175:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 67108864ll) == 0ll ) goto label$178;
	{
		goto label$174;
	}
	label$178:;
	label$177:;
	if( (*(int64*)((uint8*)S$1 + 8ll) & 128ll) == 0ll ) goto label$180;
	{
		SECTION$1 = (int64)*(uint16*)((uint8*)S$1 + 72ll) + 1ll;
		if( (int64)*(uint16*)((uint8*)S$1 + 72ll) != 0ll ) goto label$182;
		{
			SECTION$1 = SECTION$1 + 1ll;
		}
		goto label$181;
		label$182:;
		if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)S$1 + 248ll) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$183;
		{
			SECTION$1 = SECTION$1 + 1ll;
		}
		label$183:;
		label$181:;
		if( SECTION$1 <= *(int64*)((uint8*)&CTX$ + 5160ll) ) goto label$185;
		{
			SECTION$1 = *(int64*)((uint8*)&CTX$ + 5160ll);
		}
		label$185:;
		label$184:;
	}
	goto label$179;
	label$180:;
	{
		SECTION$1 = 0ll;
	}
	label$179:;
	int64 vr$14 = SECTIONGOSUB( SECTION$1 );
	SECTION$1 = vr$14;
	{
		uint64 TMP$188$2;
		TMP$188$2 = *(uint64*)S$1;
		goto label$187;
		label$188:;
		{
			FBSTRING TMP$191$3;
			FBSTRING TMP$192$3;
			FBSTRING TMP$193$3;
			FBSTRING TMP$194$3;
			FBSTRING TMP$195$3;
			*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 67108864ll;
			__builtin_memset( &TMP$195$3, 0, 24ll );
			FBSTRING* vr$20 = HGETUDTNAME( S$1 );
			FBSTRING* vr$21 = HEMITTYPE( 10ll, (struct $8FBSYMBOL*)0ull );
			__builtin_memset( &TMP$191$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$191$3, (void*)"typedef ", 9ll, (void*)vr$21, -1ll );
			__builtin_memset( &TMP$192$3, 0, 24ll );
			FBSTRING* vr$27 = fb_StrConcat( &TMP$192$3, (void*)vr$24, -1ll, (void*)" ", 2ll );
			__builtin_memset( &TMP$193$3, 0, 24ll );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$193$3, (void*)vr$27, -1ll, (void*)vr$20, -1ll );
			__builtin_memset( &TMP$194$3, 0, 24ll );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$194$3, (void*)vr$30, -1ll, (void*)";", 2ll );
			fb_StrAssign( (void*)&TMP$195$3, -1ll, (void*)vr$33, -1ll, 0 );
			HWRITELINE( &TMP$195$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$195$3 );
		}
		goto label$186;
		label$189:;
		{
			HEMITSTRUCT( S$1, IS_PTR$1 );
		}
		goto label$186;
		label$190:;
		{
			if( (*(int64*)((uint8*)S$1 + 24ll) & 16384ll) == 0ll ) goto label$192;
			{
				FBSTRING DECL$4;
				FBSTRING* vr$39 = HEMITPROCHEADER( S$1, 3ll );
				fb_StrInit( (void*)&DECL$4, -1ll, (void*)vr$39, -1ll, 0 );
				if( (*(int64*)((uint8*)S$1 + 24ll) & 67108864ll) != 0ll ) goto label$194;
				{
					FBSTRING TMP$196$5;
					FBSTRING TMP$197$5;
					FBSTRING TMP$198$5;
					__builtin_memset( &TMP$198$5, 0, 24ll );
					__builtin_memset( &TMP$196$5, 0, 24ll );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$196$5, (void*)"typedef ", 9ll, (void*)&DECL$4, -1ll );
					__builtin_memset( &TMP$197$5, 0, 24ll );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$197$5, (void*)vr$47, -1ll, (void*)";", 2ll );
					fb_StrAssign( (void*)&TMP$198$5, -1ll, (void*)vr$50, -1ll, 0 );
					HWRITELINE( &TMP$198$5, 0ll );
					fb_StrDelete( (FBSTRING*)&TMP$198$5 );
					*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 67108864ll;
				}
				label$194:;
				label$193:;
				fb_StrDelete( (FBSTRING*)&DECL$4 );
			}
			label$192:;
			label$191:;
		}
		goto label$186;
		label$187:;
		static const void* tmp$692[8ll] = {
			&&label$190,
			&&label$186,
			&&label$186,
			&&label$186,
			&&label$186,
			&&label$186,
			&&label$188,
			&&label$189,
		};
		if( (TMP$188$2 - 3ull) > 7ull ) goto label$186;
		goto *tmp$692[TMP$188$2 - 3ull];
		label$186:;
	}
	SECTIONRETURN( SECTION$1 );
	label$174:;
}

static FBSTRING* HEMITARRAYDECL( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$195:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) == 0ll ) goto label$198;
	{
		fb_StrDelete( (FBSTRING*)&S$1 );
		goto label$196;
	}
	label$198:;
	label$197:;
	{
		$12FB_SYMBCLASS TMP$199$2;
		TMP$199$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$199$2 == 1ll ) goto label$201;
		label$202:;
		if( TMP$199$2 != 12ll ) goto label$200;
		label$201:;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) != 0ll ) goto label$204;
			{
				{
					int64 I$5;
					I$5 = 0ll;
					int64 TMP$200$5;
					TMP$200$5 = *(int64*)((uint8*)SYM$1 + 104ll) + -1ll;
					goto label$205;
					label$208:;
					{
						FBSTRING TMP$203$6;
						FBSTRING TMP$204$6;
						FBSTRING TMP$205$6;
						FBSTRING* vr$18 = fb_LongintToStr( (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll))) + 8ll) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 112ll) + (I$5 << (4ll & 63ll)))) + 1ll );
						__builtin_memset( &TMP$203$6, 0, 24ll );
						FBSTRING* vr$21 = fb_StrConcat( &TMP$203$6, (void*)"[", 2ll, (void*)vr$18, -1ll );
						__builtin_memset( &TMP$204$6, 0, 24ll );
						FBSTRING* vr$24 = fb_StrConcat( &TMP$204$6, (void*)vr$21, -1ll, (void*)"]", 2ll );
						__builtin_memset( &TMP$205$6, 0, 24ll );
						FBSTRING* vr$28 = fb_StrConcat( &TMP$205$6, (void*)&S$1, -1ll, (void*)vr$24, -1ll );
						fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$28, -1ll, 0 );
					}
					label$206:;
					I$5 = I$5 + 1ll;
					label$205:;
					if( I$5 <= TMP$200$5 ) goto label$208;
					label$207:;
				}
			}
			label$204:;
			label$203:;
		}
		label$200:;
		label$199:;
	}
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) != 0ll ) goto label$210;
	{
		int64 LENGTH$2;
		LENGTH$2 = 0ll;
		{
			int64 TMP$206$3;
			TMP$206$3 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
			if( TMP$206$3 == 18ll ) goto label$213;
			label$214:;
			if( TMP$206$3 != 4ll ) goto label$212;
			label$213:;
			{
				LENGTH$2 = *(int64*)((uint8*)SYM$1 + 80ll);
			}
			goto label$211;
			label$212:;
			if( TMP$206$3 != 7ll ) goto label$215;
			label$216:;
			{
				LENGTH$2 = *(int64*)((uint8*)SYM$1 + 80ll) / *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
			}
			label$215:;
			label$211:;
		}
		if( LENGTH$2 <= 0ll ) goto label$218;
		{
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"[", 2ll, 0 );
			FBSTRING* vr$39 = fb_LongintToStr( LENGTH$2 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$39, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"]", 2ll, 0 );
		}
		label$218:;
		label$217:;
	}
	label$210:;
	label$209:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$196:;
	FBSTRING* vr$46 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$46;
}

static void HEMITVARDECL( int64 USE_EXTERN$1, struct $8FBSYMBOL* SYM$1, uint8* VARINI$1 )
{
	FBSTRING TMP$208$1;
	FBSTRING TMP$209$1;
	FBSTRING TMP$210$1;
	label$219:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	if( USE_EXTERN$1 == 0ll ) goto label$222;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"extern ", 8ll, 0 );
	}
	goto label$221;
	label$222:;
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 56ll) == 0ll)) == 0ll ) goto label$223;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"static ", 8ll, 0 );
	}
	label$223:;
	label$221:;
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 8ll );
	SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
	FBSTRING* vr$15 = HEMITTYPE( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	__builtin_memset( &TMP$208$1, 0, 24ll );
	FBSTRING* vr$19 = fb_StrConcat( &TMP$208$1, (void*)&LN$1, -1ll, (void*)vr$15, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$19, -1ll, 0 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	__builtin_memset( &TMP$209$1, 0, 24ll );
	FBSTRING* vr$24 = fb_StrConcat( &TMP$209$1, (void*)" ", 2ll, (void*)vr$21, 0ll );
	__builtin_memset( &TMP$210$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$210$1, (void*)&LN$1, -1ll, (void*)vr$24, -1ll );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$28, -1ll, 0 );
	FBSTRING* vr$30 = HEMITARRAYDECL( SYM$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$30, -1ll, 0 );
	if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 8ll) != 0ll) & ~USE_EXTERN$1) == 0ll ) goto label$225;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __attribute__((common))", 25ll, 0 );
	}
	label$225:;
	label$224:;
	if( VARINI$1 == (uint8*)0ull ) goto label$227;
	{
		FBSTRING TMP$213$2;
		FBSTRING TMP$214$2;
		__builtin_memset( &TMP$213$2, 0, 24ll );
		FBSTRING* vr$40 = fb_StrConcat( &TMP$213$2, (void*)" = ", 4ll, (void*)VARINI$1, 0ll );
		__builtin_memset( &TMP$214$2, 0, 24ll );
		FBSTRING* vr$44 = fb_StrConcat( &TMP$214$2, (void*)&LN$1, -1ll, (void*)vr$40, -1ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$44, -1ll, 0 );
	}
	label$227:;
	label$226:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)";", 2ll, 0 );
	HWRITELINE( &LN$1, 0ll );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$220:;
}

static void HMAYBEEMITLOCALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$228:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) == 0ll ) goto label$231;
	{
		goto label$229;
	}
	label$231:;
	label$230:;
	if( ((int64)-(*(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) != (struct $7ASTNODE*)0ull) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll)) == 0ll ) goto label$233;
	{
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
	}
	goto label$232;
	label$233:;
	{
		HEMITVARDECL( 0ll, SYM$1, (uint8*)0ull );
	}
	label$232:;
	label$229:;
}

static void HALLOCGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$234:;
	if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 96ll) == (struct $7ASTNODE*)0ull ) goto label$237;
	{
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 32ll) == 0ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) == 0ll)) == 0ll ) goto label$239;
		{
			goto label$235;
		}
		label$239:;
		label$238:;
		IRHLFLUSHSTATICINITIALIZER( SYM$1 );
	}
	goto label$236;
	label$237:;
	{
		HEMITVARDECL( 0ll, SYM$1, (uint8*)0ull );
	}
	label$236:;
	label$235:;
}

static void HMAYBEEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1 )
{
	label$240:;
	if( (((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 1024ll) != 0ll) | ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 16ll) != 0ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 24ll) & 2ll) == 0ll))) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 16388ll) != 0ll)) == 0ll ) goto label$243;
	{
		goto label$241;
	}
	label$243:;
	label$242:;
	{
		int64 TMP$215$2;
		TMP$215$2 = *(int64*)((uint8*)&CTX$ + 5512ll);
		if( TMP$215$2 != 1ll ) goto label$245;
		label$246:;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 56ll) == 0ll ) goto label$248;
			{
				HEMITVARDECL( -1ll, SYM$1, (uint8*)0ull );
			}
			goto label$247;
			label$248:;
			{
				HALLOCGLOBALVAR( SYM$1 );
			}
			label$247:;
		}
		goto label$244;
		label$245:;
		if( TMP$215$2 != 2ll ) goto label$249;
		label$250:;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 40ll) == 0ll ) goto label$252;
			{
				HALLOCGLOBALVAR( SYM$1 );
			}
			label$252:;
			label$251:;
		}
		label$249:;
		label$244:;
	}
	label$241:;
}

static void HMAYBEEMITGLOBALVAREXCEPTDATASTMT( struct $8FBSYMBOL* SYM$1 )
{
	label$253:;
	int64 vr$0 = SYMBISDATADESC( SYM$1 );
	if( vr$0 == 0ll ) goto label$256;
	{
		goto label$254;
	}
	label$256:;
	label$255:;
	HMAYBEEMITGLOBALVAR( SYM$1 );
	label$254:;
}

static void HMAYBEEMITPROCPROTO( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$216$1;
	FBSTRING TMP$217$1;
	label$257:;
	int64 SECTION$1;
	if( ((int64)-((*(int64*)((uint8*)S$1 + 24ll) & 16384ll) != 0ll) | (int64)-((*(int64*)((uint8*)S$1 + 24ll) & 2ll) == 0ll)) == 0ll ) goto label$260;
	{
		goto label$258;
	}
	label$260:;
	label$259:;
	uint8* vr$7 = SYMBGETMANGLEDNAME( S$1 );
	if( vr$7 != (uint8*)0ull ) goto label$262;
	{
		goto label$258;
	}
	label$262:;
	label$261:;
	int64 vr$8 = SECTIONGOSUB( 0ll );
	SECTION$1 = vr$8;
	__builtin_memset( &TMP$217$1, 0, 24ll );
	FBSTRING* vr$10 = HEMITPROCHEADER( S$1, 1ll );
	__builtin_memset( &TMP$216$1, 0, 24ll );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$216$1, (void*)vr$10, -1ll, (void*)";", 2ll );
	fb_StrAssign( (void*)&TMP$217$1, -1ll, (void*)vr$13, -1ll, 0 );
	HWRITELINE( &TMP$217$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$217$1 );
	SECTIONRETURN( SECTION$1 );
	label$258:;
}

static void HEMITFIELDTYPES( struct $8FBSYMBOL* UDT$1 )
{
	label$263:;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* vr$0 = SYMBUDTGETFIRSTFIELD( UDT$1 );
	FLD$1 = vr$0;
	label$265:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$266;
	{
		HEMITUDT( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), (int64)-(((*(int64*)((uint8*)FLD$1 + 56ll) & 511ll) & 480ll) != 0ll) );
		struct $8FBSYMBOL* vr$6 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$6;
	}
	goto label$265;
	label$266:;
	label$264:;
}

static struct $8FBSYMBOL** HFINDPARENTANONALREADYONSTACK( struct $8FBSYMBOL* FLD$1 )
{
	struct $8FBSYMBOL** fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$267:;
	struct $8FBSYMBOL** ANONNODE$1;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 296ll);
	label$269:;
	{
		void* vr$3 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll) );
		ANONNODE$1 = (struct $8FBSYMBOL**)vr$3;
		label$272:;
		if( ANONNODE$1 == (struct $8FBSYMBOL**)0ull ) goto label$273;
		{
			if( *ANONNODE$1 != PARENT$1 ) goto label$275;
			{
				fb$result$1 = ANONNODE$1;
				goto label$268;
			}
			label$275:;
			label$274:;
			void* vr$5 = LISTGETPREV( (void*)ANONNODE$1 );
			ANONNODE$1 = (struct $8FBSYMBOL**)vr$5;
		}
		goto label$272;
		label$273:;
		PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 296ll);
	}
	label$271:;
	if( PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$269;
	label$270:;
	fb$result$1 = (struct $8FBSYMBOL**)0ull;
	label$268:;
	return fb$result$1;
}

static void HPUSHANONPARENTS( struct $8FBSYMBOL* BASEPARENT$1, struct $8FBSYMBOL* PARENT$1 )
{
	label$276:;
	if( PARENT$1 != BASEPARENT$1 ) goto label$279;
	{
		goto label$277;
	}
	label$279:;
	label$278:;
	HPUSHANONPARENTS( BASEPARENT$1, *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 296ll) );
	if( ((int64)*(int32*)((uint8*)PARENT$1 + 208ll) & 1ll) == 0ll ) goto label$281;
	{
		FBSTRING TMP$219$2;
		__builtin_memset( &TMP$219$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$219$2, -1ll, (void*)"union {", 8ll, 0 );
		HWRITELINE( &TMP$219$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$219$2 );
	}
	goto label$280;
	label$281:;
	{
		FBSTRING TMP$221$2;
		__builtin_memset( &TMP$221$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$221$2, -1ll, (void*)"struct {", 9ll, 0 );
		HWRITELINE( &TMP$221$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$221$2 );
	}
	label$280:;
	SECTIONINDENT(  );
	void* vr$13 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll) );
	*(struct $8FBSYMBOL**)vr$13 = PARENT$1;
	label$277:;
}

static void HPOPANONPARENTS( struct $8FBSYMBOL** ANONNODE$1 )
{
	label$282:;
	label$284:;
	void* vr$1 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll) );
	if( (uint64)vr$1 == (uint64)ANONNODE$1 ) goto label$285;
	{
		FBSTRING TMP$223$2;
		SECTIONUNINDENT(  );
		__builtin_memset( &TMP$223$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$223$2, -1ll, (void*)"};", 3ll, 0 );
		HWRITELINE( &TMP$223$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$223$2 );
		void* vr$7 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll) );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5216ll), vr$7 );
	}
	goto label$284;
	label$285:;
	label$283:;
}

static void HEMITSTRUCTWITHFIELDS( struct $8FBSYMBOL* S$1 )
{
	label$286:;
	int64 SKIP$1;
	int64 DTYPE$1;
	int64 ALIGN$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL** ANONNODE$1;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	struct $8FBSYMBOL* vr$1 = SYMBUDTGETFIRSTFIELD( S$1 );
	FLD$1 = vr$1;
	label$288:;
	if( FLD$1 == (struct $8FBSYMBOL*)0ull ) goto label$289;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 296ll) != S$1 ) goto label$291;
		{
			HPOPANONPARENTS( (struct $8FBSYMBOL**)0ull );
		}
		goto label$290;
		label$291:;
		{
			struct $8FBSYMBOL* TMP$224$3;
			struct $8FBSYMBOL** vr$3 = HFINDPARENTANONALREADYONSTACK( FLD$1 );
			ANONNODE$1 = vr$3;
			HPOPANONPARENTS( ANONNODE$1 );
			if( ANONNODE$1 == (struct $8FBSYMBOL**)0ull ) goto label$292;
			TMP$224$3 = *ANONNODE$1;
			goto label$1171;
			label$292:;
			TMP$224$3 = S$1;
			label$1171:;
			HPUSHANONPARENTS( TMP$224$3, *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 296ll) );
		}
		label$290:;
		SKIP$1 = (int64)-((*(int64*)((uint8*)FLD$1 + 8ll) & 4ll) != 0ll);
		if( SKIP$1 != 0ll ) goto label$294;
		{
			FBSTRING TMP$225$3;
			FBSTRING TMP$226$3;
			int64 TMP$230$3;
			DTYPE$1 = *(int64*)((uint8*)FLD$1 + 56ll) & 511ll;
			SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll);
			FBSTRING* vr$12 = HEMITTYPE( DTYPE$1, SUBTYPE$1 );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$12, -1ll, 0 );
			__builtin_memset( &TMP$225$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$225$3, (void*)" ", 2ll, *(void**)((uint8*)FLD$1 + 32ll), 0ll );
			__builtin_memset( &TMP$226$3, 0, 24ll );
			FBSTRING* vr$21 = fb_StrConcat( &TMP$226$3, (void*)&LN$1, -1ll, (void*)vr$17, -1ll );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$21, -1ll, 0 );
			FBSTRING* vr$23 = HEMITARRAYDECL( FLD$1 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$23, -1ll, 0 );
			ALIGN$1 = (int64)*(uint8*)((uint8*)S$1 + 213ll);
			if( ALIGN$1 <= 0ll ) goto label$296;
			{
				int64 TMP$227$4;
				int64 vr$27 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
				SKIP$1 = (int64)-(ALIGN$1 >= vr$27);
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$297;
				TMP$227$4 = 24ll;
				goto label$1172;
				label$297:;
				TMP$227$4 = DTYPE$1 & 31ll;
				label$1172:;
				if( TMP$227$4 != 20ll ) goto label$299;
				{
					uint8 FIELDUDTALIGN$5;
					FIELDUDTALIGN$5 = *(uint8*)((uint8*)SUBTYPE$1 + 213ll);
					if( (int64)FIELDUDTALIGN$5 <= 0ll ) goto label$301;
					{
						SKIP$1 = SKIP$1 | (int64)-(ALIGN$1 >= (int64)FIELDUDTALIGN$5);
					}
					label$301:;
					label$300:;
				}
				label$299:;
				label$298:;
				if( SKIP$1 != 0ll ) goto label$303;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __attribute__((packed, aligned(", 33ll, 0 );
					FBSTRING* vr$37 = fb_LongintToStr( ALIGN$1 );
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$37, -1ll, 0 );
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)")))", 4ll, 0 );
				}
				label$303:;
				label$302:;
			}
			label$296:;
			label$295:;
			if( ALIGN$1 <= 0ll ) goto label$304;
			TMP$230$3 = (int64)-(SKIP$1 != 0ll);
			goto label$1173;
			label$304:;
			TMP$230$3 = -1ll;
			label$1173:;
			if( TMP$230$3 == 0ll ) goto label$306;
			{
				int64 TMP$231$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$307;
				TMP$231$4 = 24ll;
				goto label$1174;
				label$307:;
				TMP$231$4 = DTYPE$1 & 31ll;
				label$1174:;
				if( TMP$231$4 != 20ll ) goto label$309;
				{
					int64 TMP$232$5;
					int64 TMP$233$5;
					int64 EFFECTIVEALIGN$5;
					int64 vr$43 = TYPECALCNATURALALIGN( DTYPE$1, SUBTYPE$1 );
					EFFECTIVEALIGN$5 = vr$43;
					if( ALIGN$1 <= 0ll ) goto label$310;
					TMP$232$5 = (int64)-(ALIGN$1 < EFFECTIVEALIGN$5);
					goto label$1175;
					label$310:;
					TMP$232$5 = 0ll;
					label$1175:;
					if( TMP$232$5 == 0ll ) goto label$312;
					{
						EFFECTIVEALIGN$5 = ALIGN$1;
					}
					label$312:;
					label$311:;
					uint8 FIELDUDTALIGN$5;
					FIELDUDTALIGN$5 = *(uint8*)((uint8*)SUBTYPE$1 + 213ll);
					if( (int64)FIELDUDTALIGN$5 <= 0ll ) goto label$313;
					TMP$233$5 = (int64)-(EFFECTIVEALIGN$5 > (int64)FIELDUDTALIGN$5);
					goto label$1176;
					label$313:;
					TMP$233$5 = 0ll;
					label$1176:;
					if( TMP$233$5 == 0ll ) goto label$315;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __attribute__((aligned(", 25ll, 0 );
						FBSTRING* vr$50 = fb_LongintToStr( EFFECTIVEALIGN$5 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$50, -1ll, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)")))", 4ll, 0 );
					}
					label$315:;
					label$314:;
				}
				label$309:;
				label$308:;
			}
			label$306:;
			label$305:;
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)";", 2ll, 0 );
			HWRITELINE( &LN$1, -1ll );
		}
		label$294:;
		label$293:;
		struct $8FBSYMBOL* vr$55 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$55;
	}
	goto label$288;
	label$289:;
	HPOPANONPARENTS( (struct $8FBSYMBOL**)0ull );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$287:;
}

static void HEMITSTRUCT( struct $8FBSYMBOL* S$1, int64 IS_PTR$1 )
{
	FBSTRING TMP$244$1;
	FBSTRING TMP$247$1;
	FBSTRING TMP$248$1;
	FBSTRING TMP$249$1;
	FBSTRING TMP$250$1;
	FBSTRING TMP$251$1;
	label$316:;
	int64 EMIT_FIELDS$1;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	if( (*(int64*)((uint8*)S$1 + 24ll) & 134217728ll) == 0ll ) goto label$319;
	{
		if( IS_PTR$1 == 0ll ) goto label$321;
		{
			if( (*(int64*)((uint8*)S$1 + 24ll) & 2ll) != 0ll ) goto label$323;
			{
				FBSTRING TMP$235$4;
				FBSTRING TMP$236$4;
				*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 2ll;
				__builtin_memset( &TMP$236$4, 0, 24ll );
				FBSTRING* vr$9 = HGETUDTNAME( S$1 );
				__builtin_memset( &TMP$235$4, 0, 24ll );
				FBSTRING* vr$12 = fb_StrConcat( &TMP$235$4, (void*)vr$9, -1ll, (void*)";", 2ll );
				fb_StrAssign( (void*)&TMP$236$4, -1ll, (void*)vr$12, -1ll, 0 );
				HWRITELINE( &TMP$236$4, 0ll );
				fb_StrDelete( (FBSTRING*)&TMP$236$4 );
			}
			label$323:;
			label$322:;
			fb_StrDelete( (FBSTRING*)&LN$1 );
			goto label$317;
		}
		label$321:;
		label$320:;
	}
	label$319:;
	label$318:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 134217728ll;
	EMIT_FIELDS$1 = (int64)-(((int64)*(int32*)((uint8*)S$1 + 208ll) & 32768ll) == 0ll);
	if( EMIT_FIELDS$1 == 0ll ) goto label$325;
	{
		HEMITFIELDTYPES( S$1 );
	}
	label$325:;
	label$324:;
	if( (*(int64*)((uint8*)S$1 + 24ll) & 67108864ll) == 0ll ) goto label$327;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$317;
	}
	label$327:;
	label$326:;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) | 67108864ll;
	FBSTRING* vr$30 = HGETUDTTAG( S$1 );
	fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$30, -1ll, 0 );
	if( ((int64)-(*(int64*)((uint8*)&ENV$ + 216ll) == 0ll) & (int64)-((int64)*(uint8*)((uint8*)S$1 + 213ll) > 0ll)) == 0ll ) goto label$329;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"__attribute__((gcc_struct)) ", 29ll, 0 );
	}
	label$329:;
	label$328:;
	FBSTRING* vr$38 = HGETUDTID( S$1 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$38, -1ll, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" {", 3ll, 0 );
	HWRITELINE( &LN$1, -1ll );
	SECTIONINDENT(  );
	if( EMIT_FIELDS$1 == 0ll ) goto label$331;
	{
		HEMITSTRUCTWITHFIELDS( S$1 );
	}
	goto label$330;
	label$331:;
	{
		FBSTRING TMP$241$2;
		FBSTRING TMP$242$2;
		FBSTRING TMP$243$2;
		__builtin_memset( &TMP$243$2, 0, 24ll );
		FBSTRING* vr$44 = fb_LongintToStr( *(int64*)((uint8*)S$1 + 80ll) );
		__builtin_memset( &TMP$241$2, 0, 24ll );
		FBSTRING* vr$47 = fb_StrConcat( &TMP$241$2, (void*)"uint8 __fb_struct_body[", 24ll, (void*)vr$44, -1ll );
		__builtin_memset( &TMP$242$2, 0, 24ll );
		FBSTRING* vr$50 = fb_StrConcat( &TMP$242$2, (void*)vr$47, -1ll, (void*)"];", 3ll );
		fb_StrAssign( (void*)&TMP$243$2, -1ll, (void*)vr$50, -1ll, 0 );
		HWRITELINE( &TMP$243$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$243$2 );
	}
	label$330:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$244$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$244$1, -1ll, (void*)"};", 3ll, 0 );
	HWRITELINE( &TMP$244$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$244$1 );
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = *(int64*)((uint8*)S$1 + 24ll) & -134217729ll;
	__builtin_memset( &TMP$251$1, 0, 24ll );
	FBSTRING* vr$63 = fb_ULongintToStr( *(uint64*)((uint8*)S$1 + 80ll) );
	FBSTRING* vr$64 = HGETUDTID( S$1 );
	FBSTRING* vr$65 = HGETUDTTAG( S$1 );
	__builtin_memset( &TMP$247$1, 0, 24ll );
	FBSTRING* vr$68 = fb_StrConcat( &TMP$247$1, (void*)"sizeof( ", 9ll, (void*)vr$65, -1ll );
	__builtin_memset( &TMP$248$1, 0, 24ll );
	FBSTRING* vr$71 = fb_StrConcat( &TMP$248$1, (void*)vr$68, -1ll, (void*)vr$64, -1ll );
	__builtin_memset( &TMP$249$1, 0, 24ll );
	FBSTRING* vr$74 = fb_StrConcat( &TMP$249$1, (void*)vr$71, -1ll, (void*)" ) == ", 7ll );
	__builtin_memset( &TMP$250$1, 0, 24ll );
	FBSTRING* vr$77 = fb_StrConcat( &TMP$250$1, (void*)vr$74, -1ll, (void*)vr$63, -1ll );
	fb_StrAssign( (void*)&TMP$251$1, -1ll, (void*)vr$77, -1ll, 0 );
	HWRITESTATICASSERT( &TMP$251$1 );
	fb_StrDelete( (FBSTRING*)&TMP$251$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$317:;
}

static void HWRITEX86F2I( FBSTRING* FNAME$1, int64 RTYPE$1, int64 PTYPE$1 )
{
	FBSTRING TMP$257$1;
	FBSTRING TMP$261$1;
	FBSTRING TMP$262$1;
	FBSTRING TMP$263$1;
	FBSTRING TMP$264$1;
	FBSTRING TMP$265$1;
	FBSTRING TMP$266$1;
	FBSTRING TMP$267$1;
	FBSTRING TMP$269$1;
	FBSTRING TMP$272$1;
	FBSTRING TMP$273$1;
	FBSTRING TMP$274$1;
	FBSTRING TMP$276$1;
	FBSTRING TMP$279$1;
	FBSTRING TMP$280$1;
	FBSTRING TMP$281$1;
	FBSTRING TMP$284$1;
	FBSTRING TMP$285$1;
	FBSTRING TMP$286$1;
	FBSTRING TMP$288$1;
	FBSTRING TMP$290$1;
	FBSTRING TMP$292$1;
	FBSTRING TMP$294$1;
	FBSTRING TMP$296$1;
	FBSTRING TMP$298$1;
	label$332:;
	FBSTRING RTYPE_STR$1;
	FBSTRING* vr$0 = HEMITTYPE( RTYPE$1, (struct $8FBSYMBOL*)0ull );
	fb_StrInit( (void*)&RTYPE_STR$1, -1ll, (void*)vr$0, -1ll, 0 );
	FBSTRING PTYPE_STR$1;
	FBSTRING* vr$2 = HEMITTYPE( PTYPE$1, (struct $8FBSYMBOL*)0ull );
	fb_StrInit( (void*)&PTYPE_STR$1, -1ll, (void*)vr$2, -1ll, 0 );
	FBSTRING RTYPE_SUFFIX$1;
	__builtin_memset( &RTYPE_SUFFIX$1, 0, 24ll );
	FBSTRING PTYPE_SUFFIX$1;
	__builtin_memset( &PTYPE_SUFFIX$1, 0, 24ll );
	if( *(int64*)((uint8*)&ENV$ + 264ll) != 1ll ) goto label$335;
	{
		{
			int64 TMP$252$3;
			int64 TMP$253$3;
			if( (RTYPE$1 & 480ll) == 0ll ) goto label$336;
			TMP$252$3 = 24ll;
			goto label$1177;
			label$336:;
			TMP$252$3 = RTYPE$1 & 31ll;
			label$1177:;
			TMP$253$3 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$252$3 * 56ll)) + 8ll);
			if( TMP$253$3 != 4ll ) goto label$338;
			label$339:;
			{
				fb_StrAssign( (void*)&RTYPE_SUFFIX$1, -1ll, (void*)"l", 2ll, 0 );
			}
			goto label$337;
			label$338:;
			if( TMP$253$3 != 8ll ) goto label$340;
			label$341:;
			{
				fb_StrAssign( (void*)&RTYPE_SUFFIX$1, -1ll, (void*)"q", 2ll, 0 );
			}
			label$340:;
			label$337:;
		}
		if( PTYPE$1 != 15ll ) goto label$343;
		{
			fb_StrAssign( (void*)&PTYPE_SUFFIX$1, -1ll, (void*)"s", 2ll, 0 );
		}
		goto label$342;
		label$343:;
		{
			fb_StrAssign( (void*)&PTYPE_SUFFIX$1, -1ll, (void*)"l", 2ll, 0 );
		}
		label$342:;
	}
	label$335:;
	label$334:;
	__builtin_memset( &TMP$257$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$257$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$257$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$257$1 );
	__builtin_memset( &TMP$267$1, 0, 24ll );
	__builtin_memset( &TMP$261$1, 0, 24ll );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$261$1, (void*)"static inline ", 15ll, (void*)&RTYPE_STR$1, -1ll );
	__builtin_memset( &TMP$262$1, 0, 24ll );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$262$1, (void*)vr$22, -1ll, (void*)" fb_", 5ll );
	__builtin_memset( &TMP$263$1, 0, 24ll );
	FBSTRING* vr$28 = fb_StrConcat( &TMP$263$1, (void*)vr$25, -1ll, (void*)FNAME$1, -1ll );
	__builtin_memset( &TMP$264$1, 0, 24ll );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$264$1, (void*)vr$28, -1ll, (void*)"( ", 3ll );
	__builtin_memset( &TMP$265$1, 0, 24ll );
	FBSTRING* vr$34 = fb_StrConcat( &TMP$265$1, (void*)vr$31, -1ll, (void*)&PTYPE_STR$1, -1ll );
	__builtin_memset( &TMP$266$1, 0, 24ll );
	FBSTRING* vr$37 = fb_StrConcat( &TMP$266$1, (void*)vr$34, -1ll, (void*)" value )", 9ll );
	fb_StrAssign( (void*)&TMP$267$1, -1ll, (void*)vr$37, -1ll, 0 );
	HWRITELINE( &TMP$267$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$267$1 );
	__builtin_memset( &TMP$269$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$269$1, -1ll, (void*)"{", 2ll, 0 );
	HWRITELINE( &TMP$269$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$269$1 );
	SECTIONINDENT(  );
	__builtin_memset( &TMP$274$1, 0, 24ll );
	__builtin_memset( &TMP$272$1, 0, 24ll );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$272$1, (void*)"volatile ", 10ll, (void*)&RTYPE_STR$1, -1ll );
	__builtin_memset( &TMP$273$1, 0, 24ll );
	FBSTRING* vr$52 = fb_StrConcat( &TMP$273$1, (void*)vr$49, -1ll, (void*)" result;", 9ll );
	fb_StrAssign( (void*)&TMP$274$1, -1ll, (void*)vr$52, -1ll, 0 );
	HWRITELINE( &TMP$274$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$274$1 );
	__builtin_memset( &TMP$276$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$276$1, -1ll, (void*)"__asm__(", 9ll, 0 );
	HWRITELINE( &TMP$276$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$276$1 );
	SECTIONINDENT(  );
	__builtin_memset( &TMP$281$1, 0, 24ll );
	__builtin_memset( &TMP$279$1, 0, 24ll );
	FBSTRING* vr$64 = fb_StrConcat( &TMP$279$1, (void*)"\x22" "fld", 5ll, (void*)&PTYPE_SUFFIX$1, -1ll );
	__builtin_memset( &TMP$280$1, 0, 24ll );
	FBSTRING* vr$67 = fb_StrConcat( &TMP$280$1, (void*)vr$64, -1ll, (void*)" %1;\x22", 6ll );
	fb_StrAssign( (void*)&TMP$281$1, -1ll, (void*)vr$67, -1ll, 0 );
	HWRITELINE( &TMP$281$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$281$1 );
	__builtin_memset( &TMP$286$1, 0, 24ll );
	__builtin_memset( &TMP$284$1, 0, 24ll );
	FBSTRING* vr$75 = fb_StrConcat( &TMP$284$1, (void*)"\x22" "fistp", 7ll, (void*)&RTYPE_SUFFIX$1, -1ll );
	__builtin_memset( &TMP$285$1, 0, 24ll );
	FBSTRING* vr$78 = fb_StrConcat( &TMP$285$1, (void*)vr$75, -1ll, (void*)" %0;\x22", 6ll );
	fb_StrAssign( (void*)&TMP$286$1, -1ll, (void*)vr$78, -1ll, 0 );
	HWRITELINE( &TMP$286$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$286$1 );
	__builtin_memset( &TMP$288$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$288$1, -1ll, (void*)":\x22=m\x22 (result)", 15ll, 0 );
	HWRITELINE( &TMP$288$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$288$1 );
	__builtin_memset( &TMP$290$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$290$1, -1ll, (void*)":\x22m\x22 (value)", 13ll, 0 );
	HWRITELINE( &TMP$290$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$290$1 );
	__builtin_memset( &TMP$292$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$292$1, -1ll, (void*)":\x22st\x22", 6ll, 0 );
	HWRITELINE( &TMP$292$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$292$1 );
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$294$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$294$1, -1ll, (void*)");", 3ll, 0 );
	HWRITELINE( &TMP$294$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$294$1 );
	__builtin_memset( &TMP$296$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$296$1, -1ll, (void*)"return result;", 15ll, 0 );
	HWRITELINE( &TMP$296$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$296$1 );
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$298$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$298$1, -1ll, (void*)"}", 2ll, 0 );
	HWRITELINE( &TMP$298$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$298$1 );
	fb_StrDelete( (FBSTRING*)&PTYPE_SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&RTYPE_SUFFIX$1 );
	fb_StrDelete( (FBSTRING*)&PTYPE_STR$1 );
	fb_StrDelete( (FBSTRING*)&RTYPE_STR$1 );
	label$333:;
}

static void HWRITEGENERICF2I( FBSTRING* FNAME$1, int64 RTYPE$1, int64 PTYPE$1 )
{
	FBSTRING TMP$305$1;
	FBSTRING TMP$306$1;
	FBSTRING TMP$307$1;
	FBSTRING TMP$308$1;
	FBSTRING TMP$309$1;
	FBSTRING TMP$310$1;
	FBSTRING TMP$311$1;
	label$344:;
	FBSTRING CALLNAME$1;
	__builtin_memset( &CALLNAME$1, 0, 24ll );
	if( PTYPE$1 != 15ll ) goto label$347;
	{
		fb_StrAssign( (void*)&CALLNAME$1, -1ll, (void*)"nearbyintf", 11ll, 0 );
	}
	goto label$346;
	label$347:;
	{
		fb_StrAssign( (void*)&CALLNAME$1, -1ll, (void*)"nearbyint", 10ll, 0 );
	}
	label$346:;
	__builtin_memset( &TMP$311$1, 0, 24ll );
	FBSTRING* vr$5 = HEMITTYPE( RTYPE$1, (struct $8FBSYMBOL*)0ull );
	__builtin_memset( &TMP$305$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$305$1, (void*)"#define fb_", 12ll, (void*)FNAME$1, -1ll );
	__builtin_memset( &TMP$306$1, 0, 24ll );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$306$1, (void*)vr$8, -1ll, (void*)"( value ) ((", 13ll );
	__builtin_memset( &TMP$307$1, 0, 24ll );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$307$1, (void*)vr$11, -1ll, (void*)vr$5, -1ll );
	__builtin_memset( &TMP$308$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$308$1, (void*)vr$14, -1ll, (void*)")__builtin_", 12ll );
	__builtin_memset( &TMP$309$1, 0, 24ll );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$309$1, (void*)vr$17, -1ll, (void*)&CALLNAME$1, -1ll );
	__builtin_memset( &TMP$310$1, 0, 24ll );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$310$1, (void*)vr$20, -1ll, (void*)"( value ))", 11ll );
	fb_StrAssign( (void*)&TMP$311$1, -1ll, (void*)vr$23, -1ll, 0 );
	HWRITELINE( &TMP$311$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$311$1 );
	fb_StrDelete( (FBSTRING*)&CALLNAME$1 );
	label$345:;
}

static void HWRITEF2I( FBSTRING* FNAME$1, int64 RTYPE$1, int64 PTYPE$1 )
{
	label$348:;
	int64 vr$0 = FBGETCPUFAMILY(  );
	if( vr$0 != 0ll ) goto label$351;
	{
		{
			if( RTYPE$1 == 11ll ) goto label$354;
			label$355:;
			if( RTYPE$1 != 13ll ) goto label$353;
			label$354:;
			{
				HWRITEX86F2I( FNAME$1, RTYPE$1, PTYPE$1 );
				goto label$349;
			}
			label$353:;
			label$352:;
		}
	}
	label$351:;
	label$350:;
	HWRITEGENERICF2I( FNAME$1, RTYPE$1, PTYPE$1 );
	label$349:;
}

static void HMAYBEEMITPROCEXPORT( struct $8FBSYMBOL* PROC$1 )
{
	label$356:;
	if( (*(int64*)((uint8*)PROC$1 + 8ll) & 256ll) != 0ll ) goto label$359;
	{
		goto label$357;
	}
	label$359:;
	label$358:;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x09\x22", 3ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x5Ct.ascii ", 10ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x5C\x22 -export:\x5C\x5C\x5C\x22", 16ll, 0 );
	FBSTRING* vr$5 = HGETMANGLEDNAMEFORASM( PROC$1, 0ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)vr$5, -1ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x5C\x5C\x5C\x22\x5C\x22", 7ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x5Cn", 3ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"\x22\x0A", 3ll, 0 );
	label$357:;
}

static int64 _EMITBEGIN( void )
{
	FBSTRING TMP$319$1;
	FBSTRING TMP$321$1;
	FBSTRING TMP$323$1;
	FBSTRING TMP$325$1;
	FBSTRING TMP$327$1;
	FBSTRING TMP$329$1;
	FBSTRING TMP$331$1;
	FBSTRING TMP$333$1;
	FBSTRING TMP$339$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$360:;
	int64 vr$2 = HFILEEXISTS( (uint8*)((uint8*)&ENV$ + 856ll) );
	if( vr$2 == 0ll ) goto label$363;
	{
		FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
		fb_FileKill( (FBSTRING*)vr$4 );
	}
	label$363:;
	label$362:;
	int32 vr$5 = fb_FileFree(  );
	*(int64*)((uint8*)&ENV$ + 848ll) = (int64)vr$5;
	FBSTRING* vr$9 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&ENV$ + 856ll) );
	int32 vr$10 = fb_FileOpen( (FBSTRING*)vr$9, 0u, 3u, 0u, (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0 );
	if( (int64)vr$10 == 0ll ) goto label$365;
	{
		fb$result$1 = 0ll;
		goto label$361;
	}
	label$365:;
	label$364:;
	*(int64*)((uint8*)&CTX$ + 5160ll) = -1ll;
	*(int64*)((uint8*)&CTX$ + 5168ll) = 0ll;
	*(int64*)((uint8*)&CTX$ + 5176ll) = 0ll;
	*(uint64*)((uint8*)&CTX$ + 5208ll) = 0ull;
	*(int64*)((uint8*)&CTX$ + 5512ll) = 0ll;
	HUPDATECURRENTFILENAME( (uint8*)((uint8*)&ENV$ + 560ll) );
	SECTIONBEGIN(  );
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$367;
	{
		_EMITDBG( 113ll, (struct $8FBSYMBOL*)0ull, 0ll, (uint8*)0ull );
	}
	label$367:;
	label$366:;
	__builtin_memset( &TMP$319$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$319$1, -1ll, (void*)"typedef   signed char       int8;", 34ll, 0 );
	HWRITELINE( &TMP$319$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$319$1 );
	__builtin_memset( &TMP$321$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$321$1, -1ll, (void*)"typedef unsigned char      uint8;", 34ll, 0 );
	HWRITELINE( &TMP$321$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$321$1 );
	__builtin_memset( &TMP$323$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$323$1, -1ll, (void*)"typedef   signed short      int16;", 35ll, 0 );
	HWRITELINE( &TMP$323$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$323$1 );
	__builtin_memset( &TMP$325$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$325$1, -1ll, (void*)"typedef unsigned short     uint16;", 35ll, 0 );
	HWRITELINE( &TMP$325$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$325$1 );
	__builtin_memset( &TMP$327$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$327$1, -1ll, (void*)"typedef   signed int        int32;", 35ll, 0 );
	HWRITELINE( &TMP$327$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$327$1 );
	__builtin_memset( &TMP$329$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$329$1, -1ll, (void*)"typedef unsigned int       uint32;", 35ll, 0 );
	HWRITELINE( &TMP$329$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$329$1 );
	__builtin_memset( &TMP$331$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$331$1, -1ll, (void*)"typedef   signed long long  int64;", 35ll, 0 );
	HWRITELINE( &TMP$331$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$331$1 );
	__builtin_memset( &TMP$333$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$333$1, -1ll, (void*)"typedef unsigned long long uint64;", 35ll, 0 );
	HWRITELINE( &TMP$333$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$333$1 );
	int64 vr$45 = FBIS64BIT(  );
	if( vr$45 == 0ll ) goto label$369;
	{
		FBSTRING TMP$335$2;
		__builtin_memset( &TMP$335$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$335$2, -1ll, (void*)"typedef struct { char *data; int64 len; int64 size; } FBSTRING;", 64ll, 0 );
		HWRITELINE( &TMP$335$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$335$2 );
	}
	goto label$368;
	label$369:;
	{
		FBSTRING TMP$337$2;
		__builtin_memset( &TMP$337$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$337$2, -1ll, (void*)"typedef struct { char *data; int32 len; int32 size; } FBSTRING;", 64ll, 0 );
		HWRITELINE( &TMP$337$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$337$2 );
	}
	label$368:;
	__builtin_memset( &TMP$339$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$339$1, -1ll, (void*)"typedef int8 boolean;", 22ll, 0 );
	HWRITELINE( &TMP$339$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$339$1 );
	SECTIONBEGIN(  );
	fb$result$1 = -1ll;
	label$361:;
	return fb$result$1;
}

static void _EMITEND( void )
{
	label$370:;
	int64 SECTION$1;
	HUPDATECURRENTFILENAME( (uint8*)((uint8*)&ENV$ + 560ll) );
	int64 vr$1 = SECTIONGOSUB( 0ll );
	SECTION$1 = vr$1;
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 1ull) == 0ull ) goto label$373;
	{
		FBSTRING TMP$341$2;
		__builtin_memset( &TMP$341$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$341$2, -1ll, (void*)"F2I", 4ll, 0 );
		HWRITEF2I( &TMP$341$2, 11ll, 15ll );
		fb_StrDelete( (FBSTRING*)&TMP$341$2 );
		label$373:;
	}
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 2ull) == 0ull ) goto label$375;
	{
		FBSTRING TMP$343$2;
		__builtin_memset( &TMP$343$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$343$2, -1ll, (void*)"F2L", 4ll, 0 );
		HWRITEF2I( &TMP$343$2, 13ll, 15ll );
		fb_StrDelete( (FBSTRING*)&TMP$343$2 );
		label$375:;
	}
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 4ull) == 0ull ) goto label$377;
	{
		FBSTRING TMP$345$2;
		__builtin_memset( &TMP$345$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$345$2, -1ll, (void*)"F2UL", 5ll, 0 );
		HWRITEF2I( &TMP$345$2, 14ll, 15ll );
		fb_StrDelete( (FBSTRING*)&TMP$345$2 );
		label$377:;
	}
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 8ull) == 0ull ) goto label$379;
	{
		FBSTRING TMP$347$2;
		__builtin_memset( &TMP$347$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$347$2, -1ll, (void*)"D2I", 4ll, 0 );
		HWRITEF2I( &TMP$347$2, 11ll, 16ll );
		fb_StrDelete( (FBSTRING*)&TMP$347$2 );
		label$379:;
	}
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 16ull) == 0ull ) goto label$381;
	{
		FBSTRING TMP$349$2;
		__builtin_memset( &TMP$349$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$349$2, -1ll, (void*)"D2L", 4ll, 0 );
		HWRITEF2I( &TMP$349$2, 13ll, 16ll );
		fb_StrDelete( (FBSTRING*)&TMP$349$2 );
		label$381:;
	}
	if( (*(uint64*)((uint8*)&CTX$ + 5208ll) & 32ull) == 0ull ) goto label$383;
	{
		FBSTRING TMP$351$2;
		__builtin_memset( &TMP$351$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$351$2, -1ll, (void*)"D2UL", 5ll, 0 );
		HWRITEF2I( &TMP$351$2, 14ll, 16ll );
		fb_StrDelete( (FBSTRING*)&TMP$351$2 );
		label$383:;
	}
	SYMBFOREACHGLOBAL( 3ll, (tmp$41)&HMAYBEEMITPROCPROTO );
	*(int64*)((uint8*)&CTX$ + 5512ll) = 1ll;
	SYMBFOREACHGLOBAL( 1ll, (tmp$41)&HMAYBEEMITGLOBALVAREXCEPTDATASTMT );
	IRFOREACHDATASTMT( (tmp$41)&HMAYBEEMITGLOBALVAR );
	*(int64*)((uint8*)&CTX$ + 5512ll) = 2ll;
	SYMBFOREACHGLOBAL( 1ll, (tmp$41)&HMAYBEEMITGLOBALVAREXCEPTDATASTMT );
	IRFOREACHDATASTMT( (tmp$41)&HMAYBEEMITGLOBALVAR );
	SECTIONRETURN( SECTION$1 );
	if( (*(int64*)((uint8*)&ENV$ + 416ll) & (*(int64*)((uint8*)&ENV$ + 520ll) & 4ll)) == 0ll ) goto label$385;
	{
		SYMBFOREACHGLOBAL( 3ll, (tmp$41)&HMAYBEEMITPROCEXPORT );
		int64 vr$35 = fb_StrLen( (void*)((uint8*)&CTX$ + 5336ll), -1ll );
		if( vr$35 <= 0ll ) goto label$387;
		{
			FBSTRING TMP$353$3;
			FBSTRING TMP$354$3;
			FBSTRING TMP$355$3;
			__builtin_memset( &TMP$355$3, 0, 24ll );
			__builtin_memset( &TMP$353$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$353$3, (void*)"\x0A__asm__( \x0A\x09\x22.section .drectve\x5Cn\x22\x0A", 35ll, (void*)((uint8*)&CTX$ + 5336ll), -1ll );
			__builtin_memset( &TMP$354$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$354$3, (void*)vr$40, -1ll, (void*)");", 3ll );
			fb_StrAssign( (void*)&TMP$355$3, -1ll, (void*)vr$43, -1ll, 0 );
			HWRITELINE( &TMP$355$3, -1ll );
			fb_StrDelete( (FBSTRING*)&TMP$355$3 );
		}
		label$387:;
		label$386:;
		fb_StrAssign( (void*)((uint8*)&CTX$ + 5336ll), -1ll, (void*)"", 1ll, 0 );
	}
	label$385:;
	label$384:;
	SECTIONEND(  );
	if( *(int64*)((uint8*)&CTX$ + 24ll) != 0ll ) goto label$389;
	{
		int32 vr$50 = fb_FilePutStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 848ll), 0ll, (void*)&CTX$, -1ll );
		if( (int64)vr$50 == 0ll ) goto label$391;
		{
		}
		label$391:;
		label$390:;
	}
	label$389:;
	label$388:;
	SECTIONEND(  );
	int32 vr$53 = fb_FileClose( (int32)*(int64*)((uint8*)&ENV$ + 848ll) );
	if( (int64)vr$53 == 0ll ) goto label$393;
	{
	}
	label$393:;
	label$392:;
	*(int64*)((uint8*)&ENV$ + 848ll) = 0ll;
	label$371:;
}

static int64 _GETOPTIONVALUE( $14IR_OPTIONVALUE OPT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$394:;
	{
		if( OPT$1 != 1ll ) goto label$397;
		label$398:;
		{
			fb$result$1 = 0ll;
			goto label$395;
		}
		goto label$396;
		label$397:;
		{
			ERRREPORTEX( 21ll, (uint8*)"_GETOPTIONVALUE", 0ll, 1ll, (uint8*)0ull );
		}
		label$399:;
		label$396:;
	}
	label$395:;
	return fb$result$1;
}

static int64 _SUPPORTSOP( int64 OP$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$400:;
	{
		uint64 TMP$357$2;
		TMP$357$2 = (uint64)OP$1;
		goto label$403;
		label$404:;
		{
			fb$result$1 = 0ll;
		}
		goto label$402;
		label$405:;
		{
			fb$result$1 = -1ll;
		}
		goto label$402;
		label$403:;
		static const void* tmp$693[16ll] = {
			&&label$404,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$404,
			&&label$404,
			&&label$405,
			&&label$405,
			&&label$405,
			&&label$404,
			&&label$404,
		};
		if( (TMP$357$2 - 57ull) > 15ull ) goto label$405;
		goto *tmp$693[TMP$357$2 - 57ull];
		label$402:;
	}
	label$401:;
	return fb$result$1;
}

static void _PROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$406:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16744ll);
	label$407:;
}

static void _PROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$408:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 40ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844288ll) + 16744ll);
	label$409:;
}

static void _SCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$410:;
	label$411:;
}

static void _SCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$412:;
	label$413:;
}

static int64 HISSTATICWITHDTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$414:;
	int64 vr$8 = SYMBHASDTOR( SYM$1 );
	fb$result$1 = ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 2ll) != 0ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll)) & vr$8;
	label$415:;
	return fb$result$1;
}

static void _PROCALLOCSTATICVARS( struct $8FBSYMBOL* SYM$1 )
{
	label$416:;
	struct $8FBSYMBOL* DESC$1;
	int64 SECTION$1;
	int64 vr$0 = SECTIONGOSUB( 0ll );
	SECTION$1 = vr$0;
	label$418:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$419;
	{
		{
			$12FB_SYMBCLASS TMP$358$3;
			TMP$358$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$358$3 != 15ll ) goto label$421;
			label$422:;
			{
				_PROCALLOCSTATICVARS( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 112ll) );
			}
			goto label$420;
			label$421:;
			if( TMP$358$3 != 1ll ) goto label$423;
			label$424:;
			{
				int64 vr$3 = HISSTATICWITHDTOR( SYM$1 );
				if( vr$3 == 0ll ) goto label$426;
				{
					HMAYBEEMITLOCALVAR( SYM$1 );
					DESC$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
					if( DESC$1 == (struct $8FBSYMBOL*)0ull ) goto label$428;
					{
						HMAYBEEMITLOCALVAR( DESC$1 );
					}
					label$428:;
					label$427:;
				}
				label$426:;
				label$425:;
			}
			label$423:;
			label$420:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
	}
	goto label$418;
	label$419:;
	SECTIONRETURN( SECTION$1 );
	label$417:;
}

static void _SETVREGDATATYPE( struct $6IRVREG* VREG$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$429:;
	if( VREG$1 == (struct $6IRVREG*)0ull ) goto label$432;
	{
		*($11FB_DATATYPE*)((uint8*)VREG$1 + 8ll) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll) = SUBTYPE$1;
	}
	label$432:;
	label$431:;
	label$430:;
}

static FBSTRING* HEMITTYPE( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$433:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 PTRCOUNT$1;
	$19FB_CVA_LIST_TYPEDEF vr$2 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
	if( vr$2 <= 1ll ) goto label$436;
	{
		{
			$19FB_CVA_LIST_TYPEDEF TMP$359$3;
			$19FB_CVA_LIST_TYPEDEF vr$3 = SYMBGETVALISTTYPE( DTYPE$1, SUBTYPE$1 );
			TMP$359$3 = vr$3;
			if( TMP$359$3 != 2ll ) goto label$438;
			label$439:;
			{
				DTYPE$1 = (((((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll)) & -32ll) | 19ll;
			}
			goto label$437;
			label$438:;
			{
				DTYPE$1 = (DTYPE$1 & -32ll) | 19ll;
			}
			label$440:;
			label$437:;
		}
	}
	label$436:;
	label$435:;
	PTRCOUNT$1 = (DTYPE$1 & 480ll) >> (5ll & 63ll);
	DTYPE$1 = DTYPE$1 & 31ll;
	{
		uint64 TMP$360$2;
		TMP$360$2 = (uint64)DTYPE$1;
		goto label$442;
		label$443:;
		{
			if( SUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$445;
			{
				HEMITUDT( SUBTYPE$1, (int64)-(PTRCOUNT$1 > 0ll) );
				FBSTRING* vr$22 = HGETUDTNAME( SUBTYPE$1 );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$22, -1ll, 0 );
			}
			goto label$444;
			label$445:;
			if( DTYPE$1 != 10ll ) goto label$446;
			{
				int64 TMP$361$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$447;
				TMP$361$4 = 24ll;
				goto label$1178;
				label$447:;
				TMP$361$4 = DTYPE$1 & 31ll;
				label$1178:;
				fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$361$4 * 56ll)) + 32ll) << (3ll & 63ll))), 0ll, 0 );
			}
			goto label$444;
			label$446:;
			{
				fb_StrAssign( (void*)&S$1, -1ll, *(void**)DTYPENAME$, 0ll, 0 );
			}
			label$444:;
		}
		goto label$441;
		label$448:;
		{
			PTRCOUNT$1 = PTRCOUNT$1 + -1ll;
			HEMITUDT( SUBTYPE$1, (int64)-(PTRCOUNT$1 > 0ll) );
			uint8* vr$32 = SYMBGETMANGLEDNAME( SUBTYPE$1 );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$32, 0ll, 0 );
		}
		goto label$441;
		label$449:;
		{
			int64 TMP$362$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$450;
			TMP$362$3 = 24ll;
			goto label$1179;
			label$450:;
			TMP$362$3 = DTYPE$1 & 31ll;
			label$1179:;
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$362$3 * 56ll)) + 32ll) << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$441;
		label$451:;
		{
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + 24ll), 0ll, 0 );
		}
		goto label$441;
		label$452:;
		{
			fb_StrAssign( (void*)&S$1, -1ll, *(void**)((uint8*)DTYPENAME$ + (DTYPE$1 << (3ll & 63ll))), 0ll, 0 );
		}
		goto label$441;
		label$442:;
		static const void* tmp$694[19ll] = {
			&&label$449,
			&&label$452,
			&&label$452,
			&&label$449,
			&&label$452,
			&&label$452,
			&&label$443,
			&&label$452,
			&&label$452,
			&&label$452,
			&&label$452,
			&&label$452,
			&&label$452,
			&&label$452,
			&&label$451,
			&&label$452,
			&&label$443,
			&&label$452,
			&&label$448,
		};
		if( (TMP$360$2 - 4ull) > 18ull ) goto label$452;
		goto *tmp$694[TMP$360$2 - 4ull];
		label$441:;
	}
	if( PTRCOUNT$1 <= 0ll ) goto label$454;
	{
		FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"*", 1ll );
		FBSTRING* vr$43 = fb_StrFill2( PTRCOUNT$1, (FBSTRING*)vr$42 );
		fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$43, -1ll, 0 );
	}
	label$454:;
	label$453:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$434:;
	FBSTRING* vr$49 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$49;
}

static struct $8EXPRNODE* EXPRNEW( int64 CLASS_$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$455:;
	struct $8EXPRNODE* N$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5360ll) );
	N$1 = (struct $8EXPRNODE*)vr$2;
	*(int64*)N$1 = CLASS_$1;
	*(int64*)((uint8*)N$1 + 8ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) = SUBTYPE$1;
	fb$result$1 = N$1;
	label$456:;
	return fb$result$1;
}

static void EXPRFREENODE( struct $8EXPRNODE* N$1 )
{
	label$457:;
	if( *(int64*)N$1 != 0ll ) goto label$460;
	{
		if( *(uint8**)((uint8*)N$1 + 40ll) == (uint8*)0ull ) goto label$462;
		{
			free( *(void**)((uint8*)N$1 + 40ll) );
		}
		label$462:;
		label$461:;
	}
	label$460:;
	label$459:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5360ll), (void*)N$1 );
	label$458:;
}

static void EXPRFREETREE( struct $8EXPRNODE* N$1 )
{
	label$463:;
	if( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) == (struct $8EXPRNODE*)0ull ) goto label$466;
	{
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) );
	}
	label$466:;
	label$465:;
	if( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll) == (struct $8EXPRNODE*)0ull ) goto label$468;
	{
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll) );
	}
	label$468:;
	label$467:;
	EXPRFREENODE( N$1 );
	label$464:;
}

static struct $8EXPRNODE* EXPRNEWTEXT( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, uint8* S$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$469:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 0ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	uint8* vr$2 = ZSTRDUP( S$1 );
	*(uint8**)((uint8*)N$1 + 40ll) = vr$2;
	fb$result$1 = N$1;
	label$470:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWIMMI( int64 I$1, int64 DTYPE$1 )
{
	int64 TMP$364$1;
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$471:;
	struct $8EXPRNODE* N$1;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$473;
	TMP$364$1 = 24ll;
	goto label$1180;
	label$473:;
	TMP$364$1 = DTYPE$1 & 31ll;
	label$1180:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$364$1 * 56ll)) + 8ll) != 8ll ) goto label$475;
	{
		int64 TMP$365$2;
		$11FB_DATATYPE TMP$366$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$476;
		TMP$365$2 = 24ll;
		goto label$1181;
		label$476:;
		TMP$365$2 = DTYPE$1 & 31ll;
		label$1181:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$365$2 * 56ll)) + 16ll) == 0ll ) goto label$477;
		TMP$366$2 = 13ll;
		goto label$1182;
		label$477:;
		TMP$366$2 = 14ll;
		label$1182:;
		DTYPE$1 = TMP$366$2;
	}
	goto label$474;
	label$475:;
	{
		int64 TMP$367$2;
		$11FB_DATATYPE TMP$368$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$478;
		TMP$367$2 = 24ll;
		goto label$1183;
		label$478:;
		TMP$367$2 = DTYPE$1 & 31ll;
		label$1183:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$367$2 * 56ll)) + 16ll) == 0ll ) goto label$479;
		TMP$368$2 = 11ll;
		goto label$1184;
		label$479:;
		TMP$368$2 = 12ll;
		label$1184:;
		DTYPE$1 = TMP$368$2;
	}
	label$474:;
	struct $8EXPRNODE* vr$10 = EXPRNEW( 1ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$10;
	*(int64*)((uint8*)N$1 + 40ll) = I$1;
	fb$result$1 = N$1;
	label$472:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWIMMF( double F$1, int64 DTYPE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$480:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 1ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	*(double*)((uint8*)N$1 + 40ll) = F$1;
	fb$result$1 = N$1;
	label$481:;
	return fb$result$1;
}

static int64 SYMBISCARRAY( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$482:;
	if( (((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) != 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 81920ll) != 0ll)) | (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) != 0ll)) == 0ll ) goto label$485;
	{
		fb$result$1 = 0ll;
		goto label$483;
	}
	label$485:;
	label$484:;
	{
		$12FB_SYMBCLASS TMP$369$2;
		TMP$369$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$369$2 == 1ll ) goto label$488;
		label$489:;
		if( TMP$369$2 != 12ll ) goto label$487;
		label$488:;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) == 0ll ) goto label$491;
			{
				fb$result$1 = 0ll;
				goto label$483;
			}
			label$491:;
			label$490:;
			if( *(int64*)((uint8*)SYM$1 + 104ll) == 0ll ) goto label$493;
			{
				fb$result$1 = -1ll;
				goto label$483;
			}
			label$493:;
			label$492:;
		}
		label$487:;
		label$486:;
	}
	{
		int64 TMP$370$2;
		TMP$370$2 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
		if( TMP$370$2 == 18ll ) goto label$496;
		label$497:;
		if( TMP$370$2 == 4ll ) goto label$496;
		label$498:;
		if( TMP$370$2 != 7ll ) goto label$495;
		label$496:;
		{
			fb$result$1 = -1ll;
			goto label$483;
		}
		label$495:;
		label$494:;
	}
	fb$result$1 = 0ll;
	goto label$483;
	label$483:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWCAST( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8EXPRNODE* L$1 )
{
	int64 TMP$371$1;
	int64 TMP$372$1;
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$499:;
	if( ((int64)-(DTYPE$1 == *(int64*)((uint8*)L$1 + 8ll)) & (int64)-(SUBTYPE$1 == *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll))) == 0ll ) goto label$502;
	{
		fb$result$1 = L$1;
		goto label$500;
	}
	label$502:;
	label$501:;
	if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$503;
	TMP$371$1 = 24ll;
	goto label$1185;
	label$503:;
	TMP$371$1 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
	label$1185:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$504;
	TMP$372$1 = 24ll;
	goto label$1186;
	label$504:;
	TMP$372$1 = DTYPE$1 & 31ll;
	label$1186:;
	if( (((int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$371$1 * 56ll)) + 40ll) == *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$372$1 * 56ll)) + 40ll)) & (int64)-((*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll)) & (int64)-((DTYPE$1 & 480ll) == 0ll)) == 0ll ) goto label$506;
	{
		fb$result$1 = L$1;
		goto label$500;
	}
	label$506:;
	label$505:;
	if( *(int64*)L$1 != 3ll ) goto label$508;
	{
		if( ((int64)-(((DTYPE$1 & 480ll) >> (5ll & 63ll)) > 0ll) & (int64)-(((*(int64*)((uint8*)L$1 + 8ll) & 480ll) >> (5ll & 63ll)) > 0ll)) == 0ll ) goto label$510;
		{
			*(int64*)((uint8*)L$1 + 8ll) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) = SUBTYPE$1;
			fb$result$1 = L$1;
			goto label$500;
		}
		label$510:;
		label$509:;
	}
	label$508:;
	label$507:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$33 = EXPRNEW( 3ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$33;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) = L$1;
	fb$result$1 = N$1;
	label$500:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWMACRO( $6AST_OP OP$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8EXPRNODE* L$1, struct $8EXPRNODE* R$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$511:;
	struct $8EXPRNODE* N$1;
	struct $8EXPRNODE* vr$1 = EXPRNEW( 6ll, DTYPE$1, SUBTYPE$1 );
	N$1 = vr$1;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) = L$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 32ll) = R$1;
	fb$result$1 = N$1;
	label$512:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWSYM( struct $8FBSYMBOL* SYM$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$513:;
	struct $8EXPRNODE* N$1;
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	if( ((int64)-(*(int64*)SYM$1 == 1ll) & (int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 4ll) != 0ll)) == 0ll ) goto label$516;
	{
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
	}
	label$516:;
	label$515:;
	if( *(int64*)SYM$1 != 7ll ) goto label$518;
	{
		struct $8EXPRNODE* vr$9 = EXPRNEW( 2ll, 32ll, (struct $8FBSYMBOL*)0ull );
		N$1 = vr$9;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = SYM$1;
	}
	goto label$517;
	label$518:;
	if( *(int64*)SYM$1 != 3ll ) goto label$519;
	{
		struct $8EXPRNODE* vr$12 = EXPRNEW( 2ll, 54ll, SYM$1 );
		N$1 = vr$12;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = SYM$1;
	}
	goto label$517;
	label$519:;
	int64 vr$14 = SYMBISCARRAY( SYM$1 );
	if( vr$14 == 0ll ) goto label$520;
	{
		struct $8EXPRNODE* vr$15 = EXPRNEW( 2ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		N$1 = vr$15;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = SYM$1;
		struct $8EXPRNODE* vr$35 = EXPRNEWCAST( ((((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 31ll) | (((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 480ll) + 32ll)) | (((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 261632ll) << (1ll & 63ll))) | ((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), N$1 );
		N$1 = vr$35;
	}
	goto label$517;
	label$520:;
	if( (((int64)-(*(int64*)SYM$1 == 1ll) | (int64)-(*(int64*)SYM$1 == 4ll)) & (int64)-((*(int64*)((uint8*)SYM$1 + 24ll) & 524288ll) != 0ll)) == 0ll ) goto label$521;
	{
		struct $8EXPRNODE* vr$45 = EXPRNEW( 2ll, 66ll, (struct $8FBSYMBOL*)0ull );
		N$1 = vr$45;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = SYM$1;
	}
	goto label$517;
	label$521:;
	{
		SYMBGETREALTYPE( SYM$1, &DTYPE$1, &SUBTYPE$1 );
		struct $8EXPRNODE* vr$49 = EXPRNEW( 2ll, DTYPE$1, SUBTYPE$1 );
		N$1 = vr$49;
		*(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) = SYM$1;
	}
	label$517:;
	fb$result$1 = N$1;
	label$514:;
	return fb$result$1;
}

static int64 TYPECBOP( int64 OP$1, int64 A$1, int64 B$1 )
{
	int64 TMP$373$1;
	int64 TMP$374$1;
	int64 TMP$375$1;
	int64 TMP$378$1;
	int64 TMP$381$1;
	int64 TMP$382$1;
	int64 TMP$383$1;
	int64 TMP$384$1;
	int64 TMP$389$1;
	int64 TMP$390$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$522:;
	if( (*(int64*)(((uint8*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 8ll) == 0ll ) goto label$525;
	{
		fb$result$1 = 11ll;
		goto label$523;
	}
	label$525:;
	label$524:;
	if( (A$1 & 480ll) == 0ll ) goto label$526;
	TMP$373$1 = 24ll;
	goto label$1187;
	label$526:;
	TMP$373$1 = A$1 & 31ll;
	label$1187:;
	A$1 = TMP$373$1;
	if( (B$1 & 480ll) == 0ll ) goto label$527;
	TMP$374$1 = 24ll;
	goto label$1188;
	label$527:;
	TMP$374$1 = B$1 & 31ll;
	label$1188:;
	B$1 = TMP$374$1;
	if( ((int64)-(A$1 == 16ll) | (int64)-(B$1 == 16ll)) == 0ll ) goto label$529;
	{
		fb$result$1 = 16ll;
		goto label$523;
	}
	label$529:;
	label$528:;
	if( ((int64)-(A$1 == 15ll) | (int64)-(B$1 == 15ll)) == 0ll ) goto label$531;
	{
		fb$result$1 = 15ll;
		goto label$523;
	}
	label$531:;
	label$530:;
	if( (A$1 & 480ll) == 0ll ) goto label$532;
	TMP$375$1 = 24ll;
	goto label$1189;
	label$532:;
	TMP$375$1 = A$1 & 31ll;
	label$1189:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$375$1 * 56ll)) + 8ll) > 4ll ) goto label$534;
	{
		int64 TMP$376$2;
		$11FB_DATATYPE TMP$377$2;
		if( (A$1 & 480ll) == 0ll ) goto label$535;
		TMP$376$2 = 24ll;
		goto label$1190;
		label$535:;
		TMP$376$2 = A$1 & 31ll;
		label$1190:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$376$2 * 56ll)) + 16ll) == 0ll ) goto label$536;
		TMP$377$2 = 11ll;
		goto label$1191;
		label$536:;
		TMP$377$2 = 12ll;
		label$1191:;
		A$1 = TMP$377$2;
	}
	label$534:;
	label$533:;
	if( (B$1 & 480ll) == 0ll ) goto label$537;
	TMP$378$1 = 24ll;
	goto label$1192;
	label$537:;
	TMP$378$1 = B$1 & 31ll;
	label$1192:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$378$1 * 56ll)) + 8ll) > 4ll ) goto label$539;
	{
		int64 TMP$379$2;
		$11FB_DATATYPE TMP$380$2;
		if( (B$1 & 480ll) == 0ll ) goto label$540;
		TMP$379$2 = 24ll;
		goto label$1193;
		label$540:;
		TMP$379$2 = B$1 & 31ll;
		label$1193:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$379$2 * 56ll)) + 16ll) == 0ll ) goto label$541;
		TMP$380$2 = 11ll;
		goto label$1194;
		label$541:;
		TMP$380$2 = 12ll;
		label$1194:;
		B$1 = TMP$380$2;
	}
	label$539:;
	label$538:;
	if( (A$1 & 480ll) == 0ll ) goto label$542;
	TMP$381$1 = 24ll;
	goto label$1195;
	label$542:;
	TMP$381$1 = A$1 & 31ll;
	label$1195:;
	if( (B$1 & 480ll) == 0ll ) goto label$543;
	TMP$382$1 = 24ll;
	goto label$1196;
	label$543:;
	TMP$382$1 = B$1 & 31ll;
	label$1196:;
	if( ~(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$381$1 * 56ll)) + 16ll) & *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$382$1 * 56ll)) + 16ll)) == 0ll ) goto label$545;
	{
		int64 vr$33 = TYPETOUNSIGNED( A$1 );
		A$1 = vr$33;
		int64 vr$34 = TYPETOUNSIGNED( B$1 );
		B$1 = vr$34;
	}
	label$545:;
	label$544:;
	if( (A$1 & 480ll) == 0ll ) goto label$546;
	TMP$383$1 = 24ll;
	goto label$1197;
	label$546:;
	TMP$383$1 = A$1 & 31ll;
	label$1197:;
	if( (B$1 & 480ll) == 0ll ) goto label$547;
	TMP$384$1 = 24ll;
	goto label$1198;
	label$547:;
	TMP$384$1 = B$1 & 31ll;
	label$1198:;
	if( ((int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$383$1 * 56ll)) + 8ll) == 8ll) | (int64)-(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$384$1 * 56ll)) + 8ll) == 8ll)) == 0ll ) goto label$549;
	{
		int64 TMP$385$2;
		$11FB_DATATYPE TMP$386$2;
		int64 TMP$387$2;
		$11FB_DATATYPE TMP$388$2;
		if( (A$1 & 480ll) == 0ll ) goto label$550;
		TMP$385$2 = 24ll;
		goto label$1199;
		label$550:;
		TMP$385$2 = A$1 & 31ll;
		label$1199:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$385$2 * 56ll)) + 16ll) == 0ll ) goto label$551;
		TMP$386$2 = 13ll;
		goto label$1200;
		label$551:;
		TMP$386$2 = 14ll;
		label$1200:;
		A$1 = TMP$386$2;
		if( (B$1 & 480ll) == 0ll ) goto label$552;
		TMP$387$2 = 24ll;
		goto label$1201;
		label$552:;
		TMP$387$2 = B$1 & 31ll;
		label$1201:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$387$2 * 56ll)) + 16ll) == 0ll ) goto label$553;
		TMP$388$2 = 13ll;
		goto label$1202;
		label$553:;
		TMP$388$2 = 14ll;
		label$1202:;
		B$1 = TMP$388$2;
	}
	label$549:;
	label$548:;
	if( (A$1 & 480ll) == 0ll ) goto label$554;
	TMP$389$1 = 24ll;
	goto label$1203;
	label$554:;
	TMP$389$1 = A$1 & 31ll;
	label$1203:;
	if( (B$1 & 480ll) == 0ll ) goto label$555;
	TMP$390$1 = 24ll;
	goto label$1204;
	label$555:;
	TMP$390$1 = B$1 & 31ll;
	label$1204:;
	if( ~(*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$389$1 * 56ll)) + 16ll) & *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$390$1 * 56ll)) + 16ll)) == 0ll ) goto label$557;
	{
		int64 vr$58 = TYPETOUNSIGNED( A$1 );
		A$1 = vr$58;
		int64 vr$59 = TYPETOUNSIGNED( B$1 );
		B$1 = vr$59;
	}
	label$557:;
	label$556:;
	fb$result$1 = A$1;
	label$523:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWUOP( int64 OP$1, struct $8EXPRNODE* L$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$558:;
	struct $8EXPRNODE* N$1;
	int64 DTYPE$1;
	int64 SOLVED_OUT$1;
	SOLVED_OUT$1 = 0ll;
	{
		uint64 TMP$391$2;
		TMP$391$2 = (uint64)OP$1;
		goto label$561;
		label$562:;
		{
			if( *(int64*)L$1 != 4ll ) goto label$564;
			{
				SOLVED_OUT$1 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 76ll);
			}
			label$564:;
			label$563:;
			DTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
			DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
		}
		goto label$560;
		label$565:;
		{
			if( *(int64*)L$1 != 4ll ) goto label$567;
			{
				SOLVED_OUT$1 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 22ll);
			}
			label$567:;
			label$566:;
			DTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
			DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll);
		}
		goto label$560;
		label$568:;
		{
			if( *(int64*)L$1 != 4ll ) goto label$570;
			{
				SOLVED_OUT$1 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == OP$1);
			}
			label$570:;
			label$569:;
			int64 vr$33 = TYPECBOP( OP$1, *(int64*)((uint8*)L$1 + 8ll), *(int64*)((uint8*)L$1 + 8ll) );
			DTYPE$1 = vr$33;
		}
		goto label$560;
		label$571:;
		{
			DTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
		}
		goto label$560;
		label$572:;
		{
		}
		goto label$560;
		label$561:;
		static const void* tmp$695[55ll] = {
			&&label$562,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$568,
			&&label$572,
			&&label$568,
			&&label$572,
			&&label$571,
			&&label$572,
			&&label$571,
			&&label$571,
			&&label$571,
			&&label$571,
			&&label$571,
			&&label$571,
			&&label$572,
			&&label$571,
			&&label$572,
			&&label$572,
			&&label$571,
			&&label$571,
			&&label$571,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$572,
			&&label$565,
		};
		if( (TMP$391$2 - 22ull) > 54ull ) goto label$572;
		goto *tmp$695[TMP$391$2 - 22ull];
		label$560:;
	}
	if( SOLVED_OUT$1 == 0ll ) goto label$574;
	{
		N$1 = *(struct $8EXPRNODE**)((uint8*)L$1 + 24ll);
		EXPRFREENODE( L$1 );
		fb$result$1 = N$1;
		goto label$559;
	}
	label$574:;
	label$573:;
	struct $8EXPRNODE* vr$37 = EXPRNEW( 4ll, DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll) );
	N$1 = vr$37;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) = L$1;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	fb$result$1 = N$1;
	label$559:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWBOP( int64 OP$1, struct $8EXPRNODE* L$1, struct $8EXPRNODE* R$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$575:;
	struct $8EXPRNODE* N$1;
	int64 DTYPE$1;
	int64 vr$3 = TYPECBOP( OP$1, *(int64*)((uint8*)L$1 + 8ll), *(int64*)((uint8*)R$1 + 8ll) );
	DTYPE$1 = vr$3;
	{
		uint64 TMP$392$2;
		TMP$392$2 = (uint64)OP$1;
		goto label$578;
		label$579:;
		{
			if( ((int64)-((*(int64*)((uint8*)L$1 + 8ll) & 480ll) != 0ll) & (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 480ll) != 0ll)) == 0ll ) goto label$581;
			{
				if( ((int64)-(((*(int64*)((uint8*)L$1 + 8ll) & 32505856ll) >> (20ll & 63ll)) == 19ll) | (int64)-(((*(int64*)((uint8*)R$1 + 8ll) & 32505856ll) >> (20ll & 63ll)) == 19ll)) == 0ll ) goto label$583;
				{
					struct $8EXPRNODE* vr$20 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, L$1 );
					L$1 = vr$20;
					struct $8EXPRNODE* vr$21 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, R$1 );
					R$1 = vr$21;
				}
				label$583:;
				label$582:;
			}
			label$581:;
			label$580:;
		}
		goto label$577;
		label$578:;
		static const void* tmp$696[6ll] = {
			&&label$579,
			&&label$579,
			&&label$579,
			&&label$579,
			&&label$579,
			&&label$579,
		};
		if( (TMP$392$2 - 45ull) > 5ull ) goto label$577;
		goto *tmp$696[TMP$392$2 - 45ull];
		label$577:;
	}
	struct $8EXPRNODE* vr$22 = EXPRNEW( 5ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$22;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) = L$1;
	*(struct $8EXPRNODE**)((uint8*)N$1 + 32ll) = R$1;
	*(int64*)((uint8*)N$1 + 40ll) = OP$1;
	fb$result$1 = N$1;
	label$576:;
	return fb$result$1;
}

static void EXPRCACHE( int64 VREGID$1, struct $8EXPRNODE* EXPR$1 )
{
	label$584:;
	struct $13EXPRCACHENODE* ENTRY$1;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll) );
	ENTRY$1 = (struct $13EXPRCACHENODE*)vr$1;
	*(int64*)ENTRY$1 = VREGID$1;
	*(struct $8EXPRNODE**)((uint8*)ENTRY$1 + 8ll) = EXPR$1;
	label$585:;
}

static struct $8EXPRNODE* EXPRLOOKUP( int64 VREGID$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$586:;
	struct $13EXPRCACHENODE* ENTRY$1;
	void* vr$2 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll) );
	ENTRY$1 = (struct $13EXPRCACHENODE*)vr$2;
	label$588:;
	if( ENTRY$1 == (struct $13EXPRCACHENODE*)0ull ) goto label$589;
	{
		if( *(int64*)ENTRY$1 != VREGID$1 ) goto label$591;
		{
			goto label$589;
		}
		label$591:;
		label$590:;
		void* vr$4 = LISTGETNEXT( (void*)ENTRY$1 );
		ENTRY$1 = (struct $13EXPRCACHENODE*)vr$4;
	}
	goto label$588;
	label$589:;
	if( ENTRY$1 == (struct $13EXPRCACHENODE*)0ull ) goto label$593;
	{
		fb$result$1 = *(struct $8EXPRNODE**)((uint8*)ENTRY$1 + 8ll);
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll), (void*)ENTRY$1 );
	}
	goto label$592;
	label$593:;
	{
		fb$result$1 = (struct $8EXPRNODE*)0ull;
	}
	label$592:;
	label$587:;
	return fb$result$1;
}

static FBSTRING* HEMITINT( int64 DTYPE$1, int64 VALUE$1 )
{
	int64 TMP$393$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$594:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$596;
	TMP$393$1 = 24ll;
	goto label$1205;
	label$596:;
	TMP$393$1 = DTYPE$1 & 31ll;
	label$1205:;
	if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$393$1 * 56ll)) + 16ll) == 0ll ) goto label$598;
	{
		int64 TMP$394$2;
		FBSTRING* vr$5 = fb_LongintToStr( VALUE$1 );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$5, -1ll, 0 );
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$599;
		TMP$394$2 = 24ll;
		goto label$1206;
		label$599:;
		TMP$394$2 = DTYPE$1 & 31ll;
		label$1206:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$394$2 * 56ll)) + 8ll) != 8ll ) goto label$601;
		{
			if( VALUE$1 != -9223372036854775808ull ) goto label$603;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"u", 2ll, 0 );
			}
			label$603:;
			label$602:;
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"ll", 3ll, 0 );
		}
		goto label$600;
		label$601:;
		{
			if( VALUE$1 != -2147483648ll ) goto label$605;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"u", 2ll, 0 );
			}
			label$605:;
			label$604:;
		}
		label$600:;
	}
	goto label$597;
	label$598:;
	{
		int64 TMP$397$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$606;
		TMP$397$2 = 24ll;
		goto label$1207;
		label$606:;
		TMP$397$2 = DTYPE$1 & 31ll;
		label$1207:;
		if( *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$397$2 * 56ll)) + 8ll) != 8ll ) goto label$608;
		{
			FBSTRING* vr$16 = fb_ULongintToStr( (uint64)VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$16, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"ull", 4ll, 0 );
		}
		goto label$607;
		label$608:;
		{
			FBSTRING* vr$20 = fb_UIntToStr( (uint32)VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$20, -1ll, 0 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"u", 2ll, 0 );
		}
		label$607:;
	}
	label$597:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$595:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}

static FBSTRING* HEMITFLOAT( int64 DTYPE$1, double VALUE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$609:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	uint32 EXPVAL$1;
	EXPVAL$1 = *(uint32*)((uint8*)&VALUE$1 + 4ll);
	{
		if( (int64)EXPVAL$1 == 2146435072ll ) goto label$613;
		label$614:;
		if( (int64)EXPVAL$1 != 4293918720ll ) goto label$612;
		label$613:;
		{
			if( DTYPE$1 != 16ll ) goto label$616;
			{
				if( ((int64)EXPVAL$1 & 2147483648ll) == 0ll ) goto label$618;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(-__builtin_inf())", 19ll, 0 );
				}
				goto label$617;
				label$618:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"__builtin_inf()", 16ll, 0 );
				}
				label$617:;
			}
			goto label$615;
			label$616:;
			{
				if( ((int64)EXPVAL$1 & 2147483648ll) == 0ll ) goto label$620;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(-__builtin_inff())", 20ll, 0 );
				}
				goto label$619;
				label$620:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"__builtin_inff()", 17ll, 0 );
				}
				label$619:;
			}
			label$615:;
		}
		goto label$611;
		label$612:;
		if( (int64)EXPVAL$1 == 2146959360ll ) goto label$622;
		label$623:;
		if( (int64)EXPVAL$1 != 4294443008ll ) goto label$621;
		label$622:;
		{
			if( DTYPE$1 != 16ll ) goto label$625;
			{
				if( ((int64)EXPVAL$1 & 2147483648ll) == 0ll ) goto label$627;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(-__builtin_nan( \x22\x22 ))", 23ll, 0 );
				}
				goto label$626;
				label$627:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"__builtin_nan( \x22\x22 )", 20ll, 0 );
				}
				label$626:;
			}
			goto label$624;
			label$625:;
			{
				if( ((int64)EXPVAL$1 & 2147483648ll) == 0ll ) goto label$629;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"(-__builtin_nanf( \x22\x22 ))", 24ll, 0 );
				}
				goto label$628;
				label$629:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"__builtin_nanf( \x22\x22 )", 21ll, 0 );
				}
				label$628:;
			}
			label$624:;
		}
		goto label$611;
		label$621:;
		{
			FBSTRING* vr$23 = HFLOATTOHEX_C99( VALUE$1 );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$23, -1ll, 0 );
			if( DTYPE$1 != 15ll ) goto label$632;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"f", 2ll, 0 );
			}
			label$632:;
			label$631:;
		}
		label$630:;
		label$611:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$610:;
	FBSTRING* vr$30 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$30;
}

static void HBUILDSTRLIT( FBSTRING* LN$1, uint8* Z$1, int64 LENGTH$1 )
{
	FBSTRING TMP$408$1;
	FBSTRING TMP$427$1;
	label$633:;
	int64 CH$1;
	__builtin_memset( &TMP$408$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$408$1, (void*)LN$1, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$2, -1ll, 0 );
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$409$2;
		TMP$409$2 = LENGTH$1 + -2ll;
		goto label$635;
		label$638:;
		{
			CH$1 = (int64)*(uint8*)((uint8*)Z$1 + I$2);
			int64 vr$6 = HCHARNEEDSESCAPING( CH$1, 34ll );
			if( vr$6 == 0ll ) goto label$640;
			{
				FBSTRING TMP$411$4;
				FBSTRING TMP$412$4;
				FBSTRING* vr$7 = fb_HEXEx_l( (uint64)CH$1, 2 );
				__builtin_memset( &TMP$411$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$411$4, (void*)"\x5Cx", 3ll, (void*)vr$7, -1ll );
				__builtin_memset( &TMP$412$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$412$4, (void*)LN$1, -1ll, (void*)vr$10, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$13, -1ll, 0 );
				int64 vr$16 = HISVALIDHEXDIGIT( (int64)*(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 1ll) );
				if( vr$16 == 0ll ) goto label$642;
				{
					FBSTRING TMP$414$5;
					__builtin_memset( &TMP$414$5, 0, 24ll );
					FBSTRING* vr$19 = fb_StrConcat( &TMP$414$5, (void*)LN$1, -1ll, (void*)"\x22 \x22", 4ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$19, -1ll, 0 );
				}
				label$642:;
				label$641:;
			}
			goto label$639;
			label$640:;
			if( (uint64)CH$1 != 63ull ) goto label$643;
			{
				FBSTRING TMP$416$4;
				__builtin_memset( &TMP$416$4, 0, 24ll );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$416$4, (void*)LN$1, -1ll, (void*)"?", 2ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$22, -1ll, 0 );
				if( (uint64)(int64)*(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 1ll) != 63ull ) goto label$645;
				{
					{
						uint8 TMP$417$6;
						TMP$417$6 = *(uint8*)((uint8*)((uint8*)Z$1 + I$2) + 2ll);
						if( (uint64)(int64)TMP$417$6 == 61ull ) goto label$648;
						label$649:;
						if( (uint64)(int64)TMP$417$6 == 47ull ) goto label$648;
						label$650:;
						if( (uint64)(int64)TMP$417$6 == 39ull ) goto label$648;
						label$651:;
						if( (uint64)(int64)TMP$417$6 == 40ull ) goto label$648;
						label$652:;
						if( (uint64)(int64)TMP$417$6 == 41ull ) goto label$648;
						label$653:;
						if( (uint64)(int64)TMP$417$6 == 33ull ) goto label$648;
						label$654:;
						if( (uint64)(int64)TMP$417$6 == 60ull ) goto label$648;
						label$655:;
						if( (uint64)(int64)TMP$417$6 == 62ull ) goto label$648;
						label$656:;
						if( (uint64)(int64)TMP$417$6 != 45ull ) goto label$647;
						label$648:;
						{
							FBSTRING TMP$425$7;
							__builtin_memset( &TMP$425$7, 0, 24ll );
							FBSTRING* vr$37 = fb_StrConcat( &TMP$425$7, (void*)LN$1, -1ll, (void*)"\x22 \x22", 4ll );
							fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$37, -1ll, 0 );
						}
						label$647:;
						label$646:;
					}
				}
				label$645:;
				label$644:;
			}
			goto label$639;
			label$643:;
			{
				FBSTRING TMP$426$4;
				FBSTRING* vr$38 = fb_CHR( 1, CH$1 );
				__builtin_memset( &TMP$426$4, 0, 24ll );
				FBSTRING* vr$41 = fb_StrConcat( &TMP$426$4, (void*)LN$1, -1ll, (void*)vr$38, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$41, -1ll, 0 );
			}
			label$639:;
		}
		label$636:;
		I$2 = I$2 + 1ll;
		label$635:;
		if( I$2 <= TMP$409$2 ) goto label$638;
		label$637:;
	}
	__builtin_memset( &TMP$427$1, 0, 24ll );
	FBSTRING* vr$45 = fb_StrConcat( &TMP$427$1, (void*)LN$1, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$45, -1ll, 0 );
	label$634:;
}

static void HBUILDWSTRLIT( FBSTRING* LN$1, uint32* W$1, int64 LENGTH$1 )
{
	FBSTRING TMP$429$1;
	FBSTRING TMP$439$1;
	label$657:;
	int64 CH$1;
	int64 WCHARSIZE$1;
	__builtin_memset( &TMP$429$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$429$1, (void*)LN$1, -1ll, (void*)"L\x22", 3ll );
	fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$2, -1ll, 0 );
	WCHARSIZE$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$430$2;
		TMP$430$2 = LENGTH$1 + -2ll;
		goto label$659;
		label$662:;
		{
			CH$1 = (int64)*(uint32*)((uint8*)W$1 + (I$2 << (2ll & 63ll)));
			int64 vr$7 = HCHARNEEDSESCAPING( CH$1, 34ll );
			if( vr$7 == 0ll ) goto label$664;
			{
				FBSTRING TMP$431$4;
				FBSTRING TMP$432$4;
				FBSTRING* vr$10 = fb_HEXEx_l( (uint64)CH$1, (int32)(WCHARSIZE$1 << (1ll & 63ll)) );
				__builtin_memset( &TMP$431$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$431$4, (void*)"\x5Cx", 3ll, (void*)vr$10, -1ll );
				__builtin_memset( &TMP$432$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$432$4, (void*)LN$1, -1ll, (void*)vr$13, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$16, -1ll, 0 );
				int64 vr$20 = HISVALIDHEXDIGIT( (int64)*(uint32*)((uint8*)((uint8*)W$1 + (I$2 << (2ll & 63ll))) + 4ll) );
				if( vr$20 == 0ll ) goto label$666;
				{
					FBSTRING TMP$434$5;
					__builtin_memset( &TMP$434$5, 0, 24ll );
					FBSTRING* vr$23 = fb_StrConcat( &TMP$434$5, (void*)LN$1, -1ll, (void*)"\x22 L\x22", 5ll );
					fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$23, -1ll, 0 );
				}
				label$666:;
				label$665:;
			}
			goto label$663;
			label$664:;
			if( (uint64)CH$1 != 63ull ) goto label$667;
			{
				FBSTRING TMP$435$4;
				__builtin_memset( &TMP$435$4, 0, 24ll );
				FBSTRING* vr$26 = fb_StrConcat( &TMP$435$4, (void*)LN$1, -1ll, (void*)"?", 2ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$26, -1ll, 0 );
				if( (uint64)(int64)*(uint32*)((uint8*)((uint8*)W$1 + (I$2 << (2ll & 63ll))) + 4ll) != 63ull ) goto label$669;
				{
					{
						uint32 TMP$436$6;
						TMP$436$6 = *(uint32*)((uint8*)((uint8*)W$1 + (I$2 << (2ll & 63ll))) + 8ll);
						if( (uint64)(int64)TMP$436$6 == 61ull ) goto label$672;
						label$673:;
						if( (uint64)(int64)TMP$436$6 == 47ull ) goto label$672;
						label$674:;
						if( (uint64)(int64)TMP$436$6 == 39ull ) goto label$672;
						label$675:;
						if( (uint64)(int64)TMP$436$6 == 40ull ) goto label$672;
						label$676:;
						if( (uint64)(int64)TMP$436$6 == 41ull ) goto label$672;
						label$677:;
						if( (uint64)(int64)TMP$436$6 == 33ull ) goto label$672;
						label$678:;
						if( (uint64)(int64)TMP$436$6 == 60ull ) goto label$672;
						label$679:;
						if( (uint64)(int64)TMP$436$6 == 62ull ) goto label$672;
						label$680:;
						if( (uint64)(int64)TMP$436$6 != 45ull ) goto label$671;
						label$672:;
						{
							FBSTRING TMP$437$7;
							__builtin_memset( &TMP$437$7, 0, 24ll );
							FBSTRING* vr$43 = fb_StrConcat( &TMP$437$7, (void*)LN$1, -1ll, (void*)"\x22 L\x22", 5ll );
							fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$43, -1ll, 0 );
						}
						label$671:;
						label$670:;
					}
				}
				label$669:;
				label$668:;
			}
			goto label$663;
			label$667:;
			{
				FBSTRING TMP$438$4;
				FBSTRING* vr$44 = fb_CHR( 1, CH$1 );
				__builtin_memset( &TMP$438$4, 0, 24ll );
				FBSTRING* vr$47 = fb_StrConcat( &TMP$438$4, (void*)LN$1, -1ll, (void*)vr$44, -1ll );
				fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$47, -1ll, 0 );
			}
			label$663:;
		}
		label$660:;
		I$2 = I$2 + 1ll;
		label$659:;
		if( I$2 <= TMP$430$2 ) goto label$662;
		label$661:;
	}
	__builtin_memset( &TMP$439$1, 0, 24ll );
	FBSTRING* vr$51 = fb_StrConcat( &TMP$439$1, (void*)LN$1, -1ll, (void*)"\x22", 2ll );
	fb_StrAssign( (void*)LN$1, -1ll, (void*)vr$51, -1ll, 0 );
	label$658:;
}

static uint8* HBOPTOSTR( int64 OP$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$681:;
	{
		uint64 TMP$440$2;
		TMP$440$2 = (uint64)OP$1;
		goto label$684;
		label$685:;
		{
			fb$result$1 = (uint8*)" + ";
		}
		goto label$683;
		label$686:;
		{
			fb$result$1 = (uint8*)" - ";
		}
		goto label$683;
		label$687:;
		{
			fb$result$1 = (uint8*)" * ";
		}
		goto label$683;
		label$688:;
		{
			fb$result$1 = (uint8*)" / ";
		}
		goto label$683;
		label$689:;
		{
			fb$result$1 = (uint8*)" / ";
		}
		goto label$683;
		label$690:;
		{
			fb$result$1 = (uint8*)" % ";
		}
		goto label$683;
		label$691:;
		{
			fb$result$1 = (uint8*)" << ";
		}
		goto label$683;
		label$692:;
		{
			fb$result$1 = (uint8*)" >> ";
		}
		goto label$683;
		label$693:;
		{
			fb$result$1 = (uint8*)" & ";
		}
		goto label$683;
		label$694:;
		{
			fb$result$1 = (uint8*)" | ";
		}
		goto label$683;
		label$695:;
		{
			fb$result$1 = (uint8*)" ^ ";
		}
		goto label$683;
		label$696:;
		{
			fb$result$1 = (uint8*)" == ";
		}
		goto label$683;
		label$697:;
		{
			fb$result$1 = (uint8*)" > ";
		}
		goto label$683;
		label$698:;
		{
			fb$result$1 = (uint8*)" < ";
		}
		goto label$683;
		label$699:;
		{
			fb$result$1 = (uint8*)" != ";
		}
		goto label$683;
		label$700:;
		{
			fb$result$1 = (uint8*)" >= ";
		}
		goto label$683;
		label$701:;
		{
			fb$result$1 = (uint8*)" <= ";
		}
		goto label$683;
		label$684:;
		static const void* tmp$697[23ll] = {
			&&label$685,
			&&label$686,
			&&label$687,
			&&label$688,
			&&label$689,
			&&label$690,
			&&label$693,
			&&label$694,
			&&label$683,
			&&label$683,
			&&label$695,
			&&label$683,
			&&label$683,
			&&label$691,
			&&label$692,
			&&label$683,
			&&label$683,
			&&label$696,
			&&label$697,
			&&label$698,
			&&label$699,
			&&label$700,
			&&label$701,
		};
		if( (TMP$440$2 - 28ull) > 22ull ) goto label$683;
		goto *tmp$697[TMP$440$2 - 28ull];
		label$683:;
	}
	label$682:;
	return fb$result$1;
}

static uint8* HUOPTOSTR( int64 OP$1, int64 DTYPE$1, int64* IS_BUILTIN$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$702:;
	*IS_BUILTIN$1 = 0ll;
	{
		if( OP$1 != 22ll ) goto label$705;
		label$706:;
		{
			fb$result$1 = (uint8*)"&";
		}
		goto label$704;
		label$705:;
		if( OP$1 != 76ll ) goto label$707;
		label$708:;
		{
			fb$result$1 = (uint8*)"*";
		}
		goto label$704;
		label$707:;
		if( OP$1 != 54ll ) goto label$709;
		label$710:;
		{
			fb$result$1 = (uint8*)"-";
		}
		goto label$704;
		label$709:;
		if( OP$1 != 52ll ) goto label$711;
		label$712:;
		{
			fb$result$1 = (uint8*)"~";
		}
		goto label$704;
		label$711:;
		if( OP$1 != 56ll ) goto label$713;
		label$714:;
		{
			*IS_BUILTIN$1 = -1ll;
			{
				int64 TMP$459$4;
				uint64 TMP$460$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$715;
				TMP$459$4 = 24ll;
				goto label$1208;
				label$715:;
				TMP$459$4 = DTYPE$1 & 31ll;
				label$1208:;
				TMP$460$4 = *(uint64*)(((uint8*)SYMB_DTYPETB$ + (TMP$459$4 * 56ll)) + 40ll);
				goto label$717;
				label$718:;
				{
					fb$result$1 = (uint8*)"__builtin_fabsf";
				}
				goto label$716;
				label$719:;
				{
					fb$result$1 = (uint8*)"__builtin_fabs";
				}
				goto label$716;
				label$720:;
				{
					fb$result$1 = (uint8*)"__builtin_llabs";
				}
				goto label$716;
				label$721:;
				{
					fb$result$1 = (uint8*)"__builtin_abs";
				}
				goto label$716;
				label$717:;
				static const void* tmp$698[4ll] = {
					&&label$720,
					&&label$720,
					&&label$718,
					&&label$719,
				};
				if( (TMP$460$4 - 7ull) > 3ull ) goto label$721;
				goto *tmp$698[TMP$460$4 - 7ull];
				label$716:;
			}
		}
		goto label$704;
		label$713:;
		{
			*IS_BUILTIN$1 = -1ll;
			if( (DTYPE$1 & 511ll) != 15ll ) goto label$724;
			{
				{
					uint64 TMP$465$5;
					TMP$465$5 = (uint64)OP$1;
					goto label$726;
					label$727:;
					{
						fb$result$1 = (uint8*)"__builtin_sinf";
					}
					goto label$725;
					label$728:;
					{
						fb$result$1 = (uint8*)"__builtin_asinf";
					}
					goto label$725;
					label$729:;
					{
						fb$result$1 = (uint8*)"__builtin_cosf";
					}
					goto label$725;
					label$730:;
					{
						fb$result$1 = (uint8*)"__builtin_acosf";
					}
					goto label$725;
					label$731:;
					{
						fb$result$1 = (uint8*)"__builtin_tanf";
					}
					goto label$725;
					label$732:;
					{
						fb$result$1 = (uint8*)"__builtin_atanf";
					}
					goto label$725;
					label$733:;
					{
						fb$result$1 = (uint8*)"__builtin_sqrtf";
					}
					goto label$725;
					label$734:;
					{
						fb$result$1 = (uint8*)"__builtin_logf";
					}
					goto label$725;
					label$735:;
					{
						fb$result$1 = (uint8*)"__builtin_expf";
					}
					goto label$725;
					label$736:;
					{
						fb$result$1 = (uint8*)"__builtin_floorf";
					}
					goto label$725;
					label$737:;
					{
					}
					goto label$725;
					label$726:;
					static const void* tmp$699[13ll] = {
						&&label$727,
						&&label$728,
						&&label$729,
						&&label$730,
						&&label$731,
						&&label$732,
						&&label$737,
						&&label$733,
						&&label$737,
						&&label$737,
						&&label$734,
						&&label$735,
						&&label$736,
					};
					if( (TMP$465$5 - 58ull) > 12ull ) goto label$737;
					goto *tmp$699[TMP$465$5 - 58ull];
					label$725:;
				}
			}
			goto label$723;
			label$724:;
			{
				{
					uint64 TMP$476$5;
					TMP$476$5 = (uint64)OP$1;
					goto label$739;
					label$740:;
					{
						fb$result$1 = (uint8*)"__builtin_sin";
					}
					goto label$738;
					label$741:;
					{
						fb$result$1 = (uint8*)"__builtin_asin";
					}
					goto label$738;
					label$742:;
					{
						fb$result$1 = (uint8*)"__builtin_cos";
					}
					goto label$738;
					label$743:;
					{
						fb$result$1 = (uint8*)"__builtin_acos";
					}
					goto label$738;
					label$744:;
					{
						fb$result$1 = (uint8*)"__builtin_tan";
					}
					goto label$738;
					label$745:;
					{
						fb$result$1 = (uint8*)"__builtin_atan";
					}
					goto label$738;
					label$746:;
					{
						fb$result$1 = (uint8*)"__builtin_sqrt";
					}
					goto label$738;
					label$747:;
					{
						fb$result$1 = (uint8*)"__builtin_log";
					}
					goto label$738;
					label$748:;
					{
						fb$result$1 = (uint8*)"__builtin_exp";
					}
					goto label$738;
					label$749:;
					{
						fb$result$1 = (uint8*)"__builtin_floor";
					}
					goto label$738;
					label$750:;
					{
					}
					goto label$738;
					label$739:;
					static const void* tmp$700[13ll] = {
						&&label$740,
						&&label$741,
						&&label$742,
						&&label$743,
						&&label$744,
						&&label$745,
						&&label$750,
						&&label$746,
						&&label$750,
						&&label$750,
						&&label$747,
						&&label$748,
						&&label$749,
					};
					if( (TMP$476$5 - 58ull) > 12ull ) goto label$750;
					goto *tmp$700[TMP$476$5 - 58ull];
					label$738:;
				}
			}
			label$723:;
		}
		label$722:;
		label$704:;
	}
	label$703:;
	return fb$result$1;
}

static void HIMM2TEXT( FBSTRING* S$1, struct $8EXPRNODE* N$1 )
{
	int64 TMP$487$1;
	label$751:;
	if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$753;
	TMP$487$1 = 24ll;
	goto label$1209;
	label$753:;
	TMP$487$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
	label$1209:;
	if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$487$1 * 56ll)) != 1ll ) goto label$755;
	{
		FBSTRING TMP$488$2;
		FBSTRING* vr$7 = HEMITFLOAT( *(int64*)((uint8*)N$1 + 8ll), *(double*)((uint8*)N$1 + 40ll) );
		__builtin_memset( &TMP$488$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$488$2, (void*)S$1, -1ll, (void*)vr$7, -1ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$10, -1ll, 0 );
	}
	goto label$754;
	label$755:;
	{
		FBSTRING TMP$489$2;
		FBSTRING* vr$13 = HEMITINT( *(int64*)((uint8*)N$1 + 8ll), *(int64*)((uint8*)N$1 + 40ll) );
		__builtin_memset( &TMP$489$2, 0, 24ll );
		FBSTRING* vr$16 = fb_StrConcat( &TMP$489$2, (void*)S$1, -1ll, (void*)vr$13, -1ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$16, -1ll, 0 );
	}
	label$754:;
	label$752:;
}

static void HSYM2TEXT( FBSTRING* S$1, struct $8FBSYMBOL* SYM$1 )
{
	label$756:;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1024ll) == 0ll ) goto label$759;
	{
		if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 7ll ) goto label$761;
		{
			uint32* vr$7 = HUNESCAPEW( *(uint32**)((uint8*)SYM$1 + 96ll) );
			HBUILDWSTRLIT( S$1, vr$7, *(int64*)((uint8*)SYM$1 + 80ll) / *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll) );
		}
		goto label$760;
		label$761:;
		{
			uint8* vr$10 = HUNESCAPE( *(uint8**)((uint8*)SYM$1 + 96ll) );
			HBUILDSTRLIT( S$1, vr$10, *(int64*)((uint8*)SYM$1 + 80ll) );
		}
		label$760:;
	}
	goto label$758;
	label$759:;
	{
		FBSTRING TMP$493$2;
		if( *(int64*)SYM$1 != 7ll ) goto label$763;
		{
			FBSTRING TMP$491$3;
			__builtin_memset( &TMP$491$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$491$3, (void*)S$1, -1ll, (void*)"&&", 3ll );
			fb_StrAssign( (void*)S$1, -1ll, (void*)vr$14, -1ll, 0 );
		}
		goto label$762;
		label$763:;
		if( *(int64*)SYM$1 != 3ll ) goto label$764;
		{
			FBSTRING TMP$492$3;
			__builtin_memset( &TMP$492$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$492$3, (void*)S$1, -1ll, (void*)"&", 2ll );
			fb_StrAssign( (void*)S$1, -1ll, (void*)vr$18, -1ll, 0 );
		}
		label$764:;
		label$762:;
		uint8* vr$19 = SYMBGETMANGLEDNAME( SYM$1 );
		__builtin_memset( &TMP$493$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$493$2, (void*)S$1, -1ll, (void*)vr$19, 0ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$22, -1ll, 0 );
	}
	label$758:;
	label$757:;
}

static void HEXPRFLUSH( struct $8EXPRNODE* N$1, int64 NEED_PARENS$1 )
{
	label$765:;
	struct $8EXPRNODE* L$1;
	struct $8FBSYMBOL* SYM$1;
	int64 IS_BUILTIN$1;
	{
		uint64 TMP$494$2;
		TMP$494$2 = *(uint64*)N$1;
		goto label$768;
		label$769:;
		{
			FBSTRING TMP$495$3;
			__builtin_memset( &TMP$495$3, 0, 24ll );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$495$3, (void*)((uint8*)&CTX$ + 5424ll), -1ll, *(void**)((uint8*)N$1 + 40ll), 0ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$5, -1ll, 0 );
		}
		goto label$767;
		label$770:;
		{
			HIMM2TEXT( (FBSTRING*)((uint8*)&CTX$ + 5424ll), N$1 );
		}
		goto label$767;
		label$771:;
		{
			HSYM2TEXT( (FBSTRING*)((uint8*)&CTX$ + 5424ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 40ll) );
		}
		goto label$767;
		label$772:;
		{
			FBSTRING TMP$496$3;
			FBSTRING TMP$497$3;
			FBSTRING TMP$498$3;
			FBSTRING* vr$12 = HEMITTYPE( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
			__builtin_memset( &TMP$496$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$496$3, (void*)"(", 2ll, (void*)vr$12, -1ll );
			__builtin_memset( &TMP$497$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$497$3, (void*)vr$15, -1ll, (void*)")", 2ll );
			__builtin_memset( &TMP$498$3, 0, 24ll );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$498$3, (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$18, -1ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$22, -1ll, 0 );
			HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
		}
		goto label$767;
		label$773:;
		{
			{
				int64 TMP$499$4;
				TMP$499$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$499$4 != 112ll ) goto label$775;
				label$776:;
				{
					FBSTRING TMP$501$5;
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_va_arg( ", 19ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)", ", 3ll, 0 );
					FBSTRING* vr$31 = HEMITTYPE( *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
					__builtin_memset( &TMP$501$5, 0, 24ll );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$501$5, (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$31, -1ll );
					fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$35, -1ll, 0 );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
				}
				goto label$774;
				label$775:;
				if( TMP$499$4 != 109ll ) goto label$777;
				label$778:;
				{
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_va_start( ", 21ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)", ", 3ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
				}
				goto label$774;
				label$777:;
				if( TMP$499$4 != 110ll ) goto label$779;
				label$780:;
				{
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_va_end( ", 19ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
				}
				goto label$774;
				label$779:;
				if( TMP$499$4 != 111ll ) goto label$781;
				label$782:;
				{
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_va_copy( ", 20ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)", ", 3ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll), -1ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
				}
				goto label$774;
				label$781:;
				{
				}
				label$783:;
				label$774:;
			}
		}
		goto label$767;
		label$784:;
		{
			FBSTRING TMP$505$3;
			uint8* vr$54 = HUOPTOSTR( *(int64*)((uint8*)N$1 + 40ll), *(int64*)((uint8*)N$1 + 8ll), &IS_BUILTIN$1 );
			__builtin_memset( &TMP$505$3, 0, 24ll );
			FBSTRING* vr$58 = fb_StrConcat( &TMP$505$3, (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$54, 0ll );
			fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$58, -1ll, 0 );
			NEED_PARENS$1 = (int64)-(*(int64*)*(struct $8EXPRNODE**)((uint8*)N$1 + 24ll) == 4ll) | IS_BUILTIN$1;
			if( NEED_PARENS$1 == 0ll ) goto label$786;
			{
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"(", 2ll, 0 );
				if( IS_BUILTIN$1 == 0ll ) goto label$788;
				{
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)" ", 2ll, 0 );
				}
				label$788:;
				label$787:;
			}
			label$786:;
			label$785:;
			HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
			if( NEED_PARENS$1 == 0ll ) goto label$790;
			{
				if( IS_BUILTIN$1 == 0ll ) goto label$792;
				{
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)" ", 2ll, 0 );
				}
				label$792:;
				label$791:;
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
			}
			label$790:;
			label$789:;
		}
		goto label$767;
		label$793:;
		{
			{
				int64 TMP$506$4;
				TMP$506$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$506$4 != 64ll ) goto label$795;
				label$796:;
				{
					if( *(int64*)((uint8*)N$1 + 8ll) != 15ll ) goto label$798;
					{
						fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_atan2f", 17ll, 0 );
					}
					goto label$797;
					label$798:;
					{
						fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"__builtin_atan2", 16ll, 0 );
					}
					label$797:;
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"(", 2ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), 0ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)", ", 3ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll), 0ll );
					fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
				}
				goto label$794;
				label$795:;
				{
					FBSTRING TMP$509$5;
					if( NEED_PARENS$1 == 0ll ) goto label$801;
					{
						fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"(", 2ll, 0 );
					}
					label$801:;
					label$800:;
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 24ll), -1ll );
					uint8* vr$81 = HBOPTOSTR( *(int64*)((uint8*)N$1 + 40ll) );
					__builtin_memset( &TMP$509$5, 0, 24ll );
					FBSTRING* vr$85 = fb_StrConcat( &TMP$509$5, (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$81, 0ll );
					fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)vr$85, -1ll, 0 );
					HEXPRFLUSH( *(struct $8EXPRNODE**)((uint8*)N$1 + 32ll), -1ll );
					if( NEED_PARENS$1 == 0ll ) goto label$803;
					{
						fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)")", 2ll, 0 );
					}
					label$803:;
					label$802:;
				}
				label$799:;
				label$794:;
			}
		}
		goto label$767;
		label$768:;
		static const void* tmp$701[7ll] = {
			&&label$769,
			&&label$770,
			&&label$771,
			&&label$772,
			&&label$784,
			&&label$793,
			&&label$773,
		};
		if( TMP$494$2 > 6ull ) goto label$767;
		goto *tmp$701[TMP$494$2 - 0ull];
		label$767:;
	}
	label$766:;
}

static FBSTRING* EXPRFLUSH( struct $8EXPRNODE* N$1, int64 NEED_PARENS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$804:;
	HEXPRFLUSH( N$1, NEED_PARENS$1 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)((uint8*)&CTX$ + 5424ll), -1ll, 0 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5424ll), -1ll, (void*)"", 1ll, 0 );
	EXPRFREETREE( N$1 );
	label$805:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static struct $8EXPRNODE* EXPRNEWOFFSET( struct $8FBSYMBOL* SYM$1, int64 OFS$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$806:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$1 = EXPRNEWSYM( SYM$1 );
	L$1 = vr$1;
	int64 vr$5 = SYMBISCARRAY( SYM$1 );
	if( ((((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 512ll) != 0ll) | vr$5) | (int64)-(*(int64*)SYM$1 == 3ll)) | (int64)-(*(int64*)SYM$1 == 7ll)) != 0ll ) goto label$809;
	{
		struct $8EXPRNODE* vr$13 = EXPRNEWUOP( 22ll, L$1 );
		L$1 = vr$13;
	}
	label$809:;
	label$808:;
	if( OFS$1 == 0ll ) goto label$811;
	{
		struct $8EXPRNODE* vr$14 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, L$1 );
		L$1 = vr$14;
		struct $8EXPRNODE* vr$15 = EXPRNEWIMMI( OFS$1, 8ll );
		struct $8EXPRNODE* vr$16 = EXPRNEWBOP( 28ll, L$1, vr$15 );
		L$1 = vr$16;
	}
	label$811:;
	label$810:;
	fb$result$1 = L$1;
	label$807:;
	return fb$result$1;
}

static struct $8EXPRNODE* EXPRNEWVREG( struct $6IRVREG* VREG$1, int64 IS_LVALUE$1 )
{
	struct $8EXPRNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$812:;
	struct $8EXPRNODE* L$1;
	int64 DTYPE$1;
	int64 HAVE_OFFSET$1;
	{
		uint64 TMP$510$2;
		TMP$510$2 = *(uint64*)VREG$1;
		goto label$815;
		label$816:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) != (struct $8FBSYMBOL*)0ull ) goto label$818;
			{
				if( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$820;
				{
					struct $8EXPRNODE* vr$5 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll), 0ll );
					L$1 = vr$5;
					if( *(int64*)((uint8*)VREG$1 + 64ll) == 0ll ) goto label$822;
					{
						struct $8EXPRNODE* vr$7 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, L$1 );
						L$1 = vr$7;
						struct $8EXPRNODE* vr$9 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 64ll), 8ll );
						struct $8EXPRNODE* vr$10 = EXPRNEWBOP( 28ll, L$1, vr$9 );
						L$1 = vr$10;
					}
					label$822:;
					label$821:;
				}
				goto label$819;
				label$820:;
				{
					struct $8EXPRNODE* vr$12 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 64ll), 8ll );
					L$1 = vr$12;
				}
				label$819:;
				struct $8EXPRNODE* vr$27 = EXPRNEWCAST( (((*(int64*)((uint8*)VREG$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)VREG$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)VREG$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)VREG$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll), L$1 );
				L$1 = vr$27;
				struct $8EXPRNODE* vr$28 = EXPRNEWUOP( 76ll, L$1 );
				L$1 = vr$28;
				goto label$814;
			}
			label$818:;
			label$817:;
			HAVE_OFFSET$1 = (int64)-(*(int64*)((uint8*)VREG$1 + 64ll) != 0ll) | (int64)-(*(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) != (struct $6IRVREG*)0ull);
			int64 IS_C_ARRAY$3;
			int64 vr$35 = SYMBISCARRAY( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) );
			IS_C_ARRAY$3 = vr$35;
			int64 DO_DEREF$3;
			DO_DEREF$3 = HAVE_OFFSET$1 | IS_C_ARRAY$3;
			struct $8EXPRNODE* vr$38 = EXPRNEWSYM( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) );
			L$1 = vr$38;
			int64 SYMDTYPE$3;
			SYMDTYPE$3 = *(int64*)((uint8*)L$1 + 8ll);
			struct $8FBSYMBOL* SYMSUBTYPE$3;
			SYMSUBTYPE$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
			if( ((int64)-(*(int64*)((uint8*)VREG$1 + 8ll) != SYMDTYPE$3) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll) != SYMSUBTYPE$3)) == 0ll ) goto label$824;
			{
				int64 TMP$511$4;
				int64 TMP$512$4;
				if( (*(int64*)((uint8*)VREG$1 + 8ll) & 480ll) == 0ll ) goto label$825;
				TMP$511$4 = 24ll;
				goto label$1210;
				label$825:;
				TMP$511$4 = *(int64*)((uint8*)VREG$1 + 8ll) & 31ll;
				label$1210:;
				if( (SYMDTYPE$3 & 480ll) == 0ll ) goto label$826;
				TMP$512$4 = 24ll;
				goto label$1211;
				label$826:;
				TMP$512$4 = SYMDTYPE$3 & 31ll;
				label$1211:;
				DO_DEREF$3 = DO_DEREF$3 | (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$511$4 * 56ll)) != *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$512$4 * 56ll)));
				{
					int64 TMP$513$5;
					int64 TMP$514$5;
					if( (*(int64*)((uint8*)VREG$1 + 8ll) & 480ll) == 0ll ) goto label$827;
					TMP$513$5 = 24ll;
					goto label$1212;
					label$827:;
					TMP$513$5 = *(int64*)((uint8*)VREG$1 + 8ll) & 31ll;
					label$1212:;
					TMP$514$5 = TMP$513$5;
					if( TMP$514$5 != 17ll ) goto label$829;
					label$830:;
					{
						DO_DEREF$3 = -1ll;
					}
					goto label$828;
					label$829:;
					if( TMP$514$5 != 20ll ) goto label$831;
					label$832:;
					{
						$19FB_CVA_LIST_TYPEDEF vr$64 = SYMBGETVALISTTYPE( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) + 56ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) + 64ll) );
						DO_DEREF$3 = DO_DEREF$3 | (int64)-(vr$64 != 3ll);
					}
					goto label$828;
					label$831:;
					{
						{
							int64 TMP$515$7;
							int64 TMP$516$7;
							if( (SYMDTYPE$3 & 480ll) == 0ll ) goto label$834;
							TMP$515$7 = 24ll;
							goto label$1213;
							label$834:;
							TMP$515$7 = SYMDTYPE$3 & 31ll;
							label$1213:;
							TMP$516$7 = TMP$515$7;
							if( TMP$516$7 != 17ll ) goto label$836;
							label$837:;
							{
								DO_DEREF$3 = -1ll;
							}
							goto label$835;
							label$836:;
							if( TMP$516$7 != 20ll ) goto label$838;
							label$839:;
							{
								$19FB_CVA_LIST_TYPEDEF vr$73 = SYMBGETVALISTTYPE( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) + 56ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll) + 64ll) );
								DO_DEREF$3 = DO_DEREF$3 | (int64)-(vr$73 != 3ll);
							}
							label$838:;
							label$835:;
						}
					}
					label$833:;
					label$828:;
				}
			}
			label$824:;
			label$823:;
			if( DO_DEREF$3 != 0ll ) goto label$841;
			{
				goto label$814;
			}
			label$841:;
			label$840:;
			if( IS_C_ARRAY$3 != 0ll ) goto label$843;
			{
				struct $8EXPRNODE* vr$76 = EXPRNEWUOP( 22ll, L$1 );
				L$1 = vr$76;
			}
			label$843:;
			label$842:;
			if( HAVE_OFFSET$1 == 0ll ) goto label$845;
			{
				struct $8EXPRNODE* vr$77 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, L$1 );
				L$1 = vr$77;
				if( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll) == (struct $6IRVREG*)0ull ) goto label$847;
				{
					struct $8EXPRNODE* vr$80 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)VREG$1 + 80ll), 0ll );
					struct $8EXPRNODE* vr$81 = EXPRNEWBOP( 28ll, L$1, vr$80 );
					L$1 = vr$81;
				}
				label$847:;
				label$846:;
				if( *(int64*)((uint8*)VREG$1 + 64ll) == 0ll ) goto label$849;
				{
					struct $8EXPRNODE* vr$84 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 64ll), 8ll );
					struct $8EXPRNODE* vr$85 = EXPRNEWBOP( 28ll, L$1, vr$84 );
					L$1 = vr$85;
				}
				label$849:;
				label$848:;
			}
			label$845:;
			label$844:;
			struct $8EXPRNODE* vr$100 = EXPRNEWCAST( (((*(int64*)((uint8*)VREG$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)VREG$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)VREG$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)VREG$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll), L$1 );
			L$1 = vr$100;
			struct $8EXPRNODE* vr$101 = EXPRNEWUOP( 76ll, L$1 );
			L$1 = vr$101;
		}
		goto label$814;
		label$850:;
		{
			struct $8EXPRNODE* vr$104 = EXPRNEWOFFSET( *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 56ll), *(int64*)((uint8*)VREG$1 + 64ll) );
			L$1 = vr$104;
		}
		goto label$814;
		label$851:;
		{
			int64 TMP$517$3;
			DTYPE$1 = *(int64*)((uint8*)VREG$1 + 8ll);
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$852;
			TMP$517$3 = 24ll;
			goto label$1214;
			label$852:;
			TMP$517$3 = DTYPE$1 & 31ll;
			label$1214:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$517$3 * 56ll)) != 1ll ) goto label$854;
			{
				struct $8EXPRNODE* vr$110 = EXPRNEWIMMF( *(double*)((uint8*)VREG$1 + 48ll), DTYPE$1 );
				L$1 = vr$110;
			}
			goto label$853;
			label$854:;
			if( DTYPE$1 != 1ll ) goto label$855;
			{
				int64 TMP$518$4;
				if( *(int64*)((uint8*)VREG$1 + 48ll) == 0ll ) goto label$856;
				TMP$518$4 = 1ll;
				goto label$1215;
				label$856:;
				TMP$518$4 = 0ll;
				label$1215:;
				struct $8EXPRNODE* vr$112 = EXPRNEWIMMI( TMP$518$4, 8ll );
				L$1 = vr$112;
			}
			goto label$853;
			label$855:;
			{
				struct $8EXPRNODE* vr$114 = EXPRNEWIMMI( *(int64*)((uint8*)VREG$1 + 48ll), DTYPE$1 );
				L$1 = vr$114;
			}
			label$853:;
		}
		goto label$814;
		label$857:;
		{
			struct $8EXPRNODE* vr$116 = EXPRLOOKUP( *(int64*)((uint8*)VREG$1 + 24ll) );
			L$1 = vr$116;
			if( L$1 != (struct $8EXPRNODE*)0ull ) goto label$859;
			{
				FBSTRING TMP$520$4;
				FBSTRING TMP$521$4;
				__builtin_memset( &TMP$521$4, 0, 24ll );
				FBSTRING* vr$119 = fb_LongintToStr( *(int64*)((uint8*)VREG$1 + 24ll) );
				__builtin_memset( &TMP$520$4, 0, 24ll );
				FBSTRING* vr$122 = fb_StrConcat( &TMP$520$4, (void*)"vr$", 4ll, (void*)vr$119, -1ll );
				fb_StrAssign( (void*)&TMP$521$4, -1ll, (void*)vr$122, -1ll, 0 );
				struct $8EXPRNODE* vr$126 = EXPRNEWTEXT( *(int64*)((uint8*)VREG$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll), (uint8*)*(uint8**)&TMP$521$4 );
				L$1 = vr$126;
				fb_StrDelete( (FBSTRING*)&TMP$521$4 );
			}
			label$859:;
			label$858:;
		}
		goto label$814;
		label$815:;
		static const void* tmp$702[6ll] = {
			&&label$851,
			&&label$816,
			&&label$816,
			&&label$816,
			&&label$857,
			&&label$850,
		};
		if( TMP$510$2 > 5ull ) goto label$814;
		goto *tmp$702[TMP$510$2 - 0ull];
		label$814:;
	}
	if( IS_LVALUE$1 != 0ll ) goto label$861;
	{
		struct $8EXPRNODE* vr$130 = EXPRNEWCAST( *(int64*)((uint8*)VREG$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VREG$1 + 16ll), L$1 );
		L$1 = vr$130;
	}
	label$861:;
	label$860:;
	fb$result$1 = L$1;
	label$813:;
	return fb$result$1;
}

static void _EMITLABEL( struct $8FBSYMBOL* LABEL$1 )
{
	label$862:;
	int64 vr$0 = SECTIONINSIDEPROC(  );
	if( vr$0 == 0ll ) goto label$865;
	{
		FBSTRING TMP$523$2;
		FBSTRING TMP$524$2;
		__builtin_memset( &TMP$524$2, 0, 24ll );
		uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$523$2, 0, 24ll );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$523$2, (void*)vr$2, 0ll, (void*)":;", 3ll );
		fb_StrAssign( (void*)&TMP$524$2, -1ll, (void*)vr$5, -1ll, 0 );
		HWRITELINE( &TMP$524$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$524$2 );
	}
	label$865:;
	label$864:;
	label$863:;
}

static void EXPRSTORE( struct $6IRVREG* VR$1, struct $8EXPRNODE* R$1, int64 HAS_SIDEFX$1 )
{
	label$866:;
	static FBSTRING LN$1;
	static FBSTRING TEMPVAR$1;
	struct $8EXPRNODE* L$1;
	if( *(int64*)VR$1 != 4ll ) goto label$869;
	{
		if( HAS_SIDEFX$1 == 0ll ) goto label$871;
		{
			FBSTRING TMP$525$3;
			FBSTRING* vr$2 = fb_LongintToStr( *(int64*)((uint8*)VR$1 + 24ll) );
			__builtin_memset( &TMP$525$3, 0, 24ll );
			FBSTRING* vr$5 = fb_StrConcat( &TMP$525$3, (void*)"vr$", 4ll, (void*)vr$2, -1ll );
			fb_StrAssign( (void*)&TEMPVAR$1, -1ll, (void*)vr$5, -1ll, 0 );
			FBSTRING* vr$8 = HEMITTYPE( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll) );
			fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$8, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" ", 2ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&TEMPVAR$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = ", 4ll, 0 );
			FBSTRING* vr$9 = EXPRFLUSH( R$1, 0ll );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$9, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)";", 2ll, 0 );
			HWRITELINE( &LN$1, 0ll );
			struct $8EXPRNODE* vr$12 = EXPRNEWTEXT( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll), (uint8*)*(uint8**)&TEMPVAR$1 );
			R$1 = vr$12;
		}
		goto label$870;
		label$871:;
		{
			struct $8EXPRNODE* vr$15 = EXPRNEWCAST( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll), R$1 );
			R$1 = vr$15;
		}
		label$870:;
		EXPRCACHE( *(int64*)((uint8*)VR$1 + 24ll), R$1 );
	}
	goto label$868;
	label$869:;
	{
		struct $8EXPRNODE* vr$17 = EXPRNEWVREG( VR$1, -1ll );
		L$1 = vr$17;
		struct $8EXPRNODE* vr$20 = EXPRNEWCAST( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll), R$1 );
		R$1 = vr$20;
		if( ((int64)-((*(int64*)((uint8*)L$1 + 8ll) & 480ll) != 0ll) | (int64)-((*(int64*)((uint8*)R$1 + 8ll) & 480ll) != 0ll)) == 0ll ) goto label$873;
		{
			struct $8EXPRNODE* vr$30 = EXPRNEWCAST( *(int64*)((uint8*)L$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll), R$1 );
			R$1 = vr$30;
		}
		label$873:;
		label$872:;
		FBSTRING* vr$31 = EXPRFLUSH( L$1, 0ll );
		fb_StrAssign( (void*)&LN$1, -1ll, (void*)vr$31, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" = ", 4ll, 0 );
		FBSTRING* vr$32 = EXPRFLUSH( R$1, 0ll );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)vr$32, -1ll, 0 );
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)";", 2ll, 0 );
		HWRITELINE( &LN$1, 0ll );
	}
	label$868:;
	label$867:;
}

static void _EMITBOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1, struct $8FBSYMBOL* LABEL$1 )
{
	label$874:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* R$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0ll );
	L$1 = vr$0;
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0ll );
	R$1 = vr$1;
	if( LABEL$1 == (struct $8FBSYMBOL*)0ull ) goto label$877;
	{
		FBSTRING TMP$528$2;
		static FBSTRING S$2;
		fb_StrAssign( (void*)&S$2, -1ll, (void*)"if( ", 5ll, 0 );
		struct $8EXPRNODE* vr$2 = EXPRNEWBOP( OP$1, L$1, R$1 );
		FBSTRING* vr$3 = EXPRFLUSH( vr$2, 0ll );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)vr$3, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)" ) goto ", 9ll, 0 );
		uint8* vr$4 = SYMBGETMANGLEDNAME( LABEL$1 );
		__builtin_memset( &TMP$528$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$528$2, (void*)&S$2, -1ll, (void*)vr$4, 0ll );
		fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$7, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)";", 2ll, 0 );
		HWRITELINE( &S$2, 0ll );
		goto label$875;
	}
	label$877:;
	label$876:;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$879;
	{
		VR$1 = V1$1;
	}
	label$879:;
	label$878:;
	{
		uint64 TMP$529$2;
		TMP$529$2 = (uint64)OP$1;
		goto label$881;
		label$882:;
		{
			struct $8EXPRNODE* vr$8 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$8;
			if( *(int64*)((uint8*)VR$1 + 8ll) == 1ll ) goto label$884;
			{
				struct $8EXPRNODE* vr$10 = EXPRNEWUOP( 54ll, L$1 );
				L$1 = vr$10;
			}
			label$884:;
			label$883:;
		}
		goto label$880;
		label$885:;
		{
			if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$887;
			{
				struct $8EXPRNODE* vr$13 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, L$1 );
				L$1 = vr$13;
			}
			label$887:;
			label$886:;
			if( (*(int64*)((uint8*)V2$1 + 8ll) & 480ll) == 0ll ) goto label$889;
			{
				struct $8EXPRNODE* vr$16 = EXPRNEWCAST( 35ll, (struct $8FBSYMBOL*)0ull, R$1 );
				R$1 = vr$16;
			}
			label$889:;
			label$888:;
			struct $8EXPRNODE* vr$17 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$17;
		}
		goto label$880;
		label$890:;
		{
			struct $8EXPRNODE* vr$18 = EXPRNEWCAST( 16ll, (struct $8FBSYMBOL*)0ull, L$1 );
			L$1 = vr$18;
			struct $8EXPRNODE* vr$19 = EXPRNEWCAST( 16ll, (struct $8FBSYMBOL*)0ull, R$1 );
			R$1 = vr$19;
			struct $8EXPRNODE* vr$20 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$20;
		}
		goto label$880;
		label$891:;
		{
			struct $8EXPRNODE* vr$21 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$21;
		}
		goto label$880;
		label$892:;
		{
			int64 TMP$530$3;
			if( (*(int64*)((uint8*)L$1 + 8ll) & 480ll) == 0ll ) goto label$893;
			TMP$530$3 = 24ll;
			goto label$1216;
			label$893:;
			TMP$530$3 = *(int64*)((uint8*)L$1 + 8ll) & 31ll;
			label$1216:;
			struct $8EXPRNODE* vr$29 = EXPRNEWIMMI( (*(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$530$3 * 56ll)) + 8ll) << (3ll & 63ll)) + -1ll, 8ll );
			struct $8EXPRNODE* vr$30 = EXPRNEWBOP( 34ll, R$1, vr$29 );
			R$1 = vr$30;
			struct $8EXPRNODE* vr$31 = EXPRNEWBOP( OP$1, L$1, R$1 );
			L$1 = vr$31;
		}
		goto label$880;
		label$894:;
		{
			struct $8EXPRNODE* vr$32 = EXPRNEWBOP( 38ll, L$1, R$1 );
			L$1 = vr$32;
			if( *(int64*)((uint8*)VR$1 + 8ll) != 1ll ) goto label$896;
			{
				struct $8EXPRNODE* vr$34 = EXPRNEWIMMI( 1ll, 8ll );
				struct $8EXPRNODE* vr$35 = EXPRNEWBOP( 38ll, L$1, vr$34 );
				L$1 = vr$35;
			}
			goto label$895;
			label$896:;
			{
				struct $8EXPRNODE* vr$36 = EXPRNEWUOP( 52ll, L$1 );
				L$1 = vr$36;
			}
			label$895:;
		}
		goto label$880;
		label$897:;
		{
			if( *(int64*)((uint8*)VR$1 + 8ll) != 1ll ) goto label$899;
			{
				struct $8EXPRNODE* vr$38 = EXPRNEWIMMI( 1ll, 8ll );
				struct $8EXPRNODE* vr$39 = EXPRNEWBOP( 38ll, L$1, vr$38 );
				L$1 = vr$39;
			}
			goto label$898;
			label$899:;
			{
				struct $8EXPRNODE* vr$40 = EXPRNEWUOP( 52ll, L$1 );
				L$1 = vr$40;
			}
			label$898:;
			struct $8EXPRNODE* vr$41 = EXPRNEWBOP( 35ll, L$1, R$1 );
			L$1 = vr$41;
		}
		goto label$880;
		label$881:;
		static const void* tmp$703[23ll] = {
			&&label$885,
			&&label$885,
			&&label$891,
			&&label$890,
			&&label$891,
			&&label$891,
			&&label$891,
			&&label$891,
			&&label$880,
			&&label$880,
			&&label$891,
			&&label$894,
			&&label$897,
			&&label$892,
			&&label$892,
			&&label$880,
			&&label$880,
			&&label$882,
			&&label$882,
			&&label$882,
			&&label$882,
			&&label$882,
			&&label$882,
		};
		if( (TMP$529$2 - 28ull) > 22ull ) goto label$880;
		goto *tmp$703[TMP$529$2 - 28ull];
		label$880:;
	}
	EXPRSTORE( VR$1, L$1, 0ll );
	label$875:;
}

static void _EMITUOP( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$900:;
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$903;
	{
		VR$1 = V1$1;
	}
	label$903:;
	label$902:;
	struct $8EXPRNODE* EXPR$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0ll );
	EXPR$1 = vr$0;
	if( ((int64)-(OP$1 == 52ll) & (int64)-(*(int64*)((uint8*)VR$1 + 8ll) == 1ll)) == 0ll ) goto label$905;
	{
		struct $8EXPRNODE* vr$5 = EXPRNEWIMMI( 0ll, 8ll );
		struct $8EXPRNODE* vr$6 = EXPRNEWBOP( 45ll, EXPR$1, vr$5 );
		EXPR$1 = vr$6;
	}
	goto label$904;
	label$905:;
	{
		struct $8EXPRNODE* vr$7 = EXPRNEWUOP( OP$1, EXPR$1 );
		EXPR$1 = vr$7;
	}
	label$904:;
	EXPRSTORE( VR$1, EXPR$1, 0ll );
	label$901:;
}

static void _EMITCONVERT( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	int64 TMP$533$1;
	int64 TMP$534$1;
	label$906:;
	struct $8EXPRNODE* R$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V2$1, 0ll );
	R$1 = vr$0;
	if( ((int64)-(*(int64*)((uint8*)V1$1 + 8ll) != 1ll) & (int64)-(*(int64*)((uint8*)R$1 + 8ll) == 1ll)) == 0ll ) goto label$909;
	{
		if( *(int64*)R$1 != 1ll ) goto label$911;
		{
			*(int64*)((uint8*)R$1 + 40ll) = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
			*(int64*)((uint8*)R$1 + 8ll) = 11ll;
		}
		goto label$910;
		label$911:;
		{
			struct $8EXPRNODE* vr$11 = EXPRNEWUOP( 54ll, R$1 );
			R$1 = vr$11;
		}
		label$910:;
	}
	goto label$908;
	label$909:;
	if( ((int64)-(*(int64*)((uint8*)V1$1 + 8ll) == 1ll) & (int64)-(*(int64*)((uint8*)R$1 + 8ll) != 1ll)) == 0ll ) goto label$912;
	{
		if( *(int64*)R$1 != 1ll ) goto label$914;
		{
			int64 TMP$531$3;
			int64 TMP$532$3;
			if( (*(int64*)((uint8*)R$1 + 8ll) & 480ll) == 0ll ) goto label$915;
			TMP$531$3 = 24ll;
			goto label$1217;
			label$915:;
			TMP$531$3 = *(int64*)((uint8*)R$1 + 8ll) & 31ll;
			label$1217:;
			if( *(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$531$3 * 56ll)) != 1ll ) goto label$916;
			TMP$532$3 = (int64)-(*(double*)((uint8*)R$1 + 40ll) != 0x0p+0);
			goto label$1218;
			label$916:;
			TMP$532$3 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) != 0ll);
			label$1218:;
			*(int64*)((uint8*)R$1 + 40ll) = -TMP$532$3;
			*(int64*)((uint8*)R$1 + 8ll) = 11ll;
		}
		goto label$913;
		label$914:;
		{
			struct $8EXPRNODE* vr$30 = EXPRNEWIMMI( 0ll, 8ll );
			struct $8EXPRNODE* vr$31 = EXPRNEWBOP( 48ll, R$1, vr$30 );
			R$1 = vr$31;
		}
		label$913:;
	}
	goto label$908;
	label$912:;
	if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$918;
	TMP$533$1 = 24ll;
	goto label$1219;
	label$918:;
	TMP$533$1 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
	label$1219:;
	if( (*(int64*)((uint8*)R$1 + 8ll) & 480ll) == 0ll ) goto label$919;
	TMP$534$1 = 24ll;
	goto label$1220;
	label$919:;
	TMP$534$1 = *(int64*)((uint8*)R$1 + 8ll) & 31ll;
	label$1220:;
	if( ((int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$533$1 * 56ll)) == 0ll) & (int64)-(*(int64*)((uint8*)SYMB_DTYPETB$ + (TMP$534$1 * 56ll)) == 1ll)) == 0ll ) goto label$917;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 24ll );
		int64 TEMPDTYPE$2;
		__builtin_memset( &TEMPDTYPE$2, 0, 8ll );
		{
			int64 TMP$535$3;
			int64 TMP$536$3;
			if( (*(int64*)((uint8*)V1$1 + 8ll) & 480ll) == 0ll ) goto label$920;
			TMP$535$3 = 24ll;
			goto label$1221;
			label$920:;
			TMP$535$3 = *(int64*)((uint8*)V1$1 + 8ll) & 31ll;
			label$1221:;
			TMP$536$3 = *(int64*)(((uint8*)SYMB_DTYPETB$ + (TMP$535$3 * 56ll)) + 40ll);
			if( TMP$536$3 > 5ll ) goto label$922;
			label$923:;
			{
				if( *(int64*)((uint8*)R$1 + 8ll) != 15ll ) goto label$925;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_F2I", 7ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 1ull;
				}
				goto label$924;
				label$925:;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_D2I", 7ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 8ull;
				}
				label$924:;
				TEMPDTYPE$2 = 11ll;
			}
			goto label$921;
			label$922:;
			if( TMP$536$3 > 7ll ) goto label$926;
			label$927:;
			{
				if( *(int64*)((uint8*)R$1 + 8ll) != 15ll ) goto label$929;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_F2L", 7ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 2ull;
				}
				goto label$928;
				label$929:;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_D2L", 7ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 16ull;
				}
				label$928:;
				TEMPDTYPE$2 = 13ll;
			}
			goto label$921;
			label$926:;
			{
				if( *(int64*)((uint8*)R$1 + 8ll) != 15ll ) goto label$932;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_F2UL", 8ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 4ull;
				}
				goto label$931;
				label$932:;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)"fb_D2UL", 8ll, 0 );
					*(uint64*)((uint8*)&CTX$ + 5208ll) = *(uint64*)((uint8*)&CTX$ + 5208ll) | 32ull;
				}
				label$931:;
				TEMPDTYPE$2 = 14ll;
			}
			label$930:;
			label$921:;
		}
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)"( ", 3ll, 0 );
		FBSTRING* vr$68 = EXPRFLUSH( R$1, 0ll );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)vr$68, -1ll, 0 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)" )", 3ll, 0 );
		struct $8EXPRNODE* vr$71 = EXPRNEWTEXT( TEMPDTYPE$2, (struct $8FBSYMBOL*)0ull, (uint8*)*(uint8**)&S$2 );
		R$1 = vr$71;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$917:;
	label$908:;
	EXPRSTORE( V1$1, R$1, 0ll );
	label$907:;
}

static void _EMITSTORE( struct $6IRVREG* V1$1, struct $6IRVREG* V2$1 )
{
	label$933:;
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V2$1, 0ll );
	EXPRSTORE( V1$1, vr$0, 0ll );
	label$934:;
}

static void _EMITSPILLREGS( void )
{
	label$935:;
	label$936:;
}

static void _EMITLOAD( struct $6IRVREG* V1$1 )
{
	label$937:;
	label$938:;
}

static void _EMITLOADRES( struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	FBSTRING TMP$544$1;
	FBSTRING TMP$545$1;
	FBSTRING TMP$546$1;
	label$939:;
	_EMITSTORE( VR$1, V1$1 );
	__builtin_memset( &TMP$546$1, 0, 24ll );
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( VR$1, 0ll );
	FBSTRING* vr$2 = EXPRFLUSH( vr$1, 0ll );
	__builtin_memset( &TMP$544$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$544$1, (void*)"return ", 8ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$545$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$545$1, (void*)vr$5, -1ll, (void*)";", 2ll );
	fb_StrAssign( (void*)&TMP$546$1, -1ll, (void*)vr$8, -1ll, 0 );
	HWRITELINE( &TMP$546$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$546$1 );
	label$940:;
}

static void _EMITADDR( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1 )
{
	label$941:;
	struct $8EXPRNODE* L$1;
	L$1 = (struct $8EXPRNODE*)0ull;
	{
		if( OP$1 != 22ll ) goto label$944;
		label$945:;
		{
			if( ((int64)-(*(int64*)V1$1 == 1ll) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$947;
			{
				if( *(int64*)*(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) != 7ll ) goto label$949;
				{
					struct $8EXPRNODE* vr$8 = EXPRNEWSYM( *(struct $8FBSYMBOL**)((uint8*)V1$1 + 56ll) );
					L$1 = vr$8;
					struct $8EXPRNODE* vr$11 = EXPRNEWCAST( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll), L$1 );
					L$1 = vr$11;
					goto label$943;
				}
				label$949:;
				label$948:;
			}
			label$947:;
			label$946:;
			struct $8EXPRNODE* vr$12 = EXPRNEWVREG( V1$1, -1ll );
			struct $8EXPRNODE* vr$13 = EXPRNEWUOP( 22ll, vr$12 );
			L$1 = vr$13;
		}
		goto label$943;
		label$944:;
		if( OP$1 != 76ll ) goto label$950;
		label$951:;
		{
			struct $8EXPRNODE* vr$14 = EXPRNEWVREG( V1$1, 0ll );
			L$1 = vr$14;
		}
		label$950:;
		label$943:;
	}
	EXPRSTORE( VR$1, L$1, 0ll );
	label$942:;
}

static void HDOCALL( FBSTRING* S$1, int64 BYTESTOPOP$1, struct $6IRVREG* VR$1, int64 LEVEL$1 )
{
	FBSTRING TMP$547$1;
	int64 TMP$548$1;
	FBSTRING TMP$552$1;
	label$952:;
	struct $9IRCALLARG* ARG$1;
	int64 DTYPE$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &TMP$547$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$547$1, (void*)S$1, -1ll, (void*)"( ", 3ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$2, -1ll, 0 );
	void* vr$4 = LISTGETTAIL( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll) );
	ARG$1 = (struct $9IRCALLARG*)vr$4;
	label$954:;
	if( ARG$1 == (struct $9IRCALLARG*)0ull ) goto label$956;
	TMP$548$1 = (int64)-((struct $9IRCALLARG*)(int64)-(*(int64*)((uint8*)ARG$1 + 16ll) == LEVEL$1) != (struct $9IRCALLARG*)0ull);
	goto label$1222;
	label$956:;
	TMP$548$1 = 0ll;
	label$1222:;
	if( TMP$548$1 == 0ll ) goto label$955;
	{
		int64 TMP$549$2;
		FBSTRING TMP$550$2;
		struct $9IRCALLARG* PREV$2;
		void* vr$8 = LISTGETPREV( (void*)ARG$1 );
		PREV$2 = (struct $9IRCALLARG*)vr$8;
		struct $8EXPRNODE* EXPR$2;
		struct $8EXPRNODE* vr$10 = EXPRNEWVREG( *(struct $6IRVREG**)((uint8*)ARG$1 + 8ll), 0ll );
		EXPR$2 = vr$10;
		if( *(struct $8FBSYMBOL**)ARG$1 == (struct $8FBSYMBOL*)0ull ) goto label$957;
		TMP$549$2 = (int64)-((struct $8FBSYMBOL*)(int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)ARG$1 + 96ll) != 4ll) != (struct $8FBSYMBOL*)0ull);
		goto label$1223;
		label$957:;
		TMP$549$2 = 0ll;
		label$1223:;
		if( TMP$549$2 == 0ll ) goto label$959;
		{
			_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_( *(struct $8FBSYMBOL**)ARG$1, &DTYPE$1, &SUBTYPE$1 );
			struct $8EXPRNODE* vr$19 = EXPRNEWCAST( DTYPE$1, SUBTYPE$1, EXPR$2 );
			EXPR$2 = vr$19;
		}
		label$959:;
		label$958:;
		FBSTRING* vr$20 = EXPRFLUSH( EXPR$2, 0ll );
		__builtin_memset( &TMP$550$2, 0, 24ll );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$550$2, (void*)S$1, -1ll, (void*)vr$20, -1ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$23, -1ll, 0 );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&IRHL$ + 120ll), (void*)ARG$1 );
		if( PREV$2 == (struct $9IRCALLARG*)0ull ) goto label$961;
		{
			if( *(int64*)((uint8*)PREV$2 + 16ll) != LEVEL$1 ) goto label$963;
			{
				FBSTRING TMP$551$4;
				__builtin_memset( &TMP$551$4, 0, 24ll );
				FBSTRING* vr$28 = fb_StrConcat( &TMP$551$4, (void*)S$1, -1ll, (void*)", ", 3ll );
				fb_StrAssign( (void*)S$1, -1ll, (void*)vr$28, -1ll, 0 );
			}
			label$963:;
			label$962:;
		}
		label$961:;
		label$960:;
		ARG$1 = PREV$2;
	}
	goto label$954;
	label$955:;
	__builtin_memset( &TMP$552$1, 0, 24ll );
	FBSTRING* vr$31 = fb_StrConcat( &TMP$552$1, (void*)S$1, -1ll, (void*)" )", 3ll );
	fb_StrAssign( (void*)S$1, -1ll, (void*)vr$31, -1ll, 0 );
	if( VR$1 != (struct $6IRVREG*)0ull ) goto label$965;
	{
		FBSTRING TMP$553$2;
		__builtin_memset( &TMP$553$2, 0, 24ll );
		FBSTRING* vr$34 = fb_StrConcat( &TMP$553$2, (void*)S$1, -1ll, (void*)";", 2ll );
		fb_StrAssign( (void*)S$1, -1ll, (void*)vr$34, -1ll, 0 );
		HWRITELINE( S$1, 0ll );
	}
	goto label$964;
	label$965:;
	{
		struct $8EXPRNODE* vr$38 = EXPRNEWTEXT( *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 16ll), (uint8*)*(uint8**)S$1 );
		EXPRSTORE( VR$1, vr$38, -1ll );
	}
	label$964:;
	label$953:;
}

static void _EMITCALL( struct $8FBSYMBOL* PROC$1, int64 BYTESTOPOP$1, struct $6IRVREG* VR$1, int64 LEVEL$1 )
{
	label$966:;
	static FBSTRING S$1;
	uint8* vr$0 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$0, 0ll, 0 );
	HDOCALL( &S$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$967:;
}

static void _EMITCALLPTR( struct $8FBSYMBOL* PROC$1, struct $6IRVREG* V1$1, struct $6IRVREG* VR$1, int64 BYTESTOPOP$1, int64 LEVEL$1 )
{
	label$968:;
	static FBSTRING S$1;
	fb_StrAssign( (void*)&S$1, -1ll, (void*)"(", 2ll, 0 );
	struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0ll );
	FBSTRING* vr$1 = EXPRFLUSH( vr$0, 0ll );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$1, -1ll, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)")", 2ll, 0 );
	HDOCALL( &S$1, BYTESTOPOP$1, VR$1, LEVEL$1 );
	label$969:;
}

static void _EMITJUMPPTR( struct $6IRVREG* V1$1 )
{
	FBSTRING TMP$555$1;
	FBSTRING TMP$556$1;
	FBSTRING TMP$557$1;
	label$970:;
	__builtin_memset( &TMP$557$1, 0, 24ll );
	struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V1$1, 0ll );
	FBSTRING* vr$2 = EXPRFLUSH( vr$1, -1ll );
	__builtin_memset( &TMP$555$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$555$1, (void*)"goto *", 7ll, (void*)vr$2, -1ll );
	__builtin_memset( &TMP$556$1, 0, 24ll );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$556$1, (void*)vr$5, -1ll, (void*)";", 2ll );
	fb_StrAssign( (void*)&TMP$557$1, -1ll, (void*)vr$8, -1ll, 0 );
	HWRITELINE( &TMP$557$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$557$1 );
	label$971:;
}

static void _EMITBRANCH( int64 OP$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$559$1;
	FBSTRING TMP$560$1;
	FBSTRING TMP$561$1;
	label$972:;
	__builtin_memset( &TMP$561$1, 0, 24ll );
	uint8* vr$1 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$559$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$559$1, (void*)"goto ", 6ll, (void*)vr$1, 0ll );
	__builtin_memset( &TMP$560$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$560$1, (void*)vr$4, -1ll, (void*)";", 2ll );
	fb_StrAssign( (void*)&TMP$561$1, -1ll, (void*)vr$7, -1ll, 0 );
	HWRITELINE( &TMP$561$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$561$1 );
	label$973:;
}

static void _EMITJMPTB( struct $6IRVREG* V1$1, struct $8FBSYMBOL* TBSYM$1, uint64* VALUES$1, struct $8FBSYMBOL** LABELS$1, int64 LABELCOUNT$1, struct $8FBSYMBOL* DEFLABEL$1, uint64 BIAS$1, uint64 SPAN$1 )
{
	FBSTRING TMP$571$1;
	FBSTRING TMP$572$1;
	FBSTRING TMP$573$1;
	FBSTRING TMP$574$1;
	FBSTRING TMP$575$1;
	FBSTRING TMP$580$1;
	FBSTRING TMP$581$1;
	FBSTRING TMP$582$1;
	FBSTRING TMP$583$1;
	FBSTRING TMP$584$1;
	FBSTRING TMP$585$1;
	FBSTRING TMP$586$1;
	FBSTRING TMP$587$1;
	FBSTRING TMP$588$1;
	FBSTRING TMP$589$1;
	FBSTRING TMP$590$1;
	label$974:;
	FBSTRING TB$1;
	__builtin_memset( &TB$1, 0, 24ll );
	FBSTRING TEMP$1;
	__builtin_memset( &TEMP$1, 0, 24ll );
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 24ll );
	struct $8EXPRNODE* L$1;
	$11FB_DATATYPE DTYPE$1;
	DTYPE$1 = *($11FB_DATATYPE*)((uint8*)V1$1 + 8ll);
	struct $8EXPRNODE* vr$4 = EXPRNEWVREG( V1$1, 0ll );
	FBSTRING* vr$5 = EXPRFLUSH( vr$4, 0ll );
	fb_StrAssign( (void*)&TEMP$1, -1ll, (void*)vr$5, -1ll, 0 );
	if( LABELCOUNT$1 > 0ll ) goto label$977;
	{
		FBSTRING TMP$562$2;
		FBSTRING TMP$563$2;
		FBSTRING TMP$564$2;
		FBSTRING TMP$566$2;
		FBSTRING TMP$567$2;
		FBSTRING TMP$568$2;
		__builtin_memset( &TMP$564$2, 0, 24ll );
		uint8* vr$8 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
		__builtin_memset( &TMP$562$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$562$2, (void*)"goto ", 6ll, (void*)vr$8, 0ll );
		__builtin_memset( &TMP$563$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$563$2, (void*)vr$11, -1ll, (void*)";", 2ll );
		fb_StrAssign( (void*)&TMP$564$2, -1ll, (void*)vr$14, -1ll, 0 );
		HWRITELINE( &TMP$564$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$564$2 );
		__builtin_memset( &TMP$568$2, 0, 24ll );
		__builtin_memset( &TMP$566$2, 0, 24ll );
		FBSTRING* vr$22 = fb_StrConcat( &TMP$566$2, (void*)"(void)", 7ll, (void*)&TEMP$1, -1ll );
		__builtin_memset( &TMP$567$2, 0, 24ll );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$567$2, (void*)vr$22, -1ll, (void*)";", 2ll );
		fb_StrAssign( (void*)&TMP$568$2, -1ll, (void*)vr$25, -1ll, 0 );
		HWRITELINE( &TMP$568$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$568$2 );
		fb_StrDelete( (FBSTRING*)&LN$1 );
		fb_StrDelete( (FBSTRING*)&TEMP$1 );
		fb_StrDelete( (FBSTRING*)&TB$1 );
		goto label$975;
	}
	label$977:;
	label$976:;
	uint8* vr$32 = SYMBUNIQUEID( (boolean)0ll );
	fb_StrAssign( (void*)&TB$1, -1ll, (void*)vr$32, 0ll, 0 );
	struct $8EXPRNODE* vr$35 = EXPRNEWIMMI( (int64)(SPAN$1 + 1ull), 8ll );
	L$1 = vr$35;
	__builtin_memset( &TMP$575$1, 0, 24ll );
	FBSTRING* vr$37 = EXPRFLUSH( L$1, 0ll );
	__builtin_memset( &TMP$571$1, 0, 24ll );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$571$1, (void*)"static const void* ", 20ll, (void*)&TB$1, -1ll );
	__builtin_memset( &TMP$572$1, 0, 24ll );
	FBSTRING* vr$44 = fb_StrConcat( &TMP$572$1, (void*)vr$41, -1ll, (void*)"[", 2ll );
	__builtin_memset( &TMP$573$1, 0, 24ll );
	FBSTRING* vr$47 = fb_StrConcat( &TMP$573$1, (void*)vr$44, -1ll, (void*)vr$37, -1ll );
	__builtin_memset( &TMP$574$1, 0, 24ll );
	FBSTRING* vr$50 = fb_StrConcat( &TMP$574$1, (void*)vr$47, -1ll, (void*)"] = {", 6ll );
	fb_StrAssign( (void*)&TMP$575$1, -1ll, (void*)vr$50, -1ll, 0 );
	HWRITELINE( &TMP$575$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$575$1 );
	SECTIONINDENT(  );
	int64 I$1;
	I$1 = 0ll;
	int64 VALUE$1;
	VALUE$1 = 0ll;
	label$978:;
	{
		FBSTRING TMP$577$2;
		FBSTRING TMP$578$2;
		FBSTRING TMP$579$2;
		struct $8FBSYMBOL* LABEL$2;
		__builtin_memset( &LABEL$2, 0, 8ll );
		if( (uint64)VALUE$1 != *(uint64*)((uint8*)VALUES$1 + (I$1 << (3ll & 63ll))) ) goto label$982;
		{
			LABEL$2 = *(struct $8FBSYMBOL**)((uint8*)LABELS$1 + (I$1 << (3ll & 63ll)));
			I$1 = I$1 + 1ll;
		}
		goto label$981;
		label$982:;
		{
			LABEL$2 = DEFLABEL$1;
		}
		label$981:;
		__builtin_memset( &TMP$579$2, 0, 24ll );
		uint8* vr$61 = SYMBGETMANGLEDNAME( LABEL$2 );
		__builtin_memset( &TMP$577$2, 0, 24ll );
		FBSTRING* vr$64 = fb_StrConcat( &TMP$577$2, (void*)"&&", 3ll, (void*)vr$61, 0ll );
		__builtin_memset( &TMP$578$2, 0, 24ll );
		FBSTRING* vr$67 = fb_StrConcat( &TMP$578$2, (void*)vr$64, -1ll, (void*)",", 2ll );
		fb_StrAssign( (void*)&TMP$579$2, -1ll, (void*)vr$67, -1ll, 0 );
		HWRITELINE( &TMP$579$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$579$2 );
		if( (uint64)VALUE$1 != SPAN$1 ) goto label$984;
		{
			goto label$979;
		}
		label$984:;
		label$983:;
		VALUE$1 = VALUE$1 + 1ll;
	}
	label$980:;
	goto label$978;
	label$979:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$580$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$580$1, -1ll, (void*)"};", 3ll, 0 );
	HWRITELINE( &TMP$580$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$580$1 );
	struct $8EXPRNODE* vr$76 = EXPRNEWTEXT( DTYPE$1, (struct $8FBSYMBOL*)0ull, (uint8*)*(uint8**)&TEMP$1 );
	L$1 = vr$76;
	if( BIAS$1 == 0ull ) goto label$986;
	{
		struct $8EXPRNODE* vr$77 = EXPRNEWIMMI( (int64)BIAS$1, DTYPE$1 );
		struct $8EXPRNODE* vr$78 = EXPRNEWBOP( 29ll, L$1, vr$77 );
		L$1 = vr$78;
	}
	label$986:;
	label$985:;
	struct $8EXPRNODE* vr$79 = EXPRNEWIMMI( (int64)SPAN$1, DTYPE$1 );
	struct $8EXPRNODE* vr$80 = EXPRNEWBOP( 46ll, L$1, vr$79 );
	L$1 = vr$80;
	__builtin_memset( &TMP$585$1, 0, 24ll );
	uint8* vr$82 = SYMBGETMANGLEDNAME( DEFLABEL$1 );
	FBSTRING* vr$83 = EXPRFLUSH( L$1, 0ll );
	__builtin_memset( &TMP$581$1, 0, 24ll );
	FBSTRING* vr$86 = fb_StrConcat( &TMP$581$1, (void*)"if( ", 5ll, (void*)vr$83, -1ll );
	__builtin_memset( &TMP$582$1, 0, 24ll );
	FBSTRING* vr$89 = fb_StrConcat( &TMP$582$1, (void*)vr$86, -1ll, (void*)" ) goto ", 9ll );
	__builtin_memset( &TMP$583$1, 0, 24ll );
	FBSTRING* vr$92 = fb_StrConcat( &TMP$583$1, (void*)vr$89, -1ll, (void*)vr$82, 0ll );
	__builtin_memset( &TMP$584$1, 0, 24ll );
	FBSTRING* vr$95 = fb_StrConcat( &TMP$584$1, (void*)vr$92, -1ll, (void*)";", 2ll );
	fb_StrAssign( (void*)&TMP$585$1, -1ll, (void*)vr$95, -1ll, 0 );
	HWRITELINE( &TMP$585$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$585$1 );
	struct $8EXPRNODE* vr$99 = EXPRNEWTEXT( DTYPE$1, (struct $8FBSYMBOL*)0ull, (uint8*)*(uint8**)&TEMP$1 );
	L$1 = vr$99;
	struct $8EXPRNODE* vr$100 = EXPRNEWIMMI( (int64)BIAS$1, DTYPE$1 );
	struct $8EXPRNODE* vr$101 = EXPRNEWBOP( 29ll, L$1, vr$100 );
	L$1 = vr$101;
	__builtin_memset( &TMP$590$1, 0, 24ll );
	FBSTRING* vr$103 = EXPRFLUSH( L$1, 0ll );
	__builtin_memset( &TMP$586$1, 0, 24ll );
	FBSTRING* vr$107 = fb_StrConcat( &TMP$586$1, (void*)"goto *", 7ll, (void*)&TB$1, -1ll );
	__builtin_memset( &TMP$587$1, 0, 24ll );
	FBSTRING* vr$110 = fb_StrConcat( &TMP$587$1, (void*)vr$107, -1ll, (void*)"[", 2ll );
	__builtin_memset( &TMP$588$1, 0, 24ll );
	FBSTRING* vr$113 = fb_StrConcat( &TMP$588$1, (void*)vr$110, -1ll, (void*)vr$103, -1ll );
	__builtin_memset( &TMP$589$1, 0, 24ll );
	FBSTRING* vr$116 = fb_StrConcat( &TMP$589$1, (void*)vr$113, -1ll, (void*)"];", 3ll );
	fb_StrAssign( (void*)&TMP$590$1, -1ll, (void*)vr$116, -1ll, 0 );
	HWRITELINE( &TMP$590$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$590$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&TEMP$1 );
	fb_StrDelete( (FBSTRING*)&TB$1 );
	label$975:;
}

static void _EMITMEM( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, int64 BYTES$1 )
{
	label$987:;
	{
		if( OP$1 != 107ll ) goto label$990;
		label$991:;
		{
			FBSTRING TMP$593$3;
			FBSTRING TMP$594$3;
			FBSTRING TMP$595$3;
			FBSTRING TMP$596$3;
			FBSTRING TMP$597$3;
			__builtin_memset( &TMP$597$3, 0, 24ll );
			struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0ll );
			FBSTRING* vr$2 = EXPRFLUSH( vr$1, 0ll );
			struct $8EXPRNODE* vr$3 = EXPRNEWVREG( V1$1, 0ll );
			FBSTRING* vr$4 = EXPRFLUSH( vr$3, 0ll );
			__builtin_memset( &TMP$593$3, 0, 24ll );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$593$3, (void*)"__builtin_memset( ", 19ll, (void*)vr$4, -1ll );
			__builtin_memset( &TMP$594$3, 0, 24ll );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$594$3, (void*)vr$7, -1ll, (void*)", 0, ", 6ll );
			__builtin_memset( &TMP$595$3, 0, 24ll );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$595$3, (void*)vr$10, -1ll, (void*)vr$2, -1ll );
			__builtin_memset( &TMP$596$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$596$3, (void*)vr$13, -1ll, (void*)" );", 4ll );
			fb_StrAssign( (void*)&TMP$597$3, -1ll, (void*)vr$16, -1ll, 0 );
			HWRITELINE( &TMP$597$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$597$3 );
		}
		goto label$989;
		label$990:;
		if( OP$1 != 105ll ) goto label$992;
		label$993:;
		{
			FBSTRING TMP$599$3;
			FBSTRING TMP$600$3;
			FBSTRING TMP$601$3;
			FBSTRING TMP$602$3;
			FBSTRING TMP$603$3;
			FBSTRING TMP$604$3;
			FBSTRING TMP$605$3;
			__builtin_memset( &TMP$605$3, 0, 24ll );
			FBSTRING* vr$21 = fb_ULongintToStr( (uint64)BYTES$1 );
			struct $8EXPRNODE* vr$22 = EXPRNEWVREG( V2$1, 0ll );
			FBSTRING* vr$23 = EXPRFLUSH( vr$22, 0ll );
			struct $8EXPRNODE* vr$24 = EXPRNEWVREG( V1$1, 0ll );
			FBSTRING* vr$25 = EXPRFLUSH( vr$24, 0ll );
			__builtin_memset( &TMP$599$3, 0, 24ll );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$599$3, (void*)"__builtin_memcpy( ", 19ll, (void*)vr$25, -1ll );
			__builtin_memset( &TMP$600$3, 0, 24ll );
			FBSTRING* vr$31 = fb_StrConcat( &TMP$600$3, (void*)vr$28, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$601$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$601$3, (void*)vr$31, -1ll, (void*)vr$23, -1ll );
			__builtin_memset( &TMP$602$3, 0, 24ll );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$602$3, (void*)vr$34, -1ll, (void*)", ", 3ll );
			__builtin_memset( &TMP$603$3, 0, 24ll );
			FBSTRING* vr$40 = fb_StrConcat( &TMP$603$3, (void*)vr$37, -1ll, (void*)vr$21, -1ll );
			__builtin_memset( &TMP$604$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$604$3, (void*)vr$40, -1ll, (void*)" );", 4ll );
			fb_StrAssign( (void*)&TMP$605$3, -1ll, (void*)vr$43, -1ll, 0 );
			HWRITELINE( &TMP$605$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$605$3 );
		}
		label$992:;
		label$989:;
	}
	label$988:;
}

static void _EMITMACRO( int64 OP$1, struct $6IRVREG* V1$1, struct $6IRVREG* V2$1, struct $6IRVREG* VR$1 )
{
	label$994:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* R$1;
	{
		if( OP$1 != 109ll ) goto label$997;
		label$998:;
		{
			FBSTRING TMP$606$3;
			FBSTRING TMP$607$3;
			struct $8EXPRNODE* vr$0 = EXPRNEWVREG( V1$1, 0ll );
			L$1 = vr$0;
			struct $8EXPRNODE* vr$1 = EXPRNEWVREG( V2$1, 0ll );
			R$1 = vr$1;
			__builtin_memset( &TMP$607$3, 0, 24ll );
			struct $8EXPRNODE* vr$3 = EXPRNEWMACRO( OP$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, L$1, R$1 );
			FBSTRING* vr$4 = EXPRFLUSH( vr$3, 0ll );
			__builtin_memset( &TMP$606$3, 0, 24ll );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$606$3, (void*)vr$4, -1ll, (void*)";", 2ll );
			fb_StrAssign( (void*)&TMP$607$3, -1ll, (void*)vr$7, -1ll, 0 );
			HWRITELINE( &TMP$607$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$607$3 );
		}
		goto label$996;
		label$997:;
		if( OP$1 != 110ll ) goto label$999;
		label$1000:;
		{
			FBSTRING TMP$608$3;
			FBSTRING TMP$609$3;
			struct $8EXPRNODE* vr$11 = EXPRNEWVREG( V1$1, 0ll );
			L$1 = vr$11;
			__builtin_memset( &TMP$609$3, 0, 24ll );
			struct $8EXPRNODE* vr$13 = EXPRNEWMACRO( OP$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, L$1, (struct $8EXPRNODE*)0ull );
			FBSTRING* vr$14 = EXPRFLUSH( vr$13, 0ll );
			__builtin_memset( &TMP$608$3, 0, 24ll );
			FBSTRING* vr$17 = fb_StrConcat( &TMP$608$3, (void*)vr$14, -1ll, (void*)";", 2ll );
			fb_StrAssign( (void*)&TMP$609$3, -1ll, (void*)vr$17, -1ll, 0 );
			HWRITELINE( &TMP$609$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$609$3 );
		}
		goto label$996;
		label$999:;
		if( OP$1 != 112ll ) goto label$1001;
		label$1002:;
		{
			struct $8EXPRNODE* vr$21 = EXPRNEWVREG( V1$1, 0ll );
			L$1 = vr$21;
			struct $8EXPRNODE* vr$24 = EXPRNEWMACRO( OP$1, *(int64*)((uint8*)VR$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)VR$1 + 56ll), L$1, (struct $8EXPRNODE*)0ull );
			L$1 = vr$24;
			EXPRSTORE( VR$1, L$1, 0ll );
		}
		goto label$996;
		label$1001:;
		if( OP$1 != 111ll ) goto label$1003;
		label$1004:;
		{
			FBSTRING TMP$610$3;
			FBSTRING TMP$611$3;
			struct $8EXPRNODE* vr$25 = EXPRNEWVREG( V1$1, 0ll );
			L$1 = vr$25;
			struct $8EXPRNODE* vr$26 = EXPRNEWVREG( V2$1, 0ll );
			R$1 = vr$26;
			__builtin_memset( &TMP$611$3, 0, 24ll );
			struct $8EXPRNODE* vr$28 = EXPRNEWMACRO( OP$1, 2147483648ll, (struct $8FBSYMBOL*)0ull, L$1, R$1 );
			FBSTRING* vr$29 = EXPRFLUSH( vr$28, 0ll );
			__builtin_memset( &TMP$610$3, 0, 24ll );
			FBSTRING* vr$32 = fb_StrConcat( &TMP$610$3, (void*)vr$29, -1ll, (void*)";", 2ll );
			fb_StrAssign( (void*)&TMP$611$3, -1ll, (void*)vr$32, -1ll, 0 );
			HWRITELINE( &TMP$611$3, 0ll );
			fb_StrDelete( (FBSTRING*)&TMP$611$3 );
		}
		label$1003:;
		label$996:;
	}
	label$995:;
}

static void _EMITDECL( struct $8FBSYMBOL* SYM$1 )
{
	label$1005:;
	struct $8FBSYMBOL* ARRAY$1;
	int64 vr$0 = HISSTATICWITHDTOR( SYM$1 );
	if( vr$0 == 0ll ) goto label$1008;
	{
		goto label$1006;
	}
	label$1008:;
	label$1007:;
	ARRAY$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 152ll);
	if( ARRAY$1 == (struct $8FBSYMBOL*)0ull ) goto label$1010;
	{
		int64 vr$2 = HISSTATICWITHDTOR( ARRAY$1 );
		if( vr$2 == 0ll ) goto label$1012;
		{
			goto label$1006;
		}
		label$1012:;
		label$1011:;
	}
	label$1010:;
	label$1009:;
	HMAYBEEMITLOCALVAR( SYM$1 );
	label$1006:;
}

static void _EMITDBG( int64 OP$1, struct $8FBSYMBOL* PROC$1, int64 LNUM$1, uint8* FILENAME$1 )
{
	label$1013:;
	if( OP$1 != 113ll ) goto label$1016;
	{
		*(int64*)((uint8*)&CTX$ + 5176ll) = LNUM$1;
		if( FILENAME$1 == (uint8*)0ull ) goto label$1018;
		{
			HUPDATECURRENTFILENAME( FILENAME$1 );
		}
		label$1018:;
		label$1017:;
	}
	label$1016:;
	label$1015:;
	label$1014:;
}

static void _EMITCOMMENT( uint8* TEXT$1 )
{
	label$1019:;
	int64 LENGTH$1;
	static FBSTRING S$1;
	fb_StrAssign( (void*)&S$1, -1ll, (void*)TEXT$1, 0ll, 0 );
	FBSTRING* vr$0 = fb_TRIM( (FBSTRING*)&S$1 );
	fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$0, -1ll, 0 );
	int64 vr$1 = fb_StrLen( (void*)&S$1, -1ll );
	LENGTH$1 = vr$1;
	if( LENGTH$1 <= 0ll ) goto label$1022;
	{
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		if( (uint64)(int64)*(uint8*)((uint8*)((uint8*)*(uint8**)&S$1 + LENGTH$1) + -1ll) != 92ull ) goto label$1024;
		{
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"not_an_escape", 14ll, 0 );
		}
		label$1024:;
		label$1023:;
		__builtin_memset( &TMP$615$2, 0, 24ll );
		__builtin_memset( &TMP$614$2, 0, 24ll );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$614$2, (void*)"// ", 4ll, (void*)&S$1, -1ll );
		fb_StrAssign( (void*)&TMP$615$2, -1ll, (void*)vr$7, -1ll, 0 );
		HWRITELINE( &TMP$615$2, -1ll );
		fb_StrDelete( (FBSTRING*)&TMP$615$2 );
	}
	label$1022:;
	label$1021:;
	label$1020:;
}

static void _EMITASMLINE( struct $9ASTASMTOK* ASMTOKENHEAD$1 )
{
	label$1025:;
	int64 USES_LABEL$1;
	__builtin_memset( &USES_LABEL$1, 0, 8ll );
	int64 LABELINDEX$1;
	__builtin_memset( &LABELINDEX$1, 0, 8ll );
	struct $9ASTASMTOK* N$1;
	N$1 = ASMTOKENHEAD$1;
	label$1027:;
	if( N$1 == (struct $9ASTASMTOK*)0ull ) goto label$1028;
	{
		if( *(int64*)N$1 != 1ll ) goto label$1030;
		{
			{
				$12FB_SYMBCLASS TMP$616$4;
				TMP$616$4 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll);
				if( TMP$616$4 != 7ll ) goto label$1032;
				label$1033:;
				{
					USES_LABEL$1 = -1ll;
				}
				goto label$1031;
				label$1032:;
				if( TMP$616$4 != 1ll ) goto label$1034;
				label$1035:;
				{
					LABELINDEX$1 = LABELINDEX$1 + 1ll;
				}
				label$1034:;
				label$1031:;
			}
		}
		label$1030:;
		label$1029:;
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 16ll);
	}
	goto label$1027;
	label$1028:;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1ll, (void*)"__asm__", 8ll, 0 );
	int64 vr$8 = SECTIONINSIDEPROC(  );
	if( vr$8 == 0ll ) goto label$1037;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" __volatile__", 14ll, 0 );
	}
	label$1037:;
	label$1036:;
	if( USES_LABEL$1 == 0ll ) goto label$1039;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" goto", 6ll, 0 );
	}
	label$1039:;
	label$1038:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)"( ", 3ll, 0 );
	FBSTRING ASMCODE$1;
	__builtin_memset( &ASMCODE$1, 0, 24ll );
	int64 OPERANDINDEX$1;
	__builtin_memset( &OPERANDINDEX$1, 0, 8ll );
	FBSTRING OUTPUTCONSTRAINTS$1;
	__builtin_memset( &OUTPUTCONSTRAINTS$1, 0, 24ll );
	FBSTRING INPUTCONSTRAINTS$1;
	__builtin_memset( &INPUTCONSTRAINTS$1, 0, 24ll );
	FBSTRING LABELLIST$1;
	__builtin_memset( &LABELLIST$1, 0, 24ll );
	N$1 = ASMTOKENHEAD$1;
	label$1040:;
	if( N$1 == (struct $9ASTASMTOK*)0ull ) goto label$1041;
	{
		{
			$14AST_ASMTOKTYPE TMP$620$3;
			TMP$620$3 = *($14AST_ASMTOKTYPE*)N$1;
			if( TMP$620$3 != 0ll ) goto label$1043;
			label$1044:;
			{
				FBSTRING TMP$621$4;
				__builtin_memset( &TMP$621$4, 0, 24ll );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$621$4, (void*)&ASMCODE$1, -1ll, *(void**)((uint8*)N$1 + 8ll), 0ll );
				fb_StrAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$22, -1ll, 0 );
			}
			goto label$1042;
			label$1043:;
			if( TMP$620$3 != 1ll ) goto label$1045;
			label$1046:;
			{
				if( *(int64*)((uint8*)&ENV$ + 264ll) != 0ll ) goto label$1048;
				{
					int64 vr$24 = SECTIONINSIDEPROC(  );
					if( vr$24 == 0ll ) goto label$1050;
					{
						{
							$12FB_SYMBCLASS TMP$622$7;
							TMP$622$7 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll);
							if( TMP$622$7 != 1ll ) goto label$1052;
							label$1053:;
							{
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1ll, (void*)"%", 2ll, 0 );
								FBSTRING* vr$28 = fb_LongintToStr( OPERANDINDEX$1 );
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$28, -1ll, 0 );
								OPERANDINDEX$1 = OPERANDINDEX$1 + 1ll;
								if( USES_LABEL$1 == 0ll ) goto label$1055;
								{
									FBSTRING TMP$625$9;
									FBSTRING TMP$626$9;
									FBSTRING TMP$627$9;
									int64 vr$32 = fb_StrLen( (void*)&INPUTCONSTRAINTS$1, -1ll );
									if( vr$32 <= 0ll ) goto label$1057;
									{
										fb_StrConcatAssign( (void*)&INPUTCONSTRAINTS$1, -1ll, (void*)", ", 3ll, 0 );
									}
									label$1057:;
									label$1056:;
									uint8* vr$35 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
									__builtin_memset( &TMP$625$9, 0, 24ll );
									FBSTRING* vr$38 = fb_StrConcat( &TMP$625$9, (void*)"\x22m\x22 (", 6ll, (void*)vr$35, 0ll );
									__builtin_memset( &TMP$626$9, 0, 24ll );
									FBSTRING* vr$41 = fb_StrConcat( &TMP$626$9, (void*)vr$38, -1ll, (void*)")", 2ll );
									__builtin_memset( &TMP$627$9, 0, 24ll );
									FBSTRING* vr$45 = fb_StrConcat( &TMP$627$9, (void*)&INPUTCONSTRAINTS$1, -1ll, (void*)vr$41, -1ll );
									fb_StrAssign( (void*)&INPUTCONSTRAINTS$1, -1ll, (void*)vr$45, -1ll, 0 );
								}
								goto label$1054;
								label$1055:;
								{
									FBSTRING TMP$629$9;
									FBSTRING TMP$630$9;
									FBSTRING TMP$631$9;
									int64 vr$48 = fb_StrLen( (void*)&OUTPUTCONSTRAINTS$1, -1ll );
									if( vr$48 <= 0ll ) goto label$1059;
									{
										fb_StrConcatAssign( (void*)&OUTPUTCONSTRAINTS$1, -1ll, (void*)", ", 3ll, 0 );
									}
									label$1059:;
									label$1058:;
									uint8* vr$51 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
									__builtin_memset( &TMP$629$9, 0, 24ll );
									FBSTRING* vr$54 = fb_StrConcat( &TMP$629$9, (void*)"\x22+m\x22 (", 7ll, (void*)vr$51, 0ll );
									__builtin_memset( &TMP$630$9, 0, 24ll );
									FBSTRING* vr$57 = fb_StrConcat( &TMP$630$9, (void*)vr$54, -1ll, (void*)")", 2ll );
									__builtin_memset( &TMP$631$9, 0, 24ll );
									FBSTRING* vr$61 = fb_StrConcat( &TMP$631$9, (void*)&OUTPUTCONSTRAINTS$1, -1ll, (void*)vr$57, -1ll );
									fb_StrAssign( (void*)&OUTPUTCONSTRAINTS$1, -1ll, (void*)vr$61, -1ll, 0 );
								}
								label$1054:;
							}
							goto label$1051;
							label$1052:;
							if( TMP$622$7 != 7ll ) goto label$1060;
							label$1061:;
							{
								FBSTRING TMP$633$8;
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1ll, (void*)"%l", 3ll, 0 );
								FBSTRING* vr$64 = fb_LongintToStr( LABELINDEX$1 );
								fb_StrConcatAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$64, -1ll, 0 );
								LABELINDEX$1 = LABELINDEX$1 + 1ll;
								int64 vr$68 = fb_StrLen( (void*)&LABELLIST$1, -1ll );
								if( vr$68 <= 0ll ) goto label$1063;
								{
									fb_StrConcatAssign( (void*)&LABELLIST$1, -1ll, (void*)", ", 3ll, 0 );
								}
								label$1063:;
								label$1062:;
								uint8* vr$71 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
								__builtin_memset( &TMP$633$8, 0, 24ll );
								FBSTRING* vr$75 = fb_StrConcat( &TMP$633$8, (void*)&LABELLIST$1, -1ll, (void*)vr$71, 0ll );
								fb_StrAssign( (void*)&LABELLIST$1, -1ll, (void*)vr$75, -1ll, 0 );
							}
							goto label$1051;
							label$1060:;
							{
								FBSTRING TMP$634$8;
								FBSTRING* vr$78 = HGETMANGLEDNAMEFORASM( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll), -1ll );
								__builtin_memset( &TMP$634$8, 0, 24ll );
								FBSTRING* vr$82 = fb_StrConcat( &TMP$634$8, (void*)&ASMCODE$1, -1ll, (void*)vr$78, -1ll );
								fb_StrAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$82, -1ll, 0 );
							}
							label$1064:;
							label$1051:;
						}
					}
					goto label$1049;
					label$1050:;
					{
						FBSTRING TMP$635$6;
						FBSTRING* vr$85 = HGETMANGLEDNAMEFORASM( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll), -1ll );
						__builtin_memset( &TMP$635$6, 0, 24ll );
						FBSTRING* vr$89 = fb_StrConcat( &TMP$635$6, (void*)&ASMCODE$1, -1ll, (void*)vr$85, -1ll );
						fb_StrAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$89, -1ll, 0 );
					}
					label$1049:;
				}
				goto label$1047;
				label$1048:;
				{
					FBSTRING TMP$636$5;
					uint8* vr$92 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)N$1 + 8ll) );
					__builtin_memset( &TMP$636$5, 0, 24ll );
					FBSTRING* vr$96 = fb_StrConcat( &TMP$636$5, (void*)&ASMCODE$1, -1ll, (void*)vr$92, 0ll );
					fb_StrAssign( (void*)&ASMCODE$1, -1ll, (void*)vr$96, -1ll, 0 );
				}
				label$1047:;
			}
			label$1045:;
			label$1042:;
		}
		N$1 = *(struct $9ASTASMTOK**)((uint8*)N$1 + 16ll);
	}
	goto label$1040;
	label$1041:;
	if( *(int64*)((uint8*)&ENV$ + 264ll) != 0ll ) goto label$1066;
	{
		int64 vr$100 = fb_StrLen( (void*)&ASMCODE$1, -1ll );
		HBUILDSTRLIT( &LN$1, (uint8*)*(uint8**)&ASMCODE$1, vr$100 + 1ll );
		int64 vr$103 = SECTIONINSIDEPROC(  );
		if( vr$103 == 0ll ) goto label$1068;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" : ", 4ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&OUTPUTCONSTRAINTS$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" : ", 4ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&INPUTCONSTRAINTS$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" : \x22" "cc\x22, \x22memory\x22", 18ll, 0 );
			{
				int64 TMP$639$4;
				int64 vr$111 = FBGETCPUFAMILY(  );
				TMP$639$4 = vr$111;
				if( TMP$639$4 == 0ll ) goto label$1071;
				label$1072:;
				if( TMP$639$4 != 1ll ) goto label$1070;
				label$1071:;
				{
					int64 vr$112 = FBGETCPUFAMILY(  );
					if( vr$112 != 0ll ) goto label$1074;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22" "eax\x22, \x22" "ebx\x22, \x22" "ecx\x22, \x22" "edx\x22, \x22" "esp\x22, \x22" "edi\x22, \x22" "esi\x22", 50ll, 0 );
					}
					goto label$1073;
					label$1074:;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22rax\x22, \x22rbx\x22, \x22rcx\x22, \x22rdx\x22, \x22rsp\x22, \x22rdi\x22, \x22rsi\x22", 50ll, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r8\x22, \x22r9\x22, \x22r10\x22, \x22r11\x22, \x22r12\x22, \x22r13\x22, \x22r14\x22, \x22r15\x22", 55ll, 0 );
					}
					label$1073:;
					if( *(int64*)((uint8*)&ENV$ + 232ll) != 1ll ) goto label$1076;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22mm0\x22, \x22mm1\x22, \x22mm2\x22, \x22mm3\x22, \x22mm4\x22, \x22mm5\x22, \x22mm6\x22, \x22mm7\x22", 57ll, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22xmm0\x22, \x22xmm1\x22, \x22xmm2\x22, \x22xmm3\x22, \x22xmm4\x22, \x22xmm5\x22, \x22xmm6\x22, \x22xmm7\x22", 65ll, 0 );
						int64 vr$118 = FBGETCPUFAMILY(  );
						if( vr$118 != 1ll ) goto label$1078;
						{
							fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22xmm8\x22, \x22xmm9\x22, \x22xmm10\x22, \x22xmm11\x22, \x22xmm12\x22, \x22xmm13\x22, \x22xmm14\x22, \x22xmm15\x22", 71ll, 0 );
						}
						label$1078:;
						label$1077:;
					}
					label$1076:;
					label$1075:;
				}
				goto label$1069;
				label$1070:;
				if( TMP$639$4 == 2ll ) goto label$1080;
				label$1081:;
				if( TMP$639$4 != 3ll ) goto label$1079;
				label$1080:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r0\x22, \x22r1\x22, \x22r2\x22, \x22r3\x22, \x22r4\x22, \x22r5\x22, \x22r6\x22", 43ll, 0 );
					fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r8\x22, \x22r9\x22, \x22r10\x22, \x22r11\x22, \x22r12\x22, \x22r13\x22, \x22r14\x22, \x22r15\x22", 55ll, 0 );
					int64 vr$122 = FBGETCPUFAMILY(  );
					if( vr$122 != 3ll ) goto label$1083;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r16\x22, \x22r17\x22, \x22r18\x22, \x22r19\x22", 29ll, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r20\x22, \x22r21\x22, \x22r22\x22, \x22r23\x22, \x22r24\x22, \x22r25\x22, \x22r26\x22, \x22r27\x22, \x22r28\x22", 64ll, 0 );
						fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)", \x22r30\x22", 8ll, 0 );
					}
					label$1083:;
					label$1082:;
				}
				label$1079:;
				label$1069:;
			}
			if( USES_LABEL$1 == 0ll ) goto label$1085;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" : ", 4ll, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&LABELLIST$1, -1ll, 0 );
			}
			label$1085:;
			label$1084:;
		}
		label$1068:;
		label$1067:;
	}
	goto label$1065;
	label$1066:;
	{
		fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)&ASMCODE$1, -1ll, 0 );
	}
	label$1065:;
	fb_StrConcatAssign( (void*)&LN$1, -1ll, (void*)" );", 4ll, 0 );
	HWRITELINE( &LN$1, 0ll );
	fb_StrDelete( (FBSTRING*)&LABELLIST$1 );
	fb_StrDelete( (FBSTRING*)&INPUTCONSTRAINTS$1 );
	fb_StrDelete( (FBSTRING*)&OUTPUTCONSTRAINTS$1 );
	fb_StrDelete( (FBSTRING*)&ASMCODE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1026:;
}

static void _EMITVARINIBEGIN( struct $8FBSYMBOL* SYM$1 )
{
	label$1086:;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"", 1ll, 0 );
	*(int64*)((uint8*)&CTX$ + 5304ll) = 0ll;
	label$1087:;
}

static void _EMITVARINIEND( struct $8FBSYMBOL* SYM$1 )
{
	label$1088:;
	HEMITVARDECL( 0ll, SYM$1, (uint8*)*(uint8**)((uint8*)&CTX$ + 5280ll) );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"", 1ll, 0 );
	label$1089:;
}

static void HVARINISEPARATOR( void )
{
	label$1090:;
	if( *(int64*)((uint8*)&CTX$ + 5304ll) <= 0ll ) goto label$1093;
	{
		fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)", ", 3ll, 0 );
	}
	label$1093:;
	label$1092:;
	label$1091:;
}

static void _EMITVARINII( struct $8FBSYMBOL* SYM$1, int64 VALUE$1 )
{
	label$1094:;
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	if( ((int64)-(DTYPE$1 == 1ll) & (int64)-(VALUE$1 != 0ll)) == 0ll ) goto label$1097;
	{
		VALUE$1 = 1ll;
	}
	label$1097:;
	label$1096:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$5 = EXPRNEWIMMI( VALUE$1, DTYPE$1 );
	L$1 = vr$5;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$1099;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	}
	label$1099:;
	label$1098:;
	struct $8EXPRNODE* vr$18 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), L$1 );
	L$1 = vr$18;
	FBSTRING* vr$19 = EXPRFLUSH( L$1, 0ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$19, -1ll, 0 );
	HVARINISEPARATOR(  );
	label$1095:;
}

static void _EMITVARINIF( struct $8FBSYMBOL* SYM$1, double VALUE$1 )
{
	label$1100:;
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$2 = EXPRNEWIMMF( VALUE$1, DTYPE$1 );
	L$1 = vr$2;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$1103;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	}
	label$1103:;
	label$1102:;
	struct $8EXPRNODE* vr$15 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), L$1 );
	L$1 = vr$15;
	FBSTRING* vr$16 = EXPRFLUSH( L$1, 0ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$16, -1ll, 0 );
	HVARINISEPARATOR(  );
	label$1101:;
}

static void _EMITVARINIOFS( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* RHS$1, int64 OFS$1 )
{
	label$1104:;
	struct $8EXPRNODE* L$1;
	struct $8EXPRNODE* vr$0 = EXPRNEWOFFSET( RHS$1, OFS$1 );
	L$1 = vr$0;
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 262144ll) == 0ll ) goto label$1107;
	{
		DTYPE$1 = (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + 32ll)) | ((DTYPE$1 & 261632ll) << (1ll & 63ll))) | (DTYPE$1 & 32505856ll);
	}
	label$1107:;
	label$1106:;
	struct $8EXPRNODE* vr$15 = EXPRNEWCAST( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), L$1 );
	L$1 = vr$15;
	FBSTRING* vr$16 = EXPRFLUSH( L$1, 0ll );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$16, -1ll, 0 );
	HVARINISEPARATOR(  );
	label$1105:;
}

static void _EMITVARINISTR( int64 VARLENGTH$1, uint8* LITERAL$1, int64 LITLENGTH$1 )
{
	label$1108:;
	if( LITLENGTH$1 <= VARLENGTH$1 ) goto label$1111;
	{
		LITLENGTH$1 = VARLENGTH$1;
	}
	label$1111:;
	label$1110:;
	uint8* vr$1 = HUNESCAPE( LITERAL$1 );
	HBUILDSTRLIT( (FBSTRING*)((uint8*)&CTX$ + 5280ll), vr$1, LITLENGTH$1 + 1ll );
	HVARINISEPARATOR(  );
	label$1109:;
}

static void _EMITVARINIWSTR( int64 VARLENGTH$1, uint32* LITERAL$1, int64 LITLENGTH$1 )
{
	label$1112:;
	uint64 CH$1;
	int64 WCHARSIZE$1;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"{ ", 3ll, 0 );
	uint32* vr$1 = HUNESCAPEW( LITERAL$1 );
	LITERAL$1 = vr$1;
	WCHARSIZE$1 = *(int64*)((uint8*)SYMB_DTYPETB$ + 400ll);
	if( LITLENGTH$1 <= VARLENGTH$1 ) goto label$1115;
	{
		LITLENGTH$1 = VARLENGTH$1;
	}
	label$1115:;
	label$1114:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$651$2;
		TMP$651$2 = LITLENGTH$1 + -1ll;
		goto label$1116;
		label$1119:;
		{
			if( I$2 <= 0ll ) goto label$1121;
			{
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)", ", 3ll, 0 );
			}
			label$1121:;
			label$1120:;
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"L'", 3ll, 0 );
			CH$1 = (uint64)*(uint32*)((uint8*)LITERAL$1 + (I$2 << (2ll & 63ll)));
			int64 vr$8 = HCHARNEEDSESCAPING( (int64)CH$1, 39ll );
			if( vr$8 == 0ll ) goto label$1123;
			{
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"\x5Cx", 3ll, 0 );
				FBSTRING* vr$12 = fb_HEXEx_l( CH$1, (int32)(WCHARSIZE$1 << (1ll & 63ll)) );
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$12, -1ll, 0 );
			}
			goto label$1122;
			label$1123:;
			{
				FBSTRING* vr$14 = fb_CHR( 1, (int64)CH$1 );
				fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$14, -1ll, 0 );
			}
			label$1122:;
			fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"'", 2ll, 0 );
		}
		label$1117:;
		I$2 = I$2 + 1ll;
		label$1116:;
		if( I$2 <= TMP$651$2 ) goto label$1119;
		label$1118:;
	}
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)" }", 3ll, 0 );
	HVARINISEPARATOR(  );
	label$1113:;
}

static void _EMITVARINIPAD( int64 BYTES$1 )
{
	label$1124:;
	label$1125:;
}

static void _EMITVARINISCOPEBEGIN( struct $8FBSYMBOL* SYM$1, int64 IS_ARRAY$1 )
{
	label$1126:;
	*(int64*)((uint8*)&CTX$ + 5304ll) = *(int64*)((uint8*)&CTX$ + 5304ll) + 1ll;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)"{ ", 3ll, 0 );
	label$1127:;
}

static void _EMITVARINISCOPEEND( void )
{
	label$1128:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 5280ll), 2ll );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1ll, (void*)", ", 3ll );
	if( (int64)vr$2 != 0ll ) goto label$1131;
	{
		int64 vr$5 = fb_StrLen( (void*)((uint8*)&CTX$ + 5280ll), -1ll );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)((uint8*)&CTX$ + 5280ll), vr$5 + -2ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)vr$8, -1ll, 0 );
	}
	label$1131:;
	label$1130:;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5280ll), -1ll, (void*)" }", 3ll, 0 );
	*(int64*)((uint8*)&CTX$ + 5304ll) = *(int64*)((uint8*)&CTX$ + 5304ll) + -1ll;
	HVARINISEPARATOR(  );
	label$1129:;
}

static void _EMITFBCTINFBEGIN( void )
{
	FBSTRING TMP$654$1;
	label$1132:;
	__builtin_memset( &TMP$654$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$654$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$654$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$654$1 );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)"static const char ", 19ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)"__attribute__((used, section(\x22.fbctinf\x22))) ", 44ll, 0 );
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)"__fbctinf[] = \x22", 16ll, 0 );
	label$1133:;
}

static void _EMITFBCTINFSTRING( uint8* S$1 )
{
	FBSTRING TMP$662$1;
	FBSTRING TMP$663$1;
	label$1134:;
	__builtin_memset( &TMP$662$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$662$1, (void*)S$1, 0ll, (void*)"\x5C" "0", 3ll );
	__builtin_memset( &TMP$663$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$663$1, (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)vr$2, -1ll );
	fb_StrAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)vr$6, -1ll, 0 );
	label$1135:;
}

static void _EMITFBCTINFEND( void )
{
	label$1136:;
	FBSTRING* vr$1 = fb_RIGHT( (FBSTRING*)((uint8*)&CTX$ + 5312ll), 2ll );
	int32 vr$2 = fb_StrCompare( (void*)vr$1, -1ll, (void*)"\x5C" "0", 3ll );
	if( (int64)vr$2 != 0ll ) goto label$1139;
	{
		int64 vr$5 = fb_StrLen( (void*)((uint8*)&CTX$ + 5312ll), -1ll );
		FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)((uint8*)&CTX$ + 5312ll), vr$5 + -2ll );
		fb_StrAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)vr$8, -1ll, 0 );
	}
	label$1139:;
	label$1138:;
	fb_StrConcatAssign( (void*)((uint8*)&CTX$ + 5312ll), -1ll, (void*)"\x22;", 3ll, 0 );
	HWRITELINE( (FBSTRING*)((uint8*)&CTX$ + 5312ll), -1ll );
	label$1137:;
}

static void _EMITPROCBEGIN( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1 )
{
	FBSTRING TMP$665$1;
	FBSTRING TMP$680$1;
	FBSTRING TMP$681$1;
	label$1140:;
	HUPDATECURRENTFILENAME( *(uint8**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 48ll) );
	IRHLEMITPROCBEGIN(  );
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	__builtin_memset( &TMP$665$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$665$1, -1ll, (void*)"", 1ll, 0 );
	HWRITELINE( &TMP$665$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$665$1 );
	if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$1143;
	{
		_EMITDBG( 113ll, PROC$1, *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 32ll), (uint8*)0ull );
	}
	label$1143:;
	label$1142:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) == 0ll ) goto label$1145;
	{
		FBSTRING TMP$667$2;
		FBSTRING TMP$670$2;
		FBSTRING TMP$671$2;
		FBSTRING TMP$672$2;
		FBSTRING TMP$675$2;
		FBSTRING TMP$676$2;
		FBSTRING TMP$677$2;
		FBSTRING* vr$11 = HGETMANGLEDNAMEFORASM( PROC$1, -1ll );
		fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$11, -1ll, 0 );
		__builtin_memset( &TMP$667$2, 0, 24ll );
		fb_StrAssign( (void*)&TMP$667$2, -1ll, (void*)"__asm__( \x22.text\x22 );", 20ll, 0 );
		HWRITELINE( &TMP$667$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$667$2 );
		__builtin_memset( &TMP$672$2, 0, 24ll );
		__builtin_memset( &TMP$670$2, 0, 24ll );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$670$2, (void*)"__asm__( \x22.globl ", 18ll, (void*)&MANGLED$1, -1ll );
		__builtin_memset( &TMP$671$2, 0, 24ll );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$671$2, (void*)vr$21, -1ll, (void*)"\x22 );", 5ll );
		fb_StrAssign( (void*)&TMP$672$2, -1ll, (void*)vr$24, -1ll, 0 );
		HWRITELINE( &TMP$672$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$672$2 );
		__builtin_memset( &TMP$677$2, 0, 24ll );
		__builtin_memset( &TMP$675$2, 0, 24ll );
		FBSTRING* vr$32 = fb_StrConcat( &TMP$675$2, (void*)"__asm__( \x22", 11ll, (void*)&MANGLED$1, -1ll );
		__builtin_memset( &TMP$676$2, 0, 24ll );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$676$2, (void*)vr$32, -1ll, (void*)":\x22 );", 6ll );
		fb_StrAssign( (void*)&TMP$677$2, -1ll, (void*)vr$35, -1ll, 0 );
		HWRITELINE( &TMP$677$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$677$2 );
		fb_StrDelete( (FBSTRING*)&MANGLED$1 );
		goto label$1141;
	}
	label$1145:;
	label$1144:;
	SECTIONBEGIN(  );
	int64 vr$40 = HNEEDALIAS( PROC$1 );
	if( vr$40 == 0ll ) goto label$1147;
	{
		FBSTRING TMP$678$2;
		FBSTRING TMP$679$2;
		__builtin_memset( &TMP$679$2, 0, 24ll );
		FBSTRING* vr$42 = HEMITPROCHEADER( PROC$1, 1ll );
		__builtin_memset( &TMP$678$2, 0, 24ll );
		FBSTRING* vr$45 = fb_StrConcat( &TMP$678$2, (void*)vr$42, -1ll, (void*)";", 2ll );
		fb_StrAssign( (void*)&TMP$679$2, -1ll, (void*)vr$45, -1ll, 0 );
		HWRITELINE( &TMP$679$2, 0ll );
		fb_StrDelete( (FBSTRING*)&TMP$679$2 );
	}
	label$1147:;
	label$1146:;
	__builtin_memset( &TMP$680$1, 0, 24ll );
	FBSTRING* vr$50 = HEMITPROCHEADER( PROC$1, 0ll );
	fb_StrAssign( (void*)&TMP$680$1, -1ll, (void*)vr$50, -1ll, 0 );
	HWRITELINE( &TMP$680$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$680$1 );
	__builtin_memset( &TMP$681$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$681$1, -1ll, (void*)"{", 2ll, 0 );
	HWRITELINE( &TMP$681$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$681$1 );
	SECTIONINDENT(  );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$1141:;
}

static void _EMITPROCEND( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$689$1;
	label$1148:;
	FBSTRING MANGLED$1;
	__builtin_memset( &MANGLED$1, 0, 24ll );
	struct $13EXPRCACHENODE* CACHENODE$1;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 128ll) == 0ll ) goto label$1151;
	{
		if( *(int64*)((uint8*)&ENV$ + 216ll) != 2ll ) goto label$1153;
		{
			FBSTRING TMP$684$3;
			FBSTRING TMP$685$3;
			FBSTRING TMP$686$3;
			FBSTRING TMP$687$3;
			FBSTRING TMP$688$3;
			FBSTRING* vr$3 = HGETMANGLEDNAMEFORASM( PROC$1, -1ll );
			fb_StrAssign( (void*)&MANGLED$1, -1ll, (void*)vr$3, -1ll, 0 );
			__builtin_memset( &TMP$688$3, 0, 24ll );
			__builtin_memset( &TMP$684$3, 0, 24ll );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$684$3, (void*)"__asm__( \x22.size ", 17ll, (void*)&MANGLED$1, -1ll );
			__builtin_memset( &TMP$685$3, 0, 24ll );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$685$3, (void*)vr$10, -1ll, (void*)", .-", 5ll );
			__builtin_memset( &TMP$686$3, 0, 24ll );
			FBSTRING* vr$16 = fb_StrConcat( &TMP$686$3, (void*)vr$13, -1ll, (void*)&MANGLED$1, -1ll );
			__builtin_memset( &TMP$687$3, 0, 24ll );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$687$3, (void*)vr$16, -1ll, (void*)"\x22 );", 5ll );
			fb_StrAssign( (void*)&TMP$688$3, -1ll, (void*)vr$19, -1ll, 0 );
			HWRITELINE( &TMP$688$3, -1ll );
			fb_StrDelete( (FBSTRING*)&TMP$688$3 );
		}
		label$1153:;
		label$1152:;
		fb_StrDelete( (FBSTRING*)&MANGLED$1 );
		goto label$1149;
	}
	label$1151:;
	label$1150:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$689$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$689$1, -1ll, (void*)"}", 2ll, 0 );
	HWRITELINE( &TMP$689$1, 0ll );
	fb_StrDelete( (FBSTRING*)&TMP$689$1 );
	SECTIONEND(  );
	label$1154:;
	{
		void* vr$29 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll) );
		CACHENODE$1 = (struct $13EXPRCACHENODE*)vr$29;
		if( CACHENODE$1 != (struct $13EXPRCACHENODE*)0ull ) goto label$1158;
		{
			goto label$1155;
		}
		label$1158:;
		label$1157:;
		EXPRFREETREE( *(struct $8EXPRNODE**)((uint8*)CACHENODE$1 + 8ll) );
		LISTDELNODE( (struct $5TLIST*)((uint8*)&CTX$ + 5448ll), (void*)CACHENODE$1 );
	}
	label$1156:;
	goto label$1154;
	label$1155:;
	IRHLEMITPROCEND(  );
	fb_StrDelete( (FBSTRING*)&MANGLED$1 );
	label$1149:;
}

static void _EMITSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$690$1;
	label$1159:;
	SECTIONBEGIN(  );
	__builtin_memset( &TMP$690$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$690$1, -1ll, (void*)"{", 2ll, 0 );
	HWRITELINE( &TMP$690$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$690$1 );
	SECTIONINDENT(  );
	label$1160:;
}

static void _EMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	FBSTRING TMP$691$1;
	label$1161:;
	SECTIONUNINDENT(  );
	__builtin_memset( &TMP$691$1, 0, 24ll );
	fb_StrAssign( (void*)&TMP$691$1, -1ll, (void*)"}", 2ll, 0 );
	HWRITELINE( &TMP$691$1, -1ll );
	fb_StrDelete( (FBSTRING*)&TMP$691$1 );
	SECTIONEND(  );
	label$1162:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1164:;
	_ZN8IRHLCCTXC1Ev( &CTX$ );
	label$1165:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1167:;
	_ZN8IRHLCCTXD1Ev( &CTX$ );
	label$1168:;
}
