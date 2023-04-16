splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith f [] = []
splitWith f xs = case pre of
    [] -> splitWith f (safetail left)
    _  -> pre : splitWith f (safetail left)
    where (pre,left) = break f xs
          safetail [] = []
          safetail t = tail t