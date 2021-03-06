{
module Tokens where
}

%wrapper "basic"

$digit = 0-9			  -- digits
$alpha = [a-zA-Z]		-- alphabetic characters (ñ not included)
$writeArgs = [$digit $alpha \ \_ \- \; \: \. \= \> \< \+ - \* \( \)]

tokens :-
    \n+                            {\s -> TokenNewLine}
    $white                        ;
    "BEGIN"                       {\s -> TokenBegin}
    "PROGRAM"                     {\s -> TokenProgram}
    "VAR"                         {\s -> TokenVar}
    "WHILE"                       {\s -> TokenWhile}
    "DO"                          {\s -> TokenDo}
    "END"                         {\s -> TokenEnd}
    "IF"                          {\s -> TokenIf}
    "THEN"                        {\s -> TokenThen}
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
    \" $writeArgs* \"               { \s -> TokenWriteString (read s) }
    

{


data Token = 

  TokenNewLine | 
  TokenBegin | 
  TokenProgram |
  TokenVar | 
  TokenWhile | 
  TokenDo | 
  TokenEnd |
  TokenIf |
  TokenThen |
  TokenElse | 
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
  TokenInt Integer |
  TokenIdentifier String |
  TokenRead | 
  TokenWrite |
  TokenWriteString String
  deriving (Eq,Show)

scanTokens = alexScanTokens
}