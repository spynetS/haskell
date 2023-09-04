-- 2023 Alfred Roos

fac :: Int -> Int
fac 0 = 1
fac 1 = 1
fac range = range * fac ( range - 1 )

main :: IO()
main = do
    input <- getLine
    print $ fac $ read input
