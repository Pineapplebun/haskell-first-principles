myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy c [] = error "called on empty list"
myMaximumBy c (y:ys) = foldr (\x acc -> if ((c x acc) == GT) then x else acc) y ys