{-# LANGUAGE TemplateHaskell #-}

module TestEvaluation where

import           Evaluation
import           Grammar
import           Tokens
import           Test.Tasty
import           Test.Tasty.HUnit as HU




evalLineTests = testGroup "EvalLine tests" []

evaluationTests = testGroup "Evaluation method tests" [evalLineTests]