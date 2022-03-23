module mux3to1(select, d1, d2, d3, q);
    input [1:0]select;
    input [7:0]d1, d2,  d3;

    output [7:0]q;

    if(select==2'b01)begin
        q = d1;
    end
    else if(select==2'b10)begin
        q = d2;
    end
    else if(select==2'b11)begin
        q = d3;
    end
    else begin 
        q = 8'b00000000;
    end



endmodule