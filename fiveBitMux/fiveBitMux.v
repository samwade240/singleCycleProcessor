module fiveBitMux(A0, A1, B0, B1, C0, C1, D0, D1, E0, E1, S, O1, O2, O3, O4, O5);

	input A0, A1, B0, B1, C0, C1, D0, D1, E0, E1, S;
	output O1, O2, O3, O4, O5;

	Mux m1(A0, A1, S, O1);
	Mux m2(B0, B1, S, O2);
	Mux m3(C0, C1, S, O3);
	Mux m4(D0, D1, S, O4);
	Mux m5(E0, E1, S, O5);



endmodule
