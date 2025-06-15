`timescale 1ns/1ps
`include "decoder_24.v"

module decoder_24_tb;

    reg [1:0] in;  // 2-bit input
    wire [3:0] y;  // 4-bit output

    // Instantiate the decoder module
    decoder_24 uut (
        .val(in),
        .y(y)
    );

    initial begin
        $dumpfile("decoder_24_tb.vcd");
        $dumpvars(0, decoder_24_tb);
        // Test all combinations of the input
        in = 2'b00; #10;
        $display("Input: %b, Output: %b", in, y);
        
        in = 2'b01; #10;
        $display("Input: %b, Output: %b", in, y);
        
        in = 2'b10; #10;
        $display("Input: %b, Output: %b", in, y);
        
        in = 2'b11; #10;
        $display("Input: %b, Output: %b", in, y);
        
        // End simulation
        $finish;
    end
endmodule