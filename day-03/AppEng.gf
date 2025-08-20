--# -path=../day-02

concrete AppEng of App = open MicroLangEng, MicroResEng in {
    lincat
        Statement = MicroLangEng.S ;
        JobStatus = MicroLangEng.VP ;
        Person = MicroLangEng.NP ;

    lin

        -- : Person -> JobStatus -> Statement ;
        SJobStatus person jobstatus = PredVPS person jobstatus ;

        --  : Person ;
        Inari = UsePN {s = "Inari"} ;
        Aarne = UsePN {s = "Aarne"} ;
        Hans = UsePN {s = "Hans"} ;
        You = UsePron youSg_Pron ;
        I = UsePron i_Pron ;
        She = UsePron she_Pron ;

        -- : JobStatus ;
        Lecturer =
           works_as_a_N_VP lecturer_N
         | is_a_N_VP lecturer_N ;
        Professor = works_as_a_N_VP professor_N ;
        Student = is_a_N_VP student_N ;

        BetweenJobs = is_Adv (PrepNP between_Prep (DetCN aPl_Det (UseN job_N))) ;
        Retired = UseComp (CompAP retired_A) ;

    oper
      retired_A = {s = "retired"} ;

      is_Adv : Adv -> VP ;
      is_Adv adv = UseComp (CompAdv adv) ;

      is_a_N_VP : N -> VP ;
      is_a_N_VP job =
        let job_CN   = UseN job ;
            a_job_NP = DetCN a_Det job_CN ;
        in UseComp (CompNP a_job_NP) ;

      works_as_a_N_VP : N -> VP ;
      works_as_a_N_VP job =
        let job_CN   = UseN job ;
            a_job_NP = DetCN a_Det job_CN ;
        in AdvVP (UseV work_V) (PrepNP as_Prep a_job_NP) ;


      work_V = MicroResEng.mkV "work" ;
      student_N = MicroResEng.mkN "student" ;
      lecturer_N = MicroResEng.mkN "lecturer" ;
      professor_N = MicroResEng.mkN "professor" ;
      job_N = MicroResEng.mkN "job" ;

      as_Prep = {s = "as"} ;
      between_Prep = {s = "between"} ;
}