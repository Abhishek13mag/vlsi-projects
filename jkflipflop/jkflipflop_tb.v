`timescale 1ns/1ps

module jkflipflop_tb;

reg j,k,clk;
wire q,qbar;

jkflipflop dut(.j(j), .k(k), .clk(clk), .q(q), .qbar(qbar));

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, jkflipflop_tb);

    j = 0;
    k = 0;
    clk = 0;

    #10 j = 0; k = 1;
    #10 j = 1; k = 0;
    #10 j = 1; k = 1;
    #10 j = 1; k = 1;
    #10 j = 0; k = 0;

    #10 $finish;
end

always #5 clk = ~clk;

initial begin
    $monitor($time, " j=%b, k=%b, clk=%b, q=%b, qbar=%b",
             j, k, clk, q, qbar);
end

endmodule