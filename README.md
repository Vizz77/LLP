# LPP — Laboratorio di Programmazione e Paradigmi (Haskell)

Repository con gli esercizi svolti per il corso di LPP, organizzati per laboratorio. Il codice è in Haskell e serve a praticare concetti di programmazione funzionale.

## Struttura del repository

```
README.md
LAB1/
  EX1_LAB1.hs
  EX2_LAB1.hs
  EX3_LAB1.hs
LAB2/
  EX1_LAB2.hs
  EX2_LAB2.hs
LAB3/
  EX1_LAB3.hs
  EX2_LAB3.hs
...
```

## Prerequisiti

- Toolchain Haskell: GHC e GHCi. Installazione consigliata tramite GHCup:
  - https://www.haskell.org/ghcup/
  - Dopo l'installazione, verifica:

    ```
    ghc --version
    ghci --version
    ```

## Come eseguire gli esercizi

Puoi usare GHCi per esecuzioni interattive, `runghc` per eseguire direttamente un `.hs`, oppure compilare con `ghc` per ottenere un binario. I comandi seguenti funzionano su macOS con shell zsh.

### Opzione A — GHCi (interattivo)

Apri un file in GHCi, ad esempio l'esercizio 1 del LAB3:

```
ghci LAB3/EX1_LAB3.hs
```

Dentro GHCi puoi valutare funzioni o eseguire `main` se definito:

```
:reload   -- ricarica dopo modifiche
main      -- esegue main (se presente)
:quit
```

### Opzione B — runghc (senza compilare a binario)

Esegue direttamente il sorgente:

```
runghc LAB2/EX1_LAB2.hs
```

### Opzione C — Compilare con GHC (binario)

Compila e produce un eseguibile nella stessa cartella dell'esercizio:

```
ghc LAB1/EX2_LAB1.hs -o LAB1/EX2_LAB1
./LAB1/EX2_LAB1
```

Suggerimenti utili durante la compilazione:
- Aggiungi avvisi utili: `ghc -Wall LABx/EXy_LABx.hs -o LABx/EXy_LABx`
- Per ripulire gli artefatti della compilazione vedi la sezione seguente.

## Convenzioni e organizzazione

- Mantieni gli esercizi nel corrispondente `LABn/` con nomi coerenti (`EXk_LABn.hs`).
- Fai commit piccoli e mirati per ogni esercizio o cambiamento.
- Se un esercizio ha un `main`, documenta rapidamente come si esegue nel file o in un commento in cima.

## Esempi Codice 
> Il codice presenta commenti che spiegano la sintassi basandossi su concentti di Python3 , per favorire apprentimeto

