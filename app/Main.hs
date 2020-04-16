{-# LANGUAGE TemplateHaskell #-}

module Main where
import           Evaluation
import           Grammar
import           Tokens

main = do
    fileContent <- readFile "resources/testRead.txt"
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    print(syntax)
    dictionary <- eval syntax
    print(dictionary)
