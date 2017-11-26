-- file: ListADT.hs

module ListADT where

data List a = Cons a (List a)
            | Nil
              deriving (Show)

