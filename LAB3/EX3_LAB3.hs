prodotto :: [Int] -> Int
prodotto []   =  1
prodotto (x : xs) = x * prodotto xs


inverti :: [Int] -> [Int]
inverti [] = []
inverti (x : xs) = inverti xs ++ [x]

sommaCongiunta :: [Int] -> [Int] -> [Int]
sommaCongiunta []       _        = []
sommaCongiunta _        []       = []
sommaCongiunta (x : xs) (y : ys) = x + y : sommaCongiunta xs ys