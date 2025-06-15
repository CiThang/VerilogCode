module priority_encoder_42(
    input wire [3:0] val, 
    output reg [1:0] y 
);  
    always @(*) begin
        if(val[3]) begin
            y = 2'b11; 
        end 
        else if(val[2]) begin
            y = 2'b10; 
        end 
        else if(val[1]) begin
            y = 2'b01; 
        end 
        else begin
            y = 2'b00; 
        end
    end
endmodule
