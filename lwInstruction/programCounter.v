module programCounter(clk, rst, count);

input clk,rst;
output reg [63:0] count;

always @(posedge clk)
begin
	if(!rst)begin
		$display("adding to pc");
		count = count + 1;
	end
	else
		count = 0; $display("Pc: %d", count);
end
endmodule
