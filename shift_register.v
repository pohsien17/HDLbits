module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output reg out);
	
    reg [3:0] D;
    assign out = D[0];
    always@(posedge clk) begin
        if(!resetn) begin
        	D <= 0;
        end
        else begin
            D <= {in,D[3:1]};
        end
    end
endmodule

