-- 2023 Alfred Roos


power :: Int -> Int -> Int
power x y = (x^y)

main :: IO()
main = do
    input <- getLine
    let [x,y] = map read $ words input
    print $ power x y
