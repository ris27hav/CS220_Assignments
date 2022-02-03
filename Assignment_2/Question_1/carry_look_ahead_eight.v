module carry_look_ahead_eight(a,b,cin,cout,sum);
    input [7:0]a;
    input [7:0]b;
    input cin;

    output [7:0] sum;
    output cout;
    wire [7:0] c;

    carry_look_ahead_single D1(a[0],b[0],cin,sum[0],c[0]);
    carry_look_ahead_single D2(a[1],b[1],c[0],sum[1],c[1]);
    carry_look_ahead_single D3(a[2],b[2],c[1],sum[2],c[2]);
    carry_look_ahead_single D4(a[3],b[3],c[2],sum[3],c[3]);
    carry_look_ahead_single D5(a[4],b[4],c[3],sum[4],c[4]);
    carry_look_ahead_single D6(a[5],b[5],c[4],sum[5],c[5]);
    carry_look_ahead_single D7(a[6],b[6],c[5],sum[6],c[6]);
    carry_look_ahead_single D8(a[7],b[7],c[6],sum[7],cout);

endmodule