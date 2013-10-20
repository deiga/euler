module Euler25
    where

    -- Euler 25
    fib' :: Integer -> Integer -> Integer -> Integer
    fib' n a b 
        | n == 0	= a
        | n == 1	= b
        | otherwise	= fib' (n-2) (a+b) (b+(a+b)) 

    fib :: Integer -> Integer
    fib n = fib' n 0 1

    euler25 = lengF 12

    lengF n
        | length x == 1000      = n
        | otherwise             = lengF (n+1)
        where
            x = show a
            a = fib n
