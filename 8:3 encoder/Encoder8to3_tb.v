module Encoder8to3_tb;
reg [7:0] I;
wire [2:0] Y;
Encoder8to3 dut (I,Y);
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, Encoder8to3_tb);
I = 8'b00000000; #10;
I = 8'b00000010; #10;
I = 8'b00000100; #10;
I = 8'b00001000; #10;
I = 8'b00010000; #10;
I = 8'b00100000; #10;
I = 8'b01000000; #10;
I = 8'b10000000; #10;
end
endmodule
