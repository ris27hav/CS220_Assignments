module flipflop(d,clk,rst,q);
    input d, clk, rst;
    output q;
    reg temp;
    always @(posedge(clk) or rst)
    //initial begin
        if(rst===1)
            //begin
                temp<=0;
            //end
        else
            //begin
                temp<=d;
            //end
    //end
    assign q=temp;
endmodule