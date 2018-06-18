module Funcs where

functionC x y =
    case (x > y) of
        True -> x
        False -> y
    
      
ifEvenAdd2 n = 
    case ( n `mod` 2 == 0) of
        True -> n + 2
        False -> n