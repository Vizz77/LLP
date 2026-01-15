-- Here we implment the fuction inversioni_lib which counts the number of inversions in a list
inversioni_lib :: Ord a => [a] -> Int  -- Here we use the fat arrow to define a constraint on the type variable a
-- 1. Base case: If the list is empty or has one element, return 0
inversioni_lib [] = 0
inversioni_lib [_] = 0
inversioni_lib (x : xs) = countInversione x xs + inversioni_lib xs
    where
        countInversione _ [] = 0
        countInversione y (z :zs)
            | y > z = 1 + countInversione y zs
            | otherwise = countInversione y zs

-- Example usage:
-- inversioni_lib [2,3,8,6,1] returns 5
-- Crucial points:
-- x : xs it returns on the x the the value of the head , and xs rappresent the rest of the lists

-- Here we implement the same function using list comprehensions
inversioni_totali :: Ord a => [a] -> Int
inversioni_totali xs = sum [1 | (x:ys) <- tails xs, y <- ys, x > y]
    where
        tails [] = []
        tails l@(_:xs) = l : tails xs