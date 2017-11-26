-- ch03/AlgebraicVector.hs

module AlgebraicVector where

-- x and y coordinates or lengths
data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

-- Angle and distance
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)
