grammar FracLang;

program: stat* EOF;

stat: expr EOL;

expr:
	'display' expr		# ExprDisplay
	| ID '<' '=' expr	# ExprAssign
	| ID				# ExprID
	| FRAC				# ExprFrac;

FRAC: [0-9]+ ('/' [0-9]+)?;
ID: [a-z]+;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '-' .*? '\n' -> skip;
ERROR: .;
