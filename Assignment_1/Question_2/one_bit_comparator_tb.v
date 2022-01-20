`include "one_bit_comparator.v"

module testbench;
    reg a;
    reg b;

    wire greater;
    wire equal;
    wire less;

    one_bit_comparator D1(a,b,greater,equal,less);

    always @(a or b) begin
        $monitor( $time, " A = %b , B = %b , greater = %b , equal = %b , less  = %b \n",a,b,greater,equal,less);
    end

    initial
        begin
            // $monitor($time," greater = %d, equal = %d, smaller = %d",greater,equal,less);
            #5 a=0; b = 1;
            #5 a=1; b = 0;
            #5 a=1; b = 1;
        end
endmodule
