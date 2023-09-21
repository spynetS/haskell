
mul :: Int -> Int ->Int
mul x y = x * 2 + y

main :: IO()
main = do
    let addT = (mul 2)
    print $ addT 4



