grammar SuffixCalculator;

program:    statement * EOF;        // Zero or more repetitions of stat

statement:       expression?   NEWLINE;  // Optative expression followed by 

expression: op=('*'|'/'|'+'|'-') expression expression      # operation 
            | NUMBER                                        # literal
            ;

NUMBER:     [0-9]+('.'[0-9]+)?;     //fixes point real number

NEWLINE:    '\r'? '\n';

WS:         [ \t]+ -> skip;