module decoder_24(
    input wire [1:0] val,  // 2-bit selector
    output reg [3:0] y      // 4-bit output
);
    always @(*) begin
        case (val)
            2'b00: y = 4'b0001; // Output for 00
            2'b01: y = 4'b0010; // Output for 01
            2'b10: y = 4'b0100; // Output for 10
            2'b11: y = 4'b1000; // Output for 11
            default: y = 4'b0000; // Default case
        endcase
    end

endmodule
