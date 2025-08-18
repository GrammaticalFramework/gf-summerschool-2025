abstract First = {

flags startcat = S ;

cat
  NP ;
  VP ;
  S ;
  PN ;
  V ;
  AP ;
  Pron ;
  Det ;
  CN ;

fun
  PredVP : NP -> VP -> S ;
  UsePN : PN -> NP ;
  UsePron : Pron -> NP ;
  DetCN : Det -> CN -> NP ;
  UseV : V -> VP ;
  UseAP : AP -> VP ;
  AdjCN : AP -> CN -> CN ;
  john_PN : PN ;
  walk_V : V ;
  happy_AP : AP ;
  we_Pron : Pron ;
  the_Det : Det ;
  those_Det : Det ;
  sun_CN : CN ;
  house_CN : CN ;

}