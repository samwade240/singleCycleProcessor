module programCounter(clk, rst, count);

input clk,rst;
output reg [7:0] count;

always @(posedge clk)
begin
	if(!rst)begin
//		$display("counting");
		count = count + 1;
	end
	else
		count = 0;// $display("here count: %b", count);
end
endmodule
