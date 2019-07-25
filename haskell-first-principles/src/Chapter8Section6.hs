module Chapter8Section6 where

    -- Recursion
    -- 2. This will loop infinitely if passed a negative
    sumAllToN :: (Eq a, Num a) => a -> a
    sumAllToN n 
        | n == 0 = 0
        | otherwise = n + sumAllToN (n-1)

    -- 3. 
    multiply :: (Integral a) => a -> a -> a
    multiply a b 
        | b == 0 = 0
        | (a > 0 && b > 0) || (a < 0 && b > 0) = a + multiply a (b - 1)
        | (a > 0 && b < 0) || (a < 0 && b < 0) = (-a) + multiply a (b + 1)