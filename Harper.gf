abstract Harper = {




cat
  Typ ;
  Var Typ ;
  Exp Typ ;
  S ;
  Ind ; Prop ;
  
fun

  -- -- MkInd : String -> Ind ;
  -- All : (Ind -> Prop) -> Prop ;
  -- Eq : Ind -> Ind -> Prop ;
  -- Y : Ind ;

  -- how to generalize Eq to make it polymorphic

  Nat : Typ ;
  Strng : Typ ;
  Bool : Typ ;
  Arr : Typ -> Typ -> Typ ;

  True : Exp Bool ;
  False : Exp Bool ;

  If : (t : Typ) -> Exp Bool -> Exp t -> Exp t -> Exp t ;

  StrngExp : String -> Exp Strng ;
  Conc : Exp Strng -> Exp Strng -> Exp Strng ;

  NatExp : Int -> Exp Nat;
  Len : Exp Strng -> Exp Nat ;
  Plus , Times : Exp Nat -> Exp Nat -> Exp Nat ;

  VarExpB : (t : Typ) -> Var t -> Exp t ;


  Vbx : Var Bool ;
  Vby : Var Bool ;
  Vbz : Var Bool ;

  Vnx : Var Nat ;
  Vny : Var Nat ;
  Vnz : Var Nat ;

  Vsx : Var Strng ;
  Vsy : Var Strng ;
  Vsz : Var Strng ;

  -- -- MkVar : String -> Var ;
  -- MkVarB : String -> Var Bool ;
  -- MkVarN : String -> Var Nat ;
  -- MkVarS : String -> Var Strng ;

  -- Let : (t : Typ) -> (u : Typ) -> (Ind -> Exp u) -> Exp t -> Exp u ;
  Let : (t : Typ) -> (u : Typ) -> (Var t -> Exp u) -> Exp t -> Exp u ;

  Lam : (t : Typ) -> (u : Typ) -> (Var t -> Exp u) -> Exp (Arr t u) ;
  App : (t : Typ) -> (u : Typ) -> Exp (Arr t u) -> Exp t -> Exp u ;

  -- so need to somehow have the same variable quantified with its scope
  MkS : (t : Typ) -> Exp t -> S ;

}



