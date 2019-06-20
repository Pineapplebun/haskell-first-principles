module PatternMatching (lucky) where

--- Pattern matching functions

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "Try again!"

--- 