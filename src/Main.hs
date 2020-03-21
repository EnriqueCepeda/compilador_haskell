
module Main where
import Tokens


main = do 
    fileContent <- readFile "ejemplo_codigo.txt"
    let tokens = scanTokens fileContent
    print (tokens)
