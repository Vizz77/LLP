--Esercizi sulle liste?
ultimoSomma :: (Eq a, Num a) => [a] -> Bool
ultimoSomma = aux 0
  where
    aux somma [x] = somma == x -- questo fa il comperison 
    aux somma (x : xs) = aux (somma + x) xs -- questo fa la somma btw
-- il tipo Eq ? 
-- e una classe dove sono definiti i tipi di uguaglianza !!

ultimoSomma :: (Eq a, Num a) => [a] -> Bool
ultimoSomma xs = head ys == sum (tail ys)
  where
    ys = reverse xs
-- uguale a quello di prima ma usa le librie standard di Haskell !!


lunga :: [[a]] -> [[b]]
lunga xs = filter ((== m). length) xs -- the current length is equal to the max length
    where 
        m = maximum(map length xs)



sottoLista :: Eq a => [a] -> [a] -> Bool
sottoLista [] _ = True
sottoLista _ [] = False
sottoLista (x : xs) (y : ys) | x == y = sottoLista xs ys
sottoLista xs (_ : ys) = sottoLista xs ys

sottoListe :: [a] -> [[a]]
sottoListe [] = [[]]
sottoListe (x : xs) = xss ++ map (x :) xss
  where
    xss = sottoListe xs