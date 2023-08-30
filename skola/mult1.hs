
-- 2023 Alfred Roos

mult :: Int -> Int -> Int -> Int
mult a b z = a*b*z

main :: IO()
main = do
    input <- getLine
    let ord = words input
    let [a,b,z] = map read ord :: [Int]

    print (mult a b z)