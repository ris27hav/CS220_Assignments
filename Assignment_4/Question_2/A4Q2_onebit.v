module one_bit_adder_subtractor(a,b,cin,opcode,result,cout);
    input a;
    input b;
    input cin;
    input opcode;

    output cout;
    output result;

    //Combinational Logic
    assign cout = ((a&&(b^opcode))||((b^opcode)&&cin)||(cin&&a));
    assign result = a^(b^opcode)^cin;
endmodule