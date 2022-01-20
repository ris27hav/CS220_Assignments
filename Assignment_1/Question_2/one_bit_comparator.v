module one_bit_comparator(a,b,pg,pe,ps,greater,equal,smaller);
    input a;
    input b;
    input pg;
    input pe;
    input ps;

    output greater;
    output smaller;
    output equal;

    // Combinational Logic
    assign greater = pg||((a&(~b))&&pe);
    assign equal = pe&&a===b;
    assign smaller = ps||((~a&(b))&&pe);

endmodule