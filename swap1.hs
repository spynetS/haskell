-- 2023 Alfred Roos


main :: IO()
main = do
    input <- getLine
    let [num,s] = words input
    putStrLn $ s++" "++num
