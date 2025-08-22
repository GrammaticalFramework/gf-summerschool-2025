concrete DrawIta of Draw =

  open SyntaxIta, ParadigmsIta, LexiconIta, IrregIta
  in {

lincat
  Command = Utt ;
  Object = CN ;
  ObjectRef = NP ;
  Shape = CN ;
  Colour = AP ;
  Size = AP ;
  Place = Adv ;

lin
  drawCommand object =
      mkUtt (mkVP (mkV2 (mkV "disegnare")) (mkNP a_Det object)) -- to draw a circle
--    | mkUtt (mkImp (mkVP (mkV2 (mkV "disegnare")) (mkNP a_Det object))) -- draw a circle
    | mkUtt (mkNP a_Det object)                              -- a circle
    | mkUtt object                                           -- circle
    ;
  removeCommand object =
      mkUtt (mkImp (mkVP (mkV2 "rimuovere") object)) ; 
  moveCommand object place =
      mkUtt (mkImp (mkVP (mkVP (mkV2 "spostare") object) place)) ;
      
  shapeObject size colour shape = mkCN size (mkCN colour shape) ;

  theObjectRef object = mkNP the_Det object ;
  itObjectRef = it_NP ;
  
  circle_Shape = mkCN (mkN "cerchio") ;
  square_Shape = mkCN (mkN "quadrato") ;

  big_Size = mkAP big_A ;
  small_Size = mkAP small_A ;
  noSize = mkAP (mkA "") ; ---

  green_Colour = mkAP green_A ;
  red_Colour = mkAP red_A ;
  blue_Colour = mkAP blue_A ;
  yellow_Colour = mkAP yellow_A ;

  noColour = mkAP (mkA "") ; ---

  upPlace = pmkAdv "in alto" ;
  downPlace = pmkAdv "verso il basso" ;
  leftPlace = pmkAdv "a sinistra" ;
  rightPlace = pmkAdv "a destra" ;
  midPlace = pmkAdv "al centro" ;
  
  noPlace = pmkAdv "" ;

oper
  pmkAdv : Str -> Adv = ParadigmsIta.mkAdv ;
}