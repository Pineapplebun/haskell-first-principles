squish :: [[a]] -> [a]
squish = foldr (\x acc -> x ++ acc ) []
