module Main where

-- Explicit types are a good habit: they make IO and numeric types clear.
ex1, ex2, ex3, ex4Approx :: IO ()

-- sum 1..5
-- [1..5] is a list range (like Python's list(range(1, 6))).
-- :: [Integer] is a type annotation: the list holds Integer (Python int).
ex1 = print (sum ([1..5] :: [Integer]))

-- factorial of 5 (idiomatic: product of a range)
-- product multiplies all elements, like functools.reduce(operator.mul, ...).
ex2 = print (product ([1..5] :: [Integer]))

-- 2^0 + ... + 2^4  ==  2^(4+1) - 1
-- (^) uses an Integral exponent; we pin base/exponent to Integer via ::.
-- Compare to Python: 2 ** 5 - 1.
ex3 = print ((2 :: Integer) ^ (5 :: Integer) - 1)

-- nested fractions as a Double (Fractional type, like Python float)
-- 1.0 forces Fractional; :: Double pins the final type.
ex4Approx = print ((1.0 / (1.0 + 1.0 / (1.0 + 1.0 / (1.0 + 1.0 / 2.0)))) :: Double)

-- Program entry point
-- main runs multiple IO actions; do sequences them like Python statements.
-- In GHCi you can run actions directly, but a main is needed when compiling.
main :: IO ()
main = do
  ex1
  ex2
  ex3
  ex4Approx