# LPP — Labs and Exercises (Haskell)

This repository contains the comprehensive code produced for the LPP course (Laboratorio di Programmazione e Paradigmi or similar), organized by lab. The code is written in Haskell and intended for learning and practicing functional programming concepts.

## Repository structure

```
LAB1/
  EX1_LAB1.hs        -- Exercise 1 source
  EX1_LAB1.hi/.o     -- GHC build artifacts (ignored by Git after this commit)
  EX2_LAB1.hs        -- Exercise 2 source
  EX2_LAB1.hi/.o     -- GHC build artifacts (ignored by Git after this commit)
  EX3_LAB1.hs        -- Exercise 3 source
LAB2/
  (placeholder)
```

Notes:
- Files without extensions in `LAB1/` like `EX1_LAB1` or `EX2_LAB1` are compiled executables produced by `ghc`.
- `LAB2/` currently has no files committed yet.

## Prerequisites

- Haskell toolchain (GHC and GHCi). Install via:
  - GHCup (recommended): https://www.haskell.org/ghcup/
  - Or system package manager (may be older versions)

## How to run

You can use GHCi for quick interactive runs, or compile with GHC to produce executables.

### Option A: Run in GHCi (interactive)

- Open an exercise in GHCi:
  
  ```
  ghci LAB1/EX1_LAB1.hs
  ```
- Inside GHCi, evaluate functions, or run `main` if defined:
  
  ```
  :reload   -- reload after edits
  main      -- run main if present
  :quit
  ```

### Option B: Compile with GHC (executable)

- Build an exercise:
  
  ```
  ghc LAB1/EX1_LAB1.hs -o LAB1/EX1_LAB1
  ```
- Run the produced binary:
  
  ```
  ./LAB1/EX1_LAB1
  ```

### Cleaning build artifacts

To remove object/interface files produced by GHC:

```
find . -type f \( -name "*.o" -o -name "*.hi" -o -name "*.dyn_o" -o -name "*.dyn_hi" \) -delete
```

## Contributing / workflow

- Keep exercises grouped under their corresponding `LABn/` folder.
- Prefer small, focused commits per exercise or change.
- Build artifacts are ignored by Git via `.gitignore`.

## License

If required by your course or personal preference, add a license file (e.g., MIT). By default, this repository has no explicit license.
