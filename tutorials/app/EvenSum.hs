module EvenSum (evenSum) where

import Data.List (foldl')

--- initial imperative style ---

evenSum0 l = accumSum 0 l
  where
    accumSum n list =
      if list == [] then n
      else let
        x = head list
        xs = tail list
        in if even x
          then accumSum (n+x) xs
          else accumSum n xs

--- recursive nature of accumulation ---

evenSum1 = accumSum 0 
  where
    accumSum n [] = n
    accumSum n (x:xs) =
      if even x
        then accumSum (n+x) xs
        else accumSum n xs

evenSum2 l = mySum 0 (filter even l)
  where
    mySum n [] = n
    mySum n (x:xs) = mySum (n+x) xs

--- foldl can be used like a loop/recursion without the boilerplate ---
--- foldl takes a reducing function and applies it to all elements ---
add1 = (+)
add2 = (\x y -> x + y)

evenSum3 l = foldl' add1 0 (filter even l)

--- function composition and eta-reduction can be used ---

evenSum4 = (foldl' (+) 0) . (filter even)

evenSum = evenSum4
