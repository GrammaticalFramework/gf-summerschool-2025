concrete AppAPIAr of App = open
    ParadigmsAra,
    SyntaxAra,
    LexiconAra,
    (R=ResAra) -- I use this to get the gendered 2nd person pronouns, which are not in the public API.
               -- (They should be, it's just bad design/nobody thought to add them.
               --  I should just add them instead of writing this long comment.)
  in {

    lincat
        Statement = S ;
        Role      = NP ;
        Action    = VP ;

    lin
      SAsRole role actionVP =
        mkS (as_a_NP_Adv role)
            (mkS (mkCl i_NP (mkVP want_VV actionVP))) ;

      -- I removed wantToAction, because all sentences are about wanting
      -- If you want variation, "as a role, I do smth" in addition to
      -- "as a role, I want to do smth", just reintroduce wantToAction.

      -- Roles
            -- I have overloaded mkRole, see under oper
      Developer = mkRole "مُطَوِّر" ;
      EndUser = mkRole (nisbaA "نهائي") (mkN "مُسْتَخْدِم") ;

      -- actions
      Search = mkVP (mkV "يَبْحَثُ" "بَحْث") ;
      -- using the mkV instance that takes two forms of Form I verb (see https://en.wiktionary.org/wiki/Appendix:Arabic_verbs#Form_I)
      --   1) "non-past" form that starts with يَ
      --   2) verbal noun
      -- for example https://en.wiktionary.org/wiki/%D8%A8%D8%AD%D8%AB#Arabic: they're both given there like this
      -- بَحَثَ • (baḥaṯa) I (non-past يَبْحَثُ (yabḥaṯu), verbal noun بَحْث (baḥṯ))
      -- (I don't remember why we give this form instead of فَعَلَ / فَعِلَ / فَعُلَ)

      -- read_V2 is defined in LexiconAra, I am type coercing it
      -- into intransitive verb with the syntax <function : Category>
      Read = mkVP <LexiconAra.read_V2 : V> ;

      Merge = mkVP (mkV "يَدْمُجُ" "دَمْج") ; -- from https://en.wiktionary.org/wiki/%D8%AF%D9%85%D8%AC#Arabic

    oper
      mkRole = overload {
        mkRole : Str -> NP =
          \s -> mkNP a_Det (mkN s) ;
        mkRole : A -> N -> NP =
          \a,n -> mkNP a_Det (mkCN a n) ;
      } ;

      -- As a Person, ...
      as_a_NP_Adv : NP -> Adv =
        \np -> mkAdv kaPrep np ;

}


-- extAdv
-- S: Adv (As a customer,) -> S (I want to) -> S
-- as_a_N_Adv : N -> Adv = \n -> SyntaxAra.mkAdv kaPrep (mkNP n) ;

    -- As a customer, I want to search for products by name to find certain items easily.
    -- As a registered user, I want to edit my account information to keep my profile updated.
    -- As an administrator, I want to generate reports on user activity and track user engagement.
    -- As a student, I want to download course materials so that I can study offline.
    -- As an online customer, I want to view my purchase history so that I can keep track of my orders.
    -- As a developer, I want to merge my code changes into the main branch so that the team’s work is integrated.
    -- As a tester, I want to log bugs found during testing so that they can be tracked and resolved.
    -- As a project manager, I want to assign tasks to team members so that work is distributed efficiently.
