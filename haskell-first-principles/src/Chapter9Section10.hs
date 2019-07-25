module Chapter9Section10 where
    import Chapter9Section6


    filterMultiplesOf3 :: [Int] -> [Int]
    filterMultiplesOf3 list = filter (\x -> (rem x 3) == 0) list

    numberOfMultiplesOf3 :: Int -> Int -> Int
    numberOfMultiplesOf3 start end = length $ filterMultiplesOf3 [start..end]

    isRestricted :: [String] -> String -> Bool
    isRestricted [] _ = False
    isRestricted l@(w:ws) word
        | w == word = True
        | otherwise = isRestricted ws word

    removeRestrictedWords :: [String] -> [String] -> [String]
    removeRestrictedWords restrictedWords words = filter (\w -> isRestricted restrictedWords w /= True) words

    removeRestrictedWordsFromString :: [String] -> String -> [String]
    removeRestrictedWordsFromString restrictedWords string = removeRestrictedWords restrictedWords $ myWords string