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

NOR2X1 _5_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(y),
    .B(x),
    .Y(_0_)
);

INVX1 _6_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .Y(_3_)
);

NOR2X1 _7_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

BUFX2 _8_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .Y(g)
);

BUFX2 _9_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .Y(h)
);

endmodule
