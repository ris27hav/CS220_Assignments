`include "A4Q1_fsm.v"
module fsm_driver(in,out);

input in;
reg [2:0]temp1;
wire [2:0]temp2;


// wire [7:0]b1;
// wire [7:0]b2;
// wire [7:0]b3;
// wire [7:0]b4;
// wire [7:0]b5;

output out;
fsm d1(in,temp1[2:0],temp2[2:0],out);
always #1 temp1=temp2;

// fsm d2(a,b2,temp[2:0],temp[5:3]);

// fsm_sub d3(a,b3,temp[5:3],temp[8:6]);

// fsm_sub d4(a,b4,temp[8:6],temp[11:9]);

// fsm_sub d5(a,b5,temp[11:9],temp[14:12]);

// taking bitwise or
// assign c = b1|b2|b3|b4|b5;

endmodule