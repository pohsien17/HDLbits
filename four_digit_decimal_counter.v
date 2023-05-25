module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
	
    always@(posedge clk) begin 
        if (reset) begin 
        	q <=16'd0;
        end 
        else begin
            q[3:0] <= q[3:0] + 4'd1;
            if(ena[1]) begin
                q[3:0] <= 4'd0;
                q[7:4] <= q[7:4] + 4'd1;
            end
            if(ena[2]) begin 
            	q[3:0] <= 4'd0;
                q[7:4] <= 4'd0;
                q[11:8] <= q[11:8] + 4'd1;
            end
            if(ena[3]) begin 
            	q[3:0] <= 4'd0;
                q[7:4] <= 4'd0;
                q[11:8] <= 4'd0;
                q[15:12] <= (q[15:12]<9) ? q[15:12]+ 4'd1 : 4'd0;
            end
        end
            
    end
    assign ena[1] = q[3:0]==4'd9;
    assign ena[2] = (q[7:4]==4'd9)&&(q[3:0]==4'd9);
    assign ena[3] = (q[11:8]==4'd9)&&(q[7:4]==4'd9)&&(q[3:0]==4'd9);
    
endmodule

