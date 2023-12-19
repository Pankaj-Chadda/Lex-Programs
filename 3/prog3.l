%{
#include<stdio.h>
%}
%%
[0-9]* {printf("Int value");}
[0-9]*[.][0-9]* {printf("Float value");}
%%
int main(){
yylex();
return 0;
}
int yywrap(){
return 1;
}
