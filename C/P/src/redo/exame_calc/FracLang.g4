grammar FracLang;

program: stat* EOF;

stat: (display | assign)? EOL;

expr:
	op = ('+' | '-') expr			# ExprUnary
	| '(' expr ')'					# ExprParent
	| expr op = ('*' | ':') expr	# ExprMulDiv
	| expr op = ('+' | '-') expr	# ExprAddSub
	| 'read' STRING					# ExprRead
	| 'reduce' expr					# ExprReduce
	| ID							# ExprID
	| FRAC							# ExprFrac;

display: 'display' expr;
assign: ID '<' '=' expr;

FRAC: [0-9]+ ('/' [0-9]+)?;
STRING: '"' .*? '"';
ID: [a-z]+;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '-' '-' .*? '\n' -> skip;
ERROR: .;
