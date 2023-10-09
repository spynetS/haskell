-- 2023 Alfred Roos

digitSum :: Int -> Int
digitSum num
  | num < 10 = num
  | otherwise = last + (digitSum rest)
  where
    last = num `mod` 10
    rest = num `div` 10

io :: String -> String
io inp = show $ digitSum $ read inp

main :: IO()
main = interact $ unlines . map io . lines
