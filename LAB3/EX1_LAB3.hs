scambia :: (Int, Int) -> (Int, Int)
scambia (x,y) = (y,x)

ordina :: (Int, Int, Int) -> (Int, Int, Int)
ordina (a, b, c) | a > b = ordina (b, a, c)
ordina (a, b, c) | b > c = ordina (a, c, b)
ordina x = x

-- Definiamo un alias di tipo in modo che il nome Complesso sia
-- una comoda abbreviazione per il tipo (Double, Double)
type Complesso = (Double, Double)

addizioneC :: Complesso -> Complesso -> Complesso
addizioneC (a, b) (c, d) = (a + c, b + d)

negazioneC :: Complesso -> Complesso
negazioneC (a, b) = (negate a, b)

sottrazioneC :: Complesso -> Complesso -> Complesso
sottrazioneC x y = addizioneC x (negazioneC y)