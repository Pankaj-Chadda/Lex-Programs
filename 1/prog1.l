%{
#include<stdio.h>
int l=0;
int c=0;
int s=0;
int t=0;
%}
%%
[\n] {l++;c++;}
[\t] {t++;c++;}
[ ] {s++;c++;}
[^\t\n ] {c++;}
%%
int main(){
yyin=fopen("pr1input.txt","r");
yylex();
printf(" lines=%d\n characters=%d\n spaces=%d\n tab=%d\n",l,c,s,t);
}
int yywrap(){
return 1;
}
