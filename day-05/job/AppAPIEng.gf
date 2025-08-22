concrete AppAPIEng of App = open ParadigmsEng, SyntaxEng in {
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

    Lecturer = mkVP ( mkN "lecturer" );
    Professor = mkVP (mkN "professor" ) ;
    Student = mkVP ( mkN "student" ) ;

    BetweenJobs = mkVP (SyntaxEng.mkAdv between_Prep (mkNP aPl_Det (mkN "job" ))) ;
    Retired = mkVP ( mkA "retired" ) ;
}
