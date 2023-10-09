-- 2023 Alfred Roos
import Data.Char


isEnglishChar :: Char -> Bool
isEnglishChar c = isAsciiUpper c || isAsciiLower c

rot :: Char -> Char
rot inp
  | isAsciiUpper inp = chr $ 65 + (((ord inp) - 65 + 13) `mod` 26 )
  | isAsciiLower inp = chr $ 97 + (((ord inp) - 97 + 13) `mod` 26 )
  | otherwise = inp

io :: String -> String
io "" = ""
io (x:inp) = [( rot x )] ++ (io inp)

main :: IO()
main = interact $ unlines . map io . lines
