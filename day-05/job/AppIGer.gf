concrete AppIGer of App = AppI with (Syntax=SyntaxGer) ** open ParadigmsGer in {
  lin
    Lecturer = mkVP ( mkN "Dozent" );
    Professor = mkVP (mkN "Professor" ) ;
    Student = mkVP ( mkN "Studentin" ) ;

    BetweenJobs = mkVP (mkA "arbeitslos" ) ;
    Retired = mkVP (SyntaxGer.mkAdv in_Prep (mkNP theSg_Det (mkN "Ruhestand" ))) ;
}
