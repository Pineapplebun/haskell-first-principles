capitalizeWords :: String -> [(String, String)]
capitalizeWords text

tokenizer :: String -> [String] -> [String]
tokenizer text@(t:ts) accumulator
  | t == ' ' = 
  