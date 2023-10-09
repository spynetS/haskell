-- 2023 Alfred Roos
import Text.Printf

data Rectangle = Rectangle { width :: Int
                           , height :: Int
                           }

perimeter :: Rectangle -> Int
perimeter (Rectangle w h)
  | w == 0 || h == 0 = 0
  | otherwise = w*2+h*2

area :: Rectangle -> Int
area (Rectangle w h) = w*h

io :: String -> String
io inp = printf "%dx%d rectangle, area = %d, perimeter = %d" w h (area rect) (perimeter rect)
  where
    [w, h] = map (abs . read) (words inp)
    rect = Rectangle { width = w, height = h }


main :: IO()
main = do
  interact $ unlines . map io . lines
