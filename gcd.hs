-- 2023 Alfred Roos
import Prelude hiding (gcd)

gcd :: Int -> Int -> Int
gcd a 0 = a
gcd a b = gcd b (a `mod` b)

io :: String -> String
io inp = show $ gcd a b
  where
    [a,b] = map read $ words inp


main :: IO()
main = interact $ unlines . map io . lines
