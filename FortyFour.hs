module FortyFour where

    funcZ x = 
        case x + 1 == 1 of
            True -> "AWESOME"
            False -> "wut"

    pal xs =
        case xs == reverse xs of
            True -> "yes"
            False -> "no"

    pal' xs =
        case y of 
            True -> "yes"
            False -> "no"
        where y = xs == reverse xs

    functionC x y =
        case (x > y) of
            True -> x
            False -> y

    ifEvenAdd2 n =
        case n `mod` 2 == 0 of
            True -> n + 2
            False -> n

    nums x =
        case x `compare` 0 of
            EQ -> 0
            LT -> -1
            GT -> 1