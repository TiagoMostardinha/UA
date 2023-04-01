grammar Calculator;

program: (stat? NEWLINE) * EOF;

stat: expr                  # StatExpr
    | assignment            # StatAssign
    ;

assignment: ID '=' expr;