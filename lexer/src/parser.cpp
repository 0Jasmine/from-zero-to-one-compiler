/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "./src/parser.yy"


#include"regex.h"
#include <memory>
#include <vector>
#include <cstdlib>
char yylex();
void yyerror(char* msg);
constexpr uint32_t infinite = 0xffffffff;
std::vector<std::shared_ptr<RegUnit>*> units{};
std::unique_ptr<Transformer> gtf{nullptr};

#line 84 "./src/parser.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_3_n_ = 3,                       /* '\n'  */
  YYSYMBOL_4_ = 4,                         /* '|'  */
  YYSYMBOL_5_ = 5,                         /* '+'  */
  YYSYMBOL_6_ = 6,                         /* '*'  */
  YYSYMBOL_7_ = 7,                         /* '?'  */
  YYSYMBOL_8_ = 8,                         /* '{'  */
  YYSYMBOL_9_ = 9,                         /* '}'  */
  YYSYMBOL_10_ = 10,                       /* '('  */
  YYSYMBOL_11_ = 11,                       /* ')'  */
  YYSYMBOL_12_ = 12,                       /* '['  */
  YYSYMBOL_13_ = 13,                       /* ']'  */
  YYSYMBOL_14_ = 14,                       /* '-'  */
  YYSYMBOL_15_a_ = 15,                     /* 'a'  */
  YYSYMBOL_16_b_ = 16,                     /* 'b'  */
  YYSYMBOL_17_c_ = 17,                     /* 'c'  */
  YYSYMBOL_18_d_ = 18,                     /* 'd'  */
  YYSYMBOL_19_e_ = 19,                     /* 'e'  */
  YYSYMBOL_20_f_ = 20,                     /* 'f'  */
  YYSYMBOL_21_g_ = 21,                     /* 'g'  */
  YYSYMBOL_22_h_ = 22,                     /* 'h'  */
  YYSYMBOL_23_i_ = 23,                     /* 'i'  */
  YYSYMBOL_24_j_ = 24,                     /* 'j'  */
  YYSYMBOL_25_k_ = 25,                     /* 'k'  */
  YYSYMBOL_26_l_ = 26,                     /* 'l'  */
  YYSYMBOL_27_m_ = 27,                     /* 'm'  */
  YYSYMBOL_28_n_ = 28,                     /* 'n'  */
  YYSYMBOL_29_o_ = 29,                     /* 'o'  */
  YYSYMBOL_30_p_ = 30,                     /* 'p'  */
  YYSYMBOL_31_q_ = 31,                     /* 'q'  */
  YYSYMBOL_32_r_ = 32,                     /* 'r'  */
  YYSYMBOL_33_s_ = 33,                     /* 's'  */
  YYSYMBOL_34_t_ = 34,                     /* 't'  */
  YYSYMBOL_35_u_ = 35,                     /* 'u'  */
  YYSYMBOL_36_v_ = 36,                     /* 'v'  */
  YYSYMBOL_37_w_ = 37,                     /* 'w'  */
  YYSYMBOL_38_x_ = 38,                     /* 'x'  */
  YYSYMBOL_39_y_ = 39,                     /* 'y'  */
  YYSYMBOL_40_z_ = 40,                     /* 'z'  */
  YYSYMBOL_41_1_ = 41,                     /* '1'  */
  YYSYMBOL_42_2_ = 42,                     /* '2'  */
  YYSYMBOL_43_3_ = 43,                     /* '3'  */
  YYSYMBOL_44_4_ = 44,                     /* '4'  */
  YYSYMBOL_45_5_ = 45,                     /* '5'  */
  YYSYMBOL_46_6_ = 46,                     /* '6'  */
  YYSYMBOL_47_7_ = 47,                     /* '7'  */
  YYSYMBOL_48_8_ = 48,                     /* '8'  */
  YYSYMBOL_49_9_ = 49,                     /* '9'  */
  YYSYMBOL_50_0_ = 50,                     /* '0'  */
  YYSYMBOL_51_ = 51,                       /* ','  */
  YYSYMBOL_YYACCEPT = 52,                  /* $accept  */
  YYSYMBOL_line = 53,                      /* line  */
  YYSYMBOL_regex = 54,                     /* regex  */
  YYSYMBOL_aexpr = 55,                     /* aexpr  */
  YYSYMBOL_orexp = 56,                     /* orexp  */
  YYSYMBOL_factor = 57,                    /* factor  */
  YYSYMBOL_optional = 58,                  /* optional  */
  YYSYMBOL_atomic = 59,                    /* atomic  */
  YYSYMBOL_decimalarea = 60,               /* decimalarea  */
  YYSYMBOL_decimal = 61,                   /* decimal  */
  YYSYMBOL_inumber = 62                    /* inumber  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  2
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   199

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  52
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  11
/* YYNRULES -- Number of rules.  */
#define YYNRULES  71
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  84

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   257


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       3,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      10,    11,     6,     5,    51,    14,     2,     2,    50,    41,
      42,    43,    44,    45,    46,    47,    48,    49,     2,     2,
       2,     2,     2,     7,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    12,     2,    13,     2,     2,     2,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,     8,     4,     9,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    25,    25,    26,    27,    32,    34,    38,    40,    46,
      49,    52,    55,    61,    67,    68,    69,    73,    75,    87,
     101,   105,   106,   107,   108,   109,   110,   111,   112,   113,
     114,   115,   116,   117,   118,   119,   120,   121,   122,   123,
     124,   125,   126,   127,   128,   129,   130,   131,   132,   133,
     134,   135,   136,   137,   138,   139,   140,   143,   144,   145,
     148,   149,   152,   153,   154,   155,   156,   157,   158,   159,
     160,   161
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "'\\n'", "'|'", "'+'",
  "'*'", "'?'", "'{'", "'}'", "'('", "')'", "'['", "']'", "'-'", "'a'",
  "'b'", "'c'", "'d'", "'e'", "'f'", "'g'", "'h'", "'i'", "'j'", "'k'",
  "'l'", "'m'", "'n'", "'o'", "'p'", "'q'", "'r'", "'s'", "'t'", "'u'",
  "'v'", "'w'", "'x'", "'y'", "'z'", "'1'", "'2'", "'3'", "'4'", "'5'",
  "'6'", "'7'", "'8'", "'9'", "'0'", "','", "$accept", "line", "regex",
  "aexpr", "orexp", "factor", "optional", "atomic", "decimalarea",
  "decimal", "inumber", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-17)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -17,    58,   -17,   -17,    99,    99,   -17,   -17,   -17,   -17,
     -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,
     -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,
     -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,   -17,
     -17,   -17,    62,    99,   -17,   191,   -17,    60,   -17,    -8,
     -11,   -17,    99,   -17,   -17,   -17,   -17,   145,   -17,   -17,
     -17,    46,   135,    99,   -17,   -17,   -17,   -17,   -17,   -17,
     -17,   -17,   -17,   -17,    -3,     5,   -17,   135,   -17,   -17,
     145,   -17,   -17,   145
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       4,     0,     1,     3,     0,     0,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,     0,     6,     8,    13,    16,     0,    20,     0,
      16,     2,     0,     7,     9,    10,    11,     0,    14,    15,
      17,    16,     0,     5,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,     0,    57,    61,     0,    19,    12,
      58,    60,    18,    59
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -17,   -17,    65,    10,     0,    -4,   -17,    -5,   -17,    30,
     -16
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     1,    42,    43,    44,    45,    49,    46,    74,    75,
      76
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      50,    48,     4,    62,     5,    59,    79,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    41,    53,    61,    60,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    80,    78,     2,    81,
      77,     3,    63,    53,    52,    51,    52,    81,     4,    47,
       5,    58,    82,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,     4,
      83,     5,     0,     0,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
       6,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    54,    55,    56,    57
};

static const yytype_int8 yycheck[] =
{
       5,     5,    10,    14,    12,    13,     9,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    49,    50,    43,    49,    49,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    62,     0,    75,
      14,     3,    52,    63,     4,     3,     4,    83,    10,     4,
      12,    11,    77,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    48,    49,    50,    10,
      80,    12,    -1,    -1,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,     5,     6,     7,     8
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    53,     0,     3,    10,    12,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    47,    48,
      49,    50,    54,    55,    56,    57,    59,    54,    57,    58,
      59,     3,     4,    56,     5,     6,     7,     8,    11,    13,
      57,    59,    14,    55,    41,    42,    43,    44,    45,    46,
      47,    48,    49,    50,    60,    61,    62,    14,    59,     9,
      51,    62,    59,    61
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    52,    53,    53,    53,    54,    54,    55,    55,    56,
      56,    56,    56,    56,    57,    57,    57,    58,    58,    58,
      58,    59,    59,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,    59,    59,    59,    59,
      59,    59,    59,    59,    59,    59,    59,    60,    60,    60,
      61,    61,    62,    62,    62,    62,    62,    62,    62,    62,
      62,    62
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     3,     2,     0,     3,     1,     2,     1,     2,
       2,     2,     4,     1,     3,     3,     1,     2,     4,     3,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     2,     3,
       2,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* line: line regex '\n'  */
#line 25 "./src/parser.yy"
                    { (*(yyvsp[-1].ru))->print(); gtf.reset(new Transformer((*(yyvsp[-1].ru)).get())); printf("\n> ");  }
#line 1210 "./src/parser.cpp"
    break;

  case 5: /* regex: regex '|' aexpr  */
#line 32 "./src/parser.yy"
                    { (yyval.ru) = (yyvsp[-2].ru); auto x = *(yyval.ru); auto por = dynamic_cast<OrUnit*>(x.get());
    if((*(yyvsp[0].ru))!=nullptr) por->add(*(yyvsp[0].ru)); }
#line 1217 "./src/parser.cpp"
    break;

  case 6: /* regex: aexpr  */
#line 34 "./src/parser.yy"
            { auto x = *(yyvsp[0].ru); units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x))); (yyval.ru) = units.back(); }
#line 1223 "./src/parser.cpp"
    break;

  case 7: /* aexpr: aexpr orexp  */
#line 38 "./src/parser.yy"
                { (yyval.ru) = (yyvsp[-1].ru); auto x = *(yyval.ru); auto por = dynamic_cast<ConcatUnit*>(x.get());
    por->append(*(yyvsp[0].ru)); }
#line 1230 "./src/parser.cpp"
    break;

  case 8: /* aexpr: orexp  */
#line 40 "./src/parser.yy"
            { 
        units.push_back(new std::shared_ptr<RegUnit>(new ConcatUnit(*(yyvsp[0].ru)))); 
        (yyval.ru) = units.back(); }
#line 1238 "./src/parser.cpp"
    break;

  case 9: /* orexp: factor '+'  */
#line 46 "./src/parser.yy"
               { auto x1 = *(yyvsp[-1].ru); units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 1))); 
    (yyval.ru) = units.back();
    }
#line 1246 "./src/parser.cpp"
    break;

  case 10: /* orexp: factor '*'  */
#line 49 "./src/parser.yy"
                 { auto x1 = *(yyvsp[-1].ru); units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 0))); 
    (yyval.ru) = units.back();
    }
#line 1254 "./src/parser.cpp"
    break;

  case 11: /* orexp: factor '?'  */
#line 52 "./src/parser.yy"
                 { auto x1 = *(yyvsp[-1].ru); units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 0, 1))); 
    (yyval.ru) = units.back();
    }
#line 1262 "./src/parser.cpp"
    break;

  case 12: /* orexp: factor '{' decimalarea '}'  */
#line 55 "./src/parser.yy"
                                 { 
    uint32_t from = (yyvsp[-1].number)>>32; 
    uint32_t to = (yyvsp[-1].number) & infinite; 
    auto x1 = *(yyvsp[-3].ru); units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, from, to)));
    (yyval.ru) = units.back();
    }
#line 1273 "./src/parser.cpp"
    break;

  case 13: /* orexp: factor  */
#line 61 "./src/parser.yy"
             { 
        (yyval.ru) = (yyvsp[0].ru);
    }
#line 1281 "./src/parser.cpp"
    break;

  case 14: /* factor: '(' regex ')'  */
#line 67 "./src/parser.yy"
                  { (yyval.ru) = (yyvsp[-1].ru); }
#line 1287 "./src/parser.cpp"
    break;

  case 15: /* factor: '[' optional ']'  */
#line 68 "./src/parser.yy"
                       { (yyval.ru) = (yyvsp[-1].ru); }
#line 1293 "./src/parser.cpp"
    break;

  case 16: /* factor: atomic  */
#line 69 "./src/parser.yy"
             { (yyval.ru) = (yyvsp[0].ru); }
#line 1299 "./src/parser.cpp"
    break;

  case 17: /* optional: optional factor  */
#line 73 "./src/parser.yy"
                    { (yyval.ru) = (yyvsp[-1].ru); auto x = *(yyval.ru); auto por = dynamic_cast<OrUnit*>(x.get());
    por->add(*(yyvsp[0].ru)); }
#line 1306 "./src/parser.cpp"
    break;

  case 18: /* optional: optional atomic '-' atomic  */
#line 75 "./src/parser.yy"
                                 { auto x2 = dynamic_cast<SingleUnit*>((*(yyvsp[-2].ru)).get()); 
        auto x4 = dynamic_cast<SingleUnit*>((*(yyvsp[0].ru)).get());
        (yyval.ru) = (yyvsp[-3].ru); auto x = *(yyval.ru); auto por = dynamic_cast<OrUnit*>(x.get());
        char e = x4->GetChar();
        por->add(*(yyvsp[-2].ru));
        for(char c=x2->GetChar()+1; c<e; c++ )
        {
            units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit(c)));
            por->add(*units.back());
        }
        por->add(*(yyvsp[0].ru));
     }
#line 1323 "./src/parser.cpp"
    break;

  case 19: /* optional: atomic '-' atomic  */
#line 87 "./src/parser.yy"
                        { auto x1 = *(yyvsp[-2].ru); 
        units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x1))); 
        (yyval.ru) = units.back();
        auto x2 = dynamic_cast<SingleUnit*>((x1.get()));
        auto x4 = dynamic_cast<SingleUnit*>((*(yyvsp[0].ru)).get());
        auto x = *(yyval.ru); auto por = dynamic_cast<OrUnit*>(x.get());
        char e = x4->GetChar();
        for(char c=x2->GetChar()+1; c<e; c++ )
        {
            units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit(c)));
            por->add(*units.back());
        }
        por->add(*(yyvsp[0].ru));
     }
#line 1342 "./src/parser.cpp"
    break;

  case 20: /* optional: factor  */
#line 101 "./src/parser.yy"
             { auto x = *(yyvsp[0].ru); units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x))); (yyval.ru) = units.back(); }
#line 1348 "./src/parser.cpp"
    break;

  case 21: /* atomic: 'a'  */
#line 105 "./src/parser.yy"
        { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('a'))); (yyval.ru) = units.back(); }
#line 1354 "./src/parser.cpp"
    break;

  case 22: /* atomic: 'b'  */
#line 106 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('b')));  (yyval.ru) = units.back(); }
#line 1360 "./src/parser.cpp"
    break;

  case 23: /* atomic: 'c'  */
#line 107 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('c')));  (yyval.ru) = units.back(); }
#line 1366 "./src/parser.cpp"
    break;

  case 24: /* atomic: 'd'  */
#line 108 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('d')));  (yyval.ru) = units.back(); }
#line 1372 "./src/parser.cpp"
    break;

  case 25: /* atomic: 'e'  */
#line 109 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('e')));  (yyval.ru) = units.back(); }
#line 1378 "./src/parser.cpp"
    break;

  case 26: /* atomic: 'f'  */
#line 110 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('f')));  (yyval.ru) = units.back(); }
#line 1384 "./src/parser.cpp"
    break;

  case 27: /* atomic: 'g'  */
#line 111 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('g')));  (yyval.ru) = units.back(); }
#line 1390 "./src/parser.cpp"
    break;

  case 28: /* atomic: 'h'  */
#line 112 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('h')));  (yyval.ru) = units.back(); }
#line 1396 "./src/parser.cpp"
    break;

  case 29: /* atomic: 'i'  */
#line 113 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('i')));  (yyval.ru) = units.back(); }
#line 1402 "./src/parser.cpp"
    break;

  case 30: /* atomic: 'j'  */
#line 114 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('j')));  (yyval.ru) = units.back(); }
#line 1408 "./src/parser.cpp"
    break;

  case 31: /* atomic: 'k'  */
#line 115 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('k')));  (yyval.ru) = units.back(); }
#line 1414 "./src/parser.cpp"
    break;

  case 32: /* atomic: 'l'  */
#line 116 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('l')));  (yyval.ru) = units.back(); }
#line 1420 "./src/parser.cpp"
    break;

  case 33: /* atomic: 'm'  */
#line 117 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('m')));  (yyval.ru) = units.back(); }
#line 1426 "./src/parser.cpp"
    break;

  case 34: /* atomic: 'n'  */
#line 118 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('n')));  (yyval.ru) = units.back(); }
#line 1432 "./src/parser.cpp"
    break;

  case 35: /* atomic: 'o'  */
#line 119 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('o')));  (yyval.ru) = units.back(); }
#line 1438 "./src/parser.cpp"
    break;

  case 36: /* atomic: 'p'  */
#line 120 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('p')));  (yyval.ru) = units.back(); }
#line 1444 "./src/parser.cpp"
    break;

  case 37: /* atomic: 'q'  */
#line 121 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('q')));  (yyval.ru) = units.back(); }
#line 1450 "./src/parser.cpp"
    break;

  case 38: /* atomic: 'r'  */
#line 122 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('r')));  (yyval.ru) = units.back(); }
#line 1456 "./src/parser.cpp"
    break;

  case 39: /* atomic: 's'  */
#line 123 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('s')));  (yyval.ru) = units.back(); }
#line 1462 "./src/parser.cpp"
    break;

  case 40: /* atomic: 't'  */
#line 124 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('t')));  (yyval.ru) = units.back(); }
#line 1468 "./src/parser.cpp"
    break;

  case 41: /* atomic: 'u'  */
#line 125 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('u')));  (yyval.ru) = units.back(); }
#line 1474 "./src/parser.cpp"
    break;

  case 42: /* atomic: 'v'  */
#line 126 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('v')));  (yyval.ru) = units.back(); }
#line 1480 "./src/parser.cpp"
    break;

  case 43: /* atomic: 'w'  */
#line 127 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('w')));  (yyval.ru) = units.back(); }
#line 1486 "./src/parser.cpp"
    break;

  case 44: /* atomic: 'x'  */
#line 128 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('x')));  (yyval.ru) = units.back(); }
#line 1492 "./src/parser.cpp"
    break;

  case 45: /* atomic: 'y'  */
#line 129 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('y')));  (yyval.ru) = units.back(); }
#line 1498 "./src/parser.cpp"
    break;

  case 46: /* atomic: 'z'  */
#line 130 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('z')));  (yyval.ru) = units.back(); }
#line 1504 "./src/parser.cpp"
    break;

  case 47: /* atomic: '1'  */
#line 131 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('1')));  (yyval.ru) = units.back(); }
#line 1510 "./src/parser.cpp"
    break;

  case 48: /* atomic: '2'  */
#line 132 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('2')));  (yyval.ru) = units.back(); }
#line 1516 "./src/parser.cpp"
    break;

  case 49: /* atomic: '3'  */
#line 133 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('3')));  (yyval.ru) = units.back(); }
#line 1522 "./src/parser.cpp"
    break;

  case 50: /* atomic: '4'  */
#line 134 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('4')));  (yyval.ru) = units.back(); }
#line 1528 "./src/parser.cpp"
    break;

  case 51: /* atomic: '5'  */
#line 135 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('5')));  (yyval.ru) = units.back(); }
#line 1534 "./src/parser.cpp"
    break;

  case 52: /* atomic: '6'  */
#line 136 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('6')));  (yyval.ru) = units.back(); }
#line 1540 "./src/parser.cpp"
    break;

  case 53: /* atomic: '7'  */
#line 137 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('7')));  (yyval.ru) = units.back(); }
#line 1546 "./src/parser.cpp"
    break;

  case 54: /* atomic: '8'  */
#line 138 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('8')));  (yyval.ru) = units.back(); }
#line 1552 "./src/parser.cpp"
    break;

  case 55: /* atomic: '9'  */
#line 139 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('9')));  (yyval.ru) = units.back(); }
#line 1558 "./src/parser.cpp"
    break;

  case 56: /* atomic: '0'  */
#line 140 "./src/parser.yy"
          { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('0')));  (yyval.ru) = units.back(); }
#line 1564 "./src/parser.cpp"
    break;

  case 57: /* decimalarea: decimal  */
#line 143 "./src/parser.yy"
            { (yyval.number) = (yyvsp[0].number)<<32; }
#line 1570 "./src/parser.cpp"
    break;

  case 58: /* decimalarea: decimal ','  */
#line 144 "./src/parser.yy"
                  { (yyval.number) = ((yyvsp[-1].number)<<32) | infinite; }
#line 1576 "./src/parser.cpp"
    break;

  case 59: /* decimalarea: decimal ',' decimal  */
#line 145 "./src/parser.yy"
                          { (yyval.number) = ((yyvsp[-2].number)<<32) + (yyvsp[0].number); }
#line 1582 "./src/parser.cpp"
    break;

  case 60: /* decimal: decimal inumber  */
#line 148 "./src/parser.yy"
                    {  (yyval.number) = (yyvsp[-1].number)*10 + (yyvsp[0].number); }
#line 1588 "./src/parser.cpp"
    break;

  case 61: /* decimal: inumber  */
#line 149 "./src/parser.yy"
              { (yyval.number) = (yyvsp[0].number); }
#line 1594 "./src/parser.cpp"
    break;

  case 62: /* inumber: '1'  */
#line 152 "./src/parser.yy"
        { (yyval.number) = 1; }
#line 1600 "./src/parser.cpp"
    break;

  case 63: /* inumber: '2'  */
#line 153 "./src/parser.yy"
          { (yyval.number) = 2; }
#line 1606 "./src/parser.cpp"
    break;

  case 64: /* inumber: '3'  */
#line 154 "./src/parser.yy"
          { (yyval.number) = 3; }
#line 1612 "./src/parser.cpp"
    break;

  case 65: /* inumber: '4'  */
#line 155 "./src/parser.yy"
          { (yyval.number) = 4; }
#line 1618 "./src/parser.cpp"
    break;

  case 66: /* inumber: '5'  */
#line 156 "./src/parser.yy"
          { (yyval.number) = 5; }
#line 1624 "./src/parser.cpp"
    break;

  case 67: /* inumber: '6'  */
#line 157 "./src/parser.yy"
          { (yyval.number) = 6; }
#line 1630 "./src/parser.cpp"
    break;

  case 68: /* inumber: '7'  */
#line 158 "./src/parser.yy"
          { (yyval.number) = 7; }
#line 1636 "./src/parser.cpp"
    break;

  case 69: /* inumber: '8'  */
#line 159 "./src/parser.yy"
          { (yyval.number) = 8; }
#line 1642 "./src/parser.cpp"
    break;

  case 70: /* inumber: '9'  */
#line 160 "./src/parser.yy"
          { (yyval.number) = 9; }
#line 1648 "./src/parser.cpp"
    break;

  case 71: /* inumber: '0'  */
#line 161 "./src/parser.yy"
          { (yyval.number) = 0; }
#line 1654 "./src/parser.cpp"
    break;


#line 1658 "./src/parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 162 "./src/parser.yy"


char yylex()
{
    char ch = getchar();
    while(ch==' '|| ch=='\t') ch=getchar();
    return ch;
}
void yyerror(char* msg)
{
    printf("%s",msg);
}
int main()
{
    printf("> ");
    auto res = yyparse();
    return 0;
}
