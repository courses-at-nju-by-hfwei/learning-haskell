module NewType where

data DataInt = D Int
  deriving (Show, Eq, Ord)

newtype NewtypeInt = N Int
  deriving (Show, Eq, Ord)

