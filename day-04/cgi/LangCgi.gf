abstract LangCgi = LexiconCgi ** {
  flags startcat = Statement;
  cat
    Statement ; Thing ; Action ; 
  fun
    newStatement: Thing -> Action -> Statement ;
    colorless_green_idea : Thing ;
    sleep_furiously : Action ;
}
