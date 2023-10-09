-- 2023 Alfred Roos

fibonacci :: Int -> Integer
fibonacci = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = fibonacci (n-2) + fibonacci (n-1)

io :: String -> String
io inp = show ( fibonacci b )
  where
    b = read inp

main :: IO()
main = do
  interact $ unlines . map io . lines
