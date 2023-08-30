-- 2023 Alfred Roos
main :: IO()
main = do
    input <- getLine
    let splited = words input
    let name = head splited 
    let age = last splited

    putStrLn (name ++ " is " ++ age ++ " years old.")