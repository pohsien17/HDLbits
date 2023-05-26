module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
	
    wire L,clk;
    wire [2:0] r,q;
    
    assign L = KEY[1]; 
    assign clk = KEY[0];
    assign LEDR = q;
    assign r = SW;
    
    mux m0(.clk(clk),.a(q[2]),.b(r[0]),.sel(L),.s(q[0]));
    mux m1(.clk(clk),.a(q[0]),.b(r[1]),.sel(L),.s(q[1]));
    mux m2(.clk(clk),.a(q[1]^q[2]),.b(r[2]),.sel(L),.s(q[2]));
    

endmodule

module mux(
	input a,b,clk,sel,
    output s
);
    always@(posedge clk) begin 
    	s <= sel ? b:a;
    end 
endmodule
