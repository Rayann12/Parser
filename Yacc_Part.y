%{
#include <stdio.h>
%}

%token id

%%

E:  T 
	| E '+' T 
	;
T:  F 
	| T'*' F 
	;
F: '(' E ')'|id	;

%%

int main()
{
printf("Enter an expression");
if(yyparse()){printf("\nInvalid Input\n");}
else{printf("\nValid Input\n");}
}

int yyerror(){
printf("\nAn error has occured\n");
}
