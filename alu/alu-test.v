module alu_test();

reg [63:0] A;
reg [63:0] B;
reg op;
wire [63:0] out;
wire eq;
integer i;

alu DUT(A, B, op, eq, out);

initial
begin
	for(i = 0; i <8; i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 0;
	end
	for(i = 8; i <16; i = i+1)
	begin
		A[i] <= 0;
		B[i] <= 1;
	end
	for(i = 16; i <48; i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 1;
	end
	for(i = 48; i <64; i = i+1)
	begin
		A[i] <= 0;
		B[i] <= 0;
	end

	op <= 1;

	#128
	$display("op = %b\n A = %b\n B = %b\n out = %b", op, A, B, eq, out); 

	$display("Next Test All 1's:");
	for(i = 0; i < 64; i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 1;
	end
	op <= 1;	 
	#128
	$display("op = %b\n A = %b\n B = %b\n out = %b", op, A, B, eq, out); 

	$display("Next Test:");
	A <= 64'h0000111100002222;
	B <= 64'h0000111100002222;
	op <= 1;	 
	#128
	$display("op = %b\n A = %b\n B = %b\n out = %b", op, A, B, eq, out); 

	$display("Next Test:");
	A <= 64'h0000111100002222;
	B <= 64'h0000111100002222;
	op <= 0;	 
	#128
	$display("op = %b\n A = %b\n B = %b\n out = %b", op, A, B, eq, out); 


	

end
endmodule

















