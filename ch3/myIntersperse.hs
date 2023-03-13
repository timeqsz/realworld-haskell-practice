myIntersperse :: a -> [[a]] -> [a]
myIntersperse separator xs= case  foldr (\x y -> x ++ [separator] ++ y ) [] xs of
    []  -> []
    ls  -> init ls