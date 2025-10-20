#### Determinare il tipo più generale delle seguenti funzioni della libreria standard

1. fst( x , y ) = x -> it return the first element of a 2-tuple

2. snd(_ , x) = x it return the second element

3. const x , _  it ignore the second argument and always return the first 

4.curry = turn a function of pair into 2 argmuents

5.uncurry to the opposite.



""" haskell
fst     :: (a, b) -> a
snd     :: (a, b) -> b
const   :: a -> b -> a
curry   :: ((a, b) -> c) -> a -> b -> c
uncurry :: (a -> b -> c) -> (a, b) -> c
"""