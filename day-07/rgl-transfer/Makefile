all: Lang.pgf Transfer

.PHONY: Transfer

Lang.pgf:
	cd alltenses ; gf --make -output-format=haskell -haskell=lexical --haskell=gadt -lexical=N,A,V,V2,Adv LangEng.gfo
	mv alltenses/Lang.pgf .
	mv alltenses/Lang.hs .

Transfer:
	ghc-9.4 --make -package gf Transfer

