import Data.Char

vignereCipherEncode :: String -> String -> String -> String
vignereCipherEncode [] _ accumulator = accumulator
vignereCipherEncode message@(m:ms) secret@(y:ys) accumulator
  | m == ' ' = vignereCipherEncode ms secret (accumulator ++ [' '])
  | otherwise = vignereCipherEncode ms (rotate secret) (accumulator ++ [shiftCharRightCharTimes m y])

vignereCipherDecode :: String -> String -> String -> String
vignereCipherDecode [] _ accumulator = accumulator
vignereCipherDecode message@(m:ms) secret@(y:ys) accumulator
  | m == ' ' = vignereCipherDecode ms secret (accumulator ++ [' '])
  | otherwise = vignereCipherDecode ms (rotate secret) (accumulator ++ [shiftCharLeftCharTimes m y])

rotate :: String -> String
rotate (l:ls) = ls ++ [l]

shiftCharRightCharTimes :: Char -> Char -> Char
shiftCharRightCharTimes x c
  | not (isAlpha c && isAlpha x) = error "Not Alphabetical"
  | (isUpper x || isLower x) = shiftCharNTimes (+) x (numberInAlphabet c)

shiftCharLeftCharTimes :: Char -> Char -> Char
shiftCharLeftCharTimes x c
  | not (isAlpha c && isAlpha x) = error "Not Alphabetical"
  | (isUpper x || isLower x) = shiftCharNTimes (-) x (numberInAlphabet c)

shiftCharNTimes :: (Int -> Int -> Int) -> Char -> Int -> Char
shiftCharNTimes shift x n
  | (isUpper x) = chr ((mod (shift (numberInAlphabet x) n) 26) + 65)
  | (isLower x) = chr ((mod (shift (numberInAlphabet x) n) 26) + 97)
  | otherwise = error "Not Alphabetical"

numberInAlphabet :: Char -> Int
numberInAlphabet x
  | isUpper x = ord x - 65
  | isLower x = ord x - 97
  | otherwise = error "Not Alphabetical"