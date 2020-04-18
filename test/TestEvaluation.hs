{-# LANGUAGE TemplateHaskell #-}

module TestEvaluation where

import           Evaluation
import           Grammar
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           Tokens
import qualified Data.Map as Map
import qualified Control.Exception as Exc


evalFile file = do 
    program <- readFile ("test/resources/testEvaluation/" ++ file)    
    let tokens = scanTokens program
    let grammar = parser tokens
    dictionary <- eval grammar
    return dictionary

testExpression = HU.testCase "An arithmetic expression evaluated according to precendes of operators" $ do
    dictionary <- evalFile "testExpression.txt"
    assertEqual "It should return 276" dictionary (Map.fromList [("result",Just 276)])

testWhile = HU.testCase "A while expression must stop when the logic expression is not true" $ do
    dictionary <- evalFile "testWhile.txt"
    assertEqual "It should return i = 0 and inc = 5" dictionary (Map.fromList [("i",Just 0),("inc",Just 5)])

testIf = HU.testCase "An if expression must execute only if the logic expression is true" $ do
    dictionary <- evalFile "testIf.txt"
    assertEqual "It should return a = 10 and b = 20" dictionary (Map.fromList [("a",Just 10),("b",Just 10)])

evalLineTests = testGroup "EvalLine tests" [testExpression, testWhile, testIf]
evaluationTests = testGroup "Evaluation method tests" [evalLineTests]

