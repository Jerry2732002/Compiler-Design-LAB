%{
#include<stdio.h>
%}

%%
if |
else |
printf {printf("\n%s is a keyword",yytext);}
[0-9]+ {printf("\n%s is a number",yytext);}
[a-zA-Z]+ {printf("\n%s is a word",yytext);}
.|\n {ECHO;}
%%

int main(){
printf("\n Enter a string:");
yylex();
}

int yywrap(){
	return 1;
}
