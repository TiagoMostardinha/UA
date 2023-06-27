grammar FracLang;

program: stat* EOF;

stat:   assign #assignStat
        | display #displayStat
        ; 

assign: ID '<' '=' expr+ ';';
display: 'display' expr+ ';';
expr: 
    op=('+'|'-') expr   #unitaryExpr
    | expr op=('*'|':') expr #multdivExpr
    | expr op=('+'|'-') expr #addminusExpr
    | '(' expr ')'  #parathensisExpr
    | INT #intExpr
    | frac #fracExpr
    | ID #idExpr
    ;


frac: INT '/' INT;


INT: [0-9]+;
ID: [a-zA-Z]+;
WS: [ \t\r\n]+ -> skip;
COMMENT: '--' .*? '\n' -> skip;
ERROR: .;