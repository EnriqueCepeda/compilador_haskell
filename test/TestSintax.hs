module TestSintax where

import Test.Tasty.HUnit as HU
import Test.Tasty.Hspec
import Test.Tasty
import Data.Char
import Tokens 
import Grammar

getGrammar = do 
    tokens <- readFile "resources/ejemplo_codigo.txt" 
    let grammar = parser tokens
    return grammar

testWrite :: IO()
testWrite = do
    describe "write" $ do
        it "returns a write token" $ do
        let grammarWrite = [Program "HelloWorld" (Write (String "Hello World"))]
        getGrammar `shouldBe` grammarWrite

