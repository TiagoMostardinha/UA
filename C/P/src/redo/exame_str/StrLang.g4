grammar StrLang;

program: stat* EOF;

stat: (assign | print)? EOL;

assign: ID ':' expr;
print: 'print' expr;

expr:
	e1 = expr '/' e2 = expr '/' e3 = expr	# ExprSubs
	| '(' expr ')'							# ExprParent
	| 'trim' expr							# ExprTrim
	| e1 = expr op = ('+' | '-') e2 = expr	# ExprAddRem
	| 'input' '(' expr ')'					# ExprInput
	| ID									# ExprID
	| STRING								# ExprStr;

ID: [a-z][a-z0-9]*;
STRING: '"' .*? '"';
EOL: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '//' ~[\r\n]* -> skip;
ERROR: .;