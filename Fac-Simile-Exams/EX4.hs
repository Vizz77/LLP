diverso_lib :: Eq a => [a] -> [a] -> Bool
diverso_lib xs ys = any (\x -> all (x /=) ys) xs

-- Here I've done a similar exercise to understand better this concept
contiente_sette :: (Eq a , Num a) => [a] -> Int -> Bool
contiente_sette xs 7 = any(\x -> x == 7) xs

-- Correzione Tipi: Devono essere [a] -> [a], non [a] -> [b], 
-- altrimenti non puoi confrontarli!
diverso_ric :: Eq a => [a] -> [a] -> Bool

-- CASO BASE ESTERNO:
-- Se xs è vuota, non c'è nessun elemento che possa essere "diverso".
diverso_ric [] _ = False 

-- PASSO RICORSIVO ESTERNO:
diverso_ric (x:xs) ys 
    | non_appartiene x ys = True             -- Ho trovato un x che non sta in ys! Vinco.
    | otherwise           = diverso_ric xs ys -- x era in ys, provo col prossimo (xs)

    where
        -- DEFINIZIONE CICLO INTERNO (Helper Function)
        non_appartiene :: Eq a => a -> [a] -> Bool
        non_appartiene _ [] = True  -- Ho finito ys e non l'ho trovato? Allora non appartiene (Vero)
        non_appartiene val (y:ys_inner)
            | val == y  = False     -- L'ho trovato! Quindi "non_appartiene" è Falso
            | otherwise = non_appartiene val ys_inner