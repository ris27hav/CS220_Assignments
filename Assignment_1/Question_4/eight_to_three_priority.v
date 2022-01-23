module eight_to_three_priority(a,c);
    input[7:0] a;
    output [2:0]c;
    
    wire [23:0] b;
    wire [7:0]p;
    
    // Logic
    priority_logic D1(a[0],1'b0,3'b111,b[2:0],p[0]);         // 11000000
    priority_logic D2(a[1],p[0],b[2:0],b[5:3],p[1]);
    priority_logic D3(a[2],p[1],b[5:3],b[8:6],p[2]);
    priority_logic D4(a[3],p[2],b[8:6],b[11:9],p[3]);
    priority_logic D5(a[4],p[3],b[11:9],b[14:12],p[4]);
    priority_logic D6(a[5],p[4],b[14:12],b[17:15],p[5]);
    priority_logic D7(a[6],p[5],b[17:15],b[20:18],p[6]);
    priority_logic D8(a[7],p[6],b[20:18],b[23:21],p[7]);

//     assign c = b[23:21];

// endmodule

module eight_to_three_priority_logic(a,b);
    input [7:0]a;
    output [2:0]b;
    
    assign b = (a[0]==1'b1)?3'b000:(a[1]==1'b1)?3'b001:(a[2]==1'b1)?3'b010:(a[3]==1'b1)?3'b011:(a[4]==1'b1)?3'b100:(a[5]==1'b1)?3'b101:(a[6]==1'b1)?3'b110:(a[7]==1'b1)?3'b111:3'bxxx;
endmodule