-- 2023 Alfred Roos 
import Text.Printf 

getK :: Double -> Double -> Double
getK dy dx = dy/dx

getM :: Double -> Double -> Double -> Double
getM x y k = y - (k*x)

main :: IO()
main = do
    input <- getLine
    let [x1,y1,x2,y2] = map read $ words input :: [Double]
    let k = getK (y1-y2) (x1-x2) :: Double
    let m = getM x1 y1 k 

    putStrLn $ printf "f(x) = %.1f*x + %.1f" k m



