scambia :: (Int, Int) -> (Int, Int)
scambia (x,y) = (y,x)

ordina :: (Int, Int, Int) -> (Int, Int, Int)
ordina (a, b, c) | a > b = ordina (b, a, c)
ordina (a, b, c) | b > c = ordina (a, c, b)
ordina x = x

-- Define a type alias so the name Complesso is a convenient shorthand
-- for the type (Double, Double).
type Complesso = (Double, Double)

-- Functions in Haskell are curried: if you pass fewer arguments,
-- you get a new function that "waits" for the rest.
-- Example: addizioneC (2,3) returns a function Complesso -> Complesso.
-- Note: addizioneC 2 3 is a type error, because 2 is not a Complesso;
-- you must write the pair (2,3).
-- Python analogue:
--   add_c = lambda z: (lambda w: (z[0] + w[0], z[1] + w[1]))
--   f = add_c((2, 3))     # f now waits for w
--   f((4, 5))             # (6, 8)
addizioneC :: Complesso -> Complesso -> Complesso
addizioneC (a, b) (c, d) = (a + c, b + d)

negazioneC :: Complesso -> Complesso
negazioneC (a, b) = (negate a, b)

sottrazioneC :: Complesso -> Complesso -> Complesso
sottrazioneC x y = addizioneC x (negazioneC y)
