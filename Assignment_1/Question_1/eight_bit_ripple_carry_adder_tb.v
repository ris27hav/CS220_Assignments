`include "eight_bit_ripple_carry_adder.v"
`include "one_bit_full_adder.v"

module eight_bit_ripple_carry_adder_tb;
    reg [7:0]a;
    reg [7:0]b;
    reg cin;

    wire [7:0] sum;
    wire cout;

    eight_bit_ripple_carry_adder Test(a,b,cin,cout,sum);

    //output
    // always @(a or b or cin or sum) begin
    //     $monitor( $time, "A = %d , B = %d , Carry_in = %d , Sum = %d , Carry_out  = %d \n",$time,a,b,cin,sum,cout);
    // end

    initial
        begin
            $monitor( $time, " A = %b , B = %b , Carry_in = %b , Sum = %b , Carry_out  = %b",a,b,cin,sum,cout);
            a=8; b =8; cin =0;
            #5 a=23 ;b =47; cin =0;
            #5 a=39 ;b =68 ;cin =0;
            #5 a=110 ;b =36 ;cin =0;
            #5 a=74 ;b =37 ;cin =0;
            #5 a=65 ;b =45 ;cin =1;
            #5 a=23 ;b =36 ;cin =0;
            #5 a=42 ;b =98 ;cin =0;
            #5 a=200 ;b =57 ;cin =1;
            #5 a=123 ;b =37 ;cin =0;
            #5 a=96 ;b =28 ;cin =0;
            #5 a=75 ;b =91 ;cin =0;
            #5 a=33 ;b =83 ;cin =0;
            #5 a=74 ;b =25 ;cin =0;
            #5 a=34 ;b =46 ;cin =1;
        end

endmodule