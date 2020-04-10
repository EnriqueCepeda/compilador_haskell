module TestSintax where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens --remove after start doing real tests
import Grammar

testInt = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]

testGrammar :: TestTree
testGrammar = testGroup "Sintax Analyzer tests" [testInt]