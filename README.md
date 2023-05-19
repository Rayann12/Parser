First enter in the terminal the following command:

gedit Lex_Part.l

Save the Lex_Part.l file in the opened file in file editor.

Second enter in the terminal the following command:

gedit Yacc_Part.y

Save the Lex_Part.l file in the opened file in file editor.

Lastly do the following 4 commands to execute the parser:

lex Lex_Part.l
yacc -d Yacc_Part.y
gcc lex.yy.c y.tab.c -ll
./a.out

At this point your code should be good and running
