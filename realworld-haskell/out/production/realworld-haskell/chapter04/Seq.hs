-- File: chapter04/Seq.hs

foldlStrict :: (b -> a -> b) -> b -> [a] -> b

foldlStrict _ acc [] = acc
foldlStrict step acc (x : xs) =
  let new = step acc x
  in  new `seq` foldlStrict step new xs

chained x y z = x `seq` y `seq` z
