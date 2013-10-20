    
    import Sieve

    primes' :: Integer -> [Integer]
    primes' x = sieve' [2..x]

    sieve' :: [Integer] -> [Integer]
    sieve' [] = []
    sieve' (p:xs) = p : sieve' [x | x <- xs, x `mod` p > 0]
    
    euler10 :: Integer
    euler10 = f li
        where
            li = (take 2000000 primes)
            f :: [Integer] -> Integer
            f (x:xs) = z 
                where
                    z = sum li
                    li = x : f' xs
                    f' :: [Integer] -> [Integer]
                    f' [] = []
                    f' (y:ys)
                            | y < 2000000   = y : f' ys
                            | otherwise     = f' ys 

    diff (i1 : l1) (i2 : l2)
                | i1 < i2       = i1 : (diff l1 (i2 : l2))
                | i1 > i2       = diff (i1 : l1) l2
                | i1 == i2      = diff l1 l2
    sieve'' (p:ns) = p : (sieve'' $ diff ns $ iterate (+p) p)

    primes'' :: [Integer]
    primes'' = sieve'' [2..]
