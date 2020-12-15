module fiveBitMux(A,B, S, O);

	input [4:0] A;
	input [4:0] B;
	input S;
	output [4:0] O;

	Mux m1(A[0],B[0], S, O[0]);
	Mux m2(A[1],B[1], S, O[1]);
	Mux m3(A[2],B[2], S, O[2]);
	Mux m4(A[3],B[3], S, O[3]);
	Mux m5(A[4],B[4], S, O[4]);



endmodule
