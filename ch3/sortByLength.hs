import Data.List 
sortByLength :: [[a]] -> [[a]]
sortByLength = sortBy (\ x y -> compare (length x) (length y))