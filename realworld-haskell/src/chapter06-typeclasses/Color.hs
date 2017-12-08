module Color where

import Data.Char

data Color = Red | Green | Blue

instance Show Color where
  show Red    = "Red"
  show Green  = "Green"
  show Blue   = "Blue"

instance Read Color where
  -- readsPrec is the main function for parsing input
  readsPrec _ value =
    tryParse [("Red", Red), ("Green", Green), ("Blue", Blue)]
    where tryParse [] = []
          tryParse ((attempt, result) : xs) =
            let value' = dropWhile isSpace value
            in if take (length attempt) value' == attempt
               then [(result, drop (length attempt) value')]
               else tryParse xs
