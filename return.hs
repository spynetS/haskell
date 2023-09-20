import System.IO

aux :: Int -> Int -> IO Int 
aux 0 sum = return sum
aux count sum = do
    x <- getLine
    aux (count-1) (sum + (read x :: Int))

adder :: IO ()
adder = do
    putStrLn "How many numbers?"
    numbers <- getLine
    sum <- aux (read numbers) 0
    putStrLn ("The total is " ++ show sum)

main :: IO ()
main = do
    adder
