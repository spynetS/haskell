-- 2023 Alfred Roos


main :: IO()
main = do
    input <- getLine
    let [a,b] = map read (words input) :: [Int]
    if a < b then 
        putStrLn "Yes" 
    else 
        putStrLn "No"