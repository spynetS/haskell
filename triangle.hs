-- 2023 Alfred
import Text.Printf
import Data.List (sort)

whichTriangle :: Double -> Double -> Double -> String
whichTriangle a b c
    |  a + b <= c || c+a <= b || c+b <= a = "impossible"
    | (a == b && a /= c) || b == c && b /= a || a == c && c /= b = ( "isosceles " ++ (triangleSidesType $ sort [a,b,c]))
    |  a /= b && a /= c = ("scalene " ++ (triangleSidesType $ sort [a,b,c]))
    |  a == b && a == c = ("equilateral " ++ (triangleSidesType $ sort [a,b,c]))
    | otherwise = "impossible"

getAngle :: Double -> Double -> Double -> Double
getAngle a b c = ( ( acos (term) ) / rad )
    where
      rad = pi/180
      term = (a^2+b^2-c^2)/(2*a*b)

triangleSidesType :: [Double] -> String
triangleSidesType [a,b,c]
  | (getAngle a b c) == 90 = "right"
  | (getAngle a b c) >  90 = "obtuse"
  | otherwise = "acute"

io :: String -> String
io s = printf "%s" (whichTriangle a b c)
  where
    [a,b,c] = map read (words s) :: [Double]

main :: IO ()
main  =  interact $ unlines . map io . lines
