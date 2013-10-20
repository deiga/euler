
    fibNorm :: Integer -> Integer
    fibNorm 0 = 0
    fibNorm 1 = 1
    fibNorm x = fibNorm (x-1) + fibNorm (x-2)

    fibListE :: Integer -> [Integer]
    fibListE 0 = []
    fibListE x 
        | even z = z : fibListE (x-1)
        | otherwise = fibListE (x-1)
        where z = fib x

    sumFib :: Integer -> Integer
    sumFib x = listTest z
        where z = fibListE x

    listTest :: [Integer] -> Integer
    listTest [] = 0
    listTest (x:xs) 
        | x < 4000000 = x + listTest xs
        | otherwise = listTest xs

    fib' :: Integer -> Integer -> Integer -> Integer
    fib' n a b 
        | n == 0 = a
        | n == 1 = b
        | otherwise  = fib' (n-2) (a+b) (b+(a+b)) 

    fib :: Integer -> Integer
    fib n = fib' n 0 1
