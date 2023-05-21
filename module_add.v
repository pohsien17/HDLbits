module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] m0_cout,m1_cout,cin;
    add16(.a(a[15:0]),.b(b[15:0]),.cin(1'h0),.sum(sum[15:0]),.cout(m0_cout));
    add16(.a(a[31:16]),.b(b[31:16]),.cin(m0_cout),.sum(sum[31:16]),.cout(m1_cout));
endmodule

