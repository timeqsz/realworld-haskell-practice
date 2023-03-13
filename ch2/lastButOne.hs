lastButOne :: [a] -> Maybe a
lastButOne [x,y] = Just x
lastButOne [x]   = Nothing
lastButOne []    = Nothing
lastButOne (x:xs) = lastButOne xs