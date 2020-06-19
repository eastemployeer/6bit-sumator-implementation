/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "sumator.v:29" *)
module adder(\x[0] , \x[1] , \x[2] , \x[3] , \x[4] , \x[5] , \y[0] , \y[1] , \y[2] , \y[3] , \y[4] , \y[5] , \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] );
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  (* src = "sumator.v:47|sumator.v:5" *)
  wire \G1.h ;
  (* src = "sumator.v:47|sumator.v:2" *)
  wire \G1.x ;
  (* src = "sumator.v:47|sumator.v:2" *)
  wire \G1.y ;
  (* src = "sumator.v:48|sumator.v:2" *)
  wire \G2.x ;
  (* src = "sumator.v:48|sumator.v:2" *)
  wire \G2.y ;
  (* src = "sumator.v:49|sumator.v:2" *)
  wire \G3.x ;
  (* src = "sumator.v:49|sumator.v:2" *)
  wire \G3.y ;
  (* src = "sumator.v:50|sumator.v:2" *)
  wire \G4.x ;
  (* src = "sumator.v:50|sumator.v:2" *)
  wire \G4.y ;
  (* src = "sumator.v:51|sumator.v:2" *)
  wire \G5.x ;
  (* src = "sumator.v:51|sumator.v:2" *)
  wire \G5.y ;
  (* src = "sumator.v:52|sumator.v:2" *)
  wire \G6.x ;
  (* src = "sumator.v:52|sumator.v:2" *)
  wire \G6.y ;
  (* src = "sumator.v:90|sumator.v:14" *)
  wire \P5_1.Gij ;
  (* src = "sumator.v:66|sumator.v:22" *)
  wire \S1.s ;
  (* src = "sumator.v:73|sumator.v:22" *)
  wire \S2.s ;
  (* src = "sumator.v:77|sumator.v:22" *)
  wire \S3.s ;
  (* src = "sumator.v:82|sumator.v:22" *)
  wire \S4.s ;
  (* src = "sumator.v:86|sumator.v:22" *)
  wire \S5.s ;
  (* src = "sumator.v:37" *)
  wire \g[0] ;
  (* src = "sumator.v:35" *)
  wire \h[0] ;
  (* src = "sumator.v:36" *)
  wire \p[0] ;
  (* src = "sumator.v:33" *)
  output \s[0] ;
  (* src = "sumator.v:33" *)
  output \s[1] ;
  (* src = "sumator.v:33" *)
  output \s[2] ;
  (* src = "sumator.v:33" *)
  output \s[3] ;
  (* src = "sumator.v:33" *)
  output \s[4] ;
  (* src = "sumator.v:33" *)
  output \s[5] ;
  (* src = "sumator.v:33" *)
  output \s[6] ;
  (* src = "sumator.v:31" *)
  input \x[0] ;
  (* src = "sumator.v:31" *)
  input \x[1] ;
  (* src = "sumator.v:31" *)
  input \x[2] ;
  (* src = "sumator.v:31" *)
  input \x[3] ;
  (* src = "sumator.v:31" *)
  input \x[4] ;
  (* src = "sumator.v:31" *)
  input \x[5] ;
  (* src = "sumator.v:32" *)
  input \y[0] ;
  (* src = "sumator.v:32" *)
  input \y[1] ;
  (* src = "sumator.v:32" *)
  input \y[2] ;
  (* src = "sumator.v:32" *)
  input \y[3] ;
  (* src = "sumator.v:32" *)
  input \y[4] ;
  (* src = "sumator.v:32" *)
  input \y[5] ;
  NOR2_X1 _20_ (
    .A1(\y[2] ),
    .A2(\x[2] ),
    .ZN(_00_)
  );
  XNOR2_X1 _21_ (
    .A(\y[2] ),
    .B(\x[2] ),
    .ZN(_01_)
  );
  NOR2_X1 _22_ (
    .A1(\y[1] ),
    .A2(\x[1] ),
    .ZN(_02_)
  );
  NAND2_X1 _23_ (
    .A1(\y[0] ),
    .A2(\x[0] ),
    .ZN(_03_)
  );
  AOI22_X1 _24_ (
    .A1(\y[1] ),
    .A2(\x[1] ),
    .B1(\y[0] ),
    .B2(\x[0] ),
    .ZN(_04_)
  );
  NOR2_X1 _25_ (
    .A1(_02_),
    .A2(_04_),
    .ZN(_05_)
  );
  XNOR2_X1 _26_ (
    .A(_01_),
    .B(_05_),
    .ZN(\s[2] )
  );
  NAND2_X1 _27_ (
    .A1(\y[3] ),
    .A2(\x[3] ),
    .ZN(_06_)
  );
  NOR2_X1 _28_ (
    .A1(\y[3] ),
    .A2(\x[3] ),
    .ZN(_07_)
  );
  XOR2_X1 _29_ (
    .A(\y[3] ),
    .B(\x[3] ),
    .Z(_08_)
  );
  NOR3_X1 _30_ (
    .A1(_00_),
    .A2(_02_),
    .A3(_04_),
    .ZN(_09_)
  );
  AOI21_X1 _31_ (
    .A(_09_),
    .B1(\x[2] ),
    .B2(\y[2] ),
    .ZN(_10_)
  );
  XNOR2_X1 _32_ (
    .A(_08_),
    .B(_10_),
    .ZN(\s[3] )
  );
  OR2_X1 _33_ (
    .A1(\y[4] ),
    .A2(\x[4] ),
    .ZN(_11_)
  );
  AND2_X1 _34_ (
    .A1(\y[4] ),
    .A2(\x[4] ),
    .ZN(_12_)
  );
  XNOR2_X1 _35_ (
    .A(\y[4] ),
    .B(\x[4] ),
    .ZN(_13_)
  );
  AOI21_X1 _36_ (
    .A(_07_),
    .B1(_10_),
    .B2(_06_),
    .ZN(_14_)
  );
  XNOR2_X1 _37_ (
    .A(_13_),
    .B(_14_),
    .ZN(\s[4] )
  );
  NOR2_X1 _38_ (
    .A1(\y[5] ),
    .A2(\x[5] ),
    .ZN(_15_)
  );
  NAND2_X1 _39_ (
    .A1(\y[5] ),
    .A2(\x[5] ),
    .ZN(_16_)
  );
  XOR2_X1 _40_ (
    .A(\y[5] ),
    .B(\x[5] ),
    .Z(_17_)
  );
  OAI21_X1 _41_ (
    .A(_11_),
    .B1(_12_),
    .B2(_14_),
    .ZN(_18_)
  );
  XNOR2_X1 _42_ (
    .A(_17_),
    .B(_18_),
    .ZN(\s[5] )
  );
  AOI21_X1 _43_ (
    .A(_15_),
    .B1(_16_),
    .B2(_18_),
    .ZN(\s[6] )
  );
  XOR2_X1 _44_ (
    .A(\y[1] ),
    .B(\x[1] ),
    .Z(_19_)
  );
  XNOR2_X1 _45_ (
    .A(_03_),
    .B(_19_),
    .ZN(\s[1] )
  );
  XOR2_X1 _46_ (
    .A(\y[0] ),
    .B(\x[0] ),
    .Z(\s[0] )
  );
  assign \h[0]  = 1'hx;
  assign \p[0]  = 1'hx;
  assign \G1.h  = \s[0] ;
  assign \G1.x  = \x[0] ;
  assign \G1.y  = \y[0] ;
  assign \G2.x  = \x[1] ;
  assign \G2.y  = \y[1] ;
  assign \G3.x  = \x[2] ;
  assign \G3.y  = \y[2] ;
  assign \G4.x  = \x[3] ;
  assign \G4.y  = \y[3] ;
  assign \G5.x  = \x[4] ;
  assign \G5.y  = \y[4] ;
  assign \G6.x  = \x[5] ;
  assign \G6.y  = \y[5] ;
  assign \P5_1.Gij  = \s[6] ;
  assign \S1.s  = \s[1] ;
  assign \S2.s  = \s[2] ;
  assign \S3.s  = \s[3] ;
  assign \S4.s  = \s[4] ;
  assign \S5.s  = \s[5] ;
  assign \g[0]  = 1'hx;
endmodule
