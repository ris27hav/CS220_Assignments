`include "A1Q3_two_to_four_decoder.v"
`include "A1Q3_three_to_eight_decoder.v"

module three_to_eight_decoder_tb;
    reg a;
    reg b;
    reg c;

    wire o1,o2,o3,o4,o5,o6,o7,o8;
    three_to_eight_decoder D1(a,b,c,o1,o2,o3,o4,o5,o6,o7,o8);

    initial begin
        $monitor($time," a = %d, b = %d, c = %d, o1 = %d, o2 = %d, o3 = %d, o4 = %d, o5 = %d, o6 = %d, o7 = %d, o8 = %d",a,b,c,o1,o2,o3,o4,o5,o6,o7,o8);
        a = 0 ; b = 0 ; c = 0 ;
        #5 a = 0 ; b = 0 ; c = 1 ;
        #5 a = 0 ; b = 1 ; c = 0 ;
        #5 a = 0 ; b = 1 ; c = 1 ;
        #5 a = 1 ; b = 0 ; c = 0 ;
        #5 a = 1 ; b = 0 ; c = 1 ;
        #5 a = 1 ; b = 1 ; c = 0 ;
        #5 a = 1 ; b = 1 ; c = 1 ;
    end
endmodule