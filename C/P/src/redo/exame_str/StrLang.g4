grammar StrLang;

program: stat* EOF;

stat: (assign | print)? EOL;

assign: ID ':' expr;
print: 'print' expr;

expr:
	'input' '(' expr ')'	# ExprInput
	| ID					# ExprID
	| STRING				# ExprStr;

ID: [a-z][a-z0-9]*;
STRING: '"' .*? '"';
EOL: '\r'? '\n' ;
WS: [ \t]+  -> skip;
COMMENT : '//' ~[\r\n]* -> skip;
ERROR: .;