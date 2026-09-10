`timescale 1ns/1ps
module mux2_1_tb;
reg h1, h2, h3;
wire z;
mux2_1 dut(.s(h1), .i0(h2), .i1(h3), .y(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, mux2_1_tb);
#10 h1=0; h2=0; h3=0;
#10 h1=0; h2=0; h3=1;
#10 h1=0; h2=1; h3=0;
#10 h1=0; h2=1; h3=1;
#10 h1=1; h2=0; h3=0;
#10 h1=1; h2=0; h3=1;
#10 h1=1; h2=1; h3=0;
#10 h1=1; h2=1; h3=1;
#20 $finish;
end
initial begin 
$monitor ($time,"h1=%b, h2=%b, h3=%b,z=%b",h1, h2, h3, z);
end
endmodule