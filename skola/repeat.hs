-- 2023 Alfred Roos 

import System.IO (isEOF)

main :: IO()
main = myLoop []


myLoop :: [String] -> IO()
myLoop inputs = do 
    done <- isEOF
    if done then mapM_ putStrLn inputs  -- we are done we print all inputs
    else do                             -- else we run myLoop again and pass in our input
        inp <- getLine
        myLoop (inputs++[inp])

