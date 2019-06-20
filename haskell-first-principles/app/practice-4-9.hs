module Practice49 where
  isPalindrome :: (Eq a) => [a] -> Bool
  isPalindrome s = reverse s == s

  myAbs :: Integer -> Integer
  myAbs a = if a > 0
            then a
            else
              negate a

  f :: (a, b) -> (c, d) -> ((b, d), (a, c))
  f x y = ((snd x, snd y), (fst x, fst y))
