%{
#include <stdlib.h>
#include "tac.h"
#include "y.tab.h"
%}

%option yylineno

%%

"int"  {  return INT;  }

"char"  {  return CHAR;  }

"long"  { return LONG; }

"short" { return SHORT; }

"float" { return FLOAT; }

"print"  {  return PRINT;  }

"return"  {  return RETURN;  }

"continue"  {  return CONTINUE;  }

"if"  {  return IF;  }

"then"  {  return THEN;  }

"else"  {  return ELSE;  }

"fi"  {  return FI;  }

"while"  {  return WHILE;  }

"do"  {  return DO;  }

"done"  {  return DONE;  }

"for"  {  return FOR; }

[A-Za-z]([A-Za-z]|[0-9])*  {  
	yylval.string = strdup(yytext); 
	return IDENTIFIER;
}

[0-9]*	{
	yylval.string = strdup(yytext); 
	return INTEGER;
}

\"[^\"]*\"  {
	yylval.string = strdup(yytext); 
	return TEXT;
}

\'[^\']\'  {
	yylval.string = strdup(yytext); 
	return CHARACTER;
}

"=="  {  return EQ;  }

"!="  {  return NE;  }

"<="  {  return LE;  }

"<"  {  return LT;  }

">="  {  return GE;  }

">"  {  return GT;  }

"&&" {  return AND; }
"||" {  return OR;  }
"!"  {  return NOT; }

[ \t\r\n]|#.*

. 	{	return *yytext; }

%%

int yywrap()
{
	return 1;
}