module lw(clk, rst);

input wire clk, rst;

// pc wires
wire [63:0] pcOut;

// instruction mem wires
wire [31:0] instrOut;
reg  [63:0] addr;

// sign extend wires
wire [63:0] signOut1;
reg  [15:0] signIn1;

// five bit mux wires
wire [4:0] fiveBMuxOut;
reg  [4:0] fiveMuxInA;
reg  [4:0] fiveMuxInB;
reg  fiveBMuxSelect;

// 64 bit mux wires
wire [63:0] sixfoMuxOut;
reg  [63:0] sixfoMuxInA;
reg  [63:0] sixfoMuxInB;
reg  sixfoMuxSelect;

// register file wires
wire [63:0] regOut1;
wire [63:0] regOut2;
reg  [4:0]  regRead1, regRead2, regWriteTo;
reg  [63:0] regWriteDat;
reg  regWriteEn;

// alu wires
wire [63:0] aluOut;
wire aluEq;
reg  [63:0] aluInA;
reg  [63:0] aluInB;
reg  aluOp;

// data memory wires
wire [31:0] dataMemOut;
reg  [63:0] dataMemInA;
reg  [63:0] dataMemInB;
reg  dataMemEn, dataMemRw;

//decoder wires
wire [63:0] decOut;

// control rom wires
wire [6:0] controlOut;
reg  [63:0] controlIn;

//sign extend 2 wire
wire [63:0] signOut2;

programCounter  Prc(clk, rst, pcOut);

//rippleCarryAdder ad(oneVal, pc,nextpc);

instructionMem  instMem(clk, rst, pcOut, instrOut);

signExtender    signExt1(instrOut[15:0], signOut1);

fiveBitMux      fiveBMux(instrOut[25:21], instrOut[20:16], controlOut[6], fiveBMuxOut);

sixtyFourBitMux sixfoMux1(signOut2, aluOut, controlOut[5],sixfoMuxOut);

registerFile    regFile(clk, rst, instrOut[25:21], instrOut[20:16], fiveBMuxOut, sixfoMuxOut, controlOut[4], regOut1, regOut2);

alu		alyouu(regOut1, signOut1, controlOut[2], aluEq, aluOut);

dataMem		dataM(clk, rst, aluOut, regOut2, controlOut[1], controlOut[0], dataMemOut);

datasignExtender	signExt2(dataMemOut, signOut2);

decoder		dec(instrOut[31],instrOut[30],instrOut[29],instrOut[28],instrOut[27],instrOut[26],decOut);

controlRom	contrl(decOut, controlOut);


always @ (posedge clk, posedge rst) begin
/*
	$display("instrOut: %h", instrOut);
	$display("controlOut: %b", controlOut);
	$display("instrOut[25:21]: %b", instrOut[25:21]);
	$display("instrOut[20:16]: %b", instrOut[20:16]);
	$display("fiveBMuxOut: %b", fiveBMuxOut);
	$display("sixfoMuxOut: %b", sixfoMuxOut);
	$display("SIXFOMUX: signOut2: %b", signOut2);
	$display("instrOut[15:0]: %b", instrOut[15:0]);
	$display("aluOut: %b", aluOut);

	$display("ALU: regOut1: %b", regOut1);
	$display("ALU: signOut1: %b\n", signOut1);

	$display("datamemOut: %b", dataMemOut);
	$display("regOut2: %b", regOut2);
	
*/
end


always @ (instrOut) begin

	if(instrOut == 32'hFC000000) begin
		$display("***Finishing Program***");
		$finish();
	end
	else if(instrOut == 32'h2C410001) begin
		$display("Moving:");
	end

end

endmodule
