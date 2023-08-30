
-- 2023 Alfred Roos
main :: IO()
main = do
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")