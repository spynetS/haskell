-- 2023 Alfred Roos

price :: String -> Int -> Bool
price typ age
  | typ == "student" && age <= 25 = True
  | age >= 65 = True
  | age < 18 = True
  | otherwise = False

io :: String -> String
io str
  | (price typ (read age)) = "discount"
  | otherwise = "full price"
  where
    [typ, age] = words str


main :: IO ()
main  =  interact $ unlines . map io . lines
