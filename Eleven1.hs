{-# LANGUAGE NoMonomorphismRestriction #-}

module Eleven1 where

    example = 1
    a = (* 9) 6
    b = head [(0, "doge"), (1, "kitten")]
    c = head [(0 :: Integer, "doge"), (1, "kitten")]
    d = if False then True else False
    e = length [1, 2, 3, 4, 5]
    f = (length [1, 2, 3, 4]) > (length "TACOCAT")


-- a :: Num a => a
-- b :: Num a => (a, [Char])
-- c :: (Integer, [Char])
-- d :: Bool
-- e :: Int
-- f :: Bool