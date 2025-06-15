`timescale 1ns/1ps
`include "comparator_4.v"

module comparator_4_tb;

    reg [3:0] a;
    reg [3:0] b;
    wire gt; // a > b
    wire lt; // a < b
    wire eq; // a == b

    comparator_4 uut (
        .a(a),
        .b(b),
        .gt(gt),
        .lt(lt),
        .eq(eq)
    );

    initial begin
        $dumpfile("comparator_4_tb.vcd");
        $dumpvars(0, comparator_4_tb);

        // Test case 1: a = 4'b0000, b = 4'b0000
        a = 4'b0000; b = 4'b0000;
        #10;
        $display("a = %b, b = %b, gt = %b, lt = %b, eq = %b", a, b, gt, lt, eq); // Expected: eq = 1

        // Test case 2: a = 4'b0001, b = 4'b0000
        a = 4'b0001; b = 4'b0000;
        #10;
        $display("a = %b, b = %b, gt = %b, lt = %b, eq = %b", a, b, gt, lt, eq); // Expected: gt = 1

        // Test case 3: a = 4'b0010, b = 4'b0001
        b = 4'b0010; a = 4'b0001;
        #10;
        $display("a = %b, b = %b, gt = %b, lt = %b, eq = %b", a, b, gt, lt, eq); // Expected: gt = 1

        // Test case 4: a = 4'b0100, b = 4'b0010
        b = 4'b0100; a = 4'b0010;
        #10;
        $display("a = %b, b = %b, gt = %b, lt = %b, eq = %b", a, b, gt, lt, eq); // Expected: gt = 1

        // Test case 5: a = 4'b1000, b = 4'b0100    
        a = 4'b1000; b = 4'b0100;
        #10;
        $display("a = %b, b = %b, gt = %b, lt = %b, eq = %b", a, b, gt, lt, eq); // Expected: gt = 1

        $finish;
    end
endmodule