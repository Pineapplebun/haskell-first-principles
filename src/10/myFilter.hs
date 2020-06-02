myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\x acc -> if (f x) then x : acc else acc) []