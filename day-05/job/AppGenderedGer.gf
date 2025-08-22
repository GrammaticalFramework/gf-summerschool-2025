concrete AppGenderedGer of App = open SyntaxGer, ParadigmsGer in {
    lincat
        Statement = S ;
        JobStatus = LinJobStatus ;
        Person = LinPerson ;

  param
    Gen = Fem | Masc | Neutr ;
    HumanGender = SomeGender Gen | NoGender ;

    lin
        -- : Person -> JobStatus -> Statement ;
        SJobStatus person job =
          let genderedJob : Comp = job.vp ! person.humanGender -- student, studentin or student*in
           in mkS (mkCl person.np (mkVP genderedJob)) ;

        Inari = mkPerson (mkNP (mkPN "Inari")) (SomeGender Fem) ;
        Aarne = mkPerson (mkNP (mkPN "Aarne")) (SomeGender Masc) ;
        Hans = mkPerson (mkNP (mkPN "Hans")) (SomeGender Masc) ;
        You = mkPerson youPol_NP NoGender ;
        I = mkPerson i_NP (SomeGender Neutr) ;
        She = mkPerson she_NP (SomeGender Fem) ;
	They = mkPerson they_NP NoGender ;

        Lecturer = smartJobStatus "Dozent" ;
        Professor = smartJobStatus "Professor" ;
        Student = smartJobStatus "Student" ;
        BetweenJobs = invarJobStatus (mkComp (mkAP (mkA "arbeitslos"))) ;
        Retired = invarJobStatus (mkComp (SyntaxGer.mkAdv in_Prep (mkNP theSg_Det (mkN "Ruhestand")))) ;

    oper
        LinPerson : Type = {np : NP ; humanGender : HumanGender} ;
        mkPerson : NP -> HumanGender -> LinPerson = \np,g -> {np=np ; humanGender=g} ;

        LinJobStatus : Type = {vp : HumanGender => Comp} ;
        mkJobStatus : (m,f,n,unk : N) -> LinJobStatus = \m,f,n,unk ->
          {vp = table {
	     SomeGender Fem => mkComp (mkNP aPl_Det f) ;
	     SomeGender Masc => mkComp (mkNP aPl_Det m);
	     SomeGender Neutr => mkComp (mkNP aPl_Det n);
	     NoGender => mkComp (mkNP aPl_Det unk)}} ;

        smartJobStatus : Str -> JobStatus = \student ->
          let fem_N : N  = mkN (student + "in") (student + "innen") feminine ;
              masc_N : N = mkN student          (student + "en") masculine ;
	      neutr_N : N = mkN (student + "y") (student + "ys") neuter ;
              unk_N : N  = mkN (student + "*in") (student + "*innen") feminine ;
           in mkJobStatus masc_N fem_N neutr_N unk_N ;

        invarJobStatus : Comp -> LinJobStatus = \arbeitslos -> {vp = \\_ => arbeitslos} ;

}
