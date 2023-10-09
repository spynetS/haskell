-- 2023 Alfred ROos
import Text.Printf

calc :: Double -> String -> Double -> Double
calc a o b
  | o == "+" = a+b
  | o == "-" = a-b
  | o == "*" = a*b
  | o == "/" = a/b
  | o == "^" = a**b
  | otherwise = a

io :: String -> String
io inp = printf "%.2f" ( calc a o b)
  where
    [t1,o,t2] = words inp
    a = read t1
    b = read t2


main :: IO()
main = interact $ unlines . map io . lines
