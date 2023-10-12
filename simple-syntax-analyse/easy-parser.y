// 这个版本是在根据作业基础要求实现的简单版本
// 😭， 想法很多时间很少，先做一个可以交的程序
%{
#include <stdio.h>
#include <stdlib.h>

#ifndef YYSTYPE
#define YYSTYPE double
#endif

char yylex();
void yyerror(char*);

%}


%%

lines : lines expr '\n' { printf("%f\n>>> ", $2);}
	  | lines '\n'
	  | 
	  ;

expr : expr '+' term {$$ = $1 + $3;}	
        | expr '-' term {$$ = $1 - $3;}	
        | term
        ;

term : term '*' factor {$$ = $1 * $3;}    
        | term '/' factor {$$ = $1 / $3;}        
        | factor 
        ;

factor : '(' expr ')'   {$$=$2;}    
         | '-' DIGITS   {$$=-$2;}
         | DIGITS
         ;

DIGITS : DIGITS DIGIT { $$= $1*10+$2; }
		| DIGIT

DIGIT	:	'0'				{ $$ = 0.0; }
		|	'1'				{ $$ = 1.0; }
		|	'2'				{ $$ = 2.0; }
		|	'3'				{ $$ = 3.0; }
		|	'4'				{ $$ = 4.0; }
		|	'5'				{ $$ = 5.0; }
		|	'6'				{ $$ = 6.0; }
		|	'7'				{ $$ = 7.0; }
		|	'8'				{ $$ = 8.0; }
		|	'9'				{ $$ = 9.0; }
		;      
%%


char yylex()
{
	char ch = getchar();
	while(ch == '\t' || ch ==' '){
		ch = getchar();
	}
	return ch;
}

void yyerror(char*msg)
{
	exit(0);
}

int main()
{
	printf(">>> ");
	return yyparse();
}
