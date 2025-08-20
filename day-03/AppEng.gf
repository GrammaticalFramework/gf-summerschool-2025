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
        Lecturer =
          AdvVP (UseV work_V) (PrepNP as_Prep a_lecturer_NP) ;
        -- Professor,
        -- Student,
        -- BetweenJobs,
        Retired = UseComp (CompAP retired_A) ;

    oper
      retired_A = {s = "retired"} ;
      work_V = MicroResEng.mkV "work" ;
      lecturer_N = MicroResEng.mkN "lecturer" ;
      lecturer_CN = MicroLangEng.UseN lecturer_N ;
      as_Prep = {s = "as"} ;
      a_lecturer_NP = DetCN a_Det lecturer_CN ;

}