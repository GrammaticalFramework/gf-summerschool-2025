concrete AppAPIAr of App = open ParadigmsAra, SyntaxAra, LexiconAra, (R=ResAra), Prelude in {

    lincat
        Statement = S ;
        Role      = NP ;
        DoSomething = V2 ;
        Action    = VP ;
        Thing     = NP ;
        

    lin

      SAsRole role actionVP =
        mkS (as_a_NP_Adv role)
            (mkS (mkCl i_NP (mkVP want_VV actionVP))) ;

      SAsRoleV2 role doSomething thing =
        mkS (as_a_NP_Adv role)
            (mkS (mkCl i_NP want_VV (Apply doSomething thing))) ;


      -- Roles
      Student   = mkRole "طالب" ;
      Customer  = mkRole "زبون" ;
      User      = mkRole "مستخدم" ;
      Manager   = mkRole "مدير" ;
      Developer = mkRole "مبرمج" ;
      Tester    = mkRole "مختبر" ;
      ProjectManager = mkRole (nisbaA "مشروع") (mkN "مدير")  ;
      EndUser = mkRole (nisbaA "نهائي") (mkN "مُسْتَخْدِم") ;
      Administrator = mkRole "مسؤول" ;
      OnlineCustomer = mkRole (nisbaA "إلكتروني") (mkN "زبون") ;


      -- actions
      Read = mkVP <LexiconAra.read_V2 : V> ;
      Search = mkVP (mkV "يَبْحَثُ" "بَحْث") ;
      Merge = mkV2 (mkV "يَدْمُجُ" "دَمْج") ;
      Download = mkV2 (mkV "يَحْمِلُ" "حَمْل") ; 
      View = mkV2 (mkV "يَرَى" "رُؤْيَة") ;
      Edit = dirV2 (v2 "عدل") ;
      Generate = dirV2 (v4 "نشأَ") ;
      Log = dirV2 (v2 "سجل") ;
      Assign = dirV2 (v2 "عين") ;
      Create = dirV2 (v4 "نشأَ") ;
      Track = mkV2 (v3 "تبع") ;
      Update = dirV2 (v2 "حدث") ;
      

      -- things
      File = mkThing "مِلَفّ"  ;
      Code = mkThing "شيفرة" ;
      Account = mkThing "حِساب" ;
      Order = mkThing "طَلَب" ;
      Profile = mkThing (nisbaA "شخصي") (mkN "ملَف") ;
      CourseMaterial = mkThing (nisbaA "دراس") (mkN "مادّة") ;
      AccountInformation = mkThing (nisbaA "حِساب") (mkN "معلومات") ;
      Report = mkThing "تَقْرير" ;
      PurchaseHistory = mkThing (nisbaA "مشتريات") (mkN "تَارِيخ ") ;



    oper

      -- As a Person, ...
      as_a_NP_Adv : NP -> Adv =
        \np -> mkAdv kaPrep np ;

      mkRole = overload {
        mkRole : Str -> NP =
          \s -> mkNP a_Det (mkN s) ;
        mkRole : A -> N -> NP =
          \a,n -> mkNP a_Det (mkCN a n) ;
      } ;

      Apply: V2 -> NP -> VP = 
       \act, thing -> mkVP act thing ;

    mkThing = overload {
        mkThing : Str -> NP =
          \s -> mkNP a_Det (mkN s) ;
        mkThing : A -> N -> NP =
          \a,n -> mkNP a_Det (mkCN a n) ;
      } ;
          




      


}


    -- Example user stories:
    -- As a customer, I want to search for products by name to find certain items easily.
    -- As a registered user, I want to edit my account information to keep my profile updated.
    -- As an administrator, I want to generate reports on user activity and track user engagement.
    -- As a student, I want to download course materials so that I can study offline.
    -- As an online customer, I want to view my purchase history so that I can keep track of my orders.
    -- As a developer, I want to merge my code changes into the main branch so that the team’s work is integrated.
    -- As a tester, I want to log bugs found during testing so that they can be tracked and resolved.
    -- As a project manager, I want to assign tasks to team members so that work is distributed efficiently.
    