module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire a0_cout;
    wire [15:0] a1_sum,a2_sum;
    add16 a0(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(a0_cout));
    add16 a1(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(a1_sum),.cout());
    add16 a2(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(a2_sum),.cout());
    
    assign sum[31:16] = (a0_cout)?(a2_sum):(a1_sum); 

endmodule
