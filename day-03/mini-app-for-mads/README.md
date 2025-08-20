# To run

make the PGF:
```
$ gf -make  -f=haskell --haskell=gadt -haskell=lexical -lexical=Person,Class,University MiniEng.gf
```

run the program:
```
$ cabal run mini
*** the basic trees ***
attends Line GF101
attends Maria IntroPython
heldAt GF101 Chalmers
heldAt IntroPython GU
…
```