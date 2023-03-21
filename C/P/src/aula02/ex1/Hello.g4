grammar Hello;

top:(greeting | bye)+;
greeting : 'hello' ID+;
bye : 'bye' ID+;

ID : [a-z]+;
WS : [ \t\r\n]+ -> skip;