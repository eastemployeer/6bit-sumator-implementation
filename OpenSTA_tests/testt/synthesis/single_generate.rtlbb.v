/* Verilog module written by vlog2Verilog (qflow) */
/* With bit-blasted vectors */
/* With power connections converted to binary 1, 0 */

module single_generate(
    output g,
    output h,
    output p,
    input x,
    input y
);

wire g ;
wire h ;
wire p ;
wire x ;
wire y ;
wire _4_ ;
wire _1_ ;
wire _3_ ;
wire _0_ ;
wire _2_ ;

FILL SFILL840x50 (
);

NOR2X1 _7_ (
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

BUFX2 _10_ (
    .A(_2_),
    .Y(g)
);

FILL SFILL920x50 (
);

XOR2X1 _9_ (
    .A(y),
    .B(x),
    .Y(_3_)
);

BUFX2 _12_ (
    .A(_4_),
    .Y(p)
);

INVX1 _6_ (
    .A(x),
    .Y(_1_)
);

FILL SFILL1960x50 (
);

FILL SFILL1000x50 (
);

FILL SFILL1880x50 (
);

NAND2X1 _8_ (
    .A(_0_),
    .B(_1_),
    .Y(_4_)
);

BUFX2 _11_ (
    .A(_3_),
    .Y(h)
);

INVX1 _5_ (
    .A(y),
    .Y(_0_)
);

FILL SFILL2040x50 (
);

endmodule
