-- 2023 Alfred Roos

whatTriangle :: Int -> Int -> Int -> String
whatTriangle a b c
    |  a + b <= c || c+a <= b || c+b <= a = "impossible" 
    | (a == b && a /= c) || b == c && b /= a || a == c && c /= b = "isosceles"
    |  a /= b && a /= c = "scalene"
    |  a == b && a == c = "equilateral"
    | otherwise = "impossible"

main :: IO()
main = do
    input <- getLine
    let [a,b,c] = map read (words input)
    putStrLn $ whatTriangle a b c

