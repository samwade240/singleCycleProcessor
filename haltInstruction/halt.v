module halt(clk, rst);

input wire clk, rst;

reg [31:0] instructionAddr;
wire [31:0] instruction;
wire [7:0] pc;


programCounter prC(clk, rst, pc);

instructionMem inM(clk, rst, instructionAddr, instruction);


always @ (instruction) begin

	instructionAddr <= pc;
	#10
//	$display("instructionAddr = %h", instructionAddr);
//	$display("instruction = %h", instruction);
//	$display("pc = %b", pc);

	if(instruction == 32'hFC000000) begin
		$display("*****Finishing*****");
		$finish();
	end
end

endmodule
