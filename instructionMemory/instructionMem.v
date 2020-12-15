module instructionMem(clk,rst,address,instruction);

input clk,rst;
input [63:0] address;
output reg [31:0] instruction;
reg [31:0] mem [0:65535];


always @(posedge clk) begin
	if(rst == 1) begin
	instruction <= 32'h00000000;
	$readmemh("halt.mc", mem);
	end
end

always @(address, negedge rst) begin
	if(rst==0) begin
//		$display("At instruction");
		instruction <= address;
	end
end
endmodule
