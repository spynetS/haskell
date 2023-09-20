-- 2023 Alfred

triple :: Int -> Int
triple x = 3*x

io :: String -> String
io s  =  show x
  where
  x  = triple $ read s :: Int

main :: IO ()
main  =  interact $ unlines . map io . lines
