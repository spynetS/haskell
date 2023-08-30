import Text.Printf
-- 2023 Alfred Roos

volume, area :: Int -> Int -> Int -> Int
volume a b z = a*b*z

area l w h = 2*l*w+2*l*h+2*h*w

main :: IO()
main = do
    input <- getLine
    let ord = words input
    let [a,b,c] = map read ord
    putStrLn ( printf "The volume of a %d by %d by %d box is %d." a b c (volume a b c))
    putStrLn (printf "The surface area of a %d by %d by %d box is %d." a b c (area a b c))