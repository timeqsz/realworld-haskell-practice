-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact wordCount
-- count words
    where wordCount input = show (length (words input)) ++ "\n"