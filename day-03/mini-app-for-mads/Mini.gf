abstract Mini = {
    flags startcat = Statement ;
cat
  Person ; Class ; University ;
  Clause ;
  Statement ;

fun
  Line, Maria : Person ;
  GF101, IntroPython : Class ;
  Chalmers, GU : University ;

  attends : Person -> Class -> Clause ;
  heldAt : Class -> University -> Clause ;

  Pos : Clause -> Statement ;
  Neg : Clause -> Statement ;
  Q : Clause -> Statement ;

  ------
  -- Aggregations
  attends_heldAt : Person -> Class -> University -> Clause ;

}