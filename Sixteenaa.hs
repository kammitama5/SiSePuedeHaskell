module Sixteenaa where

    i :: a -> a
    i x = x

    c :: a -> b -> a
    c x _ = x

    c'' :: b -> a -> b
    c'' a _ = a

    r :: [a] -> [a]
    r [] = []
    r (x:xs) = [x]

    co :: (b -> c) -> (a -> b) -> a -> c
    co a b c = a (b c)

    a' :: (a -> b) -> a -> b
    a' a b = a (b)

    
    
