module AbstractSyntax extend ConcreteSyntax;

data Expression 
    = \num(int val)
    | mul(Expression lhs, Expression  rhs)
    | add(Expression lhs, Expression  rhs)
    | \mod(Expression lhs, Expression  rhs)
    | div(Expression lhs, Expression  rhs)
    | sub(Expression lhs, Expression  rhs)

    ;

int eval(\num(int n)) = n;                         
int eval(mul(Expression lhs, Expression rhs)) = eval(lhs) * eval(rhs); 
int eval(add(Expression lhs, Expression rhs)) = eval(lhs) + eval(rhs); 
int eval(sub(Expression lhs, Expression rhs)) = eval(lhs) - eval(rhs);
int eval(div(Expression lhs, Expression rhs)) = eval(lhs) / eval(rhs);
int eval(\mod(Expression lhs, Expression rhs)) = eval(lhs) % eval(rhs);