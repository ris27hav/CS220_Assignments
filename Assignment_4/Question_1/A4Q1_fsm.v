module fsm(in, is, fs, op);
    input in;
    input [2:0]is;
    output [2:0]fs;
    output op;

    parameter S0=3'b000, S1=3'b001, S2=3'b011, S3=3'b010, S4=3'b110, S5=3'b111, S6=3'b101, S7=3'b100;
    always @* begin
        op=1'b0;
        case(is)
            S0: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S1;
                end
            end
            S1: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S2;
                end
            end
            S2: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S3;
                end
            end
            S3: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S4;
                end
            end
            S4: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S5;
                end
            end
            S5: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S6;
                end
            end
            S6: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S7;
                end
            end
            S7: begin
                if(in==1'b0)begin
                    fs=is;
                end
                else begin
                    fs=S0;
                    op=1'b1;
                end
            end
            default: begin
                fs=is;
            end
        endcase
    end
    
endmodule