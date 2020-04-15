module Evaluation where
import Tokens
import Grammar
import qualified Data.Map as Map
import Data.Maybe
import Text.Read (readMaybe)
import qualified Data.Foldable as F

type VariablesMap = (Map.Map String (Maybe Integer))


eval :: Program -> IO VariablesMap
eval (Program name variables lines) = do

    let varDictionary = evalIdList variables Map.empty
    new_varDictionary <- evalLines lines varDictionary
    return new_varDictionary

evalLines :: [Line] -> VariablesMap -> IO VariablesMap
evalLines [] varDictionary = do
    return varDictionary

evalLines (line:lines) varDictionary = do
    new_varDictionary <- evalLine line varDictionary
    evalLines lines new_varDictionary

evalLine :: Line -> VariablesMap -> IO VariablesMap
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
    F.mapM_ putStrLn (evalWriteArgs writeArgs varDictionary)
    return varDictionary

evalLine (Read string) varDictionary = do
    num <- getLine
    (case (readMaybe num :: (Maybe Integer)) of
        Nothing -> error ("Input value " ++ string ++ " is not an integer")
        Just x -> saveValue string x varDictionary)

evalWriteArgs :: [WriteArg] -> VariablesMap -> [String]
evalWriteArgs [] varDictionary = []
evalWriteArgs (writeArg:writeArgs) varDictionary = [evalWriteArg writeArg varDictionary] ++ evalWriteArgs writeArgs varDictionary

evalWriteArg :: WriteArg -> VariablesMap -> String
evalWriteArg (String string) varDictionary = string
evalWriteArg (Expr expr) varDictionary = show (evalExpr expr varDictionary)

evalLogExpr :: LogExpr -> VariablesMap -> Bool
evalLogExpr (GreaterEqThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary >= evalExpr expr2 varDictionary
evalLogExpr (LessEqThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary <= evalExpr expr2 varDictionary
evalLogExpr (GreaterThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary > evalExpr expr2 varDictionary
evalLogExpr (LessThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary < evalExpr expr2 varDictionary
evalLogExpr (EqualThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary == evalExpr expr2 varDictionary
evalLogExpr (DifferentThan expr1 expr2) varDictionary = evalExpr expr1 varDictionary /= evalExpr expr2 varDictionary

evalExpr :: Expr -> VariablesMap -> Integer
evalExpr (Int integer) varDictionary = integer
evalExpr (Var string) varDictionary = getValue string varDictionary
evalExpr (Brack expr) varDictionary = evalExpr expr varDictionary
evalExpr (Plus expr1 expr2) varDictionary = evalExpr expr1 varDictionary + evalExpr expr2 varDictionary
evalExpr (Minus expr1 expr2) varDictionary = evalExpr expr1 varDictionary - evalExpr expr2 varDictionary
evalExpr (Multiply expr1 expr2) varDictionary = evalExpr expr1 varDictionary * evalExpr expr2 varDictionary

getValue :: String -> VariablesMap -> Integer
getValue var varDictionary = (case Map.lookup var varDictionary of
        Just val -> case val of
            Just val -> val 
            Nothing -> error ("Variable " ++ var ++ " not initialized")
        Nothing -> error ("Variable " ++ var ++ " not declared"))

saveValue :: String -> Integer -> VariablesMap -> IO VariablesMap
saveValue var num varDictionary = return (case Map.member var varDictionary of
        True -> Map.insert var (Just num) varDictionary
        False -> error ("Variable " ++ var ++ " not declared"))

evalIdList :: [String] -> VariablesMap -> VariablesMap
evalIdList [] table = table
evalIdList (id:ids) table = evalIdList ids new_table
    where new_table = Map.insert id Nothing table
