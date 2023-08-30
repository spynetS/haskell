
-- 2023 Alfred Roos

sig :: Int -> String
sig x
    | x > 0 = "positive"
    | x < 0 = "negative"
    | otherwise = "zero"

main :: IO()
main = do
    c <- getLine
    let num = read c :: Int
    putStrLn (sig num)
    