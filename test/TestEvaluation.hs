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
 
--Doesnt work at the moment
testAssignation = HU.testCase "An assignation of a non declared variable return an error" do
    Exc.catch (dictionary <- evalFile "testExpression.txt") handler
        where handler error = assertBool "Should throw an error" True

evalLineTests = testGroup "EvalLine tests" [testExpression]
evaluationTests = testGroup "Evaluation method tests" [evalLineTests]

