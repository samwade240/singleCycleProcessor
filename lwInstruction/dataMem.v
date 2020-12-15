module dataMem(clk,rst,A,B,en,rw,out);

input clk,rst,en,rw;
input [63:0] A;
input [63:0] B;
reg [31:0] mem[0:65535];
output reg [31:0] out;
integer i;

always @(posedge clk, posedge rst)
begin
	if(rst == 1)
		$readmemh("lw.mc", mem);
	if(rw==1 && en==1)
		mem[A] <= B;
	else if(rw == 0)
		out <= mem[A];	

end

endmodule
