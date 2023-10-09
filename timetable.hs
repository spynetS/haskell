-- 2023 Alfred Roos

-- check reverse

splitOn c str = case break (==c) str of
                (a, c:b) -> a : splitOn c b
                (a, "")    -> [a]

hours :: String -> Double
hours time = h+(hs/60)
  where
    h = read ( head $ splitOn ':' time) :: Double
    hs = read ( last $ splitOn ':' time) :: Double

check :: Double -> Double-> Double-> Double -> String
check t0 t1 t2 t3
  | t3 <= t0 = "ok"
  | t1 > t2 = "conflict"
  | otherwise = "ok"

io :: String -> String
io str = check (hours t1) (hours t2) (hours t3) (hours t4)
  where
    [t1,t2,t3,t4] = words str



main :: IO ()
main  =  interact $ unlines . map io . lines
