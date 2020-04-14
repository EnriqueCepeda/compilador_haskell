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
evalLine (Assign string assingExpr) varDictionary = return (case Map.lookup string varDictionary of
    Just _ -> Map.insert string (Just (evalExpr assingExpr varDictionary)) varDictionary
    Nothing -> error ("Variable " ++ string ++ " not declared"))

evalExpr :: Expr -> (Map.Map String (Maybe Integer)) -> Integer
evalExpr (Int integer) varDictionary = integer
evalExpr (Var string) varDictionary = return (case Map.lookup string varDictionary of
    Just x -> x 
    Nothing -> error ("Variable " ++ string ++ " not declared"))

evalIdList :: [String] -> (Map.Map String (Maybe Integer)) -> (Map.Map String (Maybe Integer))
evalIdList [] table = table
evalIdList (id:ids) table = evalIdList ids new_table
    where new_table = Map.insert id Nothing table

main = do
    new_dictionary <- eval (Program "Suma" ["Adios"] [Assign "Suma" (Int 5)])
    print(new_dictionary)