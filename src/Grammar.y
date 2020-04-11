{
module Grammar where
import Tokens
import Data.Char

{-# LANGUAGE BlockArguments #-} 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token

    begin { TokenBegin }
    program_token { TokenProgram }
    var { TokenVar }
    while { TokenWhile }
    do { TokenDo }
    end { TokenEnd }
    nl { TokenNewLine }

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
    string { TokenWriteString $$ }

%left '+' '-'
%left '*'

    %%

    program : program_token id ';' nl begin nl lines end '.'    { Program $2 $7 }
            | program_token id ';' nl begin nl lines end '.' nl { Program $2 $7 }
    
    lines : line lines              { $1:$2 }
         | line                     { [$1] }
    
    line : var_declaration                    { VarDec $1 }
         | while_expr                         { While $1}
         | id ':=' expr ';' nl                { Assign $1 $3}
         | writeln '(' write_args ')' ';' nl  { Write $3 }
         | readln '(' id ')' ';' nl           { Read $3 }

    var_declaration : var id_list   { VarDeclaration $2 }
    
    id_list: id ',' id_list         { $1:$3 } 
             | id ';' nl            { [$1] }

    while_expr : while log_expr do nl begin nl lines end ';' nl     { WhileLarge $2 $7 }
                | while log_expr do nl line                         { WhileShort $2 $5 }

    write_args : write_arg ',' write_args       { $1:$3 }
                | write_arg                     { [$1] }
                | {- empty -}                   { [] }

    write_arg : string                          { String $1 }
            | expr                              { Expr $1 }

    expr :  id                      { Var $1 }
            | int                   { Int $1 }
            | '(' expr ')'          { Brack $2 }
            | expr '+' expr         { Plus $1 $3 }
            | expr '-' expr         { Minus $1 $3 }
            | expr '*' expr         { Times $1 $3 }
    
    log_expr : expr '>=' expr       { GreaterEqThan $1 $3 }
            |  expr '<=' expr       { LessEqThan $1 $3 }
            |  expr '>' expr        { GreaterThan $1 $3 }
            |  expr '<' expr        { LessThan $1 $3 }
            |  expr '=' expr        { EqualThan $1 $3}
            |  expr '<>' expr       { DifferentThan $1 $3 }
    
{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Program
    = Program String [Line]
    deriving (Eq, Show)
    
data Line
    = VarDec VarDeclaration
    | While WhileExpr
    | Assign String Expr
    | Write [WriteArg]
    | Read String
    deriving (Eq, Show)

data VarDeclaration
    = VarDeclaration [String]
    deriving (Eq, Show)

data WhileExpr
    = WhileLarge LogExpr [Line]
    | WhileShort LogExpr Line
    deriving (Eq, Show)
    
data WriteArg
    = String String
    | Expr Expr
    deriving (Eq, Show) 
    
data Expr 
    = Var String
    | Int Int
    | Brack Expr
    | Plus Expr Expr
    | Minus Expr Expr
    | Times Expr Expr
    deriving (Eq, Show)

data LogExpr
    = GreaterEqThan Expr Expr
    | LessEqThan Expr Expr
    | GreaterThan Expr Expr
    | LessThan Expr Expr
    | EqualThan Expr Expr
    | DifferentThan Expr Expr
    deriving (Eq, Show)



}
