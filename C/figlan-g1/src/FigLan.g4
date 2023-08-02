grammar FigLan;

program: stat* EOF;

stat: (
		(
			declare
			| assign
			| show
			| hide
			| print
			| println
			| pause
		)? EOL
	)
	| loop;

declare:
	type ID (',' ID)*	# DeclareStruct
	| type ID '=' expr	# DeclareAssignStruct;

assign returns[String var = null]:
	ID '=' expr						# AssignStruct
	| ID op = ('+' | '-') '=' expr	# AssignAddSub;

show:
	'show' 'all'			# showAll
	| 'show' (ID (',' ID)*)	# showID
	| 'show' expr			# showConstructor;

hide: 'hide' 'all' # hideAll | 'hide' (ID (',' ID)*) # hideID;

pause: 'pause' expr;

println: 'println' expr (',' expr)*;

print: 'print' expr (',' expr)*;

loop: 'for' assign 'to' expr 'do' stat* 'end';

expr
	returns[String var = null]:
	'new' 'circle' '(' point ',' expr ')'	# ConstructCircle
	| point '|' expr						# ConstructCircle
	| 'new' 'line' '(' point ',' point ')'	# ConstructLine
	| point '-' '-' point					# ConstructLine
	| '(' expr ')'							# ExprParent
	| op = ('+' | '-') expr					# ExprSign
	| e1 = expr op = ('+' | '-') e2 = expr	# ExprAddSub
	| e1 = expr op = ('*' | '/') e2 = expr	# ExprMultDiv
	| 'read' expr							# ExprRead
	| type '(' expr ')'						# ExprConvert
	| ID									# ExprID
	| REAL									# ExprReal
	| INT									# ExprInt
	| TEXT									# ExprText
	| point									# ConstructPoint;

point: '[' expr ',' expr ']' # PointStructure | ID # PointID;

type:
	'point'		# typePoint
	| 'line'	# typeLine
	| 'circle'	# typeCircle
	| 'figure'	# typeFigure
	| 'integer'	# typeInteger
	| 'real'	# typeReal
	| 'text'	# typeText;

ID: [a-z][a-z0-9]*;
INT: [-+]? [0-9]+;
REAL: [-+]? [0-9]+ ('.' [0-9]+)?;
TEXT: '"' .*? '"';
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' ~[\r\n]* -> skip;
ERROR: .;

