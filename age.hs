-- 2023 Alfred Roos
import Text.Printf

io :: String -> String
io inot = printf "%s is %d years old." name (read age :: Int)
  where
    [name, age] = words inot

main :: IO()
main = do
  interact $ unlines . map io . lines
