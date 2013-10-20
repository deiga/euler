-- Euler 7

    euler7 x
        | length l1 == 10001    = last l1
        | otherwise = euler7 (x*2)
        where
            l1 = primes x

    primes :: Integer -> [Integer]
    primes x = sieve [2..x]

    sieve :: [Integer] -> [Integer]
    sieve [] = []
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
