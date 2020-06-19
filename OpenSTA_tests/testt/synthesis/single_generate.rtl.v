/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module single_generate(
    inout vdd,
    inout gnd,
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
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _7_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

BUFX2 _10_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .Y(g)
);

FILL SFILL920x50 (
    .gnd(gnd),
    .vdd(vdd)
);

XOR2X1 _9_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .B(x),
    .Y(_3_)
);

BUFX2 _12_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(p)
);

INVX1 _6_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(x),
    .Y(_1_)
);

FILL SFILL1960x50 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1000x50 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1880x50 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _8_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_4_)
);

BUFX2 _11_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_3_),
    .Y(h)
);

INVX1 _5_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .Y(_0_)
);

FILL SFILL2040x50 (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
