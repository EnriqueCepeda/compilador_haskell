{
module Main where
}

%wrapper "basic"

$digit = 0-9			  -- digits
$alpha = [a-zA-Z]		-- alphabetic characters (ñ not included)

tokens :-
    \n+                            {\s -> TokenNewline}
    $white                        ;
    "BEGIN"                       {\s -> TokenBegin}
    "PROGRAM"                     {\s -> TokenProgram}
    "VAR"                         {\s -> TokenVar}
    "WHILE"                       {\s -> TokenWhile}
    "DO"                          {\s -> TokenDo}
    "END"                         {\s -> TokenEnd}
    "writeln"                     {\s -> TokenWrite}
    "readln"                      {\s -> TokenRead}

    \(                            {\s -> TokenLeftParenthesis}
    \)                            {\s -> TokenRightParenthesis}
    \+                            {\s -> TokenPlus}
    \-                            {\s -> TokenMinus}
    \*                            {\s -> TokenProduct}
    \<                            {\s -> TokenLessThan}
    \>                            {\s -> TokenHigherThan}
    \<>                           {\s -> TokenDifferentThan}
    \:=                           {\s -> TokenAssignation}
    \=                            {\s -> TokenEqualThan}
    \>=                           {\s -> TokenHigherEqualThan}
    \<=                           {\s -> TokenLessEqualThan}
    \,                            {\s -> TokenComma}
    \;                            {\s -> TokenSemicolon}
    \.                            {\s -> TokenPoint}
    $digit+	                      { \s -> TokenInt (read s) }
    $alpha [$alpha $digit \_ ]*		{ \s -> TokenIdentifier s }
    

{


data Token = 

  TokenNewline | 
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
  TokenEqualThan |
  TokenHigherEqualThan |
  TokenLessEqualThan |
  TokenComma |
  TokenSemicolon |
  TokenPoint |
  TokenInt Int	|
  TokenIdentifier String |
  TokenRead | 
  TokenWrite 
  deriving (Eq,Show)

main = do
  s <- getContents
  print( alexScanTokens s)
}