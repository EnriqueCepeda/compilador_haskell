{-# LANGUAGE TemplateHaskell #-}

module TestGrammar where

import           Grammar
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           Tokens



getsyntax filepath =  do
    fileContent <- readFile filepath
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    return syntax

testWrite = HU.testCase "writeln arguments (integer, string, variable, and add expresion) recognized" $ do
    expression <- getsyntax "test/resources/testGrammar/testWrite.txt"
    let expressionExpected = Program "Write" [] [Write [Expr (Int 5),String "HOLA",Expr (Var "var1"),Expr (Plus (Int 1) (Int 1))]]
    assertEqual "Int, string, variable and arithmetic arguments works inside a write expression" expressionExpected expression

testWriteExpr = HU.testCase "writeln arguments (multiply expression, minus expression, and bracket expression) recognized" $ do
    expression <- getsyntax "test/resources/testGrammar/testWriteExpr.txt"
    let expressionExpected = Program "WriteExpr" [] [Write [Expr (Minus (Var "var1") (Var "var2")),Expr (Multiply (Var "var1") (Var "var2")),Expr (Brack (Brack (Var "var1")))]]
    assertEqual "Int, string, variable and arithmetic arguments works inside a write expression" expressionExpected expression

testWhileShort = HU.testCase "WhileShort and While logic expressions correctly recognized" $ do
    expression <- getsyntax "test/resources/testGrammar/testWhileShort.txt"
    let expressionExpected = Program "WhileShort" [] [WhileShort (LessThan (Int 5) (Int 5)) (WhileShort (LessEqThan (Int 5) (Int 5)) (WhileShort (GreaterEqThan (Int 5) (Int 5)) (WhileShort (LessThan (Int 5) (Int 5)) (WhileShort (DifferentThan (Int 5) (Int 5)) (WhileShort (EqualThan (Int 5) (Int 5)) (Assign "var" (Int 1)))))))]
    assertEqual "All logic expressions works inside a whileshort expression" expressionExpected expression

testWhileLarge = HU.testCase "WhileLarge correctly recognized" $ do
    expression <- getsyntax "test/resources/testGrammar/testWhileLarge.txt"
    let expressionExpected = Program "WhileLarge" [] [WhileLarge (LessThan (Int 5) (Int 5)) [Assign "var" (Int 1)]]
    assertEqual "WhileLarge expression is recognized " expressionExpected expression

testAssign = HU.testCase "Assign expression recognized" $ do
    expression <- getsyntax "test/resources/testGrammar/testAssign.txt"
    let expressionExpected = Program "testAssign" [] [Assign "var" (Int 1)]
    assertEqual "WhileLarge expression is recognized " expressionExpected expression

testRead = HU.testCase "Read expression recognize one identifier inside" $ do
    expression <- getsyntax "test/resources/testGrammar/testRead.txt"
    let expressionExpected = Program "Read" ["var1"] [Read "var1"]
    assertEqual "Read expression is recognized " expressionExpected expression

sintaxTests = testGroup "Sintax Analyzer tests"
            [testWrite, testWriteExpr, testWhileShort, testWhileLarge,
            testAssign, testRead]
