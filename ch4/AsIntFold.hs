import Data.Char
import Data.List

type ErrorMessage = String

asIntFold :: String -> Int
asIntFold [] = 0
asIntFold l@(x:xs) = case x of
    '-' -> - (foldl' f 0 xs)
    _   -> foldl' f 0 l
  where f acc x = acc * 10 + digitToInt x

myconcat :: [[a]] -> [a]
myconcat a = foldr (++) [] a