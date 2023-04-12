import Data.Time (calendarDay)
data Point = Point Float Float
             deriving Show
             
data Direction =    DLeft
                 |  DRight
                 |  DStraight
              deriving Show

calculateDirection :: Point -> Point -> Point -> Direction
calculateDirection (Point ax ay) (Point bx by) (Point cx cy) 
    | crossproduct == 0 = DStraight
    | crossproduct > 0 = DLeft 
    | otherwise = DRight
    where crossproduct = (cx - ax) * (cy - by) - (cx - bx) * (cy - ay)

calculateDirectionSequence :: [Point] -> [Direction]
calculateDirectionSequence [x,y,z] = [calculateDirection x y z]
calculateDirectionSequence (x:xs) = calculateDirection x (head xs) (xs !! 1) : calculateDirectionSequence xs