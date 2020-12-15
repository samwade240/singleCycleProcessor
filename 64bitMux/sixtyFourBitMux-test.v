module sixtyFourBitMux_test();

reg [63:0] A;
reg [63:0] B;
reg S;
wire [63:0] O;
integer i;

sixtyFourBitMux DUT(A,B,S,O);

initial
begin

	
	$display("Input: S=1 All 0's:");
	for (i= 0; i < 63; i= i+1)
	begin
		S <= 1;
		A[i] <= 0;
		B[i] <= 0;
		#5
		$write("%d",O[i]);
	end
	
	$display("\nInput: S=1 All 1's:");
	for (i= 0; i < 63; i= i+1)
	begin
		S <= 1;
		A[i] <= 1;
		B[i] <= 1;
		#5
		$write("%d",O[i]);
	end
end
endmodule
