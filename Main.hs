import Debug.Trace
import System.IO

import System.Environment ( getArgs )

push :: a -> [a] -> [a]
push x xs = x : xs

pop :: [a] -> (a, [a])
pop [] = error "Empty list"
pop (x:xs) = (x, xs)

operators = ['+','-','*','/']

opValue :: Char -> Int
opValue '+' = 0
opValue '-' = 0
opValue '*' = 1
opValue '/' = 1
opValue other = -1 -- if it is a operator we want to change the stack and the output

stackToString :: [Char] -> String -> String
stackToString [] output = output
stackToString (t:stack) "" = stackToString stack [t]
stackToString (t:stack) output = stackToString stack (output++" "++[t]) 

addOperator :: String -> [Char] -> Char -> (String, [Char])
addOperator output [] operator = (output ++ " ", [operator])
addOperator output (t:stack) operator
    | opValue operator <= opValue t = addOperator (output++" "++[t]) stack operator
    | otherwise = (output++" ", push operator (push t stack))

seeEndPar :: String -> [Char] -> (String, [Char])
seeEndPar output [] = error "bro"
seeEndPar output (t:stack)
    | t /= '(' = seeEndPar (output ++ " " ++ [t]) stack 
    | otherwise = (output, stack)

removeDoubleSpace :: String -> String -> String
removeDoubleSpace [] nin = nin
removeDoubleSpace (t:input) newinput
    | length input < 1 =  newinput ++ [t]
    | t == ' ' && head input == ' ' = removeDoubleSpace input newinput
    | otherwise = removeDoubleSpace input (newinput ++ [t])

toPosfix :: String -> String -> [Char] -> String
toPosfix "" output ostack = removeDoubleSpace ( output ++ " " ++ stackToString ostack "") ""
toPosfix (t:expression) output ostack
    | t `elem` operators = 
        let (newOutput,stack) = addOperator output ostack t 
        in toPosfix expression newOutput stack
    | t == '(' = toPosfix expression output (push t ostack)
    | t == ')' =
        let (newOutput,stack) = seeEndPar output ostack
        in toPosfix expression newOutput stack
    | otherwise = toPosfix expression (output ++ [t]) ostack


calc :: [String] -> Char -> [String]
calc [] o = []
calc stack operator = 
    let (bs,bStack) = pop stack
        (as,aStack) = pop bStack
        a = read as :: Float
        b = read bs :: Float
        result = case operator of
            '+' -> a+b
            '-' -> a-b
            '*' -> a*b
            '/' -> a/b
            _   -> a+0
    in push (show result) aStack

calculatePostFix :: [String] -> [String] -> Float
calculatePostFix [] stack = read (head stack) :: Float
calculatePostFix (t:expression) stack 
    | head t `elem` operators = calculatePostFix expression (calc stack (head t))
    | otherwise = calculatePostFix expression (push t stack)

calculate :: String -> Float
calculate expression = calculatePostFix (words (toPosfix expression "" []) ) []

parse :: IO()
parse = do
    putStr " > "
    hFlush stdout
    expression <- getLine
    let post = toPosfix expression "" [] 
    print (calculatePostFix (words post) [] )
    parse
    
main :: IO()
main = do
    args <- getArgs
    if "parse" `elem` args then
        parse
    else 
        print ( calculatePostFix  ( words  (toPosfix ( head args ) "" [] )  ) [] )
