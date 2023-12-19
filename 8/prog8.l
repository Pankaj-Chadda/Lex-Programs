%{
#include<stdio.h>
%}
%%
\<[^>]*> {fprintf(yyout,"%s\n",yytext);}
. {};
%%
int main(){
yyin=fopen("input.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
int yywrap(){
return 1;
}
