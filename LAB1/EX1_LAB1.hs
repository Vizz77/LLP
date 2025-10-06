module Main where

-- All with explicit types (good habit!)
ex1, ex2, ex3, ex4Approx :: IO ()

-- sum 1..5
ex1 = print (sum ([1..5] :: [Integer]))

-- factorial of 5 (idiomatic: product of a range)
ex2 = print (product ([1..5] :: [Integer]))

-- 2^0 + ... + 2^4  ==  2^(4+1) - 1
-- note: (^) takes an Integral exponent; we pin the base to Integer
ex3 = print ((2 :: Integer) ^ (5 :: Integer) - 1)

-- nested fractions as a Double (default Fractional)
ex4Approx = print ((1.0 / (1.0 + 1.0 / (1.0 + 1.0 / (1.0 + 1.0 / 2.0)))) :: Double)

-- Program entry point
main :: IO ()
main = do
  ex1
  ex2
  ex3
  ex4Approx