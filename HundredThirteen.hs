module HundredThirteen where

-- Given a type, write the function

-- 1. (identity)
i :: a -> a
i x = id x

-- 2. (const)
c :: a -> b -> a
c x y = x 

-- 3. (const but args have to be in the right order)
c'' :: b -> a -> b
c'' y x = y

-- 4. (seq)
c' :: a -> b -> b
c' x y = y

-- 5. (identity)
r :: [a] -> [a]
r x = x

-- 6. (compose)
co :: (b -> c) -> (a -> b) -> a -> c
co y a = (.) y a

--7. 
a :: (a -> c) -> a -> a
a x z = z

-- 8. 
a' :: (a -> b) -> a -> b
a' x z = x $ z