module fiveBitMux_test();

reg A0, A1, B0, B1, C0, C1, D0, D1, E0, E1, S;
wire O1, O2, O3, O4, O5;

fiveBitMux DUT(A0, A1, B0, B1, C0, C1, D0, D1, E0, E1, S, O1, O2, O3, O4, O5);

initial
begin

	S <= 1;
	A0 <= 0;
	A1 <= 0;
	B0 <= 0;
	B1 <= 0;
	C0 <= 0;
	C1 <= 0;
	D0 <= 0;
	D1 <= 0;
	E0 <= 0;
	E1 <= 0;
	#15
	$display("Input: 0000000000 S:1 Output = %d%d%d%d%d", O1, O2, O3, O4, O5);

	S <= 1;
	A0 <= 1;
	A1 <= 1;
	B0 <= 1;
	B1 <= 1;
	C0 <= 1;
	C1 <= 1;
	D0 <= 1;
	D1 <= 1;
	E0 <= 1;
	E1 <= 1;
	#15
	$display("Input: 1111111111 S:1 Output = %d%d%d%d%d", O1, O2, O3, O4, O5);



end
endmodule
