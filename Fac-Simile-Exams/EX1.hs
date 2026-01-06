-- Here the funcition is recursive and uses guards to filter even numbers from a list.
pari_lib :: [Int] -> [Int]
-- 1. Base case: If the list is empty, return empty
pari_lib [] = []

-- 2. Recursive case: Split list into Head (x) and Tail (xs)
pari_lib (x:xs)
    | even x    = x : pari_lib xs  -- x is definitely the single Int head here
    | otherwise = pari_lib xs
    where
        even n = n `mod` 2 == 0

-- Example usage:
-- pari_lib [1,2,3,4,5,6] returns [2,4,6]
-- Crucial points:
-- x : xs it returns on the x the the value of the head , and xs rappresent the rest of the lists

-- Here there is the same function implemented using list comprehensions
pari_comp :: [Int] -> [Int]
--            OUTPUT  GENERATOR  FILTER
--              v       v         v
pari_comp xs = [x | x <- xs, even x]
    where
        even n = n `mod` 2 == 0 