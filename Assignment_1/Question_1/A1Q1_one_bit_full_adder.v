module one_bit_full_adder(a,b,cin,sum,cout);
    input a;
    input b;
    input cin;

    output cout;
    output sum;

    //Combinational Logic
    assign cout = ((a&&b)||(b&&cin)||(cin&&a));
    assign sum = a^b^cin;
endmodule