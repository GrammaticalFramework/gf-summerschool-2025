incomplete concrete AppI of App = open Syntax in {
  lincat
    JobStatus = VP ;
    Person = NP ;
    Statement = S ;

  lin

    -- SJobStatus : Person -> JobStatus -> Statement ;
    SJobStatus person status =
      mkS ( mkCl person status ) ;
    
    Inari = mkNP (mkPN "Inari" ) ;
    Aarne = mkNP (mkPN "Aarne" ) ;
    Hans = mkNP (mkPN "Hans" ) ;
    You = youPol_NP ;
    I = i_NP ;
    She = she_NP ;

}
