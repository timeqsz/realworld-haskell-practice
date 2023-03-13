data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

data MyTree a = MyNode a (Maybe (MyTree a)) (Maybe (MyTree a))
                deriving (Show)

mytree = MyNode 3 (Just (MyNode 3 Nothing Nothing)) Nothing

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node a x y) = max  (1 + treeHeight x)  (1 + treeHeight y)