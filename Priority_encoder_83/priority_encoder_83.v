module priority_encoder_83(
    input wire [7:0] val,
    output reg [2:0] y
);

    always @(*) begin
        if(val[7]) begin
            y = 3'b111;
        end
        else if(val[6]) begin
            y = 3'b110;
        end
        else if(val[5]) begin
            y = 3'b101;
        end
        else if(val[4]) begin
            y = 3'b100;
        end
        else if(val[3]) begin
            y = 3'b011;
        end
        else if(val[2]) begin
            y = 3'b010;
        end
        else if(val[1]) begin
            y = 3'b001;
        end
        else begin
            y = 3'b000;
        end
    end
endmodule