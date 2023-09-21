-- 2023 Alfred Roos


hello :: Int -> IO()
hello 1 = putStrLn "Hello, World!"
hello times = do
    putStrLn "Hello, World!"
    hello ( times-1 )

main :: IO()
main = do
    input <- getLine
    let times = read input
    hello times

