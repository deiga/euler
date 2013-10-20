module Euler56
        where

        import Char

        -- Euler 56

        euler56 = testBase 1 0

        testBase 100 x          = x
        testBase a x
                | z > x     = testBase (a+1) z
                | otherwise     = testBase (a+1) x
                where
                    z = testExp a 1 x

        testExp a 100 x         = x
        testExp a b x
                | z > x     = testExp a (b+1) z
                | otherwise     = testExp a (b+1) x
                where
                    z = calcSum a b
                    
        calcSum a b = sum n
                where 
                    y = show (a^b)
                    n = map digitToInt y
