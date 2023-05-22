module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [2:0] c;
    bcd_fadd a0(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c[0]));
    bcd_fadd a1(.a(a[7:4]),.b(b[7:4]),.cin(c[0]),.sum(sum[7:4]),.cout(c[1]));
    bcd_fadd a2(.a(a[11:8]),.b(b[11:8]),.cin(c[1]),.sum(sum[11:8]),.cout(c[2]));
    bcd_fadd a3(.a(a[15:12]),.b(b[15:12]),.cin(c[2]),.sum(sum[15:12]),.cout(cout));
    
    
endmodule

