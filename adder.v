module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	
    wire [2:0] cout;
    FA f0(.a(x[0]),.b(y[0]),.cin(1'b0),.sum(sum[0]),.cout(cout[0]));
    FA f1(.a(x[1]),.b(y[1]),.cin(cout[0]),.sum(sum[1]),.cout(cout[1]));
    FA f2(.a(x[2]),.b(y[2]),.cin(cout[1]),.sum(sum[2]),.cout(cout[2]));
    FA f3(.a(x[3]),.b(y[3]),.cin(cout[2]),.sum(sum[3]),.cout(sum[4]));
endmodule

module FA(
	input a,b,
    input cin,
    output cout,sum
);
    assign {cout,sum} = a+b+cin;
    
endmodule

