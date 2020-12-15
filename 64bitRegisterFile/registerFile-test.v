module registerFile_test();


reg writeenable;
reg clk, rst;
reg [4:0] read1;
reg [4:0] read2;
reg [4:0] writeTo;
reg [63:0] writeDat;

wire [63:0] out1, out2;

registerFile DUT(clk, rst, read1, read2, writeTo, writeDat, writeenable, out1, out2);


initial begin clk <= 0; end
always #1000 clk <= ~clk;

initial
begin
//write to registers
    rst <= 1;
    #2000
    writeenable <= 1;
    $display("writeto=00000");
    writeTo <= 5'b00000;
    writeDat <= 64'b0001111111111111111111111111111111111111111111111111111111111000;
    
    rst<=0;

    #2000
    $display("0001111111111111111111111111111111111111111111111111111111111000(writedat) wrote to 00000");
//write to registers again
    writeenable <= 1;
    $display("writeto=11111");
    writeTo <= 5'b11111;
    writeDat <= 64'b1111000000000000000000000000000000000000000000000000000000001111;
    
    rst<=0;

    #2000

    $display("1111000000000000000000000000000000000000000000000000000000001111(writedat) wrote to 11111");
//read from the registers
    writeenable <= 0;
    $display("read1=00000");
    read1 <=    5'b00000;
    $display("read2=11111");
    read2 <=    5'b11111;

    #2000
    $display("out1= %b", out1);
    $display("out2= %b", out2);
    $display("\nrst=1");
    rst <= 1;
    #2000


    $display("out1= %b", out1);
    $display("out2= %b", out2);

    $finish();
end

endmodule
