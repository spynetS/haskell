-- 2023 Alfred Roos
import Text.Printf

repl :: Int -> a -> [a] -> [a]
repl index element list = (take (index) list) ++ [element] ++ tail (drop (index) list)

io :: String -> String
io str = repl index (head rep) vord
  where
    vords = words str
    index = read $ vords !! 1
    vord = head vords
    rep = vords !! (length vords - 1)

main :: IO ()
main  =  interact $ unlines . map io . lines
