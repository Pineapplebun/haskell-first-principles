myElem :: Eq a => a -> [a] -> Bool
myElem a l = any (== a) l

myElem1 :: Eq a => a -> [a] -> Bool
myElem1 a l = foldr (\x y -> if (x == a) then True else y ) False l