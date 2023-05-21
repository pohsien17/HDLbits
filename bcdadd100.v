module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [98:0] cout_a;
    bcd_fadd bcd_f[99:0](.a(a), .b(b), .cin({cout_a,cin}), .cout({cout,cout_a}), .sum(sum));
    
endmodule


