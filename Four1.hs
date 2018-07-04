module Four1 where 
    f :: (a, b) -> (c, d) -> ((b, d), (a, c))
    f (x, y) (r, s) = (,) (y, s) (x, r)