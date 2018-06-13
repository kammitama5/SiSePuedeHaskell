module HundredFour where

f :: a -> a -> a -> a
f = undefined
-- Char -> Char -> Char

g :: a -> b -> c -> b
g = undefined
-- Char

h :: (Num a, Num b) => a -> b -> b
h = undefined
-- Num b => b

h1 :: (Num a, Num b) => a -> b -> b
h1 = undefined
-- Double

jackal :: (Ord a, Eq b) => a -> b -> a
jackal = undefined
-- [Char]

jackal1 :: (Ord a, Eq b) => a -> b -> a
jackal1 = undefined
-- Eq b => b -> [Char]

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined
-- (Num a, Ord a) => a

kessel1 :: (Ord a, Num b) => a -> b -> a
kessel1 = undefined
-- (Num a, Ord a) => a

kessel2 :: (Ord a, Num b) => a -> b -> a
kessel2 = undefined
-- Integer






