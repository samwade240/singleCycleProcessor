module rippleCarryAdder(A,B,S);
	input [63:0] A, B;
	output [63:0] S, tmp;

	fullAdder a(A[0],B[0], 1'b0,S[0], tmp[0]);
	genvar i;
	generate
	for(i = 1; i < 64; i = i+1)
	begin: add_gen
		fullAdder add(A[i], B[i],tmp[i-1],S[i], tmp[i]);
	end
	endgenerate

endmodule
