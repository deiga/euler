module Euler69
        where

        -- Euler 69
        
       -- euler69 :: (Num a) => (a,a)
        euler69 = testTot 1 (2,1)

        testTot n (x,y)
                | n == 1000000      = (x,y) 
                | a > b             = testTot (n+1) z
                | otherwise         = testTot (n+1) (x,y)
                where
                    z = (n, totient n)
                    a = fromInteger (fst z) / fromInteger (snd z)
                    b = fromInteger x / fromInteger y

        totient :: Integer -> Integer
        totient n = tot n (n-1)

        tot :: Integer -> Integer -> Integer
        tot _ 0 = 0
        tot n p
            | gcd p n == 1  = 1 + tot n (p-1)
            | otherwise     = tot n (p-1)
