{-# LANGUAGE TemplateHaskell #-}

module Main where
import           Evaluation
import           Grammar
import           System.Environment
import           System.FilePath
import           Tokens

main = do
    args <- getArgs
    let filePath = case args of
                []     -> "resources" </> "testRead.txt"
                [x]    -> "resources" </> x
                (x:xs) -> "resources" </> x

    fileContent <- readFile filePath
    let tokens = scanTokens fileContent
    let syntax = parser tokens
    dictionary <- eval syntax
    print(dictionary)
