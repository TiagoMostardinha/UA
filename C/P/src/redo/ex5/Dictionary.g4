grammar Dictionary;
program: text* EOF;

text: line+ NEWLINE;

line: INT '-' WORD;

INT: [0-9]+;
WORD: [a-zA-Z]+;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;