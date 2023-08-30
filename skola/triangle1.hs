import Data.List (sort)
-- 2023 Alfred Roos
whichTriangle :: Int -> Int -> Int -> String
whichTriangle x y z 
    | x /= y && y /= z                           = "scalene"
    | (x == y && y /= z ) || 
      (x == z && y /= z)  || 
      (z == y && y /= x)                         = "isosceles"
    | x == y && y == z                           = "equilateral"
    | (x + y) <= z                               = "impossible"
    | otherwise                                  = "impossible"

main :: IO()
main = do
    input <- getLine
    let [a,b,c] = sort ( map read (words input) )
    putStrLn (whichTriangle a b c)
