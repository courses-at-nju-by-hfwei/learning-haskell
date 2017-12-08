-- File: chapter04/Map.hs

import Data.Char (toUpper)

square :: [Double] -> [Double]
square [] = []
square (x : xs) = x * x : square xs

square' :: [Double] -> [Double]
square' = map (\x -> x * x)

upperCase :: String -> String
upperCase [] = []
upperCase (x : xs) = toUpper x : upperCase xs

upperCase' :: String -> String
upperCase' = map toUpper

myMap :: (a -> b) -> [a] -> [b]
myMap f (x : xs) = f x : myMap f xs
myMap _ _        = []
