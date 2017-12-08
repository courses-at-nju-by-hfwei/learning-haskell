import Data.Char

-- capCount: Count the number of words in a string that begins with a capital letter
capCount :: String -> Int
capCount = length . filter (isUpper . head) . words
