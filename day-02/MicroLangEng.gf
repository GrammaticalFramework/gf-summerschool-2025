concrete MicroLangEng of MicroLang = open MicroResEng in {
    lincat
        Prep, Adv, S, Utt  = {s : Str} ;
        N, CN = Noun ;
        A, AP, Comp = Adjective ;
        Det = Determiner ;
        Pron, NP = NounPhr ;
        V = Verb ;
        V2 = Verb ;
        VP = {s: SVAgr => Str} ;

    lin
        UseN n = n ;
        PositA a = a ;
        AdjCN ap cn = {s = \\n => ap.s ++ cn.s ! n} ;
        UsePron p = p ;
        DetCN det cn = {
            s = \\_ => det.s ++ cn.s ! det.n ;
            a = SVA III det.n
        } ;
        UseV v = {
            s = table {
                (SVA III Sg) => v.s ! PresIIISg ;
                _ => v.s ! Inf
            }
        } ;
        ComplV2 v2 np = {
            s = let obj = np.s ! Acc in table {
                (SVA III Sg) => v2.s ! PresIIISg ++ obj ;
                _ => v2.s ! Inf ++ obj
            }
        } ;
        UseComp ap = {
            s = table {
                (SVA I Sg) => "am" ++ ap.s ;
                (SVA III Sg) => "is" ++ ap.s ;
                _ => "are" ++ ap.s
            }
        } ;
        CompAP ap = ap ;
        --    : NP -> Comp ;            -- a student
        CompNP np = {s = np.s ! Acc} ;
        --    : Adv -> Comp ;          -- between jobs
        CompAdv adv = adv ;

        PredVPS np vp = {
            s = np.s ! Nom ++ vp.s ! np.a
        } ;
        UttNP np = {s = np.s ! Nom} ;
        UttS s = s ;
        AdvVP vp adv = {s= \\sva => vp.s ! sva ++ adv.s } ;
        PrepNP p np = { s = p.s ++ np.s ! Acc } ;

        in_Prep = {s = "in"} ;
        on_Prep = {s = "on"} ;
        with_Prep = {s = "with"} ;

        now_Adv = {s = "now"} ;
        already_Adv = {s = "already"} ;
        heavily_Adv = {s = "heavily"} ;
        lightly_Adv = {s = "lightly"} ;

        apple_N = mkN "apple" ;
        bird_N = mkN "bird" ;
        cat_N = mkN "cat" ;
        car_N = mkN "car" ;
        dog_N = mkN "dog" ;
        dish_N = mkN "dish" ;
        fish_N = mkN "fish" "fish" ;
        baby_N = mkN "baby" ;
        lady_N = mkN "lady" ;
        man_N = mkN "man" "men" ;
        woman_N = mkN "woman" "women" ;
        child_N = mkN "child" "children" ;

        big_A = {s = "big"} ;
        small_A = {s = "small"} ;
        heavy_A = {s = "heavy"} ;
        light_A = {s = "light"} ;

        jump_V = mkV "jump" ;
        live_V = mkV "live" ;
        rush_V = mkV "rush" ;
        walk_V = mkV "walk" ;
        like_V2 = mkV "like" ;
        find_V2 = mkV "find" ;
        wash_V2 = mkV "wash" ;
        wait_V2 = mkV "wait" ;

        a_Det = {
            s = "a";
            n = Sg
        } ;
        aPl_Det = {
            s = "";
            n = Pl
        } ;
        the_Det = {
            s = "the";
            n = Sg
        } ;
        thePl_Det = {
            s = "the";
            n = Pl
        } ;

        i_Pron = {
            s = table { Nom => "I"; Acc => "me"};
            a = SVA I Sg };
        youSg_Pron = {
            s = table { Nom => "you"; Acc => "you"};
            a = SVA II Sg };
        he_Pron = {
            s = table { Nom => "he"; Acc => "him"};
            a = SVA III Sg; };
        she_Pron = {
            s = table { Nom => "she"; Acc => "her"};
            a = SVA III Sg };
        we_Pron = {
            s = table { Nom => "we"; Acc => "us"};
            a = SVA I Pl};
        youPl_Pron = {
            s = table { Nom => "you"; Acc => "you"};
            a = SVA II Pl };
        they_Pron = {
            s = table { Nom => "they"; Acc => "them"};
            a = SVA III Pl } ;

}