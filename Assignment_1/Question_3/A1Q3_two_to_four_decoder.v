module two_to_four_decoder(a, b, o1,o2,o3,o4);
    input a;    // most significant
    input b;

    output o1;
    output o2;
    output o3;
    output o4;
    
    assign o1 = ~a & ~b;
    assign o2 = ~a & b;
    assign o3 = a & ~b;
    assign o4 = a & b;
endmodule