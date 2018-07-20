module TwentyFour where
    import Data.List (intersperse, intercalate)

    digitToWord :: Int -> String
    digitToWord n 
        | n == 0 = "Zero"
        | n == 1 = "One"
        | n == 2 = "Two"
        | n == 3 = "Three"
        | n == 4 = "Four"
        | n == 5 = "Five"
        | n == 6 = "Six"
        | n == 7 = "Seven"
        | n == 8 = "Eight"
        | n == 9 = "Nine"
        | otherwise = "None"

    digits :: Int -> [Int]
    digits = (map (read . return) . show)

    wordNumber :: Int -> String
    wordNumber n = intercalate "-" (map digitToWord (digits n))