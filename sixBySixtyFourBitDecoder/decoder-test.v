module decoder_test();

	reg i1, i2, i3, i4, i5, i6;
	wire [63:0] O;

decoder DUT(i1, i2, i3, i4, i5, i6, O);

initial
begin

	i1 <=0;
	i2 <=0;
	i3 <=0;
	i4 <=0;
	i5 <=0;
	i6 <=0;
	#20
	$display("Output of all 0's: %b", O);

	i1 <=1;
	i2 <=1;
	i3 <=1;
	i4 <=1;
	i5 <=1;
	i6 <=1;
	#20
	$display("Output of all 1's: %b", O);

	i1 <=1;
	i2 <=0;
	i3 <=1;
	i4 <=0;
	i5 <=1;
	i6 <=0;
	#20
	$display("Output of i1:1  i2:0 i3:1 i4:0 i5:1 i6:0:");
	$display("%b",O);

	i1 <=1;
	i2 <=0;
	i3 <=0;
	i4 <=0;
	i5 <=0;
	i6 <=0;
	#20
	$display("Output of i1:1  i2:0 i3:0 i4:0 i5:0 i6:0:");
	$display("%b",O);





end
endmodule
