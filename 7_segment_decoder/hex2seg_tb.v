`timescale 1ns/1ps
`include "hex2seg.v"

module hex2seg_tb;

    reg [3:0] hex;
    wire [6:0] seg_a;
    wire [6:0] seg_b;

    hex2seg uut (
        .hex(hex),
        .seg_a(seg_a),
        .seg_b(seg_b)
    );

    initial begin
        $dumpfile("hex2seg_tb.vcd");
        $dumpvars(0, hex2seg_tb);

        // Test case 1:
        hex = 4'b0000; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 0000001, seg_b = 0000001

        // Test case 2: 
        hex = 4'b0001; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 1001111, seg_b = 1001111

        // Test case 3: 
        hex = 4'b0010; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 0010010, seg_b = 0010010

        // Test case 4: 
        hex = 4'b0011; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 0000110, seg_b = 0000110

        // Test case 5: 
        hex = 4'b1011; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 1001100, seg_b = 1001100

        // Test case 6:
        hex = 4'b1111; #10;
        $display("hex = %b, seg_a = %b, seg_b = %b", hex, seg_a, seg_b); // Expected: seg_a = 0100100, seg_b = 0100100
    
        $finish;
    end
endmodule