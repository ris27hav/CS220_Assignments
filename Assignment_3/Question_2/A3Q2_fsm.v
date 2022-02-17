module fsm(a,is,fs);
    input a, is;
    output reg fs;

    parameter odd=1'b1, even=1'b0;
    always @* begin
        fs=even;
        case(is)
            odd: begin
                if(a==0)begin
                    fs=odd;
                end
                else begin
                    fs=even;
                end
            end
            even: begin
                if(a==0)begin
                    fs=even;
                end
                else begin
                    fs=odd;
                end
            end
            default: fs=even;
        endcase
    end
endmodule