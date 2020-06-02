module Cipher where

import Data.Char

caesar :: String -> Int -> String
caesar [] _ = []
caesar (x:xs) n = (shiftCharRightNTimes x n) : caesar xs n

shiftCharRightNTimes :: Char -> Int -> Char
shiftCharRightNTimes x n
    | (64 < ord x) && (ord x < 91) = chr ((mod ((ord x) + n - 65) 26) + 65)
    | (96 < ord x) && (ord x < 123) = chr ((mod ((ord x) + n - 97) 26) + 97)
    | otherwise = error "Not Alphabetical"

uncaesar :: String -> Int -> String
uncaesar [] _ = []
uncaesar (x:xs) n = (shiftCharLeftNTimes x n) : uncaesar xs n

shiftCharLeftNTimes :: Char -> Int -> Char
shiftCharLeftNTimes x n
    | (64 < ord x) && (ord x < 91) = chr ((mod ((ord x) + n - 65) 26) + 65)
    | (96 < ord x) && (ord x < 123) = chr ((mod ((ord x) + n - 97) 26) + 97)
    | otherwise = error "Not Alphabetical"