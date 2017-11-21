-- file: TaylorExp.hs
-- Calculate e^x according to its Taylor Series

module TaylorExp where

import Numeric
import Data.List.Split

factorial = scanl (*) 1.0 [1 ..]
power x = 1.0 : iterate (*x) x
term x = zipWith (/) (power x) factorial

within precision = takeWhile (> 1/(10^precision))

accum :: (Num a) => [a] -> [a]
accum = scanl1 (+)


formatFloatN precision floatNum = showFFloat (Just precision) floatNum ""


taylorExp x precision = splitEvery 10 (map (formatFloatN precision) (accum (within precision (term x))))
