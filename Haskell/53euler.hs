module Euler53
        where

        import Snippets

        -- Euler 53

        euler53 = length x
            where
                x = calcBins 1 0

        calcBins n r
                | r > n         = calcBins (n+1) 0
                | n > 100       = []
                | x < 1000000   = calcBins n (r+1)
                | otherwise     = calcBins n (r+1)
                where
                    x = binom n r
