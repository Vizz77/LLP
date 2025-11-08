data PuntoCardinale = Nord | Sud| Est | Ovest

sinistra :: PuntoCardinale -> PuntoCardinale
sinistra Nord  = Est
sinistra Est   = Sud
sinistra Sud   = Ovest
sinistra Ovest = Nord

destra :: PuntoCardinale -> PuntoCardinale
destra = indietro . sinistra

indietro :: PuntoCardinale -> PuntoCardinale
indietro = sinistra . sinistra