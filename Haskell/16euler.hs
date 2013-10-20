module Euler16
        where
        
    import Char

-- Euler 16

    euler16 = sumDig a
        where
            n = 2^1000
            a = show n

    sumDig [] = 0
    sumDig (x:xs) = digitToInt x + sumDig xs
