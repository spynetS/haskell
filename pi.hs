-- 2023 Alfred
import Text.Printf

cir :: Double -> Double
cir r = r**2 * pi
  where
    pi = 3.14
area :: Double -> Double
area r = r*2 * pi
  where
    pi = 3.14

io :: String -> String
io s  =  printf "%f %f" (area x) (cir x)
  where
    x = read s

main :: IO ()
main  =  interact $ unlines . map io . lines
