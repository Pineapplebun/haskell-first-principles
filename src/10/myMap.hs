myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x acc -> (f x) : acc) []

myMap1 :: (a -> b) -> [a] -> [b]
myMap1 f = foldl (\acc y -> acc ++ [f y]) []