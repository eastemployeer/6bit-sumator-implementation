# sdf example
read_liberty example1_slow.lib
read_verilog gl_adder.v
link_design adder
create_clock -name clk -period 10 {clk1 clk2 clk3}
set_input_delay -clock clk 0 {in1 in2}
report_checks
