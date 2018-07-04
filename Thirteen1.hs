{-# LANGUAGE NoMonomorphismRestriction #-}

module Thirteen1 where

    bigNum = (^) 5 10
    wahoo = bigNum * 10

    x = show "hello world" 
    y = print "woohoo!"
    z =  pure x

    a = (+) -- do not evaluate
    b = 5
    c = a b 10
    d = a c 200

    r = 12 + s 
    s = 10000 * c

    
 




