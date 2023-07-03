grammar Questions;

program: question* EOF;

question: ID '(' STRING ')' '{' answer+ '}';

answer: STRING ':' POINTS EOL;

POINTS: [0-9]+;
STRING: '"' .+? '"';
ID: [a-zA-Z0-9.]+;
EOL: [;];
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;