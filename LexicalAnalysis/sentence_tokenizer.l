/*** Definition Section ***/
%{
#include <stdio.h>
%}

/*** Rule Section ***/
%%
[a-zA-Z]+  { printf("%s\n", yytext); }
.          ; // Ignore any other characters 
\n         ; // Ignore newline characters 
[ \t\n]+ {
} // Ignore  Whitespace
[0-9]+ {
    printf("This is a number -> %s\n", yytext);
} // Matches Numbers
%%

/*** Code Section ***/
int yywrap() {}

int main() {
    yylex();
    return 0;
}
