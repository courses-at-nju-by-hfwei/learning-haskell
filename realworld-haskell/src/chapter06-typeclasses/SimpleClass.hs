{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverlappingInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module SimpleClass where

import Data.List

class Foo a where
  foo :: a -> String

-- foo [1 :: Int, 2 :: Int, 3 :: Int]
instance Foo a => Foo [a] where
  foo = intercalate ", " . map foo

-- foo 'a'
instance Foo Char where
  foo c = [c]

-- foo "abc"
instance Foo String where
  foo = id

-- foo [1 :: Int, 2 :: Int, 3 :: Int]
instance (Show a) => Foo a where
  foo = show
