module Euler48
        where

        -- Euler 48

        euler48 = last10 z
            where
                x = mkLi [1..1000]
                z = show $ sum x

        last10 [] = []
        last10 l1 
            | length l1 >= 10   = drop (length l1 - 10) l1
            | otherwise         = error "Too short a list, moron!"

        mkLi :: (Integral a) => [a] -> [a]
        mkLi []     = []
        mkLi (x:xs) = (x^x) : mkLi xs
