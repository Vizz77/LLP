-- Predicato di primalità (naive ma chiaro)
isPrime :: Integer -> Bool
isPrime x
  | x < 2     = False
  | otherwise = all (\d -> x `mod` d /= 0) [2 .. floor (sqrt (fromIntegral x))]

-- Primi n numeri primi, partendo da 2
primi :: Int -> [Integer]
primi = aux 2
  where
    aux :: Integer -> Int -> [Integer]
    aux _ 0 = []
    aux k n
      | isPrime k = k : aux (k + 1) (n - 1)
      | otherwise =     aux (k + 1)  n


primoMaggioreDi :: Integer -> Integer
primoMaggioreDi n = head (dropWhile (<= n) (filter isPrime [2..]))
