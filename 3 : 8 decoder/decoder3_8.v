module decoder_3to8_beh (
 input En,A,B,C,
 output reg [7:0] Y
);
 always @(*) begin
 // If Enable is 0, all outputs are 0
 if (En == 1'b0) begin
 Y = 8'b0000_0000;
 end
 // If Enable is 1, decode the inputs
 else begin
 case ({A, B, C}) // Concatenate A, B, and C into a 3-bit vector
 3'b000: Y = 8'b0000_0001;
 3'b001: Y = 8'b0000_0010;
 3'b010: Y = 8'b0000_0100;
 3'b011: Y = 8'b0000_1000;
 3'b100: Y = 8'b0001_0000;
 3'b101: Y = 8'b0010_0000;
 3'b110: Y = 8'b0100_0000;
 3'b111: Y = 8'b1000_0000;
 default: Y = 8'b0000_0000; // Good practice to prevent latches
 endcase
 end
 end
endmodule