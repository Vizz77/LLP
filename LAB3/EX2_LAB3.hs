media :: [Int] -> Float
media xs = fromIntegral (sum xs) / fromIntegral (length xs)

fact :: Int -> Int
fact n
    | n < 0     = error "negative factorial undefined"
    | otherwise = product [1 .. n]


intervallo :: Int -> Int -> [Int]
intervallo m n | m > n     = []
               | otherwise = m : intervallo (m + 1) n
