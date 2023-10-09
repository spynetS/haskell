-- 2023 Alfred Roos

power :: Int -> Int -> Int
power b ex = b^ex

io :: String -> String
io inp = show ( power b ex )
  where
    [b,ex] = map read $ words inp

main :: IO()
main = do
  interact $ unlines . map io . lines
