-- 2023 Alfred Roos
import Prelude hiding (gcd)

    rect1.x < rect2.x + rect2.w &&
    rect1.x + rect1.w > rect2.x &&
    rect1.y < rect2.y + rect2.h &&
    rect1.y + rect1.h > rect2.y

intersect :: Int -> Int ->Int ->Int ->Int ->Int ->Int ->Int ->Int ->Int -> Int
intersect r1x r1y r1

io :: String -> String
io inp = show $ gcd a b
  where
    [a,b] = map read $ words inp

main :: IO()
main = do
  interact $ unlines . map io . lines
