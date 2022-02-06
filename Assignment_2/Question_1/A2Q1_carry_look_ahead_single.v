module carry_look_ahead_single(a,b,cin,s);
    // input
    input a;
    input b;
    input cin;

    // output
    output s;

    // Combinational logic
    assign s = a^b^cin;
endmodule