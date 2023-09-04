-- 2023 Alfred Roos 

import System.IO (isEOF)

main :: IO()
main = myLoop []

myLoop :: [String] -> IO()
myLoop [] = do 
    done <- isEOF
    if done then putStrLn "Bye!"
    else do 
        inp <- getLine
        myLoop [inp]

myLoop inputs = do 
    done <- isEOF
    if done then mapM_ putStrLn inputs
    else do 
        inp <- getLine
        myLoop (inputs++[inp])

