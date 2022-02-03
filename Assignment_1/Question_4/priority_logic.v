module priority_logic(a, pp, b, c, pc);
    input a;
    input pp;

    input [2:0]b;
    output reg [2:0] c;
    output pc;

    initial begin
        if(pp === 0)begin
            c = b+3'b001;
        end
        else begin
            c=b;
        end
    end
    assign pc = a||pp;
endmodule