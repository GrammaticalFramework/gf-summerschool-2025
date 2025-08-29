concrete AppAPIEng of App = open ParadigmsEng, IrregEng, SyntaxEng, LexiconEng, (R=ResEng), Prelude in {

    lincat
        Statement = S ;
        Role      = NP ;
        DoSomething = V2 ;
        Action    = VP ;
        Thing     = NP ;

    lin
      wantToAction action = mkVP want_VV action ;

      SJobStatus person job =
        mkS (mkCl person (mkVP job)) ;

      -- As a job, Person wants to do something
      SAsRole role actionVP =
        mkS (as_a_N_Adv role) (mkS (mkCl i_NP (mkVP want_VV actionVP))) ;
      
      
      SAsRoleV2 role doSomething thing =
        mkS (as_a_N_Adv role) (mkS (mkCl i_NP want_VV (Apply doSomething thing))) ;
            

      -- jobs
      Student   = mkRole "student" ;
      Customer  = mkRole "customer";
      User      = mkNP a_Det (mkN "user") ;
      Manager   = mkNP a_Det (mkN "manager") ;
      Developer = mkNP a_Det (mkN "developer") ;
      Tester    = mkNP a_Det (mkN "tester") ;
      ProjectManager = mkNP a_Det (mkN "project manager") ;
      EndUser = mkNP a_Det (mkN "end user") ;
      Administrator = mkNP a_Det (mkN "administrator") ;
      OnlineCustomer = mkNP a_Det (mkN "online customer") ;


      -- actions
      Read = mkVP (mkV "read") ;
      Search = mkVP (mkV "search") ;
      Merge = mkV2 "merge" ;
      Download = mkV2 "download" ;
      View = mkV2 "view" ;
      Edit = mkV2 "edit" ;
      Generate = mkV2 "generate" ;
      Log = mkV2 "log" ;
      Assign = mkV2 "assign" ;
      Create = mkV2 "create" ;
      Track = mkV2 "track" ;
      Update = mkV2 "update" ;


      -- things
      File = mkThing "file"  ;
      Code = mkThing "code" ;
      Account = mkThing "account" ;
      Order = mkThing "order" ;
      Profile = mkThing "profile" ;
      CourseMaterial = mkThing "course material" ;
      AccountInformation = mkThing "account information" ;
      Report = mkThing "report" ;
      PurchaseHistory = mkThing "purchase history" ;


     
     

    oper
      asPrep : Prep = mkPrep "as" ;

      as_a_N_Adv : NP -> Adv =
        \n -> SyntaxEng.mkAdv asPrep n ;

      SWant : NP -> VP -> S =
        \person,action -> mkS (mkCl person (mkVP want_VV action)) ;

      Apply: V2 -> NP -> VP = 
       \act, thing -> mkVP act thing ;

       mkRole : Str -> NP =
  \s -> mkNP a_Det (ParadigmsEng.mkN s (s + "s")) ;

      mkThing : Str -> NP =
          \s -> mkNP a_Det (mkN s) ;
}
