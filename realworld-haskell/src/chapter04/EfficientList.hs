mySmartExample :: String -> Char
mySmartExample xs = if not (null xs)
                    then head xs
                    else 'Z'

myOtherExample :: String -> Char
myOtherExample (x : _) = x
myOtherExample []      = 'Z'
