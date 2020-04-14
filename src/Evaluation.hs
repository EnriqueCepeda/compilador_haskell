module Main where
import Tokens
import Grammar
import qualified Data.Map as Map
import Data.Maybe
import Control.Monad

eval :: Program -> IO (Map.Map String (Maybe Integer))
eval (Program name variables lines) = do
    print("Name of the program: " ++name)
    let varDictionary = evalIdList variables Map.empty
    new_varDictionary <- evalLines lines varDictionary
    return new_varDictionary

evalLines :: [Line] -> (Map.Map String (Maybe Integer)) -> IO (Map.Map String (Maybe Integer))
evalLines [] varDictionary = do
    return varDictionary

evalLines (line:lines) varDictionary = do
    new_varDictionary <- evalLine line varDictionary
    evalLines lines new_varDictionary


evalLine :: Line -> (Map.Map String (Maybe Integer)) -> IO (Map.Map String (Maybe Integer))
evalLine (Assign string assingExpr) varDictionary = return (case Map.lookup string varDictionary of
    Just _ -> Map.insert string (Just (evalExpr assingExpr varDictionary)) varDictionary
    Nothing -> error ("Variable " ++ string ++ " not declared"))

evalLine (WhileLarge logExpr lines) varDictionary = (case evalLogExpr logExpr varDictionary of 
    True -> evalLines (lines ++ [WhileLarge logExpr lines]) varDictionary
    False -> evalLines [] varDictionary )

evalLine (WhileShort logExpr line) varDictionary = (case evalLogExpr logExpr varDictionary of 
    True -> do
        new_varDictionary <- evalLine line varDictionary
        evalLine (WhileShort logExpr line) new_varDictionary
    False -> return varDictionary)

evalLine (Write writeArgs) varDictionary = do
    print (evalWriteArgs writeArgs varDictionary)
    return varDictionary

evalWriteArgs :: [WriteArg] -> (Map.Map String (Maybe Integer)) -> String
evalWriteArgs [] varDictionary = ""
evalWriteArgs (writeArg:writeArgs) varDictionary = (evalWriteArg writeArg varDictionary) ++ " " ++ (evalWriteArgs writeArgs varDictionary)

evalWriteArg :: WriteArg -> (Map.Map String (Maybe Integer)) -> String
evalWriteArg (String string) varDictionary = string
evalWriteArg (Expr expr) varDictionary = show (evalExpr expr varDictionary)

evalLogExpr :: LogExpr -> (Map.Map String (Maybe Integer)) -> Bool
evalLogExpr (GreaterEqThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary >= evalExpr expr2 varDictionary
evalLogExpr (LessEqThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary <= evalExpr expr2 varDictionary
evalLogExpr (GreaterThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary > evalExpr expr2 varDictionary
evalLogExpr (LessThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary < evalExpr expr2 varDictionary
evalLogExpr (EqualThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary == evalExpr expr2 varDictionary
evalLogExpr (DifferentThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary /= evalExpr expr2 varDictionary

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
    new_dictionary <- eval (Program "Suma" ["Suma","Por5"] [Write [String "\"hola\"",Expr (Int 5)]])
    print(new_dictionary)