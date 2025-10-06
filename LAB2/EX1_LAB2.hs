f1 :: Int -> Int
f1 n
     | even n    = n + 1
     | otherwise = negate n

giorni :: Int -> Int
giorni anno
     | isLeap anno = 366
     | otherwise   = 365
     where
          -- Un anno è bisestile se è divisibile per 4 ma non per 100,
          -- a meno che non sia anche divisibile per 400.
          isLeap y = (y `mod` 4 == 0 && y `mod` 100 /= 0) || (y `mod` 400 == 0)