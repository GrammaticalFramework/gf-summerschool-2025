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
        -- Inari,
        -- Aarne,
        -- Hans,
        You = UsePron youSg_Pron ;
        I = UsePron i_Pron ;
        She = UsePron she_Pron ;

        -- : JobStatus ;
        Lecturer = works_as_a_N_VP lecturer_N ;
        Professor = works_as_a_N_VP professor_N ;
        -- Student,
        -- BetweenJobs,
        Retired = UseComp (CompAP retired_A) ;

    oper
      retired_A = {s = "retired"} ;

      works_as_a_N_VP : N -> VP ;
      works_as_a_N_VP job =
        let job_CN   = UseN job ;
            a_job_NP = DetCN a_Det job_CN ;
        in AdvVP (UseV work_V) (PrepNP as_Prep a_job_NP) ;


      work_V = MicroResEng.mkV "work" ;
      lecturer_N = MicroResEng.mkN "lecturer" ;
      professor_N = MicroResEng.mkN "professor" ;

      as_Prep = {s = "as"} ;
}