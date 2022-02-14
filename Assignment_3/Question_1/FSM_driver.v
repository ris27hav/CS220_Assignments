`include "FSM.v"
module fsm_driver(a,c);

input [7:0]a;
output [7:0]c;

wire [7:0]b1;
fsm_sub d1(a,b1,3'b000);

wire [7:0]b2;
fsm_sub d2(a,b2,3'b001);

wire [7:0]b3;
fsm_sub d3(a,b3,3'b010);

wire [7:0]b4;
fsm_sub d4(a,b4,3'b011);

wire [7:0]b5;
fsm_sub d5(a,b5,3'b100);

assign c = b1|b2|b3|b4|b5;

endmodule