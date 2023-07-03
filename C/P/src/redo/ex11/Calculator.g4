grammar Calculator;

program: stat* EOF;

stat: expr;

expr:
	'(' expr ')'				# ExprParent
	| e1 = expr '\\' e2 = expr	# ExprSubtract
	| e1 = expr '&' e2 = expr	# ExprIntercept
	| e1 = expr '+' e2 = expr	# ExprUnion
	| ID '=' expr				# ExprAssign
	| ID						# ExprID
	| set						# ExprSet;

set: '{' elem (',' elem)* '}';
elem: NUM | WORD;

ID: [A-Z]+;
NUM: [-+]? [0-9]+;
WORD: [a-z]+;
WS: [ \t\r\n]+ -> skip;
COMMENT: '-' '-' .*? '\n' -> skip;
ERROR: .;
