module Chapter10Section10 where
    -- WARMUP AND REVIEW
    -- 1 (a) Find all three tuple permutations of stop vowel stop
    stops = "pbtdkg"
    vowels = "aeiou"

    stopVowelStop :: String -> String -> [String]
    stopVowelStop [] _ = []
    stopVowelStop _ [] = []
    stopVowelStop stops@(x:xs) vowels@(y:ys) =
        (stopVowelStopPermutations y stops) ++ (stopVowelStop stops ys)

    -- Find all 3 tuple permutations with vowel in the middle
    stopVowelStopPermutations :: Char -> String -> [String]
    stopVowelStopPermutations vowel consonants = 
        map (insertMiddle vowel) (stopStopPermutations consonants)

    -- Insert a character into the middle of a 2 char string
    insertMiddle :: Char -> String -> String
    insertMiddle v (x:xs) = (x : v : xs)
        
    -- Find all 2 tuple permutations of a unique string
    -- Note that this is just the cartesian product!
    -- [x] ++ [y] is same as x : [y] iff x and y are char
    stopStopPermutations :: String -> [String]
    stopStopPermutations consonants = [ x : [y] | x <- consonants, y <- consonants]

    -- 1 (b) Find all permutations that start with p
    
    allPermutationsStartingWithP = filter (\(x:xs) -> x == 'p') (stopVowelStop stops vowels)

    -- 1 (c) Find all noun verb noun permuations
    
    -- TODO: This is just the same thing but you need to create a list of nouns and verbs first.
    -- Likely the idea is to generalize the function to make any [a, b, a] combination

    -- 2 This mystery function takes the average (integer) length of each word in string x
    seekritFunc x = div (sum (map length (words x))) (length (words x))

    -- 3
    seekritFuncPrecise x = (fromIntegral (sum (map length (words x)))) / (fromIntegral (length (words x)))

    -- REWRITING WITH FOLDS
    
    -- 1
    
    myOr :: [Bool] -> Bool
    
    -- DIRECT RECURSION WITHOUT (||)
    
    -- myOr [] = False
    -- myOr (x:xs)
    --     | x == True = True
    --     | otherwise = myOr xs

    -- DIRECT RECURSION WITH (||)
    
    -- myOr (x:xs) = x || myOr xs

    -- FOLDR WITHOUT POINT FREE
    
    -- myOr = foldr (\a b -> if a == True then True else b) False

    -- FOLDR WITH POINT FREE
    
    myOr = foldr (||) False

    -- 2
    -- 3
    -- 4
    -- 5
    -- 6
    -- 7
    -- 8
    -- 9
    -- 10
    -- 11
