module Evaluacion where
import Tokens
import Grammar

type VariableDef = (String, Int)

emptyVariableTable :: [VariableDef]
emptyVariableTable = []

addVariableDef :: VariableDef -> [VariableDef] -> [VariableDef]
addVariableDef v t = v:t


eval :: Program -> IO [VariableDef]
eval (Program name variables lines) = do
    print("Name of the program: "++name)
    let varTable = evalIdList variables emptyVariableTable
    evalLines lines
    return varTable

evalLines :: [Line] -> IO String
evalLines [line] = do
    print("New program line")
    evalLine line
evalLines (line:lines) = do
    print("New program line")
    evalLine line
    evalLines lines

evalLine :: Line -> IO String
evalLine (WhileLarge logExpr lines) = do
    print("While with many lines")
    if evalLogExpr logExpr
        then evalLines lines
        else return "Nada"
evalLine (WhileShort logExpr line) = do
    print("While with one line")
    if evalLogExpr logExpr
        then evalLine line
        else return "Nada"
evalLine (Assign string assingExpr) = do
    print("New Assing Expression for "++string)
    print (evalExpr assingExpr)
    return (show (evalExpr assingExpr))
evalLine (Write writeArgs) = do
    print("New Write Call"++evalWriteArgs writeArgs)
    return (evalWriteArgs writeArgs)
evalLine (Read string) = do
    print("New Read Call for "++string)
    return string

evalIdList :: [String] -> [VariableDef] -> [VariableDef]
evalIdList [id] table = addVariableDef (id,0) table
evalIdList (id:ids) table = evalIdList ids new_table
    where new_table = addVariableDef (id,0) table

evalWriteArgs :: [WriteArg] -> String
evalWriteArgs [writeArg] = evalWriteArg writeArg
evalWriteArgs (writeArg:writeArgs) = (evalWriteArg writeArg) ++ (evalWriteArgs writeArgs)

evalWriteArg :: WriteArg -> String
evalWriteArg (String string) = string
evalWriteArg (Expr expr) = show (evalExpr expr)
    

evalExpr :: Expr -> Int
evalExpr (Var string) = 1
evalExpr (Int int) = int
evalExpr (Brack expr) = evalExpr expr
evalExpr (Plus expr1 expr2) = evalExpr expr1 + evalExpr expr2
evalExpr (Minus expr1 expr2) = evalExpr expr1 - evalExpr expr2
evalExpr (Multiply expr1 expr2) = evalExpr expr1 * evalExpr expr2

evalLogExpr :: LogExpr -> Bool
evalLogExpr (GreaterEqThan expr1 expr2) = evalExpr expr1 >= evalExpr expr2
evalLogExpr (LessEqThan expr1 expr2) = evalExpr expr1 <= evalExpr expr2
evalLogExpr (GreaterThan expr1 expr2) = evalExpr expr1 > evalExpr expr2
evalLogExpr (LessThan expr1 expr2) = evalExpr expr1 < evalExpr expr2
evalLogExpr (EqualThan expr1 expr2) = evalExpr expr1 == evalExpr expr2
evalLogExpr (DifferentThan expr1 expr2) = evalExpr expr1 /= evalExpr expr2