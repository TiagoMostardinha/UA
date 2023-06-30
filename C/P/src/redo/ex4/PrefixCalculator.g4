grammar PrefixCalculator;

program: stat* EOF;

stat: expr? NEWLINE;

expr:
	op = ('*' | '/' | '+' | '-') expr expr	# ExprPrefix
	| NUM									# ExprNum;

NUM: [0-9]+ ('.' [0-9]+)?;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;