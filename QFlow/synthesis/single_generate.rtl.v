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
wire _1_ ;
wire _3_ ;
wire _0_ ;
wire _2_ ;

NOR2X1 _7_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

FILL SFILL1520x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _10_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_3_),
    .Y(p)
);

AND2X2 _4_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .B(x),
    .Y(_1_)
);

FILL SFILL1360x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1680x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL3120x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _9_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .Y(h)
);

INVX1 _6_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .Y(_3_)
);

FILL SFILL3440x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL3280x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _8_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .Y(g)
);

NOR2X1 _5_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .B(x),
    .Y(_0_)
);

FILL SFILL2960x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1840x100 (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
