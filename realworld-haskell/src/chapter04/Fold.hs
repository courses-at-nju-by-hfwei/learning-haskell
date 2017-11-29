-- File: chapter04/Fold.hs

-- fold from the left
foldl'' :: (a -> b -> a) -> a -> [b] -> a
foldl'' step acc (x : xs) = foldl'' step (step acc x) xs
foldl'' _    acc []       = acc

foldlSum :: [Int] -> Int
foldlSum = foldl'' (+) 0

-- fold from the right
foldr'' :: (a -> b -> b) -> b -> [a] -> b
foldr'' step acc (x : xs) = step x (foldr'' step acc xs)
foldr'' _    acc []       = acc

-- relation between foldr and [] a
list :: [a] -> [a]
list = foldr (:) []

-- implementing id using foldr
identity :: [a] -> [a]
identity = foldr (:) []

-- implementing filter using foldr
filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr step []
    where step x xs
            | p x       = x : xs
            | otherwise = xs

-- implementing append using foldr
append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs

