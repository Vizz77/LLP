-- LAB1 ex3
-- Define the first eight Fibonacci numbers using only addition and previously defined values.
-- This shows how to build complex expressions from simpler ones.

f0 :: Int
f0 = 0

f1 :: Int
f1 = 1

f2 :: Int
f2 = f0 + f1

f3 :: Int
f3 = f1 + f2

f4 :: Int
f4 = f2 + f3

f5 :: Int
f5 = f3 + f4

f6 :: Int
f6 = f4 + f5

f7 :: Int
f7 = f5 + f6

-- Remeber that in Haskell we define functions and values using equations and expressions ,compared to Python where we use assignment statements.