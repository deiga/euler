module Euler36
        where

        -- Euler 36

        paliNr a 
            | z == y    = True
            | otherwise = False
            where y = reverse (z)
                  z = show a
 
        euler36 = sum a 
            where
                a = filter p1 b
                b = filter p [1..1000000]
                p = paliNr
                p1 x = z == y
                    where
                        y = reverse z
                        z = decToBin x

        decToBin x = reverse $ decToBin' x
                where
                    decToBin' 0 = []
                    decToBin' y = b : decToBin' a
                            where
                                (a,b) = quotRem y 2
