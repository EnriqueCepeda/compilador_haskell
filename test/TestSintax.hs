module TestSintax where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens 
import Grammar

testInt = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]

let tokensWrite = [TokenProgram, TokenIdentifier "HelloWorld", TokenSemicolon, TokenNewLine, TokenBegin, TokenNewLine, TokenWrite, TokenLeftParenthesis, TokenWriteString "Hello World", TokenRightParenthesis, TokenSemicolon, TokenNewLine, TokenEnd, TokenPoint, TokenNewLine]
let grammarWrite = [Program "HelloWorld" (Write (String "Hello World"))]
testWrite = HU.testCase "Write Hello World program recognized" (
    assertEqual "Write Hello World program correct" (parser tokens) grammar
)

let tokensDeclaration = [TokenProgram, TokenIdentifier "VarDeclaration", TokenSemicolon, TokenNewLine, TokenBegin, TokenNewLine, TokenVar, TokenIdentifier "var1", TokenComma, TokenIdentifier "var2", TokenSemicolon, TokenNewLine, TokenEnd, TokenPoint, TokenNewLine]
let grammarWrite = [Program "VarDeclaration" (VarDec [String "var1", String "var2"])]
testWrite = HU.testCase "Write Hello World program recognized" (
    assertEqual "Write Hello World program correct" (parser tokens) grammar
)



testGrammar :: TestTree
testGrammar = testGroup "Sintax Analyzer tests" [testInt]