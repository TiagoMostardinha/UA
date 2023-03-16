grammar Hello;
top: (greetings | bye)+;
greetings   : 'hello' ID    ;
ID  :   [a-zA-Z]+  ;
WS  :   [   \t\r\n]+   ->  skip    ;