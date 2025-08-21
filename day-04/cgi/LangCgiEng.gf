concrete LangCgiEng of LangCgi = LexiconCgiEng ** open SyntaxEng in {
  lincat
    Statement = S;
    Action = VP;
    Thing = NP;
  lin

    colorless_green_idea = -- DetCN (DetQuant IndefArt NumPl) (AdjCN (PositA colorless_A) (AdjCN (PositA green_A) (UseN idea_N)));
      mkNP aPl_Det (mkCN colorless_A (mkCN green_A idea_N));
    sleep_furiously = -- AdvVP (UseV sleep_V) furiously_Adv ;
      mkVP (mkVP sleep_V) furiously_Adv; 
    newStatement thing action = -- UseCl (TTAnt TPres ASimul) PPos (PredVP thing action);
      mkS (mkCl thing action) ;
      
};
