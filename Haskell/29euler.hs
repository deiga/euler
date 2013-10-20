module Euler29
        where

        import List (nub)

        -- Euler 29

        euler29 = length $ nub $ combs 2 2

        combs a b 
            | b > 100       = combs (a+1) 2
            | a > 100       = []
            | otherwise     = a^b : combs a (b+1)
