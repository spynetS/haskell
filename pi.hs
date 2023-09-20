-- 2023 Alfred
import Text.Printf

circumference :: Double -> Double
circumference r = r**2 * pi

area :: Double -> Double
area r = r*2 * pi

io :: String -> String
io s  =  printf "%.2f %.2f" (area x) (circumference x)
  where
    x = read s

main :: IO ()
main  =  interact $ unlines . map io . lines
