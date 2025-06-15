`timescale 1ns/1ps
`include "full_adder_1.v"  

module full_adder_1_tb;

    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    full_adder_1 uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("full_adder_1_tb.vcd");
        $dumpvars(0, full_adder_1_tb);

        // Test case 1: a = 0, b = 0, cin = 0
        a = 0; b = 0; cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 0, cout = 0

        // Test case 2: a = 0, b = 0, cin = 1
        a = 0; b = 0; cin = 1;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 1, cout = 0

        // Test case 3: a = 0, b = 1, cin = 0
        a = 0; b = 1; cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 1, cout = 0

        // Test case 4: a = 1, b = 0, cin = 0
        a = 1; b = 0; cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 1, cout = 0

        // Test case 5: a = 1, b = 1, cin = 0
        a = 1; b = 1; cin = 0;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 0, cout = 1

        // Test case 6: a = 1, b = 1, cin = 1
        a = 1; b = 1; cin = 1;
        #10;
        $display("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout); // Expected: sum = 1, cout = 1

        $finish;
    end
endmodule        