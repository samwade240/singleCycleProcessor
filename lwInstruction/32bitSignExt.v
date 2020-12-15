module datasignExtender(IN,OUT);
	
	input [31:0]IN;
	output [63:0]OUT;
	
	assign OUT[63:32] = IN[31];
	assign OUT[31:0] = IN[31:0];

endmodule
