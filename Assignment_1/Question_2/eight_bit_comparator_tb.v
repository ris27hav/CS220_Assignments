`include "eight_bit_comparator.v"
`include "one_bit_comparator.v"

module testbench;
    reg [7:0]a;
    reg [7:0]b;

    wire greater;
    wire equal;
    wire less;

    eight_bit_comparator D1(a,b,greater,equal,less);

    initial
        begin
            $monitor( $time, " A = %b, B = %b, greater = %b, equal = %b, less = %b",a,b,greater,equal,less);
            #5 a=47; b = 47;
            #5 a=74; b = 24;
            #5 a=253; b = 28;
            #5 a=7; b = 8;
            #5 a=94; b = 35;
            #5 a=145; b = 74;
            #5 a=36; b = 63;
            #5 a=147; b = 123;
            #5 a=247; b = 84;
            #5 a=25; b = 25;
            #5 a=99; b = 100;
            #5 a=47; b = 200;
            #5 a=83; b = 94;
            #5 a=93; b = 59;
            #5 a=26; b = 243;
        end
endmodule
