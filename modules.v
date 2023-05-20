module top_module ( input a, input b, output out );
	/* By position 
    	mod_a instance1(in1,in2,out) ;
    */
    
    // By Name
    mod_a instance2(.out(out),.in1(a),.in2(b));
endmodule

