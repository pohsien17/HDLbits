module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] m0_q,m1_q,m2_q;
    my_dff8(.clk(clk),.d(d),.q(m0_q));
    my_dff8(.clk(clk),.d(m0_q),.q(m1_q));
    my_dff8(.clk(clk),.d(m1_q),.q(m2_q));
    
    always@(*)
        case (sel)
            2'b00: q = d;
            2'b01: q = m0_q;
            2'b10: q = m1_q;
            2'b11: q = m2_q;   
        endcase     

endmodule

