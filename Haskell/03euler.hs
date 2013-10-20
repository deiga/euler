    primes :: [Integer]
    primes = sieve [2..]

    sieve :: [Integer] -> [Integer]
    sieve [] = []
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

    euler3 = filter (>0) $ map (highPrime n) li
        where li = primes
              n = 600851475143

    largPrimFact = filter p primes
                where
                    p x 
                        | x == a    = False
                        | otherwise = n `mod` x == 0
                    n = 600851475143
                    n1 = fromInteger n
                    a = round $ sqrt n1

    highPrime n z
            | z == b            = 0
            | n `mod` z == 0    = z 
            | otherwise         = 0
            where
                n1 = fromInteger n
                x = sqrt n1
                b = round x

    diff (i1 : l1) (i2 : l2)
                | i1 < i2       = i1 : (diff l1 (i2 : l2))
                | i1 > i2       = diff (i1 : l1) l2
                | i1 == i2      = diff l1 l2
    sieve' (p:ns) = p : (sieve' $ diff ns $ iterate (+p) p)

    primes' :: [Integer]
    primes' = sieve' [2..]
