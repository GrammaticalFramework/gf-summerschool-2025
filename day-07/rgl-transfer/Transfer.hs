{-# LANGUAGE GADTs, FlexibleInstances, KindSignatures, RankNTypes, TypeSynonymInstances #-}
module Main where


-- echo "my cat is better than your cat" | ./Transfer 

import Lang
import PGF hiding (Tree)

Just eng = readLanguage "LangEng"
Just phr = readType "Phr"

gfphr :: GPhr -> Expr
gfphr = gf

main = do
  pgf <- readPGF "Lang.pgf"
  interact (linearize pgf eng . gfphr . transfer . fg . head . parse pgf eng phr)


transfer :: Tree a -> Tree a
transfer tree = case tree of
  LexN "cat_N" -> LexN "dog_N"
  _ -> composOp transfer tree

