-- 2023 Alfred Roos
main :: IO()
main = do
    input <- getLine
    let splited = words input
    let name = head splited 
    let age = last splited :: String

    putStrLn (name ++ " is " ++ age ++ " years old.")
