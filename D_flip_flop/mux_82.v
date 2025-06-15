module mux_82 (
    input wire [7:0] d1, d2, d3, d4, // 8-bit inputs
    input wire [1:0] sel,
    output reg [7:0] out
);
    always @(*) begin
        case (sel)
            2'b00: out = d1;
            2'b01: out = d2;
            2'b10: out = d3;
            2'b11: out = d4;
            default: out = 8'b00000000;
        endcase
    end
endmodule
