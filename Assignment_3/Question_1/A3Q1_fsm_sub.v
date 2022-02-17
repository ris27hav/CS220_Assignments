module fsm_sub(a,b,sin,next_state);

input [7:0] a;
input [2:0] sin;

output reg [7:0] b;
output [2:0]next_state;

parameter s1 = 3'b000 , s2 = 3'b001, s3 = 3'b010, s4 = 3'b011, s5 = 3'b100;
reg [2:0] state;

assign next_state = sin + 3'b001;

always @* begin
    state = sin;
    b = 8'b00000000;
    case(state)
        s1 : begin 
            if(a[7:4] == 4'b1010)begin
                b = 8'b00010000;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s2 : begin 
            if(a[6:3] == 4'b1010)begin
                b = 8'b00001000;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s3 : begin 
            if(a[5:2] == 4'b1010)begin
                b = 8'b00000100;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s4 : begin 
            if(a[4:1] == 4'b1010)begin
                b = 8'b00000010;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s5 : begin 
            if(a[3:0] == 4'b1010)begin
                b = 8'b00000001;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        default :  b = 0;
    endcase
end

endmodule