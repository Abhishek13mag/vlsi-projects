module mux4_2(
    input s0, input s1, input i0, input i1, input i2, input i3, output y
);
wire w1,w2,w3,w4,w5,w6;
assign w1=~s0;
assign w2=~s1;
assign w3=w1 & w2 & i0;
assign w4=w2 & s0 & i1;
assign w5=w1 & s1 & i2;
assign w6=s0 & s1 & i3;
assign y= w3 | w4 | w5 | w6;
endmodule