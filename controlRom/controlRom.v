module controlRom(In, Out);

input wire [63:0]In;
output wire [6:0]Out;

assign Out = 
/*Add*/	(In == 64'b0000000000000000000000000000000000000000000000000000000000010000) ? 7'b011100x :
/*And*/	(In == 64'b0000000000000000000000000000000000000010000000000000000000000000) ? 7'b011110x : 
/*Movl*/(In == 64'b0000000000000000000000000000000000000000000000000001000000000000) ? 7'b0010010 :
/*Movs*/(In == 64'b0000000000000000000000000000000000000000000000000010000000000000) ? 7'bxx00011 :
/*JA*/  (In == 64'b0000000000000000000000000000000000000000000000000100000000000000) ? 7'bxx0xx0x :
/*CMP*/ (In == 64'b0000100000000000000000000000000000000000000000000000000000000000) ? 7'bxx01x0x : 7'b0000000;

endmodule
