module ConcreteSyntax

lexical IntegerLiteral = [0-9]+ ;

start syntax Expression
    = \num: IntegerLiteral
    | bracket "(" Expression ")"
    > left mul: Expression "*" Expression
    > left add: Expression "+" Expression
    > left \mod: Expression "%" Expression
    > left sub: Expression "-" Expression
    > left div: Expression "/" Expression
    ;

layout Whitespace
    = [\ \t\n]*;