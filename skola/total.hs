-- 2023 Alfred Roos


add :: Int -> Int -> IO()
add 0 sum = print sum
add termsLeft sum = do
    input <- getLine
    add ( termsLeft-1 ) ( sum + (read input) )

main :: IO()
main = do
    input <- getLine
    let terms = read input
    add terms 0
    
