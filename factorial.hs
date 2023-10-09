-- 2023 Alfred Roos

factorial :: Int -> Int
factorial 0 = 1
-- factorial 1 = 1
-- factorial 2 = 2
factorial n = n * factorial (n - 1)

io :: String -> String
io inp = show ( factorial (read inp) )

main :: IO()
main = do
  interact $ unlines . map io . lines
