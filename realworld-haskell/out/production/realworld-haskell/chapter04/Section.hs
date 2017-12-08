-- File: chapter04/Section.hs
isLower' :: Char -> Bool
isLower' = (`elem` ['a'..'z'])

isLowerStr :: String -> Bool
isLowerStr = all (`elem` ['a'..'z'])
