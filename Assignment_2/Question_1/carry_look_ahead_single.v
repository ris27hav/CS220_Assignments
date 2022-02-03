module carry_look_ahead_single(a,b,cin,s,cout);
    // input
    input a;
    input b;
    input cin;

    // output
    output s;
    output cout;
    
    // wires
    wire c;
    wire d;
    wire e;

    // Combinational logic
    assign c = a^b;
    assign s = c^cin;
    assign d = cin && c;
    assign e = a && b;
    assign cout = d || e;

endmodule