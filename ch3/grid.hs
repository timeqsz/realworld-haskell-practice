import Data.Time (calendarDay)
data Point = Point Float Float
             deriving Show
             
data Direction =    DLeft
                 |  DRight
                 |  DStraight
              deriving Show

calculateDirection :: Point -> Point -> Point -> Direction
calculateDirection (Point ax ay) (Point bx by) (Point cx cy) 
    | degreeAB == degreeBC = DStraight
    | degreeAB < degreeBC = DLeft 
    | otherwise = DRight
    where degreeAB = (by - ay) / (bx - ax)
          degreeBC = (cy - by) / (cx - bx)

calculateDirectionSequence :: [Point] -> [Direction]
calculateDirectionSequence [x,y,z] = [calculateDirection x y z]
calculateDirectionSequence (x:xs) = calculateDirection x (head xs) (xs !! 1) : calculateDirectionSequence xs