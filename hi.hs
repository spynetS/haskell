-- 2023 Alfred Roos
io :: String -> String
io str = "Hello, "++str ++ "!"

main :: IO ()
main  =  interact $ unlines . map io . lines
