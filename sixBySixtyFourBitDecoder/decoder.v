module decoder(i1, i2, i3, i4, i5, i6,O);

	input i1, i2, i3, i4, i5, i6;
	output [63:0]O;
	wire noti1, noti2, noti3, noti4, noti5, noti6;

	not #1 n1(noti1,i1);
	not #1 n2(noti2,i2);
	not #1 n3(noti3,i3);
	not #1 n4(noti4,i4);
	not #1 n5(noti5,i5);
	not #1 n6(noti6,i6);

	//0	
	//000000
	and #3 a63(O[0], noti1, noti2, noti3, noti4, noti5, noti6);
	//1
	//000001
	and #3 a0(O[1], noti1, noti2, noti3, noti4, noti5, i6);
	//2
	//000010
	and #3 a1(O[2], noti1, noti2, noti3, noti4, i5, noti6);
	//3
	//000011
	and #3 a2(O[3], noti1, noti2, noti3, noti4, i5, i6);
	//4
	//000100
	and #3 a3(O[4], noti1, noti2, noti3, i4, noti5, noti6);
	//5
	//000101
	and #3 a4(O[5], noti1, noti2, noti3, i4, noti5, i6);
	//6
	//000110
	and #3 a5(O[6], noti1, noti2, noti3, i4, i5, noti6);
	//7
	//000111
	and #3 a6(O[7], noti1, noti2, noti3, i4, i5, i6);
	//8
	//001000
	and #3 a7(O[8], noti1, noti2, i3, noti4, noti5, noti6);
	//9
	//001001
	and #3 a8(O[9], noti1, noti2, i3, noti4, noti5, i6);
	//10
	//001010
	and #3 a9(O[10], noti1, noti2, i3, noti4, i5, noti6);

	//11
	//001011
	and #3 a10(O[11], noti1, noti2, i3, noti4, i5, i6);
	//12
	//001100
	and #3 a11(O[12], noti1, noti2, i3, i4, noti5, noti6);
	//13
	//001101
	and #3 a12(O[13], noti1, noti2, i3, i4, noti5, i6);
	//14
	//001110
	and #3 a13(O[14], noti1, noti2, i3, i4, i5, noti6);
	//15
	//001111
	and #3 a14(O[15], noti1, noti2, i3, i4, i5, i6);
	//16
	//010000
	and #3 a15(O[16], noti1, i2, noti3, noti4, noti5, noti6);
	//17
	//010001
	and #3 a16(O[17], noti1, i2, noti3, noti4, noti5, i6);
	//18
	//010010
	and #3 a17(O[18], noti1, i2, noti3, noti4, i5, noti6);
	//19
	//010011
	and #3 a18(O[19], noti1, i2, noti3, noti4, i5, i6);
	//20
	//010100
	and #3 a19(O[20], noti1, i2, noti3, i4, noti5, noti6);

	//21
	//010101
	and #3 a20(O[21], noti1, i2, noti3, i4, noti5, i6);
	//22
	//010110
	and #3 a21(O[22], noti1, i2, noti3, i4, i5, noti6);
	//23
	//010111
	and #3 a22(O[23], noti1, i2, noti3, i4, i5, i6);
	//24
	//011000
	and #3 a23(O[24], noti1, i2, i3, noti4, noti5, noti6);
	//25
	//011001
	and #3 a24(O[25], noti1, i2, i3, noti4, noti5, i6);
	//26
	//011010
	and #3 a25(O[26], noti1, i2, i3, noti4, i5, noti6);
	//27
	//011011
	and #3 a26(O[27], noti1, i2, i3, noti4, i5, i6);
	//28
	//011100
	and #3 a27(O[28], noti1, i2, i3, i4, noti5, noti6);
	//29
	//011101
	and #3 a28(O[29], noti1, i2, i3, i4, noti5, i6);
	//30
	//011110
	and #3 a29(O[30], noti1, i2, i3, i4, i5, noti6);

	//31
	//011111
	and #3 a30(O[31], noti1, i2, i3, i4, i5, i6);
	//32
	//100000
	and #3 a31(O[32], i1, noti2, noti3, noti4, noti5, noti6);
	//33
	//100001
	and #3 a32(O[33], i1, noti2, noti3, noti4, noti5, i6);
	//34
	//100010
	and #3 a33(O[34], i1, noti2, noti3, noti4, i5, noti6);
	//35
	//100011
	and #3 a34(O[35], i1, noti2, noti3, noti4, i5, i6);
	//36
	//100100
	and #3 a35(O[36], i1, noti2, noti3, i4, noti5, noti6);
	//37
	//100101
	and #3 a36(O[37], i1, noti2, noti3, i4, noti5, i6);
	//38
	//100110
	and #3 a37(O[38], i1, noti2, noti3, i4, i5, noti6);
	//39
	//100111
	and #3 a38(O[39], i1, noti2, noti3, i4, i5, i6);
	//40
	//101000
	and #3 a39(O[40], i1, noti2, i3, noti4, noti5, noti6);

	//41
	//101001
	and #3 a40(O[41], i1, noti2, i3, noti4, noti5, i6);
	//42
	//101010
	and #3 a41(O[42], i1, noti2, i3, noti4, i5, noti6);
	//43
	//101011
	and #3 a42(O[43], i1, noti2, i3, noti4, i5, i6);
	//44
	//101100
	and #3 a43(O[44], i1, noti2, i3, i4, noti5, noti6);
	//45
	//101101
	and #3 a44(O[45], i1, noti2, i3, i4, noti5, i6);
	//46
	//101110
	and #3 a45(O[46], i1, noti2, i3, i4, i5, noti6);
	//47
	//101111
	and #3 a46(O[47], i1, noti2, i3, i4, i5, i6);
	//48
	//110000
	and #3 a47(O[48], i1, i2, noti3, noti4, noti5, noti6);
	//49
	//110001
	and #3 a48(O[49], i1, i2, noti3, noti4, noti5, i6);
	//50
	//110010
	and #3 a49(O[50], i1, i2, noti3, noti4, i5, noti6);

	//51
	//110011
	and #3 a50(O[51], i1, i2, noti3, noti4, i5, i6);
	//52
	//110100
	and #3 a51(O[52], i1, i2, noti3, i4, noti5, noti6);
	//53
	//110101
	and #3 a52(O[53], i1, i2, noti3, i4, noti5, i6);
	//54
	//110110
	and #3 a53(O[54], i1, i2, noti3, i4, i5, noti6);
	//55
	//110111
	and #3 a54(O[55], i1, i2, noti3, i4, i5, i6);
	//56
	//111000
	and #3 a55(O[56], i1, i2, i3, noti4, noti5, noti6);
	//57
	//111001
	and #3 a56(O[57], i1, i2, i3, noti4, noti5, i6);
	//58
	//111010
	and #3 a57(O[58], i1, i2, i3, noti4, i5, noti6);
	//59
	//111011
	and #3 a58(O[59], i1, i2, i3, noti4, i5, i6);
	//60
	//111100
	and #3 a59(O[60], i1, i2, i3, i4, noti5, noti6);

	//61
	//111101
	and #3 a60(O[61], i1, i2, i3, i4, noti5, i6);
	//62
	//111110
	and #3 a61(O[62], i1, i2, i3, i4, i5, noti6);
	//63
	//111111
	and #3 a62(O[63], i1, i2, i3, i4, i5, i6);




endmodule
