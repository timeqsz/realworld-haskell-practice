-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact wordCount
-- count chars
    where wordCount input = show (length  input) ++ "\n"