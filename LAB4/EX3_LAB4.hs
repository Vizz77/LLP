map :: (a -> b) -> [a] -> [b]
map f xs = [f x | x <- xs]

filter :: (a -> Bool) -> [a] -> [a]
filter p xs = [ x | x <- xs, p x ]

primo :: Integral a => a -> Bool
primo n = [d | d <-[2..n], n `mod` d == 0 ] == [n]