-- 2023 Alfred Roos

import Prelude hiding (sum, product)

-- computes the sum of a given list
-- sum [1,2,3] should be 1 + 2 + 3 = 6
sum :: Num a => [a] -> a
sum inputs = foldl (+) (head inputs) (tail inputs)

-- computes the product of a given list
-- product [1,2,3] should be 1 * 2 * 3 = 6
product :: Num a => [a] -> a
product inputs =  foldl (*) (head inputs) (tail inputs)


-- computes the "chained" power of a given list
-- power [3,2,1] should be 3 ^ (2 ^ 1) = 9
-- power [1,3,3,7] should be 1 ^ (3 ^ (3 ^ 7)) = 1
power :: Integral a => [a] -> a
power [] = 1
power (x:inputs) = x^(power inputs)
