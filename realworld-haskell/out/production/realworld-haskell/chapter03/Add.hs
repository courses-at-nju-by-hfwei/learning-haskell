-- File: Add.hs

module Add where

sumList :: Num a => [a] -> a

sumList (x : xs) = x + sumList xs
sumList [] = 0
