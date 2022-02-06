module johnson_counter(clk, rst, count_out);
    input clk, rst;
    wire w;
    inout [7:0] count_out;

    flipflop d1(~count_out[7], clk, rst, count_out[0]);
    flipflop d2(count_out[0], clk, rst, count_out[1]);
    flipflop d3(count_out[1], clk, rst, count_out[2]);
    flipflop d4(count_out[2], clk, rst, count_out[3]);
    flipflop d5(count_out[3], clk, rst, count_out[4]);
    flipflop d6(count_out[4], clk, rst, count_out[5]);
    flipflop d7(count_out[5], clk, rst, count_out[6]);
    flipflop d8(count_out[6], clk, rst, count_out[7]);

    //assign count = count_out;
endmodule