-- Slow version
myReverse :: [a] -> [a]
myReverse = foldr (\x acc -> acc ++ [x]) []

-- Fast version
myReverse1 :: [a] -> [a]
myReverse1 = foldl (\acc y -> y : acc) []

-- Non-fold version but needs an extra argument and tail recursion (left associative)
myReverse2 :: [a] -> [a] -> [a]
myReverse2 (x:xs) acc = myReverse2 xs (x:acc)
myReverse2 [] acc = acc