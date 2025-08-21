abstract LangCgiExt = LexiconCgiExt ** {
  flags startcat = Statement;
  cat
    Statement; Thing; Action ; Color; Concept; NonColor; 
  fun
    newStatement: Thing -> Action -> Statement ;
    newThing : NonColor -> Color -> Concept -> Thing;
    --    colorless_green_idea : Thing ;
    colorless : NonColor ;
    invisible : NonColor ;
    green : Color ;
    yellow : Color ;
    idea : Concept ;
    question : Concept ;
    sleep_furiously : Action ;
}
