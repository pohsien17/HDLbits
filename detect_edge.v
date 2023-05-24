module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] in_last;
    always@(posedge clk)  begin 
    	in_delay <= in ;
        pedge = ~in_last & in ;
    end
endmodule
