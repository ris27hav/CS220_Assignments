`include "FSM_driver.v"

module FSM_tb;
    reg [7:0]a;
    wire [7:0]b;

    fsm_driver D1(a,b);

    initial
        begin
            $monitor( $time, " A = %b, B = %b",a,b);
            a=8;
            #5 a=23;
            #5 a=39; 
            #5 a=110;
            #5 a=74; 
            #5 a=65; 
            #5 a=23; 
            #5 a=170; 
            #5 a=200;
            #5 a=122;
            #5 a=96;
            #5 a=75;
            #5 a=33; 
            #5 a=74; 
            #5 a=34;
            #5 $finish;
        end


endmodule