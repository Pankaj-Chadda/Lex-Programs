%{
#include<stdio.h>
%}
%%
\/\/(.*) {};
[/]\*(.*\n)*.*\*[/]  {};
%%
int main(){
yyin=fopen("input7.c","r");
yyout=fopen("out.c","w");
yylex();
return 0;
}
int yywrap(){
return 1;
}
