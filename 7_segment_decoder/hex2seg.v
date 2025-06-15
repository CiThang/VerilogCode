module hex2seg(
    input wire [3:0] hex,
    output reg [6:0] seg_a, // hàng chục (hex / 10)
    output reg [6:0] seg_b  // hàng đơn vị (hex % 10)
);

    reg [3:0] a, b; // giá trị số của hàng chục và hàng đơn vị

    always @(*) begin
        // Tính toán hàng chục và đơn vị
        a = hex / 10;
        b = hex % 10;

        // Mã LED 7 đoạn cho hàng chục
        case (a)
            4'd0: seg_a = 7'b0000001;
            4'd1: seg_a = 7'b1001111;
            4'd2: seg_a = 7'b0010010;
            4'd3: seg_a = 7'b0000110;
            4'd4: seg_a = 7'b1001100;
            4'd5: seg_a = 7'b0100100;
            4'd6: seg_a = 7'b0100000;
            4'd7: seg_a = 7'b0001111;
            4'd8: seg_a = 7'b0000000;
            4'd9: seg_a = 7'b0000100;
            default: seg_a = 7'b1111111; // OFF
        endcase

        // Mã LED 7 đoạn cho hàng đơn vị
        case (b)
            4'd0: seg_b = 7'b0000001;
            4'd1: seg_b = 7'b1001111;
            4'd2: seg_b = 7'b0010010;
            4'd3: seg_b = 7'b0000110;
            4'd4: seg_b = 7'b1001100;
            4'd5: seg_b = 7'b0100100;
            4'd6: seg_b = 7'b0100000;
            4'd7: seg_b = 7'b0001111;
            4'd8: seg_b = 7'b0000000;
            4'd9: seg_b = 7'b0000100;
            default: seg_b = 7'b1111111; // OFF
        endcase
    end

endmodule
