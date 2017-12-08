-- File: chapter04/Sum.hs

mySum = helper 0
  where helper acc [] = []
        helper acc (x : xs) = helper (acc + x) xs
