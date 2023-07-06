grammar TestProc;

program: stat* EOF;

stat: (output | assign)? EOL;

output: 'output' expr;

assign: ID '=' expr;

expr:
	'(' expr ')'					# ExprParent
	| expr '|' '+' expr				# ExprConcat
	| expr '|' 'replace' expr expr	# ExprReplace
	| expr '|' 'grep' expr			# ExprGrep
	| ID							# ExprID
	| STRING						# ExprStr
	| NL							# ExprNewLine;

NL: 'nl' | 'Nl' | 'nL' | 'NL';
ID: [$][a-zA-Z0-9]+;
STRING: '"' .*? '"' | [a-zA-Z0-9]+;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' ~[\r\n]* -> skip;
ERROR: .;