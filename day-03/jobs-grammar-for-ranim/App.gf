abstract App = {
    flags startcat = Statement ;

    cat
        Statement ;
        Role ;
        --Person ;
        Action ;

    fun
        -- If the person is always I, then you don't even need Person in the abstract syntax!
        SAsRole : Role -> Action -> Statement;
--        SAsRole_old : Role -> Person -> Action -> Statement;

        -- Roles
        Customer,
        EndUser,
        Administrator,
        Student,
        OnlineCustomer,
        Developer,
        Tester,
        ProjectManager
        : Role ;

        -- I made these uppercase, because that is the usual way to name lexi in an application grammar
        Search : Action ;
        Read : Action ;
        Merge : Action ;

        -- later: combine actions to get more complex actions
        -- alternative: restrict these by adding intermediate categories
        InOrderTo : Action -> Action -> Action ; -- (search products by name) to (find items easily)
        AndAction : Action -> Action -> Action ; -- (generate reports on user activity) and (track user engagement)


}
