
module Main where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import TestSintax
import TestLexical

allTests :: TestTree
allTests = testGroup "Unit tests" [
    TestLexical.lexicalTests,
    TestSintax.testGrammar
    ]

main :: IO ()
main = defaultMain allTests
