`include "priority_logic.v"
`include "eight_to_three_priority.v"

module testbench();
    reg [7:0]a;
    wire [2:0]b;

    eight_to_three_priority D1(a,b);

    initial begin
        $monitor($time, " a = %b, b = %b",a,b);
        #5 a=8'b11000000;
        #5 a=8'b11000001;
        #5 a=8'b01001100;
        #5 a=8'b00100000;
        #5 a=8'b11000111;
    end
endmodule