module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
	//s
    always@(posedge clk) begin
        if (reset) begin
        	ss <= 8'h0;
        end
        else if (ena) begin
            if (ss == 8'h59) begin 
          		ss <= 8'h0;
            end
            else begin 
                if (ss[3:0] < 4'h9) begin 
                    ss[3:0] <= ss[3:0]+ 4'h1; 
                end
                else begin 
                    ss[7:4] <= ss[7:4] + 4'h1;
                    ss[3:0] <= 4'h0;
                end
            end
        end 
    end
	
    //m
    always@(posedge clk) begin
         if (reset) begin
        	mm <= 8'h0;
        end
        else if (ena) begin
            if (ss == 8'h59) begin 
                if(mm == 8'h59) begin
                	mm <= 8'h0;
                end
                else begin 
                    if (mm[3:0]<4'h9) begin 
                        mm[3:0] <= mm[3:0] +4'h1; 
                    end
                    else begin 
                        mm[7:4] <= mm[7:4] + 4'h1;
                        mm[3:0] <= 4'h0;
                    end
                end
            end
        end 
    end

	//h
    always@(posedge clk) begin
        if (reset) begin
            hh <= 8'h12;
        end
        else if (ena) begin 
            if (ss==8'h59&&mm==8'h59) begin
                if(hh == 8'h12) begin
                	hh <= 1'h1;
                end
                else begin
                    if (hh[3:0] < 4'h9) begin 
                        hh[3:0] <= hh[3:0] + 1'h1; 
                    end
                    else begin
                        hh[7:4] <= 4'h1;
                        hh[3:0] <= 4'h0;
                    end
                end
            end
        end
    end
    
    always@(posedge clk) begin 
        if (reset)
            pm <= 0;
        else if (hh==8'h11 && mm==8'h59 && ss==8'h59) begin 
        	pm <= ~pm;
        end
            
    end
endmodule

