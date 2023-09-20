-- 2023 Alfred

add :: Int -> Int -> Int
add x y = y+x

io :: String -> String
io s  =  show $ add x y
  where
    [x,y] = map read (words s) :: [Int]

main :: IO ()
main  =  interact $ unlines . map io . lines
