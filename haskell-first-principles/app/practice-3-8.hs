module Practice38 where
  thirdLetter :: String -> Char
  thirdLetter a = a !! 2

  rvrs :: String -> String
  rvrs s = drop 9 s ++ (take 4 (drop 5 s)) ++ take 5 s
  
  printRvrs :: IO ()
  printRvrs = do
    putStrLn s
      where s = rvrs "curry is awesome"