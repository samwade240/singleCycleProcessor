module compare_test();

reg [63:0] A;
reg [63:0] B;
wire O;

compare DUT(A, B, O);
initial
begin

	A[63:0] <= 1;
	B[63:0] <= 1;
	#100
	$display("Equal: \nO: %b",O);

	A[63:0] <= 0;
	B[63:0] <= 1;
	#100
	$display("Not Equal: \nO: %b",O);

	A[63:0] <= 1;
	B[63:0] <= 0;
	#100
	$display("Still Not Equal: \nO: %b",O);

end
endmodule
