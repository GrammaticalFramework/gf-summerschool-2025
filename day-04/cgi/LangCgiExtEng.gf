concrete LangCgiExtEng of LangCgiExt = LexiconCgiExtEng ** open SyntaxEng in {
  lincat
    Statement = S;
    Action = VP;
    Thing = NP;
    Concept = N ;
    Color, NonColor = A ;
  lin
    -- NonColor
    colorless = colorless_A ;
    invisible = invisible_A ; -- alt. mkA "invisible" -- requires ParadigmsEng
    -- Color
    green = green_A ;
    yellow = yellow_A ;
    -- Concept
    idea = idea_N ;
    question = question_N ;
    newThing noncolor color concept = mkNP aPl_Det (mkCN noncolor (mkCN color concept)) ;

    sleep_furiously = -- AdvVP (UseV sleep_V) furiously_Adv ;
      mkVP (mkVP sleep_V) furiously_Adv; 
    newStatement thing action = -- UseCl (TTAnt TPres ASimul) PPos (PredVP thing action);
      mkS (mkCl thing action) ;
      
};
