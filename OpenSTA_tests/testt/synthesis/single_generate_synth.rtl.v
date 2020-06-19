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

BUFX2 _10_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .Y(g)
);

BUFX2 _11_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_3_),
    .Y(h)
);

BUFX2 _12_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(p)
);

INVX1 _5_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .Y(_0_)
);

INVX1 _6_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(x),
    .Y(_1_)
);

NOR2X1 _7_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

NAND2X1 _8_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_4_)
);

XOR2X1 _9_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .B(x),
    .Y(_3_)
);

endmodule
