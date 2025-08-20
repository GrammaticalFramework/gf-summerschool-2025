concrete MiniEng of Mini = open SyntaxEng, ParadigmsEng in {
lincat
  Person,  University = NP ;
  Class = CN ;
  Clause = Cl ;
  Statement = Utt ;

lin
  Line = mkNP (mkPN "Line") ;
  Maria = mkNP (mkPN "Maria") ;
  GF101 = mkCN (mkN "GF101") ;
  IntroPython = mkCN (mkCN (mkN "introduction")) (SyntaxEng.mkAdv to_Prep (mkNP (mkPN "Python"))) ;
  Chalmers = mkNP (mkPN "Chalmers") ;
  GU = mkNP (mkPN "GU") ;

  -- : Person -> Class -> Clause ;
  attends person cls = mkCl person (mkV2 "attend") (mkNP cls) ;

  -- : Class -> University -> Clause ;
  heldAt cls uni = mkCl (mkNP cls) held_at_A2 uni ;

  -- : Clause -> Statement ;
  Pos cl = mkUtt (mkS cl) ;
  Neg cl = mkUtt (mkS negativePol cl) ;
  Q cl = mkUtt (mkQS (mkQCl cl)) ;

  ------
  -- Aggregations
  -- : Person -> Class -> University -> Clause ;
  attends_heldAt person cls uni =
    let
      held_at_uni_VP : VP = mkVP held_at_A2 uni ;
      which_is_held_at_uni_RS : RS = mkRS (mkRCl which_RP held_at_uni_VP) ;
      class_held_at_uni_CN : CN = mkCN cls which_is_held_at_uni_RS ;
    in attends person class_held_at_uni_CN ;

  oper
    held_at_A2 : A2 = mkA2 (mkA "held") (mkPrep "at") ;

}