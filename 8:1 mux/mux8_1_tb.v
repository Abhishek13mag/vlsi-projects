`timescale 1ns/1ps
module mux8_1_tb;
reg h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11;
wire z;
integer i;
mux8_1 dut(.s0(h1), .s1(h2), .s2(h3), .i0(h4), .i1(h5), .i2(h6), .i3(h7), .i4(h8), .i5(h9), .i6(h10), .i7(h11), .y(z));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, mux8_1_tb);
  for (i = 0; i < 2048; i = i + 1) begin
    #10 {h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11} = i[10:0];
end
#20 $finish;
end
initial begin 
$monitor ($time,"h1=%b, h2=%b, h3=%b,h4=%b, h5=%b, h6=%b h7=%b, h8=%b, h9=%b,h10=%b, h11=%b ,z=%b",h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, z);
end
endmodule