`include "two_to_four_decoder.v"

module testbench;
    reg a;
    reg b;

    wire o1,o2,o3,o4;
    two_to_four_decoder D1(a,b,o1,o2,o3,o4);
    
    initial begin
        $monitor($time," o1 = %d, o2 = %d, o3 = %d, o4 = %d",o1,o2,o3,o4);
        #5 a=0; b=0;
        #5 a=0; b=1;
        #5 a=1; b=0;
        #5 a=1; b=1;
    end
endmodule