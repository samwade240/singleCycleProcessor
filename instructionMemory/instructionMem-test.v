module instructionMem_test();

reg clk, rst;
reg [63:0] addr;
wire [31:0] instr;
integer i;


initial
begin
	clk <= 1;
	rst <= 1;
	addr = 0000000000000000000000000000000000000000000000000000000000000000;
	rst <= 0;
	#2000
	$display("instruction: %b", instr);

	rst <= 0;
	addr = 0000000000000000000000000000000000000000000000000000000000000001;
	rst <= 0;
	#2000
	$display("instruction: %b", instr);
	
	rst <= 0;
	addr = 0000000000000000000000000000000000000000000000000000000000000010;
	rst <= 0;
	#2000
	$display("instruction: %b", instr);
	








end
endmodule
