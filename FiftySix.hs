module FiftySix where
    fibs = 1 : scanl (+) 1 fibs
    fibsN x = take x $ fibs

    fibs' = 1 : scanl (+) 1 fibs'
    fibsN' = take 20 $ fibs'

    fibs1 = 1 : scanl (+) 1 fibs1
    fibsN1 = (takeWhile (< 100) fibs1)