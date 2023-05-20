module top_module(
input p1a,p2a,p1b,p2b,p1c,p2c,p1d,p2d,p1e,p1f,
output p1y,p2y);

wire w1,w2,w3,w4;

assign w1 = p2a & p2b;
assign w2 = p2c & p2d;
assign p2y = w1 | w2;
assign w3 = p1a & p1b & p1c;
assign w4 = p1f & p1e & p1d;
assign p1y = w3 | w4;
endmodule
