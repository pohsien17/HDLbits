 module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
     wire a0_cout;
     wire [31:0] b_xor_sub;
     assign b_xor_sub = b ^ {32{sub}};
     add16 a0(.a(a[15:0]),.b(b_xor_sub[15:0]),.cin(sub),.sum(sum[15:0]),.cout(a0_cout));
     add16 a1(.a(a[31:16]),.b(b_xor_sub[31:16]),.cin(a0_cout),.sum(sum[31:16]),.cout());
    
    
endmodule

