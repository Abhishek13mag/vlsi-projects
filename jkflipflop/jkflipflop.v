module jkflipflop(
    input j,k,clk,
    output reg q,
    output qbar
);

always @(posedge clk) begin
    if(j==0 && k==0)
        q <= q;       // Hold
    else if(j==0 && k==1)
        q <= 0;       // Reset
    else if(j==1 && k==0)
        q <= 1;       // Set
    else
        q <= ~q;      // Toggle
end

assign qbar = ~q;

endmodule