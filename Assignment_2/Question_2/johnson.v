module johnson_counter(clk, rst, out);
    input clk, rst;
    output [7:0] out;
    reg [7:0] temp, temp1;

    always @(posedge(clk) or rst)
    begin
      if(rst===1'b1)
        begin
          temp=8'b00000000;
        end
      else if(clk===1'b1)
        begin
        //   temp[7:1]<=temp[6:0];
        //   temp[0]<=~temp[7];
            temp1=temp;
            temp[7:1]=temp1[6:0];
            temp[0]=~temp1[7];
        end  
    end

    assign out=temp;
endmodule