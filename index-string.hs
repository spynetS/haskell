-- 2023 Alfred Roos


ind :: String -> Int -> String
ind str index = [str!!index]

io :: String -> String
io str = ind word (read index)
  where
    [word, index] = words str

main :: IO()
main  =  interact $ unlines . map io . lines
