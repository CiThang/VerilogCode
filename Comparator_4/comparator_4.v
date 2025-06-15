module comparator_4(
    input wire [3:0] a,
    input wire [3:0] b,
    output reg gt, // a > b
    output reg lt, // a < b
    output reg eq  // a == b
);

    always @(*) begin
        if (a > b) begin
            gt = 1;
            lt = 0;
            eq = 0;
        end 
        else if (a < b) begin
            gt = 0;
            lt = 1;
            eq = 0;
        end else begin
            gt = 0;
            lt = 0;
            eq = 1; // a == b
        end
    end
endmodule

// module comparator_4(
//     input wire [3:0] a,
//     input wire [3:0] b,
//     output reg gt, // a > b
//     output reg lt, // a < b
//     output reg eq  // a == b
// );

//     always @(*) begin
//         if (a[3] > b[3]) begin
//             gt = 1;
//             lt = 0;
//             eq = 0;
//         end 
//         else if (a[3] < b[3]) begin
//             gt = 0;
//             lt = 1;
//             eq = 0;
//         end else begin
//             if( a[2] > b[2]) begin
//                 gt = 1;
//                 lt = 0;
//                 eq = 0;
//             end
//             else if (a[2] < b[2]) begin
//                 gt = 0;
//                 lt = 1;
//                 eq = 0;
//             end else begin
//                 if (a[1] > b[1]) begin
//                     gt = 1;
//                     lt = 0;
//                     eq = 0;
//                 end
//                 else if (a[1] < b[1]) begin
//                     gt = 0;
//                     lt = 1;
//                     eq = 0;
//                 end else begin
//                     if (a[0] > b[0]) begin
//                         gt = 1;
//                         lt = 0;
//                         eq = 0;
//                     end
//                     else if (a[0] < b[0]) begin
//                         gt = 0;
//                         lt = 1;
//                         eq = 0;
//                     end else begin
//                         gt = 0;
//                         lt = 0;
//                         eq = 1; // a == b
//                     end
//                 end
//             end
//         end
//     end
// endmodule