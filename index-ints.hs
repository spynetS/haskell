-- 2023 Alfred Roos

io :: String -> String
io str = show $ elements !! index
  where
    w = map read (words str) :: [Int]
    index = w !! (length w - 1)
    elements = (tail . init) w

  
main :: IO ()
main  =  interact $ unlines . map io . lines
