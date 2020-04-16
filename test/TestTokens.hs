
{-# LANGUAGE TemplateHaskell #-}

module TestTokens where
import           Data.Char
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           Tokens

testNewLine = HU.testCase "New line recognized" (
    assertEqual "New line should return TokenNewLine" (scanTokens "\n") [TokenNewLine])

testBegin = HU.testCase "Begin recognized" (
    assertEqual "Begin should return TokenBegin" (scanTokens "BEGIN") [TokenBegin])

testProgram = HU.testCase "Program recognized" (
    assertEqual "Program should return TokenProgram" (scanTokens "PROGRAM") [TokenProgram])

testVar = HU.testCase "Var recognized" (
    assertEqual "Var should return TokenVar" (scanTokens "VAR") [TokenVar])

testWhile = HU.testCase "While recognized" (
    assertEqual "While should return TokenWhile" (scanTokens "WHILE") [TokenWhile])

testDo = HU.testCase "Do recognized" (
    assertEqual "Do should return TokenDo" (scanTokens "DO") [TokenDo])

testEnd = HU.testCase "End recognized" (
    assertEqual "End should return TokenEnd" (scanTokens "END") [TokenEnd])

testWriteLine = HU.testCase "Writeln recognized" (
    assertEqual "Writeln should return TokenWrite" (scanTokens "writeln") [TokenWrite])

testReadLine = HU.testCase "Readln recognized" (
    assertEqual "Readln should return TokenRead" (scanTokens "readln") [TokenRead])

testLeftParenthesis = HU.testCase "Left parenthesis recognized" $
    assertEqual " '(' should return TokenLeftParenthesis" (scanTokens "(") [TokenLeftParenthesis]

testRightParenthesis = HU.testCase "Right parenthesis recognized" $
    assertEqual " ')' should return TokenRightParenthesis" (scanTokens ")") [TokenRightParenthesis]

testPlusSign = HU.testCase "Plus sign recognized" $
    assertEqual " + should return TokenPlus" (scanTokens "+") [TokenPlus]

testMinusSign = HU.testCase "Minus sign recognized" $
    assertEqual " - should return TokenMinus" (scanTokens "-") [TokenMinus]

testProductSign = HU.testCase "Product sign recognized" $
    assertEqual " * should return TokenProduct" (scanTokens "*") [TokenProduct]

testLessThan = HU.testCase "LessThan sign recognized" $
    assertEqual " < should return TokenLessThan" (scanTokens "<") [TokenLessThan]

testHigherThan = HU.testCase "HigherThan sign recognized" $
    assertEqual " > should return TokenHigherThan" (scanTokens ">") [TokenHigherThan]

testDifferentThan = HU.testCase "DifferentThan sign recognized" $
    assertEqual " <> should return DifferentThan" (scanTokens "<>") [TokenDifferentThan]

testAssignation = HU.testCase "Assignation element recognized" (
    assertEqual " := should return TokenAssignation" (scanTokens ":=") [TokenAssignation])

testEqualThan = HU.testCase "EqualThan sign recognized" (
    assertEqual " = should return TokenEqualThan" (scanTokens "=") [TokenEqualThan])

testHigherEqualThan = HU.testCase "HigherEqualThan sign recognized" (
    assertEqual " >= should return TokenHigherEqualThan" (scanTokens ">=") [TokenHigherEqualThan])

testLessEqualThan = HU.testCase "LessEqualThan sign recognized" (
    assertEqual " <= should return TokenLessEqualThan" (scanTokens "<=") [TokenLessEqualThan])

testComma = HU.testCase "Comma element recognized" (
    assertEqual " , should return TokenComma" (scanTokens ",") [TokenComma])

testSemicolon = HU.testCase "Semicolon element recognized" (
    assertEqual " ; should return TokenSemicolon" (scanTokens ";") [TokenSemicolon])

testPoint = HU.testCase "Point element recognized" (
    assertEqual " . should return TokenPoint" (scanTokens ".") [TokenPoint])

testInteger = HU.testCase "Integer element recognized" $
    assertEqual "55 should return TokenInt" (scanTokens "55") [TokenInt 55]

testIdentifier = HU.testCase "Identifier recognized" $
    assertEqual "num should return TokenIdentifier" (scanTokens "num") [TokenIdentifier "num"]

testFailingIdentifier = HU.testCase "Identifier starting with a number fails" $
    assertBool "5identifier should return Failure" ((scanTokens "5identifier") /= [TokenIdentifier "5identifier"])

testWriteString = HU.testCase "Write string argument recognized" $
    assertEqual " \'Hello World\' should return TokenWriteString 'Hello World' " (scanTokens "\"Hello World\"") [TokenWriteString "Hello World"]


lexicalTests :: TestTree
lexicalTests = testGroup "Lexical Analyzer tests"
    [testNewLine, testBegin, testProgram, testVar, testWhile, testDo,
    testEnd, testWriteLine, testReadLine, testLeftParenthesis, testRightParenthesis,
    testPlusSign, testMinusSign, testProductSign, testLessThan, testHigherThan,
    testDifferentThan, testAssignation, testEqualThan, testHigherEqualThan,
    testLessEqualThan, testComma, testSemicolon, testPoint, testInteger, testIdentifier,
    testFailingIdentifier, testWriteString]

