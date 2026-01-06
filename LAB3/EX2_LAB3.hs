-- Here we see the use of the list

-- The type of this expression is [Int] -> Float 
-- [Int] is the type of lists of integers
media :: [Int] -> Float
-- Here we use fromIntegral to convert the Int values returned by sum and length to Float
media xs = fromIntegral (sum xs) / fromIntegral (length xs) -- xs is the head of the list 

-- Here we implement the factorial function using guards and the product function
fact :: Int -> Int
fact n
    | n < 0     = error "negative factorial undefined"
    | otherwise = product [1 .. n] -- product computes the product of all elements in the list


-- This function generates a list of integers from m to n
intervallo :: Int -> Int -> [Int]
intervallo m n | m > n     = [] -- base case
                -- Here we use the (:) operator to construct the list recursively
               | otherwise = m : intervallo (m + 1) n -- recursive case
