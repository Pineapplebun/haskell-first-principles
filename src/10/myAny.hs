myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs)
  | f x == True = True
  | otherwise = myAny f xs


myAny1 :: (a -> Bool) -> [a] -> Bool
myAny1 f l = foldr (\a b -> if ((f a) == True) then True else b) False l

