module registerFile(clk,rst,read1,read2,writeto,writedat,writeenable,out1,out2);

input writeenable, clk, rst;
input [63:0] writedat;
input [4:0] writeto;
input [4:0] read1;
input [4:0] read2;
output reg [63:0] out1, out2;
reg [63:0] mem [31:0];
integer i;

always @(posedge rst or negedge clk)
begin
	if(rst == 1) 
	begin
		for(i=0; i<64; i=i+1)
			mem[i] = 0;
	end
	else if (writeenable == 1) 
	begin
		mem[writeto] = writedat;
	end
	else if (writeenable == 0) 
	begin
		out1 <= mem[read1];
		out2 <= mem[read2];
	end


 
end
endmodule
