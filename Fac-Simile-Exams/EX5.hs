posizione_dispari_lib :: [a] -> [a]
-- Here the code pass a tuple create with zip that is build like (i,val)
-- so we use the lambda for waiting the value , to pass to the odd 
-- map do the map thing 
posizione_dispari_lib xs = map snd (filter (\(i, _) -> odd i) (zip [0..] xs))
    where 
        odd :: Int -> Bool
        odd x = x `mod` 2 /= 0