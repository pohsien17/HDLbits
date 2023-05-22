module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
	assign heater = too_cold & mode ? 1:0; 
    assign aircon = ~mode&too_hot ? 1:0;
    assign fan = (mode&too_cold)|(~mode&too_hot)|(fan_on) ? 1:0;
endmodule

