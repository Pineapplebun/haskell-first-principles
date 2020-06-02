isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] [] = True
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf word@(w:ws) text@(t:ts)
  | w == t = isSubseqOf ws ts
  | otherwise = isSubseqOf word ts