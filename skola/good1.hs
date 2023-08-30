-- 2023 Alfred Roos

good :: Int -> String
good time 
    | time >= 4 && time <= 11  = "Good morning"
    | time >= 12 && time <= 17 = "Good afternoon"
    | time >= 18 && time <= 23 = "Good evening"
    | otherwise = "Hi"


main :: IO ()
main = do
    input <- getLine
    putStrLn (good (read input::Int))
