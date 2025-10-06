somma :: Int -> Int
somma 0 = 0
somma n = n + somma (n - 1)

pow2 :: Int -> Int
pow2 0 = 1
pow2 n = 2 * pow2 (n - 1)

bits :: Int -> Int
bits n | n == 0         = 0
       | n `mod` 2 == 0 = bits (n `div` 2)
       | otherwise      = 1 + bits (n `div` 2)

potenzaDi2 :: Int -> Bool
potenzaDi2 0 = False
potenzaDi2 1 = True
potenzaDi2 n = n `mod` 2 == 0 && potenzaDi2 (n `div` 2)