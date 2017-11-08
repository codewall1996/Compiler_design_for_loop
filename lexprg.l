%{
#include<stdlib.h>
%}
alpha [A-Za-z]
digit [0-9]

%%
^"#include"[ ]*<.+\.h> {return INCLUDE;} 
"main"		 {return MAIN;}
"int"		 {return INT;}
"float"		 {return FLOAT;}
"char"		  {return CHAR;}
\/\/.* ;
\/\*(.*\n)*.*\*\/ ; 
[ \t]* ;
[\n] ;   
for             {return FOR;}
{digit}+    {return NUM;}
{alpha}({alpha}|{digit})* {return ID;}
"++"		 {return PP;}
"--"		 {return MM;}
"<="         {return LE;}
">="         {return GE;}
"=="         {return EQ;}
"!="         {return NE;}
"||"         {return OR;}
"&&"         {return AND;}
.            {return yytext[0];}
%%