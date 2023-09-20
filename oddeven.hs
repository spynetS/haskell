-- 2023 Alfred

io :: String -> String
io s  = if odd x; then "odd"; else "even"
  where
  x  = read s :: Int

main :: IO ()
main  =  interact $ unlines . map io . lines
