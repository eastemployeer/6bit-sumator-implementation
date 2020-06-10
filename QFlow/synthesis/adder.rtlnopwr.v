/* Verilog module written by vlog2Verilog (qflow) */

module adder(
    output [6:0] s,
    input [5:0] x,
    input [5:0] y
);

wire vdd = 1'b1;
wire gnd = 1'b0;

wire [6:0] s ;
wire [5:0] x ;
wire [5:0] y ;
wire \G2.h  ;
wire _19_ ;
wire _16_ ;
wire \G1.h  ;
wire \P3.Pij  ;
wire \P5.Pij  ;
wire _13_ ;
wire _7_ ;
wire \G6.p  ;
wire _10_ ;
wire _4_ ;
wire \G5.p  ;
wire _1_ ;
wire \G4.p  ;
wire \G6.g  ;
wire \G3.p  ;
wire \G5.g  ;
wire \G2.p  ;
wire \G4.g  ;
wire _24_ ;
wire \G3.g  ;
wire _21_ ;
wire \G2.g  ;
wire _18_ ;
wire _15_ ;
wire \G1.g  ;
wire _9_ ;
wire \P1.Gij  ;
wire \P3.Gij  ;
wire _12_ ;
wire \P5.Gij  ;
wire _6_ ;
wire _3_ ;
wire _0_ ;
wire _23_ ;
wire _20_ ;
wire \S5.s  ;
wire _17_ ;
wire _14_ ;
wire \S4.s  ;
wire _8_ ;
wire \P2.Gij  ;
wire \P4.Gij  ;
wire _11_ ;
wire \P5_1.Gij  ;
wire _5_ ;
wire \S3.s  ;
wire _2_ ;
wire \S2.s  ;
wire \G6.h  ;
wire \S1.s  ;
wire \G5.h  ;
wire \P3_1.Gij  ;
wire \G4.h  ;
wire _25_ ;
wire \G3.h  ;
wire _22_ ;

NAND2X1 _60_ (
    .A(_10_),
    .B(_11_),
    .Y(\G6.p )
);

INVX1 _57_ (
    .A(y[5]),
    .Y(_10_)
);

FILL FILL5880x2050 (
);

NOR2X1 _54_ (
    .A(_8_),
    .B(_9_),
    .Y(\G5.g )
);

XOR2X1 _89_ (
    .A(\P4.Gij ),
    .B(\G6.h ),
    .Y(\S5.s )
);

XOR2X1 _51_ (
    .A(y[3]),
    .B(x[3]),
    .Y(\G4.h )
);

INVX1 _48_ (
    .A(x[3]),
    .Y(_7_)
);

XOR2X1 _86_ (
    .A(\P1.Gij ),
    .B(\G3.h ),
    .Y(\S2.s )
);

FILL SFILL4760x1050 (
);

FILL SFILL5000x2050 (
);

NAND2X1 _45_ (
    .A(_4_),
    .B(_5_),
    .Y(\G3.p )
);

NAND2X1 _83_ (
    .A(\P3_1.Gij ),
    .B(\P5.Pij ),
    .Y(_25_)
);

INVX1 _42_ (
    .A(y[2]),
    .Y(_4_)
);

NAND2X1 _80_ (
    .A(_22_),
    .B(_23_),
    .Y(\P5.Gij )
);

NOR2X1 _39_ (
    .A(_2_),
    .B(_3_),
    .Y(\G2.g )
);

NAND2X1 _77_ (
    .A(_20_),
    .B(_21_),
    .Y(\P4.Gij )
);

XOR2X1 _36_ (
    .A(y[0]),
    .B(x[0]),
    .Y(\G1.h )
);

NAND2X1 _74_ (
    .A(_18_),
    .B(_19_),
    .Y(\P3_1.Gij )
);

INVX1 _33_ (
    .A(y[0]),
    .Y(_0_)
);

AND2X2 _71_ (
    .A(\G4.p ),
    .B(\G3.p ),
    .Y(\P3.Pij )
);

INVX1 _68_ (
    .A(\G4.g ),
    .Y(_16_)
);

BUFX2 _30_ (
    .A(\S4.s ),
    .Y(s[4])
);

BUFX2 _27_ (
    .A(\S1.s ),
    .Y(s[1])
);

INVX1 _65_ (
    .A(\G3.g ),
    .Y(_14_)
);

FILL SFILL1800x50 (
);

INVX1 _62_ (
    .A(\G2.g ),
    .Y(_12_)
);

FILL SFILL4520x50 (
);

NOR2X1 _59_ (
    .A(_10_),
    .B(_11_),
    .Y(\G6.g )
);

FILL FILL5800x50 (
);

XOR2X1 _56_ (
    .A(y[4]),
    .B(x[4]),
    .Y(\G5.h )
);

FILL SFILL1880x2050 (
);

FILL SFILL4600x50 (
);

INVX1 _53_ (
    .A(x[4]),
    .Y(_9_)
);

XOR2X1 _88_ (
    .A(\P3_1.Gij ),
    .B(\G5.h ),
    .Y(\S4.s )
);

NAND2X1 _50_ (
    .A(_6_),
    .B(_7_),
    .Y(\G4.p )
);

FILL SFILL1960x50 (
);

INVX1 _47_ (
    .A(y[3]),
    .Y(_6_)
);

XOR2X1 _85_ (
    .A(\G1.g ),
    .B(\G2.h ),
    .Y(\S1.s )
);

NOR2X1 _44_ (
    .A(_4_),
    .B(_5_),
    .Y(\G3.g )
);

INVX1 _82_ (
    .A(\P5.Gij ),
    .Y(_24_)
);

NAND2X1 _79_ (
    .A(\G5.g ),
    .B(\G6.p ),
    .Y(_23_)
);

XOR2X1 _41_ (
    .A(y[1]),
    .B(x[1]),
    .Y(\G2.h )
);

INVX1 _38_ (
    .A(x[1]),
    .Y(_3_)
);

NAND2X1 _76_ (
    .A(\P3_1.Gij ),
    .B(\G5.p ),
    .Y(_21_)
);

FILL SFILL1800x2050 (
);

NOR2X1 _35_ (
    .A(_0_),
    .B(_1_),
    .Y(\G1.g )
);

NAND2X1 _73_ (
    .A(\P1.Gij ),
    .B(\P3.Pij ),
    .Y(_19_)
);

FILL SFILL1800x1050 (
);

BUFX2 _32_ (
    .A(\P5_1.Gij ),
    .Y(s[6])
);

NAND2X1 _70_ (
    .A(_16_),
    .B(_17_),
    .Y(\P3.Gij )
);

BUFX2 _29_ (
    .A(\S3.s ),
    .Y(s[3])
);

NAND2X1 _67_ (
    .A(_14_),
    .B(_15_),
    .Y(\P2.Gij )
);

BUFX2 _26_ (
    .A(\G1.h ),
    .Y(s[0])
);

NAND2X1 _64_ (
    .A(_12_),
    .B(_13_),
    .Y(\P1.Gij )
);

XOR2X1 _61_ (
    .A(y[5]),
    .B(x[5]),
    .Y(\G6.h )
);

INVX1 _58_ (
    .A(x[5]),
    .Y(_11_)
);

FILL SFILL4920x2050 (
);

FILL SFILL1880x50 (
);

NAND2X1 _55_ (
    .A(_8_),
    .B(_9_),
    .Y(\G5.p )
);

FILL SFILL4920x1050 (
);

FILL SFILL1720x2050 (
);

INVX1 _52_ (
    .A(y[4]),
    .Y(_8_)
);

FILL FILL5880x50 (
);

NOR2X1 _49_ (
    .A(_6_),
    .B(_7_),
    .Y(\G4.g )
);

XOR2X1 _87_ (
    .A(\P2.Gij ),
    .B(\G4.h ),
    .Y(\S3.s )
);

FILL SFILL4680x50 (
);

FILL SFILL1720x1050 (
);

XOR2X1 _46_ (
    .A(y[2]),
    .B(x[2]),
    .Y(\G3.h )
);

NAND2X1 _84_ (
    .A(_24_),
    .B(_25_),
    .Y(\P5_1.Gij )
);

INVX1 _43_ (
    .A(x[2]),
    .Y(_5_)
);

AND2X2 _81_ (
    .A(\G6.p ),
    .B(\G5.p ),
    .Y(\P5.Pij )
);

INVX1 _78_ (
    .A(\G6.g ),
    .Y(_22_)
);

NAND2X1 _40_ (
    .A(_2_),
    .B(_3_),
    .Y(\G2.p )
);

INVX1 _37_ (
    .A(y[1]),
    .Y(_2_)
);

INVX1 _75_ (
    .A(\G5.g ),
    .Y(_20_)
);

INVX1 _34_ (
    .A(x[0]),
    .Y(_1_)
);

INVX1 _72_ (
    .A(\P3.Gij ),
    .Y(_18_)
);

NAND2X1 _69_ (
    .A(\G3.g ),
    .B(\G4.p ),
    .Y(_17_)
);

FILL SFILL4840x1050 (
);

BUFX2 _31_ (
    .A(\S5.s ),
    .Y(s[5])
);

BUFX2 _28_ (
    .A(\S2.s ),
    .Y(s[2])
);

NAND2X1 _66_ (
    .A(\P1.Gij ),
    .B(\G3.p ),
    .Y(_15_)
);

FILL SFILL5080x2050 (
);

NAND2X1 _63_ (
    .A(\G1.g ),
    .B(\G2.p ),
    .Y(_13_)
);

FILL SFILL1640x1050 (
);

endmodule
