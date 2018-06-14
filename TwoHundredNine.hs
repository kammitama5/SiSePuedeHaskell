module TwoHundredNine where

data StringOrInt =
   TisAnInt  Int 
   | TisAString String
   
instance Eq (StringOrInt) where
    (==) (TisAnInt x) (TisAnInt x') = x == x'
    (==) (TisAString y) (TisAString y') = y == y'
    (==) _ _ = False