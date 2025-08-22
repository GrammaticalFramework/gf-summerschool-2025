abstract App = {
    flags startcat = Statement ;
    cat
        Statement ;
        JobStatus ;
        Person ;

    fun

        SJobStatus : Person -> JobStatus -> Statement ;

        Inari,
        Aarne,
        Hans,
        You, I, She, They : Person ;

        Lecturer,
        Professor,
        Student,
        BetweenJobs,
        Retired : JobStatus ;

}
