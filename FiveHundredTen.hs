module FiveHundredTen where

    data Operator' = 
        Addition String Integer Integer 
        | Subtraction String Integer Integer
        | Multiplication String Integer Integer 
        | Division String Integer Integer
        | Modulation String Integer Integer deriving (Show)

    op' :: Operator' -> Integer
    op' (Addition _ x y) = x + y
    op' (Subtraction _ x y) = x - y
    op' (Multiplication _ x y) = x * y
    op' (Division _ x y) = x `div` y
    op' (Modulation _ x y) = x `mod` y

    -- use with op' $ Addition String Int Int
    -- you could technically pass *any* string and it would work :D
    -- Integer means the division sucks
    




