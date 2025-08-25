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
transfer =
  transferPron .
  transferPassive


transferPron :: Tree a -> Tree a
transferPron tree = case tree of
  Ghe_Pron -> Gthey_Pron
  Gshe_Pron -> Gthey_Pron
  _ -> composOp transferPron tree
  
transferPassive :: Tree a -> Tree a
transferPassive tree = case tree of
  GPredVP subject (GComplSlash (GSlashV2a verb) object) ->
    GPredVP object (GAdvVP (GPassV2 verb) (GPrepNP Gby8agent_Prep subject))
  _ -> composOp transferPassive tree

