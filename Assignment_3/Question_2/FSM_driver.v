module parity(a, p);
    input [2:0] a;
    output p;
    wire [2:0] temp;
    fsm a1(a[0],1'b0,temp[0]);
    fsm a2(a[1],temp[0],temp[1]);
    fsm a3(a[2],temp[1],temp[2]);
    assign p=~temp[2];
    //assign p = temp[2];
endmodule