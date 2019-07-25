module Print3Broken where
  greeting = "Yarrrrr"
  printSecond :: IO ()
  printSecond = do
    putStrLn greeting
  