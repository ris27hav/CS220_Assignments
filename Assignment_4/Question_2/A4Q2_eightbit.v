`include "A4Q2_onebit.v"

// opcode = 0 for addition
// opcode = 1 for addition
module eight_bit_adder_subtractor(a,b,cin,opcode,cout,result);
    input [7:0]a;
    input [7:0]b;
    input cin;
    input opcode;

    output [7:0] result;
    output cout;
    wire [7:0] carry;

    // Instantiating eight one bit full adder
    one_bit_adder_subtractor D1(a[0],b[0],cin,opcode,result[0],carry[0]);
    one_bit_adder_subtractor D2(a[1],b[1],carry[0],opcode,result[1],carry[1]);
    one_bit_adder_subtractor D3(a[2],b[2],carry[1],opcode,result[2],carry[2]);
    one_bit_adder_subtractor D4(a[3],b[3],carry[2],opcode,result[3],carry[3]);
    one_bit_adder_subtractor D5(a[4],b[4],carry[3],opcode,result[4],carry[4]);
    one_bit_adder_subtractor D6(a[5],b[5],carry[4],opcode,result[5],carry[5]);
    one_bit_adder_subtractor D7(a[6],b[6],carry[5],opcode,result[6],carry[6]);
    one_bit_adder_subtractor D8(a[7],b[7],carry[6],opcode,result[7],carry[7]);
    assign cout = carry[7]^carry[6];

endmodule