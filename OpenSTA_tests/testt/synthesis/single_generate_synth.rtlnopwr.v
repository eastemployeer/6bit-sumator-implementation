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
wire _4_ ;
wire _1_ ;
wire _3_ ;
wire _0_ ;
wire _2_ ;

BUFX2 _10_ (
    .A(_2_),
    .Y(g)
);

BUFX2 _11_ (
    .A(_3_),
    .Y(h)
);

BUFX2 _12_ (
    .A(_4_),
    .Y(p)
);

INVX1 _5_ (
    .A(y),
    .Y(_0_)
);

INVX1 _6_ (
    .A(x),
    .Y(_1_)
);

NOR2X1 _7_ (
    .A(_0_),
    .B(_1_),
    .Y(_2_)
);

NAND2X1 _8_ (
    .A(_0_),
    .B(_1_),
    .Y(_4_)
);

XOR2X1 _9_ (
    .A(y),
    .B(x),
    .Y(_3_)
);

endmodule
