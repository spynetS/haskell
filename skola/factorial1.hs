-- 2023 Alfred Roos

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial range = range * factorial ( range - 1 )

main :: IO()
main = do
    input <- getLine
    print $ factorial $ read input
