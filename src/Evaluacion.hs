module Evaluacion where
import Tokens
import Grammar

eval :: Program -> IO String
eval (Program string lines) = do
    print("Name of the program: "++string)
    evalLines lines

evalLines :: [Line] -> IO String
evalLines [line] = do
    print("New program line")
    evalLine line
evalLines (line:lines) = do
    print("New program line")
    evalLine line
    evalLines lines

evalLine :: Line -> IO String
evalLine (VarDec [String]) = do
    print("New Variable(s) Declaration")
    evalIdList [String]
evalLine (While whileExpr) = do
    print("New While Structure")
    evalWhile whileExpr
evalLine (Assign string assingExpr) = do
    print("New Assing Expression for "++string)
    evalExpr assingExpr
evalLine (Write [WriteArg]) = do
    print("New Write Call")
    evalWriteArgs [WriteArg]
evalLine (Read string) = do
    print("New Read Call for "++string)
    return string

evalIdList :: [String] -> IO String
evalIdList [id] = do
    print("New Variable: "++id)
    return id
evalIdList (id:ids) = do
    print("New Variable: "++id)
    evalIdList ids
    return id

evalWhile :: WhileExpr -> IO String
evalWhile (WhileLarge logExpr lines) = do
    print("While with many lines")
    evalLines lines
evalWhile (WhileShort logExpr line) = do
    print("While with one line")
    evalLine line

evalWriteArgs :: [WriteArg] -> IO String
evalWriteArgs [writeArg] = evalWriteArg writeArg
evalWriteArgs (writeArg:writeArgs) = do
    evalWriteArg writeArg
    evalWriteArgs writeArgs

evalWriteArg :: WriteArg -> IO String
evalWriteArg (String string) = do
    print("Expression to write"++string)
    return string
evalWriteArg (Expr expr) = do
    evalExpr expr

evalExpr :: Expr -> IO String
evalExpr (Var string) = do
    print("Variable used in the expression: "++string)
    return string
evalExpr (Int int) = do
    print("Integer used in the expression: "++(show int))
    return (show int)
evalExpr (Brack expr) = do
    print("Expression inside brackets")
    evalExpr expr
evalExpr (Plus expr1 expr2) = do
    print("Sum between two expressions")
    evalExpr expr1
    evalExpr expr2
evalExpr (Minus expr1 expr2) = do
    print("Substraction between two expressions")
    evalExpr expr1
    evalExpr expr2
evalExpr (Times expr1 expr2) = do
    print("Multiplication between two expressions")
    evalExpr expr1
    evalExpr expr2

evalLogExpr :: LogExpr -> IO String
evalLogExpr (GreaterEqThan expr1 expr2) = do
    print("First expression greater or equal than second expression")
    evalExpr expr1
    evalExpr expr2
evalLogExpr (LessEqThan expr1 expr2) = do
    print("First expression less or equal than second expression")
    evalExpr expr1
    evalExpr expr2
evalLogExpr (GreaterThan expr1 expr2) = do
    print("First expression greater than second expression")
    evalExpr expr1
    evalExpr expr2
evalLogExpr (LessThan expr1 expr2) = do
    print("First expression less than second expression")
    evalExpr expr1
    evalExpr expr2
evalLogExpr (EqualThan expr1 expr2) = do
    print("First expression equal than second expression")
    evalExpr expr1
    evalExpr expr2
evalLogExpr (DifferentThan expr1 expr2) = do
    print("First expression different than second expression")
    evalExpr expr1
    evalExpr expr2