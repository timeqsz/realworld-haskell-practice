import Data.Time (calendarDay)
data Point = Point Float Float
             deriving Show
             
data Direction =    DLeft
                 |  DRight
                 |  DStraight
              deriving Show

caculateDirection :: Point -> Point -> Point -> Direction
caculateDirection (Point ax ay) (Point bx by) (Point cx cy) 
    | degreeAB == degreeBC = DStraight
    | degreeAB < degreeBC = DLeft 
    | otherwise = DRight
    where degreeAB = (by - ay) / (bx - ax)
          degreeBC = (cy - by) / (cx - bx)

caculateDirectionSequence :: [Point] -> [Direction]
caculateDirectionSequence [x,y,z] = [caculateDirection x y z]
caculateDirectionSequence (x:xs) = caculateDirection x (head xs) (xs !! 1) : caculateDirectionSequence xs