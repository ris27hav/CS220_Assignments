`include "A5Q1_gcd.v"

module tb();
    reg [7:0]a,b;
    wire [7:0]gcd;

    gcd test(a,b,gcd);

    initial begin
        $monitor("time = %0d, a = %d, b = %d, gcd = %d",$time,a,b,gcd);
        a=3; b=2;
        #5 a=2; b=3;
        #5 a=15; b=5;
        #5 a=5; b=15;
        #5 a=3; b=9;
        #5 a=9; b=3;
        #5 a=16; b=8;
        #5 a=8; b=16;
        #5 a=15; b=51;
        #5 a=51; b=15;
        #5 a=65; b=49;
        #5 a=49; b=65;
        #5 a=15; b=12;
        #5 a=12; b=15;
        #5 a=15; b=44;
        $finish;
    end
endmodule