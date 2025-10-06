--LAB1 ex2 
ex1 , ex2 , ex3 , ex5 :: IO ()

{-Scrivere un’espressione logica per calcolare il valore 
della relazione 1 ≤ 2 ≤ 3-}

ex1 = print ((1 <= 2 && 2 <= 3) :: Bool)

{-Scrivere un’espressione per rappresentare la condizione 
“1 minore o uguale di 0 oppure 0 minore o uguale di 1”, 
il cui valore deve essere True-}

ex2 = print ((1 <= 0 || 0 <= 1) :: Bool)

{-Concepire una espressione logica per appurare che && è davvero cortocircuitato. 
Suggerimento: individuare una espressione che, se valutata, genera un errore 
(es. una divisione per zero) e usare tale espressione in una condizione 
formulata usando && e ||-}

ex3 = print ((False && (1 `div` 0 == 0)) :: Bool)

--ex4 = print ((False || (1 `div` 0 == 0)) :: Bool)

{-Esprimere le espressioni E1 && E2 ed E1 || E2 come espressioni condizionali, 
senza fare uso di operatori -}

ex5 = print ((if 1 <= 2 then True else False) :: Bool)

main :: IO ()
main = do
    ex1
    ex2
    ex3
    --ex4
    ex5
