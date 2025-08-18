-- exercise: fix this grammar
-- so that it becomes type correct and also
-- grammatically correct

concrete FirstSwe of First = {

lincat
  NP = {s : Str ; g : Gender ; n : Number} ;
  VP = Gender => Number => Str ;
  S = Str ;
  PN = Str ;
  V = Str ;
  AP = Gender => Number => Str ;
  Pron = {s : Str ; n : Number} ;
  Det = {s : Gender => Str ; n : Number} ;
  CN = {s : Number => Str ; g : Gender} ;

param
  Number = Sg | Pl ;
  Gender = Utr | Neutr ;
  
lin
  PredVP np vp = np.s ++ vp ! np.n ;
  UsePN pn = {s = pn ; n = Sg} ;
  UsePron pron = pron ;
  DetCN det cn = {
    s = det.s ++ cn ! det.n ;
    n = det.n
    } ;
  UseV v = table {n => v} ;
  UseAP ap = table {
    n => "är" ++ ap ! n
    } ;
  AdjCN ap cn = table {
    n => ap ! n ++ cn ! n 
    } ;
  john_PN = "Johan" ;
  walk_V = "går" ;
  happy_AP = table {
    Sg => "lycklig" ;
    Pl => "lyckliga"
    } ;
  we_Pron = {s = "vi" ; n = Pl} ;
  the_Det = {s = "den" ; n = Sg} ;
  those_Det = {s = "de där" ; n = Pl} ;
  sun_CN = table {Sg => "sol" ; Pl => "solar"} ;
  house_CN = table {Sg => "hus" ; Pl => "hus"} ;

}
