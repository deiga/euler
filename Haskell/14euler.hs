-- Euler 14

    euler14 = compL x y
        where
            x = 999999
            y = (0,0)

    compL n (x,y)
            | n == 1    = x
            | z > y     = compL (n-1) (n,z)
            | otherwise = compL (n-1) (x,y)
            where
                z = length l1
                l1 = itSeq n

    itSeq :: Integer -> [Integer]
    itSeq 0 = error "Wrong input, moron!"
    itSeq 1 = [1]
    itSeq n
        | even n    = n : itSeq (n `div` 2)
        | odd n     = n : itSeq (3*n +1)
