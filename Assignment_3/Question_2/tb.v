`include "FSM.v"
`include "FSM_driver.v"

module tb();
    reg [2:0] a;
    wire p;
    parity p1(a,p);
    initial
        begin
            $monitor("time=%0d, A = %b, P = %b", $time,a,p);
            a=3'b000;
            #5 a=3'b001;
            #5 a=3'b010;
            #5 a=3'b011;
            #5 a=3'b100;
            #5 a=3'b101;
            #5 a=3'b110;
            #5 a=3'b111;
        end
endmodule