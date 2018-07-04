module Five where
    -- we want a function that adds 1 to the length of a string and returns that result
    addOnelength :: [a] -> Integer
    addOnelength [] = 1
    addOnelength [x] = 2
    addOnelength (x:xs) = 1 + addOnelength (xs)