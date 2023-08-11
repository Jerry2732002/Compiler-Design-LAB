%{
#include <stdio.h>
#include <stdlib.h>
int length;
%}

/* Rules Section */
%%
[0-1]+ {
    length = yyleng;
    if (length % 2 == 0) {
        printf("Even");
    } else {
        printf("Odd");
    }
}
%%

int main() {
    printf("Enter a String(0 or 1):");
    yylex();
    return 1;
}

