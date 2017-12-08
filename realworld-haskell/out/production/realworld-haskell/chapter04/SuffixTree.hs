-- File: chapter04/SuffixTree.hs

import Data.List

-- using @-pattern
suffixes :: [a] -> [[a]]
suffixes xs@(_:xs') = xs : suffixes xs'
suffixes _          = []

suffixes2 = init . tails

tails':: [a] -> [[a]]
tails' xs@(_:xs') = xs : tails' xs'
tails' _          = [[]]
