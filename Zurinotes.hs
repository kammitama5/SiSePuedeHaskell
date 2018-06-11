module Zurinotes where
    import Data.Char

    isPalindrome :: String -> Maybe String
    isPalindrome "" = Nothing
    isPalindrome xs =
        case xs == reverse xs of
            False -> Just "This is not a palindrome."
            True -> Just "This is a palindrome."

    ignoreSpaces :: String -> String
    ignoreSpaces xs = (concat . words) xs

    ignoreCaps :: String -> String
    ignoreCaps xs = map toLower xs

    ignoreCapsAndSpaces :: String -> String
    ignoreCapsAndSpaces xs = (ignoreCaps . ignoreSpaces) xs

    lla :: (a -> Bool) -> [a] -> Bool
    lla function xs =
        foldr (\x y -> function x && y) True xs

    isWord :: String -> Maybe String
    isWord "" = Nothing
    isWord xs = 
        case all isAlpha xs of
           False -> Nothing
           True -> Just xs

    checkInput :: String -> Maybe String
    checkInput "" = Nothing
    checkInput xs = 
        case (isWord . ignoreCapsAndSpaces) xs of
            Nothing -> Nothing
            Just xs' -> isPalindrome xs'

    maybeMap :: (a -> b) -> Maybe a -> Maybe b
    maybeMap function Nothing = Nothing
    maybeMap function (Just x) = Just (function x)

    -- Maybe
    -- data Maybe a = Nothing | Just a
    -- Either a b = Left a | Right b

    -- fmap :: (a -> b) -> (f a -> f b)
    -- data [] a = [] | a : [a]
    -- :set -XTypeApplications

   --data Maybe a = Nothing | Just a

   --instance Functor Maybe where
    -- fmap :: (a -> b) -> Maybe a -> Maybe b
    --fmap function Nothing = Nothing
    --fmap function (Just x) = Just (function x)

   --fmap :: Functor f => (a -> b) -> (f a -> f b)

   --data Either a b = Left a | Right b

   -- set: turns on language extensions
   -- set: NoImplicitPrelude

   --data (Choice a) b = This a | That b

   --instance Functor (Choice a) where
    --fmap :: (a -> b) -> (Either x) a -> (Either x) b
    --fmap function (This x) = This x
    --fmap function (That b) = That (function b)

    --data Pair a b = Pair a b

    --instance Functor (Pair a) where
    -- fmap (b -> c) -> (Pair x) b -> x c
    --fmap function (Pair x b) = Pair x (function b)
    
    data Possibly a = No | Yes a

    instance Functor Possibly where
        -- fmap :: (a -> b) -> Maybe a -> Maybe b
        fmap function No = No
        fmap function (Yes x) = Yes (function x)


    instance Applicative Possibly where
        pure = Yes
        _ <*> No = No
        No <*> _ = No
        Yes func <*> Yes a = Yes (func a)

    instance Monad Possibly where
        -- return = pure
       (>>=) No _ = No
       (>>=) (Yes a) func = func a
       -- >>= :: Possibly a ( a -> Possibly b) -> Possibly b

    data Sum a b = 
        First a
      | Second b
      deriving (Eq, Show)

    instance Functor (Sum a) where
        fmap _ (First a) = First a
        fmap f (Second b) = Second (f b)

    instance Applicative (Sum a) where
        pure = Second
        (<*>) _ (First a) = First a
        (<*>) (First a) _ = First a
        (<*>) (Second f) (Second b) = Second (f b)

    instance Monad (Sum a) where
        return = pure
        (>>=) (First a) _ = First a
        (>>=) (Second a) f = f a
    
    --instance Monad (Either a) where
        --return = pure
        --(>>=) (Left a) _ = Left a
        --(>>=) (Right a) f = f a

    -- bind is join and fmap

    -- join :: Monad m => m (m a) -> m a

    main = do
        word <- getLine
        -- IO String -> String -> Maybe String -> (Show a => a) -> IO ()
        print (checkInput word)
