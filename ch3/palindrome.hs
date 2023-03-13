palindrome :: [a] -> [a]
palindrome xs = xs ++ reverse xs

ispalindrome :: Eq a => [a] -> Bool
ispalindrome xs = xs == reverse xs