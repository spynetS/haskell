-- |
import System.Environment

hello :: String
hello = x
  where
    x <- getArgs

main :: IO()
main = do
  let a = hello
  print a
