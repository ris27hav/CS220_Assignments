module eight_bit_comparator(a,b,g,e,s);
    input [7:0]a;
    input [7:0]b;

    output g;
    wire [7:0]greater;
    output e;
    wire [7:0]equal;
    output s;
    wire [7:0]smaller;


    // Logic
    one_bit_comparator D1(a[7],b[7],1'b0,1'b1,1'b0,greater[7],equal[7],smaller[7]);
    one_bit_comparator D2(a[6],b[6],greater[7],equal[7],smaller[7],greater[6],equal[6],smaller[6]);
    one_bit_comparator D3(a[5],b[5],greater[6],equal[6],smaller[6],greater[5],equal[5],smaller[5]);
    one_bit_comparator D4(a[4],b[4],greater[5],equal[5],smaller[5],greater[4],equal[4],smaller[4]);
    one_bit_comparator D5(a[3],b[3],greater[4],equal[4],smaller[4],greater[3],equal[3],smaller[3]);                    
    one_bit_comparator D6(a[2],b[2],greater[3],equal[3],smaller[3],greater[2],equal[2],smaller[2]);                        
    one_bit_comparator D7(a[1],b[1],greater[2],equal[2],smaller[2],greater[1],equal[1],smaller[1]);
    one_bit_comparator D8(a[0],b[0],greater[1],equal[1],smaller[1],greater[0],equal[0],smaller[0]);

    assign g = greater[0];
    assign e = equal[0];
    assign s = smaller[0];

endmodule