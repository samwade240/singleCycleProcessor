module alu(inA,inB,op,eq,out);

input op;
input [63:0] inA,inB;
output [63:0] out;
output eq;
wire [63:0] S, nandTemp;


rippleCarryAdder adder(inA, inB, S);

	genvar i;
	generate
	for(i = 0; i < 64; i = i+1)
	begin: loop1
		nand #2 nand1(nandTemp[i],inA[i],inB[i]);
	end
	endgenerate


sixtyFourBitMux mux64(S, nandTemp, op, out);
assign eq = (inA == inB);




endmodule
