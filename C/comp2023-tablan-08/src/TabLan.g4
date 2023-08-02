grammar TabLan;

program: statement* EOF;    

statement: declarationStatment  #statDecl
    | assignStatment            #statAssign
    | createTable               #statCreate
    | renameStatment            #statRename
    | addLineStatment           #statAddLine
    | printStatment             #statPrint
    | forStatment               #statFor
    | COMMENT                   #statComment
    ;

dataType: 'text'     #dataTypeText       
    | 'integer'      #dataTypeInt
    | 'real'         #dataTypeReal
    | ID             #dataTypeID
    ;


expression: ID                                              #exprID
    | ID '.' ID                                             #exprIDID
    | INT                                                   #exprInteger
    | REAL                                                  #exprReal
    | STRING                                                #exprString
    | '(' expression ')'                                    #exprParent
    | 'new' ( '(' expression ')' )?                         #exprNew
    | 'read' (terminalRead | fileRead)                      #exprRead
    | expression op=( '+' | '-' | '*' | '/' ) expression    #exprCalc
    | 'length' expression                                   #exprLength
    ;


// AUXILIAR TO STATMENTS
terminalRead: 'in' STRING?;

specialRead: 'using'( 'column' INT 'as' ID (',' 'column' INT 'as' ID )*
                    | STRING 'as' ID (',' STRING 'as' ID )*
                    );

fileRead: STRING specialRead?;

rename: '->' STRING;

center: 'center' '(' expression+ ')';

assignExpression: ':=' expression;

convertExpresion: dataType '(' expression ')';


// STATEMENTS
declarationStatment: ID ':' dataType ( '(' expression ')' | rename |  assignExpression)? ';';

assignStatment: ( ID ('.' ID)? | dataType ) assignExpression ';';

createTable: 'type' 'table' ID rename? '{' declarationStatment* '}' ';';

renameStatment: ID ( '.' ID )? rename ';' ;

addLineStatment: '[' ((expression|convertExpresion) ',' (expression|convertExpresion))? ']' '>>' ID ';';

printStatment: op=('println'|'print') expression(',' expression)* center? ';';

forStatment: 'for' ID 'in' ID 'do' statement* 'end' ';';



ID: [a-zA-Z_][a-zA-Z0-9_]*;
INT: [0-9]+;
REAL: [0-9]+'.'[0-9]+;
STRING: '"' ~[\r\n"]* '"';
COMMENT: '--' ~[\r\n]* -> skip;
WS: [ \t\r\n]+ -> skip;
