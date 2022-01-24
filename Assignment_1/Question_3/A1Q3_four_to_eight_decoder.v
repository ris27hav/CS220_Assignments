module four_to_eight_decoder(a, b, c, o1, o2, o3, o4, o5, o6, o7, o8);
    input a;
    input b;
    input c;

    output o1,o2,o3,o4,o5,o6,o7,o8;
    wire o1p,o2p,o3p,o4p,o5p,o6p,o7p,o8p;

    two_to_four_decoder D1(b, c, o1p, o2p, o3p, o4p);
    two_to_four_decoder D2(b, c, o5p, o6p, o7p, o8p);
    assign o1 = ~a&o1p;
    assign o2 = ~a&o2p;
    assign o3 = ~a&o3p;
    assign o4 = ~a&o4p;
    assign o5 = a&o5p;
    assign o6 = a&o6p;
    assign o7 = a&o7p;
    assign o8 = a&o8p;

endmodule