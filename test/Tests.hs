
module Main where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import TestLexical
import Tokens

allTests :: TestTree
allTests = testGroup "Unit tests" [
    TestLexical.lexicalTests
    ]

main :: IO ()
main = defaultMain allTests
