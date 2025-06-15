`timescale 1ns/1ns
`include "mux_4_1.v"
module mux_4_1_tb;

    reg d0, d1, d2, d3; // 4-bit inputs
    reg [1:0] sel;      // 2-bit selector
    wire y;             // Output

    // Instantiate the mux_4_1 module
    mux_4_1 uut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4_1_tb.vcd");
        $dumpvars(0, mux_4_1_tb);
        // Test case 1: Select d0
        d0 = 1; d1 = 0; d2 = 0; d3 = 0; sel = 2'b00;
        #10;
        
        // Test case 2: Select d1
        d0 = 0; d1 = 1; d2 = 0; d3 = 0; sel = 2'b01;
        #10;

        // Test case 3: Select d2
        d0 = 0; d1 = 0; d2 = 1; d3 = 0; sel = 2'b10;
        #10;

        // Test case 4: Select d3
        d0 = 0; d1 = 0; d2 = 0; d3 = 1; sel = 2'b11;
        #10;

        // Test case with all inputs low
        d0 = 0; d1 = 0; d2 = 0; d3 = 0; sel = 2'b00;
        #10;

        $finish;
    end
endmodule