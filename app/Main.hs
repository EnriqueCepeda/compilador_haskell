module Main where
import Tokens
import Grammar
import Evaluation

main = do 
    fileContent <- readFile "resources/testRead.txt"
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    eval syntax
