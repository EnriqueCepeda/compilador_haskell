
module TestLexical where

import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens

testPoint = HU.testCase "Point element recognized" (
    assertEqual "Point returns TokenPoint" (scanTokens ".") [TokenPoint])
testInteger = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]

lexicalTests :: TestTree
lexicalTests = testGroup "Lexical Analyzer tests" [testPoint, testInteger]

