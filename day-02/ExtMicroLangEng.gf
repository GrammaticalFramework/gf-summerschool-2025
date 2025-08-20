-- extends the MicroLangEng grammar
concrete ExtMicroLangEng of ExtMicroLang =
  MicroLangEng **      -- extending a (abstract/concrete) module
  open MicroResEng in  -- opening a (resource) module
  {
    lincat
      QS = {s : Str} ;
    lin
      -- : QS -> Utt ;
      UttQS qs = qs ;

      -- : NP -> VP -> QS ;
      QuestVPS np vp = {
        s = vp.verb ! np.a -- is
         ++ np.s ! Nom     -- the bird
         ++ vp.compl       -- happy
         } ;

}