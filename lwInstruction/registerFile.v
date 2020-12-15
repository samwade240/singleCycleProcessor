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

	$display("Registers:");
	$display("%h,%h,%h,%h,%h,%h,%h,%h,%h,%h",mem[0],mem[1],mem[2],mem[3],mem[4],mem[5],mem[6],mem[7],mem[8],mem[9]);
	$display("%h,%h,%h,%h,%h,%h,%h,%h,%h,%h",mem[10],mem[11],mem[12],mem[13],mem[14],mem[15],mem[16],mem[17],mem[18],mem[19]);
	$display("%h,%h,%h,%h,%h,%h,%h,%h,%h,%h",mem[20],mem[21],mem[22],mem[23],mem[24],mem[25],mem[26],mem[27],mem[28],mem[29]);
	$display("%h,%h",mem[30],mem[31]);

 
end
endmodule
