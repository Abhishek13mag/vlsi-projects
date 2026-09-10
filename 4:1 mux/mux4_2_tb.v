`timescale 1ns/1ps
module mux4_2_tb;
reg h1, h2, h3, h4, h5, h6;
wire z;
integer i;
mux4_2 dut(.s0(h1), .s1(h2), .i0(h3), .i1(h4), .i2(h5), .i3(h6), .y(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, mux4_2_tb);
  for (i = 0; i < 64; i = i + 1) begin
    #10 {h1, h2, h3, h4, h5, h6} = i[5:0];
end
#20 $finish;
end
initial begin 
$monitor ($time,"h1=%b, h2=%b, h3=%b,h4=%b, h5=%b, h6=%b ,z=%b",h1, h2, h3, h4, h5, h6, z);
end
endmodule