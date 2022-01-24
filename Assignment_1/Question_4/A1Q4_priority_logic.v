module priority_logic(a, pp, b, c, pc);
    input a;
    input pp;

    input [2:0]b;
    output reg [2:0] c;
    output pc;

    always @(a or pp or b) begin
        if(pp == 1)
            c = b;
        else
            c = b + 3'b001;
    end
    assign pc = (a||pp);
endmodule