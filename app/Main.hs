 
module Main where
import Tokens
import Grammar

main = do 
    fileContent <- readFile "resources/ejemplo_codigo.txt"
    let tokens = scanTokens fileContent
    print(tokens)
    let grammar = parser tokens
    print (grammar)
