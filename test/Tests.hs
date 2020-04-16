
{-# LANGUAGE TemplateHaskell #-}

module Main where

import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           TestEvaluation
import           TestGrammar
import           TestTokens



allTests :: TestTree
allTests = testGroup "Unit tests" [
    TestTokens.lexicalTests,
    TestGrammar.sintaxTests,
    TestEvaluation.evaluationTests
    ]

main :: IO ()
main = defaultMain allTests
