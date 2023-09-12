/*** Definition Section ***/
%{
#include <stdio.h>
%}

/*** Rule Section ***/
%%
[a-zA-Z]+  { printf("%s\n", yytext); }
.          ; /* Ignore any other characters */
\n         ; /* Ignore newline characters */
%%

/*** Code Section ***/
int yywrap() {}

int main() {
    yylex();
    return 0;
}
