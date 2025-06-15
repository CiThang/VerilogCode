`timescale 1ns/1ps
`include "my_dff8.v"

module my_dff8_tb;

    reg clk;
    reg [7:0] d;
    wire [7:0] q;

    my_dff8 uut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial begin
        $dumpfile("my_dff8_tb.vcd");
        $dumpvars(0, my_dff8_tb);

        // Initialize clock
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 ns
    end

    initial begin
        // Test case 1: Load value 8'b00000001
        d = 8'b00000001; #10;
        $display("d = %b, q = %b", d, q); // Expected: q = 00000001

        // Test case 2: Load value 8'b00000010
        d = 8'b00000010; #10;
        $display("d = %b, q = %b", d, q); // Expected: q = 00000010

        // Test case 3: Load value 8'b11111111
        d = 8'b11111111; #10;
        $display("d = %b, q = %b", d, q); // Expected: q = 11111111

        // Test case 4: Load value 8'b10101010
        d = 8'b10101010; #10;
        $display("d = %b, q = %b", d, q); // Expected: q = 10101010

        $finish;
    end
endmodule