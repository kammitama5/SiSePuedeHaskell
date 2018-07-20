module TwentySeven where
    eftBool :: Bool -> Bool -> [Bool]
    eftBool x y = [x] ++ [y]

    eftOrd :: Ordering
            -> Ordering
            -> [Ordering]
    eftOrd x y = [x] ++ [y]

    eftInt :: Int -> Int -> [Int]
    eftInt x y = [x] ++ [y]

    eftChar :: Char -> Char -> [Char]
    eftChar x y= [x] ++ [y]