{
    module Grammar where 
    import PascalTokens
}

%name parser
%tokentype { Token }
%error ( parseError )

%token

    BEGIN { TokenBegin }
    PROGRAM { TokenProgram }
    VAR { TokenVar }
    WHILE { TokenWhile }
    DO { TokenDo }
    END { TokenEnd }

    \( {\s -> TokenLeftParenthesis}
    \) {\s -> TokenRightParenthesis}
    '+' { TokenPlus }
    '-' { TokenMinus }
    '*' { TokenProduct }
    '<' {\s -> TokenLessThan}
    '>' {\s -> TokenHigherThan}
    '<>' {\s -> TokenDifferentThan}
    '=' { TokenAssignation }
    '>=' { TokenHigherEqualThan }
    '<=' { TokenLessEqualThan}
    ',' { TokenComma }
    ';' { TokenSemicolon }
    int	 { TokenInt $$ }
    id { TokenIdentifier $$ }
    
    writeln { TokenWrite }
    readln { TokenRead }