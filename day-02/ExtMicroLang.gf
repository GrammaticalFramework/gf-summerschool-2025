-- extends the MicroLang grammar
abstract ExtMicroLang = MicroLang ** {
    flags startcat = Utt ;
    cat
      QS ;
    fun
      UttQS : QS -> Utt ;
      QuestVPS : NP -> VP -> QS ;

}