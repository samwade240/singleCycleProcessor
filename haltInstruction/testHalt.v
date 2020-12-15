module test_halt();

reg clk, rst;

halt DUT(clk, rst);


initial
begin
	clk <= 0;
	clk <= 1;
	clk <= 0;
	clk <= 1;
	rst <= 1;
	#4000
	$display("Am I halted?");

	
	clk <= 1;
	rst <= 0;
	#4000
	$display("Am I halted?");

	clk <= 1;
	rst <= 0;
	#4000
	$display("Am I halted?");




end
endmodule
