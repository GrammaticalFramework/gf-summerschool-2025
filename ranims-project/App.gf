abstract App = {
    flags startcat = Statement ;

    cat
        Statement ;
        JobStatus ;
        Role;
        Action;
        Thing;
        DoSomething ;

    fun

        SAsRole : Role -> Action -> Statement;
        SAsRoleV2 : Role -> DoSomething -> Thing -> Statement;

        -- Roles
        Lecturer,
        Professor,
        Student,
        Customer,
        User,
        Manager,
        Developer,
        BetweenJobs,
        Retired,
        EndUser,
        Administrator,
        OnlineCustomer,
        Tester,
        ProjectManager
        : Role ;

        -- Actions
        Search : Action ;
        Read : Action ;
        Merge : DoSomething ;
        Download : DoSomething ;
        View : DoSomething ;
        Edit : DoSomething ;
        Generate : DoSomething ;
        Log : DoSomething ;
        Assign : DoSomething ;
        Create : DoSomething ;
        Track : DoSomething ;
        Update : DoSomething ;



        Apply     : DoSomething -> Thing -> Action ;


        InOrderTo : Action -> Action -> Action ; -- (search products by name) to (find items easily)
        AndAction : Action -> Action -> Action ; -- (generate reports on user activity) and (track user engagement)


        -- things
        File,
        Code,
        PurchaseHistory,
        CourseMaterial,
        AccountInformation,
        Account,
        Order,
        Profile,
        UserActivity,
        Report : Thing ;

}
