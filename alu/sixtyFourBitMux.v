module sixtyFourBitMux(A, B, S, O);

	input [63:0] A; 
	input [63:0] B;
	input S;
	output [63:0] O;

	genvar ii;
	generate
	for(ii = 0; ii < 64; ii = ii + 1)
	begin: gen_loop
		Mux a(A[ii], B[ii], S, O[ii]);
	end
	endgenerate

endmodule
