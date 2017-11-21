-- file: Tree.hs

module Tree where

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

--badNodesAreSame (Node a _ _) (Node a _ _) = Just a
--badNodesAreSame _            _            = Nothing

nodesAreSame (Node a _ _) (Node b _ _)
     | a == b   = Just a
nodesAreSame _ _ = Nothing
