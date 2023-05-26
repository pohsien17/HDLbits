module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    
	wire clk,E,L,w;
    wire [3:0] r,q;
    assign {w,L,E,clk} = KEY;
    assign r = SW;
    assign LEDR = q;
    MUXDFF m3(.clk(clk),.L(L),.R(r[3]),.E(E),.w(w),.Q(q[3]));
    MUXDFF m2(.clk(clk),.L(L),.R(r[2]),.E(E),.w(q[3]),.Q(q[2]));
    MUXDFF m1(.clk(clk),.L(L),.R(r[1]),.E(E),.w(q[2]),.Q(q[1]));
    MUXDFF m0(.clk(clk),.L(L),.R(r[0]),.E(E),.w(q[1]),.Q(q[0]));
endmodule

module MUXDFF (
	input clk,L,R,E,w,
    output Q 
);
    always@(posedge clk) begin
        Q <= (L)? R:E? w:Q; 
    end
endmodule

