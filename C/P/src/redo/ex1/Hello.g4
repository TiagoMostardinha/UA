grammar Hello;

program: stat* EOF;

stat: greetings | bye;

greetings: 'hello' ID;
bye: 'bye' ID;

ID: [a-zA-Z]+;
WS: [ \t\r\n]+ -> skip;
COMMENT: '#' .*? '\n' -> skip;

//  1. BUILD:   antlr4-build
//      1a) TEST: antlr4-test Hello stat
//  2. CLEAN:   antlr4-clean
//  3. VISITOR: antlr4-visitor <grammar> <visitor-name> <visitor-type>
//  4. MAIN:    antlr4-main -i -v <visitor.java>
//  5. BUILD:   antlr4-build
//  6. RUN:     antlr4-run