-- 2023 Alfred

isSorted :: Int -> Int -> Bool
isSorted a b = a < b

io :: String -> String
io s  = if isSorted x y; then "Yes"; else "No"
  where
    [x,y] = map read (words s) :: [Int]

main :: IO ()
main  =  interact $ unlines . map io . lines
