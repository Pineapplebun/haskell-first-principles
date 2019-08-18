module Cipher where

import Data.Char

caesar :: String -> Int -> String
caesar [] _ = []
caesar (x:xs) shiftr
    | (64 < ord x) && (ord x < 91) = chr ((mod ((ord x) + shiftr - 65) 26) + 65) : caesar xs shiftr
    | (96 < ord x) && (ord x < 123) = chr ((mod ((ord x) + shiftr - 97) 26) + 97) : caesar xs shiftr
    | otherwise = []

uncaesar :: String -> Int -> String
uncaesar [] _ = []
uncaesar (x:xs) shiftr
    | (64 < ord x) && (ord x < 91) = chr ((mod ((ord x) - shiftr - 65) 26) + 65) : uncaesar xs shiftr
    | (96 < ord x) && (ord x < 123) = chr ((mod ((ord x) - shiftr - 97) 26) + 97) : uncaesar xs shiftr
    | otherwise = []