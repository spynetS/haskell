
-- 2023 Alfred Roos

add :: Int -> Int -> Int
add a b = a+b

main :: IO()
main = do
    input <- getLine
    let [a,b] = words input
    print (add (read a::Int) (read b::Int))
