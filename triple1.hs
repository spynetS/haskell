-- 2023 Alfred Roos
main :: IO()

triple :: Int -> Int
triple x = 3*x


main = do
    input <- getLine
    print $ triple ( read input) 
