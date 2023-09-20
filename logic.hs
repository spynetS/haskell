
g :: Int -> Bool
g x
  | x > 5 = True
  | otherwise = False
o :: Int -> Bool
o x
  | x > 10 = True
  | otherwise = False


main :: IO()
main = do
  let u = [1..30]
  let orms = map o u
  let giftiga = map g u
  let giftigaOrms = map ( g . o ) u
  print orms
  print giftiga
  print giftigaOrms
