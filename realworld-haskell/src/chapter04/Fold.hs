-- File: chapter04/Fold.hs

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step acc (x : xs) = foldl' step (step acc x) xs
foldl' _    acc []       = acc

foldlSum :: [Int] -> Int
foldlSum = foldl' (+) 0
