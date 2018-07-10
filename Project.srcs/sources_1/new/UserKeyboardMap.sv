`timescale 1ns / 1ps

module UserKeyboardMap( input logic [3:0] key_value,
                        output logic [3:0] outputKey);
    always_comb
    begin
        case(key_value)
        4'b0000:outputKey <= 4'b1001;
        4'b0001:outputKey <= 4'b0011;
        4'b0010:outputKey <= 4'b1100;
        4'b0011:outputKey <= 4'b0000;
        4'b0100:outputKey <= 4'b0101;
        4'b0101:outputKey <= 4'b1000;
        4'b0110:outputKey <= 4'b0110;
        4'b0111:outputKey <= 4'b1011;
        4'b1000:outputKey <= 4'b1101;
        4'b1001:outputKey <= 4'b0010;
        4'b1010:outputKey <= 4'b1010;
        4'b1011:outputKey <= 4'b0100;
        4'b1100:outputKey <= 4'b0111;
        4'b1101:outputKey <= 4'b1111;
        4'b1110:outputKey <= 4'b0001;
        4'b1111:outputKey <= 4'b1110;
        endcase
    end  
endmodule
