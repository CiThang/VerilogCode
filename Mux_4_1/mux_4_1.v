module mux_4_1(
    input  d0,d1,d2,d3,  // 4-bit input
    input  [1:0] sel, // 2-bit selector
    output  y       // Output
);

    assign y = (sel == 2'b00) ? d0 :
               (sel == 2'b01) ? d1 :
               (sel == 2'b10) ? d2 :
               (sel == 2'b11) ? d3 : 1'b0; // Default case

endmodule 