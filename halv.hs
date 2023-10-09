-- 2023 Alfred Roos
import Text.Printf

firstHalf  :: [a] -> [a]
firstHalf list = fst $ splitAt middle list
  where
    middle = (length list) `div` 2

secondHalf :: [a] -> [a]
secondHalf list = snd $ splitAt middle list
  where
    middle = (length list) `div` 2



io :: String -> String
io str = printf "%s/%s" (firstHalf str) (secondHalf str)

main :: IO ()
main  =  interact $ unlines . map io . lines
