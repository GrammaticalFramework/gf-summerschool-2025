module Main where

import Mini
import PGF

main = do
    gr <- readPGF "Mini.pgf"
    let eng = mkCId "MiniEng"
    putStrLn "*** the basic trees ***"
    mapM_ putStrLn $ map (showExpr [] . gf) gfTrees
    putStrLn ""
    putStrLn "*** linearize them as questions ***"
    mapM_ putStrLn $ map (linearize gr eng . gf) questions

validStudents = [("Line", "GF101"), ("Maria", "IntroPython")]
validClasses = [("GF101", "Chalmers"), ("IntroPython", "GU")]



gfTrees = [Gattends (LexPerson person) (LexClass cls) |
            (person,cls) <- validStudents] ++
          [GheldAt (LexClass cls) (LexUniversity uni) |
            (cls, uni) <- validClasses]

questions = map GQ gfTrees



