// module gcd(A,B,GCD);
//     input [7:0]A,B;
//     output [7:0]GCD;
//     reg [7:0]temp,a,b;
//     integer isDone;

//     always @*
//     // initial
//     begin
//         a=A; b=B;
//         isDone = 0;

//         while(isDone == 0)
//         begin
//             if(a<b)
//                 begin
//                     temp = b;
//                     b = a;
//                     a = temp;
//                 end
//             else if (b!=0)
//                 begin
//                     a = a - b;
//                 end
//             else
//                 begin
//                     isDone = 1;
//                 end
//         end
//     end
//     assign GCD = a;
// endmodule

module Data(clk, A, B, res, A_en, B_en, A_muxs, B_muxs, B_zero, A_lt_B);
    input clk;
    input [7:0] A,B,res;
    input A_en, B_en, B_muxs;
    input [1:0] A_muxs;

    output B_zero, A_lt_B;

    wire [7:0] b, subO, A_muxo;

    mux3to1 Amux(A_muxs, A, b, subO, A_muxo);

    wire [7:0] a;



endmodule