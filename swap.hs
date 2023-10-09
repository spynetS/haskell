-- 2023 Alfred Roos
import Text.Printf

io :: String -> String
io inp = printf "%s %d" s (read num :: Int)
  where
    [num,s] = words inp


main :: IO()
main = do
  interact $ unlines . map io . lines
