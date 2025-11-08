data Giorno = Lun | Mar | Mer | Gio | Ven | Sab | Dom 

domani :: Giorno -> Giorno
domani Lun = Mar
domani Mar = Mer
domani Mer = Gio
domani Gio = Ven
domani Ven = Sab
domani Sab = Dom
domani Dom = Lun

fra_replicate :: Int -> Giorno -> Giorno
fra_replicate n = foldr (.) id (replicate n domani)

--How it works:
--foldr (.) id [domani, domani, domani] combines the functions in the list into a single function:

--First, it combines the last two functions: domani . domani.
--Then, it combines the result with the next function: domani . (domani . domani).
--This continues until all functions are composed, resulting in a single function equivalent to applying domani n times.