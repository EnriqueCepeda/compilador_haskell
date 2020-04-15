module Main where
import Tokens
import Grammar
import Evaluation

main = do 
    fileContent <- readFile "resources/ejemplo_codigo.txt"
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    eval syntax
    
