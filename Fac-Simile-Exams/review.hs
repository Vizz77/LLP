sommaquadrati :: Int -> Int 
sommaquadrati 0 = 0 -- Base Case 
sommaquadrati n = (n ^ 2) + sommaquadrati (n - 1) -- Recursive Case

potenzaR :: Int -> Int -> Int
-- here we used the wild card so any value passed with exp 0 will return 1
potenzaR _ 0 = 1 -- Base Case
potenzaR n e = n * potenzaR n (e-1) -- Recursive Case