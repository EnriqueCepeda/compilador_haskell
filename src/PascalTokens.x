{
module Main where
}

%wrapper "basic"

$digit = 0-9			-- digits
$alpha = [a-zA-Z]		-- alphabetic characters (ñ not included)

tokens :-
    $white+ { \s -> TokenWhite}
    "BEGIN" { \s -> TokenBegin}
    "PROGRAM" { \s -> TokenProgram}
    "INPUT" {\s -> TokenInput}
    "OUTPUT" {\s -> TokenOutput}
    "VAR" {\s -> TokenVar}
    "WHILE" {\s -> TokenWhile}
    "DO" {\s -> TokenDo}
    "END" {\s -> TokenEnd}

    \( {\s -> TokenLeftParenthesis}
    \) {\s -> TokenRightParenthesis}
    \+ {\s -> TokenPlus}
    \- {\s -> TokenMinus}
    \* {\s -> TokenProduct}
    \/ {\s -> TokenDivide}
    \< {\s -> TokenLessThan}
    \> {\s -> TokenHigherThan}
    \<> {\s -> TokenDifferentThan}
    \= {\s -> TokenEqualThan}
    \>= {\s -> TokenHigherEqualThan}
    \<= {\s -> TokenLessEqualThan}
    \, {\s -> TokenComma}
    \; {\s -> TokenSemicolon}
    \. {\s -> TokenDot}
    $digit+	 { \s -> TokenInt (read s) }
    $alpha [$alpha $digit \_ ]*		{ \s -> TokenIdentifier s }
    
    writeln {\s -> TokenWrite}
    readln {\s -> TokenRead}
{


data Token = 

  TokenWhite | 
  TokenBegin | 
  TokenProgram |
  TokenInput | 
  TokenOutput | 
  TokenVar | 
  TokenWhile | 
  TokenDo | 
  TokenEnd | 
  TokenFunction |
  TokenLeftParenthesis |
  TokenRightParenthesis |
  TokenPlus |
  TokenMinus |
  TokenProduct |
  TokenDivide |
  TokenLessThan |
  TokenHigherThan |
  TokenDifferentThan |
  TokenEqualThan |
  TokenHigherEqualThan |
  TokenLessEqualThan |
  TokenComma |
  TokenSemicolon |
  TokenDot |
  TokenInt Int	|
  TokenRead | 
  TokenIdentifier String |
  TokenWrite 
  deriving (Eq,Show)

main = do
    s <- getContents
    print (alexScanTokens s)
}