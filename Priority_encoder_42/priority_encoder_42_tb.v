`timescale 1ns/1ps
`include "priority_encoder_42.v"

module priority_encoder_42_tb;

    reg [3:0] val;
    wire [1:0] y;

    priority_encoder_42 uut (
        .val(val),
        .y(y)
    );

    initial begin
        $dumpfile("priority_encoder_42_tb.vcd");
        $dumpvars(0, priority_encoder_42_tb);
        // Test case 1: val = 4'b0000
        val = 4'b0000;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 00

        // Test case 2: val = 4'b0001
        val = 4'b0001;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 00

        // Test case 3: val = 4'b0010
        val = 4'b0010;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 01

        // Test case 4: val = 4'b0100
        val = 4'b0100;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 10

        // Test case 5: val = 4'b1000
        val = 4'b1000;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 11

        // Test case 6: val = 4'b1111
        val = 4'b1111;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 11

        // End of simulation
        $finish;
    end
endmodule