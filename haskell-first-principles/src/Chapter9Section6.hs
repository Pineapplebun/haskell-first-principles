module Chapter9Section6 where
    -- 1. Need to always check the first character to remove spaces
    myWords :: [Char] -> [[Char]]
    myWords [] = []
    myWords a@(x:xs)
        | x == ' ' = myWords xs
        | otherwise = takeWhile (/=' ') a : myWords (dropWhile (/=' ') a)

    -- 2. Same logic 
    myLines :: String -> [String]
    myLines [] = []
    myLines a@(x:xs)
        | x == '\n' = myLines xs
        | otherwise = takeWhile (/='\n') a : myLines (dropWhile (/='\n') a)

    -- 3. Notice that the above functions are essentially the same
    mySeparator :: Char -> String -> [String]
    mySeparator _ [] = []
    mySeparator c s@(x:xs)
        | x == c = mySeparator c xs
        | otherwise = takeWhile (/=c) s : mySeparator c (dropWhile (/=c) s)

    mySentences s = mySeparator '.' s
    myLinesV2 s = mySeparator '\n' s
    myWordsV2 s = mySeparator ' ' s