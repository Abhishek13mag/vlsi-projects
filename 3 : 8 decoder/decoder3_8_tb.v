module decoder_3to8_beh_tb;
 reg En, A, B, C;
 wire [7:0] Y;
 integer i; // Used as a counter for the 'for' loop
 decoder_3to8_beh dut (En, A, B, C,Y);
 initial begin
 $dumpfile("wave.vcd");
$dumpvars(0, decoder_3to8_beh_tb);
 // Print the headers and the values whenever they change
 $display("Time | En | A B C | Y");
 $display("--------------------------------");
 $monitor("%4t | %b | %b %b %b | %b", $time, En, A, B, C, Y);
 // --- Test 1: Decoder Disabled (En = 0) ---
 En = 0;
 A = 0; B = 0; C = 0; #10;
 // Even if inputs change, output should remain 00000000
 A = 1; B = 1; C = 1; #10;
 // --- Test 2: Decoder Enabled (En = 1) ---
 En = 1;
 // Loop from 0 to 7 (the 8 possible combinations)
 for (i = 0; i < 8; i = i + 1) begin
 // We can assign the integer 'i' directly to the concatenated inputs
 {A, B, C} = i;
 #10; // Wait 10 time units for the output to evaluate
 end
 end
endmodule
