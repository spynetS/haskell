
-- 2023 Alfred Roos

inc :: Int -> Int
inc x = x+1

main :: IO()
main = do
    input <- getLine
    let x = read input ::Int
    print (inc x)