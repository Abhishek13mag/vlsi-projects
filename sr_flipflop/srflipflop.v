module srflipflop (
    input clk,
    input rst_n,      // Active-low synchronous reset
    input s, r,
    output reg q,
    output q_bar
);

    always @(posedge clk) begin
        if (!rst_n) begin
            q <= 1'b0;
        end else begin
            case ({s, r})
                2'b00: q <= q;       // Hold state
                2'b01: q <= 1'b0;    // Reset
                2'b10: q <= 1'b1;    // Set
                2'b11: q <= 1'bx;    // Invalid state
                default: q <= q;
            endcase
        end
    end

    assign q_bar = ~q;

endmodule   