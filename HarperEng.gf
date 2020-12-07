concrete HarperEng of Harper = {
-- concrete HarperEng of Harper = open Prelude in {


  lincat
    Var ,
    Typ ,
    Exp,
    S ,
    Ind , Prop 
      = { s : Str } ;

  oper
    ss : Str -> { s : Str } ;
    ss st = { s = st } ;

    parenSS : { s : Str } -> { s : Str } ;
    parenSS str = { s = "(" ++ str.s ++ ")" } ;

  lin

    -- -- All : (Ind -> Prop) -> Prop ;
    -- All f = { s = "(" ++ "forall" ++ f.$0 ++ ")" ++ f.s } ;
    -- -- Eq : Ind -> Ind -> Prop ;
    -- Eq i1 i2 = { s = i1.s ++ "=" ++ i2.s } ;
    -- Y = ss "y" ;

    Nat = ss "Natural Number" ;
    Strng = ss "String" ;
    Bool = ss "Bool" ;
    Arr t1 t2 = ss (t1.s ++ "->" ++ t2.s) ;

    True = ss "True" ;
    False = ss "False" ;

    If _ be e1 e2 = ss ("if" ++ be.s ++  "then" ++ e1.s ++ "else" ++ e2.s) ;

    Conc e1 e2 = ss (e1.s ++ "++" ++ e2.s) ;
    Len str = ss ("lengthof" ++ str.s) ;

    Plus e1 e2 = ss (e1.s ++ "+" ++ e2.s) ;
    Times e1 e2 = ss (e1.s ++ "*" ++ e2.s) ;

    NatExp n = ss n.s ;
    StrngExp str = ss str.s ;

    -- MkVarB str = ss str.s ;
    -- MkVarN str = ss str.s ;
    -- MkVarS str = ss str.s ;
    -- -- MkInd str = ss str.s ;

    -- VarExpB : (t : Typ) -> Var t -> Exp t ; 
    VarExpB _ v = ss v.s ;


    MkS _ e = ss e.s ;

    -- Let : (t : Typ) -> (u : Typ) -> (Ind -> Exp u) -> Exp t -> Exp u ;
    Let _ _ f et = ss ("let" ++ f.$0  ++ "=" ++ et.s ++ "in" ++ f.s) ;

    -- Lam : (t : Typ) -> (Var t -> Exp t) -> Exp t
    Lam t1 t2 f = ss ("lambda" ++ f.$0 ++ ":" ++ t1.s ++ "." ++ f.s) ;

    App t12 t1 f x = ss ("apply" ++ f.s ++ "to" ++ x.s) ;

    Vbx = ss "vbx" ;
    Vby = ss "vby" ;
    Vbz = ss "vbz" ;
    Vnx = ss "vnx" ;
    Vny = ss "vny" ;
    Vnz = ss "vnz" ;
    Vsx = ss "vsx" ;
    Vsy = ss "vsy" ;
    Vsz = ss "vsz" ;






-- MkS Nat (App Nat Nat (Let (Arr Nat Nat) (Arr Nat Nat) (\y -> VarExpB (Arr Nat Nat) y) (Lam Nat Nat (\z -> Plus (VarExpB Nat z) (NatExp 2)))) (Plus (NatExp 999) (NatExp 999)))

}

