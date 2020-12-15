module programCounter(clk, rst, count);

input clk,rst;
output [7:0] count;
reg [7:0] count;

always @(posedge clk)
	if(rst == 0)
		count = count + 1;
	else
		count = 0;
endmoudule
