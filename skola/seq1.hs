-- 2023 Alfred Roos

countTo :: Int -> Int -> IO()
countTo start end
    | start == end = print start
    | otherwise = do
        print start
        countTo ( start + 1) end


main :: IO()
main = do
    input <- getLine
    let [start, end] = map read (words input) :: [Int]
    countTo start end
