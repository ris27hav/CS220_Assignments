`include "FSM.v"

module FSM_tb;
    reg [7:0]a;
    wire [7:0]b;
    reg [2:0]sin;
    reg clock;

    fsm_sub D1(a,b,sin,clock);

    initial
        begin
            $monitor( $time, " A = %b, B = %b",a,b);
            clock = 1'b1;
            a=8;
            #5 a=23;sin = 2;
            #5 a=39; 
            #5 a=110;
            #5 a=74; 
            #5 a=65; 
            #5 a=23; 
            #5 a=42; 
            #5 a=200;
            #5 a=123;
            #5 a=96;
            #5 a=75;
            #5 a=33; 
            #5 a=74; 
            #5 a=34;
            #5 $finish;
        end
endmodule