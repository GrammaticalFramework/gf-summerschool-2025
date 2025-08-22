concrete AppIFin of App = AppI with (Syntax=SyntaxFin) ** open ParadigmsFin in {
  lin
    Lecturer = mkVP ( mkN "lehtori" );
    Professor = mkVP (mkN "professori" ) ;
    Student = mkVP ( mkN "opiskelija" ) ;

    BetweenJobs = mkVP (mkA "työtön" ) ;
    Retired = mkVP (SyntaxFin.mkAdv on_Prep (mkNP theSg_Det (mkN "eläke" ))) ;
}
