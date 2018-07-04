module Fourteenaa where

    functionH :: [a] -> a
    functionH (x:_) = x

    functionC :: Ord a => a -> a -> Bool
    functionC x y = if (x > y) then True else False

    functionS :: (a ,a) -> a
    functionS (x, y) = y