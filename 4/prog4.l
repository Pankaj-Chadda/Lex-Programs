%{
#include<stdio.h>
%}
%%
int|float|if|else|while|bool|for|do|double|char|printf|scanf|default|auto|goto|break|continue|case|switch|enum|extern|inline|long|short|return|sizeof|signed|static|unsigned|typedef|union|void  {printf("it is a keyword ");}
[{},;()] {printf("it is a separator ");}
[+-/*%=] {printf("it is an operator ");}
[a-zA-Z_][a-zA-Z0-9_]* {printf("it is an identifier ");}
.* {printf("others");}
%%
int main(){
// yyin=fopen("input.c","r");
yylex();
return 0;
}
int yywrap(){
return 1;
}
