-- 2023 Alfred Roos

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main :: IO()
main = do
    input <- getLine
    print $ fibonacci (read input)

