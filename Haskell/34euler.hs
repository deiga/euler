module Euler34
    where

    import Char

    -- Euler 34

    euler34 = testL [3..1000000]

    --testL :: [Integer] -> Integer
    testL [] = 0
    testL (x:xs) 
            | a == x    = x + testL xs
            | otherwise = testL xs
            where
                a = factList b
                b = show x


    --factList :: [Char] -> Integer
    factList [] = 0
    factList (x:xs) = factList xs + product [1..z]
            where
                z = digitToInt x
