module dflipflop(
  input d,clk,
  output q,qbar
);
wire dbar,a1,a2;
assign dbar=~d;

nand n1(a1,d,clk);
nand n2(a2,dbar,clk);
nand n3(q,a1,qbar);
nand n4(qbar,a2,q);
endmodule