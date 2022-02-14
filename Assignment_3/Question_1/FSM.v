// module fsm_sub(a,b,ans,clock);

// input [7:0] a;

// reg [7:0] ans;
// reg [2:0] next_state;  // 0,1,2,3,4
// reg [2:0] state;  // 0,1,2,3,4

// output[7:0] b;
// parameter s1 = 3'b000 , s2 = 3'b001, s3 = 3'b010, s4 = 3'b011, s5 = 3'b100;

// // statewise output
// always @ (state) begin
//     case(state)
//         s1 : begin 
//             next_state <= s2;
//             if(a[7:4] == 4'b1010)begin
//                 ans <= ans||8'b00010000;
//             end
//             else begin 
//             end
//         end
//         s2 : begin 
//             next_state <= s3;
//             if(a[7:4] == 4'b1010)begin
//                 ans <= ans||8'b00001000;
//             end
//             else begin 
//             end
//         end
//         s3 : begin 
//             next_state <= s4;
//             if(a[7:4] == 4'b1010)begin
//                 ans <= ans||8'b00000100;
//             end
//             else begin 
//             end
//         end
//         s4 : begin 
//             next_state <= s5;
//             if(a[7:4] == 4'b1010)begin
//                 ans <= ans||8'b00000010;
//             end
//             else begin 
//             end
//         end
//         s5 : begin 
//             next_state <= 3'b111;
//             if(a[7:4] == 4'b1010)begin
//                 ans <= ans||8'b00000001;
//             end
//             else begin 
//             end
//         end
//         default : ;
//     endcase
// end

// always @ (posedge clock) begin
//     state = next_state;
//     clock = ~clock;
// end

// endmodule

module fsm_sub(a,b,sin);

input [7:0] a;
input [2:0] sin;

output reg [7:0] b;

parameter s1 = 3'b000 , s2 = 3'b001, s3 = 3'b010, s4 = 3'b011, s5 = 3'b100;
reg [2:0] state;

always @* begin
    assign state = sin;
    assign b = 8'b00000000;
    case(state)
        s1 : begin 
            if(a[7:4] == 4'b1010)begin
                assign b = 8'b00010000;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s2 : begin 
            if(a[6:3] == 4'b1010)begin
                assign b = 8'b00001000;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s3 : begin 
            if(a[5:2] == 4'b1010)begin
                assign b = 8'b00000100;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s4 : begin 
            if(a[4:1] == 4'b1010)begin
                assign b = 8'b00000010;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        s5 : begin 
            if(a[3:0] == 4'b1010)begin
                assign b = 8'b00000001;
            end
            // else begin
            //     assign b = 8'b00000000;
            // end
        end
        default : assign b = 0;
    endcase
end

endmodule