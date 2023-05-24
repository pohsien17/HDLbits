module top_module (
    input clk,
    input j,
    input k,
    output reg Q); 
	
    always@(posedge clk) begin 
        case ({j,k})
            2'd0: Q <= Q;
            2'd1: Q <= 2'd0;
            2'd2: Q <= 2'd1;
            2'd3: Q <= ~Q;
            default : Q <= Q;
        endcase 
    end
endmodule

