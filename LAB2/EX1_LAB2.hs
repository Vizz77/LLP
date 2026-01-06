-- Here we start using function and guards in Haskell.

-- This expresion define a function f1 that takes an integer n as input.
-- If n is even, it returns n + 1; otherwise, it returns the negative of n.
f1 :: Int -> Int
f1 n -- Guarded equations
     | even n    = n + 1 -- case when n is even
     | otherwise = negate n -- case when n is odd

-- This function calculates the number of days in a given year.
giorni :: Int -> Int
giorni anno
     -- In this case we do not have the function isLeap defined yet,
     -- so we define it in the where clause.
     | isLeap anno = 366
     | otherwise   = 365
     where
          -- A year is a leap year if it is divisible by 4, and not by 100
          -- also, years divisible by 400 are leap years.
          isLeap y = (y `mod` 4 == 0 && y `mod` 100 /= 0) || (y `mod` 400 == 0)