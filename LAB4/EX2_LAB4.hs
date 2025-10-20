import Prelude hiding (foldl)

foldl :: (b -> a -> b) -> b -> [a] -> b
foldl _ x []       = x
foldl f x (y : ys) = foldl f (f x y)ys

-- How haskell know that it should keep going ?
-- because you pass the first elem y and then the rest of the list 
-- on ys so when ys is empty it stops.

concat :: [[a]] -> [a]
concat = foldl (++) []


