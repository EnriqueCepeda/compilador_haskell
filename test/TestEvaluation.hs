{-# LANGUAGE TemplateHaskell #-}

module TestEvaluation where

import           Evaluation
import           Grammar
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           Tokens
import qualified Data.Map as Map




testExpression = HU.testCase "An arithmetic expression must the result according precendes of the operators" $ do
    program <- readFile "test/resources/testEvaluation/testExpression.txt"
    let tokens = scanTokens program
    let grammar = parser tokens
    dictionary <- eval grammar
    assertEqual "It should return the exact result that is 675" dictionary (Map.fromList [("result",Just 276)])

evalLineTests = testGroup "EvalLine tests" [testExpression]
evaluationTests = testGroup "Evaluation method tests" [evalLineTests]

