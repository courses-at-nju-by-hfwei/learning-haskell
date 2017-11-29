-- File: chapter04/Partial.hs

import Data.List (isInfixOf)

isInAnyWhere :: String -> [String] -> Bool
isInAnyWhere needle = any inSequence
  where inSequence s = needle `isInfixOf` s

isInAny :: String -> [String] -> Bool
isInAny needle = any (needle `isInfixOf`)

