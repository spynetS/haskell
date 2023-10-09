-- 2023 Alfred Roos

suffix :: Int -> String
suffix inp
  | inp == 11 = "th"
  | inp == 12 = "th"
  | inp == 13 = "th"
  | num == 1  = "st"
  | num == 2  = "nd"
  | num == 3  = "rd"
  | otherwise = "th"
  where
      num = inp `mod` 10


ordinal :: Int -> String
ordinal inp = (show inp ) ++ (suffix inp)

io :: String -> String
io inp =  ordinal ( read inp )


main :: IO()
main = interact $ unlines . map io . lines
