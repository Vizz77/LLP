-- Code not recurisve
ultimo_pari_lib :: [Int] -> Maybe Int
-- Here we are saying to foldl (that is a for like that starts from the left)
-- Take the aux as function to use , the value to start with (Nothing) and the list x
ultimo_pari_lib x = foldl aux Nothing x
  where
    --then here we describe the aux function
    aux _ y | even y    = Just y
             | otherwise = Nothing

-- Code Recusive
ultimo_pari_ric :: [Int] -> Maybe Int
-- Here we use and define an auxiliary function that takes as first argument the current result
ultimo_pari_ric x = aux Nothing x
  where
    aux ris [] = ris
    aux _ (y : ys) | even y    = aux (Just y) ys
                   | otherwise = aux ris ys
