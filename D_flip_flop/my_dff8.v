module my_dff8(
    input wire clk,
    input wire [7:0] d,
    output reg [7:0] q
);
    always @(posedge clk ) begin
        begin
            q <= d; 
        end
    end
endmodule