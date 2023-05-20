module top_module ( input clk, input d, output q );
    
    wire m0_q,m1_q;
    my_dff m0(.clk(clk),.d(d),.q(m0_q));
    my_dff m1(.clk(clk),.d(m0_q),.q(m1_q));
    my_dff m2(.clk(clk),.d(m1_q),.q(q));
endmodule
