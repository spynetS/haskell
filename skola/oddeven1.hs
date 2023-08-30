
-- 2023 Alfred Roos

oddEven :: Int -> String
oddEven x 
    | odd x = "odd"
    | otherwise = "even"

main :: IO()
main = do
    name <- getLine
    let x = read name :: Int
    putStrLn (oddEven x)
