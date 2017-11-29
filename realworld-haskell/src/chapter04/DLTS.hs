-- File: chapter04/DLTs.hs
-- Exact names of pattern DLT_* from a C header file

-- #define DLT_EN10MB 1 /* Ethernet (10Mb) */
-- #define DLT_EN3MB  2 /* Experimental Ethernet (3Mb) */
-- #define DLT_AX25   3 /* Amateur Radio AX.25 */

import Data.List (isPrefixOf)

dlts :: String -> [String]
dlts = map (head . tail . words). filter (prefix `isPrefixOf`) . lines
  where prefix = "#define DLT_"

dlts' = foldr step [] . lines
  where step l ds
            | "#defind DLT_" `isPrefixOf` l = secondWord l : ds
            | otherwise                     = ds
        secondWord = head . tail . words
