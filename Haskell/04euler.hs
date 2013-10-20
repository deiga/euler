

    --palinNr :: Integer -> Integer -> Bool
    paliNr a 
        | z == y    = True
        | otherwise = False
        where y = reverse (z)
              z = show a
   -- euler4 :: Integer
    euler4 = last li
            where
                li = qsort1 $ paliTest 100 [100..999]
    
    paliTest :: Integer -> [Integer] -> [Integer]
    paliTest min max
            | min < lst     = if z > 0 then z : paliTest (min+1) max else paliTest (min+1) max
            | otherwise     = [] 
            where lst = last max
                  z = f min max
                  f :: Integer -> [Integer] -> Integer
                  f x [] = 0 
                  f x (y:ys)
                        | paliNr n  = n
                        | otherwise = f x ys
                        where n = x * y

    qsort1 :: Ord a => [a] -> [a]
    qsort1 []       = []
    qsort1 (p:xs)   = qsort1 lesser ++ [p] ++ qsort1 greater
        where
            lesser  = [y | y <- xs, y < p]
            greater = [y | y <- xs, y >= p]
