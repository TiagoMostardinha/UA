grammar Hello;

program: stat* EOF;

stat: greetings | bye;

greetings: 'hello' ID+;
bye: 'bye' ID+;

ID: [a-zA-Z]+;
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;