`timescale 1ns/1ps
`include "mux_82.v"

module mux_82_tb;

    reg [7:0] d1, d2, d3, d4; // 8-bit inputs
    reg [1:0] sel;            // 2-bit selector
    wire [7:0] out;                 // Output

    mux_82 uut (
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("mux_82_tb.vcd");
        $dumpvars(0, mux_82_tb);

        // Test case 1: Select d1
        d1 = 8'b00000001; d2 = 8'b00000010; d3 = 8'b00000011; d4 = 8'b00000100;
        sel = 2'b00; #10;
        $display("sel = %b, out = %b", sel, out); // Expected: out = 00000001

        // Test case 2: Select d2
        sel = 2'b01; #10;
        $display("sel = %b, out = %b", sel, out); // Expected: out = 00000010

        // Test case 3: Select d3
        sel = 2'b10; #10;
        $display("sel = %b, out = %b", sel, out); // Expected: out = 00000011

        // Test case 4: Select d4
        sel = 2'b11; #10;
        $display("sel = %b, out = %b", sel, out); // Expected: out = 00000100

        $finish;
    end
endmodule