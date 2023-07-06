grammar BigIntCalc;

program: stat* EOF;

stat: (show | if_stat|assign) EOL;

show: 'show' expr;

assign: expr '-' '>' ID;

if_stat: 'if' expr 'then' stat* ('else' stat*)? 'fi';

expr:
	op = ('+' | '-') expr					# ExprUnary
	| '(' expr ')'							# ExprParent
	| expr op = ('*' | 'mod' | 'div') expr	# ExprMultDivMod
	| expr op = ('+' | '-') expr			# ExprAddSub
	| ID									# ExprID
	| INT									# ExprInt;

ID: [a-zA-Z][a-zA-Z0-9]*;
INT: [0-9]+;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' ~[\r\n]* -> skip;
