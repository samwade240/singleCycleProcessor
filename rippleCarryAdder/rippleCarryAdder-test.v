module rippleCarryAdder_test();

	reg [63:0] A;
	reg [63:0] B;
	reg C0;
	wire [63:0] S;
	wire C64;
	integer i;

rippleCarryAdder DUT(A,B,C0,S,C64);	

initial 
begin		
	$display("Input order: C0,A0,B0,A1,B1,A2,B2,A3,B3,...\n");


	for(i = 0; i < 7 ;i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 0;
	end

	for(i = 7; i < 15 ;i = i+1)
	begin
		A[i] <= 0;
		B[i] <= 1;
	end

	for(i = 15; i < 47 ;i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 1;
	end

	for(i = 47; i < 64 ;i = i+1)
	begin
		A[i] <= 0;
		B[i] <= 0;
		C0 <= 1;
	end

	#100
	$display("A = %b",A);
	$display("B = %b",B);
	$display("S = %b",S);
	$display("C64 = %d",C64);


end
endmodule

