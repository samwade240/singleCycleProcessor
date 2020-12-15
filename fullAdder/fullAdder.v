module fullAdder(A,B,C,S,Ci);
	input A, B, C;
	output S, Ci;
	wire x1, a1, x2, a2;

	xor #2 xor1(x1, A, B);
	and #2 and1(a1, A, B);

	xor #2 xor2(S, x1, C);
	and #2 and2(a2, x1, C);

	or #2 or1(Ci, a2, a1);

endmodule
