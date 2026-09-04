`timescale 1ns/1ps
module dflipflop_tb;
reg d1,clk1;
wire q1,q2;
dflipflop dut (.d(d1), .clk(clk1), .q(q1), .qbar(q2));
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, dflipflop_tb);

    d1 = 0;
    clk1 = 0;

    #10 clk1 = 1;
    #10 d1 = 1;
    #10 d1 = 0;
    #10 clk1 = 0;
    #10 d1 = 1;
    #10 d1 =0;
    #10 clk1 = 1;
#20 $finish;
end
initial begin 
$monitor ($time,"d1=%b, clk1=%b, q1=%b, q2=%b",d1, clk1, q1, q2);
end
endmodule