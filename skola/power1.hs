-- 2023 Alfred Roos


main :: IO()
main = do
    input <- getLine
    let [x,y] = map read $ words input
    print $ x**y
