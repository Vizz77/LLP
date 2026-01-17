diverso_lib :: Eq a => [a] -> [a] -> Bool
diverso_lib xs ys = any (\x -> all (x /=) ys) xs

-- Here I've done a similar exercise to understand better this concept
contiente_sette :: (Eq a , Num a) => [a] -> Int -> Bool
contiente_sette xs 7 = any(\x -> x == 7) xs