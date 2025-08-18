concrete FirstEng of First = {

lincat
  NP = {s : Str ; n : Number} ;
  VP = Number => Str ;
  S = Str ;
  PN = Str ;
  V = Number => Str ;
  AP = Str ;
  Pron = {s : Str ; n : Number} ;
  Det = {s : Str ; n : Number} ;
  CN = Number => Str ;

param
  Number = Sg | Pl ;
  
lin
  PredVP np vp = np.s ++ vp ! np.n ;
  UsePN pn = {s = pn ; n = Sg} ;
  UsePron pron = pron ;
  DetCN det cn = {
    s = det.s ++ cn ! det.n ;
    n = det.n
    } ;
  UseV v = v ;
  UseAP ap = table {
    Sg => "is" ++ ap ;
    Pl => "are" ++ ap
    } ;
  AdjCN ap cn = table {
    n => ap ++ cn ! n 
    } ;
  john_PN = "John" ;
  walk_V = table {
    Sg => "walks" ;
    Pl => "walk"
    } ;
  happy_AP = "happy" ;
  we_Pron = {s = "we" ; n = Pl} ;
  the_Det = {s = "the" ; n = Sg} ;
  those_Det = {s = "those" ; n = Pl} ;
  sun_CN = table {Sg => "sun" ; Pl => "suns"} ;
  house_CN = table {Sg => "house" ; Pl => "houses"} ;

}
