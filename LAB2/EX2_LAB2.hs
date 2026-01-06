-- This are some simple recursive functions defined using pattern matching

somma :: Int -> Int
somma 0 = 0 -- base case
somma n = n + somma (n - 1) -- recursive case

pow2 :: Int -> Int
pow2 0 = 1 -- base case
pow2 n = 2 * pow2 (n - 1) -- recursive case

bits :: Int -> Int
bits n | n == 0         = 0 -- base case
       -- Here we check if the number is even or odd in the case is even we pass to the function the number divided by 2
       -- In the case if the number is odd we add 1 to the result of the function called with the number divided by 2
       | n `mod` 2 == 0 = bits (n `div` 2) -- recursive case even 
       | otherwise      = 1 + bits (n `div` 2) -- recursive case odd

-- This function checks if a number is a power of 2
potenzaDi2 :: Int -> Bool
potenzaDi2 0 = False
potenzaDi2 1 = True
potenzaDi2 n = n `mod` 2 == 0 && potenzaDi2 (n `div` 2)