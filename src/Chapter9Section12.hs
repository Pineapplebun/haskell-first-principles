module Chapter9Section12 where

import Data.Char

filterUpper :: String -> String
filterUpper s = filter isUpper s

capitalize :: String -> String
capitalize [] = []
capitalize (x:xs) = (toUpper x) : xs

capitalizeAll :: String -> String
capitalizeAll [] = []
capitalizeAll (x:xs) = (toUpper x) : capitalizeAll xs

capitalizeAndReturnHead :: String -> Char
capitalizeAndReturnHead s = (toUpper . head) s