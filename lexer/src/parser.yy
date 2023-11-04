%{
#include "regex.h"
#include <memory>
#include <vector>
#include <cstdlib>
char yylex();
void yyerror(char* msg);
constexpr uint32_t infinite = 0xffffffff;
std::vector<std::shared_ptr<RegUnit>*> units{};
%}

%union{
    std::shared_ptr<RegUnit>* ru;
    uint64_t number;
}

%type <ru> regex aexpr orexp factor optional atomic
%type <number> decimalarea decimal inumber

%%

line: 
    line regex '\n' { (*$2)->print(); printf("\n> "); for(auto& it:units){delete it; } units.clear(); }
    | line '\n'
    |


/* OrUnit */
regex: 
    regex '|' aexpr { $$ = $1; auto x = *$$; auto por = dynamic_cast<OrUnit*>(x.get());
    if((*$3)!=nullptr) por->add(*$3); }
    | aexpr { auto x = *$1; units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x))); $$ = units.back(); }

/* ConcatUnit */
aexpr:
    aexpr orexp { $$ = $1; auto x = *$$; auto por = dynamic_cast<ConcatUnit*>(x.get());
    por->append(*$2); }
    | orexp { 
        units.push_back(new std::shared_ptr<RegUnit>(new ConcatUnit(*$1))); 
        $$ = units.back(); }

/* 连接整体 */
orexp:
    factor '+' { auto x1 = *$1; units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 1))); 
    $$ = units.back();
    }
    | factor '*' { auto x1 = *$1; units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 0))); 
    $$ = units.back();
    }
    | factor '?' { auto x1 = *$1; units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, 0, 1))); 
    $$ = units.back();
    }
    | factor '{' decimalarea '}' { 
    uint32_t from = $3>>32; 
    uint32_t to = $3 & infinite; 
    auto x1 = *$1; units.push_back(new std::shared_ptr<RegUnit>(new ClosureUnit(x1, from, to)));
    $$ = units.back();
    }
    | factor { 
        $$ = $1;
    }

/* 整体 */
factor:
    '(' regex ')' { $$ = $2; }
    | '[' optional ']' { $$ = $2; }
    | atomic { $$ = $1; }

/* 可选 [] 内 */
optional:
    optional factor { $$ = $1; auto x = *$$; auto por = dynamic_cast<OrUnit*>(x.get());
    por->add(*$2); }
    | optional atomic '-' atomic { auto x2 = dynamic_cast<SingleUnit*>((*$2).get()); 
        auto x4 = dynamic_cast<SingleUnit*>((*$4).get());
        $$ = $1; auto x = *$$; auto por = dynamic_cast<OrUnit*>(x.get());
        char e = x4->GetChar();
        por->add(*$2);
        for(char c=x2->GetChar()+1; c<e; c++ )
        {
            units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit(c)));
            por->add(*units.back());
        }
        por->add(*$4);
     }
    | atomic '-' atomic { auto x1 = *$1; 
        units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x1))); 
        $$ = units.back();
        auto x2 = dynamic_cast<SingleUnit*>((x1.get()));
        auto x4 = dynamic_cast<SingleUnit*>((*$3).get());
        auto x = *$$; auto por = dynamic_cast<OrUnit*>(x.get());
        char e = x4->GetChar();
        for(char c=x2->GetChar()+1; c<e; c++ )
        {
            units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit(c)));
            por->add(*units.back());
        }
        por->add(*$3);
     }
    | factor { auto x = *$1; units.push_back(new std::shared_ptr<RegUnit>(new OrUnit(1, x))); $$ = units.back(); }

/* 单字符整体 */
atomic:
    'a' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('a'))); $$ = units.back(); }
    | 'b' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('b')));  $$ = units.back(); }
    | 'c' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('c')));  $$ = units.back(); }
    | 'd' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('d')));  $$ = units.back(); }
    | 'e' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('e')));  $$ = units.back(); }
    | 'f' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('f')));  $$ = units.back(); }
    | 'g' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('g')));  $$ = units.back(); }
    | 'h' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('h')));  $$ = units.back(); }
    | 'i' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('i')));  $$ = units.back(); }
    | 'j' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('j')));  $$ = units.back(); }
    | 'k' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('k')));  $$ = units.back(); }
    | 'l' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('l')));  $$ = units.back(); }
    | 'm' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('m')));  $$ = units.back(); }
    | 'n' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('n')));  $$ = units.back(); }
    | 'o' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('o')));  $$ = units.back(); }
    | 'p' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('p')));  $$ = units.back(); }
    | 'q' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('q')));  $$ = units.back(); }
    | 'r' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('r')));  $$ = units.back(); }
    | 's' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('s')));  $$ = units.back(); }
    | 't' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('t')));  $$ = units.back(); }
    | 'u' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('u')));  $$ = units.back(); }
    | 'v' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('v')));  $$ = units.back(); }
    | 'w' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('w')));  $$ = units.back(); }
    | 'x' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('x')));  $$ = units.back(); }
    | 'y' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('y')));  $$ = units.back(); }
    | 'z' { units.push_back(new std::shared_ptr<RegUnit>(new SingleUnit('z')));  $$ = units.back(); }

decimalarea:
    decimal { $$ = $1<<32; }
    | decimal ',' { $$ = ($1<<32) | infinite; }
    | decimal ',' decimal { $$ = ($1<<32) + $3; }

decimal:
    decimal inumber {  $$ = $1*10 + $2; }
    | inumber { $$ = $1; }

inumber:
    '1' { $$ = 1; }
    | '2' { $$ = 2; }
    | '3' { $$ = 3; }
    | '4' { $$ = 4; }
    | '5' { $$ = 5; }
    | '6' { $$ = 6; }
    | '7' { $$ = 7; }
    | '8' { $$ = 8; }
    | '9' { $$ = 9; }
    | '0' { $$ = 0; }
%%

char yylex()
{
    return getchar();
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