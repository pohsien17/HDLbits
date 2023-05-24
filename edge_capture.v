module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);
    reg [31:0] in_reg;
    
    always@(posedge clk) begin 
   		in_reg <= in ;
        if (reset)
            out <= 32'd0;
        else 
            out <= (~in & in_reg) | out ;
            
    end 
endmodule

