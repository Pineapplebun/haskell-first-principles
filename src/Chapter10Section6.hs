module Chapter10Section6 where
    import Data.Time
    data DatabaseItem = DbString String
                        | DbNumber Integer
                        | DbDate UTCTime
                        deriving (Eq, Ord, Show)
    theDatabase :: [DatabaseItem]
    theDatabase =
        [ DbDate (UTCTime
            (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123))
        , DbNumber 9001
        , DbString "Hello, world!"
        , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
        ]
    
    filterDbDate :: [DatabaseItem] -> [UTCTime]
    filterDbDate = foldr (filterDatabaseItem) []
    
    filterDatabaseItem :: DatabaseItem -> [UTCTime] -> [UTCTime]
    filterDatabaseItem (DbDate x) xs = x : xs
    filterDatabaseItem _ xs = xs

    filterDbNumber :: [DatabaseItem] -> [Integer]
    filterDbNumber = foldr filterDatabaseItemForNumber []

    filterDatabaseItemForNumber :: DatabaseItem -> [Integer] -> [Integer]
    filterDatabaseItemForNumber (DbNumber x) xs = x : xs
    filterDatabaseItemForNumber _ xs = xs
    
    mostRecent :: [DatabaseItem] -> UTCTime
    mostRecent = foldr compareUTCTime (UTCTime (fromGregorian 1970 1 1) (secondsToDiffTime 0))

    compareUTCTime :: DatabaseItem -> UTCTime -> UTCTime
    compareUTCTime (DbDate x) y
        | x >= y = x
        | otherwise = y
    compareUTCTime _ y = y

    sumDb :: [DatabaseItem] -> Integer
    sumDb = foldr sumDbNumber 0

    sumDbNumber :: DatabaseItem -> Integer -> Integer
    sumDbNumber (DbNumber x) y = x + y
    sumDbNumber _ y = y

    avgDb :: [DatabaseItem] -> Double
    avgDb items = fromIntegral(foldr sumDbNumber 0 items) / fromIntegral(length (filterDbNumber items))