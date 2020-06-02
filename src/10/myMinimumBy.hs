myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy c [] = error "received empty list"
myMinimumBy c (y:ys) = foldr (\x acc -> if (c x acc) == LT then x else acc) y ys