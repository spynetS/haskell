-- 2023 Alfred

mult :: Int -> Int -> Int -> Int
mult x y z = y*z*x

io :: String -> String
io s  =  show $ mult x y z
  where
    [x,y,z] = map read (words s) :: [Int]

main :: IO ()
main  =  interact $ unlines . map io . lines
