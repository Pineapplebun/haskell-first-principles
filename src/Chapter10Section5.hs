module Chapter10Section5 where
    
    a = foldr (*) 1 [1..5]
    b = foldl (flip (*)) 1 [1..5]

    -- 5
    -- foldr (++) [] ["woot", "WOOT", "woot"]
    -- foldr max [] ["fear is the little death"]
    -- and [False, True]
    -- foldr (&&) True [False, True]
    -- or [False, True]
    -- foldr (||) False [False, True]
    -- foldr ((++) . show) "" [1..5]
    -- foldl const 'a' [1..5]
    -- foldl const 0 "tacos"
    -- foldr (flip const) 0 "burritos"
