module Euler20
        where
    
    import Char
    
    -- Euler 20

    euler20 = sumDig p
        where
            a = fact 100
            p = show a

    fact n = product [1..n]

    sumDig [] = 0
    sumDig (x:xs) = digitToInt x + sumDig xs
