module testbench;
 reg [5:0] a, y;
 wire [6:0] s;

 adder sumator (a,y,s);

 initial begin
  a[0]=1'b0;
  a[1]=1'b1;
  a[2]=1'b0;
  a[3]=1'b0;
  a[4]=1'b0;
  a[5]=1'b0;
  y[0]=1'b0;
  y[1]=1'b1;
  y[2]=1'b1;
  y[3]=1'b0;
  y[4]=1'b1;
  y[5]=1'b0;
 end
 initial begin
 $monitor("Wynik: %b",s);
 end

endmodule
