module TestSintax where

import           Data.Char
import           Grammar
import           Test.Tasty
import           Test.Tasty.HUnit as HU
import           Tokens

testWrite = HU.testCase "writeln arguments int, string, variable, and add expresions works" $ do
    fileContent <- readFile "resources/testWrite.txt"
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    let grammarWrite = Program "Suma" ["var1","var2"] [Assign "var1" (Int 5),Write [Expr (Int 5),String "HOLA",Expr (Var "var1"),Expr (Plus (Int 1) (Int 1))]]
    assertEqual "Int, string, variable and arithmetic arguments works inside a write expression" grammarWrite syntax



sintaxTests = testGroup "Sintax Analyzer tests" [testWrite]
