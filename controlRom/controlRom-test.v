module controlRom_test();

reg [63:0] In;
wire [6:0] Out;

controlRom DUT(In, Out);


initial
begin

$display("Add:");
In <= 64'b0000000000000000000000000000000000000000000000000000000000010000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);

$display("And:");
In <= 64'b0000000000000000000000000000000000000010000000000000000000000000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);

$display("Movl:");
In <= 64'b0000000000000000000000000000000000000000000000000001000000000000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);

$display("Movs:");
In <= 64'b0000000000000000000000000000000000000000000000000010000000000000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);

$display("JA:");
In <= 64'b0000000000000000000000000000000000000000000000000100000000000000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);

$display("CMP:");
In <= 64'b0000100000000000000000000000000000000000000000000000000000000000;
#1000
$display("Out: %d%d%d%d%d%d%d", Out[6], Out[5], Out[4], Out[3], Out[2], Out[1], Out[0]);




end
endmodule
