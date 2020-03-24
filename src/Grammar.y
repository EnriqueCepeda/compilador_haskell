{
    module Grammar where 
    import Tokens
}

%name parser 
%tokentype { Token }
%error ( parseError )

%token

    begin { TokenBegin }
    program_token { TokenProgram }
    var { TokenVar }
    while { TokenWhile }
    do { TokenDo }
    end { TokenEnd }
    nl { TokenNewline }

    '(' { TokenLeftParenthesis  }
    ')' { TokenRightParenthesis }
    '+' { TokenPlus }
    '-' { TokenMinus }
    '*' { TokenProduct }
    '<' { TokenLessThan }
    '>' { TokenHigherThan }
    '<>' { TokenDifferentThan }
    ':=' { TokenAssignation }
    '=' { TokenEqualThan }
    '>=' { TokenHigherEqualThan }
    '<=' { TokenLessEqualThan } 
    ',' { TokenComma }
    ';' { TokenSemicolon }
    '.' { TokenPoint }
    int	 { TokenInt $$ }
    id { TokenIdentifier $$ }
    
    writeln { TokenWrite }
    readln { TokenRead }

%left '+' '-'
%left '*' '/'

    %%

    program : program_token id ';' nl begin nl lines end '.' { Program $2 $7 }
    
    lines : line lines          { Line }
         | line
    
    line : var_declaration
         | while_expr
         | id ':=' expr ';' nl

    var_declaration : var id_list 
    
    id_list: id ';' nl 
             | id ',' id_list


    while_expr : while log_expr do nl begin nl lines end ';' ln
                | while log_expr do nl line
    
    expr : term '+' term
            | term '-' term
            | term '*' term
            | term '/' term
            | term
    
    term : id 
        | int
        | '(' expr ')'  
    
    log_expr : expr '>=' expr
            |  expr '<=' expr
            |  expr '>' expr
            |  expr '<' expr
            |  expr '=' expr
            |  expr '<>' expr
    
{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Program
    = Program String Lines
    
}
