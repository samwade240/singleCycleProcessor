module Mux(A, B, S, O);
	input A, B, S;
	output O;
	wire notS, w1, w2;

	not #1 n1(notS, S);

	and #2 a1(w1, A, notS);
	and #2 a2(w2, B, S);

	or #2 o1(O, w1, w2);



endmodule
