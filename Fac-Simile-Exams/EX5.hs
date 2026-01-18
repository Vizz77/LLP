posizione_dispari_lib :: [a] -> [a]
-- Here the code pass a tuple create with zip that is build like (i,val)
-- so we use the lambda for waiting the value , to pass to the odd 
-- map do the map thing 
posizione_dispari_lib xs = map snd (filter (\(i, _) -> odd i) (zip [0..] xs))
    where 
        odd :: Int -> Bool
        odd x = x `mod` 2 /= 0

posizione_dispari_ric :: [a] -> [a]
-- CASO 1: Lista con almeno 2 elementi (primo e secondo)
-- _ (underscore) è il primo elemento (Indice 0, PARI) -> LO BUTTIAMO
-- x è il secondo elemento (Indice 1, DISPARI) -> LO TENIAMO
-- xs è tutto il resto della lista (dal 2 in poi)
posizione_dispari_ric (_ : x : xs) = x : posizione_dispari_ric xs

-- CASO 2: Qualsiasi altra cosa (Lista vuota o con 1 solo elemento)
-- Se rimane 1 solo elemento, è in posizione pari (0), quindi lo buttiamo.
posizione_dispari_ric _ = []

scartaUnoPrendiDue :: [a] -> [a]
-- Pattern match su almeno 3 elementi
scartaUnoPrendiDue (_ : x : y : xs) = x : y : scartaUnoPrendiDue xs
-- Caso base: se rimangono meno di 3 elementi, ci fermiamo
scartaUnoPrendiDue _ = []