module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);

wire pab, pcd, pabc, pdef;

and(pab, p2a, p2b);
and(pcd, p2c, p2d);
or(p2y, pab, pcd);

and(pabc, p1a, p1b, p1c);
and(pdef, p1d, p1e, p1f);
or(p1y, pabc, pdef);

endmodule
