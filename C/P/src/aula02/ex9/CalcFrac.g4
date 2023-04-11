grammar CalcFrac;

program:
    stat * EOF
    ;

stat:
        (print | assignment)? NEWLINE
    ;

print:
        'print' expr
    ;

assignment:
    expr '->' ID
    ;

expr:
		'reduce' expr				#ExprReduce
	|	op=('+'|'-') expr		    #ExprPlusMinus
	|	expr op=('*'|':') expr		#ExprMultDiv
	|	expr op=('+'|'-') expr		#ExprAddSub
	|	Integer '/' Integer			#Frac
	|	'(' expr ')'				#ExprParent
	|	ID							#ExprID
	;

ID: [a-zA-Z_]+;
Integer: [0-9]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;