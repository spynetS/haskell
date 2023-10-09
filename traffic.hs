-- 2023 Alfred Roos

data TrafficLight  =  Red | Yellow | Green
  deriving (Eq, Show)

-- Returns the next state in a Traffic Light
-- remember traffic lights cycle between
-- green, yellow then red in that order.
next :: TrafficLight -> TrafficLight
next l
  | l == Red = Green
  | l == Green = Yellow
  | otherwise = Red

-- Returns the previous state in a Traffic Light
prev :: TrafficLight -> TrafficLight
prev l
  | l == Green = Red
  | l == Yellow = Green
  | otherwise = Yellow

-- Computes whether a given transition is valid
valid :: TrafficLight -> TrafficLight -> Bool
valid  l1 l2 = next l1 == l2
