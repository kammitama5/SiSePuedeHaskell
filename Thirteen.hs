module Thirteen where

-- toDigits :: Integer -> [Integer]
-- toDigitsRev :: Integer -> [Integer]

-- integer to intList
toDigits :: Integer -> [Int]
toDigits 0 = [0]
toDigits n = map (\x -> read [x] :: Int) (show n)

-- reverse after integer to intList
toDigitsRev :: Integer -> [Int]
toDigitsRev 0 = [0]
toDigitsRev n = reverse $ map (\x -> read [x] :: Int) (show n)

-- add all the digits
sumDigits :: [Integer] -> Integer 
sumDigits [] = 0
sumDigits (x:xs) = x + sumDigits xs

doubleOther = zipWith ($) (cycle [(*2), id])

-- insert with appropriate nums
validate :: Integer -> Bool
validate 0 = False
validate x = if toDigits x == toDigitsRev x then True else False