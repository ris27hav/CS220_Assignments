`include "A4Q2_eightbit.v"
module eight_bit_ripple_carry_adder_tb;
    reg signed [7:0]a;
    reg signed [7:0]b;
    reg cin;
    reg opcode;

    wire signed [7:0] result;
    wire cout;

    eight_bit_adder_subtractor Test(a,b,cin,opcode,cout,result);

    initial
        begin
            $monitor( $time, " A = %d, B = %d, opcode = %d, Result = %d, Overflow = %d",a,b,opcode,result,cout);
            a=8; b=8; opcode = 1;cin = opcode;
            #5 a=23; b=47; opcode=0;cin = opcode;
            #5 a=39; b=68;  opcode=0;cin = opcode;
            #5 a=110; b=36; opcode=1;cin = opcode;
            #5 a=74; b=37; opcode=1;cin = opcode;
            #5 a=65; b=45; opcode=0;cin = opcode;
            #5 a=23; b=36; opcode=0;cin = opcode;
            #5 a=42; b=98; opcode=0;cin = opcode;
            #5 a=200; b=57; opcode=1;cin = opcode;
            #5 a=123; b=37; opcode=1;cin = opcode;
            #5 a=96; b=28; opcode=1;cin = opcode;
            #5 a=75; b=91; opcode=0;cin = opcode;
            #5 a=33; b=83; opcode=0;cin = opcode;
            #5 a=74; b=25; opcode=0;cin = opcode;
            #5 a=34; b=46; opcode=0;cin = opcode;
        end

endmodule