module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0] a0_cout;
    add16 add_0(.a(a[15:0]),.b(b[15:0]),.cin(1'h0),.sum(sum[15:0]),.cout(a0_cout));
    add16 add_1(.a(a[31:16]),.b(b[31:16]),.cin(a0_cout),.sum(sum[31:16]),.cout());
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	assign sum = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
endmodule

