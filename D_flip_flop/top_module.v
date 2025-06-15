`include "my_dff8.v"
`include "mux_82.v"

module top_module(
    input wire clk,
    input wire [7:0] d0, // 8-bit inputs
    input wire [1:0] sel,
    output wire [7:0] q // Output of the D flip-flop
);
    wire [7:0] d1;
    wire [7:0] d2;
    wire [7:0] d3;


    // Instantiate the D flip-flop
    my_dff8 dff_inst_1 (
        .clk(clk),
        .d(d0),
        .q(d1)
    );

    my_dff8 dff_inst_2 (
        .clk(clk),
        .d(d1),
        .q(d2)
    );

    my_dff8 dff_inst_3 (
        .clk(clk),
        .d(d2),
        .q(d3)
    );

    mux_82 mux_inst (
        .d1(d0),
        .d2(d1),
        .d3(d2),
        .d4(d3),
        .sel(sel),
        .out(q)
    );

endmodule