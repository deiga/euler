-- Euler 12

    euler12 = f' a b
        where
            (a, b) = f 0 1
            f x z = (x+z, z)
            f' n y
                | length (divisors n) >= 500    = n
                | otherwise                     = f' c d
                where
                    (c, d) = f n (y+1)

    binom' :: Integer -> Integer -> Integer
    binom' x y = fact x `div` (fact y * fact (x - y))

    fact :: Integer -> Integer
    fact n = product [1..n]

    divisors :: Integer -> [Integer]
    divisors n = divisors' n n

    divisors' :: Integer -> Integer -> [Integer]
    divisors' n 0 = []
    divisors' n x
            | n == x            = x : divisors' n (x `div` 2)
            | n `mod` x == 0    = x : divisors' n (x-1)
            | otherwise         = divisors' n (x-1)
