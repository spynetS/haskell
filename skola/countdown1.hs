-- 2023 Alfred Roos


countdown :: Int -> IO()
countdown 0 = putStrLn "Go!"
countdown v = do
    print v
    countdown $ v - 1

main :: IO()
main = do
    input <- getLine
    let start = read input
    countdown start

