module fullAdder_test();

	reg A, B, C;
	wire S, Ci;

fullAdder DUT(A, B, C, S, Ci);

initial
begin

	A <=0;
	B <=0;
	C <=0;
	#9
	$display("input ABC: 000, Output: S and Ci: %d%d", S, Ci);

	A <=1;
	B <=0;
	C <=0;
	#9
	$display("input ABC: 100, Output: S and Ci: %d%d", S, Ci);

	A <=1;
	B <=1;
	C <=0;
	#9
	$display("input ABC: 110, Output: S and Ci: %d%d", S, Ci);

	A <=1;
	B <=0;
	C <=1;
	#9
	$display("input ABC: 101, Output: S and Ci: %d%d", S, Ci);

	A <=0;
	B <=1;
	C <=0;
	#9
	$display("input ABC: 010, Output: S and Ci: %d%d", S, Ci);

	A <=0;
	B <=1;
	C <=1;
	#9
	$display("input ABC: 011, Output: S and Ci: %d%d", S, Ci);

	A <=0;
	B <=0;
	C <=1;
	#9
	$display("input ABC: 001, Output: S and Ci: %d%d", S, Ci);

	A <=1;
	B <=1;
	C <=1;
	#9
	$display("input ABC: 111, Output: S and Ci: %d%d", S, Ci);




end
endmodule
