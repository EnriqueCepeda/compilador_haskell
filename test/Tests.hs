
module Main where

import           Data.Char
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           TestLexical
import           TestSintax
import           Tokens

allTests :: TestTree
allTests = testGroup "Unit tests" [
    TestLexical.lexicalTests,
    TestSintax.sintaxTests
    ]

main :: IO ()
main = defaultMain allTests
