concrete AppIEng of App = AppI with (Syntax=SyntaxEng) ** open ParadigmsEng in {

  lin
    Lecturer = mkVP ( mkN "lecturer" );
    Professor = mkVP (mkN "professor" ) ;
    Student = mkVP ( mkN "student" ) ;

    BetweenJobs = mkVP (SyntaxEng.mkAdv between_Prep (mkNP aPl_Det (mkN "job" ))) ;
    Retired = mkVP ( mkA "retired" ) ;
}
