-- LAB1 ex2
-- We add explicit types for IO actions; it helps GHC infer and explain results.
ex1 , ex2 , ex3 , ex4 :: IO ()

-- Haskell does not allow chained comparisons like Python (1 <= 2 <= 3),
-- so we split it and join with && (logical AND).
ex1 = print ((1 <= 2 && 2 <= 3) :: Bool)


-- || is logical OR, same as Python's "or".
-- We annotate with :: Bool to fix the result type explicitly.
ex2 = print ((1 <= 0 || 0 <= 1) :: Bool)


-- && is short-circuiting: if the left is False, the right is not evaluated.
-- `div` is integer division (like Python's //), and `...` is infix syntax.
ex3 = print ((False && (1 `div` 0 == 0)) :: Bool)

-- if ... then ... else ... is an expression (returns a value).
-- Here it's equivalent to (1 <= 2), like Python's ternary.
ex4 = print ((if 1 <= 2 then True else False) :: Bool)

main :: IO ()
main = do
    ex1
    ex2
    ex3    
    ex4
