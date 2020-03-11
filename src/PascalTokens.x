{
module PascalTokens where
}

%wrapper "basic"

$digit = 0-9			-- digits
$alpha = [a-zA-Z]		-- alphabetic characters (ñ not included)

tokens :-
    $white+ { \s -> TokenWhite}
    "BEGIN" { \s -> TokenBegin}
    "PROGRAM" { \s -> TokenProgram}
    "VAR" {\s -> TokenVar}
    "WHILE" {\s -> TokenWhile}
    "DO" {\s -> TokenDo}
    "END" {\s -> TokenEnd}

    \( {\s -> TokenLeftParenthesis}
    \) {\s -> TokenRightParenthesis}
    \+ {\s -> TokenPlus}
    \- {\s -> TokenMinus}
    \* {\s -> TokenProduct}
    \< {\s -> TokenLessThan}
    \> {\s -> TokenHigherThan}
    \<> {\s -> TokenDifferentThan}
    \= {\s -> TokenAssignation}
    \>= {\s -> TokenHigherEqualThan}
    \<= {\s -> TokenLessEqualThan}
    \, {\s -> TokenComma}
    \; {\s -> TokenSemicolon}
    $digit+	 { \s -> TokenInt (read s) }
    $alpha [$alpha $digit \_ ]*		{ \s -> TokenIdentifier s }
    
    writeln {\s -> TokenWrite}
    readln {\s -> TokenRead}
{


data Token = 

  TokenWhite | 
  TokenBegin | 
  TokenProgram |
  TokenVar | 
  TokenWhile | 
  TokenDo | 
  TokenEnd | 
  TokenLeftParenthesis |
  TokenRightParenthesis |
  TokenPlus |
  TokenMinus |
  TokenProduct |
  TokenLessThan |
  TokenHigherThan |
  TokenDifferentThan |
  TokenAssignation |
  TokenHigherEqualThan |
  TokenLessEqualThan |
  TokenComma |
  TokenSemicolon |
  TokenInt Int	|
  TokenIdentifier String |
  TokenRead | 
  TokenWrite 
  deriving (Eq,Show)

scanTokens = alexScanTokens
}