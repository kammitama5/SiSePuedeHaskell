module TwoHundredEight where

data TisAnInteger =
   TisAn Integer
   
instance Eq (TisAnInteger) where
    (==) (TisAn x) (TisAn x') = x == x'
    
data TwoIntegers =
   Two Integer Integer
   
instance Eq (TwoIntegers) where
    (==) (Two x y ) (Two x' y') = x == x' && y == y'
    
