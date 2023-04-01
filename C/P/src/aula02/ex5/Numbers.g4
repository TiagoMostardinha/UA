grammar Numbers;

top: mapping * EOF;

mapping:    NUMBER '-' WORD;

NUMBER: [0-9]+;
WORD: [a-z]+;

WS: [ \t\n\r]+ -> skip;