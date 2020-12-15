module andCircut(A, B, O);

	input [63:0] A;
	input [63:0] B;
	output [63:0] O;

	genvar i;
	generate
	for(i = 0; i < 64; i = i+1)
	begin: loop_1
		and #2 a(O[i], A[i], B[i]);
	end
	endgenerate



endmodule
