`include "A4Q1_fsm_driver.v"

module tb();
    reg in;
    wire out;

    fsm_driver d1(in, out);

    initial in=0;
    // always #1 in=~in;

    initial begin
        $monitor("time = %0d, input = %b, output = %b", $time, in, out);
        #1 in=1;
        #1 in=0;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        #1 in=0;
        #1 in=1;
        #1 in=1;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        #1 in=1;
        #1 in=0;
        $finish;
    end
    
endmodule