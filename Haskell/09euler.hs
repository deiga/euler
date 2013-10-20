module Euler9
        where
        
        -- Euler 9

        euler9 = filter p (x:xs)
            where
                p x = (first x + second x + third x) == 1000
                (x:xs) = triples 2 1

        triples m n
                | a == 500          = []
                | n >= m            = triples (m+1) 1 
                | a^2+b^2 == c^2    = (a,b,c) : triples m (n+1)
                | otherwise         = triples m (n+1)
                where
                    a = 2*m*n
                    b = m^2 - n^2
                    c = m^2 + n^2

        first (x,_,_) = x
        second (_,x,_) = x
        third (_,_,x) = x

