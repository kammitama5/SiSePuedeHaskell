module TwoHundred where

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing x = if (x == "Singing") then fstString "Singing" else sndString "Somewhere"
   