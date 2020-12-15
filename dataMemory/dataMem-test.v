module dataMem_test();

reg clk, rst, en, rw;
reg [63:0] A, B;
wire [31:0] out;
integer i;

dataMem DUT(clk, rst, A, B, en, rw, out);

initial begin clk <= 0; end
always #1000 clk = ~clk;

initial
begin
	rst <= 1;
	for(i = 0; i < 64; i = i+1)
	begin
		A[i] <= 0;
		B[i] <= 1;
	end
	en <= 1;
	rw <= 1;	

	#3000
	$display("test 1:\n Out = %b", out);

	rst <= 0;
	for(i = 0; i < 64; i = i+1)
	begin
		A[i] <= 1;
		B[i] <= 1;
	end
	en <= 1;
	rw <= 1;	

	#3000
	$display("test 2:\n Out = %b", out);




	$finish();


end
endmodule
