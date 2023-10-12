%{
#include <stdio.h>
#include <stdlib.h>

#ifndef YYSTYPE
#define YYSTYPE double
#endif

FILE* write_arm;

char yylex();
void yyerror(char*);

int n = 0;
%}


%%

lines : lines expr '\n' { $$ = $2; printf("result = %lf \n>>> ",$$);}
	  | lines '\n'
	  | 
	  ;

expr : expr '+' term {$$ = $1 + $3; fprintf(write_arm,"%c", '+');}	
        | expr '-' term {$$ = $1 - $3;  fprintf(write_arm,"%c", '-');}	
        | term
        ;

term : term '*' factor {$$ = $1 * $3;  fprintf(write_arm,"%c", '*');}    
        | term '/' factor {$$ = $1 / $3;  fprintf(write_arm,"%c", '/');}        
        | factor 
        ;

factor : '(' expr ')'   { $$ = $2; } 
         | DIGITS { fprintf(write_arm,"ldr r%d, %.0f ", n, $$); n++; }
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
    fflush(write_arm);
    fclose(write_arm);
	exit(0);
}

int main()
{
    write_arm = fopen("add.s","a");
	printf(">>> ");
    yyparse();
    fflush(write_arm);
    fclose(write_arm);
	return 0;
}
