%{
#include<stdio.h>
int w=0;
int s=0;
int c=0;
%}
%%
[ ] {w++;s++;}
[\n\t] {w++;}
[^\n\t] {c++;}
%%
int main(){
yyin=fopen("input5.txt","r");
yylex();
printf(" words=%d\n spaces=%d\n characters=%d\n",w,s,c);
return 0;
}
int yywrap(){
return 1;
}
