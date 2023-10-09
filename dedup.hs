-- 2023 Alfred Roos

dedup :: String -> String
dedup "" = ""
dedup (x:inp)
  | length inp == 0 = [x]
  | x == (head inp) = dedup inp
  | otherwise       = [x] ++ dedup inp


io :: String -> String
io inp = dedup $ inp

main :: IO()
main = interact $ unlines . map io . lines
