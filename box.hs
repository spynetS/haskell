-- 2023 Alfred
import Text.Printf

volume, area :: Int -> Int -> Int -> Int
volume a b z = a*b*z

area l w h = 2*l*w+2*l*h+2*h*w

io :: String -> String
io s = printf "The volume of a %d by %d by %d box is %d. \nThe surface area of a %d by %d by %d box is %d. " a b c ( volume a b c) a b c (area a b c)
  where
    [a,b,c] = map read (words s) :: [Int]

main :: IO ()
main  =  interact $ unlines . map io . lines
