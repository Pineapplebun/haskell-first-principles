module Chapter6Section14 where
  chk :: Eq b => (a -> b) -> a -> b -> Bool
  chk fab a b = (fab a) == b

  arith :: Num b
        => (a -> b)
        -> Integer
        -> a
        -> b
  arith fab i a = (fab a)
