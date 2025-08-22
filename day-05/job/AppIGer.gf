concrete AppIGer of App = AppI with (Syntax=SyntaxGer) ** open ParadigmsGer in {
  lin
    Lecturer = mkVP ( mkN "Dozent*in" "Dozent*innen" feminine );
    Professor = mkVP (mkN "Professor*in" "Professor*innen" feminine ) ;
    Student = mkVP ( mkN "Student*in" "Student*innen" feminine) ;

    BetweenJobs = mkVP (mkA "arbeitslos" ) ;
    Retired = mkVP (SyntaxGer.mkAdv in_Prep (mkNP theSg_Det (mkN "Ruhestand" ))) ;
}
