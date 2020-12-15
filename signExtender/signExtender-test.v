module signExtender_test();

reg [15:0] A;
wire [63:0] O;
integer i;

signExtender DUT(A,O);

initial 
begin

	for(i = 0; i < 9; i = i+1)
	begin
		A[i] <= 1;
	end
	for(i = 9; i < 16; i = i+1)
	begin
		A[i] <= 0;
	end
	#100
	$display("A:%b, O:%b",A,O);



end
endmodule 
