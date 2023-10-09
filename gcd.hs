-- 2023 Alfred Roos
import Prelude hiding (gcd)

gcd :: Int -> Int -> Int
gcd a b
  | a == 0 = b
  | b == 0 = a
  | a == b = a
  | a > b = gcd (a-b) b
  | otherwise = gcd a (b-a)

io :: String -> String
io inp = show $ gcd a b
  where
    [a,b] = map read $ words inp

main :: IO()
main = do
  interact $ unlines . map io . lines
