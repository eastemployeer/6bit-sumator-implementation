module single_generate(x, y, h, g, p);
  input x, y;
  output g;
  output p;
  output h;
  assign g = x & y;
  assign p = x | y;
  assign h = x ^ y;

endmodule

module propagation(gi,pi,gj,pj,Gij,Pij);
input gi, pi, gj, pj;
output Gij, Pij;
assign Gij = gi | (pi & gj);
assign Pij = pi & pj;

endmodule

module final_bit_sum(h,G,s);
input h, G;
output s;
assign s = h ^ G;
endmodule




module adder (x, y, s);

input [5:0] x;
input [5:0] y;
output [6:0] s;

wire [5:0] h;
wire [5:0] p;
wire [5:0] g;
wire [5:0] G;
wire [5:0] P;
wire [2:0] Gtemp;
wire [2:0] Ptemp;

//integer i;
//while(i<8) begin
/*initial begin
for (i=0;i<6;i=i+1) begin*/
single_generate G1 (x[0], y[0], s[0], G[0], P[0]);
single_generate G2 (x[1], y[1], h[1], g[1], p[1]);
single_generate G3 (x[2], y[2], h[2], g[2], p[2]);
single_generate G4 (x[3], y[3], h[3], g[3], p[3]);
single_generate G5 (x[4], y[4], h[4], g[4], p[4]);
single_generate G6 (x[5], y[5], h[5], g[5], p[5]);
/*i=i+1;
  end
end*/
//POZYCJA 2^0
//single_generate G1 (x[0], y[0], h[0], g[0], p[0]);
//if (i==0){

//KORZYSTAJAC Z FAKTU ZE G[0] = g[0] i P[0] = p[0] i h[0] = s[0] i s[6] = G[5] od razu zastąpiłem
//
//}
//else {
//POZYCJA 2^1
//single_generate G2 (x[1],y[1],h[1],g[1],p[1]);
final_bit_sum S1 (h[1],G[0],s[1]);
//}
//end

//POZYCJA 2^2
propagation P1 (g[1],p[1],G[0],P[0],G[1],P[1]);
//single_generate G3
final_bit_sum S2 (h[2],G[1],s[2]);

//POZYCJA 2^3
propagation P2 (g[2],p[2],G[1],P[1],G[2],P[2]);
final_bit_sum S3 (h[3],G[2],s[3]);

//POZYCJA 2^4
propagation P3 (g[3],p[3],g[2],p[2],Gtemp[0],Ptemp[0]);
propagation P3_1 (Gtemp[0],Ptemp[0],G[1],P[1],G[3],P[3]);
final_bit_sum S4 (h[4],G[3],s[4]);

//POZYCJA 2^5
propagation P4 (g[4],p[4],G[3],P[3],G[4],P[4]);
final_bit_sum S5 (h[5],G[4],s[5]);

//POZYCJA 2^6
propagation P5 (g[5],p[5],g[4],p[4],Gtemp[1],Ptemp[1]);
propagation P5_1 (Gtemp[1],Ptemp[1],G[3],P[3],s[6],P[5]);
endmodule
