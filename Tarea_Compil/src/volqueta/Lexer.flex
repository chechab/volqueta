package prototipo_jflex;
import static prototipo_jflex.Tokens.*;
%%
%class Lexer
%type Token
L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
%{
public String lexeme;
%}
%%
{WHITE} {/*Ignore*/}
"=" {return ASSIGN;}
"+" {return SUMA;}
"*" {return MULT;}
"-" {return RESTA;}
"/" {return DIV;}
{L}({L}|{D})* {lexeme=yytext(); return ID;}
 ("(-"{D}+")")|{D}+ {lexeme=yytext(); return INT;}
. {return ERROR;}