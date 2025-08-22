concrete AppAPIGer of App = open ParadigmsGer, SyntaxGer in {
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

    Lecturer = mkVP ( mkN "Dozent" );
    Professor = mkVP (mkN "Professor" ) ;
    Student = mkVP ( mkN "Studentin" ) ;

    BetweenJobs = mkVP (mkA "arbeitslos" ) ;
    Retired = mkVP (SyntaxGer.mkAdv in_Prep (mkNP theSg_Det (mkN "Ruhestand" ))) ;
}
