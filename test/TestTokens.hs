
module Main (
    main
) where

import qualified System.Exit as Exit
import Test.HUnit
import Data.Char

four :: Int
four = 4

tests, test1, test2, test3 :: Test
test1 = TestCase $ assertEqual "test upCase" "FOO" (map toUpper "foot")
test2 = TestCase $ assertEqual "testing that the result is 4" 4 (4::Int)
test3 = TestCase $ assertEqual "testing that 4 is 4" four 4
test4 = TestCase $ assertString "321" 

tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2, TestLabel "test3" test3]
tests2 = TestList [TestLabel "test1" test1, TestLabel "test4" test4]

main :: IO ()
main = do 
    count2 <- runTestTT $ tests2 
    count <- runTestTT $ tests
    if failures count > 0 || failures count2 > 0 then Exit.exitFailure else return ()
