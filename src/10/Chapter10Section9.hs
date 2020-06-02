module Chapter10Section9 where

    fibs = 1 : scanl (+) 1 fibs
    fibsN x = fibs !! x

    fibs20 = take 20 fibs
    fibsLessThan100 = takeWhile ((>) 100) fibs

    -- factorial x
    --     | x == 1 = 1
    --     | x > 1 = x * (factorial (x - 1))

    -- as a scanl
    factorial = scanl (*) 1 [1..] 