grammar Calculator;

program: stat* EOF;
stat: expr? NEWLINE;
expr: op=('+'|'-') expr                 # ExprUnary
	|expr op = ('*' | '/' | '%') expr	# ExprMultDivMod
	| expr op = ('+' | '-') expr		# ExprAddSub
	| INT								# ExprInteger
	| '(' expr ')'						# ExprParent;

INT: [0-9]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;