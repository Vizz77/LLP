isPrime :: Integer -> Bool
isPrime x
  | x < 2     = False
  | otherwise = all (\d -> x `mod` d /= 0) [2 .. floor (sqrt (fromIntegral x))]


gemelli :: Int -> [(Integer, Integer)]
gemelli n = take n (filter isTwin (zip ps (tail ps)))
  where
    ps = filter isPrime (enumFrom 2)
    isTwin (p, q) = q == p + 2

--Take prende i primi n elementi di una lista 
--Filter Tiene solo gli elementi che soddisfano il predicato
-- Zip accopia gli elementi di posizione a e b !!
