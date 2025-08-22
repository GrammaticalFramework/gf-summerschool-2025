concrete AppGenderedGer of App = open SyntaxGer, ParadigmsGer in {
    lincat
        Statement = S ;
        JobStatus = LinJobStatus ;
        Person = LinPerson ;

    param
        HumanGender = M | F | Unknown ;

    lin
        -- : Person -> JobStatus -> Statement ;
        SJobStatus person job =
          let genderedJob : Comp = job.vp ! person.humanGender -- student, studentin or student*in
           in mkS (mkCl person.np (mkVP genderedJob)) ;

        Inari = mkPerson (mkNP (mkPN "Inari")) F ;
        Aarne = mkPerson (mkNP (mkPN "Aarne")) M ;
        Hans = mkPerson (mkNP (mkPN "Hans")) M ;
        You = mkPerson youPol_NP Unknown ;
        I = mkPerson i_NP Unknown ;
        She = mkPerson she_NP F ;


        Lecturer = smartJobStatus "Dozent" ;
        Professor = smartJobStatus "Professor" ;
        Student = smartJobStatus "Student" ;
        BetweenJobs = invarJobStatus (mkComp (mkAP (mkA "arbeitslos"))) ;
        Retired = invarJobStatus (mkComp (SyntaxGer.mkAdv in_Prep (mkNP theSg_Det (mkN "Ruhestand")))) ;

    oper
        LinPerson : Type = {np : NP ; humanGender : HumanGender} ;
        mkPerson : NP -> HumanGender -> LinPerson = \np,g -> {np=np ; humanGender=g} ;

        LinJobStatus : Type = {vp : HumanGender => Comp} ;
        mkJobStatus : (m,f,unk : N) -> LinJobStatus = \m,f,unk ->
          {vp = table {M => mkComp (mkNP m) ; F => mkComp (mkNP f) ; Unknown => mkComp (mkNP unk)}} ;

        smartJobStatus : Str -> JobStatus = \student ->
          let fem_N : N  = mkN (student + "in")  feminine ;
              masc_N : N = mkN student          masculine ;
              unk_N : N  = mkN (student + "*in") neuter ;
           in mkJobStatus masc_N fem_N unk_N ;

        invarJobStatus : Comp -> LinJobStatus = \arbeitslos -> {vp = \\_ => arbeitslos} ;

}