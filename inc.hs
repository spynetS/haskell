-- 2023 Alfred

inc :: Int -> Int
inc x = 1+x

io :: String -> String
io s  =  show x
  where
  x  = inc $ read s :: Int

main :: IO ()
main  =  interact $ unlines . map io . lines
