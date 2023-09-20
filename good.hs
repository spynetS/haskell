-- 2023 Alfred

good :: Int -> String
good time
  | time >= 4 && time <= 11 = "Good morning"
  | time >= 12 && time <= 17 = "Good afternoon"
  | time >= 18 && time <= 23 = "Good evening"
  | otherwise = "Hi"

io :: String -> String
io s  =  good x
  where
    x = read s

main :: IO ()
main  =  interact $ unlines . map io . lines
