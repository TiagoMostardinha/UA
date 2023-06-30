grammar FracCalculator;

program: stat* EOF;

stat: (print | assign)? EOL;

print: 'print' expr;
assign: expr '-' '>' ID;

expr:
	op = ('-' | '+') expr			# ExprUnary
	| '(' expr ')'					# ExprParent
	| expr op = ('*' | ':') expr	# ExprMulDiv
	| expr op = ('+' | '-') expr	# ExprAddSub
	| expr '^' expr					# ExprPower
	| 'reduce' expr					# ExprReduce
	| FRAC							# ExprFrac
	| ID							# ExprID;

ID: [a-zA-Z]+;
FRAC: [0-9]+ ('/' [0-9]+)?;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '/' '/' .*? '\n' -> skip;

