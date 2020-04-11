module TestSintax where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens 
import Grammar

testInt = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]

let tokens = [TokenProgram, TokenIdentifier "HelloWorld", TokenSemicolon, TokenNewLine, TokenBegin, TokenNewLine, TokenWrite, TokenLeftParenthesis, TokenWriteString "Hello World", TokenRightParenthesis, TokenSemicolon, TokenNewLine, TokenEnd, TokenPoint, TokenNewLine]
let grammar = [Program "HelloWorld" (Write (String "Hello World"))]
testWrite = HU.testCase "Write Hello World program recognized" (
    assertEqual "Write Hello World program correct" (parser tokens) grammar
)

testGrammar :: TestTree
testGrammar = testGroup "Sintax Analyzer tests" [testInt]