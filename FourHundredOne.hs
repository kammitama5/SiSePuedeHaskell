module FourHundredOne where

    safeTail :: [a] -> Maybe [a]
    safeTail [] = Nothing
    safeTail (x:[]) = Nothing
    safeTail (_ : xs) = Just xs

    myHead :: [a] -> Maybe a
    myHead [] = Nothing
    myHead (x:[]) = Just x
    myHead (x: _) = Just x