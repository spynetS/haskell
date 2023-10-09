-- 2023 Alfred Roos
import Text.Printf

io :: String -> String
io str = printf "%s elements: %s" size elements
  where
    vords = map show (map read $ words str :: [Int])
    size = head vords
    elements = unwords $ tail vords

main :: IO ()
main  =  interact $ unlines . map io . lines
