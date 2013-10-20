-- Euler 6

    euler6 = (sum [1..100])^2 - sum' [1..100]

    sum' [] = 0
    sum' (x:xs) = (x*x) + sum' xs
