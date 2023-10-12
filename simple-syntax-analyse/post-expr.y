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

lines : lines expr '\n' { $$ = $2; printf("\n>>> ");}
	  | lines '\n'
	  | 
	  ;

expr : expr '+' term {$$ = $1 + $3; printf("%s", "+ ");}	
        | expr '-' term {$$ = $1 - $3;  printf("%s", "- ");}	
        | term
        ;

term : term '*' factor {$$ = $1 * $3;  printf("%s", "* ");}    
        | term '/' factor {$$ = $1 / $3;  printf("%s", "/ ");}        
        | factor 
        ;

factor : '(' expr ')'   { $$ = $2; } 
         | DIGITS { printf("%.0f ", $$); }
		| '-' DIGITS { $$ = -$2; printf(" %.0f ", $$); }
         ;

DIGITS : DIGITS DIGIT { $$= $1*10+$2;}
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
