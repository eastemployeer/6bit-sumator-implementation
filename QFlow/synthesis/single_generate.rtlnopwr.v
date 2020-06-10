/* Verilog module written by vlog2Verilog (qflow) */

module single_generate(
    output g,
    output h,
    output p,
    input x,
    input y
);

wire vdd = 1'b1;
wire gnd = 1'b0;

wire g ;
wire h ;
wire p ;
wire x ;
wire y ;
wire _1_ ;
wire _3_ ;
wire _0_ ;
wire _2_ ;

NOR2X1 _7_ (
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

FILL SFILL1520x100 (
);

BUFX2 _10_ (
    .A(_3_),
    .Y(p)
);

AND2X2 _4_ (
    .A(y),
    .B(x),
    .Y(_1_)
);

FILL SFILL1360x100 (
);

FILL SFILL1680x100 (
);

FILL SFILL3120x100 (
);

BUFX2 _9_ (
    .A(_2_),
    .Y(h)
);

INVX1 _6_ (
    .A(_0_),
    .Y(_3_)
);

FILL SFILL3440x100 (
);

FILL SFILL3280x100 (
);

BUFX2 _8_ (
    .A(_1_),
    .Y(g)
);

NOR2X1 _5_ (
    .A(y),
    .B(x),
    .Y(_0_)
);

FILL SFILL2960x100 (
);

FILL SFILL1840x100 (
);

endmodule
