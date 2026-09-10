module mux2_1(
    input s, input i0, input i1, output y
);
wire w1,w2,w3;
assign w1=~s;
assign w2=w1 & i0;
assign w3=s & i1;
assign y= w2 | w3;
endmodule