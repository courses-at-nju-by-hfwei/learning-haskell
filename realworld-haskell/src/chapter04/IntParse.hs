-- File: chapter04/IntParse.hs

import Data.Char (digitToInt)

asInt :: String -> Int
asInt = loop 0

loop :: Int -> String -> Int
loop acc [] = acc
loop acc (x : xs) = let acc' = acc * 10 + digitToInt x
                    in  loop acc' xs
