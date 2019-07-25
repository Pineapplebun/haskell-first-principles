module Chapter9Section7 where
    mySqr = [x^2 | x <- [1..5]]
    myCube = [x^3 | x <- [1..5]]
    myTuples = [(x, y) | x <- mySqr, y <- myCube]
    myTuplesLTA50 = [(x, y) | (x, y) <- myTuples, x < 50, y < 50 ]

    listLength [] = 0
    listLength l@(x:xs) = 1 + listLength xs