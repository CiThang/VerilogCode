`timescale 1ns/1ps
`include "top_module.v"

module top_module_tb;

    reg clk;
    reg [7:0] d0;
    reg [1:0] sel;
    wire [7:0] q;

    // Instantiate the DUT (device under test)
    top_module uut (
        .clk(clk),
        .d0(d0),
        .sel(sel),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("top_module_tb.vcd");
        $dumpvars(0, top_module_tb);

        // Khởi tạo ban đầu
        clk = 0;
        d0 = 8'h00;
        sel = 2'b00;

        // Đưa d0 vào, sau đó đổi sel để xem dữ liệu đi qua các DFF
        #10 d0 = 8'hA1; // Chu kỳ 1
        #10 d0 = 8'hB2; // Chu kỳ 2
        #10 d0 = 8'hC3; // Chu kỳ 3
        #10 d0 = 8'hD4; // Chu kỳ 4

        // Kiểm tra các giá trị được giữ trong DFF
        #10 sel = 2'b00; // d0
        #10 sel = 2'b01; // d1
        #10 sel = 2'b10; // d2
        #10 sel = 2'b11; // d3

        #20 $finish;
    end

endmodule
