module gcd(A,B,GCD);
    input [7:0]A,B;
    output [7:0]GCD;
    reg [7:0]temp,a,b;
    integer isDone;

    always @*
    // initial
    begin
        a=A; b=B;
        isDone = 0;

        while(isDone == 0)
        begin
            if(a<b)
                begin
                    temp = b;
                    b = a;
                    a = temp;
                end
            else if (b!=0)
                begin
                    a = a - b;
                end
            else
                begin
                    isDone = 1;
                end
        end
    end
    assign GCD = a;
endmodule