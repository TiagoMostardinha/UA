grammar BigInt;

program: stat* EOF;

stat: (show | assign|if_stat) EOL;

show: 'show' expr;
if_stat: 'if' '('expr')' 'then' stat* ('else' stat*)? 'fi';

assign: expr '-' '>' ID;



expr:
	op = ('-' | '+') expr					# ExprUnary
	| '(' expr ')'							# ExprParent
	| expr op = ('*' | 'div' | 'mod') expr	# ExprMultDivMod
	| expr op = ('+' | '-') expr			# ExprAddSub
	| INT									# ExprInt
	| ID									# ExprID;

ID: [a-zA-Z][a-zA-Z0-9]*;
INT: [0-9]+;
EOL: [;];
WS: [ \r\t\n]+ -> skip;
COMMENT: '#' ~[\r\n]* -> skip;
ERROR: .;