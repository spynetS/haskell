-- 2023 Alfred Roos

main :: IO()
main = do
    input <- getLine
    let x = read input
    putStrLn ( show ( x * 3))
