%{
#include "y.tab.h"
#include<stdio.h>
extern int yylval;
%}

%%
[\i][\d] {yylval = yytext; return id;}
[+-/*()\s] {return yytext[0];}
[\n] {return 0;}
%%

int yywrap(){
	return 1;
}
