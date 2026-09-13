module mux8_1(
    input s0, input s1, input s2, input i0, input i1, input i2, input i3, input i4, input i5, input i6, input i7, output y
);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
assign w1=~s0;
assign w2=~s1;
assign w3=~s2;
and a1(w4,  w1, w2, w3);
and a2(w5,  w1, w2, s2);
and a3(w6,  w1, s1, w3);
and a4(w7,  w1, s1, s2);
and a5(w8,  s0, w2, w3);
and a6(w9,  s0, w2, s2);
and a7(w10, s0, s1, w3);
and a8(w11, s0, s1, s2);
or  o1(y,w4,w5,w6,w7,w8,w9,w10,w11);
endmodule