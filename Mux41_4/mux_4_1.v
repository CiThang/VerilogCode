module mux_4_1(
    input [3:0]d0,d1,d2,d3,
    input [1:0] sel,
    output [3:0] y
);

    assign y = (sel == 2'b00) ? d0 :
               (sel == 2'b01) ? d1 : 
               (sel == 2'b10) ? d2 :
               (sel == 2'b11) ? d3 : 2'b00; // Default case
endmodule