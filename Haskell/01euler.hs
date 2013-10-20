    sumMults :: Integer -> Integer -> Integer
    sumMults x y = z - sum [(x*y),(x*y*2)..1000]
        where z = sumMult x 0 + sumMult y 0

    sumMult :: Integer -> Integer -> Integer
    sumMult x y
        | z < 1000 = z + sumMult x (y+1)
        | otherwise = 0
        where z = x * y
