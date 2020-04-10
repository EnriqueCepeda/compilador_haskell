
module Main where
import Tokens

main = do 
    fileContent <- readFile "resources/ejemplo_codigo.txt"
    let tokens = scanTokens fileContent
    let grammar = parser tokens
    print (grammar)
