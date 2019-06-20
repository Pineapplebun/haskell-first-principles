module Practice711 where
  tensDigit :: Integral a => a -> a
  -- tensDigit x = d
  --   where xLast = x `div` 10
  --         d     = xLast `mod` 10
  
  -- a)
  divMod10 a = divMod a 10
  shiftRight = fst . divMod10
  -- tensDigit x = snd (divMod10 (fst (divMod10 x)))
  tensDigit = snd . divMod10 . fst . divMod10
  hunsDigit = snd . divMod10 . shiftRight . shiftRight

  -- 2 
  -- Case Expression
  foldBool :: a -> a -> Bool -> a
  -- foldBool x y z = 
  --   case z of
  --     False -> x
  --     True -> y
  
  -- Guard
  foldBool x y z
    | z = y
    | otherwise = x

  -- 3

  g :: (a -> b) -> (a, c) -> (b, c)
  g f t = ((f . fst) t, snd t)

  -- 5
  -- roundTrip :: (Show a, Read a) => a -> a
  -- roundTrip = read . show

  -- 7
  roundTrip :: (Show a, Read b) => a -> b
  roundTrip = read . show
  
  -- main = do
  --   print (roundTrip 4 :: Int)