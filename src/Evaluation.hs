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
evalExpr (Var string) varDictionary = getValue string varDictionary
evalExpr (Brack expr) varDictionary = evalExpr expr varDictionary
evalExpr (Plus expr1 expr2) varDictionary = evalExpr expr1 varDictionary + evalExpr expr2 varDictionary
evalExpr (Minus expr1 expr2) varDictionary = evalExpr expr1 varDictionary - evalExpr expr2 varDictionary
evalExpr (Multiply expr1 expr2) varDictionary = evalExpr expr1 varDictionary * evalExpr expr2 varDictionary

getValue :: String -> (Map.Map String (Maybe Integer)) -> Integer
getValue var varDictionary = (case Map.lookup var varDictionary of
        Just val -> case val of
            Just val -> val 
            Nothing -> error ("Variable " ++ var ++ " not initialized")
        Nothing -> error ("Variable " ++ var ++ " not declared"))

evalIdList :: [String] -> (Map.Map String (Maybe Integer)) -> (Map.Map String (Maybe Integer))
evalIdList [] table = table
evalIdList (id:ids) table = evalIdList ids new_table
    where new_table = Map.insert id Nothing table

main = do
    new_dictionary <- eval (Program "Suma" ["Suma","Suma2"] [Assign "Suma" (Plus (Multiply (Var "Suma2")(Int 8))(Int 3))])
    print(new_dictionary)