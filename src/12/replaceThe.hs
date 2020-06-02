notThe :: String -> Maybe String
notThe s = if s == "the" then Nothing else Just s

replaceThe :: String -> String
replaceThe s = unwords (checkThe (map notThe (words s)))

checkThe :: [Maybe String] -> [String]
checkThe [] = []
checkThe (w:ws) = case w of
  Nothing -> "a" : (checkThe ws)
  (Just s) -> s : (checkThe ws)
