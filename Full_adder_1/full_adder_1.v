module full_adder_1(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);
    assign sum = a ^ b ^ cin; 
    assign cout = (a & b) | (cin & a) | (cin & b); 
endmodule