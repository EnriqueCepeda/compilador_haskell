module Main where
import Tokens
import Grammar
import qualified Data.Map as Map
import Data.Maybe

eval :: Program -> IO (Map.Map String (Maybe Integer))
eval (Program name variables lines) = do
    print("Name of the program: "++name)
    let varDictionary = evalIdList variables Map.empty
    new_varDictionary <- evalLines lines varDictionary
    return new_varDictionary

evalLines :: [Line] -> (Map.Map String (Maybe Integer)) -> IO (Map.Map String (Maybe Integer))
evalLines [] varDictionary = do
    print("End of the program")
    return varDictionary
evalLines (line:lines) varDictionary = do
    new_varDictionary <- evalLine line varDictionary
    evalLines lines new_varDictionary

evalLine :: Line -> (Map.Map String (Maybe Integer)) -> IO (Map.Map String (Maybe Integer))
evalLine (Assign string assingExpr) varDictionary = do
    let result = (evalExpr assingExpr)
    return varDictionary

se te ha desconectado otra vez xD

evalExpr :: Expr -> Int
evalExpr (Int int) = int 

evalIdList :: [String] -> (Map.Map String (Maybe Integer)) -> (Map.Map String (Maybe Integer))
evalIdList [] table = table
evalIdList (id:ids) table = evalIdList ids new_table
    where new_table = Map.insert id Nothing table

main = do
    let variables = ["hola", "adios"]
    let dictionary = evalIdList variables Map.empty
    print(dictionary)
    new_dictionary <- eval (Program "Suma" ["Suma"] [Assign "Suma" (Int 5)])
    print(new_dictionary)