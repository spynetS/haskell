-- 2023 Alfred
import Text.Printf

whichTriangle :: Float -> Float -> Float -> String
whichTriangle a b c
    |  a + b <= c || c+a <= b || c+b <= a = "impossible"
    | (a == b && a /= c) || b == c && b /= a || a == c && c /= b = "isosceles"
    |  a /= b && a /= c = "scalene"
    |  a == b && a == c = "equilateral"
    | otherwise = "impossible"

triangleSidesType :: Float -> Float -> Float -> String
triangleSidesType a b c
  | ( acos b/a ) == 90 * rad = "right"
  | ( acos b/a ) > 90 * rad= "obtuse"
  | otherwise = "acute"
    where
      rad = pi/180

io :: String -> String
io s = printf "%s %s" (whichTriangle a b c) (triangleSidesType a b c)
  where
    [a,b,c] = map read (words s) :: [Float]

main :: IO ()
main  =  interact $ unlines . map io . lines
