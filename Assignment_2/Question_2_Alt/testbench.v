`include "johnson_counter.v"
`include "flipflop.v"

module tb();
    reg clk, rst;
    wire [7:0] out;

    johnson_counter test(clk,rst,out);

    initial clk=0;
    always #5 clk=~clk;

    initial begin
      $monitor("time = %0d, clk = %b, rst = %b, output = %b", $time, clk, rst, out);
      rst=1;
      #10 rst=0;
      #155 $finish; 
    end
endmodule