`timescale 1ns/1ps
`include "priority_encoder_83.v"

module priority_encoder_83_tb;

    reg [7:0] val;
    wire [2:0] y;

    priority_encoder_83 uut (
        .val(val),
        .y(y)
    );

    initial begin
        $dumpfile("priority_encoder_83_tb.vcd");
        $dumpvars(0, priority_encoder_83_tb);
    
        // Test case 1: val = 8'b00000000
        val = 8'b00000000;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 000

        // Test case 2: val = 8'b00000001
        val = 8'b00000001;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 000

        // Test case 3: val = 8'b00000010
        val = 8'b00000010;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 001

        // Test case 4: val = 8'b00000100
        val = 8'b00000100;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 010

        // Test case 5: val = 8'b00001000
        val = 8'b00001000;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 011

        // Test case 6: val = 8'b10000000
        val = 8'b10000000;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 111

        // Test case 7: val = 8'b11111111
        val = 8'b11111111;
        #10;
        $display("val = %b, y = %b", val, y); // Expected output: y = 111

        // End of simulation
        $finish;
    end
endmodule