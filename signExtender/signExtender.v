module signExtender(IN,OUT);
	
	input [15:0]IN;
	output [63:0]OUT;
	
	assign OUT[63:16] = IN[15];
	assign OUT[15:0] = IN[15:0];

endmodule
