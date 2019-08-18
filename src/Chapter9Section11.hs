module Chapter9Section11 where

-- 1. Zip

zip1 :: [a] -> [b] -> [(a, b)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (x:xs) (y:ys) = (x, y) : zip1 xs ys

-- 2. ZipWith

zipWith1 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith1 f [] _ = []
zipWith1 f _ [] = []
zipWith1 f (x:xs) (y:ys) = f x y : zipWith1 f xs ys

-- 3. Zip using ZipWith

zip2 :: [a] -> [b] -> [(a, b)]
zip2 a b = zipWith1 (\x -> \y -> (x, y)) a b