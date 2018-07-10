`timescale 1ns / 1ps

module Increment_Decrement(input logic inc, dec, reset, clk, 
                           output logic [3:0] hexNum);

    always_ff @(posedge clk)
    begin
        if ( reset) 
            hexNum <= 4'b0000;
        else if(inc)
        begin
            if ( hexNum != 4'b1001)
                hexNum <= hexNum + 1;
        end
        else if(dec)
        begin 
            if ( hexNum != 4'b0000)
                hexNum <= hexNum - 1;
        end
   end
endmodule
