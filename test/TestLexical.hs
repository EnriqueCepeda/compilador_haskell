
module TestLexical where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens

testPoint = HU.testCase "Point element recognized" (
    assertEqual "Point returns TokenPoint" (scanTokens ".") [TokenPoint])
testInteger = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]
testReservedWord = HU.testCase "Reserved word recognized" (
    assertEqual "Begin returns TokenBegin" (scanTokens "BEGIN") [TokenBegin])
testNewLine = HU.testCase "New line recognized" (
    assertEqual "New line returns TokenNewLine" (scanTokens "\n") [TokenNewLine])
testIdentifier = HU.testCase "Identifier recognized" $
    assertEqual "Identifier returns TokenIdentifier" (scanTokens "num") [TokenIdentifier "num"]
testWriteString = HU.testCase "Write string argument recognized" $
    assertEqual "Write string argument returns TokenWriteString" (scanTokens "\"Hello world\"") [TokenWriteString "Hello World"]
testAssignation = HU.testCase "Assignation element recognized" (
    assertEqual "Assignation element returns TokenAssignation" (scanTokens ":=") [TokenAssignation])
testOperand = HU.testCase "Sum element recognized" (
    assertEqual = HU.testCase "Sum element returns TokenPlus" (scanTokens "+") [TokenPlus])
testComparation = HU.testCase "Less or equal element recognized" (
    assertEqual = HU.testCase "Less or equal returns TokenLessEqualThan" (scanTokens "<=") [TokenLessEqualThan])
testComma = HU.testCase "Comma element recognized" (
    assertEqual = HU.testCase "Comma element returns TokenComma" (scanTokens ",") [TokenComma])
testSemicolon = HU.testCase "Semicolon element recognized" (
    assertEqual = HU.testCase "Semicolon element returns TokenSemicolon" (scanTokens ";") [TokenSemicolon])

lexicalTests :: TestTree
lexicalTests = testGroup "Lexical Analyzer tests" [testPoint, testInteger]

