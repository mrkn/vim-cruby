" Vim syntax file
" Language: CRuby
" Maintainer: Kenta Murata <mrkn@mrkn.jp>

if exists("b:current_syntax")
  finish
endif

runtime! syntax/c.vim
unlet b:current_syntax

if has("folding") && exists("cruby_fold")
  set foldmethod=syntax
endif

setlocal tabstop=8 softtabstop=4 shiftwidth=4 expandtab
setlocal cinoptions=:2=2L2g2h2

syn keyword crubyType VALUE ID RUBY_DATA_FUNC NODE BDIGIT BDIGIT_DBL BDIGIT_DBL_SIGNED
syn keyword crubyType LONG_LONG SIGNED_VALUE
syn keyword crubyType rb_global_variable rb_io_t rb_data_type_struct
syn keyword crubyType rb_classext_struct rb_classext_t rb_data_type_t rb_subclass_entry_t
syn keyword crubyType rb_gvar_getter_t rb_gvar_setter_t rb_gvar_marker_t
syn keyword crubyType rb_method_entry_t rb_const_entry_t rb_iseq_t
syn keyword crubyType rb_encoding rb_transcoding rb_econv_t rb_econv_elem_t rb_econv_result_t
syn keyword crubyType ruby_glob_func
syn keyword crubyType RBasic RObject RClass RFloat RString RArray RRegexp RHash RFile RRational RComplex RData RTypedData RStruct RBignum
syn keyword crubyType st_table st_data st_data_t st_index_t st_hash_type
syn match   crubyType display "\<\(RUBY_\)\?T_\(NONE\|OBJECT\|CLASS\|MODULE\|FLOAT\|STRING\|REGEXP\|ARRAY\|HASH\|STRUCT\|BIGNUM\|FILE\|DATA\|MATCH\|COMPLEX\|RATIONAL\|NIL\|TRUE\|FALSE\|SYMBOL\|FIXNUM\|UNDEF\|NODE\|ICLASS\|ZOMBIE\|MASK\)\>"

syn keyword crubyStatement ANYARGS NORETURN PRINTF_ARGS UNREACHABLE
syn keyword crubyStorageClass RUBY_EXTERN

syn keyword crubyOperator IMMEDIATE_P SPECIAL_CONST_P BUILTIN_TYPE SYMBOL_P FIXNUM_P NIL_P RTEST CLASS_OF METACLASS_OF
syn match   crubyOperator "\<\(INT\|LONG\)2\(FIX\|NUM\)\>"
syn keyword crubyOperator UINT2NUM ULONG2NUM LL2NUM ULL2NUM OFFT2NUM SIZET2NUM SSIZET2NUM MODET2NUM DBL2NUM
syn keyword crubyOperator NUM2LONG NUM2ULONG FIX2INT NUM2INT NUM2UINT FIX2UINT
syn keyword crubyOperator NUM2LL NUM2ULL NUM2OFFT NUM2SIZET NUM2SSIZET NUM2MODET NUM2DBL NUM2CHR CHR2FIX
syn keyword crubyOperator NEWOBJ NEWOBJ_OF OBJSETUP CLONESETUP DUPSETUP CONST_ID
syn match   crubyOperator "\<FL_\(ABLE\|ANY\|ALL\|TEST\|SET\|UNSET\|REVERSE\)\>"
syn keyword crubyOperator PIDT2NUM NUM2PIDT
syn keyword crubyOperator UIDT2NUM NUM2UIDT
syn keyword crubyOperator GIDT2NUM NUM2GIDT
syn keyword crubyOperator FIX2LONG FIX2ULONG
syn match   crubyOperator "\<\(POS\|NEG\)\?FIXABLE\>"
syn keyword crubyOperator ID2SYM SYM2ID
syn keyword crubyOperator RSHIFT BUILTIN_TYPE TYPE
syn keyword crubyOperator RB_GC_GUARD_PTR RB_GC_GUARD
syn keyword crubyOperator DATA_PTR RTYPEDDATA_P RTYPEDDATA_TYPE RTYPEDDATA_DATA
syn keyword crubyOperator Check_Type Check_TypedStruct
syn keyword crubyOperator StringValue StringValuePtr StringValueCPtr
syn keyword crubyOperator SafeStringValue Check_SafeStr
syn keyword crubyOperator ExportStringValue
syn keyword crubyOperator FilePathValue
syn keyword crubyOperator FilePathStringValue
syn keyword crubyOperator ALLOC ALLOC_N REALLOC_N ALLOCA_N ALLOCV ALLOCV_N ALLOCV_END MEMZERO MEMCPY MEMMOVE MEMCMP
syn match   crubyOperator "\<RB_\(\(FLOAT_\)\?TYPE_P\)\>"
syn match   crubyOperator "\<OBJ_\(TAINTED\|TAINT\|UNTRUSTED\|UNTRUST\|INFECT\|FROZEN\|FREEZE\)\>"
syn match   crubyOperator "\<ROBJECT_\(NUMIV\|IVPTR\|IV_INDEX_TBL\)\>"
syn match   crubyOperator "\<RCLASS_\(IV_TBL\|CONST_TBL\|M_TBL\|SUPER\|ORIGIN\|IV_INDEX_TBL\|REFINED_CLASS\|EXT\)\>"
syn match   crubyOperator "\<RMODULE_\(IV_TBL\|CONST_TBL\|M_TBL\|SUPER\)\>"
syn match   crubyOperator "\<RUBY_\(BIT_ROT[RL]\|METHOD_FUNC\)\>"
syn match   crubyOperator "\<RFLOAT_VALUE\>"
syn match   crubyOperator "\<RSTRING_\(\(EMBED_\)\?LEN\|PTR\|END\|LENINT\|GETMEM\)\>"
syn match   crubyOperator "\<RARRAY_\(LEN\|PTR\|LENINT\)\>"
syn match   crubyOperator "\<RREGEXP_SRC\(_\(PTR\|LEN\|END\)\)\?\>"
syn match   crubyOperator "\<RHASH_\(TBL\|ITER_LEV\|IFNONE\|SIZE\|EMPTY_P\)\>"
syn match   crubyOperator "\<RSTRUCT_\(LEN\|PTR\|LENINT\)\>"
syn match   crubyOperator "\<RBIGNUM_\(\(SET_\)\?SIGN\|LEN\(INT\)\?\|\(NEGATIVE\|POSITIVE\)_P\|DIGITS\)\>"
syn keyword crubyOperator RBASIC FLONUM_P
syn keyword crubyOperator ROBJECT RCLASS RMODULE RFLOAT RSTRING RARRAY RREGEXP RHASH RSTRUCT RBIGNUM R_CAST RDATA RTYPEDDATA RFILE RRATIONAL RCOMPLEX
syn keyword crubyOperator Data_Wrap_Struct Data_Make_Struct Data_Get_Struct
syn keyword crubyOperator TypedData_Wrap_Struct TypedData_Make_Struct TypedData_Get_Struct
syn keyword crubyOperator CONST_ID_CACHE
syn keyword crubyOperator ISPRINT ISASCII ISSPACE ISUPPER ISLOWER ISALNUM ISALPHA ISDIGIT ISXDIGIT TOUPPER TOLOWER
syn keyword crubyOperator STRCASECMP STRNCASECMP STRTOUL

syn match   crubyConstant "\<SIZEOF_\(INT\|LONG\|LONG_LONG\|OFF_T\|SIZE_T\|PTRDIFF_T\|TIME_T\|VOIDP\|VALUE\)\>"
syn match   crubyConstant "\<PRI_\(INT\|LONG\|LL\|PTRDIFF\|SIZE\|TIMET\|VALUE\)_PREFIX\>"
syn match   crubyConstant "\<PRI[douxXis]\(PTR\(DIFF\)\?\|SIZE\|VALUE\)\>"
syn match   crubyConstant "\<\(FIXNUM\|LONG_LONG\)_\(MAX\|MIN\)\>"
syn keyword crubyConstant Qtrue Qfalse Qnil Qundef TRUE FALSE
syn keyword crubyConstant IMMEDIATE_MASK FIXNUM_FLAG SYMBOL_FLAG FLONUM_MASK FLONUM_FLAG ELTS_SHARED
syn match   crubyConstant "\<FL_\(SINGLETON\|RESERVED[12]\|FINALIZE\|TAINT\|UNTRUSTED\|EXIVAR\|FREEZE\|USHIFT\|USER\([0-9]\|1[0-9]\)\)\>"
syn match   crubyConstant "\<rb_m\(Kernel\|Comparable\|Enumerable\|Errno\|FileTest\|GC\|Math\|Process\|WaitReadable\|WaitWritable\)\>"
syn match   crubyConstant "\<rb_c\(\(Basic\)\?Object\|Array\|Bignum\|Binding\|Class\|Cont\|Dir\|Data\|\(False\|Nil\|True\)Class\|Encoding\|Enumerator\|File\|Fixnum\|Float\|Hash\|Integer\|IO\|Match\|\(Unbound\)\?Method\|Module\|NameErrorMesg\|Numeric\|Proc\|Random\|Range\|Rational\|Complex\|Regexp\|Stat\|String\|Struct\|Symbol\|Thread\|Time\)\>"
syn match   crubyConstant "\<rb_e\(Exception\|\(Standard\|Arg\|EOF\|Index\|Key\|Range\|IO\|Runtime\|Security\|SystemCall\|Thread\|Type\|ZeroDiv\|NotImp\|NoMem\|NoMethod\|FloatDomain\|LocalJump\|SysStack\|Regexp\|Encoding\|EncCompat\|Script\|Name\|Syntax\|Load\|MathDomain\)Error\|SystemExit\|Interrupt\|Signal\|Fatal\|StopIteration\)\>"
syn match   crubyConstant "\<RUBY_\(Qfalse\|Qtrue\|Qnil\|Qundef\|IMMEDIATE_MASK\|FIXNUM_FLAG\|FLONUM_\(MASK\|FLAG\)\|SYMBOL_FLAG\|SPECIAL_SHIFT\)\>"
syn match   crubyConstant "\<rb_std\(in\|out\|err\)\>"

syn match   crubyConstant "\<NEW_\(CREF\)\>"

syn match   crubyConstant "\<ROBJECT_\(EMBED\(_LEN_MAX\)\?\)\>"
syn match   crubyConstant "\<RMODULE_\(IS_\(OVERLAID\|REFINEMENT\)\|INCLUDED_INTO_REFINEMENT\)\>"
syn match   crubyConstant "\<RSTRING_\(EMBED_LEN_\(MAX\|MASK\|SHIFT\)\|NOEMBED\)\>"
syn match   crubyConstant "\<RARRAY_\(EMBED_LEN_\(MAX\|MASK\|SHIFT\)\|EMBED_FLAG\|NOEMBED\)\>"
syn match   crubyConstant "\<RUBY_\(DEFAULT\|NEVER\|TYPED_\(DEFAULT\|NEVER\)\)_FREE\>"
syn match   crubyConstant "\<RSTRUCT_EMBED_LEN_\(MAX\|MASK\|SHIFT\)\>"
syn match   crubyConstant "\<RBIGNUM_\(EMBED_\(LEN_\(MAX\|MASK\|SHIFT\)\|FLAG\)\|SIGN_BIT\)\>"

syn match   crubyConstant "\<RUBY_EVENT_\(NONE\|LINE\|CLASS\|END\|CALL\|RETURN\|C_CALL\|C_RETURN\|RAISE\|ALL\|B_CALL\|B_RETURN\|THREAD_BEGIN\|THREAD_END\|TRACEPOINT_ALL\|SPECIFIED_LINE\|SWITCH\|COVERAGE\)\>"

syn match   crubyConstant "\<ST_\(CONTINUE\|STOP\|DELETE\|CHECK\|INDEX_BITS\)\>"

" for bignum.c
syn keyword crubyOperator BDIGITS BIGUP BIGDN BIGLO BIGZEROP
syn keyword crubyConstant BITSPERDIG BIGRAD DIGSPERLONG DIGSPERLL BDIGMAX

hi def link crubyConstant	Constant
hi def link crubyOperator	Operator
hi def link crubyStatement	Statement
hi def link crubyStorageClass	StorageClass
hi def link crubyType		Type

let b:current_syntax = "c"
