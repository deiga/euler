
    euler5 = testDiv [20,40..]

    testDiv []      = 0
    testDiv (x:xs) 
            | f x l1  = x
            | otherwise = testDiv xs
            where
                l1 = [1..20]
                f n []  = False
                f n [g] = if n `mod` g == 0 then True else False
                f n l2 
                        | n `mod` y == 0    = f n ys
                        | otherwise = False
                        where
                            (y:ys) = reverse l2

    euler5' = foldl (lcm) 1 [1..20]
