module lw_test();

reg clk , rst;

lw DUT(clk, rst);

initial
begin


//fist instruction

        clk <= 0;
        clk <= 1;
        clk <= 0;
        clk <= 1;
        rst <= 1;
        #4000
        


        clk <= 0;
        rst <= 0;
        #4000
        

//second instruction 

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        


// hopefully third instruction
        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// fourth instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// fifth instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// sixth instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// seventh instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// eight instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
        

// ninth instruction

        clk <= 1;
        rst <= 0;
        #4000
        

        clk <= 0;
        rst <= 0;
        #4000
	$display();        




end
endmodule
