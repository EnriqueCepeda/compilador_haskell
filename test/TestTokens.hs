
module Main where

import qualified System.Exit as Exit
import Test.Tasty.HUnit as HU
import Test.Tasty
import Data.Char
import Tokens

testPoint = HU.testCase "Point element recognized" (
    assertEqual "Point returns TokenPoint" (scanTokens ".") [TokenPoint])
testInteger = HU.testCase "Integer element recognized" $
    assertEqual "Number returns TokenInt" (scanTokens "5") [TokenInt 5]


--tokens1, tokens2, tokens3 :: TestTree
--t1 = HU.testCase $ assertFailure "Test 1" scanTokens "PROGRAM holaMundo;"
--t2 = HU.TestCase $ assertFailure "Test 2" scanTokens readFile "test/tokens2.txt"
--t3 = HU.TestCase $ assertFailure "Test 3" scanTokens readFile "test/tokens3.txt"

allTests :: TestTree
allTests = testGroup "Tasty tests" [
    testGroup "Lexical Analyzer tests" [testPoint, testInteger]
    ]

main :: IO ()
main = defaultMain allTests
