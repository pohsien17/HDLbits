module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	
    FA fa[99:0](.a(a),.b(b),.cin({cout[98:0],cin}),.sum(sum),.cout(cout));
    
endmodule

module FA(
	input a,b,cin,
    output sum,cout
);
    assign cout = (a&b)|(b&cin)|(a&cin); 
    assign sum = a^b^cin;
endmodule    


