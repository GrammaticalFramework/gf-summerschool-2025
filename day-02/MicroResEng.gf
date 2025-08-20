resource MicroResEng = {
    param
        Number = Sg | Pl ;
        Case = Nom | Acc ;
        Person = I | II | III ;
        SVAgr = SVA Person Number ;
        VForm = PresIIISg | Inf ;
    oper 
        Noun : Type = { s : Number => Str } ;
        Adjective : Type = {s : Str} ;
        Verb : Type = {s: VForm => Str} ;
        Determiner : Type = {s : Str ; n: Number} ;
        NounPhr : Type = {s : Case => Str ; a : SVAgr };
        worstN : Str -> Str -> Noun = \child, children -> {
            s = table {
                Sg => child ;
                Pl => children 
            }
        } ;
        regN : Str -> Noun = \dog -> {
            s = table {
                Sg => dog ;
                Pl => addS dog
            }
        } ;

        mkV : Str -> Verb = \wait -> {
            s = table {
                PresIIISg => addS wait ; 
                Inf => wait
            }
        } ;

        addS : Str -> Str = \dog -> case dog of {
            dish@(di + ("sh" | "ss" | "x" | "ch")) => dish + "es" ;
            bab + "y" => bab + "ies" ;
            _ => dog + "s"
        } ;

        mkN = overload {
            mkN : Str -> Noun = regN ;
            mkN : Str -> Str -> Noun = worstN 
        } ;

        mkDet : Str -> Number -> Determiner = \s,n -> {
            s = s ;
            n = n 
        } ;
}